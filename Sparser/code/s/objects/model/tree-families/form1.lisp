;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "form"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  1.5 August 2011

;; initiated 8/4/92 v2.3, fleshed out 8/10
;; 0.1 (10/24) Added processing of rule cases because of the words and
;;      categories they may mention (they're not all substitution terms!)
;; 0.2 (6/12/93) removed 'edge' symbols from the substitution terms list
;;      and made them explictly decoded since they have to change to work
;;      at runtime
;;     (5/3/94) fixed bug in treatment of ETFs with 'include'
;; 0.3 (5/17) put in explicit check for slashed substitution labels
;; 0.4 (10/17) extended legal items in the cases to include predefined categories.
;;      Motivation was 'apostrophe-s'. //Maybe it's overly broad?
;;     (2/22/95) added description keyword to the constructor and added collection
;;      of 'descriptors' to Decode-etf-rule-case
;; 0.5 (3/6) changed that to have the pattern descriptor computed here.
;; 0.6 (3/7) added 'schema-type' to the args.
;;     (4/27) fixed glitch that :includes wasn't promulgated to other calculations
;; 0.7 (7.26) tweeked decode-referent-exp to allow for returning categories
;; 1.0 (12/6/97) Modified Decode-etf-rule-case and friends to made cases into objects.
;;     (5/5) added tree-family setting to Decode-etf-rule-case.
;; 1.1 (4/11/05) Fixed odd case in Decode-referent-exp1 by moving 'when's into
;;  the cond. (4/20/09) Removed a useless trace-statement
;; 1.2 (9/17/09) Added possibility of an explict :form label since too many of
;;  the rules were coming out with no form so the automatic scheme is too weak.
;; 1.3 (7/7/09) Added form-category as possible type for rhs of decode-etf-rule-case.
;;  Also, I doubt v1.2 was actually created on 9/17/09 without a time machine. :)
;; 1.4 (8/10/11) Added :method analogous to :function in decode-referent-term, and
;;     put in a hack to identify the form of the result from the form category
;;     on the rhs. 
;; 1.5 (8/30/11) Modified default form calculation to look at lhs first. 

(in-package :sparser)

;;;-------
;;; sugar
;;;-------

(defun define-exploded-tree-family/expr (name keys)
  ;; called from define-exploded-tree-family
  (apply #'construct-exploded-tree-family name keys))


;;;--------
;;; driver
;;;--------

(defparameter *setup-schema-for-user-instantiation* t
  "A flag used to control whether the cases of an ETF are
   examined for 'description' information that is used by
   the Define-rule facility.")


(defun construct-exploded-tree-family (name
                                       &key binding-parameters
                                            labels
                                            cases
                                            incorporates
                                            schema-type
                                            description  )

  ;; All the input objects are symbols or lists.

  (let ((etf-object
         (find-or-make/exploded-tree-family name))
        (included-etf (when incorporates
                        (exploded-tree-family-named incorporates))))

    (if schema-type
      (setf (etf-type etf-object) schema-type)
      (setf (etf-type etf-object) :user-instantiable))

    (when incorporates
      (unless included-etf
        (error "There is no tree-family named ~A" incorporates)))

    (if included-etf
      (let ((super-parameters (etf-parameters included-etf))
            (super-labels (etf-labels included-etf)))
        (setf (etf-parameters etf-object)
              (setq binding-parameters
                    (union super-parameters binding-parameters)))
        (setf (etf-labels etf-object)
              (setq labels
                    (union super-labels labels))))
      (else
        (setf (etf-parameters etf-object) binding-parameters)
        (setf (etf-labels etf-object) labels)))


    (let ((*setup-schema-for-user-instantiation*
           (eq (etf-type etf-object) :user-instantiable)))

      (setf (etf-cases etf-object)
            (mapcar #'(lambda (case-expression)
                        (decode-etf-rule-case case-expression
                                              labels
                                              binding-parameters
                                              etf-object))
                    cases)))

    (when incorporates
      (setf (etf-cases etf-object)
            (append (etf-cases included-etf)
                    (etf-cases etf-object))))

    (when description
      (setf (etf-description etf-object) description))

    etf-object ))


;;;----------------------------------
;;; decoding individual rule schemas
;;;----------------------------------

(defun decode-etf-rule-case (case-exp
                             labels binding-parameters
                             tree-family)

  ;; decomposes the expression, does subsitutions of objects for
  ;; terms as needed, and returns a reconstructed expression with
  ;; the same structure as the original.

  (let* ((relation (first case-exp))
         (rule-exp (second case-exp))
         (descriptors (cddr case-exp))
         (lhs (first rule-exp))
         (rhs (second rule-exp))
         (referent (cddr rule-exp))
         (form-exp (when (eq :form (car referent))
                     (prog1 (cadr referent)
                       (setq referent (cddr referent)))))
         (substitution-terms
          (append labels
                  binding-parameters))

         decoded-rhs  form-category )

    (setq decoded-rhs
          (mapcar #'(lambda (term)
                      (cond
                       ((member term substitution-terms) term)
                       ((stringp term) (resolve/make term))
                       ((and (symbolp term)
                             (name-includes-slash term))
                        term )
                       ((form-category? term) term)
                       ((category-named term)
                        ;; 10/17/94 ?? is this too broad ??
                        term )
                       (t (break "The term is ~A, not a string or ~
                                  a substitution term." term))))
                  rhs))
    (if form-exp
      (then
        (setq form-category (category-named form-exp))
        (unless form-category
          (error "There is no (form) category named ~a" form-exp))
        (unless (form-category? form-category)
          (error "There is no form-category named ~a" form-exp)))
      (else 
        (let ((name-of-form-category
               (or (when (form-category? lhs) lhs)
                   (loop for term in rhs
                      ;; maybe this is a form-based rule
                      when (form-category? term)
                      return term))))
          ;; Should we insist that the form be specified?
          (when name-of-form-category
;;             (push-debug `(,rhs ,lhs))
;;             (error "Could not identify a form category in the rhs of ~
;;                     this case. Try making it explicit"))
            (setq form-category (category-named name-of-form-category))))))
    
    (multiple-value-bind (decoded-referent head etc)
                         (decode-referent-exp
                          referent substitution-terms)

      (when *setup-schema-for-user-instantiation*
        (setq descriptors (calculate-descriptors
                           decoded-rhs head etc descriptors)))

      (let ((schr (find-or-make-schematic-rule
                   tree-family relation lhs decoded-rhs)))
        (setf (schr-tree-family schr) tree-family)
        (setf (schr-relation schr) relation)
        (setf (schr-lhs schr) lhs)
        (setf (schr-rhs schr) decoded-rhs)
        (setf (schr-form schr) form-category)
        (setf (schr-referent schr) decoded-referent)
        (setf (schr-descriptors schr) descriptors)
        (setf (schr-original-expression schr)
              `(,relation
                (,lhs ,decoded-rhs
                      ,@decoded-referent)
                ,descriptors)  )

        schr ))))



(defun calculate-descriptors (rhs head other-items
                              existing-descriptors)
  ;; Called from Decode-etf-rule-case to setup the information
  ;; that the rule definition tableau (RDT) is going to use.
  (unless head
    (if existing-descriptors
      (let ((head-edge (cadr (member :head existing-descriptors))))
        (if head-edge
          (setq head head-edge)
          (break "A 'head' descriptor must be added to the ~
                  descriptors~%of the choice whose rhs is~
                  ~%~A" rhs)))
      (break "No specification of the 'head' edge provided. ~
              A 'head' descriptor~%must be added to the ~
              choice whose rhs is~%~A" rhs)))

  `(:length-of-rhs ,(length rhs)
    :head-edge ,head
    ,@other-items ))



(defun decode-referent-exp (exp substitution-terms)
  ;; Called from Decode-etf-rule-case to examine the referent expression
  ;; and canonicalize it while making observations that later routines
  ;; will use. It returns three values that are bound as the
  ;; 'decoded-referent', the 'head', which indicates which edge is
  ;; the head of the pair in the rule, and 'etc', whoch collects up
  ;; the bindings. (The strict functional definitions are in the RTF.)

  (if (= (length exp) 1)
    ;; then it's just the name of a category
    (values exp
            :referent-is-a-category
            nil)
    (decode-referent-exp1 exp substitution-terms)))


(defun decode-referent-exp1 (exp substitution-terms)
  (do* ((items (cons :start exp) (cdr items))
        (item       (second items) (second items))
        (prior-item (first items)  (first items))
        (decoded-exp '())
        head  etc )

       ((null item)
        (values (nreverse decoded-exp)
                head
                etc ))
    (cond 
     ((eq prior-item :head)
      (setq head item))

     ((eq prior-item :daughter)
      (setq head item)
      (push item etc)
      (push :daughter etc))

     ((eq prior-item :instantiate-individual)
      (push item etc)
      (push :instantiate-individual etc))

     ((eq prior-item :binds)
      (push item etc)
      (push :binding-spec etc)))

    (push (decode-referent-term
           item prior-item exp substitution-terms)
          decoded-exp)))


(defun decode-referent-term (item prior-item 
                             exp substitution-terms)
  ;; puts every item in canonical form
  (cond ((keywordp item) item)
        ((member item substitution-terms) item)
        ((symbolp item)
         (cond
          ((eq item 'left-edge) 'left-referent)
          ((eq item 'right-edge) 'right-referent)
          ((eq prior-item :function) item)
          ((eq prior-item :method) item)
          (t
           (let ((category (resolve item)))
             (unless category
               (break "No \"~A\" category has been ~
                       defined, as used in:~%    ~A"
                      item exp))
             category))))
        ((listp item)
         (mapcar #'(lambda (term)
                     (decode-referent-term
                      term prior-item exp substitution-terms))
                 item))
        (t (break "The item ~A does not appear to make ~
                   sense in the referent expression~
                   ~%   ~A" item exp))))

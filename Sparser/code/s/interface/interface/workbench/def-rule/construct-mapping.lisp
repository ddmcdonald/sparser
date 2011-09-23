;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "construct mapping"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  December 1995

;; broken out of [define-rule] 4/27/95. 6/14 added duplicates checking routine
;; 10/24 put in a simple interpretation of 'nailed down' when doing the
;; mapping
;; 0.1 (12/5) modified Check-mapping-for-duplicates to allow duplicates if they
;;      have the same value.

(in-package :sparser)

;;;---------------------------------
;;; looking up items in the mapping 
;;;---------------------------------

(defun rdt/mapping-value (schema-symbol)
  ;; called from Populate-rule-tableau and the like to see if
  ;; there is already a value for a given substitution symbol,
  ;; in which case that field won't be queried for.
  (let ((current-value
         (cdr (assoc schema-symbol *rdt/mapping* :test #'eq))))

    (if (symbolp current-value)
      ;; hasn't been filled in yet
      nil
      current-value )))


;;;-----------------------------------------------
;;; workhorse -- run after each case is filled in
;;;-----------------------------------------------

(defun rdt/Construct-mapping-from-tableau ()
  ;; Called from Readout-tableau/write-cfr/save-result
  ;; The mapping is an alist of (schema-symbol . label)
  ;; Up to this point, the global *rdt/mapping* has gotten a record
  ;; of the names of the parameters that are used in the choosen
  ;; rule schema and have now gotten concrete values in the rule
  ;; tableau.  First we look up those values and substitute for
  ;; them in the global, and then we extend the mapping with the
  ;; populated syntactic information.

  (let ((mapping *rdt/mapping*)
        rebuilt-mapping  parameter value )

    (dolist (pair mapping)
      (if (symbolp (cdr pair))
        ;; so we look it up.
        (then
          (setq parameter (car pair))
          (setq value
                (ecase (cdr pair)
                  (head-line-parameter *rdt/head-line-category*)
                  (comp-parameter *rdt/comp-category*)
                  (result-parameter *rdt/result-category*)
                  (:nailed-down
                   ;; then it will be calculated later once all the
                   ;; parts are available -- we keep this signalling
                   ;; value so we don't lose the information.
                   :nailed-down )))
          (if value
            (push `(,parameter . ,value) rebuilt-mapping)
            (push `(,parameter . ,(cdr pair)) rebuilt-mapping)))

        ;; must have been looked up on the last pass through here
        (push pair rebuilt-mapping)))


    (when *rdt/selected-schema-case*
      ;; It is zero'd on the last pass before we get here
      (let* ((rule (second *rdt/selected-schema-case*))
             (lhs-symbol (first rule))
             (rhs-left-symbol (first (second rule)))
             (rhs-right-symbol (second (second rule))))
        
        (unless (assoc lhs-symbol mapping)
          (push `(,lhs-symbol . ,*rdt/lhs-label*)
                rebuilt-mapping ))
        
        (ecase (cadr (member :length-of-rhs *rdt/case-descriptors*
                             :test #'eq))
          (1
           (unless (assoc rhs-left-symbol mapping)
             (push `(,rhs-left-symbol . ,*rdt/rhs-left-label*)
                   rebuilt-mapping )))
          (2
           (unless (assoc rhs-left-symbol mapping)
             (push `(,rhs-left-symbol . ,*rdt/rhs-left-label*)
                   rebuilt-mapping ))
           (unless (assoc rhs-right-symbol mapping)
             (push `(,rhs-right-symbol . ,*rdt/rhs-right-label*)
                   rebuilt-mapping ))))

        (setq rebuilt-mapping
              (try-to-cash-out-any-nailed-down-fields rebuilt-mapping))

        (setq *rdt/mapping* rebuilt-mapping)))))



;;;----------------------------------------------------------
;;; check for duplicates, etc. (part of tracking down a bug)
;;;----------------------------------------------------------

(defun check-mapping-for-duplicates ()
  ;; Called from rdt/Readout-rule-tableau once all the cases have been filled in.
  (let ( symbol  symbols-in-mapping  duplicated )
    (dolist (pair *rdt/mapping*)
      (setq symbol (car pair))
      (if (member symbol symbols-in-mapping)
        ;; We've already seen it once. Now we check whether it has the
        ;; same value in both (more?) of its instances.  We've got the
        ;; second instance in our hand. An assoc on the mapping will
        ;; get us its first instance. If there are more than that we'll
        ;; never notice, but I wouldn't expect it since these are going
        ;; to be here only because of Chomsky-adjunction cases.
        (then
          (unless (eq (cdr (assoc symbol *rdt/mapping*))
                      (cdr pair))
            (break "~%~%!!!!!!!!!!!!~
                    ~%The mapping has (at least) two instances of ~
                    the substitution symbol~%  ~A~
                    ~%That seems pathological.~%Look at the etf being ~
                    used and decide what to do." symbol))
          (push symbol duplicated))

        (else ;; it's not duplicated
          (push symbol symbols-in-mapping))))

    (when duplicated
      ;; Rebuild the mapping leaving those cases out. //do it inline
      (let ( rebuilt-mapping )
        (dolist (pair *rdt/mapping*)
          (if (member (car pair) duplicated)
            (setq duplicated
                  (delete (car pair) duplicated :test #'eq))
            (push pair rebuilt-mapping)))
        (setq *rdt/mapping* rebuilt-mapping)))))



(defun try-to-cash-out-any-nailed-down-fields (mapping)
  ;; Called from rdt/Construct-mapping-from-tableau at the end of its
  ;; process of pulling the values out of the 'Populate rule schema'
  ;; tableau and laying them against the corresponding substitution
  ;; symbols of the case.
  ;;   Some of the fields in the rdt will have been 'nailed down',
  ;; either because they correspond to literals in the case or because
  ;; they are intended to be constructed from other elements in the
  ;; mapping. We take care of these here. Doing the right thing
  ;; and destructively alterning the mapping alist in the process.
  (do* ((alist-cell (car mapping) (car rest-of-mapping))
        (rest-of-mapping (cdr mapping) (cdr rest-of-mapping))
        (symbol (car alist-cell) (car alist-cell))
        (value (cdr alist-cell) (cdr alist-cell))
        rebuilt-mapping )

       ((null alist-cell)
        rebuilt-mapping)

    (if (eq value :nailed-down)
      (cond
       ((word-p symbol)
        ;; then it's a literal in the case, so there's nothing to map
        ;; and we leave it out of the rebuilt mapping so it doesn't
        ;; confuse later stages.
        nil )

       ((constructed-eft-label? symbol)
        ;; then we do the construction if we've presently got the
        ;; values we need. //// Took a look at Decode-slashed-label
        ;; and it appears that it's going to do all the work at the
        ;; time that we run Replace-from-mapping via Instantiate-rule-schema
        ;; or its equivalent. So we'll just omit this line.
        nil )

       (t (when *break-on-unexpected-cases*
            (break "Didn't expect to fall through this Cond~%"))))
        

      (push alist-cell rebuilt-mapping))))




(defun check-that-all-substitution-symbols-have-values ()
  ;; Called from rdt/Readout-rule-tableau once all the cases have been filled in.
  (let ( symbols-in-mapping )
    (dolist (pair *rdt/mapping*)
      (push (car pair) symbols-in-mapping))

    (let* ((etf *rdt/selected-schema*)
           (substitution-symbols
            (append (etf-labels etf)
                    (etf-parameters etf))))

      (dolist (symbol substitution-symbols)
        (unless (member symbol symbols-in-mapping)
          (break "~%~%!!!!!!!!!!!!~
                  ~%The substitution symbol ~A~
                  ~%is missing from the mapping. The rules will be bad ~
                  ~%if you let this go through." symbol))))))


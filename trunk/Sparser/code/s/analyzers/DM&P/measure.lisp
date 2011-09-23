;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "measure"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  February 1995

;; initiated 7/28/94 v2.3. elaborated 8/7. 8/24 added some routines for verb-object
;; 9/7 still more. ditto 9/15. ditto 10/19, 11/21
;; 11/29 added What-is-done-to.  1/3/95 added Relationships-involving-term and
;; finished Print-index/nominal-terms-with-governing-verbs except that the section
;; references aren't good enough.  2/13 added per-run initializers
;; 2/16 added Term-has-classifiers?

(in-package :sparser)

;;;--------------
;;; quick things
;;;--------------

;; This is equivalent to the number of tokens analyzed
; *number-of-next-position*


;;;--------------------------
;;; standard description set
;;;--------------------------

;(prepare-index-from-domain-model)
(defun prepare-index-from-domain-model ()
  (unless *terms/dh*
    (populate-discourse-history-globals)
    (breakout-verbs-from-terms)
    )
  )


  

;;;----------------------------------------------------
;;; collecting raw material from the discourse history
;;;----------------------------------------------------

;(populate-discourse-history-globals)

(defvar *segments/dh* nil)
(defvar *terms/dh* nil)
(defvar *pairs/dh* nil)
(defvar *subj-vb/dh* nil)
(defvar *vb-obj/dh* nil)
(defvar *genitive/dh* nil)
(defvar *infinitive/dh* nil)


(defun clear-dh-globals ()
  (setq *segments/dh* nil
        *terms/dh* nil
        *pairs/dh* nil
        *subj-vb/dh* nil
        *vb-obj/dh* nil
        *genitive/dh* nil
        *infinitive/dh* nil
        ))

(define-per-run-init-form '(clear-dh-globals))


(defun populate-discourse-history-globals ()
  (setq *segments/dh*
        (discourse-entry (category-named 'segment)))
  (setq *terms/dh*
        (discourse-entry (category-named 'term)))
  (setq *pairs/dh*
        (discourse-entry (category-named 'pair-term)))
  (setq *genitive/dh*
        (discourse-entry (category-named 'genitive)))
  (setq *subj-vb/dh*
        (discourse-entry (category-named 'subject-verb)))
  (setq *vb-obj/dh*
        (discourse-entry (category-named 'verb-object)))
  (setq *infinitive/dh*
        (discourse-entry (category-named 'infinitive-relation)))

  (format t "~% ~A segments~
             ~% ~A pair terms~
             ~% ~A terms~
             ~% ~A genitive relationships~
             ~% ~A subject-verb relationships~
             ~% ~A verb-object relationships~
             ~% ~A infinitive relationships~
             "
          (length *segments/dh*)
          (length *pairs/dh*)
          (length *terms/dh*)
          (length *genitive/dh*)
          (length *subj-vb/dh*)
          (length *vb-obj/dh*)
          (length *infinitive/dh*)
          )
  :done )


;;;--------------------------------------------------
;;; sorting terms by their discourse history entries
;;;--------------------------------------------------

(defparameter *verbs/dh* nil)
(defparameter *non-verbs/dh* nil)

(define-per-run-init-form '(setq *verbs/dh* nil
                                 *non-verbs/dh* nil))


;(breakout-verbs-from-terms)
(defun breakout-verbs-from-terms (&optional
                                  (term-list/dh *terms/dh*))
  (dolist (dht term-list/dh)
    (if (verb? (value-of 'word (first dht)))
      (push dht *verbs/dh*)
      (push dht *non-verbs/dh*)))
  (length *verbs/dh*))



(defparameter *non-verbs/dh-sorted-by-frequency* nil)
#|(sort-unkts-by-number-of-instances
    *non-verbs/dh*
    '*non-verbs/dh-sorted-by-frequency*)
(print-frequency-sorted-unkt/dh
    t *non-verbs/dh-sorted-by-frequency*)  |#

(defparameter *verbs/dh-sorted-by-frequency* nil)
#|(sort-unkts-by-number-of-instances
    *verbs/dh*
    '*verbs/dh-sorted-by-frequency*)
(print-frequency-sorted-unkt/dh
    t *verbs/dh-sorted-by-frequency*)  |#




;;----------

;(sort-unkts-by-number-of-instances)
;(print-frequency-sorted-unkt/dh)

(defvar *terms/dh-sorted-by-frequency* nil)
(defun sort-unkts-by-number-of-instances (&optional
                                          (unkts *terms/dh*)
                                          (global-variable
                                           '*terms/dh-sorted-by-frequency*))
  (let ((copy-of-list (copy-list unkts)))
    (set global-variable
          (sort copy-of-list
                #'sort-discourse-entries/terms))
    (length (symbol-value global-variable))))

(defun sort-discourse-entries/terms (dht1 dht2)
  (cond ((> (length (cdr dht1))
            (length (cdr dht2)))
         t)
        ((< (length (cdr dht1))
            (length (cdr dht2)))
         nil)
        (t (sort-terms-alphabetically
            (car dht1) (car dht2)))))

(defun sort-terms-alphabetically (t1 t2)
  (let ((w1 (value-of 'word t1))
        (w2 (value-of 'word t2)))
    (let ((string1 (etypecase w1
                     (word (word-pname w1))
                     (polyword (pw-pname w1))))
          (string2 (etypecase w2
                     (word (word-pname w2))
                     (polyword (pw-pname w2)))))
      (string< string1 string2))))


(defun print-frequency-sorted-terms/dh (&optional
                                       (stream
                                        *standard-output*)
                                       (sorted-list
                                        *terms/dh-sorted-by-frequency*))
  (let ((count 0))
    (dolist (dh-entry sorted-list)
      (format stream "~&~A.~6,2T\"~A\"~25,2T~A~%"
              (incf count)
              (word-pname (value-of 'word (first dh-entry)))
              (length (rest dh-entry)))))
  :done )


;;;--------------------------------------------------
;;; sorting pairs by their discourse history entries
;;;--------------------------------------------------

;(sort-pairs-by-number-of-instances)
#|(print-discourse-entries/frequency-sorted
     *pairs/dh-sorted-by-frequency*)
|#

(defvar *pairs/dh-sorted-by-frequency* nil)
(defun sort-pairs-by-number-of-instances (&optional
                                          (pairs *pairs/dh*))
  (let ((copy-of-list (copy-list pairs)))
    (setq *pairs/dh-sorted-by-frequency*
          (sort copy-of-list
                #'sort-discourse-entries/pairs))
    (length *pairs/dh-sorted-by-frequency*)))


(defun sort-discourse-entries/pairs (dht1 dht2)
  (cond ((> (length (cdr dht1))
            (length (cdr dht2)))
         t)
        ((< (length (cdr dht1))
            (length (cdr dht2)))
         nil)
        (t 
         (sort-pairs-by-head
          (car dht1) (car dht2)))))

(defun sort-pairs-by-head (p1 p2)
  (let ((h1 (value-of 'head p1))
        (h2 (value-of 'head p2)))
    ;; longer heads before shorter (= pair heads before term heads)
    ;; then alphabetically
    (cond ((eq h1 h2)
           (sort-terms-alphabetically (value-of 'other p1)
                                      (value-of 'other p2)))
          ((and (itype h1 'pair-term) (itype h2 'term))
           t )
          ((and (itype h1 'term) (itype h2 'pair-term))
           nil )
          ((and (itype h1 'term) (itype h2 'term))
           (sort-terms-alphabetically h1 h2))
          ((and (itype h1 'pair-term) (itype h2 'pair-term))
           (sort-pairs-by-head h1 h2))
          (t (break "Logic bug: all possible cases should have ~
                     been handled already")))))


(defun print-discourse-entries/frequency-sorted (sorted-list
                                                 &optional
                                                 (stream
                                                  *standard-output*))
  (let ((count 0)
        (*print-short* t))
    (dolist (dh-entry sorted-list)
      (format stream "~&~A.~6,2T\"~A\"~40,2T~A~%"
              (incf count)
              (first dh-entry)
              (length (rest dh-entry)))))
  :done )



;;;--------------------------------
;;; Sorting segments by their form
;;;--------------------------------

;(count-segments-by-their-form)

(defvar *segments-by-form* nil)
(defun count-segments-by-their-form (&optional
                                     (segments
                                      *segments/dh*))
  (let ( alist form  entry)
    (dolist (s segments)
      (setq s (car s))
      (setq form (value-of 'form s))
      (setq entry (assoc form alist :test #'eq))
      ;(break)
      (if entry
        (rplacd entry
                (cons s (cdr entry)))
        (setq alist
              `((,form ,s) ,@alist))))

    (let ((copy-of-alist (copy-tree alist)))
      (setq *segments-by-form*
            (sort copy-of-alist
                  #'(lambda (e1 e2)
                      (cond ((> (length (cdr e1))
                                (length (cdr e2)))
                             t)
                            ((< (length (cdr e1))
                                (length (cdr e2)))
                             nil)
                            (t
                             (string< (symbol-name (cat-symbol (car e1)))
                                      (symbol-name (cat-symbol (car e2)))
                                      ))))))

      (dolist (entry *segments-by-form*)
        (format t "~%~A~5,2T~A" (length (cdr entry)) (car entry)))

      (length alist))))


;;;-----------------------
;;; mucking with bindings
;;;-----------------------

(defun sort-bindings-by-category (b1 b2)
  (let ((i1 (binding-body b1))
        (i2 (binding-body b2)))
    (cond
     ((and (itypep i1 'pair-term)
           (itypep i2 'pair-term))
      (sort-individuals-alphabetically i1 i2))
     ((and (itypep i1 'verb-object)
           (itypep i2 'verb-object))
      (sort-individuals-alphabetically i1 i2))
     ((and (itypep i1 'subject-verb)
           (itypep i2 'subject-verb))
      (sort-individuals-alphabetically i1 i2))

     ((itypep i1 'pair-term) t)
     ((itypep i2 'pair-term) nil)
     ((itypep i1 'verb-object) t)
     ((itypep i2 'verb-object) nil)
     ((itypep i1 'subject-verb) t)
     ((itypep i2 'subject-verb) nil)

     (t (sort-individuals-alphabetically i1 i2)))))


(defun number-of-bindings (individual)
  (let ((binds (indiv-binds individual))
        (bound-in (indiv-bound-in individual)))
    (values (length binds)
            (length bound-in))))


(defvar *individuals-segments-by-form* nil)
(defun organize-individuals-segments-by-form (i  &optional print? )
  (let ((alist-by-relation
         (organize-individuals-segment-bindings-by-relation i))
        (*print-short* t)
        master-alist  form-alist  form  entry )

    (dolist (relation-entry alist-by-relation)
      (when print?
        (format t "~&~A -- ~A segments"
                (car relation-entry) (length (cdr relation-entry))))
      (setq form-alist nil)
      (dolist (s (cdr relation-entry))
        (setq form (value-of 'form s))
        (setq entry (assoc form form-alist :test #'eq))
        (if entry
          (rplacd entry
                  (cons s (cdr entry)))
          (setq form-alist
                `((,form ,s) ,@form-alist ))))

      (when print?
        (dolist (entry form-alist)
          (format t "~&  ~A = ~A segments"
                  (car entry) (length (cdr entry)))))

      (push `(,(first relation-entry)
              ,form-alist)
            master-alist))

    (setq *individuals-segments-by-form* master-alist)

    (when print?
      (terpri)(terpri))
    master-alist))


(defun organize-individuals-segment-bindings-by-relation (i)
  (let ((bindings (bindings-with-segments i))
        var-alist  var  entry )
    (dolist (b bindings)
      (setq var (binding-variable b))
      (setq entry (assoc var var-alist :test #'eq))
      (if entry
        (rplacd entry
                (cons (binding-body b)
                      (cdr entry)))
        (setq var-alist
              `((,var
                 ,(binding-body b))
                ,@var-alist))))
    var-alist ))


(defun bindings-with-segments (individual)
  (let ((bound-in (indiv-bound-in individual))
        bindings  body )
    (dolist (b bound-in)
      (setq body (binding-body b))
      (when (member (category-named 'segment) (indiv-type body)
                    :test #'eq)
        (push b bindings)))
    bindings ))



;;;------------------------------------
;;; cataloging information about Terms
;;;------------------------------------

(defun relationships-involving-term (term)
  (sort (copy-list (indiv-bound-in term))
        #'sort-bindings-by-category))



;;;-----------------------------
;;; information from Pair Terms
;;;-----------------------------

(defun term-has-classifiers? (term)
  (when (member :classified (realization-record term))
    (let ((classifing-pair-terms
           (all-bindings-such-that
            (all-bindings-such-that
             (indiv-bound-in term)
             :body-type-is category::pair-term)
            :variable-is (lambda-variable-named 'head))))

      (unless classifing-pair-terms
        (break "Assumption violated: How can a term with ':classified' ~
                realizations~%not have any classifying pair terms?"))
      (let ( classifiers )
        (dolist (b classifing-pair-terms)
          (push (value-of 'other (binding-body b))
                classifiers))
        classifiers ))))


(defun terms-with-classifiers ()
  (let ( terms-with-classifiers  classifiers )
    (dolist (term (the-terms))
      (when (setq classifiers (term-has-classifiers? term))
        (push (cons term classifiers)
              terms-with-classifiers)))
    terms-with-classifiers ))


(defun print-classified-terms (stream
                               &optional (twc (terms-with-classifiers)) )
  (format stream
          "~&~%;; Terms that have appeared with classifiers~%")
  (dolist (cons twc)
    (format stream "~&~%~A~
                    ~%   ~A" (car cons) (cdr cons))))
             




;;;-----------------------
;;; 'classifies' 'follows
;;;-----------------------

(defun what-individual-classifies/segments-by-form
       (i &optional (segments-by-form
                     (organize-individuals-segments-by-form i t)))
  (let ((classifying-segments/by-form
         (cdr (assoc (lambda-variable-named 'classifier)
                     segments-by-form
                     :test #'eq))))
    (when classifying-segments/by-form
      (let ( head  heads-classified )
        (dolist (form-alist classifying-segments/by-form)
          (dolist (form-entry form-alist)
            (dolist (s (cdr form-entry))
              (setq head (value-of 'head s))
              (if head
                (push head heads-classified)
                (format t "~&!!! no head binding when expected in ~A"
                        s)))))
        heads-classified ))))



(defun what-term-appears-after (i &optional print? )
  (let ((binds (indiv-binds i)))
    (when binds
      (let ((adjacent/follows-bindings
             (all-bindings-such-that
              binds :variable-is (lambda-variable-named 'adjacent/follows))))
        (when adjacent/follows-bindings
          (let ( terms )
            (dolist (b adjacent/follows-bindings)
              (push (binding-value b) terms))
            (when print?
              (let ((*print-short* t))
                (format t "~&~A~%   appears after ~A~%~%"
                        i terms)))
            adjacent/follows-bindings ))))))

(defun what-term-appears-before (i &optional print? )
  (let ((binds (indiv-binds i)))
    (when binds
      (let ((adjacent/precedes-bindings
             (all-bindings-such-that
              binds :variable-is (lambda-variable-named 'adjacent/precedes))))
        (when adjacent/precedes-bindings
          (let ( terms )
            (dolist (b adjacent/precedes-bindings)
              (push (binding-value b) terms))
            (when print?
              (let ((*print-short* t))
                (format t "~&~A~%   appears before ~A~%~%"
                        i terms)))
            adjacent/precedes-bindings ))))))


(defun what-term-classifies (i &optional print? )
  (let ((binds (indiv-binds i))
        (bound-in (indiv-bound-in i))
        classify-bindings  other-bindings  terms )
    (when binds
      (setq classify-bindings
            (all-bindings-such-that
             binds :variable-is (lambda-variable-named 'classifies)))
      (when classify-bindings
        (dolist (b classify-bindings)
          (push (cons (binding-value b) (binding-count b))
                terms))))
    (when bound-in
      (setq other-bindings
            (all-bindings-such-that
             bound-in :variable-is (lambda-variable-named 'other)))
      (when other-bindings
        (dolist (b other-bindings)
          (push (cons (binding-body b) (binding-count b))
                terms))))

    (when print?
      (let ((*print-short* t))
        (format t "~&~A~
                   ~%   classifies ~A  (~A)"
                i (car (first terms)) (cdr (first terms)))
        (dolist (term (rest terms))
          (format t "~&              ~A  (~A)~%"
                  (car term) (cdr term)))
        (terpri)(terpri)))

    (values classify-bindings
            other-bindings)))



(defun what-term-is-classified-by (i &optional print? )
  (let ((bindings (indiv-bound-in i)))
    (when bindings
      (let ((classify-bindings
             (all-bindings-such-that
              bindings :variable-is (lambda-variable-named 'classifies))))
        (when classify-bindings
          (let ( terms )
            (dolist (b classify-bindings)
              (push (binding-body b) terms))
            (when print?
              (let ((*print-short* t))
                (format t "~&~A~%   is classified by ~A~%~%"
                        i terms)))
            classify-bindings ))))))



(defun relationships-to-other-than-segments (i &optional print?)
  (let ((bindings (indiv-bound-in i))
        (*print-short* t)
        body  var  count  entry  relationships )
    (when bindings
      (dolist (b bindings)
        (setq body (binding-body b)
              var (binding-variable b)
              count (cadr (member :incidence-count (unit-plist b))))
        (unless (itype body (category-named 'segment))
          (setq entry (assoc var relationships))
          (if entry
            (rplacd entry
                    (cons `(,body ,count)
                          (cdr entry)))
            (setq relationships
                  `( (,var (,body ,count))
                     ,@relationships )))))
      
        (when print?
          (dolist (entry relationships)
            (format t "~&~A" (car entry))
            (dolist (subentry (cdr entry))
              (format t "~&  ~A~20,5T~A"
                      (car subentry) (cadr subentry))))
          (terpri)(terpri))
        (length relationships))))





;;;-----------------
;;; subject -- verb
;;;-----------------

;(what-do-You-do)
;(group-s/v-by-subject)


(defvar *what-you-do* nil)
(defun what-do-You-do ()
  (let ( s/v  verb  verbs )
    (dolist (s/v-entry *subj-vb/dh*)
      (setq s/v (first s/v-entry))
      (when (eq *you* (value-of 'subject s/v))
        (setq verb (value-of 'verb s/v))
        (push `(,verb ,@(cdr s/v-entry))
              verbs)))
    (setq *what-you-do*
          (sort verbs #'sort-discourse-entries/verbs))
    (dolist (entry *what-you-do*)
      (format t "~&~A~24,5T~A~%" (car entry) (length (cdr entry))))
    (length *what-you-do*)))


(defun sort-discourse-entries/verbs (dht1 dht2)
  (cond ((> (length (cdr dht1))
            (length (cdr dht2)))
         t)
        ((< (length (cdr dht1))
            (length (cdr dht2)))
         nil)
        (t (sort-verb-terms-alphabetically
            (car dht1) (car dht2)))))

(defun sort-verb-terms-alphabetically (t1 t2)
  (let ((string1
         (etypecase t1
           (individual
            (or ;(word-pname (value-of 'word t1))
                (symbol-name (cat-symbol (i-type-of t1)))))
           (category (symbol-name (cat-symbol t1)))))
        (string2
         (etypecase t2
           (individual
            (or ;(word-pname (value-of 'word t2))
                (symbol-name (cat-symbol (i-type-of t2)))))
           (category (symbol-name (cat-symbol t2))))))
    (string< string1 string2)))



(defvar *s/v-by-subject* nil)
(defun group-s/v-by-subject ()
  (let ( s/v  subj  entry  alist )
    (dolist (s/v-entry *subj-vb/dh*)
      (setq s/v (first s/v-entry))
      (setq subj (value-of 'subject s/v))
      (setq entry (assoc subj alist :test #'eq))
      (if entry
        (rplacd entry
                (cons (value-of 'verb s/v)
                      (cdr entry)))
        (setq alist
              `(( ,subj ,(value-of 'verb s/v) )
                ,@alist))))

    (setq *s/v-by-subject* alist)
    (dolist (entry alist)
      (format t "~%~A~15,5T~A"
              (car entry) (cdr entry)))
    (length alist)))



;;;-------------
;;; verb-object
;;;-------------

(defun group-vb/obj-by-verb ( &optional (instances *vb-obj/dh*) )
  (let ( verb-alist  obj  verb  entry )
    (dolist (dhe instances)
      (setq obj (first dhe)
            verb (value-of 'verb obj))
      (setq entry (assoc verb verb-alist))
      (if entry
        (rplacd entry
                (cons dhe (cdr entry)))
        (setq verb-alist
              `((,verb ,dhe)
                ,@verb-alist))))

    (let ( object )
      (dolist (entry verb-alist)
        (format t "~&~A" (car entry))
        (dolist (dhe (cdr entry))
          (setq object (value-of 'object (first dhe)))
          (format t "~&   ~A~7,2T~A~%"
                  (length (rest dhe))
                  object))))))


(defun group-vb/obj-by-object ( &optional (instances *vb-obj/dh*) )
  (let ( object-alist  obj  object  entry )
    (dolist (dhe instances)
      (setq obj (first dhe)
            object (value-of 'object obj))
      (setq entry (assoc object object-alist))
      (if entry
        (rplacd entry
                (cons dhe (cdr entry)))
        (setq object-alist
              `((,object ,dhe)
                ,@object-alist))))

    (let ( verb )
      (dolist (entry object-alist)
        (format t "~&~A" (car entry))
        (dolist (dhe (cdr entry))
          (setq verb (value-of 'verb (first dhe)))
          (format t "~&   ~A~7,2T~A~%"
                  (length (rest dhe))
                  verb))))))


(defun sort-vb/obj-by-frequency ( &optional (instances *vb-obj/dh*) )
  (let ((copy (copy-list instances)))
    (setq vb/obj-sorted-by-frequency
          (sort copy
                #'sort-discourse-entries/vb-obj))))

(defun sort-discourse-entries/vb-obj (dht1 dht2)
  (cond ((> (length (cdr dht1))
            (length (cdr dht2)))
         t)
        ((< (length (cdr dht1))
            (length (cdr dht2)))
         nil)
        (t (sort-vb/obj-alphabetically
            (car dht1) (car dht2)))))

;;;-----------------







;;;-----------
;;; genitives
;;;-----------

;(populate-genitive-globals)
;(print-all-genitives)
;(print-genitive-relation/by-owners)

(defvar *owners* nil)
(defvar *owned* nil)
(defun populate-genitive-globals ( &optional
                                   (cases *genitive/dh*) )
  (let ( owner  owned )
    (dolist (dhe cases)
      (setq owner (value-of 'owner (first dhe)))
      (unless (member owner *owners* :test #'eq)
        (push owner *owners*))
      (setq owned (value-of 'owned (first dhe)))
      (unless (member owned *owned* :test #'eq)
        (push owned *owned*)))
    (format t "~& ~A owners~% ~A items owned~%"
            (length *owners*) (length *owned*))))

(defun print-all-genitives ( &optional
                             (instances *genitive/dh*) )
  (let ((*print-short* t))
    (dolist (dhe instances)
      (format t "~& (~A) ~A~%" (length (cdr dhe)) (car dhe)))))



(defun print-genitive-relation/by-owners ()
  (let ((*print-short* t)
        bindings  owned )
    (dolist (owner *owners*)
      (format t "~&~A~%  has " owner)
      ;;//// to handle one owner having several owned
      ;; this should do an 'up-and-over'
      (setq bindings (all-such-that 'genitive 'owner owner))
      (dolist (b bindings)
        (setq owned (up-and-over b 'owned))
        (format t " ~A" owned)))))



;;--- scratch space 11/21

(defun number-of-instances (obj)
  (etypecase obj
    (binding (binding-count obj))
    (individual (length (instance-history obj)))))


;;--- 11/29

(defun what-is-done-to (individual)
  ;; Uses the verb-object relationship.
  ;; Returns a list of conses of each different verb and
  ;; the number of incidences of that verb-object pair
  ;; in the analyzed text.
  (let ((vo-bindings
         (bound-in individual :body-type 'verb-object :all t))
        verb  relation-count-pairs )
    (dolist (b vo-bindings)
      (setq verb (value-of 'verb (binding-body b)))
      ;; //data check on the verb individual goes here
      (push (cons verb
                  (binding-count b))
            relation-count-pairs ))
    (nreverse relation-count-pairs)))


(defun what-does-action-apply-to (verb-individual)
  ;; Uses the verb-object relationship from the other direction.
  ;; Same kind of return value.
  (let ((vo-bindings
         (bound-in verb-individual :body-type 'verb-object :all t))
        object  relation-count-pairs )
    (dolist (b vo-bindings)
      (setq object (value-of 'object (binding-body b)))
      ;; //data check on the object individual goes here
      (push (cons object
                  (binding-count b))
            relation-count-pairs ))
    (nreverse relation-count-pairs)))




(defun print-index/nominal-terms-with-governing-verbs ()
  (let ((count 0)
        verbs  verb )
    (dolist (i (order-the-pair-terms-and-nominal-terms))
      (unless (and (itypep i 'term)
                   (verb-term? i))
        (format t "~&~% ~A. ~A" (incf count) i)
        (setq verbs (what-is-done-to i))
        (when verbs
          (dolist (verb-term/count-pair verbs)
            (setq verb (car verb-term/count-pair))
            (format t "~&~7t ~A" verb)
            (let ((vo (find-individual 'verb-object
                                       :verb verb
                                       :object i)))
              (unless vo
                (break "There should have been a verb-object ~
                        relation but there isn't"))
              (princ-section-containing-instances vo))))))))
    
(defun princ-section-containing-instances (individual)
  ;; Looks up the instance record of the individual from the
  ;; discourse history, then finds the section object that encloses
  ;; each instance, and prints it at the current cursor position.
  (let ((instance-record
         (cdr (individuals-discourse-entry individual)))
        ;; the record is the individual followed by pairs
        ;; of position objects or token-index integers
        (*print-short* t))

    (do* ((instance (first instance-record)
                    (first remaining-instances))
          (start-pos (car instance) (car instance))
          (remaining-instances (cdr instance-record)
                               (cdr remaining-instances))
          so )
         ((null instance))

      (setq so
            (etypecase start-pos
              (integer
               (section-object-containing-token-index start-pos))
              (position
                (section-object-containing-token-index
                 (pos-token-index start-pos)))
              (keyword
               (if (eq start-pos :display-index)
                 "??"
                 (break "unanticipated keyword as start-pos")))))

      (format t "  ~A" so))))





;;-------------- scratch space 1/3



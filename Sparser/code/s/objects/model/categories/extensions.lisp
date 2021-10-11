;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "extensions"
;;;   Module:  "objects;model:categories:"
;;;  version:  October 2021

;; Initiated 10/24/13 to add extensions motivated by C3.
;; 8/12/15 Giving it some real flesh. 

(in-package :sparser)

;;;----------------------------
;;; restrictions on variables
;;;----------------------------

(defun handle-variable-restrictions (category restrictions)
  "Called from decode-category-parameter-list.
   A restriction is expressed as a pair of variable name
     and value restriction given in the usual form.
   A category can not 'restrict' one of its own variables.
     That doesn't make sense. It has to be inherited from one of
     its supercategories (frequently a mixin).
   We implement this by creating a new variable,
     with the same name as the inherited one (which we record),
     but with this new value restriction.
   The new variables are added to the slots field of the category
     after any variables that the category has already defined.
   We add a tag to the old variable(s) -- :restricts -- and set
     it to the new variable(s). On the category we set the
     property :restrictions to the list of the new variables."

  (flet ((def-restriction (restriction)
           (let ((var-name (car restriction))
                 (exp (cadr restriction)))
             (when (find-variable-in-category var-name category)
               (error "~a is a local variable bound by ~a~
                      ~%It does not make any sense to 'restrict' ~
                      a variable that is defined by the category."
                      var-name category))
             (let ((upper-var
                    (find-variable-for-category var-name category)))
               (unless upper-var
                 (error "None of the super categories of ~a ~
                         define a variable named ~a."
                        category var-name))

               ;;/// Should we check that this restriction is more
               ;; specific than the restriction its inheriting from?
               (let* ((restriction 
                       (resolve-variable-restriction exp))
                      ;; see find/make-lambda-variable-for-category
                      (new-var
                       (make-lambda-variable
                        :name var-name
                        :value-restriction  restriction
                        :category category)))
                 (setf (get-tag :restricts new-var) upper-var)
                 new-var)))))

    (let ((restriction-variables
           (loop for r-exp in restrictions
             collect (def-restriction r-exp))))
      ;; Save the restriction expression
      ;;/// substitute real variables for names
      (setf (get-tag :restrictions category) restrictions)
      
      ;; Add in the new variables
      (setf (cat-slots category)
            (append (cat-slots category)
                    restriction-variables))

      restriction-variables)))


;;;---------------
;;; documentation
;;;---------------

(defun store-category-documentation (category documentation)
  (setf (get-tag :documentation category) documentation))


;;;-------------------------
;;; mixins added on the fly
;;;-------------------------

(defgeneric add-mixin (category mixin)
  (:documentation "Add the mixin category to the list of mixins
    on the category.")
  (:method ((c referential-category) (name symbol))
    (let ((mixin (category-named name)))
      (unless mixin (error "There is no category named ~a" name))
      (add-mixin c (category-named mixin))))
  (:method ((c referential-category) (m model-category))
    (remove-tag :super-categories c) ;; force reindexing of supercs
    (pushnew m (cat-mix-ins c))))



;;;-----------------------------------------------------
;;; words subsuming several alternative interpretations
;;;-----------------------------------------------------
#|
decode-rdata -- objects/model/tree-families/rdata
--> ... --> make-rules-for-rdata -- ../driver
--> instantiate-rule-schema (in driver file)
or make-rules-for-head -- grammar/rules/tree-families/morphology
--> define-cfr -- objects/rules/cfr/define
--> construct-cfr -- ../construct
--> knit-into-psg-tables -- ../knit-in
... knit-in-single-term-rewrite-rule (cfr)

If there's only one rule for a word we don't care.
We don't care about the morphological variants (of a given POS) either
and that will call from some digging probably though perhaps having
an eq referent would suffice to reduce to just one?
If there is more than one, i.e. if the field on the rule-set already
has a value, then we want to accumulate them.

We want the category for folding into the {compound-category}.
For reporting this in a form we can ponder, we want the word and category,
the source file where the definition happened,
perhaps the part of speech, or whether the definition came from a
realization field or something else. If we can get the source file
we can also get the grammar module.
|#

(defvar *words-to-cfr-data* (make-hash-table))

(defstruct (word-multi-record
             (:conc-name #:wmr-))
  word
  category
  location
  referent
  )

(defgeneric get-multi-cfr-data (word)
  (:documentation "Retrieve the word-multi-records for the word")
  (:method ((pname string))
    (get-multi-cfr-data (word-named pname)))
  (:method ((word word))
    (gethash word *words-to-cfr-data*)))

(defvar *words-with-multiple-readings* nil) ; 398 in fire

(defun record-multi-cfr (cfr)
  "Called from knit-in-single-term-rewrite-rule when there is
   already a cfr in the terminal's rule-set. Package up the statistics
   we want, then add the entry to the hash table.
   Filtering is done later by separate routines"
  (declare (special *defining-a-polyword*))
  (let ((terminal (car (cfr-rhs cfr))))
    
    ;; first just what sorts of rules does this apply to
    (when (typep terminal 'word)
      (unless *defining-a-polyword*
        ;; ignore the words that comprise the pw
        
        (flet ((make-record (cfr word)
                 (let ((pathname (file-location cfr))
                       (label (cfr-category cfr))
                       (ref (cfr-referent cfr)))
                   (push word *words-with-multiple-readings*)
                   (make-word-multi-record
                    :word word
                    :category label
                    :location pathname
                    :referent ref))))
          
          (let* ((word terminal)
                 (records (gethash word *words-to-cfr-data*)))
            (if (null records)
              (setf (gethash word *words-to-cfr-data*)
                    (list (make-record cfr word)))
              (else
                ;; Otherwise we have to determine whether we have a
                ;; morphological varient or a new interpretation
                ;; Will assume for now that varients will be added
                ;; in a cluster, not interleaved with other readings,
                ;; so we only have to look at the most recent record,
                ;; and that having the same referent implies being a
                ;; varient.
                (let* ((previous-record (car records))
                       (record-ref (wmr-referent previous-record)))
                  (let ((cfr-ref (cfr-referent cfr)))
                    (if (eq cfr-ref record-ref)
                      (then ;; a variant
                        ) ; count them?
                      (else ;; presumably a different reading
                        (let ((new-record (make-record cfr word)))
                          (setf (gethash word *words-to-cfr-data*)
                                (cons new-record records)))) )))) )))))))

(defgeneric true-multi-category? (word)
  (:documentation "There are a substantial number of rules with
    multiple unary rules where the category is the same and all
    that differs is is the form, e.g. the noun and verb rules
    for 'fear'. This looks at the unary rules on the word
    and succeeds if their categories are different")
  (:method ((pname string))
    (true-multi-category? (word-named pname)))
  (:method ((word word))
    (let ((rules (find-unary-rules word)))
      (let ((categories
             (remove-duplicates
              (loop for rule in rules
                 collect (cfr-category rule)))))
        (when (cdr categories)
          categories)))))

(defun collect-multi-categories ()
  "Take the list of words that we wrote records for an filter
 it for the ones that are 'true'. Sort the result."
  (let ((raw-list-of-words
         (remove-duplicates
          (loop for word in *words-with-multiple-readings*
             when (true-multi-category? word)
             collect word))))
    (sort-words raw-list-of-words)))
      


;;--- batch experiments

(defun collect-words-with-single-term-edges () ; 64,035
  (loop for word in *words-defined*
     when (word-with-single-edge-rules? word)
     collect word))

(defun collect-words-with-multiple-unary-rules () ; 3,977
  (let ((words-with-field (collect-words-with-single-term-edges)))
    (loop for word in words-with-field
       as rs = (rule-set-for word)
       as field = (rs-single-term-rewrites rs)
       when (cdr field)
       collect word)))


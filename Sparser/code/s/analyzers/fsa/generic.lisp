;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2018-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "generic"
;;;   Module:  "analyzers:FSA:"
;;;  Version:  February 2020

;; Initiated 2/13/18 to gather into one place the routines that
;; add and access fsas, thence to generalize them.

(in-package :sparser)

;;--- lookup

(defgeneric word-or-variant-has-fsas? (word position-before)
  (:documentation "Unlike the routines in this fsa/words.lisp, this one
    merely checks for whether there is one or more fsas associated
    with this word rather than also executing the fsa and returning
    the resulting position. Considers any capitalization variants
    of the word (which will be lowercase by convention) and looks
    there as well. Does an exact match on the actual cpitalization
    of the position. Could alternatively use get-word-string-from-position 
    to consider variants that are 'compatible' with the actual state.")
  (:method ((pw polyword) (p position))
    (has-fsa? pw))
  (:method ((w word) (p position))
    (if (has-fsa? w)
      (values (has-fsa? w) w)
      (unless (eq :lower-case (pos-capitalization p))
        (let ((variants (word-capitalization-variants w))
              (actual-state (pos-capitalization p)))
          (when variants
            (let ((relevant-variant
                   (find actual-state variants :key #'word-capitalization)))
              (values
               (has-fsa? relevant-variant)
               relevant-variant))))))))
              
(defgeneric has-fsa? (word-or-category)
  (:documentation "Does this label include one or more fsa functions
    on its rule set? If so, return them. 
    Compare to starts-polyword function in analyzers/fsa/words.lisp")
  (:method ((rs rule-set))
    (when (rs-fsa rs)
      (loop for item in (rs-fsa rs)
         unless (typep item 'polyword-state)
         collect item)))
  (:method ((ignore null)) nil)
  (:method ((w word)) (has-fsa? (rule-set-for w)))
  (:method ((p polyword)) (has-fsa? (rule-set-for p)))
  (:method ((c category)) (has-fsa? (rule-set-for c))))


;;--- run

(defun run-fsa (function/s word position-before)
  (when (cdr function/s) ;; see multi-edge loop in do-edge-level-fsas
    ;; or do-fsa-field, which is not going to return the largest
    ;; position reached
    (error "More than one FSA associated with ~a" word))
  (let* ((fsa (car function/s))
         (position-reached (funcall fsa word position-before)))
    (if position-reached
      (tr :wfsa/succeeded/1 position-reached)
      (tr :wfsa/failed/1))
    position-reached))


;;--- Linking an FSA to a word or a category

(defun add-fsa (category fsa)
  "Given a category object and a symbol naming the function
   that runs the fsa, extend the rule set of the category
   to include the fsa. Examples in core/numbers/categories.lisp"
  (let ((rule-set (cat-rule-set category)))
    (unless rule-set
      (setq rule-set (make-rule-set :backpointer category))
      (setf (cat-rule-set category) rule-set))
    (let ((fsa-field (rs-fsa rule-set)))
      (if fsa-field
        (unless (memq fsa fsa-field)
          (push fsa fsa-field))
        (setf (rs-fsa rule-set) (list fsa)))
      rule-set)))

(defun find-or-make-fsa-field (word)
  (check-type word word)
  (let* ((rs (establish-rule-set-for word)) ;; find or make
         (fsa-field (rs-fsa rs)))
    (or fsa-field
        rs)))

(defun push-item-onto-fsa-field (word item)
  "The result is read by, e.g. initiates-polyword or do-fsa-field"
  (let ((field-or-rs (find-or-make-fsa-field word)))
    (etypecase field-or-rs
      (rule-set (setf (rs-fsa field-or-rs) `(,item)))
      (cons
       (tail-cons item field-or-rs))
      (symbol
       (error "Bad initial state of fsa field of rule-set-for ~a" word)))))

(defun push-fsa-onto-word (word fn-name)
  (push-item-onto-fsa-field word fn-name))


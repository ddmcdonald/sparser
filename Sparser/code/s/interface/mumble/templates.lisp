;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "templates"
;;;   Module:  "/interface/mumble/"
;;;  version:  July 2017

;; initiated 7/27/17

(in-package :sparser)

#| Need to construct a function that can be save to a file
and (duh) reused. It is for a well-formed Krisp sexp such
as we get for transmition to/from Spire, i.e. without any
indexes. We remove a sub expression from the initial Krisp.
The variable it corresponds to is the parameter of the
function. 
   As a value for the parameter we expect an sexp that
we can substitue in for the parameterized one. We then
apply the sexp->individual translator to give us an individual
that we can pass to Archie. ///or we let it pass us an individual

p/r-sem -> analyze-text-from-string -> analysis-core
  -> analysis-cor-return-value -> spire-tree

In drivers/chart/psp/semantic-extraction.lisp
  to-krisp (<sexpr>)
  krisp->sexpr (<individual>)
|#

;;;--------------
;;; tree walkers
;;;--------------

;; copied from Peter Norvig's textbook code
(defun find-anywhere (item tree)
  "Does item occur anywhere in tree?"
  (if (atom tree)
    (if (eql item tree) tree)
    (or (find-anywhere item (first tree))
        (find-anywhere item (rest tree)))))

(defun replace-sublist (target tree)
  "Walk the tree (sexp) looking for a proper sublist 
   whose car is eq to 'target'. Destructively modify the
   tree to replace the crd of that sublist with another
   instance of the target. For instance if the target
   is the symbol 'value' then
    (there-exists
       (value (block (has-determiner (a))))
        (predicate (be)))
   => (there-exists (value value) (predicate (be))  "
  (flet ((insert-marker (sublist)
           "Replace the cdr of the list with a copy of
            the symbol in its car"
           (let ((1st-symbol (car sublist)))
             (setf (cdr sublist) (list 1st-symbol)))))
    (cond
      ((atom tree))
      ((eq (car tree) target)
       (insert-marker tree))
      (t (or (when (listp (car tree))
               (replace-sublist target (car tree)))
             (replace-sublist target (cdr tree)))))))


;;;-----------------------------------
;;; basic clause-level template macro
;;;-----------------------------------

(defmacro define-krisp-template (name parameter tree)
  (assert (find-package :mumble) () "The mumble package isn't defied!")
  (assert (symbolp name))
  (assert (and (listp parameter) (= 1 (length parameter))))
  (assert (listp tree))
  (let* ((category (category-named (car tree) :error-if-nil))
         (var-name (car parameter))
         (variable (find-variable-for-category var-name category)))
    (assert variable (var-name category)
            "no variable named ~a on ~a" var-name category)
    (assert (find-anywhere var-name tree) (var-name tree)
            "There isn't an instance of the parameter ~a in ~a" var-name tree)
    (let ((method-name (intern (symbol-name name)
                               (find-package :mumble))))
      (replace-sublist var-name tree) ;; side-effects on tree
      `(defgeneric ,method-name ,parameter
         (:method ((i individual))
           (let ((sexp (krisp->sexpr i)))
             (,name sexp)))
         (:method ((sexp cons))
           (let* ((pattern '(,var-name ,var-name))
                  (fresh-copy (copy-tree ',tree))
                  (new-value (cons ',var-name (list sexp)))
                  (full-tree (subst new-value pattern fresh-copy
                                    :test #'equal)))
             ;;(push-debug `(,new-value ,fresh-copy ,pattern))
             ;;(lsp-break "inside")
             (to-krisp full-tree)))))))




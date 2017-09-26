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

;;;--------
;;; gofers
;;;--------

(defgeneric template-method-name (name)
  (:documentation "Return a symbol in the mumble package. 
   If it's aready fboundp then add '-template' to the its end.")
  (:method ((name symbol))
    (template-method-name (symbol-name name)))
  (:method ((pname string))
    (let ((m-sym (intern pname (find-package :mumble))))
      (if (fboundp m-sym)
        (intern (string-append (string-upcase pname) '#:-template)
                (find-package :mumble))
        m-sym))))

;;;-----------------------------------
;;; basic clause-level template macro
;;;-----------------------------------

(defmacro define-krisp-template (name parameter tree)
  "The input tree is just as it would be when returned by krisp->expr
   after a parse. It has a value for the variable named by the
   parameter, but it can be trivial since its used just to identify
   the place in the tree were we're going to substitute the
   expression we really want."
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
    (let ((method-name (template-method-name name)))
      (replace-sublist var-name tree) ;; side-effects on tree
      `(defgeneric ,method-name ,parameter
         (:method ((i individual))
           ;; Alternatively, set the variable directly.
           ;; Makes a difference it that does away with the
           ;; need for a dummy value. 
           (let ((sexp (krisp->sexpr i)))
             (,name sexp)))
         (:method ((sexp cons))
           (let* ((pattern '(,var-name ,var-name))
                  (fresh-copy (copy-tree ',tree))
                  (new-value (cons ',var-name (list sexp)))
                  (full-tree (subst new-value pattern fresh-copy
                                    :test #'equal)))
             (to-krisp full-tree)))))))


(defmacro define-wrapper-template (name exp-to-add)
  "The exp-to-add should be a simple stripped variable and value,
   e.g. (modal (can))
   The function takes an expression or an individual it expands.
   It returns the input expression with the new exp-to-add
   folded in as its first var+value."
  (let ((method-name (template-method-name name)))
    ;; Runtime really should check that it's adding a valid
    ;; variable for this category
    `(defgeneric ,method-name (sexp)
       (:method ((i individual))
         (let ((sexp (krisp->sexpr i)))
           (,name sexp)))
       (:method ((sexp cons))
         (let ((extended (push ',exp-to-add (cdr sexp))))
           sexp)))))


(defmacro def-noun (string) ;;/// add plural
  "This runs the Mumble machinery to define the word and lexicalized
   phrase for the string as a Mumble-side word. Packages that up into
   a function of the same name as the string, assuming that it does not
   clash with an already defined function."
  (let* ((method-name (template-method-name string))
         (category (noun/expr string))
         (category-name (cat-name category)))
    ;; 'noun' is the standard Sparser shortcut.
    ;; It defines a category with the same name as the string,
    ;; Sparser rules for singlar and plurals, 
    ;; and a lexicalized phrase for the singular form. All done w/ ordinary
    ;; define-category machinery.
    `(defgeneric ,method-name (&key attribute)
       (:method (&key attribute)
         (let ((sexp '(,category-name (has-determiner (a))) ))
           (when attribute
             (template-handle-attribute sexp attribute))
           sexp))
       ;; How do I discriminate these cases in a general way?
       #+ignore(:method (&key attribute)
         (let ((i (find-or-make-individual ,category)))
           (when attribute
             (template-handle-attribute i attribute))
           i)))))

;; can do same trick for adj(ectives)


(defmacro def-verb (string)
  "Construct a minimal category to support the mumble resources for
   the string as a verb. Defaults to svo, actor/patient. Contruct a
   function for it with keyword arguments to specify constituents
   (default: s, o)."
  ;;/// add irregulars, alternative subcategorizations, variables
  (multiple-value-bind (category parameters-and-variables)
      (define-template-verb string)
    (let ((method-name (template-method-name string))
          (category-name (cat-name category))
          (parameters (loop for pv in parameters-and-variables
                         collect (car pv))))            
      `(defgeneric ,method-name (&key ,@parameters)
         (:documentation "When the keyword arguments are used,
             each one is 'bound' to the corresponding variable
             to form a full expression.")
         (:method (&key ,@parameters)
           (let ((base '(,category-name)))
             ,@(template-parameter-cases parameters-and-variables)
             base))))))

(defun template-parameter-cases (parameters-and-variables)
  "Generates a set of when clauses to check for parameters and 'bind'
   the corresponding variable. parameters-and-variables is a list of
   dotted pairs: (parameter . variable)."
  (loop for pv in parameters-and-variables
     as parameter = (car pv)
     as variable = (cdr pv)
     collect `(when ,parameter
                (template-bind base ',variable ,parameter))))



;;--- pan-template subroutines

(defgeneric template-bind (base var-name value)
  (:documentation "Abstracts whether we're passing individuals or sexp")
  (:method ((base cons) (var-name symbol) (value cons))
    (let ((binding-exp `(,var-name ,value)))
      (push binding-exp (cdr base)))))

(defgeneric template-handle-attribute (base attribute)
  (:documentation "Extend the base, which presumably conrresponds to
    a nominal of some sort, to incorporate the attribute as a modifier.
    The realization of the modifier will be pre- or post-head depending
    on how heavy it is.")
  ;; (:method ((i individual) (attr-sexp cons))
  ;;   ;; bindings in the description-lattice protocol entail finding/making
  ;;   ;; new individuals, which is hard to thread through back to the caller.
  ;;   )
  ;; (:method ((i individual) (mod individual))
  ;;   )
  (:method ((base cons) (attr-sexp cons))
    ;; base = (<category name> ...)
    ;; attr-exp = (<var name> <value form>)
    (push attr-sexp (cdr base)))
  (:method ((base cons) (mod individual))
    (let ((attr-exp (cons 'modifier (krisp->sexpr mod))))
      (template-handle-attribute base attr-exp))))


;;;---------------------------------------------------------
;;; lifting the variable out from a parsed text with markup
;;;---------------------------------------------------------

(defvar *parsing-to-make-template* nil
  "Flag to control the behavior of, e.g., square bracket handling.")

(defvar *template-variable-data* nil
  "Conduit between the parse-time detection of variable-ized text
   segments and their post-parse handling. Pushed onto by
   lift-out-variablized-segment")

#| For example
   (p-template foo-1 "I cannot find any genes regulated by [SRC]")  |#
(defmacro p-template (name text)
  "First parse the string.
   While parsing, when we encounter a variable-ized segment, record
   the edge and its referent.  When the parse has finished, figure out
   what the referent is bound to so we can note the variable and its
   restriction.
   (The bound-in field should suffice.). Package all that up
   into a subst-based method."
  (declare (special *template-variable-data*))
  (setq *template-variable-data* nil) ;; initialize
  (let ((*parsing-to-make-template* t))
    (declare (special *parsing-to-make-template*))
    (let ((*return-a-value* t)
          (*what-value-to-return* :spire))
      (declare (special *return-a-value* *what-value-to-return*))
      (let ((fn-name (template-method-name name))
            (sexp (analyze-text-from-string text)))
        (push-debug `(,sexp))
        (when (cdr *template-variable-data*) (error "extend to 2+ vars"))
        ;; Now get the variable and individual that binds it
        (let* ((i (car (car *template-variable-data*)))
               (target (krisp->sexpr i))
               (b (car (indiv-bound-in i)))
               (var (binding-variable b))
               (v/r (var-value-restriction var))
               (j (binding-body b)))

          `(defgeneric ,fn-name (,(var-name var))
             (:method ((value-exp cons))
               ;; <is the value valid for this var?>
               (let ((full (subst value-exp ',target
                                  (copy-tree ',sexp)
                                  :test #'equal)))
                 (to-krisp full)))) )))))


(defun lift-out-variablized-segment (pos-before-open pos-after-open
                                     pos-before-close pos-after-close)
    "Called from span-square-brackets when we're doing templates.
     Since we should only be working with texts that parse
     completely, and we only delimit proper constituents, there
     should always be a single edge between the brackets.
     To continue the parse we respan around the brackets with
     what amounts to a copy of the edge that's between them."
    (let ((coverage (coverage-over-region pos-after-open pos-before-close))
          (edge (right-treetop-at/edge pos-after-open)))
      (unless (eq coverage :one-edge-over-entire-segment)
        (error "The edge coverage between p~a and p~a is ~a.~
              ~%It's supposed to be a single edge."
               (pos-array-index pos-after-open)
               (pos-array-index pos-before-close) coverage))
      (let ((referent (edge-referent edge)))
        (push `(,referent ,edge) *template-variable-data*)
        (let ((spanning-edge
               (make-edge-over-long-span
                pos-before-open pos-after-close
                (edge-category edge)
                :form (edge-form edge)
                :referent (edge-referent edge)
                :rule 'lift-out-variablized-segment)))
          spanning-edge))))

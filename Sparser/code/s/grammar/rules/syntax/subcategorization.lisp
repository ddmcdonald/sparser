;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "subcategorization"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  November 2014

;; Initiated 9/11/14 to organize information about subcategorization patterns
;; Working on it through 9/15/14. 11/20/14 hacked up a treatment of multiple
;; subcat patterns based on hydrolysis. 
;; fixed print method for subcategorization-frame to handle cases without bound word or category slots...


(in-package :sparser)


;;;--------------------------------------
;;; Comlex subcategorization information
;;;--------------------------------------
#|
(:comlex "common" 
  (noun (:features ((countable :pval ("in")))))
  (adjective 
    (:subc ((adj-pp :pval ("for" "to"))
            (extrap-adj-for-to-inf))
     :features ((gradable))))) |#

(defmethod comlex-entry ((pname string))
  "Just return the subcagegorization expression if there is one.
   It will be an alist on part of speech."
  (declare (special *comlex-words-primed* *primed-words*))
  (when *comlex-words-primed*
    (let ((full-entry (gethash pname *primed-words*)))
      (when full-entry
        (cddr full-entry)))))

(defmethod comlex-subcategorization ((w word) (pos symbol))
  (comlex-subcategorization (word-pname w) pos))

(defmethod comlex-subcategorization ((pname string) (pos symbol))
  (when *comlex-words-primed*
    (let ((entry (comlex-entry pname)))
      (when entry
        (assq pos entry)))))


(defun add-specific-subcategorization-facts (category word pos)
  ;; Called from define-function-term, where 'pos' is :adjective
  ;; and we're looking for bound prepositions for, e.g. "common"
  (when *comlex-words-primed* 
    (let ((pos-entry (comlex-subcategorization word pos)))
      (when pos-entry
        ;; this part of speech specific entry can have many
        ;; subentries, as described in the Comlex manual.
        ;; Here we're just looking a subcategorization
        (let ((subcat (cadr (assq :subc (cdr pos-entry)))))
          (when subcat
            (push-debug `(,category ,word ,subcat)) 
            (break "stub")))))))


;;;-----------------------------------
;;; class to organize the information
;;;-----------------------------------

(defclass subcategorization-frame ()
  ((word :initarg :word :accessor for-word
    :documentation "Backpointer to the word this applies to")
   (category :initarg :cat :accessor for-category
    :documentation "Alternatively, this frame may apply
     to a category rather than a word.")
   (form :initarg :form :accessor applies-to
    :documentation "The part of speech (form category) that 
      this frame applies to.")
   ;; We may want to factor the sets of classes according
   ;; to what form they apply to.
   (prepositions :initform nil :accessor bound-prepositions
    :documentation "Does this word take any prepositions,
      and if so, does the combination denote a different
      category?")
   (subcategorizations :initform nil :accessor subcat-patterns
    :documentation "A list of subcategorization specifications
      that apply to the word sense that this frame is for.")
)
  (:documentation "A single pattern among what may be several
    alternative subcategorization patterns for a given word."))

(defmethod print-object ((sc subcategorization-frame) stream)
  (print-unreadable-object (sc stream :type t)
    (setq *sc* sc)
    (format stream "~s" 
            (cond
             ((and 
               (slot-boundp sc 'word)
               (for-word sc))
              (word-pname (for-word sc)))
             ((slot-boundp sc 'category)
              (for-category sc))
             ((slot-boundp sc 'form)
              `(for the form , (applies-to sc)))
             (t
              "unknown sub-categorization source")))))


;;;------------------------
;;; assignments and access
;;;------------------------

(defparameter *labels-to-their-subcategorization* (make-hash-table)
  "From words or categories to subcategorization objects")

(defun get-subcategorization (label &optional facet)
  (let ((entry (gethash label *labels-to-their-subcategorization*)))
    (when entry
      (if facet
        (funcall facet entry)
        entry))))

(defmacro assign-subcat (label form category &rest parameter-plist) ;; :verb+prep)
  (let ((l (etypecase label
             (word label)
             (category label)
             (string (word-named label)))))
    ;;/// typecheck form
    `(assign-subcat/expr ,l ',form ',category ',parameter-plist)))

(defun assign-subcat/expr (word form category parameter-plist)
  "Form to find or make the appropriate subcategorization frame
   and then call the decoder to parse it."
  (let ((sf (get-subcategorization word)))
    (unless sf
      (setq sf (make-instance 'subcategorization-frame
                 :word word
                 :form form))
      (setf (gethash word *labels-to-their-subcategorization*) sf)
      (setf (gethash category *labels-to-their-subcategorization*) sf))
    (apply #'decode-subcategorization-parameter-list sf category parameter-plist)))


(defun decode-subcategorization-parameter-list (sf category &key prep pattern)
  "Parse the content and stash it in the sf structure."
  (when prep
    (setf (bound-prepositions sf) `(,prep)))

  (when pattern
    ;; The s-exp form is pretty lame, but no point in naming them
    ;; until we're getting broader use and have figured it out.
#| from hydrolysis
  :subcategorization ( (("of" np "to" np) (theme goal))
                       (("on" np) (subject))
                       (("of" np) (theme)) ))  |#
    (push-debug `(,pattern ,sf))
    (unless (consp (caar pattern))
      (setq pattern (list pattern)))
    (let (  patterns  )
      (dolist (form pattern)
        (let ((processed 
               (assemble-subcategorization-structure category form)))
          (push processed patterns)))
      (setf (subcat-patterns sf)
            (nreverse patterns)))) ;; preserve order
  sf)


;;;--------------
;;; prepositions
;;;--------------

; (assign-preposition "responsible" "for")
(defmethod assign-preposition ((word-pname string) (prep-pname string))
  (let ((word (resolve/make word-pname))
        (prep (word-named prep-pname)))
    (unless prep (error "Undefined preposition: ~a" prep-pname))
    (assign-preposition word prep)))

(defmethod assign-preposition ((verb word) (prep word))
  (assign-subcat/expr verb category::verb nil `(:prep ,prep)))

(defmethod assign-preposition ((verb word) (prep polyword))
  (assign-subcat/expr verb category::verb nil `(:prep ,prep)))


(defmethod takes-preposition? ((e edge) (prep word))
  (let* ((label (edge-category e))
         (sc (get-subcategorization label)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((e edge) (prep polyword))
  (let* ((label (edge-category e))
         (sc (get-subcategorization label)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((word word) (prep word))
  (let ((sc (get-subcategorization word)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((word word) (prep polyword))
  (let ((sc (get-subcategorization word)))
    (when sc
      (takes-preposition? sc prep))))

(defmethod takes-preposition? ((sc subcategorization-frame) (prep word))
  (let ((preps (bound-prepositions sc)))
    (when preps
      (memq prep preps))))


;;;---------------------------------------------
;;; real subcategorization: sequences of labels
;;;---------------------------------------------

(defun assemble-subcategorization-structure (category pattern)
  ;; ( <sequence of words, form categories>
  ;;   <sequence of variables> )  => dereferenced equivalent
  ;; Caller stores the return value
  (let ((tt-sequence (car pattern))
        (var-sequence (cadr pattern)))
    (let ( deref-tt  deref-var )
      (dolist (item tt-sequence)
        (etypecase item
          (string (push (resolve item) deref-tt))
          (symbol (push (category-named item :break)
                        deref-tt))))
      (dolist (name var-sequence)
        (let ((var (find-variable-for-category name category)))
          (unless var
            (error "No binding (variable) named ~a in ~a" 
                   name category))
          (push var deref-var)))
      `(,(nreverse deref-tt)
        ,(nreverse deref-var)))))

(defun assign-prepositional-subcategorization (category prep 
                                               v/r variable)
  (push-debug `(,category ,prep ,v/r ,variable))
  (let ((sf (get-subcategorization category)))
    (unless sf
      (setq sf (make-instance 'subcategorization-frame
                 :cat category))
      (setf (gethash category *labels-to-their-subcategorization*) sf))
    (let ((entry (subcat-patterns sf))
          (new-case `(,prep ,v/r ,variable)))
      (setf (subcat-patterns sf)
            (if entry
              (cons new-case entry)
              (list new-case)))
      (push-debug `(,sf ,new-case))
      new-case)))

(defun subcat-restriction (entry)
  (cadr entry))
(defun subcat-variable (entry)
  (caddr entry))




(defmethod known-subcategorization? ((e edge))
  (known-subcategorization? (edge-category e)))

(defmethod known-subcategorization? ((c category))
  (let ((sc (get-subcategorization c)))
    (when sc
      (subcat-patterns sc))))

(defmethod known-subcategorization? ((w word))
   (let ((sc (get-subcategorization w)))
    (when sc
      (subcat-patterns sc))))


  
 



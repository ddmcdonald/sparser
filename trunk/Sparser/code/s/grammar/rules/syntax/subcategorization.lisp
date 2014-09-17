;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "subcategorization"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  September 2014

;; Initiated 9/11/14 to organize information about subcategorization patterns
;; Working on it through 9/15/14

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
    (format stream "~s" (word-pname (for-word sc)))))


(defparameter *words-to-their-subcategorization* (make-hash-table)
  "From words to subcategorization objects")

(defun get-subcategorization (word &optional facet)
  (let ((entry (gethash word *words-to-their-subcategorization*)))
    (when entry
      (if facet
        (funcall facet entry)
        entry))))

(defmacro assign-subcat (word form &rest parameter-plist) ;; :verb+prep)
  (let ((w (etypecase word
             (word word)
             (string (word-named word)))))
    ;;/// typecheck form
    `(assign-subcat/expr ,w ',form ',parameter-plist)))

(defun assign-subcat/expr (word form parameter-plist)
  (let ((sf (get-subcategorization word)))
    (unless sf
      (setq sf (make-instance 'subcategorization-frame
                 :word word
                 :form form))
      (setf (gethash word *words-to-their-subcategorization*) sf))
    (apply #'decode-subcategorization-parameter-list sf parameter-plist)))

(defun decode-subcategorization-parameter-list (sf &key prep
                                                        pattern)
                                                
  (when prep
    (setf (bound-prepositions sf) `(,prep)))
  (when pattern ;;//// vs. patterns
    ;; The provision is for a set of different patterns
    ;;/// will need processing to fit how its going to be deployed
    (setf (subcat-patterns sf) `(,pattern)))
  sf)

;;--- cases

; (assign-preposition "responsible" "for")
(defmethod assign-preposition ((word-pname string) (prep-pname string))
  (let ((word (resolve/make word-pname))
        (prep (word-named prep-pname)))
    (unless prep (error "Undefined preposition: ~a" prep-pname))
    (assign-preposition word prep)))

(defmethod assign-preposition ((verb word) (prep word))
  (assign-subcat/expr verb category::verb :prep prep))


(defmethod takes-preposition? ((word word) (prep word))
  (let ((sc (get-subcategorization word)))
    (when sc
      (let ((preps (bound-prepositions sc)))
        (when preps
          (memq prep preps))))))



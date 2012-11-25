;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996,2011-2012  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "assignments"
;;;   Module:  "objects;chart:brackets:"
;;;  Version:  1.2 November 2012

;; 1.1 (4/25/91 v1.8.4)  Reworked to separate the indexing of the brackets
;;      from their assignment to particular words.
;;     (1/13/92 v2.2)  Put in Scott's changes to the macros
;;     (12/17/92 v2.3) added some comentary
;;     (5/24/94) cleaned it up
;; 1.2 (6/19/96) revised the macros so that the just returned a single expression,
;;      which now lets them compile. 6/25 fixed a bug in it.
;;     (7/31/11) add an assign fn for all the brackets on a word pulled from
;;      define-function-word. (11/9/12) added describe-bracket-assignment,
;;     (11/23/12) List of words passed in to assign-bracket/expr

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (bracket-assignment
            (:conc-name #:ba-)
            (:print-function print-bracket-assignment-structure))

  ends-before
  begins-before
  ends-after
  begins-after
  backpointer
  )

;;;---------
;;; printer
;;;---------

(defun print-bracket-assignment-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<brackets for " stream)
  (format stream "~A" (ba-backpointer obj))
  (write-string ">" stream))


;;;-----------------------------------------------
;;; Assign all the brackets for a particular word
;;;-----------------------------------------------

(defun assign-brackets-to-word (word bracket-symbols)
  (when bracket-symbols
    (delete-existing-bracket-assignments word)
    (let ( bracket )
      (dolist (bracket-symbol bracket-symbols)
        (if (bracket-p bracket-symbol)
          (setq bracket bracket-symbol)
          (else
            (unless (and (symbolp bracket-symbol)
                         (boundp bracket-symbol))
              (error "The ostensive bracket symbol ~A isn't defined"
                     bracket-symbol))
            (setq bracket (eval bracket-symbol))
            (unless (bracket-p bracket)
              (error "The symbol ~A evals to ~A~%instead of to a bracket"
                     bracket-symbol bracket))))
        (assign-bracket/expr word bracket)))))

;;;-------
;;; forms
;;;-------

;;--- macros

(defmacro assign-bracket (label-symbol bracket-symbol)
  `(assign-bracket/intermediary ',label-symbol ',bracket-symbol))

(defmacro assign-brackets (label-symbol list-of-bracket-symbols)
  `(assign-brackets/intermediary ',label-symbol
                                 ',list-of-bracket-symbols))



;;--- their expansions

(defun assign-bracket/intermediary (label-symbol bracket-symbol)
  (let ((word/category (resolve/make label-symbol)))

    ;; dropped this requirement so that the bracket module
    ;; could be loaded before the references to individual
    ;; brackets (e.g. on words) are made.
    ;(unless word/category
    ;  (error "The label ~A is not defined." label))

    (assign-bracket/expr word/category (eval bracket-symbol))))


(defun assign-brackets/intermediary (label-symbol list-of-bracket-symbols)
  (let ((word/category (resolve label-symbol)))
    (assign-brackets/expr word/category 
                          (mapcar #'eval
                                  list-of-bracket-symbols))))
;; subroutine
(defun assign-brackets/expr (label-object list-of-brackets)
  (delete-existing-bracket-assignments label-object)
  (dolist (bracket list-of-brackets)
    (assign-bracket/expr label-object bracket)))


;;;--------------
;;; core routine
;;;--------------

(defun assign-bracket/expr (label-object bracket)
  (when (consp label-object)
    (unless (every #'word-p label-object)
      (push-debug `(,label-object ,bracket))
      (error "Unexpected object in list argument"))
    (dolist (w label-object)
      (assign-bracket/expr w bracket)))
  (let ((rs (rule-set-for label-object))
        assignment )

    (unless rs
      (setq rs (establish-rule-set-for label-object)))
    (setq assignment
          (or (rs-phrase-boundary rs)
              (setf (rs-phrase-boundary rs)
                    (make-bracket-assignment
                     :backpointer label-object))))

    (let ((composite-descriptor (decode-bracket bracket)))
      (case composite-descriptor
        (:ends-before
         (setf (ba-ends-before assignment) bracket))
        (:ends-after
         (setf (ba-ends-after assignment)  bracket))
        (:begins-before
         (setf (ba-begins-before assignment) bracket))
        (:begins-after
         (setf (ba-begins-after assignment)  bracket))
        (otherwise
         (break "Bad decoding.  ~A is not a known descriptor"
                composite-descriptor)))

      assignment )))


;;;-------------
;;; Description
;;;-------------

(defun describe-bracket-assignment (ba &optional (stream *standard-output*))
  (when (ba-ends-before ba)
    (format stream " ~a" (b-symbol (ba-ends-before ba))))
  (when (ba-begins-before ba)
    (format stream " ~a" (b-symbol (ba-begins-before ba))))
  (when (ba-ends-after ba)
    (format stream " ~a" (b-symbol (ba-ends-after ba))))
  (when (ba-begins-after ba)
    (format stream " ~a" (b-symbol (ba-begins-after ba)))))


;;;-------------------------------------------------
;;; list of the brackets in a particular assignment
;;;-------------------------------------------------

(defun get-bracket-assignment-for-word (w)
  (let ((rs (word-rule-set w)))
    (when rs
      (rs-phrase-boundary rs))))

(defun bracket-assignment-to-list (ba)
  (let ( list )
    (when (ba-ends-before ba) (push (ba-ends-before ba) list))
    (when (ba-begins-before ba) (push (ba-begins-before ba) list))
    (when (ba-ends-after ba) (push (ba-ends-after ba) list))
    (when (ba-begins-after ba) (push (ba-begins-after ba) list))
    list))


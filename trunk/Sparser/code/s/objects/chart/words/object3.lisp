;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2012-2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;chart:words:"
;;;  Version:  3.2 October 2013

;; 3.0 (6/2/93) changed the object to inherit from label
;; 3.1 (7/19) added wrapping data-check on Word-string to catch the
;;      case where it's called in a break and the data is incomplete
;;     (1/11/94) added display-words-one-per-line
;;     (5/24) added Known-word?
;;     (6/7) added Put-property-on-word and Property-of-word
;;     (8/2) added null check to Princ-word
;;     (10/31/12) Added more simple printers and clean-word
;;     (10/9/13) Added word-with-single-edge-rules? for C3's benefit
;; SBCL 3/21/2015  -- code for printing words and polywords -- moved to after polywords are defined, to reduce warnings in SBCL


(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (word
            (:include label)
            (:print-function print-word-structure))
  pname
  morphology
  capitalization
  capitalization-variants
  )


;;;--------------------------------------------------------
;;; compensating definitions for changes to the names of
;;; the slots in a word when shifted to having it inherit
;;; from label
;;;--------------------------------------------------------

(defun word-rules (w)
  (label-rule-set w))

(defun word-plist (w)
  (label-plist w))

(defun word-brackets (w)
  (rs-phrase-boundary (word-rules w)))


;;;-------------------
;;; simple predicates
;;;-------------------

(defun known-word? (w)
  (label-rule-set w))

(defun word-mentioned-in-rules? (w)
  (let ((rs (word-rules w)))
    (when rs
      (or (rs-single-term-rewrites rs)
          (rs-right-looking-ids rs)
          (rs-left-looking-ids rs)
          (rs-fsa rs)
          (rs-completion-actions rs)))))

(defun word-with-single-edge-rules? (w)
  (let ((rs (word-rules w)))
    (when rs
      (rs-single-term-rewrites rs))))

(defun defines-phrase-boundaries? (w)
  (let ((rs (word-rules w)))
    (when rs
      (rs-phrase-boundary rs))))



;;;------------------------------------
;;; Cleaner (take-back infered rules)
;;;------------------------------------

(defun clean-word (w)
  (setf (word-rule-set w) nil))

;;;-----------------
;;; syntactic sugar
;;;-----------------

(defun put-property-on-word (tag value word)
  (if (polyword-p word)
    (put-property-on-pw tag value word)
    (else
      (unless (symbolp tag)
        (error "The tag used to label a property on a word must ~
                be a symbol:~%~A" tag))
      (let ((established-cons (member tag (label-plist word))))
        (if established-cons
          (unless (equal (cadr established-cons) value)
            (rplacd established-cons
                    `(,value ,@(cddr established-cons))))
          (setf (label-plist word)
                `(,tag ,value ,@(label-plist word))))
        (label-plist word)))))



(defun property-of-word (tag word)
  (if (polyword-p word)
    (property-of-polyword tag word)
    (else
      (unless (symbolp tag)
        (error "The tag used to access a property on a word must ~
                be a symbol:~%~A" tag))
      (cadr (member tag (label-plist word))))))


;;;-------------------
;;; display routines
;;;-------------------

(defun print-word-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<" stream)
  (write-string "word " stream)
  (if (member :use-symbol-name-when-printing
              (word-plist obj))
    (write-string (symbol-name (word-symbol obj)) stream)
    (else (write-string "\"" stream)
          (write-string (word-pname obj) stream)
          (write-string "\"" stream)))
  (write-string ">" stream))




(defun display-word (word  &optional (stream *standard-output*))
  ;; called when you just want the pname to appear, as when generating
  ;; a text.
  (if (stringp word)
    ;; can happen when odd phrases are composed and interpreted
    ;; as names
    (write-string word stream)
    (write-string (word-pname word) stream)))

(defun display-words-one-per-line (word position)
  ;; called as one of the options for Look-at-terminal
  (declare (ignore position))
  (display-word word)
  (terpri))



(defparameter *max-length-for-menu/words* 25
  "When the pname of a word is printed in a menu, it will be
   truncated after this many characters." )

(defun print-for-menu/words (w &optional (stream *standard-output*))
  ;; called as the table-print-function for some sequence dialog.
  ;; Has to truncate what it prints so that the dialog windows
  ;; can be set to a predictable size.
  ;; Includes the princ conventions for words, e.g. enclosing them
  ;; in double quotes and using the symbol when there's no pname

  (let ((pname (word-pname w))
        symbol-string )
    (if (member :use-symbol-name-when-printing (word-plist w))
      (format stream "~A"
              (if (>= (length (setq symbol-string
                                    (symbol-name (word-symbol w))))
                      *max-length-for-menu/words*)
                (concatenate 'string
                             (subseq  symbol-string
                                     0 *max-length-for-menu/words*)
                           "...")
                symbol-string))

      (format stream "\"~A\""
              (if (>= (length pname) *max-length-for-menu/words*)
                (concatenate 'string
                             (subseq pname 
                                     0 *max-length-for-menu/words*)
                             "...")
                pname)))))


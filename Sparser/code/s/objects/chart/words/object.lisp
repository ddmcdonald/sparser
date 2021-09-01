;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1994,2012-2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;chart:words:"
;;;  Version:  June 2017

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

#+ignore
(defun word-plist (w)
  (label-plist w))

(defun word-brackets (w)
  (rs-phrase-boundary (word-rules w)))


;;;-------------------
;;; simple predicates
;;;-------------------

(defun known-word? (w)
  (label-rule-set w))

(defun unknown-word? (word)
  ;; Correct to first-order, but see computations in find-word
  (null (word-rules word)))

(defun word-mentioned-in-rules? (w)
  (let ((rs (word-rules w)))
    (when (and rs (typep rs 'rule-set))
      ;; whitespace words use the rule-set slot to record that
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

(defgeneric infer-part-of-speech (word)
  (:documentation "Words in Sparser do not instrinsically have 
    a part of speech. (Just as they don't instrinsicaly have
    any meaning.) They accrue these via the rules that use them.
    If there is just one rule we can get pos from it.")
  (:method ((pname string))
    (infer-part-of-speech (resolve pname)))
  (:method ((w word)) ;;/// factor for polyword?
    (let ((rule (find-single-unary-cfr w)))
      ;; That returns the first of the single-term rules.
      ;; If we wanted to consider multiple parts of speech
      ;; we'd need to change that and work out how to adjudicate.
      (when rule
        (let ((form (cfr-form rule)))
          (infer-part-of-speech form))))))
 
(defgeneric part-of-speech-given-word (word)
  (:documentation "Wrapper around infer-part-of-speech to supply
    default when it returns nil. Get-mumble-word-for-sparse-word
    needs this to avoid having its methods loop.")
  (:method ((word t))
    (let ((pos (infer-part-of-speech word)))
      (unless pos (setq pos :common-noun))
      pos)))


;;;------------------------------------
;;; Cleaner (take-back infered rules)
;;;------------------------------------

(defun clean-word (w)
  (setf (word-rule-set w) nil))


;;;-------------------
;;; display routines
;;;-------------------

(defun print-word-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<" stream)
  (write-string "word " stream)
  (if (get-tag :use-symbol-name-when-printing obj)
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
    (if (get-tag :use-symbol-name-when-printing w)
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


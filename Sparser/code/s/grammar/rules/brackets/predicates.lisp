;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2012 David D. McDonald
;;;
;;;     File: "predicates"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  December 2012

;; initiated 12/5/12 to collect tests and other operations that are cluttering
;; the judgements file.

(in-package :sparser)

;;;----------------------------------------------------------
;;; Useful operations for debugging / investigating brackets
;;;----------------------------------------------------------

(defgeneric brackets-on (item &optional stream)
  (:documentation "Display the brackets on the item, in the manner
 best suited to the type of item involved. The return value is
 deliberately not useful"))

(defmethod brackets-on ((pname string) &optional (stream *standard-output*))
  (let ((word (word-named pname)))
    (unless word
      (error "~a does not name a word" pname))
    (brackets-on word stream)))

(defmethod brackets-on ((w word) &optional (stream *standard-output*))
  (let ((brackets (get-bracket-assignment-for-word w)))
    (if brackets
       (describe-bracket-assignment brackets stream)
      "no brackets")))

(defmethod brackets-on ((n number) &optional (stream *standard-output*))
  (let ((pos (position# n)))
    (brackets-on pos stream)))

(defmethod brackets-on ((p position) &optional (stream *standard-output*))
  (let* ((before (pos-ends-here p))
         (b-before (ev-boundary before))
         (after (pos-starts-here p))
         (b-after (ev-boundary after)))
    (cond
     ((and b-before b-after)
      (format stream "~& ~a  p~a  ~a~%"
              (b-symbol b-before) (pos-token-index p) (b-symbol b-after)))
     (b-before
      (format stream "~& ~a  p~a~%"
              (b-symbol b-before) (pos-token-index p)))
     (b-after
      (format stream "~& p~a ~a%" 
              (pos-token-index p) (b-symbol b-after)))
     (t (format stream "~& no brackets on p~a~%"
                (pos-token-index p))))))


;;;------------------------------------------------
;;; Tests for bracket-oriented properties of words
;;;------------------------------------------------

(defmacro with-word-brackets (word &body body)
  `(let ((brackets (bracket-assignment-to-list
                   (get-bracket-assignment-for-word ,word))))
     (when brackets
       ,@body)))

(defun multiple-memq (items list)
  (loop for item in items
    always (memq item list)))

(defun word-is-np-modifier (word)
  (let ((brackets (bracket-assignment-to-list
                   (get-bracket-assignment-for-word word))))
    ;; others too?  Any complementary checks that are
    ;; even more reliable?
    (when brackets
      (or (memq ].quantifier brackets)
          (memq .[np brackets)
          (memq .[adjective brackets)))))

(defun word-definitively-ends-segment (word)
  "Used in bracket ends the segment for tests on the next word.
   quickly settles lots of cases where we have ambiguity."
  (with-word-brackets word
    (cond
     ((multiple-memq `(,].preposition ,preposition.[) brackets) t)
     ((multiple-memq `(,].punctuation ,punctuation.[) brackets) t)
     ((multiple-memq `(,].phrase ,phrase.[) brackets) t)
     ((multiple-memq `(,].conjunction ,conjunction.[) brackets) t)
     ((multiple-memq `(,].proper-noun ,proper-noun.[) brackets) t)
     (t nil))))


(defun word-definitively-starts-nps (word)
  (with-word-brackets word
    (memq .[article brackets))) ;;/// what else?



;;;-------------------
;;; tests on segments
;;;-------------------

(defun np-segment-contains-more-than-article? (position)
  ;; We are within an np -- probably one started with an article
  ;; given that the caller is Bracket-ends-the-segment? -- and
  ;; we want to know whether there is at least one word within
  ;; the segment after the article. That comes down to this
  ;; position being at least two greater than the position at
  ;; which the segment starts.
  (>= (- (pos-token-index position)
         (pos-token-index *left-segment-boundary*))
      2))


(defun segment-started-as-np? ()
  (declare (special *bracket-opening-segment*))
  (let ((bracket-opening-segment (car *bracket-opening-segment*))
        (start-pos (cdr *bracket-opening-segment*)))
    (or (eq bracket-opening-segment .[np)
        (eq bracket-opening-segment .[article)
        (eq bracket-opening-segment .[adjective)
        (let ((first-word (pos-terminal start-pos)))
          (word-definitively-starts-nps first-word))
        )))


(defun segment-started-as-vg? ()
  (or (eq (first *bracket-opening-segment*) .[verb )
      (eq (first *bracket-opening-segment*) .[modal)))



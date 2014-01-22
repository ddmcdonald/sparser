;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2012-2014 David D. McDonald
;;;
;;;     File: "predicates"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  January 2014

;; initiated 12/5/12 to collect tests and other operations that are cluttering
;; the judgements file. Added only-aux-or-modal-to-left 4/2/13. Removed
;; proper-noun from definitively ends segment and added word-is-a-proper-noun
;; 1/21/14. 

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

;;//////////// Move to sparser/util/
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

(defun word-is-a-proper-noun (word)
  (with-word-brackets word
    (if (multiple-memq (list  ].proper-noun proper-noun.[) brackets)
      t
      nil)))

(defun word-is-an-adverb (word)
  (with-word-brackets word
    (if (multiple-memq (list ].adverb .[adverb) brackets)
      t
      nil)))


(defun word-definitively-ends-segment (word)
  "Used in bracket ends the segment for tests on the next word.
   quickly settles lots of cases where we have ambiguity."
  (with-word-brackets word
    (cond
     ((multiple-memq `(,].preposition ,preposition.[) brackets) t)
     ((multiple-memq `(,].punctuation ,punctuation.[) brackets) t)
     ((multiple-memq `(,].phrase ,phrase.[) brackets) t)
     ((multiple-memq `(,].conjunction ,conjunction.[) brackets) t)
     ;;((multiple-memq `(,].proper-noun ,proper-noun.[) brackets) t)
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


(defun only-aux-or-modal-to-left (start-pos end-pos)
  ;; called from .[verb case in adjudicate-new-open-bracket
  ;; when (eq *bracket-opening-previous-segment* .[verb)
  ;; to see if we should ignore this start bracket and
  ;; continue that verb group segment. That's a reasonable
  ;; thing to do provided that we haven't already seen
  ;; a main verb, e.g. in "she said testing for bird flu .."
  ;; the second verb is actually a sentential complement
  (let* ((words-between (words-between start-pos end-pos))
         (edges-betweeen (edges-between start-pos end-pos))
         (length (length words-between)))
    (if (= length 1)
      (let ((edge (edge-between start-pos end-pos)))
        (if edge
          (not (verb-category? edge))
          (break "New one-word aux/modal case")))

      (let ((word-edge-pairs
             (mapcar #'cons words-between edges-betweeen)))                                     
        (dolist (pair word-edge-pairs t)
          (let ((word (car pair))
                (edge (cdr pair)))
            (unless (or (auxiliary-word? word)
                        (verb-category? edge))
              (return nil))))))))
              







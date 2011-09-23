;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "invisible markup"
;;;   Module:  "analyzers;sectionizing:"
;;;  Version:  June 1994

;; initiated 6/2/94 v2.3

(in-package :sparser)


;;;-----------------------------------------
;;; object the facility is implemented with
;;;-----------------------------------------

(defstruct (trie
            (:include unit)
            (:conc-name #:trie-)
            (:print-function
             (lambda (obj stream depth)
                 (declare (ignore depth))
                 (format stream "#<trie ~A>" (trie-name obj)))))

  name  ;; symbol the trie is interned on
  case-list
  network
  )


(defvar *invisible-markup-trie* nil)

(defun make-the-invisible-markup-trie ()
  (setq *invisible-markup-trie* (make-trie :name 'invisible-markup)))

(defun initialize-the-invisible-markup-trie ()
  (let ((trie *invisible-markup-trie*))
    (setf (trie-case-list trie) nil)
    (setf (trie-network trie) nil)
    trie ))


;;;--------------------------
;;; adding cases to the trie
;;;--------------------------

(defun extend-invisible-markup-trie (string tag object)
  (let ((trie *invisible-markup-trie*))
    (unless trie
      (setq trie (make-the-invisible-markup-trie)))

    (let ((entry (assoc string (trie-case-list trie) :test #'equal)))
      (if entry
        (confirm-or-replace-markup-data-in-trie trie string tag object)
        (else
          (extent-trie trie string tag object)
          (push `(,string ,tag ,object)
                (trie-case-list trie)))))))


(defun extent-trie (trie string tag object)
  (let ((network (trie-network trie))
        (char-sequence (coerce string 'list)))
    (if network
      (patch-sequence-into-trie char-sequence network tag object)
      (setf (trie-network trie)
            `(,@(coerce string 'list) ,tag ,object) ))))



(defun patch-sequence-into-trie (list-of-chars subnet tag object)
  ;; this isn't called unless we expect the sequence to be a new one
  (let ((1st-item (car subnet))
        (next-char (car list-of-chars)))
    (etypecase 1st-item
      (character
       (if (eql next-char 1st-item)
         (patch-sequence-into-trie (cdr list-of-chars)
                                   (cdr subnet)
                                   tag object)
         (let ((existing-case
                (copy-tree subnet))
               (new-alternative
                (append list-of-chars (list tag object))))
           (rplaca subnet
                   existing-case)
           (rplacd subnet
                   (cons new-alternative nil)))))
      (cons
       ;; is it in any of the ones that we have?
       (let ((case-with-the-char
              (dolist (alt subnet)
                (when (eql next-char (car alt))
                  (return alt)))))
         (if case-with-the-char
           (patch-sequence-into-trie (cdr list-of-chars)
                                     (cdr case-with-the-char)
                                     tag object)
           ;; it's a new case
           (let ((new-alternative
                  (append list-of-chars (list tag object))))
             (rplacd subnet
                     (cons new-alternative
                           (cdr subnet)))))))
      (keyword
       ;; we've run off the end of the thread of the trie that
       ;; matches a prefix of the sequence we're adding, so we
       ;; need to make an extension
       (break "Stub: extending from a prefix")))))


;(initialize-the-invisible-markup-trie)
(defun test-trie (new-string tag obj)
  (extend-invisible-markup-trie new-string tag obj)
  (print-char-trie (trie-network *invisible-markup-trie*)))



(defun confirm-or-replace-markup-data-in-trie (trie string tag object)
  ;; if this is a defined string but we're redefining it with
  ;; a different tag or object, destructively change the entry
  ;; in the trie to have the new values.
  (let ((existing-data
         (trie-contains-string? string (trie-network trie))))
    (unless existing-data
      (break "Corrupt data: trie is recorded as including ~A~
              but it is not there when looked up." string))
    (unless (consp existing-data)
      (break "Data format: expected 'existing-data' to be a cons~
              but got: ~A" existing-data))

    (unless (eq (car existing-data) tag)
      (rplaca existing-data
              tag))
    (let ((object-cons (cdr existing-data)))
      (unless (eq (car object-cons) object)
        (rplaca object-cons
                object)))
    (trie-contains-string? string (trie-network trie))))


;;;----------------
;;; using the trie
;;;----------------

(defun char-continues-known-sequence? (char subnet)
  ;; if it does, return the continuation cons
  (let ((next-node (car subnet)))
    (if next-node
      (etypecase next-node
        (character
         ;; this thread has no alternatives at this position
         (if (eql next-node char)
           (cdr subnet)
           nil ))

        (cons
         ;; two cases. Either we've reached the end of the thread,
         ;; in which case the car is a keyword, or else we're at
         ;; a choice point in the trie.

         (if (keywordp (car next-node))
           ;; Since we're looking for a match with a character, 
           ;; our sequence is longer than any in the trie, so 
           ;; this is a failure
           nil

           ;; a set of alternatives. If the character is among them
           ;; we're succeeding
           (let ((entry (assoc char subnet :test #'eql)))
             (when entry
               (cdr entry))))))

      ;; we've run off the end of the thread.
      nil )))


(defun trie-contains-string? (string network)
  ;; having a trivial start to the recursion lets us have
  ;; a reference point since the intermediate steps will be
  ;; lost in the tail recursion
  (let ((list-of-chars (coerce string 'list)))
    (let ((keyword-cons
           (walk-down-target-sequence list-of-chars network)))
      keyword-cons)))

(defun walk-down-target-sequence (remaining-chars remaining-network)
  (let* ((next-char (car remaining-chars))
         (continuation
          (char-continues-known-sequence? next-char
                                          remaining-network)))
    (if continuation
      (then
        (unless (consp continuation)
          (break "Data inconsistency: char check returned something ~
                  other than a cons:~%~A" continuation))

        (if (keywordp (car continuation))
          ;; we've succeeded
          continuation
          (walk-down-target-sequence (cdr remaining-chars)
                                     continuation)))
      (else
        nil ))))




;;;------------------
;;; testing the walk
;;;------------------

(defparameter trie-test1 '(#\n #\n #\n #\n :n4))

(defparameter trie-test2 '((#\n #\n #\n #\n :n4)
                           (#\m #\m #\m #\m :m4)))

(defparameter trie-test3 '(#\n (#\n #\n #\n :n4)
                               (#\m #\m #\m :n1m3)))

(defparameter trie-test3a '(#\n (#\n #\n #\n :n4)
                                (#\m #\m #\m :n1m3)
                                (#\o #\o #\o :n1o3)))

(defparameter trie-test4 '(#\n (#\n #\n #\n :n4)
                               (#\m (#\m #\m :n1m3)
                                    (#\o #\o :n1m1o2))))


;;;----------------
;;; pretty printer
;;;----------------

(defun print-char-trie (network &optional (stream *standard-output*))
  (print-trie-subnetwork network 0 stream))

(defun print-trie-subnetwork (subnet indent stream)
  (format stream "(")
  (walk-and-print-trie subnet indent stream))

(defun walk-and-print-trie (subnet indent stream)
  (let ((next-node (car subnet))
        (remainder (cdr subnet)))
    (etypecase next-node
      (character
       (format stream "~A " next-node)
       (if remainder
         (walk-and-print-trie remainder (+ 2 indent) stream)
         (format stream "}")))
      (cons
       (if (keywordp (car next-node))
         (format stream "~A)" (car next-node))
         (else
           (print-trie-subnetwork next-node indent stream)
           (dolist (alt remainder)
             (format stream "~&~A" (string-of-n-spaces (1+ indent)))
             (print-trie-subnetwork alt (1+ indent) stream)))))
      (keyword
       (format stream "~A)" next-node)))))

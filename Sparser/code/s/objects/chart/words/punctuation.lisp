;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2013-2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "punctuation"
;;;   Module:  "objects;words;"
;;;  Version:  0.4 August 2014

;; originally written in June 1990
;; 0.0 (4/23/91 v1.8.4)  Minor tweek to make sure it doesn't overrun an
;;      already existing rule-set
;; 0.1 (9/26/92 v2.3) added punctuation-named
;; 0.2 (10/16) Added special proclamations for the new symbols and a return
;;      value that shows you what symbols it created
;; 0.3 (9/25/93) added data-check to def. routine
;;     (7/19/94) added Punctuation? 3/15/13 Putting a guard on it since
;;      it's going to be used more broadly and not just passed words
;; 0.4 (7/30/14) Simplified definition of punctuation?
;; 3/21/2015 SBCL caught major time and cons waster, punctuation-named.
;;    revised so as not to use cons and intern
;; 12/22/15 put in trap to not declare linefeed to be a duplicate of newline

(in-package :sparser)

;;;--------
;;; Lookup
;;;--------

(defparameter *punct-table* (make-hash-table))

(defun get-punct-symbol (character)
  "Lookup the symbol naming the word associated with a punctuation character."
  (check-type character character)
  (or (gethash character *punct-table*)
      (setf (gethash character *punct-table*)
            (intern (string character) *word-package*))))

(defun punctuation-named (character)
  "Return the word associated with a punctuation character."
  (symbol-value (get-punct-symbol character)))

(defun punctuation? (word)
  "Punctuation type predicate."
  (get-tag :punctuation word))

;;;--------------
;;; the def form
;;;--------------

(defun define-punctuation/expr (symbol character)
  "Single-character punctuation, like words and digits, goes through
the intern-based lookup. For convenience in writing rules, we also
want the option of refering to these #<word>s by more obvious names.
Two symbols will be linked to the word objects made here. The first,
\"natural\" one is based on the single-character string made from
the punctuation. The second, \"designated\" symbol is the word-package
equivalent of the symbol passed in as the name. Both symbols are
proclaimed special, and have their values set to the designated word."
  (check-type symbol symbol)
  (check-type character character)
  (let* ((string (string character))
         (natural-symbol (intern string *word-package*))
         (designated-symbol (intern (symbol-name symbol) *word-package*)))
    (proclaim `(special ,designated-symbol ,natural-symbol))
    (values (if (boundp natural-symbol)
              (then ;; alias an existing definition
                (let ((word (symbol-value natural-symbol)))
                  (check-type word (and word (satisfies punctuation?)))
                  (assert (string= (word-pname word) string)
                          (word string)
                          "Invalid alias ~s for punctuation ~a." string word)
                  (setf (symbol-value designated-symbol) word)))
              (else ;; make & index a new definition
                (let ((word (make-word :symbol designated-symbol
                                       :pname string)))
                  (catalog/word word designated-symbol)
                  (establish-rule-set-for word)
                  (setf (get-tag :punctuation word) t
                        (get-tag :use-symbol-name-when-printing word) t
                        (symbol-value natural-symbol) word))))
            natural-symbol
            designated-symbol)))

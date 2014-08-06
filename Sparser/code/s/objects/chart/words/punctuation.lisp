;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2013-2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "punctuation"
;;;   Module:  "objects;words:"
;;;  Version:  0.4 July 2014

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

(in-package :sparser)

;;;--------
;;; Lookup
;;;--------

(defun punctuation-named (character)
  (unless (characterp character)
    (error "Argument must be a character.~%  ~A is a ~A"
           character (type-of character)))

  (let* ((string (coerce (list character) 'string))
         (symbol (intern string *word-package*)))
    (when (boundp symbol)
      (symbol-value symbol))))


(defun punctuation? (word)
  ;; type predicate
  (has-tag? :punctuation word))

#|  Older version that must predate the current version of the definition
  (when (word-p word)
    (let ((pname (word-pname word)))
      (when (= 1 (length pname))
        ;; this test reads from the table so its always accurate
        (punctuation-char? (elt pname 0))))))  |#

;;;--------------
;;; the def form
;;;--------------

(defun define-punctuation/expr (symbol char)
  ;; Single-character punctuation, like words and digits, goes through
  ;; the intern-based lookup.  For convenience in writing rules, we
  ;; also want the option of refering to these #<word>s by more
  ;; obvious names.
  ;;   Two symbols will be linked to the word objects made here. The
  ;; "natural" one uses a pname based on the single-character string
  ;; make from the punctuation. The other is word-package equivalent
  ;; of the symbol passed in as the designated symbol to use for, e.g.,
  ;; the print name.

  (unless (symbolp symbol)
    (error "The first argument -- the name you are giving to the punct~
            uation word~%--must be a symbol.~%   ~A is a ~A"
           symbol (type-of symbol)))
  (unless (characterp char)
    (error "The second argument -- the character you are defining a ~
            punctuation~%word for -- must be a Lisp character object.~
            ~%  ~A is a ~A" char (type-of char)))

  (let* ((string (coerce (list char) 'string))
         (designated-symbol (intern (symbol-name symbol) *word-package*))
         (natural-symbol    (intern string               *word-package*)))
    (proclaim (list 'special designated-symbol natural-symbol))

    (let ((new? (not (boundp natural-symbol)))
          (word
           (if (boundp natural-symbol)
             (symbol-value natural-symbol)
             (make-word  :symbol designated-symbol
                         :pname  string))))
      (if new?
        (then
          ;; record it under the symbol used in this definition, and
          ;; set up the index for the intern-based lookup using 
          ;; the natural symbol
          (catalog/word word designated-symbol)
          (setf (unit-plist word)
                (list :use-symbol-name-when-printing
                      :punctuation))
          (or (word-rule-set word)
              (setf (word-rule-set word) (make-rule-set
                                       :backpointer word)))
          (set natural-symbol word))
        (else
          (if (eq designated-symbol
                  (word-symbol word))
            (format t "~%~%!! redefining the punctuation ~A~
                       ~% The second, redundant definition is being ignored."
                    string)
            (else
              (format t "~%~%!! redefining the punctuation ~A~
                         ~% The second definition uses the designated ~
                         symbol ~A~
                         ~% the earlier definition used ~A~
                         ~% Both symbols will be bound to the word."
                      string designated-symbol (word-symbol word))
              (set designated-symbol (word-symbol word))))))

     (values word natural-symbol designated-symbol))))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992.1993,1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "resolve"
;;;   Module:  "objects;chart:words:"
;;;  Version:  1.3 July 1994

;; broken out as its own file 1/92
;; 1.0 (9/21 v2.3) Changed the test for polywords
;; 1.1 (10/5) Added routines to aid definition of polywords
;; 1.2 (11/11) Added data checks to be sure that we are fed strings since
;;      some of these may be called by users.
;; 1.3 (6/7/94) upgraded the definition of Token-strings-in-string
;;     (6/16) fixed a bug in it  (7/15) and another
;; 1.4 (6/2/08) Fan-out for *force-case-shift* ("United States")
;;     (8/20/08) the 'if' in resolve-string-to-word was surely in the wrong order

(in-package :sparser)

;;;-----------------------------
;;; looking up existing objects
;;;-----------------------------

(defun resolve-string-to-word (string)
  ;; called from a rule-defining form when it wants to be transparent
  ;; between words and polywords
  (unless (stringp string)
    (error "Expected a string, got ~A" string))
  (when *force-case-shift*
    (setq string (force-case-of-word-string string)))
  (if (not-all-same-character-type string)
    (polyword-named string)
    (word-named string)))


(defun resolve-string-to-polyword (multi-word-string)
  (unless (stringp string)
    (error "Expected a string, got ~A" string))
  (unless (not-all-same-character-type multi-word-string)
    (error "Expected the input string to contain more than one word,~
            ~%  but it is just ~S" multi-word-string))
  (polyword-named multi-word-string))


;;;--------------------
;;; making new objects
;;;--------------------

(defun resolve-string-to-word/make/not-runtime (string)
  (if *file-being-lloaded*
    (resolve-string-to-word/make string)
    (break "Bad threading: call to resolve-string... at runtime:~
            ~%    ~A" string)))


(defun resolve-string-to-word/make (string)
  ;; called from a rule-defining form when it wants to be transparent
  ;; between words and polywords
  (unless (stringp string)
    (error "Expected a string, got ~A" string))
  (if (not-all-same-character-type string)
    (or (polyword-named string)
        (define-polyword/expr string))
    (or (word-named string)
        (define-word/expr string))))


;;;---------------------
;;; decomposing strings
;;;---------------------

(defun words-in-string (string)
  (let ((strings (token-strings-in-string string)))
    (mapcar #'resolve-string-to-word/make strings)))


(defun token-strings-in-string (string)
  (let* ((char-list (coerce string 'list))
         (pending-category (car (tokenizer-entry (first char-list))))
         (characters (list (first char-list)))
         entry  category  strings )

    (when (eq pending-category :punctuation)
      ;; punctuation characters are each their own token
      (push (coerce characters 'string) strings)
      (setq pending-category nil
            characters nil))

    (dolist (char (rest char-list))
      (setq entry (tokenizer-entry char)
            category (car entry))
      ;(format t "~&char = ~A  category = ~A~%" char category)

      (cond ((eq category :punctuation)
             ;; the two tokens have to go on the accumulator with
             ;; the punctuation first because the list will be
             ;; reversed at the end.
             (when characters  ;; there's a substring in progress
               (push (coerce (nreverse characters) 'string)
                     strings))

             (unless (symbolp (cdr entry))
               ;(format t "~&   punctuation is not whitespace~%")
               ;; the punctuation is whitespace or a reserved character
               (push (coerce (list char) 'string) strings))

             (setq pending-category nil
                       characters nil))

            ((null pending-category) ;; last substring was punctuation
             (setq pending-category category)
             (push char characters))

            ((eq category pending-category)
             (push char characters))

            (t  ;; changing to new substring
             (when pending-category
               (push (coerce (nreverse characters) 'string) strings))
             (setq pending-category (car (tokenizer-entry char)))
             (setq characters (list char)))))

    (when characters
      (setq strings (cons (coerce (nreverse characters) 'string)
                          strings)))
    (nreverse strings)))

;(token-strings-in-string "aa bb cc dd")
;(token-strings-in-string "aa!")
;(token-strings-in-string "aa!bb")
#| (token-strings-in-string "aa
bb")  |#
;(token-strings-in-string "@aa>")


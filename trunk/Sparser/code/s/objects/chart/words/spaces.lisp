;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "spaces"
;;;   Module:  "objects;chart:words:"
;;;  Version:  0.5 July 1995

;; 0.1 (11/17/91 v2.1) Integrated the action of defining these words as
;;     whitespace. 
;; 0.2 (9/28/92 v2.3) Added define-lots-of-spaces
;; 0.3 (4/7/93 v2.3) added Number-of-spaces-named
;; 0.4 (12/31) added Number-of-spaces and Spaces-word?
;; 0.5 (7/5/95) did a little reorganization now that lots of spaces words are
;;      going to be defined. 

(in-package :sparser)

;;;-------------
;;; the drivers
;;;-------------

(defparameter *number->spaces-word* (make-hash-table :test #'eq))

(defun number-of-spaces-named (n)
  (let ((spaces-word (gethash n *number->spaces-word*)))

    (unless spaces-word
      (setq spaces-word
            (case n
              (1  (word-named " "))
              (2  (word-named "  "))
              (3  (word-named "   "))
              (4  (word-named "    "))
              (5  (word-named "     "))
              (6  (word-named "      "))
              (7  (word-named "       "))
              (8  (word-named "        "))
              (9  (word-named "         "))
              (10 (word-named "          "))
              (11 (word-named "           "))
              (12 (word-named "            "))
              (13 (word-named "             "))
              (14 (word-named "              "))
              (15 (word-named "               "))
              (16 (word-named "                "))
              (otherwise
               (let ((string ""))
                 (dotimes (i n)
                   (setq string (concatenate 'string string " ")))
                 (word-named string))))))

    spaces-word ))


;;;-----------
;;; def forms
;;;-----------

(defun define-number-of-spaces/expr (symbol string)
  ;; This is the work-form of the macro of the obvious name.
  ;; The spaces defined by that macro are the short ones that are predefined
  ;; with the loading of the system since they are so frequently encountered.
  ;;    These get their own form because spaces are more like a word than
  ;; punctuation, yet they need a special symbol to refer to them in rules,
  ;; as well as the one used for indexing from the tokenizer.

  ;; 1st check if it's been defined before
  (let ((word (word-named string))
        (length (length string)))

    (if word
      (then
        (format t "~%~%!! redefining the sequence of ~A spaces |~A|"
                length string)
        (let ((symbol-used-before (word-symbol word)))
          (if (eq symbol-used-before
                  symbol)
            (format t "~%   This definition is the same as the earlier one")
            (format t "~%   This definition is uses a different symbol ~
                       than the last time.~%   The new one, ~A, will be used."
                    symbol)))
        word)

      (else  ;; it's new
        (let* ((w-symbol (intern (symbol-name symbol) *word-package*))
               (new-word (make-word :symbol w-symbol
                                    :pname  string
                                    :morphology  :space
                                    :plist `(:number-of-spaces ,length)) ))

          (catalog/word new-word w-symbol)
          ;; note, this does not catalog the sequence of spaces under
          ;; the natural symbol that will be used to look it up,
          ;; e.g. |   |.  So we duplicate the relevant parts of
          ;; the calaloging below
          (let ((natural-symbol (intern string *word-package*)))
            (set natural-symbol new-word))
          (setf (unit-plist new-word)
                (cons :use-symbol-name-when-printing
                      (unit-plist new-word)))

          (define-to-be-whitespace new-word)

          (setf (gethash length *number->spaces-word*) new-word)

          new-word)))))


(defun define-lots-of-spaces (n)
  ;; This form is called from Accumulate-spaces in the tokenizer
  ;; when it runs across a length of spaces that isn't in its
  ;; dispatch list. 
  (or (number-of-spaces-named n)
      (let ((symbol (intern (concatenate 'string
                                         (format nil "~A" n)
                                         "-SPACES")
                            *word-package*))
            (string
             (let ((accumulator ""))
               (dotimes (i n)
                 (setq accumulator
                       (concatenate 'string " " accumulator)))
               accumulator )))
        
        (define-number-of-spaces/expr symbol string))))



;;;------------
;;; predicates
;;;------------

(defun spaces-word? (w)
  (unless (word-p w)
    (break "Argument must be a word.~%~A is a ~A"
           w (type-of w)))
  (eq (word-morphology w) :space))



;;;------------------
;;; access functions
;;;------------------

(defun number-of-spaces (w)
  (unless (spaces-word? w)
    (break "Argument is not a spaces word:~%   ~A" w))
  (cadr (member :number-of-spaces (unit-plist w))))


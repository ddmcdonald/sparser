;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2012-2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "polyword form"
;;;   Module:  "objects/chart/words:"
;;;  Version:  1.4 July 2014

(in-package :sparser)

;;  0.1  Changed the definition of the symbol for polywords to be the
;;       string in vertical bars rather than the equivalent uppercase
;;       symbol.
;;  0.2  (v1.6, 12/12/90)  Re-examined the algorithm to get a clean notion
;;       of a polyword object that can be interned even though it isn't
;;       anymore thought of as a kind of word that is recognized by
;;       scanning the output of Next-token.
;;  1.0 (10/5/92 v2.3) Made substantial changes to bring it into the modern era
;;  1.1 (10/28/93 v2.3) added data check
;;  1.2 (9/6/94) for some reason some pws are being defined as words.
;;       Added a check for this in the case of redefinition.
;;      (12/16) added define-polyword/from-words
;;  1.3 (6/2/08) Fan-out for *force-case-shift* ("United States")
;;      (3/1/12) quiet compiler
;;  1.4 (7/30/14) Made an exception to the 'must be different character
;;       type check for the case of punctionation. Word-around for two
;;       single quotes being used for double quote in uniform-scan.

(defun define-polyword/expr (multi-word-string)
  (declare (special *break-on-pattern-outside-coverage?*))
  (unless (not-all-same-character-type multi-word-string)
    (unless (all-punctuation-chars? multi-word-string)
      (error "The characters in the string \"~A\"~
            ~%are all of the same, type making it a word rather than ~
              a polyword" multi-word-string)))
  (when *force-case-shift* multi-word-string
    (setq multi-word-string (force-case-of-word-string multi-word-string)))
  (let* ((symbol (or (find-symbol multi-word-string *polyword-package*)
                     (intern multi-word-string *polyword-package*)))
         (redefinition? (boundp symbol))
         (polyword
          (if redefinition?
            (symbol-value symbol)
            (make-polyword :symbol symbol
                           :pname multi-word-string ))))
    (if redefinition?
      (if (word-p polyword)
        (then (delete/word polyword)
              (when *break-on-pattern-outside-coverage?*
                (format t "~%~%Early definition of polyword for ~
                           \"~A\"~%resulted in a word. ~
                           Redefining.~%~%" multi-word-string))
              (define-polyword/expr multi-word-string))

        polyword )

      (else
        (when (word-p polyword)
          (break "multi-word-string defined as a word: ~A"
                 multi-word-string))

        (let ((list-of-words
               (mapcan #'(lambda (word)
                           (unless (eq :whitespace (word-rules word))
                             (list word)))
                       (words-in-string multi-word-string))))

          (setf (pw-words polyword) list-of-words)

          (setf (pw-fsa polyword)
                (construct-cfr-for-embedded-pw polyword))

          (catalog/polyword polyword symbol)
          (note-file-location polyword)
          (note-grammar-module polyword)
          
          polyword )))))



(defun define-polyword/from-words (list-of-words)
  (let ((string-equivalent
         (polyword-multiword-string-for-list-of-words list-of-words)))

    (let ((symbol (or (find-symbol string-equivalent *polyword-package*)
                      (intern string-equivalent *polyword-package*))))
      (if (boundp symbol)
        (then
          ;; this is an opportunity to check if this is right
          ;(break "redefining \"~A\"" string-equivalent)
          (symbol-value symbol))

        (let ((pw (make-polyword :symbol symbol
                                 :pname string-equivalent
                                 :words list-of-words)))
          
          (catalog/polyword pw symbol)
          (note-file-location pw)
          (note-grammar-module pw)

          (let ((rule (construct-cfr-for-word-list-pw pw list-of-words)))
            (setf (pw-fsa pw) rule)

            pw ))))))


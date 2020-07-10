;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2012-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "polyword form"
;;;   Module:  "objects/chart/words:"
;;;  Version:  2.0 June 2015

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
;;  2.0 (5/19/15) For make-over to a state machine.
;;      (6/7/15) Removed define-polyword/from-words because nothing has
;;       called it since the make-over. If something from another grammar
;;       module does then can adapt to it then.

(in-package :sparser)
#|
$ grep define-polyword/expr  **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
objects/forms/polyword4.lisp:  (define-polyword/expr multi-word-string))
grammar/rules/FSAs/hyphen.lisp:           (polyword (define-polyword/expr multi-word-string)))
grammar/rules/tree-families/morphology.lisp:      (define-polyword/expr pw-string))))
grammar/rules/tree-families/morphology1.lisp:         (word (define-polyword/expr s-form-pname)))
grammar/rules/tree-families/morphology1.lisp:         (word (define-polyword/expr ed-pname)))
grammar/rules/tree-families/morphology1.lisp:         (word (define-polyword/expr ing-pname)))
grammar/rules/tree-families/morphology1.lisp:      (define-polyword/expr pw-string))))
grammar/rules/words/quantifiers1.lisp:               (pw (define-polyword/expr string))
objects/chart/words/polyword-form1.lisp:(defun define-polyword/expr (multi-word-string)
objects/chart/words/polyword-form1.lisp:              (define-polyword/expr multi-word-string))
objects/chart/words/resolve1.lisp:        (define-polyword/expr string))
objects/rules/cfr/form6.lisp:                         (define-polyword/expr (first rhs-expressions))))
objects/rules/cfr/lookup5.lisp:                     (define-polyword/expr (first rhs))))
objects/rules/cfr/polywords1.lisp:  ;; Also called from define-polyword/expr
objects/rules/cfr/polywords2.lisp:  ;; Also called from define-polyword/expr
grammar/model/sl/NIH/gene-protein.lisp:    (let ((long-word (when long-form (define-polyword/expr long-form)))
|#

(defvar *use-occasional-polywords* nil
  "This flag governs polywords that are indended to be only active
   at certain, delimited times, as in a specific pass over a
   document. It makes different arrangements for where polywords
   defined when this flag is up have their initial states stored,
   and along with that were drivers looks for them. In other respects
   the polywords are defined and scanned in the same way.")

(defvar *defining-a-polyword* nil
  "Conditionalizes recording the source location of words that
   are created to support the polyword.")


(defun define-polyword/expr (multi-word-string)
  (declare (special *break-on-pattern-outside-coverage?*))
  (unless (not-all-same-character-type multi-word-string)
    (unless (all-punctuation-chars? multi-word-string)
      ;;/// why not working on "+/-" ?
      (error "The characters in the string \"~A\"~
            ~%are all of the same. Try making it a word rather than ~
              a polyword" multi-word-string)))
  ;;(format t "~&Making polyword for ~s~%" multi-word-string)
  (when *force-case-shift*
    (setq multi-word-string
          (force-case-of-word-string multi-word-string)))
  (define-polyword-any-words multi-word-string))

(defun define-polyword-any-words (multi-word-string)
  "This is the guts of define-polyword. It's available to call 
   directly on strings that fail the not-all-same char test,
   though that should be fixable."
  ;(lsp-break "Making polyword for ~s" multi-word-string)
  (declare (special *one-space* multi-word-string))
  (let* ((symbol (or (find-symbol multi-word-string *polyword-package*)
                     (intern multi-word-string *polyword-package*)))
         (redefinition? (boundp symbol))
         (polyword
          (if redefinition?
            (symbol-value symbol)
            (make-polyword :symbol symbol
                           :pname multi-word-string )))
         (*defining-a-polyword* polyword))
    (declare (special *defining-a-polyword*))

    (when (word-p polyword)
      (error "multi-word-string defined as a word: ~A"
             multi-word-string))

    (let ((list-of-words
           (mapcan #'(lambda (word)
                       (if (eq :whitespace (word-rules word))
                         ;; canonicalizing whitespace that is part of a polyword
                         (list *one-space*)
                         (list word)))
                   ;; Words-in-string introduces the words using resolve/make
                   (words-in-string multi-word-string))))
     
      (setf (pw-words polyword) list-of-words)

      (setf (pw-fsa polyword)
            (construct-fsa-for-pw polyword))

      (catalog/polyword polyword symbol)
      (note-file-location polyword)
      (note-grammar-module polyword)

      polyword )))



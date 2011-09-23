;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "section markers"
;;;   Module:  "objects;words:"
;;;  Version:  0.6 June 1996

;; 0.1 (11/23 v2.1)  Stopped the marker word from calling the tokenizer
;; 0.2 (1/15/92 v2.2)  Redesigned the word-symbol so it couldn't clash
;;      with a real word.  Set it up so that redefinitions would change the
;;      properties without changing the identity of the symbol.
;; 0.3 (2/1/92 v2.2) changed the lookup criteria to be the sm- version
;;      of the section-marker string.
;; 0.4 (6/25) Added the flag that gets it to use the symbol when printing
;; 0.5 (12/16/92 v2.3) For some reason, a section marker word is getting
;;      its symbol cons'd ('boundp') before it's actually defined, so the
;;      check is being extended to actually having a value.
;; 0.6 (6/28/96) added a bracket assignment since I couldn't find anywhere
;;      else that that was happening and this seems the logical place.

(in-package :sparser)

;;;-----------------------
;;;  Section marker words
;;;-----------------------
#|
   At least for the moment, section markers can't be labels.  They are
instead compiled down to actions that reside in the :actions field of
a label.  This leads to the odd case of some words (e.g. for paragraphs)
whose sole purpose in life is to be the holder for a section marker.
|#


(defun define-section-marking-word (string)
  (let ((w-symbol (intern (concatenate 'string
                                       "sm-"
                                       string)
                          *word-package*)))

    (if (and (boundp w-symbol)
             (symbol-value w-symbol))
      (symbol-value w-symbol)
      (else
        (let ((word (make-word :symbol w-symbol
                               :pname  ""
                               :plist `(:section-marking-word
                                        :use-symbol-name-when-printing
                                        ) )))

          (catalog/word word w-symbol)
          (setf (word-rule-set word)
                (make-rule-set :backpointer word))

          (assign-brackets/intermediary w-symbol '( ].text-segment  text-segment.[ ))
          ;; Can't use the simple macro because this file loads from [objects;words:],
          ;; which loads before the macro is seen. The function won't ever be -executed-,
          ;; however, until the backet machinery is in.

          word)))))


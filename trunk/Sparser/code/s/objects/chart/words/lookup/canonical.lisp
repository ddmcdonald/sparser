;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "canonical"
;;;   Module:  "objects;words:lookup"
;;;  Version:  0.1 November 1992

;; initiated 1/16/92
;; 0.1 (11/23 v2.3) Added case for digits

(in-package :sparser)


(defun do-word-canonical-form (string word)
  ;; called from define-word/expr
  ;; Checks the word's properties, and if it is not a lowercase
  ;; word, looks to see if there is a lowercase equivalent
  ;; already defined, and if not, makes one.

  (unless (eq :digits (word-capitalization word))
    (unless (eq :lower-case (word-capitalization word))
      ;; if we're defining a lowercase word, then it must be either
      ;; the first instance of that spelling form, in which case there
      ;; are no variants yet, or else it must be a recursive call from
      ;; the first instance of the spelling form.  Later instances
      ;; will have the earlier ones already recorded in the lowercase's
      ;; variants list, and just need it on their list
      
      (let* ((lc-string (string-downcase string))
             (lc-word (word-named lc-string)))
        
        (if lc-word
          (then
            (setf (word-capitalization-variants lc-word)
                  (cons word
                        (word-capitalization-variants lc-word))))
          (else
            (setq lc-word (define-word/expr lc-string))
            (setf (word-capitalization-variants lc-word)
                  (list word))))))))


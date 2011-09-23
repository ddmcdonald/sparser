;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "edit object"
;;;    Module:  "interface;grammar:"
;;;   version:  April 1992

;; initiated 2/14/92 v2.2, 4/16 working on searching a file for a rule.

(in-package :sparser)


(defun edit-object (o)
  (let ((source-file (cadr (member :file-location (plist-for o)))))
    (if source-file
      (let* ((window (ed source-file))
             (buffer (ask window (window-buffer)))
             (mark   (ask window (window-start-mark)))
             location-of-object )

        (setq location-of-object
              (find-object-in-buffer o buffer))

        (if location-of-object
          (then
            (set-mark mark location-of-object)
            (ask window (window-update))
            (when (typep o 'cfr)
              (format t "~%The rule is in this file, but this is only~
                         ~%the location only of an object its righthand ~
                         side,~%the actual rule may be elsewhere.~
                         ~%You can use List Definitions to find it ~
                         exactly.")))
          (format t "~&Can't find ~A within window~%" o)))
        
      (else
        (format t "~%There is no source file recorded for ~A" o)))))



(defun find-object-in-buffer (o buffer)
  (let ((simple-string
         ;; this isn't the best scheme for the "simple" cases, since
         ;; the search will pick up the very first instance of the 
         ;; string that it finds, even if it's in a comment.
         (etypecase o
           (cfr (symbol-name (cat-symbol (cfr-category o))))
           (word (word-pname o))
           (category (symbol-name (cat-symbol o)))
           (polyword (pw-pname o)))))

    (unless simple-string
      (break "The simple-string calculation for ~A ~
              ~%was Nil.  Check that the object is well formed."))

    ;; since the position of the cursor when the buffer was
    ;; last saved could be just about anywhere, we have to 
    ;; search in both directions to be sure we find it.
    (or (buffer-string-pos buffer simple-string)
        (buffer-string-pos buffer simple-string :from-end t))))


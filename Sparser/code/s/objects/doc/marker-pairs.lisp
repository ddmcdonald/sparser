;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "marker pairs"
;;;   Module:  "objects;doc:"
;;;  Version:  0.1 June 1994

;; initiated 5/20/94 v2.3
;; 0.1 (6/6) promulgated new argument to Populate-section-marker

(in-package :sparser)


#| We implement these as section markers with a variation on
   the dispatch through complete so that we separate the initiate
   and terminate actions according to which string is involved.
|#

(define-category start-section)
(define-category end-section)


(defun define-markup-tag-pair/expr (name
                                    start-string end-string
                                    initiate terminate interior)

  ;; intern against the word equivalent to the name
  (let* ((sm-word (define-word/expr
                    (concatenate 'string "sm-" (symbol-name name))))
         new?
         (sm (or (find/section-marker sm-word)
                 (progn
                   (setq new? t)
                   (make-a-new-section-marker sm-word 
                                              (symbol-name name))))))

    ;; stash the routines on the marker. If it's a redefinition
    ;; it will overwrite the old values
    (populate-section-marker sm initiate terminate nil interior nil)

    ;; stash the two strings on the marker's plist. Check the
    ;; old values (if any), since if they've changed we need to
    ;; have cfr's prepared for them. 
    (let* ((plist (sm-plist sm))
           (old-start-string (cadr (member :start-string plist)))
           (old-end-string (cadr (member :end-string plist))))
      (when (and old-start-string
                 (not (equal start-string old-start-string)))
        ;; /// delete the old rule
        (setq new? t))
      (when (and old-end-string
                 (not (equal end-string old-end-string)))
        ;; /// delete the old rule
        (setq new? t))

      (if new?
        (let* ((start-label (resolve-string-to-word/make start-string))
               (end-label (resolve-string-to-word/make end-string))
               (start-rule
                (define-cfr (category-named 'start-section)
                  (list start-label)
                  :form (category-named 'section-marker)
                  :referent sm))
               (end-rule
                (define-cfr (category-named 'end-section)
                  (list end-label)
                  :form (category-named 'section-marker)
                  :referent sm)))

          (setf (sm-plist sm)
                `(:cfrs (,start-rule ,end-rule) ,@plist))
          sm )
        sm ))))

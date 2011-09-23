;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "Congress"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  June 1995

;; initiated 6/26/95

(in-package :sparser)


;;;-------
;;; style
;;;-------

(define-document-style  appropriations-bill
  :init-fn  setup-for-appropriations-bill )

(defun setup-for-appropriations-bill ()
  (use-original-lines-of-text)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (use-Blank-line/indentation-NL-fsa)
  (set-indenation :fixed 2
                  :paragraph 4))


;;;-----------------
;;; document stream
;;;-----------------

(when cl-user::location-of-text-corpora

  (let ((congress-location
         (concatenate 'string cl-user::location-of-text-corpora
                              "Appropriations:")))

    (when (probe-file congress-location)

      (let ((sumt3 (concatenate 'string
                                congress-location
                                "s-title-III-only"))
            (t3 (concatenate 'string
                             congress-location
                             "title-III")))

        (define-document-stream  '|Congressional Appropriations|
          :file-list (list t3
                           sumt3 )
          :style-name 'appropriations-bill
          )))))


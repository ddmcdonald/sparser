;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "CBD"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  June 1995

;; initiated 6/26/95

(in-package :sparser)

;;;-------
;;; style
;;;-------

(define-document-style  CBD
  :init-fn  setup-for-cbd )

(defun setup-for-cbd ()
  (use-original-lines-of-text)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens)
  (break "no newline protocol set for CBD"))


;;;-----------------
;;; document stream
;;;-----------------

(when cl-user::location-of-text-corpora

  (let ((cbd-location
         (concatenate 'string cl-user::location-of-text-corpora
                              "CBD:")))

    (when (probe-file cbd-location)

      (let ((ims (concatenate 'string
                              cbd-location
                              "5/19 IMS"))
            (anti-n (concatenate 'string
                                 cbd-location
                                 "5/22 anti-neutrinos")))


        (define-document-stream  '|Commerce Business Daily|
          :file-list (list ims
                           anti-n )
          :style-name 'cbd
          )))))

;(ed "Corpora:CBD:5/22 anti-neutrinos")
;(setq anit "Corpora:CBD:5/22 anti-neutrinos")
;(do-article (probe-file anit) :style (document-style-named 'CBD))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title heads"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  May 1991      system version 1.8.4

(in-package :CTI-source)

;;;---------------
;;; defining form
;;;---------------

(defun define-title-head (string
                          &key irregular-plural )

  (let* ((word (resolve/make string))
         (uc-word (resolve/make (string-capitalize string)))
         (plural (if irregular-plural
                   (resolve/make irregular-plural)
                   (make/plural-word string)))

         (title (find/title word)))

    (unless title
      (setq title (make-title :name word))
      (define-cfr category::title `(,word)
        :referent title))

    (define-cfr category::title/plural `(,plural)
      :referent title)

    (define-cfr category::title/caps `(,uc-word)
      :referent title)
    ))




(defun make/plural-word (string)
  ;; /// add "...ies", "...men", etc.
  (let ((plural-string
         (concatenate 'string string "s")))
    (resolve/make plural-string)))


;;;-------
;;; cases
;;;-------

(define-title-head "actuary"      :irregular-plural "actuaries")
(define-title-head "advisor")

;(define-title-head "affairs") ;;///no plural
   ;; this doesn't look right for 0;66 "corporate affairs",
   ;; though it's in perfect context for "creative affairs" in 64

(define-title-head "administrator")
(define-title-head "analyst")
(define-title-head "assistant")
(define-title-head "attorney")
(define-title-head "banker")
(define-title-head "cashier")
(define-title-head "chairman"     :irregular-plural "chairmen")
(define-title-head "chairperson")
(define-title-head "chairwoman"   :irregular-plural "chairwomen")
(define-title-head "chief")
(define-title-head "cohead")
(define-title-head "collector")
(define-title-head "commissioner")
(define-title-head "consultant")
(define-title-head "counsel")
(define-title-head "controller")
(define-title-head "deputy"       :irregular-plural "deputies")
(define-title-head "director")
(define-title-head "economist")
(define-title-head "editor")
(define-title-head "executive")
(define-title-head "governor")
(define-title-head "head")
(define-title-head "founder")
(define-title-head "industrialist")
(define-title-head "judge")
(define-title-head "justice")
(define-title-head "lessor")
(define-title-head "magistrate")
(define-title-head "manager")
(define-title-head "officer")
(define-title-head "partner")
(define-title-head "president")
(define-title-head "principal")
(define-title-head "producer")
(define-title-head "professor")
(define-title-head "publisher")
(define-title-head "scientist")
(define-title-head "secretary"   :irregular-plural "secretaries")
(define-title-head "spokesman"   :irregular-plural "spokesmen")
(define-title-head "spokeswoman" :irregular-plural "spokeswomen")
(define-title-head "strategist")
(define-title-head "treasurer")
(define-title-head "trustee")
(define-title-head "tycoon")


(define-title-head "daughter")
(define-title-head "son")
(define-title-head "mother")
(define-title-head "father")
(define-title-head "husband")
(define-title-head "wife")
(define-title-head "brother")
(define-title-head "sister")


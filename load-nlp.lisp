;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2010-2016 David D. McDonald
;;;
;;;    File:  load-nlp
;;; Version:  April 2016

;; This file loads the language understanding system Sparser,
;; the language generator Mumble, and a shared set of utilities.
;; Historically, it performed a sequence of initialization steps
;; before invoking the pre-loader #P"sparser:init;everything.lisp".
;; But ASDF is now the preferred mechanism for loading Sparser,
;; and this file is maintained solely for backwards compatibility.
;; It will be removed soon.
(eval-when (:compile-toplevel :load-toplevel :execute)
  (warn "load-nlp.lisp is deprecated, please use (asdf:load-system :sparser)"))

(asdf:load-system :sparser)

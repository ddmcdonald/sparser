;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "DefCo"
;;;   Module:  "model;core:names:companies"
;;;  version:  May 1991

;; initiated 5/16

(in-package :CTI-source)

#| These are analogous to ThisCo's, but they are not assumed to
have an already mentioned referent. |#

;;;----------
;;; category
;;;----------

(def-category  DefCo :lattice-position :non-terminal)


;;;---------------------
;;; soak up determiners
;;;---------------------

(defun determiner-for-Defco (string)
  (let ((word (resolve/make string)))
    (define-cfr category::DefCo `(,word ,category::company-head))
    (define-cfr category::DefCo `(,word ,category::company-head/er))
    (define-cfr category::DefCo `(,word ,category::company-head/s))
    ))

;;--- These don't contribute anything to the interpretation
;;    and just provide a way to get the phrases formed.

(determiner-for-defco "a")
(determiner-for-defco "an")
(determiner-for-defco "another")
(determiner-for-defco "other")
(determiner-for-defco "our")

(def-cfr DefCo (number company-head/s)
  :referent (:daughter right-edge))


;;;---------------------------------------
;;; combine with companies as descriptors
;;;---------------------------------------

(def-cfr comma-defCo ("," defCo)
  :referent (:daughter right-edge))

(def-cfr company (company comma-defCo)
  :referent (:daughter left-edge))

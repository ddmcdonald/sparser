;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "company test indexes"
;;;   Module:  "model;core:names"
;;;  version:  1.9  March 1991

(in-package :CTI-source)


(clear-index/company)
;; The establish routine has *nl* and *co* parameters set

(p "Foo Inc.")
(p "Bar Inc.")
(p "Foo Alpha Inc.")
(p "Foo Beta Inc.")
(p "Foo Alpha Gamma Inc.")
(find/company *nl*)

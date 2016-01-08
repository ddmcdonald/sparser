;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:names:places:US States:"
;;;  version:  October 1991      (v1.9)

;; initiated in October 1991

(in-package :CTI-source)


;;;-------------------------------------
;;; extensions for larger combinations
;;;-------------------------------------

(def-cfr comma-state ("," state)
  :referent (:daughter right-edge))


;;;-------------------------------
;;; providing context for names
;;;-------------------------------

;;////  [ co , name comma-state ]  ?? requires 3 item CS rule ??


(def-cfr in-location  ( in-location comma-state )
  ;; ?? what's the semantic interpretation this should get ??
  )


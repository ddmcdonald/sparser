;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "ops-loader"
;;;   Module:  "objects;traces:"
;;;  Version:  January 1994     

;; initiated 9/13/92 v2.3, broken out as own load file 8/18/93
;; 1/13/94 added [online hook]

(in-package :sparser)


(lload "traces;trace function")
(lload "traces;globals")

;;  loaded in drivers segment of master-loader after the init-drivers
;;    and source drivers
;;(lload "traces;online hook")


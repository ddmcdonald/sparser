;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:places:"
;;;  version:  January 1994

;; flushed everything to start from scratch 1/17/94 v2.3
;; 6/16/08 removing all these specific rules in favor of using relative-
;; location. 

(in-package :sparser)
#|
;;;-----------------------
;;; prepositional phrases
;;;-----------------------

(def-cfr in-city ("in" city)
  :referent (:daughter right-edge))

(def-cfr in-country ("in" country)
  :referent (:daughter right-edge))

(def-cfr in-location ("in" name)
  :referent (:daughter right-edge))
|#


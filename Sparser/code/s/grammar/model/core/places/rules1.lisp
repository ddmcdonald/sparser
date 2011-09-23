;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:names:places:"
;;;  version:  July 1991

;; initiated in 3/22/91, added items 7/19, 7/23
;; 1.0 (10/12/92 v2.3) pulled location

(in-package :sparser)


;;;--------------
;;;  ___ -based
;;;--------------

(define-self-referential-word "based" :capitalize t)

(def-cfr based (hyphen-edge based)
  :referent (:daughter right-edge))


(define-category location/city)
(define-category location/country)

(def-cfr location (city based)
  :referent (:composite location/city left-edge))
                        
(def-cfr location (country based)
  :referent (:composite location/country left-edge))

(def-cfr location (location based)
  :referent (:composite location left-edge))


(def-cfr in-city ("in" city)
  :referent (:daughter right-edge))

(def-cfr in-country ("in" country)
  :referent (:daughter right-edge))

(def-cfr in-location ("in" name)
  :referent (:daughter right-edge))


(def-cfr location (based in-city)
  :referent (:composite location/city left-edge))

(def-cfr location (based in-country)
  :referent (:composite location/country left-edge))



;;---- a cs rule of a sort
;;
(def-cfr location (name based)
  :referent (:composite location left-edge))


;;;--------------
;;;  ___ -wide
;;;--------------

(define-self-referential-word "wide" :capitalize t)

(def-cfr wide (hyphen-edge wide)
  :referent (:daughter right-edge))


(def-cfr location (city wide)
  :referent (:composite location/city left-edge))
                        
(def-cfr location (country wide)
  :referent (:composite location/country left-edge))

(def-cfr location (location wide)
  :referent (:composite location left-edge))


;;---- a cs rule of a sort
;;
(def-cfr location (name wide)
  :referent (:composite location left-edge))


;;;----------------------------
;;; cases of generic locations
;;;----------------------------

;;--- for combination with "-wide"
;;
(def-cfr location ("world"))
(def-cfr location ("city"))
(def-cfr location ("nation"))
(def-cfr location ("country"))


(def-cfr location ("overseas"))


;;;------------------
;;; location anaphor
;;;------------------

(define-category location-anaphor)

(def-cfr location ("there")
  :form adverb
  :referent  location-anaphor )


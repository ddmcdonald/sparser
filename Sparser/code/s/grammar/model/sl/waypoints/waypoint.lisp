;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013,2016 SIFT LLC.  -- all rights reserved
;;; This file is part of the SIFT CANTO project
;;;
;;;     File:  "waypoint"
;;;            grammar/model/sl/waypoints/
;;;  version:  April 2016

;; Initiated 10/25/13. Pulled out ancilary parts to other files 12/2/13
;; and added subtypes of waypoint for the WP types.

(in-package :sparser)

;;;--------------
;;;  Definition
;;;--------------

(defun make-waypoint (name type airspeed altitude radius)
  (let ((wp (find-or-make-individual 'waypoint :nname name))
        (waypoint (category-named 'waypoint)))
    (when (and type (memq type '(entry target)))
      (cond ((eq type 'entry)
             (setq wp (bind-dli-variable 'type (category-named 'entry-waypoint) wp
                                         waypoint)))
            ((eq type 'target)
             (setq wp
                   (bind-dli-variable 'type (category-named 'target-waypoint) wp
                                  waypoint)))))
    (when airspeed)
    (when altitude)
    (when radius)
    wp))

(defun make-sequence-of-waypoints (list-of-waypoints)
  ;; should be define-sequence but not worrying about indexing
  ;; for present purposes. This fn. is just to have a hook
  ;; for expansion purposes
  (create-sequence list-of-waypoints))

(defvar *waypoint-sequence* nil
  "Set by calling fn below by hand for now")

;; (make-the-waypoint-sequence)
(defun make-the-waypoint-sequence ()
  (let ((s (make-sequence-of-waypoints
            (list (make-waypoint "LVN" 'entry)
                  (make-waypoint "H-AREA" 'target)))))
    (setq *waypoint-sequence* s)))


;;;----------------------------
;;; Waypoint and types of them 
;;;----------------------------

(define-category waypoint
  :instantiates self
  :specializes location
  :binds ((type) ;; value 
          ;; "It is an entry point
          ;(radius . distance-in-miles)
          ;(restrictions 
          )
  :index (:permanent :key name)

  ;; This double definition of lexical realizations, one for
  ;; the word that refers to the class, and one for the waypoint
  ;; names (LVN, H-Area) is new. It leads to schemas that are
  ;; tricky to mine, and provide a reason to rewrite the layout of
  ;; the schema field, maybe even make it an object to avoid all
  ;; the message list parsing.
  :realization ((:common-noun "waypoint")
                (:proper-noun name)))

;;;----------------------
;;; subtypes of waypoint
;;;----------------------

;; ; "It is an entry point"
;;
(define-category entry-waypoint
  :instantiates waypoint
  :specializes waypoint
  ;;/// we ought to be able to inherit indexing rules
  ;; but we're not going to instantiate this in this fast pass
  ;; so it's moot.
  :realization (:common-noun "entry point"))

(define-category target-waypoint
  :instantiates waypoint
  :specializes waypoint
  :realization (:common-noun "target"))


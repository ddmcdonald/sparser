;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; $Id:$
;;;
;;;     File:  "moving"
;;;   Module:  "model;core:places:"
;;;  version:  September 2011

;; Intended for modeling movement in direction or w.r.t. some
;; spatial feature.

;; initated 8/4/11. 9/5/11 added path-type adjunct. 9/12 Added some more.

(in-package :sparser)

;; drive to <location>
;; travel <measurement (distance)> <direction> on<path> to<location
;; turn <direction> onto<path>
;; cross <landmark ??>
;; follow <path> to<configuration> past<landmark> (<distance>)

(define-category  move
  :instantiates self
  :specializes event ;; well actually just 'action' since the examples aren't tensed
  :binds ((mover))) ;; the one that moves. Could be anything


;; A category generator based on these verbs, with the assumption
;; that we get the arguments by building up left-to-right (which
;; means we won't see any of them until we get to the forest level,
;; but if they don't individually combine we'll get there one adjunct
;; at a time in order.

(defun define-movement-verb (string  &optional name)
  (let* ((symbol (or name (name-to-use-for-category string)))
         (word (define-word string))
         (category (category-named symbol)))
    (let ((form `(define-category ,symbol
                   :specializes move
                   :instantiates move
                   :binds ((to-location . location)
                           (via-path . path)
                           (for-distance . measurement) ;; refine to measurements of distance?
                           (in-direction . direction)
                           )
                   :realization ((:tree-family vp+adjunct
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . measurement) ;; "2.5 miles"
                                            (slot . for-distance)))
                                 (:tree-family vp+adjunct
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . direction) ;; "uphill", "west"
                                            (slot . in-direction)))
                                 (:tree-family vp+adjunct
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . path-type) ;; "this road"
                                            (slot . via-path)))
                                 (:tree-family vp+adjunct
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . to-location)
                                            (slot . to-location)))
                                 (:tree-family vp+adjunct
                                  :mapping ((vg . :self) ;; "onto Beartown Road"
                                            (vp . move)
                                            (adjunct . onto-location)
                                            (slot . to-location)))
                                 (:tree-family vp+adjunct ;; "cross the river"
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . location)
                                            (slot . location)))
                                 (:main-verb ,string)))))
        (setq category (eval form))
        category)))


;;--- Cases (could go to a dossier)

(define-movement-verb "cross")

(define-movement-verb "drive")

(define-movement-verb "follow")

(define-movement-verb "travel")

(define-movement-verb "turn")




;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2024  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "moving"
;;;   Module:  "model;core:places:"
;;;  version:  March 2024

;; Intended for modeling movement in direction or w.r.t. some
;; spatial feature.

;; initated 8/4/11. 9/5/11 added path-type adjunct. 9/12 Added some more.
;; 9/26 "immediately". More bits through 10/4/11. 11/3 added DA rule to
;; convert a name. 4/14/14 Excised the old version of the 'move' category
;; in favor of the new one in kinds/movement. 9/26/14 commented out
;; def of 'turn' which is now neigher flesh nor fowl from point of view
;; of an edge former that can compose with auxiliaries. 1/4/16 compiler
;; nit.

(in-package :sparser)


;; A category generator based on these verbs, with the assumption
;; that we get the arguments by building up left-to-right (which
;; means we won't see any of them until we get to the forest level,
;; but if they don't individually combine we'll get there one adjunct
;; at a time in order.

;; drive to <location>
;; travel <distance) <direction> on<path> to<location
;; turn <direction> onto<path>
;; cross <landmark ??>
;; follow <path> to<configuration> past<landmark> (<distance>)

(defun define-movement-verb (string  &optional name)
  (let* ((symbol (or name (name-to-use-for-category string)))
         (category (category-named symbol)))
    (let ((form `(define-category ,symbol
                   :specializes move
                   :instantiates move                           
                   :realization ((:tree-family vp+adjunct
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . distance) ;; "2.5 miles"
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
                                 (:tree-family vp+adjunct  ;; "on MA 102"
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . on-path)
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
                                 (:tree-family vp+adjunct ;; "immediately"
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . time)
                                            (slot . when-done)))
                                 (:tree-family vp+adjunct ;; "past the forest boundary"
                                  :mapping ((vg . :self)
                                            (vp . move)
                                            (adjunct . past-location)
                                            (slot . landmark)))
                                 ;;/// Need distance as source of 'when'
                                 ;;  "{in/after} ten miles" "... (1.5 miles)"
                                 ;; Though this might be understood better as distance
                                 (:verb ,string)))))
        (setq category (eval form))
        category)))

;;--- Debris: convert a name because of its context

(unless (current-script :biology)
  
  (define-debris-analysis-rule move+to+name
      :pattern ( move "to" name )
      :action (:function convert-name-to-place-name third))

  (define-debris-analysis-rule move+to+named-object
      :pattern ( move "to" named-object )
      :action (:function convert-name-to-place-name third)))


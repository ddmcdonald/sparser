;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "indirect obj pattern"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  May 1995

;; initiated 5/28/95

(in-package :sparser)


(define-exploded-tree-family  ditrans-pp/io
  :description ""
  :binding-parameters ( agent theme  patient )
  :labels ( s vg v-bar v-double-bar vp
            np/agent   ;; "Horace"
            np/theme   ;; "the book"
            pp/patient ;; "to Patience"
            np/patient ;; "Patience"
            )
  :cases
    ((:subject (s (np/agent vp)
                ;;  "Horace [gave the book to Patience]"
                ;;  "Horace [gave Patience the book]"
                :head right-edge
                :binds (agent left-edge)))

     (:verb+first-object  (v-double-bar (vg np/theme)
                            ;; [gave] [the book]
                           :head left-edge
                           :binds (theme right-edge)))

     (:v-bar+pp-object    (vp (v-double-bar pp/patient)
                           ;; [gave the book] [to Patience]
                           :head left-edge
                           :binds (patient right-edge)))

     (:verb+second-object (v-bar (vg np/patient)
                            ;; [gave] [Patience]
                           :head left-edge
                           :binds (patient right-edge)))

     (:v-bar+first-object (vp (v-bar np/theme)
                           ;; "... [gave Patience] [the book]"
                           :head left-edge
                           :binds (theme right-edge)))
     ))


(define-exploded-tree-family  ditrans-pp/io/passive-obj1
  :description ""
  :incorporates ditrans-pp/io
  :cases
     ((:passive (s (np/theme vp/+ed)
                   ;; "[the book] [was given to Patience]"
                  :head right-edge
                  :binds (theme left-edge)))

      (:passive+second-object (vp/+ed (vg/+ed pp/patient)
                                      ;; "was given to Patience"
                                  :head left-edge
                                  :binds (patient right-edge)))))


(define-exploded-tree-family  ditrans-pp/io/both-passivize
  :description ""
  :incorporates ditrans-pp/io/passive-obj1
  :cases
     ((:passive (s (np/patient vp/+ed)
                   ;; "[Patience] [was given the book]"
                  :head right-edge
                  :binds (patient left-edge)))

      (:passive+first-object (vp/+ed (vg/+ed np/theme)
                                      ;; "was given the book"
                                  :head left-edge
                                  :binds (theme right-edge)))))


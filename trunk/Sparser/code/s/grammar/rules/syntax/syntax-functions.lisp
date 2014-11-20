;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  /Users/ddm/ws/R3/trunk/opp/ISI/amr_eng_align.pdf-- all rights reserved
;;; 
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  October 2014

;; Initiated 10/27/14 as a place to collect the functions associated
;; with syntactic rules when they have no better home.

(in-package :sparser)


;; vg+pp
(defun adjoin-pp-to-vg (vg pp)
  (push-debug `(,vg ,pp))
  (cond
   ((itypep pp 'upon-condition)
    ;; trace
    (bind-variable 'circumstance pp vg))
   (t 
    (bind-variable 'modifier pp vg)))
  vg)
     

; left-edge-for-referent
; right-edge-for-referent
; parent-edge-for-referent
    
(defun interpret-pp-adjunct-to-np (np pp)
  (push-debug `(,np ,pp))
  (or (call-compose np pp)
      (let* ((pp-edge (right-edge-for-referent))
             (prep-edge (edge-left-daughter pp-edge))
             (prep-word (edge-left-daughter prep-edge)))
        ;;/// ought to use the referent of the prep but just doing
        ;; this one case for now
        (if (eq prep-word (word-named "in"))
          (bind-variable 'location pp ;; daughter rule
                         np)
          (bind-variable 'modifier pp np))
        np)))
;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  /Users/ddm/ws/R3/trunk/opp/ISI/amr_eng_align.pdf-- all rights reserved
;;; 
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  December 2014

;; Initiated 10/27/14 as a place to collect the functions associated
;; with syntactic rules when they have no better home.
;; RJB 12/20/2014 tentative fix to allow interpret-pp-adjunct-to-np to handle bio-context

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
        (when (eq prep-word (word-named "in"))
          (cond
           ((and (itypep np 'physical)
                  (itypep pp 'location))
            ;; otherwise we don't know what to do with it.
            (bind-variable 'location pp  np))
           ((and (itypep np 'bio-entity)
                 (itypep pp 'bio-context))
            (bind-variable 'bio-context pp np))))
        ;; Leaving this be while waiting on subcat. fixes
        ;;(bind-variable 'modifier pp np))
        np)))
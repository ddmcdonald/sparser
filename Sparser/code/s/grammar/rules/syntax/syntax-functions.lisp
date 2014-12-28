;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald -- all rights reserved
;;; 
;;;     File:  "syntax-functions"
;;;   Module:  grammar/rules/syntax/
;;;  Version:  December 2014

;; Initiated 10/27/14 as a place to collect the functions associated
;; with syntactic rules when they have no better home.
;; RJB 12/20/2014 tentative fix to allow interpret-pp-adjunct-to-np 
;; to handle bio-context. 

(in-package :sparser)


; (left-edge-for-referent)
; (right-edge-for-referent)
; (parent-edge-for-referent)

;;;-------------------
;;; noun premodifiers
;;;-------------------

(defun noun-noun-compound (pre-nominal head)
  ;; goes with (common-noun common-noun) syntactic rule 
  (when (category-p head)
    (setq head (make-individual-for-dm&p head)))
  ;; (push-debug `(,pre-nominal ,head)) (break "check")
  (if (itypep head 'process) ;; poor man's standing for verb?
    (then
     (let ((variable (object-variable head)))
       (if variable ;; really should check for passivizing
         (bind-variable variable pre-nominal head)
         ;; otherwise it's not obvious what to bind
         (bind-variable 'modifier pre-nominal head))))
    (else
     ;; what's the right relationship?
     ;; Systemics would say they are qualifiers, so perhaps
     ;; subtype? 
     (bind-variable 'modifier pre-nominal head))) ;; safe
  head)





;;;-----------------
;;; VG + Complement
;;;-----------------

(defun vg-plus-adjective (vg adj)
  (let ((var (object-variable vg)))
    (if var
      (bind-variable var adj vg)
      (bind-variable 'participant adj vg))
    vg))


;;;---------
;;; VG + PP
;;;---------

(defun adjoin-pp-to-vg (vg pp)
  (push-debug `(,vg ,pp))
  (cond
   ((itypep pp 'upon-condition)
    ;; trace
    (bind-variable 'circumstance pp vg))
   (t 
    (bind-variable 'modifier pp vg)))
  vg)
     

;;;---------
;;; NP + PP
;;;---------
    
(defun interpret-pp-adjunct-to-np (np pp)
  (push-debug `(,np ,pp))
  (or (call-compose np pp)
      (let* ((pp-edge (right-edge-for-referent))
             (prep-edge (edge-left-daughter pp-edge))
             (prep-word (edge-left-daughter prep-edge)))
        ;;/// ought to use the referent of the prep but just doing
        ;; this one case for now
        (cond
         ((eq prep-word (word-named "in"))
          (cond
           ((and (itypep np 'physical)
                  (itypep pp 'location))
            ;; otherwise we don't know what to do with it.
            (bind-variable 'location pp  np))
           ((and (itypep np 'bio-entity)
                 (itypep pp 'bio-context))
            (bind-variable 'bio-context pp np))
           (t
            (bind-variable 'modifier pp np))))
         (t ;;///////// subcat should revise this!
          ;; Look for a subcategorized preposition on the np
          (bind-variable 'modifier pp np)))
        np)))
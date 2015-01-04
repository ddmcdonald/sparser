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
;; 1/2/2015 put hooks in adjoin-pp-to-vg and interpret-pp-adjunct-to-np to allow for subcategorization frames
;; THIS IS INCOMPLETE

(in-package :sparser)


; (left-edge-for-referent)
; (right-edge-for-referent)
; (parent-edge-for-referent)

;;;-------------------
;;; noun premodifiers
;;;-------------------

(defun noun-noun-compound (qualifier head)
  ;; goes with (common-noun common-noun) syntactic rule 
  (when (category-p head)
    (setq head (make-individual-for-dm&p head)))
  (push-debug `(,qualifier ,head)) ;;(break "check")
  (or (call-compose qualifier head)
      (progn
        (if (itypep head 'process) ;; poor man's standing for verb?
          (then
           (let ((variable (object-variable head)))
             (if variable ;; really should check for passivizing
               (bind-variable variable qualifier head)
               ;; otherwise it's not obvious what to bind
               (else 
                (bind-variable 'modifier qualifier head)))))
          (else
           ;; what's the right relationship? Systemics would say 
           ;; they are qualifiers, so perhaps subtype? 
           (bind-variable 'modifier qualifier head))) ;; safe
        head)
      head))





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
  ;; The VG is the head. We ask whether it subcategorizes for
  ;; the preposition in this PP and if so whether the complement
  ;; of the preposition satisfies the specified value restriction.
  ;; Otherwise we check for some anticipated cases and then
  ;; default to binding modifier. 
  (let ((subcat-patterns (known-subcategorization? vg)))
    (or (when subcat-patterns
          (subcategorized-pp subcat-patterns vg pp))
        (when (itypep pp 'upon-condition)
          ;; trace
          (bind-variable 'circumstance pp vg))
        (else
         ;; trace
         (bind-variable 'modifier pp vg)))
    vg))

(defun subcategorized-pp (subcat-patterns head pp)
  ;; Look up the preposition on the pp and see if it is
  ;; included in the subcategorization patterns of the head.
  ;; If so, check the value restriction and if it's satisfied
  ;; make the specified binding
  (let* ((pp-edge (right-edge-for-referent))
         (prep-edge (edge-left-daughter pp-edge))
         (prep-word (edge-left-daughter prep-edge)))
    (unless prep-word
      (push-debug `(,pp-edge ,prep-edge))
      (error "Unexpected configuration of PP edges"))
    (let ( pattern )
      (dolist (entry subcat-patterns)
        (when (eq prep-word (subcat-preposition entry))
          (setq pattern entry)
          (return)))
      (when pattern
        (when (itypep pp (subcat-restriction pattern))
          (bind-variable (subcat-variable pattern) pp head))))))



;;;---------
;;; NP + PP
;;;---------
    
(defun interpret-pp-adjunct-to-np (np pp)
  (push-debug `(,np ,pp))
  (or (call-compose np pp)
      (let ((subcat-patterns (known-subcategorization? np)))
        (or (when subcat-patterns
              (subcategorized-pp subcat-patterns np pp))

            (let* ((pp-edge (right-edge-for-referent))
                   (prep-edge (edge-left-daughter pp-edge))
                   (prep-word (edge-left-daughter prep-edge)))
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
                  (bind-variable 'modifier pp np)))))
              np)))))




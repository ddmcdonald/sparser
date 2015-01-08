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
;; 1/5/2015 refactor code that David wrote for adjoin-pp-to-vg and interpret-pp-adjunct-to-np to allow them to be used as predicates as well as actions

(in-package :sparser)


; (left-edge-for-referent)
; (right-edge-for-referent)
; (parent-edge-for-referent)

(defparameter *force-modifiers* nil) ;; set to T when you want to accept all PP modifiers to NPs and VPs 
(defparameter *subcat-test* nil) ;; set to T when we are executing the referent function as a predicate, not as part of 
;;interpretation of an NP or VP

;;;-------------------
;;; noun premodifiers
;;;-------------------

(defun noun-noun-compound (qualifier head)
  ;; goes with (common-noun common-noun) syntactic rule 
  (when nil
    (push-debug `(,qualifier ,head)) 
    (break "check: qualifier = ~a~
          ~%       head = ~a" qualifier head))

  (or (call-compose qualifier head)
      ;; This case is to benefit marker-categories

      (else
       (when (category-p head)
         (setq head (make-individual-for-dm&p head)))
       (call-compose qualifier head))

      (if (itypep head 'process) ;; poor man's standing for verb?
        (then
         (let ((variable (object-variable head)))
           (if variable ;; really should check for passivizing
             (bind-variable variable qualifier head)
             ;; otherwise it's not obvious what to bind
             (else 
              (bind-variable 'modifier qualifier head)))
           head))
        (else
         ;; what's the right relationship? Systemics would say 
         ;; they are qualifiers, so perhaps subtype? 
         (bind-variable 'modifier qualifier head) ;; safe
         head))))






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
  (declare (special vg pp))
  (push-debug `(,vg ,pp))
  ;; The VG is the head. We ask whether it subcategorizes for
  ;; the preposition in this PP and if so whether the complement
  ;; of the preposition satisfies the specified value restriction.
  ;; Otherwise we check for some anticipated cases and then
  ;; default to binding modifier. 
  (let* ((subcat-patterns (known-subcategorization? vg))
         (pp-edge (right-edge-for-referent))
         (prep-edge (edge-left-daughter pp-edge))
         (prep-word (edge-left-daughter prep-edge))
         (pobj-edge (edge-right-daughter pp-edge))
         (variable-to-bind
          ;; test if there is a known interpretation of the VG/PP combination
          (or
           (and
            subcat-patterns
            (subcategorized-pp-variable subcat-patterns vg pp))
           (and
            (eq prep-word (word-named "in"))
            ;;(break "in")
            (cond
             ((and (itypep vg 'physical)
                   (itypep (edge-referent pobj-edge) 'location))
              'location)
             ((and (itypep vg 'biological)
                   (itypep (edge-referent pobj-edge)  'bio-context))
              'bio-context)))
           (and
            (itypep pp 'upon-condition)
            ;; trace
            'circumstance)
           ;; or if we are making a last ditch effore
           (and *force-modifiers* (bind-variable 'modifier pp vg)))))
    (declare (special pobj-edge))
    (cond
     (*subcat-test* variable-to-bind)
     (t
      (bind-variable variable-to-bind pp VG)
      vg))))

(defun subcategorized-pp-variable (subcat-patterns head pp)
  ;; Look up the preposition on the pp and see if it is
  ;; included in the subcategorization patterns of the head.
  ;; If so, check the value restriction and if it's satisfied
  ;; make the specified binding
  (declare (special subcat-patterns))
  (when  subcat-patterns
    (let* ((pp-edge (right-edge-for-referent))
           (prep-edge (edge-left-daughter pp-edge))
           (prep-word (edge-left-daughter prep-edge))
           (pobj-edge (edge-right-daughter pp-edge))
           variable)
      (declare (special prep-word prep-edge pobj-edge variable))
      (unless prep-word
        (push-debug `(,pp-edge ,prep-edge))
        (error "Unexpected configuration of PP edges"))
      
      (dolist (entry subcat-patterns)
        (when 
            (and
             (eq prep-word (subcat-preposition entry))
             ;;(print (list (edge-referent pobj-edge) (subcat-restriction entry)))
             (itypep (edge-referent pobj-edge) (subcat-restriction entry)))
          (setq variable (subcat-variable entry))
          (return)))
      ;;(break "testing subcats")
      variable)))


;;;---------
;;; NP + PP
;;;---------
    
(defun interpret-pp-adjunct-to-np (np pp)
  (push-debug `(,np ,pp))
  (or (call-compose np pp) ;; DAVID -- why is this called?!
      (let* ((subcat-patterns (known-subcategorization? np))
             (pp-edge (right-edge-for-referent))
             (prep-edge (edge-left-daughter pp-edge))
             (prep-word (edge-left-daughter prep-edge))
             (variable-to-bind
              ;; test if there is a known interpretation of the NP/PP combination
              (or
               (and
                subcat-patterns
                (subcategorized-pp-variable subcat-patterns np pp))
               (and
                (eq prep-word (word-named "in"))
                (cond
                 ((and (itypep np 'physical)
                       (itypep pp 'location))
                  'location)
                 ((and (itypep np 'biological)
                       (itypep pp 'bio-context))
                  'bio-context)))
               ;; or if we are making a last ditch effore
               (and *force-modifiers* 'modifier)
               ;; if not, then return NIL
               )))
        (cond
         (*subcat-test* variable-to-bind)
         (t
          (bind-variable variable-to-bind pp np)
          np)))))




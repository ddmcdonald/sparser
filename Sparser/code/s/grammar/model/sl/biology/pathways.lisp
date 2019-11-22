;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "pathways"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2017

;; Broken out from phenomena 5/10/17

(in-package :sparser)

;;;----------
;;; Pathways
;;;----------
; diverse signaling pathways
; specific effector pathways
; specific effector pathway(s)
; the Raf/MEK/ERK pathway
; MAPK pathway inhibitors / inhibition

(define-category  pathway :specializes bio-mechanism
  ;;:mixins (type-marker biological)
  :binds ((protein-sequence sequence)
          (pathwayComponent)
          (pathwayEndpoints)
	  (pathwayOrder)
          )
  :realization (:noun "pathway"
                      :with pathwayComponent
                      :for pathwayComponent
                      :between pathwayEndpoints
                      )
  :documentation "Pathways are inhibited and activated
   which makes them more like entities than processes.
   They are named according to the sequence of proteins
   (protein families) in the causal chain.")


(define-category pathway-segment :specializes pathway
   :binds ((ground (:or gene protein)))
   :realization (:of ground))

(define-category pathway-direction :specializes bio-relation
;;  :mixins (post-adj)  messes up pred-adj reading of 'upstream'
  :binds ((relative-to (:or bio-process bio-entity pathway))
          (pathway pathway))
  :restrict ((participant blocked-category))
  :realization
  (:of relative-to
       :from relative-to
       :in pathway))

(define-category downstream :specializes pathway-direction
                 :realization (:adj "downstream"))
(define-category downstream-segment :specializes pathway-segment
    :realization
  (:noun ("downstream" :plural "downstreams")))

(define-category upstream :specializes pathway-direction
     :realization (:adj "upstream"))

(define-category upstream-segment :specializes pathway-segment
    :realization
  (:noun ("upstream" :plural "upstreams")))

;;(def-synonym downstream (:noun ("downstreams" :plural "downstreamsxxx")))
;;(def-synonym upstream (:noun ("upstreams" :plural "upstreamsxxx")))



(define-category PathwayStep :specializes bio-process
  :binds ((pathway pathway)                       
          (process bio-process)
          (nextStep PathwayStep)
	  
          (stepProcess (:or control pathway catalytic-activity 
                            biochemical-reaction bio-transport)))
  :instantiates :self
  :lemma (:common-noun "step")
  :realization (:common-noun name
                :in pathway
                :in process))

(define-category signaling-pathway :specializes pathway
   :realization
   (:noun ("signaling pathway" "signalling pathway" "signalling cascade" "signaling cascade")))


(defmacro def-pathway (&rest strings-naming-proteins)
  `(def-pathway/expr ',strings-naming-proteins))

(defun def-pathway/expr (strings-naming-proteins)
  (let ( proteins )
    (dolist (name strings-naming-proteins)
      (let ((protein (get-protein name)))
        (unless protein
          (error "Cannot identify a protein named ~s~
                ~%Maybe extend get-protein to an additional ~
                  caps variant?" name))
        (push protein proteins)))
    (setq proteins (nreverse proteins))
    (let ((sequence (create-sequence proteins))
          (name (create-slash-separated-string strings-naming-proteins)))
      (declare (ignore name)) ;; should this be used somehow?
      (let ((i (find-or-make-individual 'pathway)))
        ;;/// make a lowercase version?
        (setq i (bind-dli-variable 'protein-sequence sequence i))
        i))))

;;//// move to string utilities
(defun create-slash-separated-string (strings)
  (let ( list )
    (do ((string (car strings) (car rest))
         (rest (cdr strings) (cdr rest)))
        ((null string))
      (push string list)
      (unless (null rest)
        (push "/" list)))
    (apply #'string-append (nreverse list))))

(def-pathway "Ras" "Raf" "MAPK")

(def-pathway "MEK" "ERK")

(def-pathway "Raf" "MAPK")

;; add "Gab1-Akt" "PI3K-AKT" "PI3K-AKT-mTOR" "PI3K-Akt"

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "context"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  August 2021

;; Initiated 8/2/21 to gather together routines for determining the linguistic
;; context something occurs in. 

(in-package :sparser)

;;;--------------------------------------------
;;; setup the context after parsing an article
;;;--------------------------------------------

(defgeneric apply-context-predicates (article)
  (:documentation "Called as part of the after-actions method on articles.
 We identify what group instances we should work on, the we iterate through
 the edges in their entries and create and store their used-in chains.
 That's the raw material we apply context predicates to, or explore as part
 of developing the predicates.")
  (:method ((a article))
    (declare (special *compute-items-contexts*))
    (when *compute-items-contexts*
      (let* ((items-field (items (contents a)))
             (group-instances (collect-germane-group-instances items-field)))
        (loop for group in group-instances
           do (loop for entry in (note-instances group)
                 do (loop for record in (text-strings entry)
                       as edge-number = (edge-record-number record)
                       as chain = (upward-used-in-chain edge-number)
                       do (store-edge-chain record chain))))
        (loop for gi in group-instances
             do (analyze-trigger-contexts gi))))))

(defvar *germaine-spotter-group-instances* nil)

(defun collect-germane-group-instances (list-of-group-instances)
  "We want the motif-spotting group instances. Right now we only want
 word spotters since those are where the motifs have been stored."
  (declare (special *motif-groups*))
  (let ((groups
         (loop for group in list-of-group-instances
            as name = (name group)
            when (find name *motif-groups* :key #'name)
            collect group)))
    (setq *germaine-spotter-group-instances* groups)
    groups))



;;;-----------------------------
;;; predicates over edge chains
;;;-----------------------------

;;--- precursors

(defparameter *categories-over-names*
  '(name named-object
    person proper-name ) ; the motif-triggers are proper-nouns
  "List of the category labels that indicate we have a name")

(defparameter *categories-over-np*
  '(np n-bar))


;;--- proper name

(defgeneric edge-context-for-name? (chain)
  (:documentation "Does this chain of edges include an edge
    whose label indicates that spans some sort of names?
    Note that the chain is from lowest to highest.")
  (:method ((chain edge-chain))
    (dolist (edge (edges chain) nil)
      (when (or (memq (edge-cat-name edge) *categories-over-names*)
                (memq (form-cat-name edge) *categories-over-names*))
        (return :part-of-a-name)))))

(defgeneric covered-by-person? (chain) ;; "El Chupacabra"
  (:documentation "Does any edge on this chain have the category
    person, if so return that edge.")
  (:method ((chain edge-chain))
    (let* ((edges (edges chain)))
      (loop for edge in edges
         when (eq (edge-cat-name edge) 'person)
         return edge))))

(defgeneric covered-by-np? (chain)
  (:documentation "return the lowest edge in this chain whose form
    is one of the np categories")
  (:method ((chain edge-chain))
    (loop for edge in (edges chain)
       when (memq (form-cat-name edge) *categories-over-np*)
       return edge)))

(defgeneric position-in-np-head (edge chain)
  (:documentation "if this edge is covered by a minimal np, it will be
    one of the daughters of that np edge. 
    We return :np-head or :np-modifier depending on which
    daughter it's part of. If there's no nearby np we return nil.")
  (:method ((target-edge edge) (chain edge-chain))
    (let ((np-edge (covered-by-np? chain)))
      (when np-edge
        (let ((left (edge-left-daughter np-edge))
              (right (edge-right-daughter np-edge)))
          (cond
            ((eq target-edge left) :np-modifier)
            ((eq target-edge right) :np-head)
            (t (when *debug-context-predicates*
                 (break "No head criteria for ~a" np-edge)))))))))
           

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;;
;;;      File: "context"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  November 2021

;; Initiated 8/2/21 to gather together routines for determining the linguistic
;; context something occurs in. 

(in-package :sparser)

;;;------------------------------------
;;; driver over the context predicates
;;;------------------------------------


(defun identify-edge-configuration (record edge chain)
  "Try the edge and its chain against the context predicates looking for
   one that succeeds and provides a categorization of the edge configuration
   that this edge is in.
   Not the most elegant of control structures. This is a sequence of calls
   to particular configuration-assigning predicates. If the predicate is
   satisfied it returns a keyword, our present minimal model for labeling
   a configuration. The first satisfied predicate wins."
  (declare (special *debug-context-predicates*))
  (let ((configuration nil))
    (setq configuration (edge-context-for-name? chain))
    (unless configuration
      (setq configuration (position-in-np-head edge chain)))
    (unless configuration
      (setq configuration (short-chain-configurations chain)))
    (unless configuration
      (setq configuration (slightly-longer-chain-configurations chain)))

    (if configuration
      (setf (edge-record-configuration record) configuration)
      (else
        (when *debug-context-predicates*
          (push-debug `(,edge ,chain))
          (warn-or-error "New configuration~
                ~%  chain ~a~
                ~%  form: ~a" chain (form-labels chain)))
        nil))))


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

;;--- subroutines

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

;;--- configuration returning predicates

(defgeneric short-chain-configurations (chain)
  (:method ((edge-number integer))
    (short-chain-configurations (get-chain edge-number)))
  (:method ((chain edge-chain))
    (let ((form-categories (form-labels chain)))
      (when (= 1 (length form-categories))
        (let ((form-category (car form-categories)))
          (unless (memq form-category *n-bar-category-names*)
            (when *debug-context-predicates*
              (warn-or-error "unexpected single label: ~a" form-category)))
          (ecase form-category
            ((common-noun/plural noun/verb-ambiguous common-noun
              np)
             :isolated-common)
            ;; n-bar -- included in *n-bar-category-names*
            ((proper-noun proper-name)
             :isolated-proper)))))))

(defgeneric slightly-longer-chain-configurations (chain)
  (:documentation "Chains of two edges. Motif will be the head.")
  (:method ((edge-number integer))
    (slightly-longer-chain-configurations (get-chain edge-number)))
  (:method ((chain edge-chain))
    (let ((form-categories (form-labels chain)))
      (when (= 2 (length form-categories))
        (let ((head (first form-categories))
              (second (second form-categories)))
          (case second
            (pp
             :in-relation)
            (quotation
             ;;/// have to check for long ones, though region may not be parsed
             :scare-quoted)
            (s
             :subject)
            (vp
             :object)
            (otherwise
             (when *debug-context-predicates*
               (warn-or-error "Unhandled second label: ~a" second))
             nil)))))))


(defgeneric edge-context-for-name? (chain)
  (:documentation "Does this chain of edges include an edge
    whose label indicates that spans some sort of names?
    Note that the chain is from lowest to highest.")
  (:method ((chain edge-chain))
    (dolist (edge (edges chain) nil)
      (when (or (memq (edge-cat-name edge) *categories-over-names*)
                (memq (form-cat-name edge) *categories-over-names*))
        (return :part-of-a-name)))))

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
                 (warn-or-error "No head criteria for ~a~%  in ~a"
                                np-edge chain)))))))))



;;;-------------
;;; experiments
;;;-------------

(defgeneric all-instances-are-inside-proper-names (group)
  (:documentation "Does every instance of one of the entries in
    this group occur inside a proper name?  Return those that
    do not, and compute the ratio.")
  ;;  How to represent the others?
  (:method ((name symbol))
    (all-instances-are-inside-proper-names (find-note-group name)))
  (:method ((group note-group-instance))
    (let ( satisfy  fail  )
      (loop for entry in (note-instances group)
         do (loop for record in (text-strings entry)
               as edge-number = (edge-record-number record)
               as chain = (edge-record-chain record)
               do (if (edge-context-for-name? chain)
                    (push record satisfy)
                    (push record fail))))
      (format t "~&~a pass, ~a fail~%" (length satisfy) (length fail))
      (if (null fail) t fail))))


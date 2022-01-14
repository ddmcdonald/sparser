;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021-2022 David D. McDonald  -- all rights reserved
;;;
;;;      File: "context"
;;;    Module: "analyzers;psp:word-spotting:"
;;;   Version:  January 2022

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
   a configuration. The first satisfied predicate wins.
     Called by analyze-trigger-contexts and edge-config"
  (declare (special *debug-context-predicates*))
  (let ((configuration nil)
        (length (length (form-labels chain))))
    (setq configuration (edge-context-for-name? chain))
    #+ignore(unless configuration
      (setq configuration (position-in-np-head edge chain)))
    (unless configuration
      (when (= length 1)
        (setq configuration (short-chain-configurations chain))))
    (unless configuration
      (when (= length 2)
        (setq configuration (slightly-longer-chain-configurations chain))))
    (unless configuration
      (setq configuration (long-chain-configuration chain)))
    (if configuration
      (setf (edge-record-configuration record) configuration)
      (else
        (when (config-break)
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
  (:documentation "chains of length 1")
  (:method ((edge-number integer))
    (short-chain-configurations (get-chain edge-number)))
  (:method ((chain edge-chain))
    (let ((form-categories (form-labels chain)))
      (when (= 1 (length form-categories)) ; otherwise immediate move to next
        (let ((form-category (car form-categories)))
          (unless (memq form-category *n-bar-category-names*)
            (when (config-break)
              (warn-or-error "unexpected single label: ~a" form-category)))
          (case form-category
            ((common-noun/plural noun/verb-ambiguous common-noun np)
             :isolated-common)
            ;;// n-bar -- included in *n-bar-category-names*
            ((proper-noun proper-name)
             :isolated-proper)
            (otherwise
             (when (config-break)
               (break "unexpected length 1: ~a" form-category)))))))))

(defgeneric slightly-longer-chain-configurations (chain)
  (:documentation "Chains of two edges. Motif will be the head.")
  (:method ((edge-number integer))
    (slightly-longer-chain-configurations (get-chain edge-number)))
  (:method ((chain edge-chain))
    (let ((form-categories (form-labels chain)))
      (when (= 2 (length form-categories))
        (length-two-configurations form-categories chain)))))

(defun length-two-configurations (form-categories chain)
  (let* ((head (first form-categories))
         (second (second form-categories))
         (edges (edges chain))
         (head-edge (car edges))
         (covering-edge (second edges)))
    (cond
      ((equal form-categories '(np np))
       (position-in-np head-edge covering-edge))
      ((or (equal form-categories '(proper-noun np))
           (equal form-categories '(common-noun np)))
       (position-in-np head-edge covering-edge))
      ((equal form-categories '(proper-noun n-bar)) :isolated-proper)
      ((equal form-categories '(proper-noun vp)) :object)
      ((or (equal form-categories '(common-noun n-bar))
           (equal form-categories '(common-noun np)))
       (position-in-np head-edge covering-edge))
      (t
       (case second
         (pp
          :in-relation)
         (quotation
          ;;/// have to check for long ones, though region may not be parsed
          :scare-quoted)
         ((s transitive-clause-without-object)
          :subject)
         (vp
          :object)
         (vp+past
          :object)
         (to-comp
          :object)
         (proper-noun
          :isolated-proper)
         (parentheses
          :isolated-proper)
         (np
          (position-in-np head-edge covering-edge))
         (otherwise
          (when (config-break)
            (break "Unhandled second label: ~a" second))
          nil))))))


(defgeneric long-chain-configuration (chain)
  (:documentation "Chains of more than 2 edges. Lots of heuristics
    and shortcut assumptions since it's clear there's a ton of content
    in these if it was worth modeling it")
  (:method ((chain edge-chain))
    (let* ((form-categories (form-labels chain))
           (head (first form-categories))
           (length (length form-categories))
           (highest (car (last form-categories)))
           (edges (edges chain))
           (remainder (cdr form-categories))
           (includes-s? (memq 's remainder)))
      (cond
        ((and (eq highest 'quotation) (= length 3))
         (length-two-configurations (reverse (cdr (reverse form-categories))) chain))
        (includes-s? :subject)
        ((eq highest 'transitive-clause-without-object) :subject)
        ((memq 'pp remainder) :in-relation)
        ((equal form-categories '(common-noun np pp)) :in-relation)
        ((equal form-categories '(np vp s)) :subject)
        ((equal form-categories '(np vp to-comp)) :object)
        ((equal form-categories '(np np np)) :in-relation) ; smothered conj w/ prep m56
        ((equal form-categories '(np np vp)) :object)
        ((equal form-categories '(proper-noun pp np)) :in-relation)
        ((equal form-categories '(proper-noun np vg)) :object)
        ((equal form-categories '(proper-noun vp s)) :object)
        ((equal form-categories '(proper-noun s s)) :subject)
        ((equal form-categories '(proper-noun transitive-clause-without-object)) :subject)
        ((equal form-categories '(proper-noun np np))
         (position-in-np (first edges) (second edges)))
        
        ((matches-prefix form-categories '(np pp)) :in-relation)
        ((matches-prefix form-categories '(np s)) :subject)
        ((matches-prefix form-categories '(proper-noun possessive)) :posessive)
        ((matches-prefix form-categories '(proper-noun np vp)) :object)
        ((matches-prefix form-categories '(proper-noun vp)) :object)
        ((matches-prefix form-categories '(proper-noun pp)) :in-relation)
        ((matches-prefix form-categories '(np transitive-clause-without-object)) :subject)
       
        ((matches-prefix form-categories '(proper-noun np np))
         (context-above-proper-np-np form-categories chain))
        ((matches-prefix form-categories '(proper-noun np))
         (context-above-proper-np form-categories chain))
        ((matches-prefix form-categories '(proper-noun n-bar))
         (context-above-proper-noun-n-bar form-categories chain))
        
        ((matches-prefix form-categories '(np np))
         (context-above-np-np form-categories chain))
       
        ((eq head 'proper-noun)
         (context-above-proper-noun form-categories))
        ((eq head 'common-noun)
         (context-above-common-noun form-categories chain))
        (t
         (when (config-break)
           (break "fell off bottom of long chain: ~a" form-categories))
         nil)))))

(defun context-above-np-np (form-categories chain)
  "prefix is (np np)"
  (let* ((remainder (nthcdr 2 form-categories))
         (edges (edges chain))
         (includes-s? (memq 's remainder)))
    (cond
      ((memq 'pp remainder) :in-relation)
      ((memq 'vp remainder) :object)
      (includes-s? :subject)
      (t (when (config-break)
           (break "another np-np case"))
         nil))))

(defun context-above-proper-noun-n-bar (form-categories chain)
  "prefix is (proper-noun n-bar)"
  (let* ((remainder (nthcdr 2 form-categories))
         (edges (edges chain))
         (next (car remainder))
         (includes-s? (memq 's remainder)))
    (cond
      ((eq next 'n-bar)
       (position-in-np (first edges) (second edges)))
      ((or (memq 'vp remainder)
           (memq 'vp+ing remainder)
           (memq 'to-comp remainder)) :object)
      ((memq 'pp remainder) :in-relation)
      ((search '(np np) remainder) :subject)
      (includes-s? :subject)
      ((or (eq 'np (car remainder))
           (eq 'n-bar (car remainder)))
       (position-in-np (first edges) (second edges)))
      (t (when (config-break)
           (break "another proper-name+n-bar case"))
         nil))))
  
(defun context-above-proper-np (form-categories chain)
  "prefix is (proper-noun np)"
  (let* ((remainder (nthcdr 2 form-categories))
         (edges (edges chain))
         (next (car remainder))
         (includes-s? (memq 's remainder)))
    (cond
      ((eq next 'quotation)
       (position-in-np (first edges) (second edges)))
      ((matches-prefix form-categories '(proper-noun np pp)) :in-relation)
      ((eq 'transitive-clause-without-object (car remainder)) :object) ; marks questions
      ((eq 'subordinate-np (car remainder)) :subject)
      ((memq 'pp remainder) :in-relation)
      ((or (memq 'vp+ing remainder)
           (memq 'to-comp remainder)) :object)
      (includes-s? :subject)
      (t (when (config-break) (break "new proper-noun np case"))
         nil))))

(defun context-above-proper-np-np (form-categories chain)
  "prefix is (proper-noun np np). The configuration is determined
   by whats above that"
  (let* ((remainder (nthcdr 3 form-categories))
         (edges (edges chain))
         (next (car remainder))
         (includes-s? (memq 's remainder))
         (includes-vp? (memq 'vp remainder)))
    (case next
      (vp (if includes-s? :subject :object))
      (np (if includes-s? :subject :object))
      (pp :in-relation)
      ((vp+past to-comp) :object)
      (n-bar
       (cond (includes-vp? ;; add other vp cases here, then an s
              :object)
             (t (when (config-break) (break "new proper-np n-bar case"))
                nil)))
      (otherwise (when (config-break) (break "next: ~a" next))
                 nil))))

(defun context-above-proper-noun (form-categories)
  "The prefix is just (proper-noun)"
  (let* ((second (second form-categories))
         (third (third form-categories))
         (remainder (cdr form-categories))
         (includes-s? (memq 's remainder)))
    (case second
      (np
       (case third
         (pp :in-relation)
         (s :subject)
         (subordinate-np :subject)
         (n-bar
          (cond ((= 3 (length form-categories)) :np-head)
                ((memq 'vp+ing remainder) :object)
                ((memq 'pp remainder) :in-relation)
                (t (when (config-break)
                     (break "another pn,np,n-bar case"))
                   nil)))
         (otherwise (when (config-break)
                      (break "second: ~a  third: ~a" second third))
                    nil)))
      (proper-noun
       (cond ((memq 'pp remainder) :in-relation)
             (t (when (config-break) (break "proper-noun"))
                nil)))
      (s :subject)
      ((vp vp+past vp+ing to-comp) :object)
      (pp :in-relation)
      (n-bar
       (cond ((memq 'vp+ing remainder) :object)
             (t (when (config-break) (break "n-bar"))
                nil)))
      (otherwise (when (config-break)
                   (break "second label above np is ~a" second))
                 nil))))


(defun context-above-common-noun (form-categories chain)
  "prefix is (common-noun)"
  (let* ((second (second form-categories))
         (third (third form-categories))
         (edges (edges chain))
         (remainder (cdr form-categories))
         (includes-s? (memq 's remainder)))
    (cond
      ((eq third 'than-np) :object) ;// call out the comparative?
      ((and (eq second 'possessive) (eq third 'possessive)) :subject) ; ??
      ((or (memq 'vp+past remainder)
           (memq 'to-comp remainder)
           (memq 'vp remainder))
       :object)
      ((memq 'pp remainder) :in-relation)
      (includes-s? :subject)
      ((or (memq 'np remainder)
           (eq third 'parentheses))
       (position-in-np (first edges) (second edges)))
      (t
        (when (config-break)
          (break "above-common-noun: ~a" form-categories))
        nil))))



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
      (position-in-np edge np-edge))))

(defun position-in-np (target-edge covering-np-edge)
  (if covering-np-edge
    (let ((left (edge-left-daughter covering-np-edge))
          (right (edge-right-daughter covering-np-edge)))
      (push-debug `(target-edge covering-np-edge))
      (cond
        ((eq target-edge left) :np-modifier)
        ((eq target-edge right) :np-head)
        ((eq right :long-span) :np-head) ; sdm-span edges
        (t (when (config-break)
             (break "convering-edge: ~a" covering-np-edge))
           nil)))))
  


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


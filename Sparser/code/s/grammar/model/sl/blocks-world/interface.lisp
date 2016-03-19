;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "interface"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  March 2016

;; Initiated 1/2/16.

(in-package :mumble)

#| The entry point sexp-reader decodes a "message" s-expression that
specifies a simple utterance (see "test-messages file) and returns
a dtn that has been wrapped in a discourse unit. 
|#


;;--- Entry point for 'messages' -- the sexps we expect TRIPS to route

(defun sexp-reader (sexp)
  "sexp in, dtn out"
  ;; 1st get the symbols in our package
  (setq sexp (launder-sexp-symbols-package sexp (find-package :mumble)))

  ;; 2. for specific individuals, retrive them from their keyword form
  (setq sexp (launder-sexp-to-dereference-keywords sexp))

  ;; 3. Start our turn
  (start-next-turn :speaker sp::*me*)

  ;; 4. Unpack the rest of the sexp.
  (let* ((speech-act (car sexp)))
    (if (standalone-speech-act speech-act)
      (do-standalone-speech-act speech-act)
      (let ( elaborations core )
        ;; e.g. (propose-goal (put :o1 block :o2 (location on :the-table)))
        (loop for item in (cdr sexp)
          when (symbolp item) do (push (mumble-symbol item) elaborations)
          when (consp item) do (setq core item))

        (let ((dtn (interpret-sexp-core core)))
          ;; interpret the core sexp to produce a DTN

          ;; Does the speech act dictate the large-scale form
          ;; of the utterance? Do the elaborations modulate or
          ;; add to that?
          (setq dtn (instantiate-speech-act dtn speech-act elaborations))

          ;; Wrap the whole thing in a sentence. 
          ;;/// this is the wrong level to do this at, since in the
          ;; interesting cases we have several sexp and need to provide
          ;; a discourse structure to embed them in or for that matter,
          ;; however, to fold one element within the realization of another
          ;; like the "however" in this sentence
          (discourse-unit dtn))))))


(defun interpret-sexp-core (core-sexp) ;; (build :o staircase)
  (let* ((operator (car core-sexp))
         (pairs (cdr core-sexp))
         (phrase (get-lexicalized-phrase operator)))
    (unless phrase
      (error "Undefined term? Cannot retrieve a lexicalized ~
              resource for the operator ~a" operator))
    (let ((dtn (make-dtn :resource phrase
                         :referent core-sexp)))
      ;; fill the variables, constructing DTNs for their values
      (recursively-expand-tree dtn pairs)
      ;; To do: If any remain unbound, see if the context permits it
      dtn)))


#| Walk through the paramter assignments and look at the
values. One of the goals is to ensure expressibility, but
that isn't really going to work without adopting something
more along the lines of McDonald 1998 and McDonald & Greenbacker 2010. 
  For CwC the values are unlikely to be deep, so the
'recursive' part of this routine can probably be ignored.
For now just worry about the planning of references.
|#
(defun recursively-expand-tree (dtn parameter-value-plist)
  ;; Here we'd keep track of the relation to the DTN of
  ;; the value we're realizing ('expanding'). And its place
  ;; in the context of the discourse too. 
  (do ((parameter-name (car parameter-value-plist) (car rest))
       (value-exp (cadr parameter-value-plist) (cadr rest))
       (rest (cddr parameter-value-plist) (cddr rest)))
      ((null parameter-name))
    (let ((parameter (parameter-named 
                      (mumble-symbol parameter-name))) ;; flush keyword
          (value (expand-value value-exp))) ;; does all the work
      (assert parameter)
      (unless value
        (push-debug `(,value-exp))
        (error "No reaization returned for ~a" value-exp))
      (make-complement-node parameter value dtn))))


#| Symbols are assumed to be the names of categories and
are realized as indefinite nps ("a block") [[ a/any goes here ]]
Real things in the world such as particular blocks or the table 
are represented by their Krisp individuals. Lists are for locations
or collections.
|#
(defun expand-value (value-exp)
  (typecase value-exp
    (cons
     (plan-reference-to-composite value-exp)) ;; dispatch
    (symbol
     (assert (sparser::category-named value-exp))
     (plan-reference-to-category value-exp))
    (sparser::individual
     (plan-reference-to-individual value-exp))
    (otherwise
     (error "Unanticipated type of value expression: ~a~%~a"
            (type-of value-exp) value-exp))))


(defun plan-reference-to-composite (sexp)
  (let ((operator (car sexp)))
    (assert (member operator '(location collection)))
    (ecase operator
      (location
       (plan-reference-to-prepositional-location sexp))
      (collection ;; (collection ,*b1* ,*b2*)
       (create-collection-and-refer-to-it (cdr sexp))))))


;; (location on ,*the-table*)
(defun plan-reference-to-prepositional-location (sexp)
  (let* ((prep-pname (cadr sexp))
         (prep (find-word prep-pname))
         (comp-sexp (caddr sexp))
         (comp-dtn (expand-value comp-sexp)))
    (assert prep)
    (assert comp-dtn)
    ;; build the pp by hand. When parsing we can have
    ;; prepositions that project typed complements
    ;; but before that there's no point in reifying them
    (let* ((phrase (phrase-named 'pp))
           (dtn (make-dtn :referent sexp :resource phrase))
           (c-prep (make-instance 'complement-node
                     :phrase-parameter (parameter-named 'p)
                     :value prep))
           (c-comp (make-instance 'complement-node
                     :phrase-parameter (parameter-named 'prep-object)
                     :value comp-dtn)))
      (push c-prep (complements dtn))
      (push c-comp (complements dtn))
      dtn)))

  

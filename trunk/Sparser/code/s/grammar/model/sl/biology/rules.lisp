;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "rules"
;;;  Module: "grammar/model/sl/biology/
;;; version: May 2015

;; Initiated 1/16/15 by lifting from other files.
;;  1/19/2015 put in rule for (not adjective) -- but doesn't seem to be found -- need help from David
;; 4/24/2015 correct spelling from redidue to residue
;; 4/27/2015 add new mechanism for sub-cat like interpretation where the PP obj becomes the head, 
;;  using the syntactic-function interpret-pp-as-head-of-np
;;  this is actually for phrases like "a phosphoserine at residue 827"
;;; 5/3/2015 ugly TEMPORARY (triaged) solution for "can then" as in "MAPK phosphorylates ASPP2 which can then relocate to..."
;; drop the "then" on the floor
;; 5/8/2015 handle "in vitro" and "in vivo" as VP post-modifiers
;; 5/16/2015 correct erroneous binding on rule (def-cfr residue-on-protein (protein residue-on-protein)
;;   discovered while producing MITRE index cards
;; 5/29/15 moved in rules that were in verbs1
;; 5/30/2015 update for change from "predicate" to "bio-predication"
;; Temproarily remove David's new debris-analysis rule (define-debris-analysis-rule s-and-vp
;;  until the corresponding function is checked in



(in-package :sparser)

;;; ugly TEMPORARY (triaged) solution for "can then" as in "MAPK phosphorylates ASPP2 which can then relocate to..."
;; drop the "then" on the floor

(def-cfr modal (modal then)
  :form modal
  :referent (:head left-edge))


;;; 'free' variables

(define-lambda-variable 'trailing-parenthetical
  'parentheses ;; value restriction
  category::expressible-type) ;; overly high type bound to.
;; used by knit-parens-into-neighbor 


;;; debris analysis rules

(define-debris-analysis-rule comma-adverb-comma
  :pattern ( "," adverb "," )
  :action (:function respan-edge-around-one-word second first third))

#+ignore
(define-debris-analysis-rule s-and-vp
  :pattern ( s and vp )
  :action (:function conjoin-clause-and-vp first third))



;;; no-space pattern


;; (p "in the 'off' state.")
(define-no-space-pattern scare-quotes
  :acceptance-function cover-scare-quotes
  :transition-net ((:initial + "'" -> :single-quote-seen)
                   (:single-quote-seen + word -> :single-quote-word)
                   (:single-quote-word + "'" -> :both-scare-quotes-seen))
  :accept-states ( :both-scare-quotes-seen ))

(defun cover-scare-quotes (start-pos end-pos q1 word q2)
  ;; The start-pos is just before the left quote. The end-pos is
  ;; just after it. The q's are the word quote. 
  (push-debug `(,start-pos ,end-pos ,q1 ,word ,q2))
  ;; The search was over words. Now have to look for 
  ;; the strongest edge over the word.
  (let* ((word-pos (chart-position-after start-pos))
         (ev (pos-starts-here word-pos))
         (edge (highest-edge ev)))
    (respan-edge-around-one-word edge q1 q2)))


;;/// move somewhere else
(defun respan-edge-around-one-word (word-edge left-term right-term)
  (let ((word-category (edge-category word-edge))
        (word-form (edge-form word-edge))
        (word-referent (edge-referent word-edge))
        (new-start-pos (chart-position-before (pos-edge-starts-at word-edge)))
        (new-end-pos (chart-position-after (pos-edge-ends-at word-edge))))
    (let ((edge (make-completed-unary-edge
                 ;; We're ignoring the commas in the edge structure
                 ;;/// this is usually an interjection, how could we
                 ;; indicate that
                 (pos-starts-here new-start-pos) ;; the edge vector
                 (pos-ends-here new-end-pos)
                 :respan-edge-around-one-word ;; rule
                 word-edge ;; daughter
                 word-category 
                 word-form
                 word-referent)))
      (setf (edge-constituents edge) `(,left-term ,word-edge ,right-term))
      ;; (push-debug `(,edge)) (break "look at edge")
      edge)))


;;; Type-markers

(defparameter *trap-needed-extensions-to-type-marker* nil)

(def-k-method compose ((i bio-entity) (marker type-marker))
  ;; So far triggered from noun-noun-compound with a phrase
  ;; like "the Ras protein"
  (push-debug`(,i ,marker)) ;;(break "type-marker compose")
  (let ((category (itype-of marker)))
    (or (itypep i category)
        (case (cat-symbol category)
          ;(pathway
          ; (
          (otherwise
           (when *trap-needed-extensions-to-type-marker*
             (push-debug `(,i ,marker ,category ,(parent-edge-for-referent)))
             (error "Haven't defined a constructor for the ~
                     type-marker ~a" category)))))
    i))

;;--- a type rule

(def-cfr enzyme (bio-process enzyme)
  :form n-bar
  :referent (:head right-edge :function passive-premodifier left-edge right-edge patient))





;;; raw rules
;; invitro and in vivo
(loop for vv in '((vp vp)
                  (vg vp)
                  (vp+ed vp+ed)
                  (vg+ed vp+ed)
                  (verb+ed vg+ed) ;; somehow "phosphorylated" stops being elevated
                                  ;; to vg+ed after we run the June corpus
                  (vp+ing vp+ing)
                  (vg+ing vp+ing))
  do
  (eval
   `(def-form-rule (,(car vv) in-vitro)
                  :head :left-edge
     :form ,(second vv)
     :referent(:function interpret-vp+in-vi-context left-edge right-edge)))
  (eval
   `(def-form-rule (,(car vv) in-vivo)
                  :head :left-edge
     :form ,(second vv)
     :referent(:function interpret-vp+in-vi-context left-edge right-edge))))


;;--- amino acids
; These are bare rules that could be converted to an ETF
; (or several) that captures these composition possibilities
; for a complex noun-headed phrase. 

;; Gly33
(def-cfr residue-on-protein (amino-acid number)
  :form proper-noun
  :referent (:head left-edge
             :instantiate-individual residue-on-protein
             :with (amino-acid left-edge
                    position right-edge)))

;; "Lys residues"
(def-cfr residue-on-protein (amino-acid residue-on-protein)
  :form n-bar
  :referent (:head right-edge
             :bind (amino-acid left-edge)))

;; residues 104 and 147
(def-cfr residue-on-protein (residue-on-protein number)
  :form n-bar
  :referent (:head left-edge
             :bind (position right-edge)))

(def-cfr residue-on-protein (residue-on-protein hyphenated-number)
  :form proper-noun
  :referent (:head left-edge
             :instantiate-individual residue-on-protein
             :with (amino-acid left-edge
                    position right-edge)))

(def-cfr residue-on-protein (protein residue-on-protein)
  :form np
  :referent 
  (:head right-edge           
         :bind (on-protein left-edge)))

;; p38 kinase
(def-cfr protein (protein kinase)
  :form np
  :referent (:head left-edge))

(def-form-rule (amino-acid pp) ;; phosphoserine at residue 827
  :form np 
  :referent (:function interpret-pp-as-head-of-np left-edge right-edge))

#+ignore ;; replaced with :of on the class realization
(def-cfr of-protein (of protein)
  :form pp
  :referent (:daughter right-edge))

#+ignore ;; replaced with :of on the class realization
(def-cfr residue-on-protein (residue-on-protein of-protein)
  :form n-bar
  :referent (:head left-edge
             :bind (on-protein right-edge)))



;;--- mutation
; "EGFR T669A"
; "the EGFR T669A mutant"
#+ignore
(def-cfr protein (protein point-mutation)
  :form NP
  :referent (:instantiate-individual mutated-protein
             :with (protein left-edge
                    mutation right-edge)))

(def-cfr protein (protein point-mutation)
  :form NP
  :referent (:head left-edge
             :bind (mutation right-edge)))


(def-csr bio-entity protein
  :left-context mutant
  :form proper-noun
  :referent (:function convert-bio-entity-to-protein right-edge))

(defun convert-bio-entity-to-protein (bio-entity)
  (push-debug `(,bio-entity)) ;;(break "convert bio-entity"))
  bio-entity)


(define-category is-bio-entity
  :specializes bio-predication
  :binds ((entity biological)
          (predication biological)))

(def-cfr IS-BIO-ENTITY (be biological)
  :form vp
  :referent (:instantiate-individual is-bio-entity
                :with (predication right-edge)))

(def-cfr is-bio-entity (biological is-bio-entity)
  :form s
  :referent (:head right-edge
                   :bind (entity left-edge)))



;;--- expediency

(def-cfr rate-of-process (rate-of-process-of release)
  ;;//// The semantic-composition based on 'release' being 
  ;; a subtype of 'process' is not working. This is an
  ;; expedient in the meantime. 
  ;; See rules in measurements.lisp that want to be in 
  ;; a fancy ETF.
  :form np
  :referent (:head left-edge
             :bind (process right-edge)))


;;--- form, expediency

#|
;; now in syntactic-rules, producing a subject-relative-clause
(def-form-rule (that vg)
  :form relative-clause
  :referent (:daughter right-edge))

(def-form-rule (that vp)
  :form relative-clause
  :referent (:daughter right-edge))
|#


(def-cfr adverb (adverb comma)
  :form adverb
  :referent (:head left-edge))

(def-cfr semicolon (";")
  :form punctuation)

;; rules for in vitro and for premodifying adverbs like :recently"


(def-form-rule (S category::in\ vitro)
  :form s
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))


(def-form-rule (VP category::in-vitro)
  :form VP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))

(def-form-rule (vp+passive category::in-vitro)
  :form vp+passive
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))
#+ignore
(def-form-rule (NP category::in\ vitro)
  :form NP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))

(def-form-rule (S category::in-vivo)
  :form s
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))


(def-form-rule (VP category::in-vivo)
  :form VP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))


;;evidence that "in vivo" can modify an NP is from sentence 3 of the overnight test
;; "there are no proteins in vivo that might stabilize ..."
;; the relative clause is clearly part of the NP, and so the "in vivo" is likey to be

;; Unfortunately, there is no obvious way to restrict the applicability of this rule to 
;; NPs which have a "context" variable!
#+ignore
(def-form-rule (NP category::in\ vivo)
  :form NP
  :head :left-edge
  :referent
  (:head left-edge
         :bind (context right-edge)))

(def-form-rule (time verb+ed) ;; to support "have recently shown"
  :form verb+ed
  :head :right-edge
  :referent (:head right-edge :bind (modifier left-edge)))
  
#+ignore ;; don't know why this is here -- it dies on "all the proteins"
(def-form-rule (quantifier biological) 
               :head :right-edge 
  :form n-bar ;; requires a determiner 
  :referent 
  (:head right-edge :bind (quantifier left-edge)))
 
#+ignore ;; don't know why this is here -- it dies on "all the proteins"                  
(def-form-rule (quantifier protein) 
               :head :right-edge 
  :form n-bar ;; requires a determiner 
  :referent 
  (:head right-edge :bind (quantifier left-edge)))
                   
(def-form-rule (not adjective) 
  :head :right-edge 
  :form adjective
  :referent 
  (:head right-edge :bind (negation left-edge)))



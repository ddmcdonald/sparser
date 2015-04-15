;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "phenomena"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2015

;; Initiated 12/28/14 to handle moderately complicated notions
;; like cell line and mutation. Conformation and isoform and such
;; would go here. Reorganizes some items in terms. Incremental
;; extensions through 1/6/15
;; 1/9/2015 give ubiquitinate a site variable, and define "pro-apoptotic" as a subclass of "apoptotoic"
;; 1/14/2015 tweaks on N and C-terminus
;; 2/15/15 trying to make some headway with ubiquitination

(in-package :sparser)

(define-realization-scheme pre-mod premodifier-adds-property 
  ;; used in quarter -- as are a number of other np patterns
  :head :common-noun
  :mapping ((property . modifier-slot)
            (np-head . :self)
            (modifier . modifier-v/r)))
;///// This is here because it was "forgotten" by the time we needed
; to use it (e.g. in signaling. Maybe the symbol was overwritten ?



(define-category modified-protein
  :specializes protein
  :instantiates protein
  :rule-label protein
  :documentation "Intended as representation of proteins
    with one or more post-translational modifications."
  :index (:temporary :sequential-keys protein modification)
  :binds ((protein (:or protein human-protein-family))
          (modification protein))) ;; hack for mUbRas

(define-category mutated-protein
  :specializes modified-protein
  :instantiates protein
  :rule-label protein
  :index (:temporary :sequential-keys protein modification)
  :binds ((protein protein)
          (mutation point-mutation)))


;;---------- signalling 
;; (setq *break-on-illegal-duplicate-rules* t)
; The def-synonym call is creating a rule it should be able
; to lookup and reuse because the lhs and rhs are eq/equal
; but the reuse existing rule case isn't being taken and
; it's instead mis-construed as a duplicate, which should
; require a different lhs. 

;; "RAS signalling"
;; a new mode of Ras activation in which signaling is sustained ...
(define-category signal
  :specializes bio-process
  ;;//// bind it explicitly? :obo-id "GO:0023052"  ;; reasonable stand-in
  :binds ((agent protein) ;;bio-entity) ;; what's doing the signalling
          (object bio-process))  ;; what's being signaled
  :index (:permanent :key agent) ;; 
  :realization 
    (:verb "signal"  
     :noun "signaling"
     :etf (svo-passive pre-mod)
     :m agent
     :s agent 
     :o object))

(def-synonym signal ;; Jan.#26
  (:noun "signalling" 
   :etf pre-mod
   :m agent))


;;;----------
;;; ubiqutin 
;;;----------

; monoubiquitination increases the population 
;;  this process has this effect

; the enzymatic and chemical ubiquitination linkers 
; the monoubiquitinated and unmodified fractions of Ras
; the sensitivity of mUbRas
; our ability to easily generate mUbRas

; the c–terminus of Ubiquitin (Ubiquitin C77)
; Ras ligated to Ubiquitin C77
; ligated to Ubiquitin G76C. <--- point mutation

(def-bio "ubiquitin" protein)
;; not strictly true, but a reasonable approximation. 

(define-category ubiquitinate 
 :specializes bio-process 
 :binds ((agent biological) ;; what causes it to happen
         (substrate protein) ;; which protein now has ubiquitin on it
         (site residue-on-protein)) ;; which is attached here
  :realization 
    (:verb "ubiquitinate" 
     :etf (svo-passive) 
     :s agent 
     :o substrate
     :at site))

;;;------------------------------
;;; mUbRas, monoubitutinated Ras
;;;------------------------------
;;///// This is a process/result pattern. This verb results
;; in a protein that has been ubiquitinated. (Has one or
;; more ubiquitin molecules attached to it.
;; Need to do this systematically

;; In Baker et al.
;; "we did not separate monoubiquitinated Ras (mUbRas) from ..."
;; Jan #1 "the effect of Ras monoubiquitination on ...
;; ... effect of Ras monoubiquitination on ...
;; Resulting version of Ras after adding one ubiquitin. 

;; strictly for the rule-label
(define-category monoubiquitinate 
 :specializes bio-process )

(define-category  monoubiquitinated-protein
  :specializes modified-protein
  :instantiates self
  :bindings (modification (get-protein "ubiquitin"))
  ;;/// bindings go with a process, so this will need 
  ;; cleanup / merge when process/result is sorted out syntematically.
  :binds ((site residue-on-protein)
          ;; I dont' recall textual evidence for an agent
          ;; that causes the action (that leads to this result)
          ;; but the rule schema requires it
          ;; N.b. this is open in protein
          (agent biological))
  :documentation "Strictly speaking this is just a ubiquitinated
    protein since there no representation of the molecule count.
    I'd like another countable modification before venturing a
    conceptualization to use. Note that this is open in
    its value for the protein"
  :index (:permanent :key protein)
  :rule-label monoubiquitinate
  :realization 
  ;;/// only providing a realization for the result, not the process
  ;; that leads to the result
    (:verb "monoubiquitinate" 
     :noun "monoubiquitination"
     :etf (svo-passive pre-mod)
     :s agent 
     :o protein ;; "monoubiquitinated Ras"
     :m protein ;; Ras monoubiquitination
     :on protein ;; the effects of monoubiquitination on Ras are ...
          ;;/// that 'on' probably goes with 'effect'
     :at site))


(defun define-mUbRas ()
  ;; Defines the abbreviated form and creates the individual
  ;; that the composed form has to resolve to. 
  (let* ((ras (get-protein "Ras"))
         (i (find-or-make-individual 'monoubiquitinated-protein
               :protein ras))
         (word (resolve/make "mUbRas")))

    ;; want to pattern just like a vanila protein
    (let ((cfr (define-cfr category::protein `(,word)
                  :form category::proper-noun
                  :referent i)))
      (add-rule-to-individual cfr i)
      i)))

(eval-when (:compile-toplevel :load-toplevel :execute)
  (define-mUbRas))







  


;;;-------------------
;;; protein terminals
;;;-------------------

; "located in both N- and C-terminal regions of p100"
; "via the ASPP2 N-terminus"

; There are two terminals, N and C, and they only make
; sense in a technical article when they're tied to 
; a particular protein.
; Semantically these are 'regions' in that they talk about
; things happening in these places. "region" is defined in
; dossiers/location-kinds.lisp as a region-type

(define-category protein-terminus
  :specializes bio-location
  :instantiates :self
  :binds ((protein protein))
  :lemma ((:common-noun "terminal")
          (:common-noun "terminus"))
  :realization
  (:noun "terminal"
         :of protein))

;; not clear that we need a proper handling
;; of the molecule configuration, etc. that
;; differentiates N from C

(define-category N-terminal ;; amino-terminus
  :specializes protein-terminus
  :binds ((protein protein))
  :index (:permanent :key protein)
  :realization
    (:etf (pre-mod)
     :noun ("n-terminal" "n-terminus" "N-terminal" "N-terminus"
            "amino terminus")
     ;;:o protein
     :m protein
     :of protein))

(define-category C-terminal ;; carboxyl-terminus
  :specializes protein-terminus
  :binds ((protein protein))
  :index (:permanent :key protein)
  :realization
    (:etf (pre-mod)
     :noun ("c-terminal" "c-terminus" "C-terminal" "C-terminus") ; 
     ;;:o protein
     :m protein
     :of protein))


#|The convention for writing peptide sequences is 
to put the N-terminus on the left and write 
the sequence from N- to C-terminus. When the 
protein is translated from messenger RNA, 
it is created from N-terminus to C-terminus.|#



;;;----------
;;; Pathways
;;;----------
; diverse signaling pathways
; specific effector pathways
; specific effector pathway(s)
; the Raf/MEK/ERK pathway
; MAPK pathway inhibitors / inhibition

(define-category  pathway
  :specializes bio-entity
  :instantiates :self
  :mixins (type-marker biological)
  :binds ((protein-sequence sequence))
  :index (:permanent :key name)
  :lemma (:common-noun "pathway")
  :realization (:common-noun name)
  :documentation "Pathways are inhibited and activated
   which makes them more like entities than processes.
   They are named according to the sequence of proteins
   (protein families) in the causal chain.")

(define-category signaling-pathway
   :specializes pathway
   :instantiates :self
   :realization
  (:noun "signaling pathway"))


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
      (let ((i (find-or-make-individual 'pathway :name name)))
        ;;/// make a lowercase version?
        (bind-variable 'protein-sequence sequence i)
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



(define-category step
  :specializes bio-process
  :instantiates :self
  :index (:permanent :key name)
  :binds ((pathway pathway))
  :lemma (:common-noun "step")
  :realization (:common-noun name))



;;;-------------------------------
;;; transcription and its control
;;;-------------------------------
; the ZFN217 transcription factor
; Wikipedia for 'transcription factor'
;    factor – a substance, such as a protein, that contributes to 
;      the cause of a specific biochemical reaction or bodily process
; and CtBP1/CtBP2 corepressors, CtBPs
; the HER3 promoter
; expression of HER3
; inhibition of HER3 transcription
; "enhances the transcription function of p53"

;;;-----------
;;; Apoptosis
;;;-----------
; "RAS can enhance the apoptotic function of p53"
; intracellular apoptotic signaling
; apoptotic signals
; the apoptosis pathway

;;(noun "apoptosis" :super bio-process)
;;(adj "apoptotic" :super apoptosis) 


(define-category apoptosis ;; aka cell death
  :specializes bio-process
  :binds ((process bio-process))
  :realization
  (:etf pre-mod
        :noun "apoptosis" :adj "apoptotic"
        :m process))

(adj "pro-apoptotic" :super apoptosis)


;;;--------------
;;; aggregations
;;;--------------

(define-category bio-aggregate 
  :specializes aggregate
  ;; can drop the 'bio-', but it lets us play with the
  ;; notion before we promote that behavior to the upper str.
  :mixins (sequence biological))
#| This would be a good level at which to site a method that
meditated whether or not we distributed the components of
the aggregate across the predicate it's in. |#

(define-category bio-pair
  :specializes bio-aggregate 
  :binds ((left)
          (right))
  :index (:sequential-keys left right))

(define-category protein-pair
  :specializes bio-pair
  :binds ((left (:or protein bio-family nucleotide))
          (right (:or protein bio-family nucleotide)))
  :index (:sequential-keys left right))

(define-category amino-acid-pair
  :specializes bio-pair
  :binds ((left amino-acid)
          (right amino-acid))
  :index (:sequential-keys left right))



;;; translocation 

; (p "ERK Nuclear Translocation Is Dimerization-independent but Controlled by the Rate of Phosphorylation.")
; (p "Upon activation, ERKs translocate from the cytoplasm to the nucleus.")
; "the molecular mechanisms that regulate ERK nuclear translocation 
;     are not fully understood."
; that ERK1 nuclear accumulation increased
; (process on ERK) ... a requirement for nuclear translocation."
; ERK1-4 ... accumulated in the nucleus to the same level as ...
; 11: is directly translated into a delay in nuclear translocation




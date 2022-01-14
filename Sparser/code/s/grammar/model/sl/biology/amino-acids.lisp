;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "amino-acids"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2017

;; initiated 9/8/14
;; RJB -- added hacks for problems with NS word finding of"S338" and "pThr202/Tyr204"
;; 1/9/15 finished point mutation with fanout into single character amino
;; acids
;; 1/15/2015 put both words and single-capitalized-letters as keys in amino acid 
;;    table (to correctly handle C77), also added rule for "ubiquitin C77"
;; 2/15/15 Defined phosphorylated amino acids. Needs the hyphen variants.
;; 4/24/2015 added definition of "position" as a synonym for residue on protein
;;  this is the only use of "position" in the corpora so far
;; "Furthermore, this outcome was specific to monoubiquitination at position 147."
;; 4/27/2015 add new mechanism for sub-cat like interpretation where the PP obj becomes the head, 
;;  using the syntactic-function interpret-pp-as-head-of-np
;;  this is actually for phrases like "a phosphoserine at residue 827"
;; 5/4/2015 Deal with the fact that "a" is a word, and so the right way to get the #<word "A">
;;  needed for single-letter-is-amino-acid in reify-point-mutation-and-make-edge is to call
;; edge-left-daughter on the edge (not edge-referent)
;; 5/13/2015 fix handling ov numbers in reify-point-mutation-and-make-edge
;; debug handling of word object for number in reify-point-mutation-and-make-edge
;; 6/1/2015 added flagged break on bad residues (ones which do not have a numeric position)
;; 10/29/15 doing phosphorylated residues. 11/19/15 another residue case.

(in-package :sparser)

;;;-------------
;;; amino acids
;;;-------------

(define-category amino-acid
  :specializes molecule
  :instantiates :self
  :binds ((three-letter-code :primitive word)
          (one-letter-code single-capitalized-letter))
  :index (:permanent :key name)
  :lemma (:common-noun "amino acid") ;;/// optionally-hyphenated pw
  :realization (:common-noun name))


#| To make sense of a mutation identifier we need to be able to
decipher the three-letter and one-letter codes. The three letter
codes can probably be free-standing words, but the one letter
ones are gratuitously ambiguous with capitalized initials.
|#

(defparameter *single-letters-to-amino-acids* (make-hash-table))

(defun single-letter-is-amino-acid (one-letter-word)
  "We have a single letter word in our hand. If it is in the table
   then return the corresponding amino acid"
  (gethash one-letter-word *single-letters-to-amino-acids*))

(defun single-letter-word-for-amino-acid? (single-letter)
  "We have a word that's one character long in our hand, and it probably
   has a capitalized variant, but we have to check"
  (let* ((variants (word-capitalization-variants single-letter))
         (capitalized-letter (when variants (car variants)))) ;; only one possibility
    (single-letter-is-amino-acid capitalized-letter)))


(defun def-amino-acid (long three one)
  (let* ((long-word (resolve/make long))
         (i (find-or-make-individual 'amino-acid :name long-word)))
    (let* ((three-letter-word (resolve/make three))
           (caps-three-letter-word (resolve/make (string-capitalize three)))
           (one-letter-word (resolve/make one))
           (lc-one-letter-word
            (unless (equal one "I")
              ;;  this clobbers the definition of the pronoun -- DAVID -- HELP!
              (resolve/make (string-downcase one))))
           (one-letter-object
            (find-individual 'single-capitalized-letter 
                             :letter one-letter-word))
           (3-letter-rule
            (define-cfr category::amino-acid `(,three-letter-word)
              :form category::common-noun
              :referent i))
           (caps-3-letter-rule
            (define-cfr category::amino-acid `(,caps-three-letter-word)
              :form category::common-noun
              :referent i)))
      (unless one-letter-object
        (push-debug `(,one-letter-word))
        (break "could not retrieve capitalized-letter"))
      (add-rule 3-letter-rule i)
      (add-rule caps-3-letter-rule i)
      (unless (equal one "I")
        ;;  this clobbers the definition of the pronoun -- DAVID -- HELP!
        (eval
         `(def-cfr residue-on-protein (,lc-one-letter-word number)
          :form np
          :referent (:function create-residue-from-amino-acid-position left-edge right-edge)))
        (setf (gethash lc-one-letter-word *single-letters-to-amino-acids*) i))
      (setf (gethash one-letter-object *single-letters-to-amino-acids*) i
            (gethash one-letter-word *single-letters-to-amino-acids*) i
            (get-tag :one-letter-code i) one
            (get-tag :three-letter-code i) three)
      i)))

;; copied from bio;rules.lisp and then turned off for Acumen
(defun create-residue-from-amino-acid-position (amino-acid position)
  (if *subcat-test*
    (null *acumen*)
    (create-residue-on-protein nil amino-acid position nil)))
 
;; List from http://www.cryst.bbk.ac.uk/education/AminoAcid/the_twenty.html
(def-amino-acid "alanine" "ala" "A")
(def-amino-acid "arginine" "arg" "R")
(def-amino-acid "asparagine" "asn" "N")
(def-amino-acid "asparagine/aspartic acid" "asx" "B")
(def-amino-acid "aspartic acid"  "asp" "D")
(add-rules (make-rules-for-head :common-noun (resolve/make "aspartate") 
                                category::amino-acid
                                (find-individual 'amino-acid :name "aspartic acid"))
            (find-individual 'amino-acid :name "aspartic acid"))
(def-amino-acid "cysteine" "cys" "C")
(def-amino-acid "glutamine" "gln" "Q")
(def-amino-acid "glutamic acid" "glu" "E")
(def-amino-acid "glutamine/glutamic acid" "glx" "Z")
(def-amino-acid "glycine" "gly" "G")
(def-amino-acid "histidine" "his" "H")
(def-amino-acid "isoleucine" "ile" "I")
(def-amino-acid "leucine" "leu" "L")
(def-amino-acid "lysine" "lys" "K")
(def-amino-acid "methionine" "met" "M")
(def-amino-acid "phenylalanine" "phe" "F")
(def-amino-acid "proline" "pro" "P")
;;(def-amino-acid "selenocysteine" "U")
(def-amino-acid "serine" "ser" "S")
(def-amino-acid "threonine" "thr" "T")
(def-amino-acid "tryptophan" "trp" "W")
(def-amino-acid "tyrosine" "tyr" "Y")
(def-amino-acid "valine" "val" "V")

#|
Sometimes it is not possible to differentiate two closely related amino acids.
We therefore have the special cases:
  asparagine/aspartic acid - asx - B
  glutamine/glutamic acid - glx - Z
|#

;;;-------------
;;; nucleotides
;;;-------------



;;;-------------------
;;; numbered residues
;;;-------------------
;; see the sequence ontology
;; ; (p "before Ser1507)
;; See also rules for recognizing residues in rules.lisp

;; moved residue-on-protein into taxonomy since it is needed in verbs1.lisp

(defparameter *break-on-bad-residues* nil)

(defun reify-residue-and-make-edge (start-pos end-pos)
  ;; called from the no-space pattern machinery when the
  ;; pattern is (:single-cap :digits) and it's possible that
  ;; that first word is the short form af an amino acid.
  ;; Return nil if this doesn't work out
  ;; (setq words (car *) start-pos (cadr *) end-pos (caddr *))
  (let* ((words (effective-words-given-edges start-pos end-pos))
         (single-letter (car words))
         (variants (word-capitalization-variants single-letter))
         ;; given this pattern, there will only be one if there is one
         (capitalized-letter (when variants (car variants)))
         (digit-word (cadr words))
         (number (get-tag :numerical-value digit-word)))
    (flet ((find-aa-edge (start-pos)
             (right-treetop-at/edge start-pos)))
      ;; "S" is the abbreviation for "south" when compass-points are loaded.
      ;; By chance the single-capitalized letter we want it topmost.
      (when (and capitalized-letter number)
        (let ((amino-acid (single-letter-is-amino-acid capitalized-letter))
              (aa-edge (find-aa-edge start-pos))) ;; left
          (when amino-acid
            (when (or (null aa-edge)
                      (not (edge-p aa-edge)))
              ;; fall through to caller's next option
              ;; Get this with "q27" where we presumed the 'q' was an AA,
              ;; but it's the lowercase letter which does not denote glutamine
              (return-from reify-residue-and-make-edge nil))
            (reify-residue
             aa-edge
             (or (top-edge-at/ending end-pos) ;; right
                 (make-edge-over-single-digit-word
                  (chart-position-before end-pos)))
             start-pos end-pos
             amino-acid number)))))))

(defun reify-residue (amino-acid-edge number-edge start-pos end-pos
                      &optional amino-acid number)
  ;; Called drectly from one-hyphen-ns-edges with just the edges
  ;; or from single letter pattern just above
  (when (and amino-acid-edge number-edge)
    ;; avoid error in "was mapped to chromosome 4q25–q27."
    ;;  where q27 is treated like a residue...
    (unless amino-acid
      (setq amino-acid (edge-referent amino-acid-edge)))
    (unless number
      (setq number (edge-referent number-edge)))
    (let* ((residue (make-residue-on-protein amino-acid number))           
           (edge (make-chart-edge
                  :left-edge amino-acid-edge
                  :right-edge number-edge
                  :starting-position start-pos
                  :ending-position end-pos
                  :category category::residue-on-protein
                  :form category::n-bar ;; must be n-bar, otherwise it will not act as a premodifier in an NP
                  :rule-name :reify-residue
                  :referent residue)))
      edge)))


(defun make-residue-on-protein (amino-acid number-exp)

  ;; Open-code the find-or-make to put under microscope
  #|  (find-or-make-individual 'residue-on-protein
                           :amino-acid amino-acid
                           :position number) |#
  (let* ((res (fom-lattice-description category::residue-on-protein))
	 (number (typecase number-exp
                  (number (find-or-make-number number-exp))
                  (word (find-or-make-number number-exp))
                  (individual
                   (unless (itype number-exp 'number)
                     (error "individual should be of type number"))
                   number-exp))))
    (setq res (bind-dli-variable :amino-acid amino-acid res))
    (setq res (bind-dli-variable :position number res))
    res))


;;;------------------------------------
;;; amino acid combinations/composites
;;;------------------------------------
;  russ: "the four serine/threonine residues" ... "these serine/threonine residues"

(define-category amino-acid-pair
  :specializes bio-pair
  :binds ((left amino-acid)
          (right amino-acid))
  :rule-label amino-acid
  :index (:permanent :sequential-keys left right)
  :documentation "There are larger and more varied groups of
   amino acids, but a pair is sufficiently frequent and easily
   recognized that it deserves its own reprsentation.")

(defun find-or-make-amino-acid-pair (first second)
  (find-or-make-individual 'amino-acid-pair
    :left first
    :right second))
  
(defun reify-amino-acid-pair (start-pos end-pos
                              &aux (words (words-between start-pos end-pos)))
  ;; called from one-slash-ns-patterns for the pattern
  ;; `(:lower :forward-slash :lower). If we aren't one of these
  ;; we return nil and it goes on to its next choice
  ;;(push-debug `(,words)) (break "a/a check")
  (let* ((word-one (car words))
         (word-three (third words))
         (aa-1 (find-individual 'amino-acid :name word-one))
         (aa-2 (find-individual 'amino-acid :name word-three)))
    (when (and aa-1 aa-2)
      (let ((pair (find-or-make-amino-acid-pair aa-1 aa-2)))
        (let* ((left-edge (right-treetop-at/edge start-pos))
               (right-edge (left-treetop-at/edge end-pos))
               (edge (make-chart-edge
                      :left-edge left-edge
                      :right-edge right-edge
                      :starting-position (pos-edge-starts-at left-edge)
                      :ending-position (pos-edge-ends-at right-edge)
                      :category category::amino-acid
                      :form category::np
                      :rule-name :reify-amino-acid-pair
                      :referent pair)))
          edge)))))



;;;----------------------------
;;; phosphoeylated amino acids
;;;-----------------------------

;;  "pThr202/Tyr204"  ;; December 46

(define-category phosphorylated-amino-acid
  :specializes amino-acid
  :rule-label amino-acid
  :binds ((modified-amino-acid amino-acid))
  :index (:permanent :key amino-acid))

(defmacro def-phospho-amino-acid (acid &rest names)
  `(def-phospho-amino-acid/expr ,acid ',names))
(defun def-phospho-amino-acid/expr (name-of-aa p-names)
  (let ((aa (find-individual 'amino-acid :name name-of-aa))
        (first-name (car p-names))
        rules )
    (unless aa
      (error "Can't retrieve an amino acid named ~a" name-of-aa))
    (let* ((first-name (resolve/make first-name))
           (i (find-or-make-individual 'phosphorylated-amino-acid
                  :modified-amino-acid aa :name first-name)))
      ;; Order of definition in the bindings determines whether
      ;; we can retrive the individual with a find on the acid.
      ;;(push-debug `(,i ,aa)) (break "rule on i?")
      (dolist (string p-names)
        (let* ((word (resolve/make string))
               (rule (define-cfr category::amino-acid
                                 `(,word)
                       :form category::common-noun
                       :referent i)))
          (push rule rules)))
      (when rules
        (add-rules rules i))
      i)))
    
;; Wikipedia's phosphorylation entry says just these
(def-phospho-amino-acid "histidine" "phosphohistidine"
  "pHis" "phospho-histidine") ; 
(def-phospho-amino-acid "serine" "phosphoserine" 
  "pSer" "phospho-serine")
(def-phospho-amino-acid "threonine" "phosphothreonine"
  "pThr" "phospho-threonine")
(def-phospho-amino-acid "tyrosine" "phosphotyrosine"
  "pTyr" "phospho-threonine")


;;;-------------------------
;;; phosphorylated residues
;;;-------------------------

;; "p-S311"
;;/// Is this a vanila residue whose amino acid is phosphorylated?
;; or something different?

(defun reify-p-residue-and-make-edge (start-pos end-pos amino-acid digits)
  ;; called from one-hyphen-ns-patterns for (:little-p :hyphen :single-cap :digits)
  (push-debug `(,amino-acid ,digits))
  (let ((phospho-aa (find-individual 'phosphorylated-amino-acid
                                     :modified-amino-acid amino-acid))
        (number (find-or-make-number digits)))
    (unless phospho-aa
      (break "Why is there apparently no phorphorylated version of ~a"
             amino-acid))
    (push-debug `(,phospho-aa ,number))
    (let* ((i (find-or-make-individual 'residue-on-protein
                 :amino-acid phospho-aa :position number))
           (edge (make-edge-over-long-span
                  start-pos
                  end-pos
                  category::residue-on-protein
                  :rule 'reify-p-residue-and-make-edge
                  :form category::np
                  :referent i
                  :constituents (treetops-between start-pos end-pos))))
      edge)))

 
;;;-----------------
;;; point mutations
;;;-----------------
;;--- "mutation"
;; "mutated oncogenes"
;; "oncogenic mutations"
;; "in BRAF mutant thyroid cell"

(define-category mutation :specializes caused-bio-process
  :restrict ((object (:or protein gene molecular-location))
             ;; don't want "gene mutation" to have "gene" as agent
            (agent (:or bio-process bio-mechanism bio-method)))
  :realization
  (:verb "mutate" :noun "mutation" 
   :etf (svo-passive)
   :in object
   :into object
   :on location
   :to object
   :within location))

(define-mixin-category with-point-mutation
  :specializes adds-relation
  :binds ((new-amino-acid . amino-acid)
          (original-amino-acid . amino-acid)
          (position number)))

(define-category point-mutation :specializes mutation ;; amino-acid position on-protein
  :mixins (with-point-mutation)
  ;; if we had 'mutation' that might be better
  ;; but these do involve a particular residue
 ;; counting from the N terminus
  :lemma (common-noun "point mutation")
  :index (:permanent :sequential-keys new-amino-acid position))

(define-category point-mutated-protein :specializes protein
  :mixins (with-point-mutation))

(defun reify-point-mutation (pos-before pos-after)
  (let ((edges (treetops-between pos-before pos-after)))
    (unless (= 3 (length edges))
      (break "Should be three edges for a point mutation but we have ~s~%"
             (mapcar #'edge-referent edges))
      (return-from reify-point-mutation nil))
    ;; Capital letters will have Single-capitalized-letter's as referent.
    ;; Lowercase is much less predictable. 
    (let* ((edge1 (car edges))
           (word1 (edge-left-daughter edge1))
           (edge2 (cadr edges))
           (ref2 (typecase edge2
                   (edge (edge-referent edge2))
                   (word edge2)
                   (otherwise (error "Wrong type for point-mutation number."))))
           (edge3 (caddr edges))
           (word3 (edge-left-daughter edge3)))

      (let ((aa1 (single-letter-is-amino-acid word1))
            (aa2 (single-letter-is-amino-acid word3)))
        (when (and aa1 aa2)
          (let* ((number (find-or-make-number ref2))
                 (interp (make-point-mutation aa2 aa1 number))
                 (wd (resolve/make (actual-characters-of-word pos-before pos-after))))
            (def-cfr/expr category::point-mutated-protein
                (list wd)
              :form category::common-noun
              :referent interp)
            interp
            )))))) ;;edge1 edge2 edge3
;;/// this refactoring doesn't return the
;; edges that the edge-maker has wanted so its constituents
;; are cleanly indicated.
(defun reify-point-mutation-and-make-edge (pos-before pos-after
                                           &aux (words (words-between pos-before pos-after)))
  ;; Called from resolve-ns-pattern when the pattern is either
  ;; '(:single-cap :digits :single-cap) or '(:single-lower :digits :single-lower)
  (let ((i (reify-point-mutation pos-before pos-after)))
    (when i
      ;; the letters might not designated amino acids
      (let ((edge
             (make-edge-over-long-span
              pos-before
              pos-after
              category::point-mutation
              :rule :reify-point-mutation-and-make-edge
              :form category::np
              :referent i
             ;; :constituents `(,edge1 ,edge2 ,edge3)
              )))        
        ;;/// trace
        edge))))
              

(defun make-point-mutation (original replacement residue-number)
  (when (and (or (null original) (itypep original 'amino-acid))
             (or (null replacement) (itypep replacement 'amino-acid)))
  (find-or-make-individual 'point-mutated-protein
    :original-amino-acid original
    :new-amino-acid replacement
    :position residue-number)))

(defun make-edge-over-mutated-protein (protein-edge point-mutation
                                       start-pos end-pos)
  (push-debug `(,protein-edge ,point-mutation ,start-pos ,end-pos))
  (let* ((protein (edge-referent protein-edge))
         (i (bind-variable 'mutation point-mutation protein)))
    (let ((edge
           (make-edge-over-long-span
            start-pos
            end-pos
            category::protein
            :form category::np
            :referent i
            :rule 'make-edge-over-mutated-protein)))
      edge)))

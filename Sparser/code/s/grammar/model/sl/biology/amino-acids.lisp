;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "amino-acids"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2015

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
  (gethash one-letter-word *single-letters-to-amino-acids*))

(defun def-amino-acid (long three one)
  (let* ((long-word (resolve/make long))
         (i (find-or-make-individual 'amino-acid :name long-word)))
    (let* ((three-letter-word (resolve/make three))
           (caps-three-letter-word (resolve/make (string-capitalize three)))
           (one-letter-word (resolve/make one))
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
      (add-rule-to-individual 3-letter-rule i)
       (add-rule-to-individual caps-3-letter-rule i)
      (setf (gethash one-letter-object *single-letters-to-amino-acids*) i)
      (setf (gethash one-letter-word *single-letters-to-amino-acids*) i)
      i)))
    

 
;; List from http://www.cryst.bbk.ac.uk/education/AminoAcid/the_twenty.html

(def-amino-acid "alanine" "ala" "A")
(def-amino-acid "arginine" "arg" "R")
(def-amino-acid "asparagine" "asn" "N")
(def-amino-acid "aspartic acid"  "asp" "D")
(def-amino-acid "cysteine" "cys" "C")
(def-amino-acid "glutamine" "gln" "Q")
(def-amino-acid "glutamic acid" "glu" "E")
(def-amino-acid "glycine" "gly" "G")
(def-amino-acid "histidine" "his" "H")
(def-amino-acid "isoleucine" "ile" "I")
(def-amino-acid "leucine" "leu" "L")
(def-amino-acid "lysine" "lys" "K")
(def-amino-acid "methionine" "met" "M")
(def-amino-acid "phenylalanine" "phe" "F")
(def-amino-acid "proline" "pro" "P")
(def-amino-acid "serine" "ser" "S")
(def-amino-acid "threonine" "thr" "T")
(def-amino-acid "tryptophan" "trp" "W")
(def-amino-acid "tyrosine" "tyr" "Y")
(def-amino-acid "valine" "val" "V")

#|
Sometimes it is not possible two differentiate two closely related amino acids, 
therefore we have the special cases:
  asparagine/aspartic acid - asx - B
  glutamine/glutamic acid - glx - Z
|#

;;;-------------
;;; nucleotides
;;;-------------



;;;----------------------------------------------------
;;; numbered residues:  "point mutations" (variations)
;;;----------------------------------------------------
;; see the sequence ontology
;; ; (p "before Ser1507)

(define-category residue-on-protein   
  :specializes molecular-location ;; NOT same as protein, it is the location, not the amino acid
  :instantiates :self
  :binds ((amino-acid . amino-acid)
          (position :primitive integer) ;; counting from the N terminus
          (on-protein . protein))
  :realization
   (:noun "residue"
   :of on-protein
   :on on-protein
   :at amino-acid)  ;; this is actually for serine at residue 822 -- this is an "inverse" :at
                    ;;  for use by interpret-pp-as-head-of-np and a form rule in form-rules
  :index (:permanent :sequential-keys amino-acid position))

(def-synonym residue-on-protein
             (:noun "position"))

(defun reify-residue-and-make-edge (words start-pos end-pos)
  ;; called from the no-space pattern machinery when the
  ;; pattern is (:single-cap :digits) and it's possible that
  ;; that first word is the short form af an amino acid.
  ;; Return nil if this doesn't work out
  (push-debug `(,words ,start-pos ,end-pos))
  ;; (setq words (car *) start-pos (cadr *) end-pos (caddr *))
  (let* ((single-letter (car words))
         (variants (word-capitalization-variants single-letter))
         ;; given this pattern, there will only be one if there is one
         (capitalized-letter (when variants (car variants))))
    (when capitalized-letter
      (let ((amino-acid (single-letter-is-amino-acid capitalized-letter)))
        (when amino-acid
          (let* ((digit-word (cadr words))
                 (number (get-tag-for :numerical-value digit-word))
                 (residue
                  (find-or-make-individual 'residue-on-protein
                    :amino-acid amino-acid
                    :position number)))
            ;;(break "residue = ~a" residue)
            (let* ((left-edge (top-edge-at/starting start-pos))
                   (right-edge (top-edge-at/ending end-pos))
                   (edge (make-chart-edge
                         :left-edge left-edge
                         :right-edge right-edge
                         :starting-position (pos-edge-starts-at left-edge)
                         :ending-position (pos-edge-ends-at right-edge)
                         :category category::residue-on-protein
                         :form category::np
                         :rule-name :reify-residue
                         :referent residue)))
              edge)))))))


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
  
(defun reifiy-amino-acid-pair (words start-pos end-pos)
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
  :binds ((amino-acid amino-acid))
  :index (:permanent :key name))

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
                 :name first-name))) 
      ;;(push-debug `(,i ,aa)) (break "rule on i?")
      (bind-variable 'amino-acid aa i)
      (dolist (string p-names)
        (let* ((word (resolve/make string))
               (rule (define-cfr category::amino-acid
                                 `(,word)
                       :form category::common-noun
                       :referent i)))
          (push rule rules)))
      (when rules
        (add-rules-to-individual i rules))
      i)))
    
;; Wikipedia's phosphorylation entry says just these
(def-phospho-amino-acid "histidine" "phosphohistidine"
  "pHis" "phospho-histidine")     
(def-phospho-amino-acid "serine" "phosphoserine" 
  "pSer" "phospho-serine")
(def-phospho-amino-acid "threonine" "phosphothreonine"
  "pThr" "phospho-threonine")
(def-phospho-amino-acid "tyrosine" "phosphotyrosine"
  "pTyr" "phospho-threonine")


;;;-----------------
;;; point mutations
;;;-----------------

(define-category point-mutation
  :specializes residue-on-protein ;; amino-acid position on-protein
  ;; if we had 'mutation' that might be better
  ;; but these do involve a particular residue
  :binds ((new-amino-acid . amino-acid))
  :lemma (common-noun "point mutation")
  :index (:permanent :sequential-keys new-amino-acid position))


(defun reify-point-mutation-and-make-edge (words pos-before pos-after)
  ;; Called from resolve-ns-pattern when the pattern is a word
  ;; on either side of a digits span
  ;;//// look at the edges
  (push-debug `(,words ,pos-before ,pos-after))
  (let ((edges (treetops-between pos-before pos-after)))
    (unless (= 3 (length edges))
      (error "Should be three edges for a point mutation but there are ~a" (length edges)))
    (let* ((edge1 (car edges))
           (ref1 (edge-referent edge1))
           (edge2 (cadr edges))
           (ref2 (edge-referent edge2))
           (edge3 (caddr edges))
           (ref3 (edge-referent edge3)))
      ;;(break "look at edges re point mutation")
      (let ((aa1 (single-letter-is-amino-acid ref1))
            (aa2 (single-letter-is-amino-acid ref3)))
        ;;/// do we have enough args to go somewhere else if these are amino acids?
        (when (and aa1 aa2)
          (when (and aa1 aa2)
            (let ((number ;;(find-or-make-number ref2) change residue
                   (get-tag-for :numerical-value ref2)))
              (let* ((i (make-point-mutation aa1 aa2 ;; or is it the other order??
                                             number))
                     (edge
                      (make-edge-over-long-span
                       pos-before
                       pos-after
                       category::point-mutation
                       :rule :reify-point-mutation-and-make-edge
                       :form category::np
                       :referent i
                       :constituents `(,edge1 ,edge2 ,edge3))))
                ;;/// trace
                edge))))))))
              

(defun make-point-mutation (original replacement residue-number)
  (find-or-make-individual 'point-mutation
    :amino-acid original
    :new-amino-acid replacement
    :position residue-number))



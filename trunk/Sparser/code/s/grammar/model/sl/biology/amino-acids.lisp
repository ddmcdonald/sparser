;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "amino-acids"
;;;  Module: "grammar/model/sl/biology/
;;; version: January 2015

;; initiated 9/8/14
;; RJB -- added hacks for problems with NS word finding of"S338" and "pThr202/Tyr204"
;; 1/9/15 finished point mutation with fanout into single character amino
;; acids

(in-package :sparser)

;;;-------------
;;; amino acids
;;;-------------
;; Class in in taxonomy.lisp

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
           (one-letter-word (resolve/make one))
           (one-letter-object
            (find-individual 'single-capitalized-letter 
              :letter one-letter-word))                            
           (3-letter-rule
            (define-cfr category::amino-acid `(,three-letter-word)
              :form category::common-noun
              :referent i)))
      (unless one-letter-object
        (push-debug `(,one-letter-word))
        (break "could not retrieve capitalized-letter"))
      (add-rule-to-individual 3-letter-rule i)
      (setf (gethash one-letter-object *single-letters-to-amino-acids*) i)
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
  :specializes bio-location ;; NOT same as protein, it is the location, not the amino acid
  :binds ((amino-acid . amino-acid)
          (position :primitive integer) ;; counting from the N terminus
          (on-protein . protein))
  :realization
  (:noun "residue"
         :of on-protein
         :on on-protein
         )
  :index (:permanent :sequential-keys amino-acid position))

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

; These are bare rules that could be converted to an ETF
; (or several) that captures these composition possibilities
; for a complex noun-headed phrase. 

;; Gly33
(def-cfr residue-on-protein (amino-acid digit-sequence)
  :form proper-noun
  :referent (:head left-edge
             :instantiate-individual residue-on-protein
             :with (amino-acid left-edge
                    position right-edge)))

;; "Lys residues"
(def-cfr redidue-on-protein (amino-acid residue-on-protein)
  :form n-bar
  :referent (:head right-edge
             :bind (amino-acid left-edge)))

;; residues 104 and 147
(def-cfr redidue-on-protein (residue-on-protein digit-sequence)
  :form n-bar
  :referent (:head left-edge
             :bind (position right-edge)))
#+ignore
(def-cfr of-protein (of protein)
  :form pp
  :referent (:daughter right-edge))

#+ignore
(def-cfr redidue-on-protein (residue-on-protein of-protein)
  :form n-bar
  :referent (:head left-edge
             :bind (on-protein right-edge)))


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
        ;;/// do we have enough args to go somewhere else if these are amino acid?
        (unless (and aa1 aa2)
          (push-debug `(,ref1 ,ref3))
          (break "Couldn't find the amino acids"))
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
              edge)))))))
              

(defun make-point-mutation (original replacement residue-number)
  (find-or-make-individual 'point-mutation
    :amino-acid original
    :new-amino-acid replacement
    :position residue-number))





;;;-------------------------------
;;; this is a hack patch for S338
;;;-------------------------------

(defun define-residue (residue-name)
  (def-bio/expr residue-name 'residue-on-protein :takes-plurals nil))

;;(define-residue "S338")
(noun "S338" :super residue-on-protein)
(noun "pThr202/Tyr204" :super residue-on-protein)



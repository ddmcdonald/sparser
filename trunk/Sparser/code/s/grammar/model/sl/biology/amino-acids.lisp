;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "amino-acids"
;;;  Module: "grammar/model/sl/biology/
;;; version: September 2014

;; initiated 9/8/14

(in-package :sparser)

;;;-------
;;; class
;;;-------

(define-category amino-acid
  :specializes molecule
  :instantiates :self
  :binds ((three-letter-code :primitive word)
          (one-letter-code :primitive word))
  :index (:permanent :key name)
  :lemma (:common-noun "amino acid") ;;/// optionally-hyphenated pw
  :realization (:common-noun name))

;;//// point mutation goes here

#| To make sense of a mutation identifier we need to be able to
decipher the three-letter and one-letter codes. The three letter
codes can probably be free-standing words, but the one letter
ones are gratuitously ambiguous with capitalized initials.
|#

(defun def-amino-acid (long three one)
  (declare (ignore three one)) ;;/// until we integrate with no-spaces
  (let* ((long-word (resolve/make long))
         (i (find-or-make-individual 'amino-acid :name long-word)))
    i))
    

 
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

;;;-------------------
;;; numbered residues
;;;-------------------
;; ; (p "before Ser1507)

(define-category residue-on-protein   
  :specializes bio-entity ;; same as protein
  :binds ((amino-acid . amino-acid)
          (position :primitive integer) ;; counting from the N terminus
          (on-protein . protein))
  ;; Throwaway treatment just to play with the parsing
  :index (:sequential-keys amino-acid position))

(def-cfr residue-on-protein (amino-acid digit-sequence)
  :form proper-noun
  :referent (:head left-edge
             :instantiate-individual residue-on-protein
             :with (amino-acid left-edge
                    position right-edge)))


(in-package :sparser)

(defparameter *trips-Apr24*
'(
("alpha-mangostin" "ONT:CHEMICAL" :ID "CHEBI:67547" :NAME "alpha-mangostin")
 
; ("9-1-1" "ONT:PROTEIN-FAMILY" :ID "BE:9_1_1" :NAME "9-1-1") ;; actually a bio-complex consisting of Rad9-Hus1-Rad1 http://genesdev.cshlp.org/content/21/12/1472.abstract ;; EBI-2606881
 ("9-1-1" "ONT:MACROMOLECULAR-COMPLEX" :ID "EBI:2606881" :NAME "9-1-1")
 ("201B7" "ONT:CELL-LINE" :ID "CVCL:A324" :NAME "201B7")))

#| manually added:
("HsCdc6" "ONT:GENE-PROTEIN" :ID "NCIT:C18044" :NAME
  "CDC6 cell division cycle-6 homolog protein")
 ("GSK3beta" "ONT:PROTEIN" :ID "NCIT:C128886" :NAME
  "glycogen synthase kinase-3 beta") ;; manually added to where all
 its synonyms were, though it was
 already in defs complete... and non-upa/upm
 ("FKHRL1" "ONT:GENE" :ID "NCIT:C52907" :NAME "FOXO3A") ;; manually
 added to UP:O43524 but it was already in complete and non-upa/upm and allowable
 ("FKHRL-1" "ONT:GENE" :ID "NCIT:C52907" :NAME "FOXO3A") ;; manually
 added to UP:O43524 but it was already in complete and non-upa/upm and allowable
 ("ERK-1/2" "ONT:PROTEIN-FAMILY" :ID "BE:ERK" :NAME "ERK") ;; manually
 added where Erk1/2 was already
 ("JNK1/2" "ONT:PROTEIN-FAMILY" :ID "BE:JNK" :NAME "JNK") ;; manually added, even though it should be dealt with programmatically 
|#

(def-bio "alpha-mangostin" molecule :long "alpha-mangostin" :identifier "CHEBI:67547")
(def-bio "201B7" cell-line :long "201B7" :identifier "CVCL:A324")

(define-category 9-1-1 :specializes bio-complex
           :bindings (uid "EBI:2606881"
                          ;component (;; somehow have it refer to proteins "Rad9" "Hus1" and "Rad1")
                          ))
(def-synonym 9-1-1

               (:noun "Rad9-Hus1-Rad1 complex"))
(def-synonym 9-1-1
               (:noun "9-1-1 complex"))
(def-synonym 9-1-1
               (:noun "Rad9-Hus1-Rad1 (9-1-1) clamp complex"))
(def-synonym 9-1-1
               (:noun "Rad9-Rad1-Hus1"))

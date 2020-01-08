;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "citations"
;;;   Module:  "model;core:numbers:"
;;;  Version:  January 2020

;; Initially populated from tests/citations/cases/systematicaly-organized.lisp

(in-package :sparser)

;;;---------
;;; numbers
;;;---------

(define-citation "1"    ;; predefined
  (1 NUMBER 2))

(define-citation "37"   ;; a new one
  (1 NUMBER 2))


(define-citation "76.1"   ;; exercise routes through the fsa
  (1 NUMBER 4))

(define-citation "47,742.6,"
  (1 NUMBER 6)
  (6 "," 7))

(define-citation "47, 26"  ;; check cases that shouldn't succeed
  (1 NUMBER 2)
  (2 "," 3)
  (3 NUMBER 4))

(define-citation "47. 26"
  (1 NUMBER 2)
  (2 "." 3)
  (3 NUMBER 4))


;;;-----------------------------
;;; ordinals (requires numbers)
;;;-----------------------------

(define-citation "1st"
  (1 ORDINAL 3))

(define-citation "45th"
  (1 ORDINAL 3))


;;;-------------
;;; percentages
;;;-------------

(define-citation "10%"
  (1 PERCENT 3))

(define-citation "10 percent"
  (1 PERCENT 3))

#|
(p "use of GFP-tagged PtdIns-3,4,5-P 3 –binding PH domains.")
(p "PtdIns-3,4,5-P 3")

(p "Briefly, one of the synthetic phospholipids DiC16 PtdIns-3-P, DiC16 PtdIns-4,5-P 2 , or DiCPtdIns-3,4,5-P 3 (AVANTI), was mixed with phosphatidylcholine and phosphoinositol (Sigma-Aldrich) at a 1:100:100 ratio and dried under N 2 .")
                    source-start
e89   BRIEFLY       1 "Briefly, " 3
e88   MOLECULE      3 "one of the synthetic phospholipids DiC16 PtdIns-3-P" 15
e17                 "COMMA"
e86   BIO-ENTITY    16 "DiC16 PtdIns-4,5-P 2 " 26
e26                 "COMMA"
e27   OR            27 "or " 28
e65   BIO-ENTITY    28 "DiCPtdIns-3,4,5-P " 37
e90   NUMBER        37 "3 (AVANTI)" 41
e33                 "COMMA"
e78   MIX           42 "was mixed " 44
e85   WITH          44 "with phosphatidylcholine and phosphoinositol (Sigma-Aldrich) " 53
e84   AT            53 "at a 1:100:100 ratio " 61
e55   AND           61 "and " 62
e83   DRY           62 "dried under N " 65
e91   NUMBER        65 "2 " 66
                    period
                    end-of-source

;; No-space candidates

 e84 at/pp                    p53 - p61   rule 1099
  e43 at/preposition          p53 - p54   rule 2353
    "at"
  e81 ratio/np                p54 - p61   rule 261
    e45 a/det                 p54 - p55   rule 7
      "a"
    e80 ratio/n-bar           p55 - p61   rule 373
      e67 bio-entity/proper-name    p55 - p60   reify-ns-name-as-bio-entity
        e47 number/number     p55 - p56   number-fsa
          e46 digit-sequence/number   p55 - p56   rule 1560
            "1"
        e48 ":"               p56 - p57   rule 4
          ":"
        e50 number/number     p57 - p58   number-fsa
          e49 digit-sequence/number   p57 - p58   rule 1563
            "100"
        e51 ":"               p58 - p59   rule 4
          ":"
        e53 number/number     p59 - p60   number-fsa
          e52 digit-sequence/number   p59 - p60   rule 1563
            "100"
      e54 ratio/common-noun   p60 - p61   rule 3450
        "ratio"


sp> (p "5 min at 37°C")
[5 min ]at [37°C]

                    source-start
e9    AMOUNT-OF-TIME  1 "5 min " 3
e10   AT            3 "at 37°C" 7 ';<<<<< add to no-space patterns
                    end-of-source

sp> (stree 10)
 e10 at/pp                    p3 - p7   rule 1129
  e4 at/preposition           p3 - p4   rule 2353
    "at"
  e8 bio-entity/proper-name   p4 - p7   reify-ns-name-as-bio-entity
    e6 number/number          p4 - p5   number-fsa
      e5 digit-sequence/number    p4 - p5   rule 103750
        "37"
    "*"
    e7 single-capitalized-letter/proper-noun    p6 - p7   rule 153
      "C"

sp> (p "0.04 mg/ml")
[0.04 mg/ml]
                    source-start
e7    BIO-ENTITY    1 "0.04 mg/ml" 7
                    end-of-source
sp> (stree 7)
 e7 bio-entity/np             p1 - p7   rule 402
  e2 number/number            p1 - p4   number-fsa
    e0 digit-sequence/number    p1 - p2   rule 1573
      "0"
    "."
    e1 digit-sequence/number    p3 - p4   terminal
      "04"
  e6 bio-entity/proper-name   p4 - p7   reify-ns-name-as-bio-entity
    e3 unit-of-measure/common-noun    p4 - p5   rule 73359
      "mg"
    e4 "/"                    p5 - p6   terminal
      "/"
    e5 unit-of-measure/common-noun    p6 - p7   rule 73321
      "ml"

sp> (p "a buffer containing 0.8% Triton X-100, 20 mM tris-HCl, pH 7.4, 300 mM NaCl, 1 mM EDTA, 20% glycerol, 0.1 PMSF, 10 μg/ml leupeptin and aprotinin.")
[a buffer ][containing ][0.8% Triton X-100], [20 mM tris-HCl], [pH ]7.4, [300 mM NaCl], [1 mM EDTA], [20% glycerol], [0.1 PMSF], [10 μg/ml leupeptin and aprotinin]

                    source-start
e71   BUFFER        1 "a buffer containing 0.8% Triton X-100, 20 mM tris-HCl, " 19
e72   UNIT-OF-MEASURE 19 "pH 7.4, 300 mM NaCl, " 28
e73   MOLECULE      28 "1 mM EDTA, 20% glycerol, " 36
e64   MOLECULE      36 "0.1 PMSF" 40
e45                 "COMMA"
e66   DRUG          41 "10 μg/ml leupeptin and aprotinin" 49
                    period
                    end-of-source
sp> (stree 72)
 e72 unit-of-measure/np       p19 - p28   attach-np-comma-np-comma-as-appositive
  e67 unit-of-measure/np      p19 - p23   rule 1216
    e21 unit-of-measure/np    p19 - p20   rule 73488
      "pH"
    e24 number/number         p20 - p23   number-fsa
      e22 digit-sequence/number   p20 - p21   rule 1591
        "7"
      "."
      e23 digit-sequence/number   p22 - p23   rule 1582
        "4"
  e25 ","                     p23 - p24   terminal
    ","
  e60 molecule/np             p24 - p27   rule 348
    e27 number/number         p24 - p25   number-fsa ;; parsing order w/in segment
      e26 digit-sequence/number   p24 - p25   terminal
        "300"
    e59 molecule/n-bar        p25 - p27   rule 371
      e28 unit-of-measure/common-noun   p25 - p26   rule 73412
        "mM"
      e29 molecule/common-noun    p26 - p27   rule 103658
        "NaCl"
  e30 ","                     p27 - p28   terminal
    ","

|#

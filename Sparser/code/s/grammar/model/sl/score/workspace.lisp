;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "workspace"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)

(defparameter *word-tranch-1*
  '("abate" "abound" "abuse" "accentuate" "accept" "access" "accommodate" "account" "ache"
    "acquire" "addict" "address" "administer" "admire" "adopt" "advertise" "advise" "advocate"))



;;---- *none*
;;;(defvar plist '("bewares" :infinitive "beware" :present-participle *none* :past-tense *none*))

#| complaint from add-new-word-to-catalog
warning: New comlex verb "clean" with lemma #<word "clean"> 
warning: New comlex verb "deal" with lemma #<word "deal"> 
warning: New comlex verb "echo" with lemma #<word "echo"> 
warning: New comlex verb "fee" with lemma #<word "fee"> 
warning: New comlex verb "foot" with lemma #<word "foot"> 
warning: New comlex verb "gather" with lemma #<word "gather"> 
warning: New comlex verb "greet" with lemma #<word "greet"> 
warning: New comlex verb "meet" with lemma #<word "meet"> 
warning: New comlex verb "overlaid" with lemma #<word "overlay"> 
warning: New comlex verb "save" with lemma #<word "save"> 

Also -- acquire-auto
 -- see maybe-distinguish-category  -- question is why only once

(define-category undergo-auto
  :specializes perdurant
  :instantiates self
  :mixins (comlex-verb)
  :realization (:verb ("undergo" :tensed/singular "undergos" 
               :infinitive "undergo" :past-tense 
               "underwent" )))


(define-adjective aged
  :cat 'aged
  :super-category 'modifier
  :er-est '((more aged) most aged))

The colon in front of self is dropped by the pretty printer

|#


#|
;-- verb with specializations

(define-category administer :specializes comlex-verb
  :binds ((to to))
  :realization (:verb  ("administer" :past-tense "administered" :past-participle "administered" :present-participle "administering")
                :s SUBJECT :o OBJECT :to to))


;;----------  what annotation do we have to do for these categories/words
sp> (ic 'invest)
#<ref-category INVEST>
  plist             = (:mumble..
  symbol            = category::invest
  rule-set          = nil
  id-counter        = 0
  slots             = (#<variable on> #<variable for> #<variable outside> #<variable at>..
  binds             = nil
  mix-ins           = nil
  realization       = (#<realization for invest: "invest" verb>)
  lattice-position  = #<top-lp invest->comlex-verb  4503>
  operations        = #<operations for invest>
  instances         = nil
  rnodes            = nil

sp> (unit-plist *)
(:mumble
 #<m-rdata: INVEST, svo v="invest" (#<variable subject> #<variable object>)>
 :rdata-expr
 (:verb "invest" :s subject :o object :on on :for for :outside outside :at at
  :with with :in in :into into)
 :super-categories
 (#<ref-category INVEST> #<ref-category COMLEX-VERB>
  #<ref-category SUBCATEGORIZATION-PATTERN> #<ref-category LINGUISTIC>
  #<ref-category ABSTRACT> #<mixin WITH-ACTOR> #<mixin WITH-PATIENT>
  #<ref-category THEMATIC-ROLE> #<ref-category ADDS-RELATION>
  #<ref-category NOTATIONAL-EXTENSION> #<ref-category TOP>)
 :rules
 (#<PSR-260038 invest → "invest"> #<PSR-260039 invest → "invests">
  #<PSR-260040 invest → "invested"> #<PSR-260041 invest → "investing">)
 :grammar-module #<grammar-module *SCORE-VERBS*> :file-location
 #P"SPARSER:BIO;SCORE-VERBS.LISP")


sp> (iw "invest")
#<word "invest">
  plist                    = (:inflection-of-verb #1=#<word "invests"> :verb-inflections..
  symbol                   = word::|invest|
  rule-set                 = #<rule-set for #<word "invest">>
  pname                    = "invest"
  morphology               = nil
  capitalization           = :lower-case
  capitalization-variants  = nil

sp> (unit-plist *)
(:inflection-of-verb #<word "invests"> :verb-inflections
 (#<word "investing"> #<word "invested"> #<word "invests">) :file-location
 #P"SPARSER:BIO;SCORE-VERBS.LISP" :grammar-module
 #<grammar-module *SCORE-VERBS*>)



;;--- fill + owned prepositions

sp> (iw "fill")
#<word "fill">
  plist                    = (:inflection-of-verb #1=#<word "fills"> :verb-inflections..
  symbol                   = word::|fill|
  rule-set                 = #<rule-set for #<word "fill">>
  pname                    = "fill"
  morphology               = nil
  capitalization           = :lower-case
  capitalization-variants  = nil

sp> (loc "fill")
#P"SPARSER:BIO;VERBS.LISP"



-- comlex-subcategorization  returns the portion of the entry for one part of speech

sp> (subcat-from-word word)
((pp :pval ("with" "from"))
 (part-np-pp :pval ("on" "with") :adval ("out" "up" "in"))
 (part-pp :adval ("in") :pval ("for")) (part-np :adval ("in" "up" "out"))
 (part :adval ("up" "out" "in")) (np-pp :pval ("from" "to" "with")) (np)
 (np-np) (intrans))

sp> (comlex-subcategorization "fill" 'verb)
(verb
 (:subc
  ((pp :pval ("with" "from")) ; pg.74
   (part-np-pp :pval ("on" "with") :adval ("out" "up" "in")) 'pg.101
   (part-pp :adval ("in") :pval ("for")) ;pg.99 prep as advP vs. prepP
   (part-np :adval ("in" "up" "out")) ;pg.95 particle can move 
   (part :adval ("up" "out" "in"))    ;pg.93 'particle'
   (np-pp :pval ("from" "to" "with")) ;pg.77
   (np) ;pg.72
   (np-np) ;pg.73
   (intrans)) ;pg.68
  :features ((vveryving :prespart t)))) ;pg.65

sp> (prep-complements subcat) ; accumulates all the :pval entries
("on" "for" "from" "to" "with")

|#


#| Adverb
sp> (comlex-entry "underneath")
((adverb
  (:features ((loc&dir-adv))
   :modif ((pred-adv)
           (clausal-adv :final t :init t)))))

|#

#| Adjective
sp> (comlex-entry "traditional")
((adjective
  (:comparative ("more traditional") 
   :superlative ("most traditional")
   :subc ((extrap-adj-that-s)
          (extrap-adj-for-to-inf-np-omit))
  :features ((gradable)))))

extrap-adj-that-s -- pg.36 sentential complement corresponds to
  an extraposed sentential subject
  "It is traditional that he sells books"

extrap-adj-for-to-inf-np-omit -- pg.45  allows the logical object of the embeded clause
  to occupy subject position of the matrix
    extrap-adj-for-to-inf: "It is traditional for children to fill a box with fresh grass"

|#

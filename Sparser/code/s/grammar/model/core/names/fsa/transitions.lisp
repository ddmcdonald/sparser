;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "transitions"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  0.1 February 1994

;; initiated 5/21/93 v2.3. added generic-co-word transitions 10/29. added
;; more cases late 12/93
;; 0.1 (2/1/94) Pulled :pnf-start and *unknown-word* to [transition rules] for
;;      the benefit of the compiler.
;;     (3/8) adding pattern for "Frank B. Hall & Co.".
;;     (3/21,24) adding pattern for "Capital Cities/ABC Inc."

(in-package :sparser)


#|  This file is part of the grammar  |#


;;;---------------------------------------
;;;---------------------------------------
;;; the transition rules for proper names
;;;---------------------------------------
;;;---------------------------------------

;;;------------
;;; "John Doe"

(def-pnf-transition  :pnf-start unknown-word
  :next-state :word )

(def-pnf-transition  :word unknown-word
  :next-state :words )

(def-pnf-transition  :words unknown-word
  :next-state :words )

(def-pnf-transition  :word name-word
  :next-state :word+name-word )

(def-pnf-transition  :words name-word
  :next-state :words+name-word )



(def-pnf-transition  :word+name-word  name-word
  :next-state :word+names )


(def-pnf-transition  :pnf-start  title
  :next-state :exception-check-for-titles )

(def-pnf-transition  :word  title
  :next-state :exception-check-for-titles/prior-word )



(def-pnf-transition  :word+name-word  unknown-word
  :next-state :word+name+word )

(def-pnf-transition  :words+name-word  unknown-word
  :next-state :words+name+words )

(def-pnf-transition  :word+names  unknown-word
  :next-state :word+names+word )



(def-pnf-transition  :pnf-start name-word
  :next-state :name )

(def-pnf-transition  :name unknown-word
  :next-state :name+word )

(def-pnf-transition  :name name-word
  :next-state :names )

(def-pnf-transition  :names unknown-word
  :next-state :name+word )

(def-pnf-transition  :name+word  unknown-word
  :next-state :name+words )

(def-pnf-transition  :name+word  name-word
  :next-state :name+word+name )




;;;----------------------
;;; "J. Gordon Strasser"

(def-pnf-transition :pnf-start initial
  :next-state :initial
  :action ((setq contains-initial t)))

(def-pnf-transition :initial unknown-word
  :next-state :initial+word )
(def-pnf-transition :initial name-word
  :next-state :initial+name )

(def-pnf-transition :initial+word unknown-word
  :next-state :initial+words )
(def-pnf-transition :initial+name name-word
  :next-state :initial+names )


;;;-----------------------------------------------------
;;; "J Gordon Strasser"  -- no period after the initial

(def-pnf-transition :pnf-start single-capitalized-letter
  :next-state :initial )
  ;; we leave off the 'contains-initial' action because this
  ;; could be a false alarm, e.g. the word "a" at the beginning
  ;; of the sentence.


;;;--------------
;;; "Foo J. Bar"

(def-pnf-transition  :word initial
  :next-state :word+initial
  :action ((setq contains-initial t)))

(def-pnf-transition  :name initial
  :next-state :name+initial
  :action ((setq contains-initial t)))


(def-pnf-transition  :word+initial unknown-word
  :next-state :word+initial+word )

(def-pnf-transition  :word+initial name-word
  :next-state :word+initial+name )

(def-pnf-transition  :name+initial unknown-word
  :next-state :name+initial+word )

(def-pnf-transition  :name+initial name-word
  :next-state :name+initial+name )


;;;--------------
;;; "Mr. Dalton"

(def-pnf-transition  :pnf-start  person-prefix
  :next-state  person-prefix
  :action ((setq contains-person-prefix t)))

(def-pnf-transition   person-prefix  name-word
  :next-state  :person-prefix+name )



;;;---------------------------------
;;; "IBM Corp."  "Alaska Air Group"

(def-pnf-transition  :word  kind-of-company
  :next-state  :word+kind-of-company
  :action ((setq contains-kind-of-company-word t)))

(def-pnf-transition  :words  kind-of-company
  :next-state  :words+kind-of-company
  :action ((setq contains-kind-of-company-word t)))


(def-pnf-transition  :name  kind-of-company
  :next-state  :name+kind-of-company
  :action ((setq contains-kind-of-company-word t)))

(def-pnf-transition  :names  kind-of-company
  :next-state  :names+kind-of-company
  :action ((setq contains-kind-of-company-word t)))


(def-pnf-transition  :words+kind-of-company  inc-term
  :next-state  :words+kind-of-company+inc
  :action ((setq contains-inc-term t)))

(def-pnf-transition  :names+kind-of-company  inc-term
  :next-state  :names+kind-of-company+inc
  :action ((setq contains-inc-term t)))


;;;---------------
;;; "Foo Bar Co."

(def-pnf-transition  :words  inc-term
  :next-state :words+inc-term
  :action ((setq contains-inc-term t)))


(def-pnf-transition  :name  name-word    ;; also "Kenneth Dalton"
  :next-state :names )

(def-pnf-transition  :names  name-word
  :next-state :names )

(def-pnf-transition  :names  inc-term
  :next-state :names+inc-term
  :action ((setq contains-inc-term t)))


;;;-------------------------------------------------
;;; Generic Company words: "Hop Hing Holdings Ltd."

(def-pnf-transition  :word  generic-co-word
  :next-state :word+generic-co-word
  :action ((setq contains-generic-co-word t)))

(def-pnf-transition  :words  generic-co-word
  :next-state :words+generic-co-word
  :action ((setq contains-generic-co-word t)))

;; "Horizon Air Industries"
(def-pnf-transition  :word+name-word  generic-co-word
  :next-state :word+name-word+generic-co-word
  :action ((setq contains-generic-co-word t)))

(def-pnf-transition  :words+name-word  generic-co-word
  :next-state :words+name-word+generic-co-word
  :action ((setq contains-generic-co-word t)))


(def-pnf-transition  :words+generic-co-word  inc-term
  :next-state :words+generic-co-word+inc-term
  :action ((setq contains-inc-term t)))


(def-pnf-transition  :name  generic-co-word
  :next-state :names+generic-co-word
  :action ((setq contains-generic-co-word t)))

(def-pnf-transition  :names  generic-co-word
  :next-state :names+generic-co-word
  :action ((setq contains-generic-co-word t)))

(def-pnf-transition  :names+generic-co-word  inc-term
  :next-state :names+generic-co-word+inc-term
  :action ((setq contains-inc-term t)))



;;;------------------
;;; Visa U.S.A. Inc.

(def-pnf-transition  :word  country
  :next-state :word+country
  :action ((setq contains-country t)))

(def-pnf-transition  :word+country  inc-term
  :next-state :word+country+inc-term
  :action ((setq contains-inc-term t)))

(def-pnf-transition  :words  country
  :next-state :words+country
  :action ((setq contains-country t)))

(def-pnf-transition  :words+country  inc-term
  :next-state :words+country+inc-term
  :action ((setq contains-inc-term t)))


(def-pnf-transition  :name  country
  :next-state :name+country
  :action ((setq contains-country t)))

(def-pnf-transition  :name+country  inc-term
  :next-state :name+country+inc-term
  :action ((setq contains-inc-term t)))

(def-pnf-transition  :names  country
  :next-state :names+country
  :action ((setq contains-country t)))

(def-pnf-transition  :names+country  inc-term
  :next-state :names+country+inc-term
  :action ((setq contains-inc-term t)))

;;;-------------------------
;;; The Wall Street Journal

(def-pnf-transition  :pnf-start  "the"
  :next-state :the
  :action ((setq contains-the t)))

(def-pnf-transition  :the unknown-word
  :next-state :the+word )

(def-pnf-transition  :the+word unknown-word
  :next-state :the+words )

(def-pnf-transition  :the+words unknown-word
  :next-state :the+words )

#|

(def-pnf-transition  
  :next-state 
  :action )

(def-pnf-transition  
  :next-state 
  :action )
|#

;;;-----------------------
;;; "Belmoral Mines Ltd."

;; /////////////////


;;;-----------------------
;;; "Frank B. Hall & Co."

#|(def-pnf-transition  :word+initial+word  "&"
  :next-state  :word+initial+word+&
  :action ((setq contains-& t)))

(def-pnf-transition  :name+initial+word  "&"
  :next-state :name+initial+word+&
  :action ((setq contains-& t)))

(def-pnf-transition  :word+initial+name  "&"
  :next-state :word+initial+name+&
  :action ((setq contains-& t)))

(def-pnf-transition  :name+initial+name  "&"
  :next-state :name+initial+name+&
  :action ((setq contains-& t)))|#


(def-pnf-transition  :word+initial+word  "&"
  :next-state  :person+&
  :action ((setq contains-& t)))

(def-pnf-transition  :name+initial+word  "&"
  :next-state :person+&
  :action ((setq contains-& t)))

(def-pnf-transition  :word+initial+name  "&"
  :next-state :person+&
  :action ((setq contains-& t)))

(def-pnf-transition  :name+initial+name  "&"
  :next-state :person+&
  :action ((setq contains-& t)))



#|(def-pnf-transition  :word+initial+word+&  generic-co-word
  :next-state :word+initial+word+&+generic-co-word
  :action ((setq contains-generic-co-word t)))

(def-pnf-transition  :word+initial+name+&  generic-co-word
  :next-state :word+initial+name+&+generic-co-word
  :action ((setq contains-generic-co-word t)))

(def-pnf-transition  :name+initial+word+&  generic-co-word
  :next-state :name+initial+word+&+generic-co-word
  :action ((setq contains-generic-co-word t)))

(def-pnf-transition  :name+initial+name+&  generic-co-word
  :next-state :name+initial+name+&+generic-co-word
  :action ((setq contains-generic-co-word t)))|#



(def-pnf-transition  :person+&  generic-co-word
  :next-state  :person+&+generic-co-word
  :action ((setq contains-inc-term t)))





;;;-------------------
;;; "Yoshinoya D & C" 

(def-pnf-transition  :word single-capitalized-letter
  :next-state :word+letter
  :action ((setq contains-single-letter/s t)))

(def-pnf-transition  :word+letter
                     "&"
  :next-state :word+letter+&
  :action  ((setq contains-& t)))

(def-pnf-transition  :word+letter+&
                     single-capitalized-letter
  :next-state :word+letter&letter)


;;-- same ones, with a known "name" rather than an unknown word
;;
(def-pnf-transition  :name single-capitalized-letter
  :next-state :name+letter
  :action ((setq contains-single-letter/s t)))

(def-pnf-transition  :name+letter
                     "&"
  :next-state :name+letter+&
  :action  ((setq contains-& t)))

(def-pnf-transition  :name+letter+&
                     single-capitalized-letter
  :next-state :name+letter&letter)


;;;-------------------------
;;; Capital Cities/ABC Inc.

(def-pnf-transition  :word  "/"
  :next-state  :subname-slash
  :action  ((setq contains-forward-slash t)))

(def-pnf-transition  :words  "/"
  :next-state  :subname-slash
  :action  ((setq contains-forward-slash t)))

(def-pnf-transition  :name  "/"
  :next-state  :subname-slash
  :action  ((setq contains-forward-slash t)))

(def-pnf-transition  :name+word  "/"
  :next-state  :subname-slash
  :action  ((setq contains-forward-slash t)))

(def-pnf-transition  :names  "/"
  :next-state  :subname-slash
  :action  ((setq contains-forward-slash t)))

(def-pnf-transition  :subname-slash  unknown-word
  :next-state  :subname-slash+word )

(def-pnf-transition  :subname-slash  name-word
  :next-state  :subname-slash+name-word )

(def-pnf-transition  :subname-slash+word  inc-term
  :next-state  :subname-slash+word+inc-term
  :action ((setq contains-inc-term t)))

(def-pnf-transition  :subname-slash+name-word  inc-term
  :next-state  :subname-slash+name-word+inc-term
  :action ((setq contains-inc-term t)))


;;;--------------------------------------------------------
;;; joins from diverse middle states to frequent end items


(def-pnf-transition  :word+letter&letter
                     kind-of-company
  :next-state :word+letter&letter+koc
  :action ((setq contains-Kind-of-Company-word t)))

(def-pnf-transition  :name+letter&letter
                     kind-of-company
  :next-state :name+letter&letter+koc
  :action ((setq contains-Kind-of-Company-word t)))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "modals"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  January 2013

;; moved from [syntax;aux verbs] 5/7/93 v2.3. Populated w/o semantics 1/11/94
;; Given a mix-in interpretation 7/11.  8/2 pulled the check for whether 'modal'
;; was already defined since the change to form-categories makes it moot.
;; 8/16 added "must".  9/6 "won't", "'ll'   9/28 form combination with verb+object
;; 12/30 form combination with infinitive (and verb+ed).  
;; 1/27/95 added modal + verb+passive rules
;; 5/27/96 Disabled subtyping until it's reimplemented. 7/6/07 missed one.
;; 1/30/13 added "might"

(in-package :sparser)

;;;------------
;;; base forms
;;;------------

(define-mixin-category  be-able-to
  :instantiates nil
  :specializes modal )
  
(define-mixin-category  conditional
  :instantiates nil
  :specializes modal
  :binds ((condition)))


;;;-------
;;; cases
;;;-------

#| This doesn't feel good enough, but it's a place to work from until
   we get a sublanguage where these are really exercised.  |#

; will would could should can may

(define-mixin-category  will
  :specializes modal )
(def-cfr will ("will")
  :form modal
  :referent  future )

(define-mixin-category  would
  :specializes modal )
(def-cfr would ("would")
  :form modal
  :referent  conditional )

(define-mixin-category  could
  :specializes modal )
(def-cfr could ("could")
  :form modal
  :referent be-able-to
             ;;(:head be-able-to
             ;; :subtype conditional)
	     )

(define-mixin-category  should
  :specializes modal )
(def-cfr should ("should")
  :form modal
  :referent  be-able-to )

(define-mixin-category  can
  :specializes modal )
(def-cfr can ("can")
  :form modal
  :referent  be-able-to )

(define-mixin-category  may
  :specializes modal )
(def-cfr may ("may")
  :form modal
  :referent  be-able-to )

(define-mixin-category  might
  :specializes modal )
(def-cfr might ("might")
  :form modal
  :referent  be-able-to )

(define-mixin-category  must
  :specializes modal )
(def-cfr must ("must")
  :form modal
  :referent  be-able-to )


;;;--------------
;;; contractions
;;;--------------

(def-cfr will ( apostrophe-ll )
  :form modal
  :referent  future )


;;--- with 'not'

(def-cfr would ("won" apostrophe-t)
  :form modal
  :referent (:head will
             ;;:subtype negative
                   ))

(def-cfr would ("wouldn" apostrophe-t)
  :form modal
  :referent (:head would
             ;;:subtype negative
                   ))

(def-cfr could ("couldn" apostrophe-t)
  :form modal
  :referent (:head could
             ;;:subtype negative
                   ))

(def-cfr should ("shouldn" apostrophe-t)
  :form modal
  :referent (:head should      ;; doesn't get connotation of permission
             ;;:subtype negative
                   ))

(def-cfr can ("cann" apostrophe-t)
  :form modal
  :referent (:head can
             ;;:subtype negative
                   ))

(def-cfr can ("can" apostrophe-t)
  :form modal
  :referent (:head can
             ;;:subtype negative
                   ))


(def-cfr can ("cannot")
  :form modal
  :referent (:head can
             ;;:subtype negative
                   ))



;;;-------------------
;;; aux-hopping rules
;;;-------------------

;;--- modal + aux form

(def-form-rule (modal have)
  :form verb
  :referent (:head right-edge
             ;;:subtype left-edge
             ))


(def-form-rule (modal be)
  :form verb
  :referent (:head right-edge
             ;;:subtype left-edge
                   ))



;;--- modal + infinitive

(def-form-rule (will infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   ))

(def-form-rule (can infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might infinitive)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))



;;--- modal + verb+ed
;; This is spurious in a proper grammar, but if an infinitive form
;; is mis-labeled as a past tense then we'll get here gratuitously
;; e.g. LS: "set"

(def-form-rule (will verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   )) 

(def-form-rule (can verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb+ed)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))


;;--- modal + verb

(def-form-rule (will verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   )) 

(def-form-rule (can verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))


;;--- modal + vp

(def-form-rule (will verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   ))

(def-form-rule (can verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb+object)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))



;;--- modal + verb+passive

(def-form-rule (will verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype will
                   ))

(def-form-rule (would verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype would
                   ))

(def-form-rule (could verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype could
                   ))

(def-form-rule (should verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype should
                   ))

(def-form-rule (can verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype can
                   ))

(def-form-rule (may verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype may
                   ))

(def-form-rule (might verb+passive)
  :form vg
  :referent (:head right-edge
             ;;:subtype might
                   ))


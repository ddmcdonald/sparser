;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "NP"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  0.7 September 2011

;; initiated 8/31/92 v2.3
;; 0.1 (6/2/93) added explicit definitions for the mix-in category
;; 0.2 (6/12) added definites
;; 0.3 (4/29/94) broke out definites so they could be incorporated by other ETFs
;;  (3/7/95) added 'schema-type' fields
;;  (8/11) added np-common-noun/indefinite by copying out those cases
;;   from np-common-noun.  ///This cries out for definiing that one as
;;   the result of two incorporations, but don't have the time to check
;;    whether that would automatically work or need some effort.
;; 0.4 (12/27/99) Added head fields to every rule. (3/16/05) cleaned up
;;  the indenting, added np-common-noun/intrinsically-definite. (3/17) trying
;;  to sort this all out, since it's becoming counterintuitive with "the board"
;;  and now "a <title>".
;; 0.5 (4/13/09) Removed the n-bar cases in np-common-noun/definite and
;;  np-common-noun because they were gratuitously creating multiple rule
;;  applicability given how they were written. Also removed the subtyping
;;  of indefinite.
;; 0.6 (6/19/09) Added possessive mixin and possessive schemas for the 
;;  np-common-noun ETF.
;;     (7/16/09) Modified possessive schemas so that the pronouns are not
;;       discarded.
;; 0.7 (9/21/09) Broke out the possessive pronouns from np-common-noun into
;;  their own (extending) ETF to allow for earlier (reasonable) uses of 
;;  np-common-noun where there's no modifier slot. 
;;  (2/20/11) Added initial listing comment. Fixed it 3/9. Annotating a bit
;;   to help sort out what to use 7/25/11, also removed commented out or OBE
;;   bits and added definite mixin category for np-common-noun/definite by
;;   analogy to the indefinite ETF.
;;  (9/8/11) Found the defNP stuff so put the ETF back in.

(in-package :sparser)

#|  ETFs in this file:

   soak-up-indefinite-article ------ form rules for "a", "an"
   np-common-noun/intrinsically-definite  --- "the board" (of directors)
   np-common-noun/definite 
;;   np-common-noun/defnp
   np-common-noun/indefinite
   np-common-noun/one-of-several 
   np-common-noun
   np-common-noun/possessive-pns
|#


(define-mixin-category indefinite)
(define-mixin-category definite)
(define-mixin-category possessive)


;;;------------
;;; form rules
;;;------------

(define-exploded-tree-family  soak-up-indefinite-article
  :description "Makes form rules that snarf the article without any ~
                semantic effects."
  :cases
     ((:indefinite (np ("a" np)
                     :head right-edge))
      (:indefinite (np ("an" np)
                     :head right-edge))))


  
;;;----------------
;;; full paradigms 
;;;----------------

;;--- definite articles

(define-exploded-tree-family  np-common-noun/intrinsically-definite

#| This is a funny one that has to be considered still very much in flux
 since I'm tuning it to "the board (of directors)" and that's probably quite
 ideosyncratic. In that category, we start with a common-noun rspec to
 get an edge over "board" that links it to the category, then we use
 this schema to soak up the definite article, which is presumed to have
 no semantic import. |#

    ;; soaks up definite and indefinite determiners, assumes there's
    ;; both an np-head and an n-bar label

  :schema-type  :mixin
  :labels ( np n-bar np-head )
  :cases
     ((:definite (np ("the" n-bar)
                   :head right-edge))
      (:definite (np ("this" n-bar)
                   :head right-edge))
      (:definite (np ("that" n-bar)
                   :head right-edge))
      (:definite (np ("the" np-head)
                   :head right-edge))
      (:definite (np ("this" np-head)
                   :head right-edge))
      (:definite (np ("that" np-head)
                   :head right-edge))))



(define-exploded-tree-family  np-common-noun/definite
    ;; Instantiates an instance of the referent of the right-edge
    ;; while soaking up the definite determiners
  :schema-type  :mixin
  :labels ( np np-head )
  :cases
     ((:definite (np ("the" np-head)
                   :instantiate-individual right-edge
                   :subtype definite
                   :head right-edge))
      (:definite (np ("this" np-head)
                   :instantiate-individual right-edge
                   :subtype definite
                   :head right-edge))
      (:definite (np ("that" np-head)
                   :instantiate-individual right-edge
                   :subtype definite
                   :head right-edge))))



(define-exploded-tree-family  np-common-noun/defnp
  :schema-type  :mixin
  :labels ( np n-bar np-head )
  :cases
     ((:definite (np ("the" n-bar)
                   :function (dereference-DefNP right-edge))
                   :head right-edge)
      (:definite (np ("this" n-bar)
                   :function (dereference-DefNP right-edge))
                   :head right-edge)
      (:definite (np ("that" n-bar)
                   :function (dereference-DefNP right-edge))
                   :head right-edge)
      (:definite (np ("the" np-head)
                   :function (dereference-DefNP right-edge))
                   :head right-edge)
      (:definite (np ("this" np-head)
                   :function (dereference-DefNP right-edge))
                   :head right-edge)
      (:definite (np ("that" np-head)
                   :function (dereference-DefNP right-edge))
                   :head right-edge)))


;;--- indefinite articles

(define-exploded-tree-family  np-common-noun/indefinite
    ;; Soaks up the indefinite determiners while making an instance
    ;; of the right-edge. Flags it as subtype 'indefinite'
  :schema-type  :mixin
  :binding-parameters ( kind )
  :labels ( np n-bar np-head )
  :cases
     ((:indefinite (np  ("a" n-bar)
                     :instantiate-individual right-edge
                     :subtype indefinite )
                     :head right-edge)
      (:indefinite (np  ("an" n-bar)
                     :instantiate-individual right-edge
                     :subtype indefinite )
                     :head right-edge)
      (:indefinite (np  ("a" np-head)
                     :instantiate-individual right-edge
                     :subtype indefinite )
                     :head right-edge)
      (:indefinite (np  ("an" np-head)
                     :instantiate-individual right-edge
                     :subtype indefinite )
                     :head right-edge)))


(define-exploded-tree-family  np-common-noun/one-of-several
  :schema-type  :mixin
  :labels ( np np-head )
  :cases
     ((:indefinite (np  ("a" np-head)
                     :subtype indefinite
                     :head right-edge))
      (:indefinite (np  ("an" np-head)
                     :subtype indefinite
                     :head right-edge))))



;;--- both all together

(define-exploded-tree-family  np-common-noun
  :schema-type  :mixin
  :incorporates  np-common-noun/definite
  :binding-parameters ( kind  modifier )
  :labels ( np np-head )
  :cases
     ((:indefinite (np  ("a" np-head)
                     :instantiate-individual right-edge
                     :subtype indefinite)
                   :head right-edge)
      (:indefinite (np  ("an" np-head)
                     :instantiate-individual right-edge
                     :subtype indefinite)
                   :head right-edge)))


;;--- Now add the possessive pronouns

(define-exploded-tree-family  np-common-noun/possessive-pns
  :schema-type  :mixin
  :incorporates  np-common-noun
  :binding-parameters ( modifier )
  :labels ( np np-head )
  :cases
     ((:possessive (np  ("my" np-head)
                     :instantiate-individual right-edge
                     :binds (modifier left-edge)
                     :subtype possessive)
                   :head right-edge)
      (:possessive (np  ("your" np-head)
                     :instantiate-individual right-edge
                     :binds (modifier left-edge)
                     :subtype possessive)
		   :head right-edge)
      (:possessive (np  ("his" np-head)
                     :instantiate-individual right-edge
                     :binds (modifier left-edge)
                     :subtype possessive)
                   :head right-edge)
      (:possessive (np  ("her" np-head)
                     :instantiate-individual right-edge
                     :binds (modifier left-edge)
                     :subtype possessive)
                   :head right-edge)
      (:possessive (np  ("its" np-head)
                     :instantiate-individual right-edge
		     :binds (modifier left-edge)
                     :subtype possessive)
                   :head right-edge)
      (:possessive (np  ("our" np-head)
                     :instantiate-individual right-edge
		     :binds (modifier left-edge)
                     :subtype possessive)
                   :head right-edge)
      (:possessive (np  ("their" np-head)
                     :instantiate-individual right-edge
		     :binds (modifier left-edge)
                     :subtype possessive)
                   :head right-edge)))

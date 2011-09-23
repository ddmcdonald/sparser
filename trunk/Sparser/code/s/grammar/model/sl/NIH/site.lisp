;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996-1997  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "site"
;;;   Module:  "model:sl:NIH:"
;;;  version:  October 1997

;; started 7/22/96. Elaborated 9/11,12.  10/18/97 changed a reference from
;; binding-sites to site-of-activity because the former wasn't defined. This
;; allows the file to load, but 'can't rember if it's intended.

(in-package :sparser)


#| in shc: "certain autophosphorylation sites in the PDGF beta-receptor
 (Tyr-579, Tyr-740, Tyr-751, and Tyr-771)"   |#

;;;--------
;;; object
;;;--------

(define-category  site-of-activity
  :instantiates self
  :specializes nil
  :binds ((activity  biological-activity)
          (location receptor)
          (name ))
  :index (:temporary :sequential-keys activity location)
  :realization (:common-noun "site"))



;;;--------------------------------------------------------------------------
;;; rules by hand (sigh -- it's faster than looking for / adapting a schema)
;;;--------------------------------------------------------------------------

(def-cfr site-of-activity (biological-activity site-of-activity)
  :form n-bar
  :referent (:instantiate-individual site-of-activity
             :with (activity left-edge)))

;; (p "autophosphorylation sites")



(def-cfr in-receptor ("in" receptor)
  :form pp
  :referent (:daughter right-edge))

;; (p "in the PDGF beta-receptor")



(def-cfr site-of-activity (site-of-activity in-receptor)
  :form np  ;; well, it's actually whatever the form of the head is at that moment
  :referent (:head left-edge
             :bind (location right-edge)))

;; (p "sites in the PDGF beta-receptor")
;; (p "autophosphorylation sites in the PDGF beta-receptor")





;;;-----------------------------------------------------
;;; specific, named binding sites  (see 'shc' abstract)
;;;-----------------------------------------------------

;; (p "Tyr-579")

#| This is a stand-in without any semantics (no str'd object is formed to
be the referent of the edge), and with a literal word as the trigger rather
than the abbreviated form of an amino acid.  The need for the word is a basic
limitation in the no-space pattern facility that won't go away any time soon,
so the right way to get generality is to convert this form into a subsition
schema (a simple macro would do) and feed it amino-acid objects as its
argument.   A limitation that will go away pretty soon (but not this month)
is in the semantics, whereby a simple argument-binding notation will be added
to the transition forms that can be accessed in the acceptance-function. That
would let us treat these as the combination of an amino acid and a number,
which should be amply versatile.  (N.b. without the str'd object (an 'individual')
we can't get a collection object for the list of sites, so we effectively
lose our knowledge of what was combined.) |#


(define-no-space-pattern  binding-site
  :acceptance-function 'construct-binding-site
  :transition-net ( (:initial + "tyr"   ->  :amino-acid)  ;; <--- note lower case
                    (:amino-acid + "-"  -> :amino-acid-hyphen)
                    (:amino-acid-hyphen + digits  -> :binding-site) )
  :accept-states ( :binding-site ))

(defun construct-binding-site ())  ;; <--- needs content once args are added



;; (p "Tyr-579, Tyr-740, Tyr-751, and Tyr-771")


;;--- routine for projecting the site object up above the parentheses

(define-interior-action
  ;;(category-named 'binding-sites)          ;; label
  ;; Changed this to site-of-activity just to get it to load. Can't remember
  ;; whether the category binding-sites was intended and has been missed
  ;; somewhere (or in a missing file).
  (category-named 'site-of-activity)
  :parentheses                             ;; type of paired punctuation
  'respan-parens-with-binding-site-label ) ;; function


(define-category binding-sites-in-parentheses)


(defun respan-parens-with-binding-site-label (first-interior-edge
                                              pos-before-parens pos-after-parens
                                              pos-after-open pos-before-close
                                              analysis-of-span)

  (declare (ignore pos-after-open pos-before-close))

  (when (eq analysis-of-span :single-span)

    (let ((edge
           (make-chart-edge
            :starting-position pos-before-parens
            :ending-position pos-after-parens
            :category (category-named 'binding-sites-in-parentheses)
            :referent (edge-referent first-interior-edge)
            :rule :respan-parens-with-binding-site-label )))

      edge )))

;; (p "(Tyr-579, Tyr-740, Tyr-751, and Tyr-771)")


;;----------- whole thing

(def-cfr site-of-activity (site-of-activity binding-sites-in-parentheses)
  :form np
  :referent (:head left-edge
             :bind (name right-edge)))


#| (p "autophosphorylation sites in the PDGF beta-receptor
 (Tyr-579, Tyr-740, Tyr-751, and Tyr-771)" )  |#
;; This isn't working (9/12). The problem is that the parsing algorithm
;; isn't looking at this pair of edges, not in their formation, so it's
;; a new case (or a bug) in the forest-level march or (likely) the interaction
;; of the new edge that comes out of the parens with the quiescence pointer
;; and a failing to restart the march.


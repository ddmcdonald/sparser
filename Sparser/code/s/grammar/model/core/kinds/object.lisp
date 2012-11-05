;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1999,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "object"
;;;   Module:  "model;core:kinds:"
;;;  version:  0.1 August 2011

;; initiated on 12/13/99. Debugged 12/26. 2/11/07 Added rule definition.
;; 8/2 revised to instantiated the symbol, which means you get rules like
;; checkpoint -> "checkpoint" rather than kind -> checkpoint, and made
;; the category uppercase. Soaked up the name variable with an explicit
;; binding.
;; 0.1 (8/13/07) Reworked it considerably to handle the case where there
;;      is already a category corresponding to the 'unknown' work. Motivated
;;      by "city".  4/13/09 Added 'individual', but it probably doesn't belong
;;      here. 5/20 added 'modifier' slot to it.
;;     (2/9/11) Upcased the string in find-or-define-kind for creating
;;      the category when not loading under Allegro, i.e. Clozure makes a mixed
;;      case symbol for the category if we take the same string as we want
;;      to use for the word, and that won't meet references to the category
;;      via symbols.  7/7/11 Tweaked that to account for alisp. 7/31 moved
;;      in the event category from rules/syntax/tense and added a helper
;;      function to make subcategories of event for primed verbs. 8/1 moved
;;      them all to upper-model so they will be loaded early.

(in-package :sparser)

;;;------------------------------
;;; making subcategories of kind
;;;------------------------------

(defun find-or-define-kind (string)
  ;; Called from reify-segment-head-as-a-category when running under
  ;; *do-strong-domain-modeling* in the case where there is not already
  ;; an edge over the head of the segment.
  ;;
  ;; We look for an existing category first to catch cases like 'city'
  ;; where there is already code in grammar/model/core that uses the
  ;; category, but no rules that recognize the category word per se
  ;; and set up a suitable reference for it (e.g. anaphoric or indefinite).
  ;;
  ;; Returns the category and a rule that will recognize it going forward
  ;; that we use for the edge that the reify routine  is going to make.
  ;;
  (let* ((symbol (name-to-use-for-category string))
         (word (define-word string))
         (category (category-named symbol))
         (new? (null category)))
    (when new?
      ;; should check if the word is plural, otherwise the automatically
      ;; created noun won't be as general as it should be.
      ;; "asparagus" and "water" would be good examples of the wrong
      ;; thing happening for other reasons.
      (let ((expr `(define-category ,symbol
                     :specializes kind
                     :instantiates ,symbol
                     :bindings (name ,word) ;; n.b. it's a plist
                     :realization (:common-noun ,string))))
        (setq category (eval expr))))
    
    (let ((rule
	   (if (not new?)
	     (construct-cfr
	      ;; n.b. this by-passes the safety and duplicate
	      ;; checks in def-cfr, so something could go wrong
	      ;; in principle
	      category  ;; lhs
	      (list word) ;; rhs
	      (category-named 'common-noun) ;; form
	      category ;; referent
	      :define-cfr) ;; source -- see note-grammar-module
			   
	     (else
	       ;; The category construction gave us two rules: 
	       ;; '<symbol> -> word-singular', and
	       ;; '<symbol> -> word-plural' where it forms the plural in
	       ;; the obvious way. 
	       (caadr (memq :rules (cat-realization category)))))))

      (values category rule))))



;;;-------------------------------
;;; making subcategories of event
;;;-------------------------------

(defmethod new-category-specializing-event ((w word))
  ;; When used by the primed word decoder this works in conjunction
  ;; with define-main-verb, so no need to write any rules here.
  (let ( category )
    (when (category-named (word-symbol w))
      (error "Weirdness. The category for ~a exists but ~
              it shouldn't" w))
    (let* ((name (intern (symbol-name (word-symbol w))
                         (find-package :sparser))) ;; not! *category-package*
           (expr `(define-category ,name
                    :specializes event
                    :instantiates ,name)))
      (setq category (eval expr))
      category)))
    


;;;--------------------------------
;;; other stuff ///////// move it?
;;;--------------------------------

(define-category compound-word
  :instantiates self
  :binds ((list-of-words :primitive list)))






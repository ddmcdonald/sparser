;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995-1999,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "compass points"
;;;   Module:  "model;core:places:"
;;;  version:  0.3 October 2011

;; initiated in 1/9/95, 2/24 added string printer. 
;; 0.1 (11/27/99) reworked them using realizations and implicit indexing. 
;;      Note that the adjective forms are still old style and won't work.
;; 0.2 (9/5/07) Making it over in the same style as directions.
;; 0.3 (8/11/11) Adding the "of <location>" construction. 9/26 bunch
;;     of tweaking on that. Added abbreviations 10/3/11.

(in-package :sparser)


;;--- object

(define-category  compass-point
  :instantiates  self
  :specializes   direction
  :binds ((name :primitive word)))

;;--- def form

;; These words compose with "the" and take complements that make the
;; direction more precise ("of the corn field").

;;///// Should consider rationalizing this def-form since if you look at
;; the category you expect a different labeling.

(defun define-compass-point (string abbrev &optional ward)
  (let* ((brackets (if ward
		             '( .[np np]. )
		             '( .[np )))
         (word (or (word-named string) ;; take whatever the original brackets are
                   (define-function-word string 
                       :form 'noun
                       :brackets brackets)))
         (i (define-individual 'compass-point :name word))
         (noun-rule (define-cfr category::direction `(,word)
                      :form category::noun
                      :referent i))
         (abbrev-word (unless ward
                        (define-function-word abbrev 
                          :form 'noun
                          :brackets brackets)))
         (abbrev-rule (unless ward
                        (define-cfr category::direction `(,abbrev-word)
                         :form category::noun
                         :referent i)))
         ;; /////////// is this combination worth a tree family?
         ;; // or at least a schema to associate with it?
         (adj (define-adjective (concatenate 'string string "ern")))
         (adj-rule
          (unless ward
            (define-cfr category::direction `(,adj)
              :form category::adjective
              :referent i)))
         (rules `(,noun-rule ,adj-rule)))

    ;;//// need an idiom for stashing these rules on the plist
    ;; of the individual: (cadr (memq :rules (unit-plist cp)))
    (values i rules)))


;;--- printer

(defun string/Compass-point (cp)
  (let ((name (value-of 'name cp)))
    (if name
      (word-pname name)
      "[compass point w/o name]" )))



;;--- of-complement ("south of the Lee exit")

(define-additional-realization relative-location
  ;; category defined in places/relational)
  (:tree-family simple-of-complement
   :mapping ((np-item . functor)
             (of-item . place)
             (np . location)
             (complement . location)
             (base-np . direction) ;; compass-point
                ;; some directions as well, but not all
             (result-type . relative-location))))


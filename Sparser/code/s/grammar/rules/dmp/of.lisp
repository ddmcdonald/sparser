;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "of"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  October 1994

;; initiated 8/23/94 v2.3, broken out from [sibling relations]
;; 9/28 moved out refernt-of-segment to [segments].  10/5 added gate to keep it
;; from acting in other modes than dm&p.  10/24 def head was mult-edges

(in-package :sparser)

;;;----------------------------------
;;;  single-term-NP + "of" + segment
;;;----------------------------------

(set-generic-treetop-action (word-named "of")
                            'of/check-neighboring-segments)

(defun of/check-neighboring-segments (of-edge)
  (when *do-domain-modeling-and-population*
    (unless (edge-p of-edge)
      (break "Change in assumptions: arg. to 'of' treetop action ~
              ~%is no longer an edge but: ~A" of-edge))
    
    (let ((segment-before (left-treetop-at/edge
                           (pos-edge-starts-at of-edge)))
          (segment-after (right-treetop-at/edge
                          (pos-edge-ends-at of-edge))))
      
      (cond ((word-p segment-before)
             (when (readout-segments?)
               (format t "  !! '[segment] of' is a word: ~A~%" segment-before)))
            
            ((edge-over-literal? segment-before)
             (when (readout-segments?)
               (format t "  !! '[segment] of' is a literal: ~A~%" segment-before)))
            
            ((eq category::number (edge-category segment-before))
             (span-of-phrase (referent-of-segment
                              (edge-referent segment-after))
                             segment-before segment-after))
            
            ((eq category::state (edge-category segment-before))
             ) ;; "have"
            
            ((function-word? segment-before)
             ) ;; "out of" ///these should be collected
            
            ((edge-referent segment-before)
             (when (eq category::one-content-word-np
                       (value-of 'form (edge-referent segment-before)))
               (when (eq word::|the|
                         (pos-terminal
                          (pos-edge-starts-at segment-before)))
                 (analyze-of-segment/definite-term
                  segment-before segment-after))))
            (t
             (when (readout-segments?)
               (format t "  !! prior segment can't be analyzed by 'of'~
                          ~%      ~A~%" segment-before)))))))



(define-category  genitive
  :specializes nil
  :instantiates self
  :binds ((owner . anything)  ;; the color of [window borders]
          (owned . anything)) ;; the [color] of window borders
  :index (:temporary :sequential-keys owner owned))



(defun analyze-of-segment/definite-term (edge-before edge-after)
  (let* ((pos-of-head (chart-position-after  ;; after the "the"
                       (pos-edge-starts-at edge-before)))
         (treetop-before (right-treetop-at pos-of-head))
         (segment-head (when (edge-p edge-after)
                         (unless (edge-over-literal? edge-after)
                           (referent-of-segment 
                            (edge-referent edge-after)))))
         (term (when (edge-p treetop-before)
                 (edge-referent treetop-before))))

    (when (eq treetop-before :multiple-initial-edges)
      (setq treetop-before (single-best-edge-over-word pos-of-head)
            term (edge-referent treetop-before)))

    (unless term
      (if *break-on-pattern-outside-coverage?*
        (break "no referent for term after 'the'~
                ~%  ~A~%" (right-treetop-at 
                           (chart-position-after
                            (pos-edge-starts-at edge-before))))
        (return-from analyze-of-segment/definite-term)))

    (unless segment-head
      (if *break-on-pattern-outside-coverage?*
        (break "no head binding on~%  ~A~%"
               (edge-referent edge-after))
        (return-from analyze-of-segment/definite-term)))


    (let ((of-relation (instantiate-a-generic segment-head
                                              term)))
      (span-of-phrase of-relation edge-before edge-after))))




(defun instantiate-a-generic (owner owned)
  (or (find-individual 'genitive
                       :owner owner  :owned owned)
      (define-individual 'genitive
                       :owner owner  :owned owned)))


;; // Could we have a sensible rule? //could we drive from it rather
;; than from this treetop aftion?
(define-category of-phrase)

(defun span-of-phrase (referent edge-before edge-after)
  (make-edge-over-long-span
   (pos-edge-starts-at edge-before)
   (pos-edge-ends-at edge-after)
   (category-named 'of-phrase)
   :rule :treetop-pattern/of
   :form (category-named 'np)
   :referent referent))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "trap"
;;;   Module:  "drivers;forest:"
;;;  Version:  2.7 April 2013

;; 2.0 (4/29/91 v1.8.4) bumped the version to 2 and started bringing it
;;      around to the new scheme.
;; 2.1 (10/31 v2.0) Pulled the old provision for the edge not really
;;      being a treetop and replaced it with a break
;; 2.2 (11/25 v2.0) put in test against *do-general-actions-on-treetops*
;;      so they wouldn't be done accidentally.
;; 2.3 (7/16/93 v2.3) cleaned things up a bit.
;; 2.4 (8/7/94) passing through a position argument. 9/27 flushed redundant trace
;; 2.5 (1/16/95) added an escape path for case of edge not being a treetop
;; 2.6 (5/11) put the break under gate of *debug-treetops*
;; 2.7 (11/9) put in a hack check for the case where the edge that the tt is
;;      used-in is a quotation, in which case we ignore the error msg because\
;;      it really deserves a better treatment.  (12/29) added angle-brackets
;;      (12/31) added conjunctions. (1/1/96) added the rest of the established
;;      'paired-punctuation' cases.  4/1/13 Made defult of debug flag be nil,
;;      and added no-doted to the ok-to-be-covered check

(in-package :sparser)

(unless (boundp '*debug-treetops*)
  (defparameter *debug-treetops* nil))


(defun do-treetop (tt next-position &key moment)
  ;; called from do-treetop-triggers which is organizing the walk using
  ;; its subroutine do-treetop-loop

  (if (and (typep tt 'edge)
           (edge-used-in tt))
    (then
      (unless (its-ok-for-this-ostensible-treetop-to-be-covered tt)
        (when *debug-treetops*
          (break "~%~%Control Structure bug: The edge passed to Do-Treetop,~
                  ~%   ~A over \"~A\"~
                  ~%   is not a treetop because it is used in another edge,~
                  ~%   ~A over \"~A\"~
                  ~%~%Continuing from this break will use the parent edge as ~
                  the treetop~%"
                 tt (string-of-words-between (pos-edge-starts-at tt)
                                             (pos-edge-ends-at tt))
                 (edge-used-in tt)
                 (string-of-words-between (pos-edge-starts-at (edge-used-in tt))
                                          (pos-edge-ends-at (edge-used-in tt)))))
        
        ;; here's an escape if the immediate goal is to just 'get through'
        ;; the text rather than debug this situation immediately.
        (do-treetop (edge-used-in tt) next-position :moment moment)))

    (else
      (when *do-conceptual-analysis*
        (do-conceptual-analysis-off-new-treetop tt))
      
      (when *do-general-actions-on-treetops*
        (do-generic-actions-off-treetop tt next-position)))))



(defun its-ok-for-this-ostensible-treetop-to-be-covered (tt)
  ;; called from do-treetop as a check for some odd timing cases
  ;; that should be better thought through.
  (let* ((parent (top-edge-used-in tt))  ;; condition for getting here
         (category-name (cat-symbol (edge-category parent))))
    (or
     (not (dotted-edge? tt))

     (member category-name
             `( category::quotation
                category::parentheses
                category::angle-brackets
                category::square-brackets
                category::curly-brackets
                ;; /// in a better world, we'd make sure that all
                ;; the higher-order processing was bounded within the
                ;; region of the quotation (etc.) and was finished before
                ;; we set down the edge, in which case we wouldn't have
                ;; this problem.
                ))

     (and (edge-form parent)
          (member (cat-symbol (edge-form parent))
                  `( category::text-segment
                     ;; ///ditto.  This is the case of a headline
                     ;; overspanning the edges
                     )))

     (eq (edge-rule parent) :conjunction/identical-adjacent-labels)
     ;; This feels extremely ad-hoc since I haven't got a model of what
     ;; circumstance of timing would let the (2d) daughter of the
     ;; conjunct be seen as a treetop. Presents on "1996 and 1995"
     )))


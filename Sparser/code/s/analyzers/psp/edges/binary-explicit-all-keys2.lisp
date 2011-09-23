;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "binary/explicit all keys"
;;;    Module:   "objects;chart:psp:edges:"
;;;   Version:   2.8 August 1995

;; 2.0 (11/10/92 v2.3) Simplified the name, added :form
;; 2.1 (5/5/93) Added an alternative spelling Make-chart-edge that's easier
;;      to remember. Keeping Make-edge/all-keys for Sparser-internal use
;;      where the distinctions are useful.
;; 2.2 (5/16) Added keys for the daughters
;; 2.3 (12/29) reordered the referent calculation to after all the fields are filled
;; 2.4 (3/13/94) added provision to mark the all daughters used-by fields
;; 2.5 (4/5) wasn't marking used-by if both daughters and edges were specified
;; 2.6 (7/13) added trace
;; 2.7 (7/21) defaulted some cases in  Make-chart-edge from the rule
;; 2.8 (8/28/95) added default 'used-by' for the case of two rules not being adjacent

(in-package :sparser)


(defun make-chart-edge (&key left-edge right-edge
                             starting-position ending-position
                             left-daughter right-daughter
                             category
                             form
                             rule rule-name
                             referent )
  
  (make-edge/all-keys
   :left-edge           left-edge 
   :right-edge          right-edge
   :starting-position   starting-position
   :ending-position     ending-position
   :left-daughter       left-daughter
   :right-daughter      right-daughter
   :category            (or category
                            (when rule
                              (when (cfr-p rule)
                                (cfr-category rule))))
   :form                (or form
                            (when rule
                              (when (cfr-p rule)
                                (cfr-form rule))))
   :rule                rule
   :rule-name           rule-name
   :referent            (or referent
                            (when rule
                              (when (cfr-p rule)
                                (cfr-referent rule))))
   ))


(defun make-edge/all-keys (&key left-edge right-edge
                                starting-position ending-position
                                left-daughter right-daughter
                                category
                                form
                                rule rule-name
                                referent )

  (unless starting-position
    (unless left-edge
      (error "Either start/end positions or left/right edges ~
              must be supplied")))

  (if (or left-edge right-edge)
    (unless (and left-edge right-edge)
      (error "Both edges must be supplied if one is")))

  (if (or starting-position ending-position)
    (unless (and starting-position ending-position)
      (error "Both positions must be supplied if one is")))

  (when starting-position
    (unless (typep starting-position 'position)
      (error "The positions must be objects of type position~
              ~% Starting-position is a ~A"
             (type-of starting-position))))

  (when left-edge
    (unless (typep left-edge 'edge)
      (error "The edges must be objects of type edge~
              ~%  Left-edge is a ~A"
             (type-of left-edge))))


  (let ((edge (next-edge-from-resource))
        (start-vector (if starting-position
                        (pos-starts-here starting-position)
                        (edge-starts-at left-edge)))
        (end-vector   (if ending-position
                        (pos-ends-here ending-position)
                        (edge-ends-at right-edge))))

    (setf (edge-category  edge)  category)
    (setf (edge-rule edge)       (or rule rule-name))
    (setf (edge-form edge)       form)

    (setf (edge-starts-at edge) start-vector)
    (setf (edge-ends-at   edge) end-vector)


    ;;------------- sorting out the 'used-by' data
    (if left-daughter
      ;; n.b. can't let the daughters just replace the specified
      ;; edges because the edges provide edge vectors and the
      ;; daughters have no such duty (they could be words)
      (then
        (when (edge-p left-daughter)
          ;; could be a word
          (set-used-by left-daughter edge))
        (setf (edge-left-daughter  edge) left-daughter))
      (when left-edge
        (setf (edge-left-daughter  edge) left-edge)
        (set-used-by left-edge  edge)))

    (if right-daughter
      (then
        (when (edge-p right-daughter)
          ;; it could be a marker like :single-term
          (set-used-by right-daughter edge))
        (setf (edge-right-daughter edge) right-daughter))
      (when right-edge
        (setf (edge-right-daughter edge) right-edge)
        (set-used-by right-edge edge)))

    (cond
     ((and (null left-daughter)
           (null right-daughter)
           (null left-edge)
           (null right-edge))
      ;; ?? would there ever be a reason to specify the right-daughter
      ;; and not the left ??
      (set-used-by/anonymous-daughters starting-position
                                       ending-position
                                       edge))
     ((and (and left-edge right-edge)
           (not (eq (pos-edge-ends-at left-edge)
                    (pos-edge-starts-at right-edge))))
      (set-used-by/anonymous-daughters (pos-edge-ends-at left-edge)
                                       (pos-edge-starts-at right-edge)
                                       edge))
     ((and (and left-daughter right-daughter)
           (and (edge-p left-daughter) (edge-p right-daughter))
           (not (eq (pos-edge-ends-at left-daughter)
                    (pos-edge-starts-at right-daughter))))
      (set-used-by/anonymous-daughters (pos-edge-ends-at left-daughter)
                                       (pos-edge-starts-at right-daughter)
                                       edge)))


 
    (setf (edge-referent edge)
          (if (and (cfr-p rule)
                   left-edge right-edge)
            (referent-from-rule
             left-edge right-edge edge rule)
            referent))
    
    (knit-edge-into-positions edge start-vector end-vector)
    (complete edge)

    (when *trace-edge-creation*
      (format t "~&~%creating ~A from ~A~
                 ~%    rule: ~A"
              edge
              (edge-position-in-resource-array edge)
              rule))

    (assess-edge-label category edge)

    edge ))


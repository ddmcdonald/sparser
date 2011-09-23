;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2000 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "multiply"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  4.0 June 2000

;; 0.0 (9/4/92 v2.3) initiated.
;; 0.1 (10/12) pulled multiply-ids back to [chart;edges:multiplication],
;;      and extensively revised it to handle all the cases in form rules.
;;     (10/14) fixed some unforseen cases
;;     (12/16) adding a trace msg to a case that was missed
;; 0.2 (6/13/94) added check for right-edge being dotted
;; 2.0 (7/12) completely rewrote the threading essentially from scratch
;; 3.0 (9/28) fixed substantial case-gap in that
;;     (12/29) added more traces
;; 3.1 (12/30) added Check-form-form and its threading
;; 4.0 (2/29/00) Incorporating checks against composite referents. 6/17 got
;;      one case working.

(in-package :sparser)

;;;------------------------------
;;; call from the check routines
;;;------------------------------

(defun multiply-edges (left-edge right-edge)

  ;; Called from the check routines, e.g. check-one-one
  ;; Looks for any possibility of composition for these edges first,
  ;; i.e. whether there are the right direction indexes for these,
  ;; and then whether there is a category combination or, barring
  ;; that, a form combination.
  (tr :multiply-edges left-edge right-edge)

  (let* ((left-rs (rule-set-for (edge-category left-edge)))
         (left-category-ids (when left-rs
                              (rs-right-looking-ids left-rs)))
         (right-rs (rule-set-for (edge-category right-edge)))
         (right-category-ids (when right-rs
                               (rs-left-looking-ids right-rs))))

    (if (edge-of-dotted-intermediary right-edge)
      ;; dotted rules only combine to their right, never to their left
      (then (tr :right-edge-is-dotted right-edge)
            nil)
      (else
        (if *edges-from-referent-categories*
          (setup-referent-rule-sets left-category-ids right-category-ids
                                    left-edge right-edge)
          (multiply-ids-dispatch left-category-ids right-category-ids
                                 left-edge right-edge))))))


;;;-----------------------------------
;;; ringing the changes on composites
;;;-----------------------------------

(defun setup-referent-rule-sets (left-category-ids right-category-ids
                                 left-edge right-edge)
  (let ((left-composite? (composite-referent-p left-edge))
        (right-composite? (composite-referent-p right-edge)))

    (if (not (or left-composite? right-composite?))
      ;; devolves to the usual case
      (multiply-ids-dispatch left-category-ids right-category-ids
                             left-edge right-edge)
      (cond
       ((and left-composite? right-composite?)
        (break "stub: write multiply-composites-against-composite")
        (multiply-composites-against-composites
         left-edge right-edge
         left-category-ids right-category-ids
         (all-the-categories-in-a-composite (edge-referent left-edge))
         (all-the-categories-in-a-composite (edge-referent right-edge))))
       (left-composite?
        (break "stub: write multiply-left-composite-against-single-right")
        (multiply-left-composite-against-single-right
         left-edge right-edge
         (edge-category left-edge) (edge-category right-edge)
         (all-the-categories-in-a-composite (edge-referent left-edge))
         (category-of (edge-referent right-edge))))
       (right-composite?
        (multiply-single-left-against-right-composite
         left-edge right-edge
         (edge-category left-edge) (edge-category right-edge)
         (category-of (edge-referent left-edge))
         (all-the-categories-in-a-composite (edge-referent right-edge))))
       (t (error
           "shouldn't have gotten here"))))))

(defun multiply-single-left-against-right-composite
       (left-edge right-edge 
        left-category right-category
        left-ref-category right-composite-categories)
   (when (> (length right-composite-categories) 2)
     (break "more than 2 subtypes in composite -- add cases"))
   (let ((1st-right-category (first right-composite-categories))
         (2d-right-category (second right-composite-categories))
         rule )
   (or
    (setq rule (multiply-labels left-category right-category))

    (setq rule (multiply-labels left-category 1st-right-category))

    (setq rule (multiply-labels left-category 2d-right-category))

    (setq rule (multiply-labels left-ref-category right-category))

    (setq rule (multiply-labels left-ref-category 1st-right-category))

    (setq rule (multiply-labels left-ref-category 2d-right-category)))

   rule ))




(defun rule-sets-of-referent (edge)
  (let ((referent (edge-referent edge)))
    (if (not (composite-referent-p edge))
      (let ((rs (rule-set-for referent :no-errors)))
        (when rs
          (list rs)))
      (let ((categories (all-the-categories-in-a-composite referent))
            rs rule-sets )
        (dolist (category categories)
          (setq rs (rule-set-for category :no-errors))
          (when rs
            (push rs rule-sets)))
        (nreverse rule-sets)))))

(defun left-looking-ids (list-of-rule-sets)
  (let ( left-ids ids )
    (dolist (rs list-of-rule-sets)
      (setq left-ids (rs-left-looking-ids rs))
      (when left-ids
        (push left-ids ids)))
    (nreverse ids)))
(defun right-looking-ids (list-of-rule-sets)
  (let ( right-ids ids )
    (dolist (rs list-of-rule-sets)
      (setq right-ids (rs-right-looking-ids rs))
      (when right-ids
        (push right-ids ids)))
    (nreverse ids)))

 

(defun multiply-including-referent-ids (left-edge right-edge
                                        left-category-ids right-category-ids
                                        left-ref-ids right-ref-ids)
  (let ((left-label-id (car left-category-ids))
        (right-label-id (car right-category-ids))
        (left-ref-id (car left-ref-ids))
        (right-ref-id (car right-ref-ids))
        rule )

    (or (when (and left-label-id right-label-id)
          (setq rule (multiply-ids left-label-id right-label-id))
          (when rule
            (tr :multiply-succeeded rule left-edge right-edge)
            rule ))

        (when (and left-ref-id right-label-id)
          (setq rule (multiply-ids left-ref-id right-label-id))
          (when rule
            (tr :multiply-succeeded rule left-edge right-edge)
            rule ))
        
        (when (and left-label-id right-ref-id)
      

  (break)
  (or
)))))

  
;;;-----------------------------------------------------
;;;              Cases without composites
;;;-----------------------------------------------------

(defun multiply-ids-dispatch (left-category-ids right-category-ids
                              left-edge right-edge)
  (cond ((and left-category-ids right-category-ids)
         (tr :both-have-category-ids)
         (mult/both-edges-with-ids left-category-ids right-category-ids
                                   left-edge right-edge))
        
        ;; for these two cases, the only possibility is a form rule
        (left-category-ids
         (tr :only-left-category-has-ids)
         (mult/just-left-ids (cdr left-category-ids)
                             left-edge right-edge))
        (right-category-ids
         (tr :only-right-category-has-ids)
         (mult/just-right-ids (cdr right-category-ids)
                              left-edge right-edge))
        (t
         (tr :no-ids-on-either-edge)
         nil )))



;;;----------------------------
;;; category ids on both edges
;;;----------------------------

(defun mult/both-edges-with-ids (left-category-ids right-category-ids
                                 left-edge right-edge)

  (let ((left-label-id  (car left-category-ids))
        (right-label-id (car right-category-ids))
        (left-form-id   (cdr left-category-ids))
        (right-form-id  (cdr right-category-ids)))

    (cond ((and left-label-id right-label-id)
           (tr :both-right-and-left-label-ids)
           (let ((rule (multiply-ids left-label-id
                                     right-label-id)))
             (if rule
               (then (tr :multiply-succeeded rule left-edge right-edge)
                     rule)
               (else
                 ;; Since the labels in the category slots don't combine,
                 ;; perhaps one of their form possibilities combines
                 (check-for-either-form-rule left-edge  right-edge
                                             left-form-id right-form-id)))))

          (left-label-id
           (tr :no-right-category-id)
           ;; The right category label doesn't make any combinations.
           ;; If the left category makes form combinations, then we can 
           ;; look to see if it would combine with the form label of the right edge
           (cond (right-form-id
                  (mult/just-Right-ids right-form-id left-edge right-edge))
                 (left-form-id
                  (mult/just-Left-ids left-form-id left-edge right-edge))
                 (t (tr :neither-form-id))))

          (right-label-id
           (tr :no-left-category-label-id)
           (cond (right-form-id
                  (mult/just-Right-ids right-form-id left-edge right-edge))
                 (left-form-id
                  (mult/just-Left-ids left-form-id left-edge right-edge))
                 (t (tr :neither-form-id))))

          ((and left-form-id right-form-id)
           (tr :neither-category-id)
           (check-for-either-form-rule left-edge right-edge
                                       left-form-id right-form-id))

          (left-form-id
           (mult/just-left-ids left-form-id left-form-id right-form-id))

          (right-form-id
           (mult/just-right-ids right-form-id left-edge right-edge))

          (t
           (break "Logic bug: shouldn't have gotten here")))))



;;;-----------------------------------------------------------------------------
;;; setting up for checking alternative category compositions within composites
;;;-----------------------------------------------------------------------------

(defun mult/right-composite (left-category-ids right-composite-referent 
                             left-edge right-edge)
  (unless left-category-ids
    ;; check for ids off the referent, which is often more general than 
    ;; the category
    (let* ((left-referent (edge-referent left-edge))
           (left-ref-category
            (when left-referent ;;/// lookup general accessor
              (or (when (individual-p left-referent)
                    (first (indiv-type left-referent))))))
           (left-rs (when left-ref-category (rule-set-for left-ref-category)))
           (left-ref-ids (when left-rs (rs-right-looking-ids left-rs))))
      (when left-ref-ids
        (tr :using-ids-of-left-referent left-edge left-referent))
      (setq left-category-ids left-ref-ids)))

  (let ((right-categories (all-the-categories-in-a-composite 
                           right-composite-referent))
        right-rs  right-category-ids  rule )
    (dolist (right-category right-categories)
      (setq right-rs (rule-set-for right-category))
      (when right-rs (setq right-category-ids (rs-left-looking-ids right-rs)))
      (tr :trying-category-in-composite right-category)
      (setq rule (multiply-ids-dispatch left-category-ids right-category-ids
                                        left-edge right-edge))
      (when rule
        (return-from mult/right-composite rule)))))


;;;----------------------------------------
;;; setting up for checking for form-rules
;;;----------------------------------------

(defun check-for-either-form-rule (left-edge right-edge
                                   left-form-id right-form-id )

  (cond (left-form-id
         (mult/just-left-ids left-form-id left-edge right-edge))

        (right-form-id
         (mult/just-right-ids right-form-id left-edge right-edge))

        (t
         (tr :multiply-failed left-edge right-edge)
         nil )))



(defun mult/just-Left-ids (left-form-id
                           left-edge right-edge)
  (if left-form-id
    ;; the call from Multiply-edges doesn't check, it just
    ;; accesses the field where the id would be since it does know
    ;; that the left category label does have (some) ids.
    (let* ((right-form-label (edge-form right-edge))
           (right-form-rs (when right-form-label
                            (cat-rule-set right-form-label)))
           (right-form-id (when right-form-rs
                            (cdr (rs-left-looking-ids right-form-rs)))))

      (tr :right-form-id left-edge right-edge)
      (if right-form-id
        (check-right-for-form-rule left-edge right-edge
                                   left-form-id right-form-id)
        (else (tr :right-form-id-failed left-edge right-edge)
              nil )))
    (else
      (tr :but-left-has-no-form-id)
      (check-form-form left-edge right-edge))))



(defun mult/just-Right-ids (right-form-id
                            left-edge right-edge)
  (if right-form-id
    ;; the call from Multiply-edges doesn't check
    (let* ((left-form-label (edge-form left-edge))
           (left-form-rs (when left-form-label
                           (cat-rule-set left-form-label)))
           (left-form-id (when left-form-rs
                           (cdr (rs-right-looking-ids left-form-rs)))))

      (tr :left-form-id left-edge right-edge)
      (if left-form-id
        (check-left-for-form-rule left-edge right-edge
                                  left-form-id right-form-id)
        (else (tr :left-form-id-failed left-edge right-edge)
              nil )))
    (else
      (tr :but-right-has-no-form-id)
      (check-form-form left-edge right-edge))))
      



;;;----------------------------------
;;; checking form-rule possibilities
;;;----------------------------------

(defun check-left-for-form-rule (left-edge right-edge
                                 left-form-id
                                 right-label-id)

  (let ((rule (multiply-ids left-form-id right-label-id)))
    (if rule
      (then (tr :right-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :right-form-id-failed left-edge right-edge)
            nil))))



(defun check-right-for-form-rule (left-edge right-edge
                                  left-label-id
                                  right-form-id)

  (let ((rule (multiply-ids left-label-id right-form-id)))
    (if rule
      (then (tr :right-form-id-succeeded rule left-edge right-edge)
            rule)
      (else (tr :right-form-id-failed left-edge right-edge)
            nil))))




;;;------------------------------
;;; check purely syntactic rules
;;;------------------------------

(defparameter *allow-pure-syntax-rules* nil)

(defun check-form-form (left-edge right-edge)
  (if *allow-pure-syntax-rules*
    (then
      (tr :looking-for-syntactic-combination)
      (let ((left-form-label (edge-form left-edge))
            (right-form-label (edge-form right-edge)))
        (cond
         ((and left-form-label right-form-label)
          (let ((left-form-rs (label-rule-set left-form-label))
                (right-form-rs (label-rule-set right-form-label)))
            (cond
             ((and left-form-rs right-form-rs)
              (let ((left-form-id
                     (cdr (rs-right-looking-ids left-form-rs)))
                    (right-form-id
                     (cdr (rs-left-looking-ids right-form-rs))))
                (cond
                 ((and left-form-id right-form-id)
                  (tr :both-form-labels-have-ids)
                  (let ((rule (multiply-ids left-form-id
                                            right-form-id)))
                    (if rule
                      (then (tr :syntactic-combination-succeeded rule)
                            rule )
                      (else (tr :syntactic-combination-failed)
                            nil ))))
                 
                 (left-form-id
                  (tr :no-form-id-on-right-form-label)
                  nil)
                 (right-form-id
                  (tr :no-form-id-on-left-form-label)
                  nil)
                 (t (tr :neither-form-label-has-form-ids)
                    nil))))

              (left-form-rs
               (tr :no-rules-mention-right-form-label right-form-label)
               nil)
              (right-form-rs
               (tr :no-rules-mention-left-form-label left-form-label)
               nil))))

         (left-form-label
          (tr :no-form-label-on-right-edge right-edge)
          nil)
         (right-form-label
          (tr :no-form-label-on-left-edge right-edge)
          nil))))
      nil ))



;;;-------
;;; tests
;;;-------

#|
(trace-edge-check)

;; no ids of either sort for either term
(p "xx yy")

;; category ids on both terms
(def-cfr mult-1 ("aa" "bb"))
(p "aa bb")

;; category id on the 2d term, only a form id on the 1st
(def-form-category rr)
(def-cfr mult-2 ("cc")
  :form rr )
(def-form-rule (rr "dd"))
(p "cc dd")

;; category id on the 1st term, only a form id on the 2d
(def-form-category ss)
(def-cfr mult-3 ("ee")
  :form ss )
(def-form-rule ("ff" ss))
(p "ff ee")

;; category ids on both, but only a right-headed form rule works
(def-cfr g ("gg"))
(def-cfr h ("hh")
  :form rr )
(def-cfr mult-4 (g mult-2))  ;; "gg cc"
(def-cfr mult-5 (mult-2 h))  ;; "cc hh"
(def-form-rule (g rr))
(p "gg hh")

;; category ids on both, but only a left-headed form rule works
(def-cfr i ("ii")
  :form ss )
(def-cfr j ("jj"))
(def-cfr mult-6 (i mult-2))  ;; "ii cc"
(def-cfr mult-7 (mult-2 j))  ;; "cc jj"
(def-form-rule (ss j))
(p "ii jj")

(untrace-edge-check)
|#


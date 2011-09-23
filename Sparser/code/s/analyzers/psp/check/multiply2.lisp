;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "multiply"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  2.0 July 1994

;; 0.0 (9/4/92 v2.3) initiated.
;; 0.1 (10/12) pulled multiply-ids back to [chart;edges:multiplication],
;;      and extensively revised it to handle all the cases in form rules.
;;     (10/14) fixed some unforseen cases
;;     (12/16) adding a trace msg to a case that was missed
;; 0.2 (6/13/94) added check for right-edge being dotted
;; 2.0 (7/12) completely rewrote the threading essentially from scratch

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

  (let* ((left-rs (rule-set-for (edge-category left-edge)))
         (left-category-ids (when left-rs
                              (rs-right-looking-ids left-rs)))
         (right-rs (rule-set-for (edge-category right-edge)))
         (right-category-ids (when right-rs
                               (rs-left-looking-ids right-rs))))

    (tr :multiply-edges left-edge right-edge)
 
    (if (edge-of-dotted-intermediary right-edge)
      ;; dotted rules only combine to their right, never to their left
      (then (tr :right-edge-is-dotted right-edge)
            nil)

      (cond ((and left-category-ids right-category-ids)
             (mult/both-edges-with-ids left-category-ids right-category-ids
                                       left-edge right-edge))

            ;; for these two cases, the only possibility is a form rule
            (left-category-ids
             (mult/just-left-ids (cdr left-category-ids)
                                 left-edge right-edge))
            (right-category-ids
             (mult/just-right-ids (cdr right-category-ids)
                                  left-edge right-edge))
            (t
             (tr :no-ids-on-either-edge)
             nil )))))




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
               
               ;; Since the labels in the category slots don't combine,
               ;; perhaps one of their form possibilities combines
               (check-for-either-form-rule left-edge  right-edge
                                           left-form-id right-form-id))))

          ((and left-label-id
                (tr :no-right-category-id))
           ;; The right category label doesn't make any combinations.
           ;; If the left category makes form combinations, then we can 
           ;; look to see if it would combine with the form label of the right edge
           (if left-form-id
             (mult/just-Left-ids left-form-id left-edge right-edge)
             (else (tr :no-left-form-id)
                   nil)))

          ((and right-label-id
                (tr :no-left-category-label-id))
           (if right-form-id
             (mult/just-Right-ids right-form-id left-edge right-edge)
             (else (tr :no-right-form-id)
                   nil)))

          ((and left-form-id right-form-id)
           (check-for-either-form-rule left-edge right-edge
                                       left-form-id right-form-id))

          (left-form-id
           (mult/just-left-ids left-form-id left-form-id right-form-id))

          (right-form-id
           (mult/just-right-ids right-form-id left-edge right-edge))

          (t
           (break "Logic bug: shouldn't have gotten here")))))
                


;;;----------------------------------------
;;; setting up for checking for form-rules
;;;----------------------------------------

(defun check-for-either-form-rule (left-edge right-edge
                                   left-form-id right-form-id
                            )

  (if left-form-id
    (mult/just-left-ids left-form-id left-edge right-edge)

    (if right-form-id
      (mult/just-right-ids right-form-id left-edge right-edge)

      (else
        (tr :multiply-failed left-edge right-edge)
        nil ))))


(defun mult/just-Left-ids (left-form-id
                           left-edge right-edge)
  (when left-form-id
    ;; the call from Multiply-edges doesn't check
    (let* ((right-form-label (edge-form right-edge))
           (right-form-rs (when right-form-label
                            (cat-rule-set right-form-label)))
           (right-form-id (when right-form-rs
                            (cdr (rs-left-looking-ids right-form-rs)))))
      (if right-form-id
        (check-right-for-form-rule left-edge right-edge
                                   left-form-id right-form-id)
        (else (tr :right-form-id-failed left-edge right-edge)
              nil )))))


(defun mult/just-Right-ids (right-form-id
                            left-edge right-edge)
  (when right-form-id
    ;; the call from Multiply-edges doesn't check
    (let* ((left-form-label (edge-form left-edge))
           (left-form-rs (when left-form-label
                           (cat-rule-set left-form-label)))
           (left-form-id (when left-form-rs
                           (cdr (rs-right-looking-ids left-form-rs)))))
      (if left-form-id
        (check-left-for-form-rule left-edge right-edge
                                  left-form-id right-form-id)
        (else (tr :left-form-id-failed left-edge right-edge)
              nil )))))



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


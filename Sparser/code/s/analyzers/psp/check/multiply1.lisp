;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "multiply"
;;;   Module:  "analyzers;psp:check:"
;;;  Version:  0.2 June 1994

;; 0.0 (9/4/92 v2.3) initiated.
;; 0.1 (10/12) pulled multiply-ids back to [chart;edges:multiplication],
;;      and extensively revised it to handle all the cases in form rules.
;;     (10/14) fixed some unforseen cases
;;     (12/16) adding a trace msg to a case that was missed
;; 0.2 (6/13/94) added check for right-edge being dotted

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
                               (rs-left-looking-ids right-rs)))
         rule )

    (unless (edge-of-dotted-intermediary right-edge)
      ;; dotted rules only combine to their right, never to their left

    (tr :multiply-edges left-edge right-edge)
    (if left-category-ids
      (if right-category-ids

        (let ((left-label-id  (car left-category-ids))
              (right-label-id (car right-category-ids)))

          (if left-label-id
            (if right-label-id
              (then
                (setq rule (multiply-ids left-label-id
                                         right-label-id))
                (if rule
                  (then (tr :multiply-succeeded rule left-edge right-edge)
                        rule)
                  (else
                    ;; both edges have ids, but their category labels
                    ;; didn't combine. Check whether either of their
                    ;; form labels combine.
                    (check-for-form-rule left-edge  right-edge
                                         left-label-id
                                         (cdr left-category-ids)
                                         right-label-id
                                         (cdr right-category-ids)))))

              (else ;; the right label doesn't make any category-based
                ;; combinations, but the left one does.  Does the right
                ;; label make form combinations?
                (let ((right-form-id (cdr right-category-ids)))
                  (if right-form-id ;; yes
                    ;; so see if it combines with the form label of
                    ;; the left edge
                    (let* ((left-form-label (edge-form left-edge))
                           (left-form-rs (when left-form-label
                                           (cat-rule-set left-form-label)))
                           (left-form-id
                            (when left-form-rs
                              (cdr (rs-right-looking-ids left-form-rs)))))
                      (if left-form-id
                        (then
                          (setq rule (multiply-ids left-form-id
                                                   right-form-id))
                          (if rule
                            (then (tr :right-form-id-succeeded
                                      rule left-edge right-edge)
                                  rule)
                            (else
                              (tr :right-form-id-failed left-edge right-edge)
                              nil)))
                        (else
                          ;; no right-looking id on the form label of
                          ;; the left edge
                          (tr :multiply-failed left-edge right-edge)
                          nil )))
                    (else
                      ;; There's nothing that can be done in this case - right????
                      ;; /// put in a good trace msg
                      ;(break "left category id, but no right category id or ~
                      ;        form id on the right category label.")
                      nil )))))

            (else ;; no left-label-id, maybe there's a right one
              (when right-label-id
                ;; then see if there's a left form id
                (let ((left-form-id (cdr left-category-ids)))
                  (if left-form-id
                    (let* ((right-form-label (edge-form right-edge))
                           (right-form-rs (when right-form-label
                                            (cat-rule-set right-form-label)))
                           (right-form-id
                            (when right-form-rs
                              (cdr (rs-left-looking-ids right-form-rs)))))
                      (if right-form-id
                        (then
                          (setq rule (multiply-ids left-form-id
                                                   right-form-id))
                          (if rule
                            (then ;; tr :left-form-id-succeeded
                              rule)
                            (else
                              ;; tr :left-form-id-failed
                              nil)))
                        (else
                          ;; tr :multiply-failed left-edge right-edge
                          nil)))
                    (else
                      ;; // good trace
                      nil))))
              )))
        (else
          ;; the right category label has no ids at all, but maybe the 
          ;; form label on that right edge does
          (let* ((right-form-label (edge-form right-edge))
                 (right-form-rs (when right-form-label
                                  (cat-rule-set right-form-label)))
                 (right-form-id
                  (when right-form-rs
                    (cdr (rs-left-looking-ids right-form-rs))))
                 (left-category-form-id (cdr left-category-ids)))

            (if (and right-form-id
                     left-category-form-id)
              (check-right-for-form-rule left-edge right-edge
                                         left-category-form-id
                                         right-form-id)
              (else
                (tr :multiply-failed left-edge right-edge)
                nil)))))
      (else
        ;; The left category label nas no ids. If that edge's form
        ;; label has ids then maybe it will combine with the right edge's
        ;; category (assuming it has any ids).
        (let* ((left-form-label (edge-form left-edge))
               (left-form-rs (when left-form-label
                               (cat-rule-set left-form-label)))
               (left-form-id
                (when left-form-rs
                  (cdr (rs-right-looking-ids left-form-rs))))
               (right-category-form-id (cdr right-category-ids)))

          (when right-category-form-id
            (when left-form-id
              (check-left-for-form-rule left-edge right-edge
                                        left-form-id
                                        right-category-form-id)
              ))))))))


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



(defun check-for-form-rule (left-edge right-edge
                            left-label-id left-form-id
                            right-label-id right-form-id
                            )

  (if left-form-id
    (check-left-for-form-rule left-edge right-edge
                              left-form-id right-label-id)

    (if right-form-id
      (check-right-for-form-rule left-edge right-edge
                                 left-label-id right-form-id)
      (else
        (tr :multiply-failed left-edge right-edge)
        nil ))))


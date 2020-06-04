;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "post-vg-hook"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  May 2020

;; Initiated 8/9/16

(in-package :sparser)


;;;-----------------
;;;     hook
;;;-----------------

(define-segment-finished-action (vg vg+ing vg+ed vg+passive
                                 verb verb+s verb+present verb+past verb+ed
                                 verb+passive modal)
    :vg-actions verb-group-final-actions)

(defun verb-group-final-actions (vg-edge)
  (declare (special *quantifier-in-vg*))
  (when (memq (edge-form vg-edge) ;; see note on the global
              *plausible-vg-categories*)
    (fold-in-preposed-auxiliary vg-edge)
    (record-verb-tense vg-edge)
    (generalize-vg-segment-edge vg-edge)
    ;;(update-edge-mention-referent vg-edge (edge-referent vg-edge))
    (when *quantifier-in-vg*
      (float-quantifier vg-edge))))


;;;---------------------------
;;; fold aux back into the vg
;;;---------------------------

(defparameter *error-if-no-rule-for-preposed-aux* nil
  "A temporary flag to suppress the error while collecting
   the less-obvious cases that need to be handled and
   working out how to deal with them")

(defun fold-in-preposed-auxiliary (vg-edge)
  (when (preposed-aux?)
    (multiple-value-bind (aux-edge aux-form)
        (preposed-aux?)
      (when (edge-used-in aux-edge)
        ;; multiple toplevel VGs in the sentence, e.g. dynamic-model #42
        (return-from fold-in-preposed-auxiliary nil))
      (when (initial-wh (contents (identify-current-sentence))) ;;/// distribute initial-wh?
        (unless (adjacent-edges? aux-edge vg-edge)
          ;; adjacency happens in "what genes are involved in apoptosis"
          ;; as compared to "What are the genes regulated by STAT3
          (return-from fold-in-preposed-auxiliary)))
      (unless (plausibly-too-early-to-take-preposed-aux aux-edge vg-edge)
        (compose-discontinuous-aux aux-edge vg-edge aux-form)))))

(defun compose-discontinuous-aux (aux-edge vg-edge aux-form)
  "Make a copy of the aux-edge, but with the original form the aux had
   before we marked it as preposed-auxiliary to better control what
   rules would do with it. Use the discontinuous edge code to position it
   next to the vg-edge."
  (let ((rule (multiply-edges aux-edge vg-edge)))
    (when rule
      (let ((new-aux-edge (make-copy-of-edge aux-edge
                           :form aux-form)))
        (make-discontinuous-edge new-aux-edge vg-edge rule)))
    (unless rule
      (unless (plausibly-too-early-to-take-preposed-aux aux-edge vg-edge)
        (when *error-if-no-rule-for-preposed-aux*
          (push-debug `(,vg-edge ,aux-edge))
          (error "Trying to fold in a preposed auxiliary ~
                      but there is no rule that composes ~
                    ~%~a and ~a" aux-edge vg-edge))))))

(defun plausibly-too-early-to-take-preposed-aux (aux-edge vg-edge)
  "The vg-finished hook has a narrow perspective. The aux should compose
   with the 'main' verb of the sentence but VG with other functions can
   precede it. In dynamic-model #43 we have a reduced relative on the
   subject: 'Does phosphoylated BRAF being high preceded ...'
   If this routine returns non-nil, the effect will be to wait for
   the next VG and try to compose the aux there."
  ;; Nothing special about the 'do'
  ;;   "Is MAP2K1 bound to MAPK1 eventually high?"
  (declare (special category::do category::vg+ing category::vg+ed)
           (ignore aux-edge))
  (and (one-word-long? vg-edge) ;; heuristic for reduced relative
       (memq (edge-form vg-edge)
             `(,category::vg+ing ,category::vg+ed))))

(defun revert-preposed-aux ()
  ;; called by wh-initial-three-edges
  (multiple-value-bind (aux-edge aux-form)
      (preposed-aux?)
    (setf (edge-form aux-edge) aux-form)))



;;;--------------
;;; record tense
;;;--------------

(defun record-verb-tense (vg-edge)
  "If the referent of this edge does not bind any of the tense/aspect
   variables, then look at this edge and its daughters, figure out the
   tense/aspect they imply, and give it one."
  (declare (special category::present category::past
                    category::progressive category::perfect))
  (let* ((i (edge-referent vg-edge))
         (referent-with-tense i)) ;; start here
    (unless (indicates-tense? i)
      ;; If there's already tense/aspect information recorded on
      ;; this individual we're (probably) not going to add anything
      ;; here. /// but that needs more testing. 
      (flet ((assign-tense (edge)
               "Add the appropriate binding to the referent of
                the edge to record the tense"
               (multiple-value-bind (variable value)
                   (ecase (tense-implied-by-verb-edge edge)
                     (:present (values 'present category::present))
                     (:past (values 'past category::past))
                     (:progressive (values 'progressive category::progressive))
                     (:perfect (values 'perfect category::perfect)))
                 (setq referent-with-tense
                       (bind-variable variable value referent-with-tense)))))

        (let ((left (edge-left-daughter vg-edge))
              (right (edge-right-daughter vg-edge)))
          ;; If there's a left daughther then it is probably
          ;; carrying the tense -- "is phosphorylated" vs.
          ;; "was phorphylated". Otherwise it's either
          ;; here on the vp-edge or on the single daughter.
          ;; If the left daughter is also composite then
          ;; lets hope the syntax functions took care of it.
          (cond
            ((keywordp right) ;; i.e. :single-term
             ;; there's no left edge
             (assign-tense vg-edge))
            
            ((and (edge-p left) (edge-p right))
             (cond
               ((memq (edge-form left) *plausible-vg-categories*)
                (assign-tense left)) ;; "preferentially interact"
               ((eq (edge-category right) category::apostrophe-t) ;; "isn't"
                (assign-tense left))
               (t
                (assign-tense right))))

            (t 
             (push-debug `(,left ,right))
             (warn "new configuration of daughters ~
                         in vg that doesn't record tense: ~a in ~s"
                   vg-edge
                   (current-string))))
        
          (set-edge-referent vg-edge referent-with-tense)
          ;;(update-edge-mention-referent vg-edge referent-with-tense)
          )))))


(defun tense-implied-by-verb-edge (edge)
  "Given a word-level verb edge, what tense/aspect is implied
   by its form label?"
  (let ((form (edge-form edge)))
    (case (and form (cat-symbol form))
      ((category::verb+ed)
       :perfect)
      ((category::verb+ing
        category::vg+ing)
       :progressive)
      ((category::verb+past
        category::verb+passive
        category::vg+ed)
       :past)
      (otherwise :present))))


;;;-----------------------
;;; Maybe change the form
;;;-----------------------

(defun generalize-vg-segment-edge (vg-edge)
  "Elevates the form of the edge if necessary. In other configurations
   generalize-segment-edge-form-if-needed would have done this."
  (let* ((form-category (edge-form vg-edge))
         (form-symbol (when form-category (cat-symbol form-category)))        
         (dominating-edge (edge-used-in vg-edge)))
    
    (when dominating-edge
      ;; The vg-edge parameter is uniform for all the calls made
      ;; by the hook, 
      (setq vg-edge dominating-edge))
    
    (case form-symbol
      ;; unchanged
      (category::vp)
      (category::vg)
      (category::vg+ing)
      (category::vg+ed)
      (category::vp+ing)
      (category::vp+ed)
      (category::vg+passive)

      ;; changed
      ((category::verb 
        category::verb+s 
        category::verb+present
        category::verb+past
        category::verb+passive
        category::modal)
       (setf (edge-form vg-edge) category::vg))
      ((category::verb+ing)
       (setf (edge-form vg-edge) category::vg+ing))
      ((category::verb+ed)
       (setf (edge-form vg-edge) category::vg+ed)))))


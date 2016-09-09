;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "post-vg-hook"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2016

;; Initiated 8/9/16

(in-package :sparser)


;;;-----------------
;;;     hook
;;;-----------------

(define-segment-finished-action (vg vg+ing vg+ed vg+passive
                                 verb verb+s verb+present verb+past
                                 verb+passive modal)
    :vg-actions verb-group-final-actions)

(defun verb-group-final-actions (vg-edge)
  (when (memq (edge-form vg-edge) ;; see note on the global
              *plausible-vg-categories*)
    (fold-in-preposed-auxiliary vg-edge)
    (record-verb-tense vg-edge)
    (generalize-vg-segment-edge vg-edge)))


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
      
      ;; Reinstate the original form label for the aux
      (setf (edge-form aux-edge) aux-form) 

      ;; Look for a rule
      (let ((rule (multiply-edges aux-edge vg-edge)))
        (unless rule
          (unless (plausibly-too-early-to-take-preposed-aux aux-edge vg-edge)
            (when *error-if-no-rule-for-preposed-aux*
              (push-debug `(,vg-edge ,aux-edge ,aux-form))
              (error "Trying to fold in a preposed auxiliary ~
                      but there is no rule that composes ~
                    ~%~a and ~a" aux-edge vg-edge))))

        ;; Make a very peculiar edge (which may need
        ;; more thought)
        (when rule
          (make-discontinuous-edge aux-edge vg-edge rule))))))

(defun plausibly-too-early-to-take-preposed-aux (aux-edge vg-edge)
  "The vg-finished hook has no larger perspective. The aux should compose
   with the 'main' verb of the sentence but VG with other functions can
   precede it. In dynamic-model #43 we have a reduced relative on the
   subject: 'Does phosphoylated BRAF being high preceded ...'
   If this routine returns non-nil, the effect will be to wait for
   the next VG and try to compose the aux there."
  (declare (special category::do category::vg+ing category::vg+ed))
  (when (eq category::do (edge-category aux-edge))
    (memq (edge-form vg-edge)
          `(,category::vg+ing ,category::vg+ed))))


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
             (lsp-break "new configuration of daughters ~
                         in vg that doesn't record tense: ~a"
                        vg-edge)))
        
          (setf (edge-referent vg-edge) referent-with-tense))))))


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


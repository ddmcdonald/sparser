;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "multiplier"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   3.4 March 2013

;; 3.0 (9/4/92 v2.3) Tweeked things to appreciate form rule ids
;;     (10/12) fixed typos
;; 3.1 (12/21) allowed Establish-multiplier to permit lists as the
;;      value of multiplications if the flag is set that way
;; 3.2 (3/8/93) updated Disable-cfr to handle form ids too
;; 3.3 (3/15/94) tweeked Establish-multiplier to be more sensitive to the
;;      duplication flags
;; 3.4 (4/24/95) the order of args in the call to Duplication-msg was wrong now.
;;     (10/25) changed the name of the duplicate dotted rules flag
;;     (3/9/13) Added the break-on-duplicates flag.

(in-package :sparser)


;;;------------------------------------
;;; install data for multiplying edges
;;;------------------------------------

(defun establish-multiplier (left-id right-id cfr)
  ;; called as a core part of defining a binary rule.  Enforces
  ;; the dictum that every rhs can have only a single parent.

  (let ((existing-rule/s (multiply-ids left-id right-id)))
    (when existing-rule/s
      (if (or *permit-rules-with-duplicate-rhs*
              (and *dotted-rules-can-duplicate-regular-rules*
                   (or (dotted-rule cfr)
                       (and (cfr-p existing-rule/s)
                            (dotted-rule existing-rule/s)))))
        (setq cfr
              (if (listp existing-rule/s)
                (cons cfr existing-rule/s)
                (list cfr existing-rule/s)))
        (else
         (duplication-msg existing-rule/s (cfr-category cfr))
         (when *break-on-illegal-duplicate-rules*
           (push-debug `(,cfr ,existing-rule/s))
           (break "[estab. multiplier] Look at why there's a duplicate rule~
                  ~%and sort it out.")))))

    (let ((target-site (+ left-id right-id)))
      (setf (gethash target-site
                     *edge-multiplication-table*)
            cfr)
      target-site)))




;;;--------------------------
;;; turning rules on and off
;;;--------------------------

(defun disable-cfr (cfr)
  ;; removes the rules entry in the hash table, but doesn't otherwise
  ;; affect it, allowing it to later be enabled again by putting the
  ;; entry back.   Only works on primary labels, not form labels

  (let* ((left-ids
          (car (rs-right-looking-ids
                (rule-set-for (first (cfr-rhs cfr))))))
         (second-term (second (cfr-rhs cfr)))
         (right-ids
          (when second-term
            (car (rs-left-looking-ids
                  (rule-set-for second-term))))))

    (if second-term
      (let ((left-id
             (etypecase left-ids
               (number left-ids)
               (cons (car left-ids))))
            (right-id
             (etypecase right-ids
               (number right-ids)
               (cons (car right-ids)))))

        (let* ((target-site (+ left-id right-id))
               (entry (gethash target-site
                               *edge-multiplication-table*)))

          (etypecase entry
            (cfr (setf (gethash target-site
                                *edge-multiplication-table*)
                       nil))
            (cons
             (setf (gethash target-site
                            *edge-multiplication-table*)
                   (remove cfr entry))))))


      ()) ;; ??do we have to do anything for a single-term rule
          ;; Is this the equivalent of deleting the rule, given
          ;; that the primary purpose here is with abbreviations
    cfr ))


(defun enable-cfr (cfr)
  ;; removes the rules entry in the hash table, but doesn't otherwise
  ;; affect it, allowing it to later be enabled again by putting the
  ;; entry back
  (let ((left-id
         (car (rs-right-looking-ids
               (rule-set-for (first (cfr-rhs cfr))))))
        (right-id
         (car (rs-left-looking-ids
               (rule-set-for (second (cfr-rhs cfr)))))))

    (let ((target-site (+ left-id right-id)))
      (setf (gethash target-site
                     *edge-multiplication-table*)
            cfr)
      cfr )))



;;;------------------------------
;;; getting the next multipliers
;;;------------------------------

(defun next-right-looking-id ()
  (setq *next-right-looking-label-ID*
        (+ *next-right-looking-label-ID*
           *increment-for-right-looking-label-IDs*)))

(defun next-left-looking-id ()
  (incf *next-left-looking-label-ID*))


;;;-----------------------------------------
;;; record the multiplier with the daughter
;;;-----------------------------------------

(defun lookup/make-right-looking-label-id (rule-set)

  ;; This is for labels that are left-daughters in binary rules.
  ;; These combine with edges to their right.

  (let* ((ids (rs-right-looking-ids rule-set))
         (label-id (car ids)))

    (unless label-id
      (if ids
        (rplaca ids (setq label-id (next-right-looking-id)))
        (setf (rs-right-looking-ids rule-set)
              (cons (setq label-id (next-right-looking-id))
                    nil))))
    label-id ))


(defun lookup/make-right-looking-form-id (rule-set)
  (let* ((ids (rs-right-looking-ids rule-set))
         (form-id (cdr ids)))

    (unless form-id
      (if ids
        (rplacd ids (setq form-id (next-right-looking-id)))
        (setf (rs-right-looking-ids rule-set)
              (cons nil
                    (setq form-id (next-right-looking-id))))))
    form-id ))
       



(defun lookup/make-left-looking-label-id (rule-set)

  ;; This is for labels that are right-daughters in binary rules.
  ;; These combine with edges to their left.

  (let* ((ids (rs-left-looking-ids rule-set))
         (label-id (car ids)))

    (unless label-id
      (if ids
        (rplaca ids (setq label-id (next-left-looking-id)))
        (setf (rs-left-looking-ids rule-set)
              (cons (setq label-id (next-left-looking-id))
                    nil))))
    label-id ))


(defun lookup/make-left-looking-form-id (rule-set)
  (let* ((ids (rs-left-looking-ids rule-set))
         (form-id (cdr ids)))

    (unless form-id
      (if ids
        (rplacd ids (setq form-id (next-left-looking-id)))
        (setf (rs-left-looking-ids rule-set)
              (cons nil
                    (setq form-id (next-left-looking-id))))))
    form-id ))
  



;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1995,2012-2013  David D. McDonald  -- all rights reserved

;;;     File:  "place brackets"
;;;   Module:  "analyzers;HA:"
;;;  Version:  1.1 March 2013

;; originated October 1990, estensively elaborated November 1990
;; 0.1 (4/21/91 v1.8.4) actually made it usable
;; 0.2 (1/12/94 v2.3) added Delete-existing-bracket-assignments
;;     (5/5) put in sugared call to set position status
;; 0.3 (5/11) added annotation on the ev of where the bracket comes from
;;     (5/13) added an alternative modularization of the placement operation
;; 0.4 (5/23) tweeked annotation routine to encode multiple sources at one spot
;; 0.5 (6/13) added *break-on-duplicate-bracket-sources* to gate that check
;;     (1/5/95) added Mark-position-as-generic-boundary
;; 1.0 (1/24) put a layer in between the call to place a bracket and actually
;;      doing it to allow a check to keep the strongest bracket
;;     (4/30) added predicates that access brackets from labels. 12/5/12 added
;;      better traces.
;; 1.1 (4/1/13) Getting brackets off capitalized variants when lc doesn't 
;;      have a rule set

(in-package :sparser)

;;;----------------------------------------------------
;;; make a given position be a generic phrase boundary
;;;----------------------------------------------------

(defun mark-position-as-generic-boundary (pos &optional word)
  ;; All boundaries are with respect some label -- otherwise we wouldn't
  ;; be able to track multiple opens or closes accurately during the
  ;; scan.  Here, the decision has been made that for some reason
  ;; independent of the words/edges in the vicinity that any ongoing
  ;; segment should end at this position and a new one begin. To do this
  ;; we introduce boundaries with respect to the last word (the one
  ;; before this position) if there aren't any there already.
  (let ((word (or word
                  (pos-terminal (chart-position-before pos)))))

    (unless (]-on-position-because-of-word? pos word)
      ;(format t  "~%--- putting ] on ~A with label ~A"
      ;      pos word)
      (place-boundary/ends-before
       word pos (find-bracket :] :before 'newline)))

    (unless ([-on-position-because-of-word? pos word)
      ;(format t  "~%--- putting [ on ~A with label ~A"
      ;        pos word)
      (place-boundary/begins-after
       word pos (find-bracket :[ :after 'newline)))

    pos ))




;;;---------------------------------------------
;;; dispatching on the brackets in the rule set
;;;---------------------------------------------

(defun introduce-brackets (label
                           position-before
                           position-after )

  (set-status :boundaries-introduced
              position-before)
  (when (rule-set-for label)
    (let ((assignment (rs-phrase-boundary (rule-set-for label))))
      
      (if assignment    
        (let ((ends-before   (ba-ends-before   assignment))
              (begins-before (ba-begins-before assignment))
              (ends-after    (ba-ends-after    assignment))
              (begins-after  (ba-begins-after  assignment)))
          (tr :brackets-introduced label)

          (when ends-before
            (place-boundary/ends-before label position-before ends-before))
          (when begins-before
            (place-boundary/begins-before label position-before begins-before))
          (when ends-after
            (place-boundary/ends-after label position-after ends-after))
          (when begins-after
            (place-boundary/begins-after label position-after begins-after))

          assignment )

        (else
          (tr :no-brackets-introduced label)
          nil)))))


(defun introduce-trailing-brackets (label position-after
                                    &optional source-is-an-edge? )
  ;; Called from introduce-right-side-brackets
  ;; and from introduce-trailing-brackets-from-edge-form-labels
  (tr :introduce-trailing-brackets label) 
  ;; "[scan] introduce-trailing-brackets \"~A\""
  (if source-is-an-edge?
    (set-status :brackets-from-prior-edge-introduced
                position-after)
    (set-status :brackets-from-prior-word-introduced
                position-after))
  (unless (rule-set-for label) ;; assume it has backets
    (let ((v (capitalized-correspondent label position-after)))
      (when v
        tr :switched-to-capitalized-variant label v)
        (setq label v))))
  (if (rule-set-for label)
    (let ((assignment (rs-phrase-boundary (rule-set-for label))))
      (if assignment
        (let ((ends-after    (ba-ends-after    assignment))
              (begins-after  (ba-begins-after  assignment)))
          (if (or ends-after begins-after)
            (tr :trailing-brackets-introduced label) ;; "~A introduces trailing brackets:"
            (tr :no-brackets-introduced label)) ;; "~A does not introduce any brackets"
          (when ends-after
            (place-boundary/ends-after label position-after ends-after))
          (when begins-after
            (place-boundary/begins-after label position-after begins-after))
          assignment )
        (else
          (tr :no-brackets-introduced label) ;; "~A does not introduce any brackets"
          nil)))
    (else
     (tr :no-brackets-introduced label) ;; "~A does not introduce any brackets"
     nil)))



(defun introduce-leading-brackets (label position-before
                                   &optional source-is-an-edge? )
  ;; Called from scan-next-pos
  ;; and from introduce-leading-brackets-from-edge-form-labels
  (tr :introduce-leading-brackets label)
  ;; "[scan] introduce-leading-brackets \"~A\""
  (if source-is-an-edge?
    (set-status :brackets-from-edge-introduced
                position-before)
    (set-status :brackets-from-word-introduced
                position-before))

  (unless (rule-set-for label) ;; assume it has backets
    (let ((v (capitalized-correspondent label position-before)))
      (when v
        (tr :switched-to-capitalized-variant label v)
        (setq label v))))

  (flet ((assign-before (label)
           (let ((assignment (rs-phrase-boundary (rule-set-for label))))
             (if assignment
               (let ((ends-before   (ba-ends-before   assignment))
                     (begins-before (ba-begins-before assignment)))
                 (if (or ends-before begins-before)
                   (tr :leading-brackets-introduced label) ;; "~A introduces leading brackets:"
                   (tr :no-brackets-introduced label)) ;; "~A does not introduce any brackets"
                 (when ends-before
                   (place-boundary/ends-before label position-before ends-before))
                 (when begins-before
                   (place-boundary/begins-before label position-before begins-before))
                 assignment )
               (else
                (tr :no-brackets-introduced label) ;; "~A does not introduce any brackets"
                nil)))))

    (if (rule-set-for label)
      (assign-before label)
      (else
       (tr :no-brackets-introduced label) ;; "~A does not introduce any brackets"
       nil))))




;;;--------------------------------------------------------
;;; predicates asking whether words would place boundaries
;;;--------------------------------------------------------

(defun closes-ongoing-segment (label)
  (let ((rs (rule-set-for label)))
    (when rs
      (let ((assignment (rs-phrase-boundary rs)))
        (when assignment
          (ba-ends-before assignment))))))

(defun opens-new-segment (label)
  (let ((rs (rule-set-for label)))
    (when rs
      (let ((assignment (rs-phrase-boundary rs)))
        (when assignment
          (ba-begins-before assignment))))))

(defun last-item-in-ongoing-segment (label)
  (let ((rs (rule-set-for label)))
    (when rs
      (let ((assignment (rs-phrase-boundary rs)))
        (when assignment
          (ba-ends-after assignment))))))

(defun opens-new-segment-with-next-word (label)
  (let ((rs (rule-set-for label)))
    (when rs
      (let ((assignment (rs-phrase-boundary rs)))
        (when assignment
          (ba-begins-after assignment))))))





;;;-------------------------------
;;; actually placing the boundary
;;;-------------------------------

(defparameter *break-on-duplicate-bracket-sources* nil)

(defun annotate-source-of-bracket (label ev)
  (let* ((plist (ev-plist ev))
         (source-entry-cons (member :bracket-source plist :test #'eq)))
    (if source-entry-cons
      (if (consp (cadr source-entry-cons))
        (unless (member label (cadr source-entry-cons))
          (when *break-on-duplicate-bracket-sources*
            (break "Threading bug? -- more than two sources for a bracket:~
                    ~%earlier sources: ~A~%additional source: ~A"
                   (cadr source-entry-cons) label)))
        (let ((earlier-label (cadr source-entry-cons))
              (rest-of-plist (cddr source-entry-cons)))
          (rplacd source-entry-cons
                  `( (,label ,earlier-label) ,@rest-of-plist ))
          plist))
      (setf (ev-plist ev) `(:bracket-source ,label ,@plist)))))


;;--- cases

(defun place-boundary/begins-before (label position bracket)
  (let ((existing-bracket
         (open-bracket-already-there position label)))
    (if existing-bracket
      ;; replace the existing bracket with the new one if the
      ;; new one is the stronger of the two.
      (when (eq bracket (stronger-bracket bracket existing-bracket))
        (do-boundary/begins-before label position bracket))
      (do-boundary/begins-before label position bracket))))

(defun do-boundary/begins-before (label position bracket)
  (tr :begins-before position bracket)
  (let* ((vector (pos-starts-here position)))
    (annotate-source-of-bracket label vector)
    (setf (ev-boundary vector) bracket)))



(defun place-boundary/ends-before (label position bracket)
  (let ((existing-bracket
         (close-bracket-already-there position label)))
    (if existing-bracket
      ;; replace the existing bracket with the new one if the
      ;; new one is the stronger of the two.
      (when (eq bracket (stronger-bracket bracket existing-bracket))
        (do-boundary/ends-before label position bracket))
      (do-boundary/ends-before label position bracket))))

(defun do-boundary/ends-before (label position bracket)
  (tr :ends-before position bracket)
  (let* ((vector (pos-ends-here position)))
    (annotate-source-of-bracket label vector)
    (setf (ev-boundary vector) bracket)))



(defun place-boundary/begins-after (label position bracket)
  (let ((existing-bracket
         (open-bracket-already-there position label)))
    (if existing-bracket
      ;; replace the existing bracket with the new one if the
      ;; new one is the stronger of the two.
      (when (eq bracket (stronger-bracket bracket existing-bracket))
        (do-boundary/begins-after label position bracket))
      (do-boundary/begins-after label position bracket))))

(defun do-boundary/begins-after (label position bracket)
  (tr :begins-after position bracket)
  (let* ((vector (pos-starts-here position)))
    (annotate-source-of-bracket label vector)
    (setf (ev-boundary vector) bracket)))



(defun place-boundary/ends-after (label position bracket)
  (let ((existing-bracket
         (close-bracket-already-there position label)))
    (if existing-bracket
      ;; replace the existing bracket with the new one if the
      ;; new one is the stronger of the two.
      (when (eq bracket (stronger-bracket bracket existing-bracket))
        (do-boundary/ends-after label position bracket))
      (do-boundary/ends-after label position bracket))))

(defun do-boundary/ends-after (label position bracket)
  (tr :ends-after position bracket)
  (let* ((vector (pos-ends-here position)))
    (annotate-source-of-bracket label vector)
    (setf (ev-boundary vector) bracket)))


;;;--------------
;;; maintainance
;;;--------------

(defun delete-existing-bracket-assignments (label)
  (let ((rs (label-rule-set label)))
    (when rs
      (let ((bracket-structure (rs-phrase-boundary rs)))
        (when bracket-structure
          (setf (ba-ends-before bracket-structure) nil)
          (setf (ba-begins-before bracket-structure) nil)
          (setf (ba-ends-after bracket-structure) nil)
          (setf (ba-begins-after bracket-structure) nil)

          bracket-structure )))))
        

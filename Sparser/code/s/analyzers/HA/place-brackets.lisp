;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991,1992,1993,1994,1995  David D. McDonald  -- all rights reserved

;;;     File:  "place brackets"
;;;   Module:  "analyzers;HA:"
;;;  Version:  1.5 January 1995

;; originated October 1990, estensively elaborated November 1990
;; 0.1 (4/21/91 v1.8.4) actually made it usable
;; 0.2 (1/12/94 v2.3) added Delete-existing-bracket-assignments
;;     (5/5) put in sugared call to set position status
;; 0.3 (5/11) added annotation on the ev of where the bracket comes from
;;     (5/13) added an alternative modularization of the placement operation
;; 0.4 (5/23) tweeked annotation routine to encode multiple sources at one spot
;; 0.5 (6/13) added *break-on-duplicate-bracket-sources* to gate that check
;;     (1/5/95) added Mark-position-as-generic-boundary

(in-package :sparser)

;;;----------------------------------------------------
;;; make a given position be a generic phrase boundary
;;;----------------------------------------------------

(defun mark-position-as-generic-boundary (pos)
  ;; All boundaries are with respect some label -- otherwise we wouldn't
  ;; be able to track multiple opens or closes accurately during the
  ;; scan.  Here, the decision has been made that for some reason
  ;; independent of the words/edges in the vicinity that any ongoing
  ;; segment should end at this position and a new one begin. To do this
  ;; we introduce boundaries with respect to the last word (the one
  ;; before this position) if there aren't any there already.
  (let ((prior-word
         (pos-terminal (chart-position-before pos))))

    (unless (]-on-position-because-of-word? pos prior-word)
      ;(format t  "~%--- putting ] on ~A with label ~A"
      ;      pos prior-word)
      (place-boundary/ends-before
       prior-word pos (find-bracket :] :before 'phrase)))

    (unless ([-on-position-because-of-word? pos prior-word)
      ;(format t  "~%--- putting [ on ~A with label ~A"
      ;        pos prior-word)
      (place-boundary/begins-after
       prior-word pos (find-bracket :[ :after 'phrase)))

    pos ))




;;;---------------------------------------------
;;; dispatching on the brackets in the rule set
;;;---------------------------------------------

(defun introduce-brackets (label
                           position-before
                           position-after )

  (set-status :boundaries-introduced position-before)

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
  (tr :introduce-trailing-brackets label)
  (if source-is-an-edge?
    (set-status :brackets-from-prior-edge-introduced position-after)
    (set-status :brackets-from-prior-word-introduced position-after))
  (when (rule-set-for label)
    (let ((assignment (rs-phrase-boundary (rule-set-for label))))
      (if assignment
        (let ((ends-after    (ba-ends-after    assignment))
              (begins-after  (ba-begins-after  assignment)))
          (if (or ends-after begins-after)
            (tr :brackets-introduced label)
            (tr :no-brackets-introduced label))
          (when ends-after
            (place-boundary/ends-after label position-after ends-after))
          (when begins-after
            (place-boundary/begins-after label position-after begins-after))
          assignment )
        (else
          (tr :no-brackets-introduced label)
          nil)))))


(defun introduce-leading-brackets (label position-before
                                   &optional source-is-an-edge? )
  (tr :introduce-leading-brackets label)
  (if source-is-an-edge?
    (set-status :brackets-from-edge-introduced position-before)
    (set-status :brackets-from-word-introduced position-before))
  (when (rule-set-for label)
    (let ((assignment (rs-phrase-boundary (rule-set-for label))))
      (if assignment
        (let ((ends-before   (ba-ends-before   assignment))
              (begins-before (ba-begins-before assignment)))
          (if (or ends-before begins-before)
            (tr :brackets-introduced label)
            (tr :no-brackets-introduced label))
          (when ends-before
            (place-boundary/ends-before label position-before ends-before))
          (when begins-before
            (place-boundary/begins-before label position-before begins-before))
          assignment )
        (else
          (tr :no-brackets-introduced label)
          nil)))))



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


(defun place-boundary/begins-before (label position bracket)
  (tr :begins-before position bracket)
  (let* ((vector (pos-starts-here position)))
    (annotate-source-of-bracket label vector)
    (setf (ev-boundary vector) bracket)))


(defun place-boundary/ends-before (label position bracket)
  (tr :ends-before position bracket)
  (let* ((vector (pos-ends-here position)))
    (annotate-source-of-bracket label vector)
    (setf (ev-boundary vector) bracket)))


(defun place-boundary/begins-after (label position bracket)
  (tr :begins-after position bracket)
  (let* ((vector (pos-starts-here position)))
    (annotate-source-of-bracket label vector)
    (setf (ev-boundary vector) bracket)))

(defun place-boundary/ends-after (label position bracket)
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
        

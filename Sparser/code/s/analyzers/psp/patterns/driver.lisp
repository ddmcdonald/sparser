;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996,2010-2013  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  0.3 February 2013

;; initiated 9/21/95. Fleshed out 10/5. 
;; 0.1 (7/12/96) Substantially revised, and its state maintainance was buggy. 
;; 0.2 (3/1/07) Wrote a new scheme that groups no-space sequences into single
;;      word-based edges without paying attention to patterns.
;; 0.3 (2/5/13) striped out the one-or-the-other design of the driver of
;;      the scan. Broke out the simpler scheme to its own file.

(in-package :sparser)

;;;-------
;;; state
;;;-------

(defvar *position-scan-pattern-started-at* nil
  "Points to where the position before the first item in the pattern.
   Initialized by scan-pattern-starting-pair when it succeeds in 
   finding a two-term prefix.")

(defvar *position-reached-by-scan-pattern* nil
  "Points to the maximum position scanned in the process of checking
   for scan-patterns. Initialized by scan-pattern-starting-pair when
   it succeeds in finding a two-term prefix.")


;;;-------------------------------------------------------
;;; startup, final dispatches of pattern-based ns scanner
;;;-------------------------------------------------------

(defun initiate-scan-pattern-driver (state-set position)
  ;; Called from check-for/initiate-scan-patterns when the word
  ;; at this position and the word just before it are the prefix
  ;; of some no-space scan pattern as determined by the tests made
  ;; in Scan-pattern-starting-pair. 

  (let ((next-position (chart-position-after position)))
    (tr :scan-pattern-search-initiated next-position state-set)

    ;; We're positioned just in front of the second word of the pattern,
    ;; which means that our pattern has gotten as the position after that.
    (setq *position-reached-by-scan-pattern* next-position)

    (let ((sp/s 
           (catch :accepted-scan-pattern/s
             (catch :scan-patterns-failed
               (try-to-extend-scan-pattern state-set position next-position))
             
             (return-from initiate-scan-pattern-driver nil))))
      
      (when sp/s
        (tr :scan-pattern-search-reached-accept-state/s sp/s)
        (process-accepted-scan-pattern/s sp/s)))))


;;;------------
;;; inner loop
;;;------------

(defun try-to-extend-scan-pattern (state-set position next-position)
  ;; Initially called from Initiate-scan-pattern-driver and then
  ;; recursively from See-if-next-token-extends-pattern/s.
  ;; If there's no whitespace at the next position we'll check the terminal
  ;; there and try to keep going.  If there isn't, or if the terminal isn't
  ;; a continuation of any of the state/s reached so far, we check the state-set
  ;; for accept-states and throw them back. 
  
  (tr :pattern-search-scanned-pos next-position)
  
  (unless (pos-terminal next-position)
    (scan-next-position))
  
  (if (null (pos-preceding-whitespace next-position))
    (then
      (tr :no-whitespace-at-pos-pattern-search-scanned next-position)
      (see-if-next-token-extends-pattern/s state-set next-position))
    
    (else
      ;; There's whitespace of some sort in front of the next word,
      ;; which breaks the chain. We terminate here, throwing back
      ;; to the initiating routine with the choice of Catch
      ;; determined by whether or not we have something to accept.
      (tr :pattern-search-terminated-by-whitespace position)
      (terminate-scan-pattern-search state-set))))


(defun see-if-next-token-extends-pattern/s (state-set position)
  (let ((word (pos-terminal position)))    
    (let ((continuing-state-set
           (continuation-from-state/s? state-set
                                       position
                                       word)))
      (if continuing-state-set ;; assimilate the word we've just incorporated 
        (let ((next-position (chart-position-after position)))
          (setq *position-reached-by-scan-pattern* next-position)
          (try-to-extend-scan-pattern continuing-state-set
                                      position next-position))
        (else
          (tr :pattern-search-terminated-by-non-extension)
          (terminate-scan-pattern-search state-set))))))


(defun terminate-scan-pattern-search (state)
  ;; common subroutine of Try-to-extend-scan-pattern
  (if (state-is-an-accept-state? state)
    (then
      (throw :accepted-scan-pattern/s state))
    
    (if *prior-acceptable-states*
      (then (setq *position-reached-by-scan-pattern*
                  (cdr *prior-acceptable-states*))
            (throw :accepted-scan-pattern/s
                   (car *prior-acceptable-states*)))
      
      (throw :scan-patterns-failed nil))))


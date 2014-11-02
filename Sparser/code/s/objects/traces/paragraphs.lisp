;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,2013-2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "paragraphs"
;;;   Module:  "objects;traces:"
;;;  Version:  November 2014

;; initiated 1/5/94 v2.3. Added untrace fn. 5/20
;; (3/12/10) Added more traces to track the FSA
;; (9/18/13) Started sentence traces. (11/2/14) elaborated
;; the trace on period-hook 

(in-package :sparser)

(defparameter *trace-paragraphs* nil)

(defun trace-paragraphs ()   ;; for meta-point
  (setq *trace-paragraphs* t))

(defun untrace-paragraphs ()
  (setq *trace-paragraphs* nil))


(deftrace :paragraph-start (p pos)
  (when *trace-paragraphs*
    (trace-msg "[P] Starting paragraph number ~A at p~A"
               (paragraph-number p) (pos-token-index pos))))

(deftrace :paragraph-finish (p start-pos end-pos)
  (when *trace-paragraphs*
    (trace-msg "[P] Finishing paragraph number ~A (start: p~A) at p~A"
               (paragraph-number p) (pos-token-index start-pos)
               (pos-token-index end-pos))))


(deftrace :after-paragraph-action (function p)
  (when *trace-paragraphs*
    (trace-msg "[P] Applying the after-paragraph action ~A~
                ~%  to ~A" function p)))


(deftrace :flushing-empty-paragraph (p start-pos end-pos)
  (when *trace-paragraphs*
    (trace-msg "[P] Deallocating paragraph ~A~
              ~%    because it ends (p~a) just after it begins (p~A)"
               (paragraph-number p) (pos-token-index start-pos)
               (pos-token-index end-pos))))


(deftrace :adding-paragraph-section-marker (p)
  (when *trace-paragraphs*
    (trace-msg "[P] Introducing paragraph marker at p~a"
	       (pos-token-index p))))


;;---- sentences

(deftrace :period-hook (pos)
  ;; Called from period-hook
  (when *trace-paragraphs*
    (trace-msg "[S] finished ~a at p~a" 
               (previous-sentence)
               (pos-token-index pos))))

(deftrace :period-at-p-not-eos (pos)
  ;; Called from period-hook
  (when *trace-paragraphs*
    (trace-msg "[S] period at p~a does not end sentence"
               (pos-token-index pos))))




;;---- sentence containers

(deftrace :adding-to-container (item s)
  ;; called from add-to-container
  (when *trace-paragraphs*
    (trace-msg "Adding ~a to ~a" item s)))

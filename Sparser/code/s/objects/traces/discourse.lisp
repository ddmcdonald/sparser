;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "discourse"
;;;   Module:  "objects;traces:"
;;;  Version:  February 2015

;; initiated 7/92.  5/5/94 started removing flags to real files of TR traces.
;; 2/3/15 adding tr traces. 

(in-package :sparser)

;;;---------------------
;;; discourse-structure
;;;---------------------

(defparameter *trace-discourse-structure* nil)

(defun trace-discourse-structure ()
  (setq *trace-discourse-structure* t))

(defun untrace-discourse-structure ()
  (setq *trace-discourse-structure* nil))

(deftrace :set-sentence-subject (edge sentence)
  ;; called from identify-salient-text-structure
  (when *trace-discourse-structure*
    (trace-msg "Setting e~a as the subject of ~a"
               (edge-position-in-resource-array edge)
               sentence)))


;;;------------------------------
;;; discourse history management
;;;------------------------------

(defparameter *trace-discourse-history-management* nil
  "Tracing addition or entension of individuals into
  the discourse history.")

(defun trace-history ()
  (setq *trace-discourse-history-management* t))
(defun untrace-history ()
  (setq *trace-discourse-history-management* nil))

(deftrace :adding-new-instance-of-category (i category)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] adding ~a, new instance of ~a"
               i category)))

(deftrace :adding-new-instance-of-known-object (i start-pos end-pos)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] Extending reference to ~a~
              ~%     to be between p~a and p~a" i
              (pos-token-index start-pos)
              (pos-token-index end-pos))))

(deftrace :extending-with-subsuming-instance (i start-pos end-pos)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] adding another reference to ~a~
              ~%     between p~a and p~a" i
              (pos-token-index start-pos)
              (pos-token-index end-pos))))

;;--- dl variants

(deftrace :extending-dh-entry (i)
  ;; top of lattice-individuals-extend-dh-entry
  (when *trace-discourse-history-management*
    (trace-msg "[DH] adding ~a to its category's entry" i)))

(deftrace :extending-with-subsuming-instance/dl (i j start-pos end-pos)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] i~a is a specialization of ~a ~
              ~%   on larger edge between p~a and p~a" 
               (indiv-uid i) j
               (pos-token-index start-pos)
               (pos-token-index end-pos))))

(deftrace :exending-span-of-mention (m start-pos end-pos)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] extending span of ~a to p~a:p~a"
               m
               (pos-token-index start-pos)
               (pos-token-index end-pos))))
  

;;--- Mentions

(deftrace :creating-category-dh-entry (category i start-pos end-pos)
  (when *trace-discourse-history-management*
    (trace-msg "[DH] i~a b/w p~a and p~a is 1st entry for ~a"
               (indiv-uid i) 
               (pos-token-index start-pos)
               (pos-token-index end-pos)
               category)))

(deftrace :made-mention (m)
  (when *trace-discourse-history-management*
    (let* ((i (base-description m))
           (category (itype-of i)))
      (trace-msg "[DH]  mention of a ~a: ~a" 
                 (cat-symbol category)  m))))
(deftrace :making-new-mention (m)
  ;; in make-new-mention just after it's created
  (when *trace-discourse-history-management*
    (trace-msg "[DH] new mention: ~a" m)))




;;;-------------------
;;; flags set by hand
;;;-------------------

(defparameter *trace-discourse-heuristics* nil
  "Miscelaneous lag read in several spots within the grammar.")


(defparameter *trace-conjunction* nil
  "Flag read in the CA search routines for conjunctions")


(defparameter *trace-discourse-history* nil
  "Flag read as objects are entered into or accessed from the
   discourse history.")

(defparameter *trace-pronominalization* nil
  "Flag read in pronominalization routines")

(defparameter *trace-individuals* nil
  "Flag read in subsequent and initial reference routines.")



(defparameter *trace-parentheses* nil
  "Flag read in the parentheses traversal routines")

(defparameter *trace-paragraphs* nil
  "Flag read in the section-marker code that handles the
   basic definition of paragraphs.")


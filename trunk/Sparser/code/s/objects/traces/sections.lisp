;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1994,2011  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "sections"
;;;   Module:  "objects;traces:"
;;;  Version:  August 2011

;; 6/13/94 added flags for more kinds of markup. 8/29/11 Added another
;; in paired-punct. 

(in-package :sparser)

;;;-------
;;; flags
;;;-------

(defparameter *trace-sections* nil)

(defun trace-sections ()  ;; for meta-point
  (setq  *trace-sections* t))

(defun untrace-sections ()
  (setq  *trace-sections* nil))



(defparameter *trace-hidden-markup* nil)

(defun trace-hidden-markup ()
  (setq *trace-hidden-markup* t))

(defun untrace-hidden-markup ()
  (setq *trace-hidden-markup* nil))


(defparameter *trace-annotations* nil)

(defun trace-annotations ()
  (setq *trace-annotations* t))

(defun untrace-annotations ()
  (setq *trace-annotations* nil))


;;;-----------------
;;; vanila sections
;;;-----------------

(deftrace :establishing-section (sm pos-before)
  ;; called from Establish-section-within-document
  (when *trace-sections*
    (trace-msg "[sect] Establishing a ~A section at p~A"
               (sm-full-name sm) (pos-token-index pos-before))))

(deftrace :prior-section (sm)
  ;; called from Establish-section-within-document
  (when *trace-sections*
    (trace-msg "[sect]   The prior section is ~A"
               (sm-full-name sm))))

(deftrace :no-prior-section ()
  ;; called from Establish-section-within-document
  (when *trace-sections*
    (trace-msg "[sect]   There is no prior section")))

(deftrace :terminating-section (sm end-pos)
  ;; called from Terminate-ongoing-section
  (when *trace-sections*
    (trace-msg "[sect] Terminating a ~A section at p~A"
               (sm-full-name sm) (pos-token-index end-pos))))


;;;---------------
;;; paired markup
;;;---------------

(deftrace :starting-markup-pair (sm edge)
  (when *trace-sections*
    (trace-msg "Starting paired section ~A at p~A"
               sm (pos-token-index (pos-edge-ends-at edge)))))

(deftrace :ending-markup-pair (edge)
  (when *trace-sections*
    (trace-msg "Ending paired section ~A at p~A"
               (edge-referent edge)
               (pos-token-index (pos-edge-starts-at edge)))))



;;;-----------------------
;;; punctuation interiors
;;;-----------------------

;; Called from do-paired-punctuation-interior

(deftrace :paired-punct-interior (type after-open before-close)
  (when *trace-sections*
    (trace-msg "Looking at the interior of ~A ~
                between p~A and p~A"
               type (pos-token-index after-open)
               (pos-token-index before-close))))

(deftrace :paired-punct-hook (fn)
  (when *trace-sections*
    (trace-msg "Hook: calling ~A" fn)))

(deftrace :no-paired-punct-hook (label)
  (when *trace-sections*
    (trace-msg "No hook associated with ~a" label)))

(deftrace :pp-not-single-span (layout)
  (when *trace-sections*
    (trace-msg "Region between punction is not single-strand: ~a"
               layout)))
  



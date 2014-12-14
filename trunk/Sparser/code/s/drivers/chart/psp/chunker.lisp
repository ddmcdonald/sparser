;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "chunker"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  October 2014

;; Initiated 10/8/14
;; ddm: 10/16/14 Rewrote identify-chunks. Commented out lines anticipating 
;; words not covered by edges. Added traces.
;; RJB 12/13/2014 changes to method "remaining-forms" and to code in categories.lisp
;; to provide more subtle handling of NP chunking to deal with verb+ed cases
;; contrast "direct binding to activated forms of RAS" where "activated" is likely to be a pre-nominal modifier (from j2)
;; with "these drugs blocked ERK activity" where "blocked" is the main verb.
;; the key is to end a NG when you hit a verb+ed immediately preceded by a noun, and to prevent that verb+ed from
;; starting another NG (so that it becomes a VG on its own) 

(in-package :sparser)

;;;-------------------------------------
;;; data structure to represent a chunk
;;;-------------------------------------

(defvar *chunk-forms* '(ng vg adjg))


(defclass chunk ()
  ((start :initarg :start :accessor chunk-start-pos
    :documentation "The position object that the chunk
      starts at.")
   (end :initarg :end :accessor chunk-end-pos
    :documentation "The position object that the chunk
      ends at.")
   (edge-list :initarg :edge-list  :accessor chunk-edge-list
              :documentation "The edges initially considered in the chunk")
    
   (forms :initarg :forms :initform *chunk-forms*
    :accessor chunk-forms
    :documentation "This is the set of possible syntactic forms for this chunk. Starts out as a list of 
      the three possible forms -- NP, VG and ADJP from grammar/rules/syntax/categories.lisp."))
  (:documentation
   "Provides a representation for a minimal syntactic phrase
    or 'chunk'. Noun phrases up to the head. Verb groups from
    any auxiliaries through the main verb including any adverbs
    that are known to associate with verbs."))

:+ignore
(defmethod print-object ((chunk chunk) stream)
  (print (list 'chunk (chunk-forms chunk) 
               (chunk-start-pos chunk)
               (pos-edge-starts-at
                (left-treetop-at/edge (chunk-end-pos chunk))))
         stream))

:+ignore
(defmethod print-object ((chunk chunk) stream)
  (print (list 'chunk (chunk-forms chunk) 
               (chunk-start-pos chunk)
               (pos-edge-starts-at
                (left-treetop-at/edge (chunk-end-pos chunk))))
         stream))

(defmethod print-object ((chunk chunk) stream)
  (print-unreadable-object (chunk stream :type t)
    (let ((start (chunk-start-pos chunk))
          (end (chunk-end-pos chunk)))
      (format stream "~a p~a ~s p~a"
              (chunk-forms chunk)
              (pos-token-index start)
              (if (eq start end) "" (string-of-words-between start end)) ;; has happened
              (pos-token-index end)))))


(defun pos-loop (fn &optional (sentence (sentence)))
  (let*
      ((start (starts-at-pos sentence))
       (end (ends-at-pos sentence))
       (pos-before start))
    (until
        (eq pos-before end)
        sentence
      (let*
          ((edge (right-treetop-at/edge pos-before))
           (pos-after (pos-edge-ends-at edge)))
        (funcall fn pos-before)
        (setq pos-before pos-after)))))


            
;;;--------
;;; driver 
;;;--------

(defun identify-chunks (sentence)
  (let ((chunks (find-chunks sentence)))
    (push-debug `(,sentence ,chunks)) ;;(break "~a chunks" (length chunks))
    ;;(pop-debug) (setq sentence (car *) chunks (cadr *))
    (when *parse-chunk-interior-online*
      (dolist (chunk chunks)
        (push-debug `(,chunk))
        (tr :parsing-chunk-interior-of chunk)
        (parse-chunk-interior chunk)))
    (set-sentence-status sentence :chunked)
    chunks))

(defun parse-chunk-interior (chunk)
  ;; Use the standard machinery is PTS to parse the interior
  ;; of the chunk and introduce a corresponding edge into
  ;; the chart. Run pts in a mode that will make it run
  ;; to completion and return rather than makinig a tail
  ;; recursive call back to the scan level
  (declare (special *left-segment-boundary*
                    *right-segment-boundary*))
  (setq *left-segment-boundary* (chunk-start-pos chunk)
        *right-segment-boundary* (chunk-end-pos chunk))
  (let ((*return-after-doing-segment* t))
    (declare (special *return-after-doing-segment*))
    (pts)))

;; Rusty -- traces moved to objects/traces/psp1.lisp

(defvar *next-chunk* nil)
(defvar *chunks* nil)

(defun find-chunks (&optional (sentence (sentence)))
  (setq *next-chunk* nil)
  (setq *chunks* nil)
  (let ((pos (starts-at-pos sentence))
        (end (ends-at-pos sentence))
        edge )
    (until
        (eq pos end)
        (reverse *chunks*) ;; this is the return value

      (setq edge (right-treetop-at/edge pos))
      (tr :chunk-loop-next-edge edge)
      (cond
       ((starting-forms edge *chunk-forms*)
        (setq *next-chunk* (delimit-next-chunk edge end))
        (push *next-chunk* *chunks*)
        (when (null (chunk-end-pos *next-chunk*))
          ;;(break "pos = ~a  end = ~a" pos end)
          (setf (chunk-end-pos *next-chunk*) end))
        (setq pos (chunk-end-pos *next-chunk*)))
       (t
        (setq pos (pos-edge-ends-at edge)))))))



(defun delimit-next-chunk (edge sentence-end)
  (declare (special edge))
  ;; know that the edge immediately after start is consistent with some
  ;;  chunk type (maybe more than one)
  ;;  Goal is to create the longest chunk possible from this point
  (let* ((start (pos-edge-starts-at edge))
         (forms (starting-forms edge *chunk-forms*))
         (chunk (make-instance 'chunk :forms forms :start start :end nil :edge-list nil))
         (pos start)
         possible-heads)
   ;; (declare (special start forms chunk pos possible-heads))
 
    (until
        (or (chunk-end-pos chunk)
            (eq pos sentence-end))
        chunk

      (cond
       ((null forms) 
        ;; indicates syntactic category of edge inconsistent
        ;;  with possible forms for chunk
        ;;  thus, chunk must end at or before this pos-before
        (let
            ((head (best-head (chunk-forms chunk) possible-heads)))
         ;; (declare (special head))
         ;; (break "chunk")
          (cond
           (head
           ;; the chunk has a head for at least one of the consistent forms
           ;; complete this chunk -- signaling end of until loop
           (setf (chunk-end-pos chunk) (second head))
           (setf (chunk-forms chunk) (list (first head)))
           (tr :delimited-chunk chunk))
          (t
           (setf (chunk-end-pos chunk) pos)
           (setf (chunk-forms chunk) nil)
           (tr :delimited-ill-formed-chunk chunk)))))
       (t
        (setf (chunk-forms chunk) forms)
        (push edge (chunk-edge-list chunk))

        (if (word-p edge)
          (then
           (push-debug `(,forms ,chunk ,edge))
           (break "edge is a word: ~a  pos = ~a" edge pos))
          (setq pos (pos-edge-ends-at edge)))

        (loop for ch in (compatible-heads forms edge pos) 
          do (push ch possible-heads))
        (setq edge (right-treetop-at/edge pos))
        (tr :chunk-loop-next-edge edge)
        (setq forms (remaining-forms edge chunk)))))))


(defun best-head (forms possible-heads)
  ;; eventually might want to find rightmost head, or use some other measure
  ;;  including semantic interpretability
  (let ( phead) 
    (car (loop for form in forms 
           when (setq phead (assoc form possible-heads)) 
           collect phead))))


(defun compatible-heads (forms edge next-pos)
  (loop for form in forms
    when
    (or
     (and (eq form 'ng) (ng-head? edge))
     (and (eq form 'vg) (vg-head? edge))
     (and (eq form 'adjg) (adjg-head? edge)))
    collect
    (list form next-pos)))


:+ignore ;; definition of remaining-forms has changed
(defun test-remaining-forms ()
  (let
      ((forms *chunk-forms*))
    (pos-loop
     #'(lambda(pos)
         (setq forms (remaining-forms (right-treetop-at/edge pos) forms))
         (if (null forms)
             (setq forms
                   (remaining-forms (right-treetop-at/edge pos) *chunk-forms*)))
         (print (list pos forms))))))

(defun remaining-forms (edge chunk);; &optional (forms *chunk-forms*))
  (let
      ((forms (chunk-forms chunk))
       (edges (chunk-edge-list chunk)))
  (loop for form in forms
    when (or
          (and (eq form 'ng) 
               (ng-compatible? edge)
               ;; new code -- don't accept a past participle immediately following a noun -- most likely to be a main verb or a reduced relative in this case
               (not (and
                     (eq 'CATEGORY::VERB+ED (cat-symbol (edge-form edge)))
                     (memq (cat-symbol (edge-form (car edges)))
                           '(category::COMMON-NOUN category::COMMON-NOUN/PLURAL)))))
          (and (eq form 'vg) (vg-compatible? edge))
          (and (eq form 'adjg) (adjg-compatible? edge)))
    collect form)))

(defun starting-forms (edge &optional (forms *chunk-forms*))
  (loop for form in forms
    when (or
          (and (eq form 'ng) (ng-start? edge))
          (and (eq form 'vg) (vg-compatible? edge))
          (and (eq form 'adjg) (adjg-compatible? edge)))
    collect form))

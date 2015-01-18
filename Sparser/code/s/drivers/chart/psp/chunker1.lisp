;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "chunker"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  January 2015

;; Initiated 10/8/14
;; ddm: 10/16/14 Rewrote identify-chunks. Commented out lines anticipating 
;; words not covered by edges. Added traces.
;; RJB 12/13/2014 changes to method "remaining-forms" and to code in categories.lisp
;; to provide more subtle handling of NP chunking to deal with verb+ed cases
;; contrast "direct binding to activated forms of RAS" where "activated" is likely to be a pre-nominal modifier (from j2)
;; with "these drugs blocked ERK activity" where "blocked" is the main verb.
;; the key is to end a NG when you hit a verb+ed immediately preceded by a noun, and to prevent that verb+ed from
;; starting another NG (so that it becomes a VG on its own) 
;; RJB 12/19/2014     ;; partitive construction e.g. "all of these lines"
;; 1/1/2015 break out adjective/modifier from start of NG if the preceding chunk was a copula
;; and fix handling of chunks terminated by the end of the sentence
;; 1/12/2015 Start on new NG interpreter parse-ng-interior -- works modestly well
;; 1/14/2015 New whack-a-rule type interpreter for NG and VG chunks
;; 1/17/2015 NEW VERSION -- should handle ambiguities in base edges

(in-package :sparser)

;;;-------------------------------------
;;; data structure to represent a chunk
;;;-------------------------------------

(defvar *chunk-forms* '(ng vg adjg))
(defparameter *new-chunk-parse* t)


(defclass chunk ()
  ((start :initarg :start :accessor chunk-start-pos
    :documentation "The position object that the chunk
      starts at.")
   (end :initarg :end :accessor chunk-end-pos
    :documentation "The position object that the chunk
      ends at.")
   (edge-list :initarg :edge-list  :accessor chunk-edge-list
              :documentation "The edges initially considered in the chunk")
   (ev-list :initarg :ev-list  :accessor chunk-ev-list
              :documentation "The edge vectors initially considered in the chunk")

    
   (forms :initarg :forms :initform *chunk-forms*
    :accessor chunk-forms
    :documentation "This is the set of possible syntactic forms for this chunk. Starts out as a list of 
      the three possible forms -- NP, VG and ADJP from grammar/rules/syntax/categories.lisp."))
  (:documentation
   "Provides a representation for a minimal syntactic phrase
    or 'chunk'. Noun phrases up to the head. Verb groups from
    any auxiliaries through the main verb including any adverbs
    that are known to associate with verbs."))

(defmethod print-object ((chunk chunk) stream)
  (print-unreadable-object (chunk stream :type t)
    (let ((start (chunk-start-pos chunk))
          (end (chunk-end-pos chunk)))
      (if
       (null end)
       "chunk with null end"
       (format stream "~a p~a ~s p~a"
               (chunk-forms chunk)
               (pos-token-index start)
               (if (eq start end)
                   "" (string-of-words-between start end)) ;; has happened
               (pos-token-index end))))))


;;;--------
;;; driver 
;;;--------
(defun ev-edges (ev)
  ;; return a list of all the relevant edges on an edge vector -- hope it doesn't cons too much
  (and ev ;; can be called with nil, when there is no previous ev in a chunk
       (let
           ((top (ev-top-node ev)) edge)
         (if
          (eq top :multiple-initial-edges)
          (loop for i from 0 to (- (ev-number-of-edges ev) 1)
            when (not (literal-edge? (setq edge (aref (ev-edge-vector ev) i))))
            collect edge)
          (list top)))))

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
    (if 
     (and 
      *new-chunk-parse*
      (or
       (memq (car (chunk-forms chunk)) '(ng vg))))
     (parse-ng-or-vg-interior chunk)
    (pts nil chunk))))

(defun parse-ng-or-vg-interior (chunk)
  (declare (special chunk))
  (let*
      ((edges (reverse (treetops-in-current-segment)))
       (left (ng-edge (second edges)))
       (right (ng-edge (first edges)))
       rule)
    (declare (special edges rule left right))
    (loop while
      (and (cdr edges)
           (setq rule (check-form-form left right)))
      do
      ;;(break "parse-ng-interior")
      (execute-one-one-rule rule left right)
      (setq edges (reverse (treetops-in-segment (chunk-start-pos chunk)(chunk-end-pos chunk))))
      (setq left (ng-edge (second edges)))
      (setq right (ng-edge (car edges)))
      ;;(print edges)
      ))
  (pts nil chunk))

(defun ng-edge (tt)
  (cond
   ((null tt) nil)
   ((edge-p tt) tt) ;; the edge for the treetop was unambiguous
   ((edge-vector-p tt)(highest-edge tt))
   (t (break "what type of treetop is this?"))))

(defun show-chunk-edges (&optional (ces *all-chunk-edges*))
  (loop for c in (reverse ces)
    do (format t "~&___________________~&")
    (np c)))

(defun np (l)(loop for ll in l do (print ll)))

(defun verb-chunks ()
  (loop for c in *all-chunk-edges*
    when (loop for e in c 
           thereis (memq (car e) '(verb+ed verb+ing)))
    collect c))


;;;-------------
;;; chunk finder
;;;-------------

(defvar *next-chunk* nil)
(defvar *chunks* nil)

(defun find-chunks (&optional (sentence (sentence)))
  (setq *next-chunk* nil)
  (setq *chunks* nil)
  (let ((pos (starts-at-pos sentence))
        (end (ends-at-pos sentence))
        forms
        ev)
    (until
        (eq pos end)
        (reverse *chunks*) ;; this is the return value
      (setq ev (pos-starts-here pos))
      (setq forms (starting-forms ev *chunk-forms*))
      (cond
       (forms
        (setq *next-chunk* (delimit-next-chunk ev forms end))
        (push *next-chunk* *chunks*)
        (when (null (chunk-end-pos *next-chunk*))
          ;;(break "pos = ~a  end = ~a" pos end)
          (setf (chunk-end-pos *next-chunk*) end))
        (setq pos (chunk-end-pos *next-chunk*)))
       (t
        ;; no chunk here -- move to next pos
        (setq pos (pos-edge-ends-at (right-treetop-at/edge pos))))))))

(defun delimit-next-chunk (ev forms sentence-end)
  (declare (special ev sentence-end))
  ;; know that the edge immediately after start is consistent with some
  ;;  chunk type (maybe more than one)
  ;;  Goal is to create the longest chunk possible from this point
  (let* ((start (ev-position ev))
         (chunk (make-instance 'chunk :forms forms :start start :end nil :edge-list nil :ev-list nil))
         (pos start)
         possible-heads)
    (declare (special start chunk pos possible-heads))
    
    (until
        (or (chunk-end-pos chunk)
            (eq pos sentence-end))
        (find-consistent-edges chunk)
      
      (when
          forms ;; chunk still valid for at least one category
        (setf (chunk-forms chunk) forms)
        (push ev (chunk-ev-list chunk))
        (setq pos (pos-ev-ends-at ev forms))
        (loop for ch in (compatible-heads forms ev pos) 
          do (push ch possible-heads)))

      (if (or
           (null forms) ;; indicates syntactic category of edge inconsistent with possible forms for chunk
           (eq pos sentence-end))  
          ;;  chunk must end at or before this pos-before
          
          (let
              ((head (best-head (chunk-forms chunk) possible-heads))) 
            (cond
             (head
              ;; the chunk has a head for at least one of the consistent forms
              ;; complete this chunk -- signaling end of until loop
              (setf (chunk-end-pos chunk) (second head))
              (setf (chunk-forms chunk) (list (first head)))
              (tr :delimited-chunk chunk))
             (t
              ;;(break "HUH2")
              (setf (chunk-end-pos chunk) pos)
              (setf (chunk-forms chunk) nil)
              (tr :delimited-ill-formed-chunk chunk))))
          (else     
            (setq ev (pos-starts-here pos))
            (tr :chunk-loop-next-edge ev)
            (setq forms (remaining-forms ev chunk)))))))

(defun pos-ev-ends-at (ev forms)
  (pos-edge-ends-at (car (ev-edges ev))))

(defun find-consistent-edges (chunk)
  (when (chunk-forms chunk)  ;; else inconsistent chunk with no head
    chunk
    (setf (chunk-edge-list chunk)
          (loop for ev in (chunk-ev-list chunk)
            collect
            (compatible-edge? ev (chunk-forms chunk)(chunk-ev-list chunk)))))
  chunk)
    

(defun compatible-edge? (ev forms ev-list)
  (let (edge)
    (loop for form in forms
      when 
      (loop for e in (ev-edges ev)    
        thereis
        (setq edge (compatible-edge-form? e form ev-list)))
      do
      (return edge))))

(defun best-head (forms possible-heads)
  ;; eventually might want to find rightmost head, or use some other measure
  ;;  including semantic interpretability
  (let (phead) 
    (loop for form in forms 
      when (setq phead (assoc form possible-heads)) 
      return phead)))

(defun compatible-heads (forms ev next-pos)
  (loop for form in forms
    when (compatible-head? form ev)
    collect (list form next-pos)))

(defun compatible-head? (form ev)
  (loop for edge in (ev-edges ev)
    thereis
    (and
     (not (literal-edge? edge))
     (case form
       (ng (ng-head? edge))
       (vg (vg-head? edge))
       (adjg (adjg-head? edge))))))

(defun remaining-forms (ev chunk);; &optional (forms *chunk-forms*))
  (loop for form in (chunk-forms chunk)
    when 
    (loop for e in (ev-edges ev)
      thereis 
      (compatible-edge-form? e form (chunk-ev-list chunk)))
    collect form))

(defun compatible-edge-form? (edge form ev-list)
  (declare (special edge form ev-list))
  (case
      form 
    (ng
     (and
      (ng-compatible? edge ev-list)      
      (or
       (not 
        (and (edge-form edge) ;; COMMA has no edge-form
             (eq 'CATEGORY::VERB+ED (cat-symbol (edge-form edge)))))
       ;; new code -- don't accept a past participle immediately following a noun 
       ;; -- most likely to be a main verb or a reduced relative in this case
       (not 
        (loop for e in (ev-edges (car ev-list))
         thereis
          (and
           (edge-form e)
           (memq (cat-symbol (edge-form e)) *N-BAR-CATEGORIES*)))))))
    (vg (vg-compatible? edge))
    (adjg (adjg-compatible? edge))))


(defun starting-forms (ev &optional (forms *chunk-forms*))
  (loop for form in forms
    when 
    (loop for edge in (ev-edges ev) thereis (can-start? form  edge))
    collect form))

(defun can-start? (form edge)
  (case form
    (ng (ng-start? edge))
    (vg (vg-compatible? edge))
    (adjg (adjg-compatible? edge))))

;;; FROM categories.lisp but should be here to maintain compatibility when structure of chunk changes


(defgeneric ng-compatible? (label evlist)
  (:documentation "Is a category which can occur inside a NG"))
(defmethod ng-compatible? ((w word) evlist)
  nil)
(defmethod ng-compatible? ((e edge) evlist)
  (let
      ((edges (ev-edges (car evlist))))
    (and
     ;;in fact nothing should follow a pronoun (except a possessive pronoun)
     (not 
      (loop for edge in edges
        thereis
        (eq category::pronoun (edge-form edge))))
     (cond
      ((eq word::comma (edge-category e))
       ;;comma can come in the middle of an NP chunk
       ;; as in "active, GTP-bound Ras"
       (not (null evlist)))
      ((eq category::verb+ed (edge-form e))
       (not (eq (edge-category e) category::have))) ;; "had" is not an NP constituent
      ((eq category::verb+ing (edge-form e))
       (not (loop for edge in edges thereis (ng-head? edge))))
      (t
       (ng-compatible? (edge-form e) edges))))))

(defmethod ng-compatible? ((c referential-category) edges)
  (ng-compatible? (cat-symbol c) edges))
(defmethod ng-compatible? ((name symbol) edges)
  (declare (special chunk name))
  (or
   (and
    (memq name *ng-internal-categories*)
    ;;in fact nothing should follow a pronoun (except a possessive pronoun)
    (not
     (loop for edge in edges
      thereis
      (eq category::pronoun (edge-form edge)))))
   (and
    ;; partitive construction e.g. "all of these lines"
    (loop for edge in edges
      thereis
      (eq (edge-category edge) category::quantifier-of))
    (eq name 'category::det))))

(defgeneric ng-start? (label)
  (:documentation "Is a category which can occur inside a NG"))
(defmethod ng-start? ((w word))
  nil)
(defmethod ng-start? ((e edge))
  (declare (special e))
  (cond
   ((or
     (eq category::modifier (edge-category e))
     (eq category::adjective (edge-form e)))
    ;;when the previous chunk was a copula verb (just check for BE at this time)
    ;; and this is an adjective
    (not
     (and
      (car *chunks*)
      (member 'vg (chunk-forms (car *chunks*)))
      (loop for edge in (ev-edges (car (chunk-ev-list (car *chunks*))))
        thereis
        (eq category::be (edge-category edge))))))
   ((eq category::that (edge-category e))
    (and
     (not *big-mechanism*) ;; it is almost never the case that THAT is a determiner, it is usually a relative clause marker or a thatcomp marker
     (not
      (and
       (car *chunks*)
       (member 'vg (chunk-forms (car *chunks*)))
       (thatcomp-verb (car (chunk-edge-list (car *chunks*))))))
     (not
      (and
       (car *chunks*)
       (member 'ng (chunk-forms (car *chunks*)))
       (thatcomp-noun (car (chunk-edge-list (car *chunks*))))))))
   ((ng-start? (edge-form e))
    t)
   ((eq category::verb+ed (edge-form e))
    ;; verb_ed is allowable as the start of an NG if the previous (and immediately adjacent) chunk
    ;; was not an NG -- such an adjacent NG happens when the verb+ed is taken to stop the NG
    ;; as in "these drugs blocked ERK activity" where "blocked" is a main verb
    ;; as opposed to "direct binding to activated forms of RAS"
    (not (and
          (car *chunks*)
          (member 'ng (chunk-forms (car *chunks*)))
          (eq (chunk-end-pos (car *chunks*))
              (pos-edge-starts-at e)))))
   ((eq category::verb+ing (edge-form e))
    ;; verb_ing is most likely as the start of an NG if the previous (and immediately adjacent) chunk
    ;; was not a preposition, this blocks the prenominal reading of "turn on RAS by activating guanine nucleiotide exchange factors"
    (let
        ((prev-edge (edge-just-to-left-of e)))
      (not
       (or
        (eq category::preposition (edge-form prev-edge))
        (ng-head? prev-edge)))))))

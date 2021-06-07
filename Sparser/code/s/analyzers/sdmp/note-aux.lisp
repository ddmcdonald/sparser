;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 David D. McDonald all rights reserved

;;;      File: "note-aux"
;;;    Module: "analyzers;SDM&P:
;;;   Version: May 2021

;; Initiated 5/19/21 to hold helper routines and details so the base
;; code in note.lisp stays cleaner.

(in-package :sparser)

;;;---------
;;; helpers
;;;---------

(defvar *show-note-candidates* nil
  "Flag in the various place that note is used to report the
   full list of things they've seen, noteworthy or not.
   Useful in gauging what groups of categories might be")

(defgeneric list-notes-in (a)
  (:documentation "Loop over the paragraphs and their sentences
    an print the value of their items alist")
  (:method ((a article))
    (loop for p in (paragraphs-in-doc-element a)
       do (loop for s in (sentences-in-paragraph p)
             do (print (items (contents s)))))))


(defvar *edges-noted* nil
  "Every edges that is passed to note gets pushed onto this.
   It's a fixup for when our logic fails and we call no
   on the same edge more than once.")

(define-per-run-init-form '(setq *edges-noted* nil))

;;;--------
;;; traces
;;;--------

(defvar *trace-note* nil
  "For tracking what we're laying down. Helps debug the cases
   when we have subsumed edges")
(defun trace-notes ()
  (setq *trace-note* t))
(defun untrace-notes ()
  (setq *trace-note* nil))

(defvar *trace-note-announce* nil
  "Minimal trace. Just one stmt per note")
(defun announce-notes ()
  (setq *trace-note-announce* t))
(defun unannounce-notes ()
  (setq *trace-note-announce* nil))


(deftrace :noting-category (cat-name count)
  ;; called from note
  (when (or *trace-note* *trace-note-announce*)
    (trace-msg "NOTE: ~a ~a" cat-name count)))

(deftrace :edge-is-noteworthy (edge)
  ;; edge method of note?
  (when *trace-note* =
    (trace-msg "noteworthy: ~a" edge)))

(deftrace :calling-cache-noteworthy-edge (edge)
  (when *trace-note*
    (trace-msg "Deciding what to do with ~a" edge)))

(deftrace :cached-edge-preceded ()
  (when *trace-note*
    (trace-msg "New edge follows cached")))

(deftrace :edge-subsumes-cached ()
  (when *trace-note*
    (trace-msg "New edge subsumes cached")))

(deftrace :disjoint-new-and-cached ()
  (when *trace-note*
    (trace-msg "new edge and cached are disjoint")))

(deftrace :initializing-note-cache ()
  ;; in cache-noteworthy-edge
  (when *trace-note*
    (trace-msg "Note edge cache is empty")))

(deftrace :loading-note-cache (edge)
  (when *trace-note*
    (trace-msg "Loading cache with ~a" edge)))

(deftrace :passing-edge-to-note (edge)
  (when *trace-note*
    (trace-msg "Noting ~a" edge)))

(deftrace :leftover-note (edge)
  (when *trace-note*
    (trace-msg "Noting stranded note: ~a" edge)))

(deftrace :blocking-redundant-note (edge)
  (when *trace-note*
    (trace-msg "Redundant: ~a" edge)))

;;;-------
;;; tests
;;;-------

;; (pl (items (contents (sentence))))

;; "Doug Ohrt, 79"
;; "dates back to 1995 in Puerto Rico"




;;;------------------
;;; cache noted edge
;;;------------------
#| Many categories lie on a headline and will pass through
a note? call several times. If we count each instance than
the result will be greatly exagerated over what we really want.
  This scheme implements a 'subsuming edge' strategy that is
similar to what we do when adding individuals into the
discourse history. 
|#

(defclass note-edge-cache ()
  ((edge :initform nil :initarg :e :accessor cached-edge))
  (:documentation
   "We only have to cache a single edge at a time.
    It will either be suplanted by a subsuming edge
    or released when the note is finalized."))

(defmethod print-object ((c note-edge-cache) stream)
  (print-unreadable-object (c stream :type t)
    (let ((edge (cached-edge c)))
      (if (null edge)
        (format stream "empty")
        (format stream "e~a" (edge-position-in-resource-array edge))))))

(defvar *cached-note-edge* nil "points to the current instance")

(defun initialize-note-edge-cache ()
  (setq *cached-note-edge* (make-instance 'note-edge-cache)))

(defun cached-note-edge ()
  (cached-edge *cached-note-edge*))


(defparameter *debug-cached-new-adjudication* nil)
;; gate around large set of unseen cases

(defun cache-noteworthy-edge (edge)
  "If the cache is empty, just populate its field.
   Otherwise check the incoming edge against the
   one in the cache.
     If it starts after the one in the cache, then
   this edge replaces the one in the cache and we
   send that edge to the note-making machinery.
     If its span subsumes the cached edge, and it
   has the same category, then we replace the
   cached edge with this one.
     If there is a cached edge after all the sentence
   processing has finished, then we sent the cached
   edge to the note-making machinery."
  (let ((start-pos (pos-edge-starts-at edge))
        (end-pos (pos-edge-ends-at edge))
        (referent (edge-referent edge))
        (category (edge-category edge))
        (form (edge-form edge))
        (cached-edge (cached-note-edge)))

    (tr :calling-cache-noteworthy-edge edge)
    
    (cond
      ((null cached-edge)
       (tr :initializing-note-cache)
       (load-edge-into-note-cache edge)
       #+ignore(pass-cached-edge-to-note))

      ((edge-precedes cached-edge edge)
       ;; send the both in? or save the new one to see
       ;; whether it gets subsumed
       (tr :cached-edge-preceded)
       (pass-cached-edge-to-note)
       (load-edge-into-note-cache edge)
       (empty-note-cache))

      ((edge-subsumes-edge? edge cached-edge)
       (tr :edge-subsumes-cached)
       ;; higher, lower
       (if (eq category (edge-category cached-edge))
         (load-edge-into-note-cache edge) ; replace it
         (else
           ;; "the UK and Brendan Hollande"  #6
           ;;  rule: :pnf, 'and' edge in the constituents

           ;; "in the UK" cached country, new edge is a longer location
           ;; ?? some notion of strength ??  #5

           ;; #4 miss-capitalized "in new York City" (will become city under location)
           ;; -- "city" spanned by name "York City"

           ;; #3 name "Kyle Joiner" extended to named-object "Kyle Joiner starred in net"
           ;;  2d is a bad rule: s → {proper-name vp+ed}

           ;; Send the known noteworthy onward,
           ;; but gate whether or not to break
           (pass-cached-edge-to-note)
           (empty-note-cache)
           (when *debug-cached-new-adjudication*
             (break "new edge ~a subsumes cached edge ~a ~
                 what should we do?" edge cached-edge)))))
      
      ((disjoint-edges cached-edge edge)
       ;; the polyword pass can create cached edges that are
       ;; to the right of new edges of their left.
       ;; (p "dates back to 1995 in Puerto Rico")
       ;; Send both of them over
       (tr :disjoint-new-and-cached)
       (pass-cached-edge-to-note)
       (pass-edge-to-note edge)
       (empty-note-cache))

      ((and (eq (pos-edge-ends-at cached-edge) end-pos) ; end at same point
            (position/< ; edge's start pos is to the right of cached
             (pos-edge-starts-at cached-edge) start-pos))
       ;; cached edge is better. Ignore the new edge
       ;; ""Shamrock and Diaz, 25," -- age should go w/ Diaz,  but compound name wins
       ;; 
       )

      (t (push-debug `(,edge ,cached-edge))
         (break "What do we do?~%new: ~a~%cached: ~a"
                edge cached-edge)))))


(defun empty-note-cache ()
  (setf (cached-edge *cached-note-edge*) nil))

(defun load-edge-into-note-cache (edge)
  (tr :loading-note-cache edge)
  (setf (cached-edge *cached-note-edge*) edge))


(defun maybe-note (edge)
  (declare (special *edges-noted*))
  (if (memq edge *edges-noted*)
    (tr :blocking-redundant-note edge)
    (note edge)))

(defun pass-cached-edge-to-note ()
  (let ((e (cached-note-edge)))
    (tr :passing-edge-to-note e)
    (maybe-note e)))

(defun pass-edge-to-note (edge)
  (tr :passing-edge-to-note edge)
  (maybe-note edge))

       
(defun clear-note-edge-cache ()
  (let ((e (cached-note-edge)))
    (when e
      (tr :leftover-note e)
      (maybe-note e))))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1995,2011-2016  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "positions"
;;;   Module:  "objects;chart:positions:"
;;;  Version:  February 2016

;; 1.1 (2/11 v1.8.1)  Added Position-precedes
;;     (5/12/93 v2.3) commented out an unfinished fn.
;; 1.2 (7/8) added Word-before{after}
;; 1.3 (5/3/94) added display-char-index field. 5/5 added Set-status
;;     5/24 added Number-of-terminals-between
;;     (1/4/95) gave Print-position/terminal an option when the terminal was nil
;;     (1/9/07) Added without-package-locks wrapper to quiet Allegro
;;     (2/8/11) Guarded them to allow Clozure to work. 3/3/12 Quiet compiler.
;;     (12/4/12) Added a trace to set-status.
;; 1.4 (12/19/12) SF - augmented set-status to incorporate a LIFO list
;;      of all the states that a position has been through. 
;;     (2/8/12) added pretty-print-status-history
;; 1.5 (5/20/13) Loading Sparser in ACL 9.0 with its native GUI creates
;;      a type for position in its foreign function module. Got around it
;;      by shadowing the symbol and calling the cl:position function via
;;      a macro. In the process made the without-package-locks superfluous.
;;     (12/17/14) added position-is-between. 2/19/16 added highest-edge-
;;      {starting/ending}-at as needed sugar.

(in-package :sparser)

;;;---------------------------
;;;  Positions in the chart
;;;---------------------------

(defstruct (position
             (:conc-name #:pos-)
             (:print-function print-position-structure))

  array-index
  character-index
  display-char-index
  token-index
  ends-here
  starts-here
  terminal
  preceding-whitespace
  capitalization
  status-lifo
  assessed? )

;;;------------------
;;; display routines
;;;------------------

(defun print-position-structure (obj stream depth)
  (declare (ignore depth))
  (let ((terminal (pos-terminal obj)))
    (format stream "#<position~A ~A \"~A\">"
            (pos-array-index obj)
            (pos-token-index obj)
            (if terminal
              (word-pname terminal)
              nil))))


(defun princ-position (pos stream &key (terminal nil))
  (write-string "Position " stream)
  (format stream "~A" (pos-token-index pos))
  (when terminal
    (format stream ": ~A" (pos-terminal pos))))


(defun print-position/terminal (pos
                                &optional
                                 (stream *standard-output*))
  (let ((terminal (pos-terminal pos)))
    (if terminal
      (etypecase terminal
        (word (princ-word terminal stream))
        (polyword (display-polyword terminal stream)))
      (else
        ;; the terminal will be nil if it hasn't yet been scanned
        (write-string "nil" stream)))))


#|  unfinished
(defun display-detail/position (p
                                &optional (stream *standard-output*))
  (display-EV/edges (pos-ends-here p) stream :indent 4 :inverse-order t)
  (display-EV/data  (pos-ends-here p) stream :indent 2 :label nil)
  (format stream "~%Position ~A  (~A)~
                  ~%  whitespace: ~A~
                  ~%    terminal: ~A"
          (pos-token-index p) (pos-array-index p)
          (pos-preceding-whitespace p) (pos-terminal p))
  (display-EV/data  (pos-starts-here p) stream :indent 2 :label nil)
  (display-EV/edges (pos-starts-here p) stream :indent 4 :inverse-order nil)
  (terpri stream))  |#


;;;-------------------
;;; access functions
;;;-------------------

(defun position# (number)
  (declare (special *the-chart*))
  (aref *the-chart* number))


(defun word-before (pos)
  (let ((pos-before (chart-position-before pos)))
    (pos-terminal pos-before)))

(defun word-after (pos)
  ;; redundant with the slot-accessor, but useful sugar in higher
  ;; level routines.
  (pos-terminal pos))

(defun highest-edge-starting-at (pos)
  (let ((ev (pos-starts-here pos)))
    (elt (ev-edge-vector ev)
         (1- (ev-number-of-edges ev)))))
  
(defun highest-edge-ending-at (pos)
  (let ((ev (pos-ends-here pos)))
    (elt (ev-edge-vector ev)
         (1- (ev-number-of-edges ev)))))

;;;--------------------------------
;;; Set functions to provide hooks
;;;--------------------------------

(defun set-status (keyword p)
  (tr :status-set keyword p) ;; "[scan] Setting status of p~a to :~a"
  (kpush keyword (pos-status-lifo p))
  (setf (pos-assessed? p) keyword))

(defun pretty-print-status-history (p &optional (stream *standard-output*))
  (let ((steps (nreverse (copy-list (pos-status-lifo p)))))
    (format stream "~&Status history for ~a" p)
    (dolist (step steps)
      (format stream "~&  ~a" step))
    p))


(defun includes-state (p keyword)
  (memq keyword (pos-status-lifo p)))

(defun has-been-status? (keyword p)
  ;; Return non-nil if this position has been the given status.
  (member keyword (pos-status-lifo p)))


;;;------------
;;; predicates
;;;------------

(defun position-precedes (earlier-position later-position)
  (let ((earlier-index (pos-token-index earlier-position))
        (later-index   (pos-token-index later-position)))
    (< earlier-index later-index)))

(defun position/<= (test-pos reference-pos)
  "The the position of the test position equal to or less
   than the position of the reference position."
  (let ((text-index (pos-token-index test-pos))
        (ref-index (pos-token-index reference-pos)))
    (<= text-index ref-index)))

(defun position/< (test-pos reference-pos)
  "The the position of the test position is less
   than the position of the reference position."
  (let ((text-index (pos-token-index test-pos))
        (ref-index (pos-token-index reference-pos)))
    (< text-index ref-index)))

(defun position/> (test-pos reference-pos)
  "The the position of the test position is greater
   than the position of the reference position."
  (let ((text-index (pos-token-index test-pos))
        (ref-index (pos-token-index reference-pos)))
    (> text-index ref-index)))

(defun position/>= (test-pos reference-pos)
  "The the position of the test position equal to or greate
   than the position of the reference position."
  (let ((text-index (pos-token-index test-pos))
        (ref-index (pos-token-index reference-pos)))
    (>= text-index ref-index)))

(defun number-of-terminals-between (p1 p2)
  "Return an integer corresponding to the number of words
   between those two positions"
  (- (pos-token-index p2)
     (pos-token-index p1)))

(defun position-is-between (position start-pos end-pos)
  (and (> (pos-token-index position)
          (pos-token-index start-pos))
       (< (pos-token-index position)
          (pos-token-index end-pos))))

(defun position-is-at-or-between (position start-pos end-pos)
  "The position can be the start or end postion as well
   as between them."
  (and (>= (pos-token-index position)
           (pos-token-index start-pos))
       (<= (pos-token-index position)
           (pos-token-index end-pos))))


(defgeneric rightmost (p1 p2)
  (:documentation "Which of the positions in the chart of the
    two items is the furthest to the right. Return the argument
    (p1 or p2) with is to the right of the other argument.")
  (:method ((p1 position) (p2 position))
    (let ((i1 (pos-token-index p1))
          (i2 (pos-token-index p2)))
      (cond ((= i1 i2) p1)
            ((> i1 i2) p1)
            ((< i1 i2) p2)))))

(defgeneric to-the-right-of (item1 item2)
  (:documentation "Similar to rightmost, but structured as a predicate
    so can be used in sorting. Devolves down to one of the position
    comparison predicates, but as a generic can also work with edges
    or triples. Test whether the position of item1 is to the right
    of item2 (higher number chart position). Returns nil both when
    item1 is to the left of item2 and when they are at the same position")
  (:method ((p1 position) (p2 position))
    (position/> p1 p2))
  (:method ((t1 list) (t2 list))
    (assert (and (triple-p t1) (triple-p t2)) () "Lists aren't triples")
    (to-the-right-of (right-edge-of-triple t1) (right-edge-of-triple t2))))


;;;------------------------
;;; construction functions
;;;------------------------

(defun words-between (start-pos end-pos)
  (if (null end-pos)
      nil
      (let ((pos start-pos)
            words )
        (loop
          (when (eq pos end-pos) (return))
          (push (pos-terminal pos) words)
          (setq pos (chart-position-after pos)))
        (nreverse words))))


(defun string-of-words-between (p1 p2)
  (let ((words (words-between p1 p2))
        (string ""))
    (dolist (word words)
      (setq string (concatenate 'string string
                                (word-pname word)
                                " ")))
    (subseq string 0 (1- (length string)))))


(defun lexical-items-between (start end)
  (if (< (pos-token-index start)
         (pos-token-index end))
      (let ((lex-start (lexical-edge-at start)))
      (when lex-start
        (cons lex-start
              (lexical-items-between
               (pos-edge-ends-at lex-start)
               end))))))

;; adjust to allow for cases where the "lexical edge" is above the
;;  lowest edge (ambiguities, with edges from polywords)
(defun lexical-edge-at (pos)
  (let* ((ev (pos-starts-here pos))
         (evl (ev-number-of-edges ev))
         (evector (ev-edge-vector ev)))
    (when (> (ev-number-of-edges ev) 0)
      (loop for i from 0 to (1- evl)
         do (let ((edge (aref (ev-edge-vector ev) i)))
              (if (and (cfr-p (edge-rule edge))
                       (unary-rule? (edge-rule edge))
                       (typecase (car (cfr-rhs (edge-rule edge)))
                         (word t)
                         (polyword t)
                         (t nil)))
                (return edge)))))))
    #+ignore
    (when (> (ev-number-of-edges ev) 0)
      (let ((lex-edge (elt evector 0)))
        (cond ((edge-referent lex-edge) lex-edge)
              ((and (> (ev-number-of-edges ev) 1)
                    (edge-referent (elt evector 1)))
               (elt evector 1))
              (t lex-edge))))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1995,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "positions"
;;;   Module:  "objects;chart:positions:"
;;;  Version:  1.3 February 2011

;; 1.1 (2/11 v1.8.1)  Added Position-precedes
;;     (5/12/93 v2.3) commented out an unfinished fn. 
;; 1.2 (7/8) added Word-before{after}
;; 1.3 (5/3/94) added display-char-index field. 5/5 added Set-status
;;     5/24 added Number-of-terminals-between
;;     (1/4/95) gave Print-position/terminal an option when the terminal was nil
;;     (1/9/07) Added without-package-locks wrapper to quiet Allegro
;;     (2/8/11) Guarded them to allow Clozure to work. 

(in-package :sparser)


;;;---------------------------
;;;  Positions in the chart
;;;---------------------------
(#+allegro excl:without-package-locks 
 #-allegro progn
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
    assessed? ))



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
  (aref *the-chart* number))


(defun word-before (pos)
  (let ((pos-before (chart-position-before pos)))
    (pos-terminal pos-before)))

(defun word-after (pos)
  ;; redundant with the slot-accessor, but useful sugar in higher
  ;; level routines.
  (pos-terminal pos))



;;;--------------------------------
;;; Set functions to provide hooks
;;;--------------------------------

(defun set-status (keyword p)
  (setf (pos-assessed? p) keyword))
  


;;;------------
;;; predicates
;;;------------

(defun position-precedes (earlier-position later-position)
  (let ((earlier-index (pos-token-index earlier-position))
        (later-index   (pos-token-index later-position)))
    (< earlier-index later-index)))


(defun number-of-terminals-between (p1 p2)
  ;; return an integer corresponding to the number of words
  ;; between those two positions
  (- (pos-token-index p2)
     (pos-token-index p1)))


;;;------------------------
;;; construction functions
;;;------------------------

(defun words-between (start-pos end-pos)
  (let ((pos start-pos)
        words )
    (loop
      (when (eq pos end-pos) (return))
      (push (pos-terminal pos) words)
      (setq pos (chart-position-after pos)))
    (nreverse words)))


(defun string-of-words-between (p1 p2)
  (let ((words (words-between p1 p2))
        (string ""))
    (dolist (word words)
      (setq string (concatenate 'string string
                                (word-pname word)
                                " ")))
    (subseq string 0 (1- (length string)))))
    

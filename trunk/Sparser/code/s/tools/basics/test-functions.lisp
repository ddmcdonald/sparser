;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  Rusty Bobrow  -- all rights reserved
;;;
;;;      File:   "test-functions"
;;;    Module:   "tools:basics"
;;;   Version:   January 2015

;; utilities for testing in R3. Made format-item prettier 1/10/15

(in-package :sparser)


(defvar *known-breaks* nil)

(defvar *tested* '(0))

(defun reset-dectest ()
  (setq *tested* '(0)))

(defparameter *sentences* nil)

(defun test-jan ()
  (declare (special *jan-dry-run*))
  (setq *sentences* *jan-dry-run*)
  nil)

(defun test-dec ()
  (declare (special *dec-tests*))
  (setq *sentences* *dec-tests*)
  nil)


(defun reset-test ()
  (setq *tested* '(0)))

(defun retest () 
  (loop for i from (+ 1 (car *tested*)) to 100 
    when (<= i (length *sentences*))
    do (push i *tested*) (dectest i)))

(defun bad () 
  (push (car *tested*) *known-breaks*) 
  (retest))

(defun dectest (n &optional (sentences *sentences*))
  (let ((test (nth (- n 1) sentences)))
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
        (print "skipping because of known problems")
        (progn
          (eval test)
          (if *save-chunk-edges*
              ;;make the list of chunk edges show their sentence origin
              (push (cons n (cdr test)) *all-chunk-edges*))
          (when t
            (terpri) 
            (format t "SEMANTIC FOREST ------------------------------------~&")
          
            (loop for edge-tree in
              (tts-edge-semantics)
              do
              (format t "-----~&~S~&~&" (car edge-tree))
              (print-tree (second edge-tree))))

          (format t "~&___________________________________________~&~&")
          ))))
;;/// these two should be merged. Perhaps with a switch
;;  to determine what to show
(defun jantest (n &optional (sentences *sentences*))
  (let ((test (nth (- n 1) sentences)))
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
      (print "skipping because of known problems")
      (let ((*readout-relations* t)
            s-expressions )
        (declare (special *readout-relations*))
        (eval test)
        (format t "~&~%Relations:~%")
        (loop for r in *relations*
          do (let ((sexp (collect-model r)))
               (push sexp s-expressions)
               (pprint sexp)))
        (terpri)
        (reverse s-expressions)))))



(defun print-tree (tree &optional (last nil) (indent 0) (stream t))
  (nspaces indent stream)
  (cond
   ((consp tree)
    (format stream "(")
    (format-item (car tree) stream)
    (when (cdr tree)
      (terpri)
      (loop for items on (cdr tree) do 
        (print-tree (car items) 
                    (null (cdr items))
                    (+ indent 3) 
                    stream)))
    (format stream ")"))
   (t
    (format-item tree stream)))
  (when (not last)
   (terpri stream)))

(defun format-item (item stream)
  (typecase item
    (psi (push-debug `(,item))
         (error "Something gerated a PSI and it shouldn't have: ~a" item))
    (individual
     (let* ((name (name-of-individual item))
            (pname (when name (typecase name
                                (word (word-pname name))
                                (polyword (pw-pname name))
                                (otherwise "")))))
       (if name
          (format stream "~((~a ~s ~a)~)"
                  (cat-symbol (car (indiv-type item)))
                  pname
                  (indiv-uid item))
          (format stream "~((~a ~a)~)"
                  (cat-symbol (car (indiv-type item)))
                  (indiv-uid item)))))

    (otherwise
     (format stream "~(~S~)" 
             item))))
   

(defun nspaces (n stream)
  (when (> n 0)
      (princ " " stream)
      (nspaces (- n 1) stream)))

(defun np (l)
  (if (consp l)
      (loop for item in l do (print item))
      (print l)))

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
  (setq *tested* '(0))
  (setq *known-breaks* nil))

(defun retest () 
  (loop for i from (+ 1 (car *tested*)) to (length *sentences*) 
    do 
    (push i *tested*) 
    (dectest i)))

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
            (format t "---SEMANTIC FOREST---")
            
            (loop for edge-tree in
              (tts-edge-semantics)
              do
              (terpri)
              (if (small? (second edge-tree))
                  (then
                    (format t "~&~s" (car edge-tree))
                    (print-tree (second edge-tree) t 0 t t))
                  (else
                    (format t "-----~&~s" (car edge-tree))
                    (print-tree (second edge-tree))))
              
              ;;(format t "~&___________________________________________~&~&")
              ))))))

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

(defun tree-size (tree)
  (cond
   ((not (consp tree)) 1)
   (t
    (loop for elt in tree sum (tree-size elt)))))

(defun small? (tree)
  (< (tree-size tree) 5))

(defun print-tree (tree &optional (last nil) (indent 0) (stream t)(tight nil))
  (if
   tight
   (nspaces 1 stream)
   (else
     (terpri)
     (nspaces indent stream)))
  (cond
   ((consp tree)
    (format stream "(")
    (format-item (car tree) stream)
    (when (cdr tree)
      (setq tight  (small? tree))
      (loop for items on (cdr tree) do 
        (print-tree (car items) 
                    (null (cdr items))
                    (+ indent 3) 
                    stream
                    tight)))
    (format stream ")"))
   (t
    (format-item tree stream)))
  (when (and (not last) (not tight))
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
          (format stream "~(~a-~a ~s~)"
                  (cat-symbol (car (indiv-type item)))
                  (indiv-uid item)
                  pname)
          (format stream "~(~a-~a~)"
                  (cat-symbol (car (indiv-type item)))
                  (indiv-uid item)))))

    (otherwise
     (format stream "~(~S~)" item))))
   

(defun nspaces (n stream)
  (when (> n 0)
      (princ " " stream)
      (nspaces (- n 1) stream)))

(defun np (l)
  (if (consp l)
      (loop for item in l do (print item))
      (print l)))

(defun is-pp? (edge)
  (and
   (edge-p edge)
   (eq 'pp 
       (and (edge-form edge)
            (cat-sym (edge-form edge))))))

(defun case-pp-search ()
  (let
      ((res nil))
    (loop for res in
      (loop for i from 1 to (length *sentences* )
      when (setq res (case-pps i))
      collect res)
      do        
      (print "___________MISSING SUBCATS?_____________________________________________") 
      (np res))))

(defun case-pps (i)
  (progn (dectest i)
    (let
        ((res (loop for pair in (adjacent-tts) 
                when (eq 'pp (car (edge-rep (second pair))))
                collect (loop for edge in pair collect (edge-rep edge)))))
      (and 
       res
       (cons
        (list i (nth (- i 1) *sentences*))
        res)))))

(defun cat-sym (cat)
  (if
   (word-p cat)
   (intern
    (symbol-name
     (word-symbol cat)))
   (intern
    (symbol-name
     (cat-symbol cat)))))

(defun edge-rep (edge)
  (cons (and (edge-form edge) 
             (cat-sym (edge-form edge)))
        (cons
         (and (edge-category edge)
              (cat-sym (edge-category edge)))
         (and (is-pp? edge)
              (list
               (cat-sym 
                (edge-category 
                 (edge-right-daughter edge))))))))
  

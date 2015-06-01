;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 Rusty Bobrow  -- all rights reserved
;;;
;;;      File:   "test-functions"
;;;    Module:   "tools:basics"
;;;   Version:   February 2015

;; utilities for testing in R3. Made format-item prettier 1/10/15.
;; 2/8/15 Turning off anaphora on sentence calls. 
;; 3/21/2015 new functions for saving information about actually 
;;   occurring sub-categorization cases

(in-package :sparser)


(defvar *save-chunk-edges*)
(defvar *all-chunk-edges*)
(defvar *relations*)
(defvar *DEC-TESTS*)
(defvar *JAN-DRY-RUN*)


(defparameter *sentences* nil
  "The set of sentences a general iterator
   runs over. Set by one of the corpus specifiers")

;;;----------------------------
;;; Sentence corpus specifiers
;;;----------------------------
; These specify which corpus a general iterator
; should run on. 

(defun test-overnight ()
  (declare (special *overnight-sentences*))
  (setq *sentences* *overnight-sentences*)
  (reset-test)
  nil)

(defun test-jan ()
  (declare (special *jan-dry-run*))
  (setq *sentences* *jan-dry-run*)
  (reset-test)
  nil)

(defun test-dec ()
  (declare (special *dec-tests*))
  (setq *sentences* *dec-tests*)
  (reset-test)
  nil)

(defun test-erk ()
  (declare (special *erk-abstract*))
  (setq *sentences* *erk-abstract*)
  (reset-test)
  nil)


(defun test-aspp2 ()
  (declare (special *aspp2-whole*))
  (setq *sentences* *aspp2-whole*)
  (reset-test)
  nil)

(defun test-load-test ()
  (declare (special *load-test-sents*))
  (setq *sentences* *load-test-sents*)
  (reset-test)
  nil)



;;;-------------------------------
;;; general iterators and friends
;;;-------------------------------

(defvar *known-breaks* nil
  "Bad pushes sentence number onto this list when you
   call it. Useful for marking sentences that get
   Lisp errors.")
 
(defvar *tested* '(0)
 "Retest pushes sentence numbers onto this list 
   as they are executed")


(defun reset-test ()
  "Set the two accumulators back to their initial values"
  (setq *tested* '(0))
  (setq *known-breaks* nil))

(defun reset-dectest ()
  (reset-test))

(defun retest (&optional (semantics *show-semantics*))
  "Loop over all the designated sentences calling
   run-test on each one"
  ;;(reset-test)
  (loop for i from (+ 1 (car *tested*)) to (length *sentences*) 
    unless (memq i *known-breaks*)
    do 
    (push i *tested*) 
    (run-test i semantics)))

(defun bad (&optional (semantics *show-semantics*))
  (push (car *tested*) *known-breaks*) 
  (retest *show-semantics*))

;;--- tailored iterators

(defun dectests (&optional (start 1))
  (declare (special *dec-tests*))
  (loop for i from start to (length *dec-tests*) do (dectest i)))

(defun jantests (&optional (start 1))
  (declare (special *jan-dry-run*))
  (loop for i from start to (length *jan-dry-run*) do (dectest i)))


;;;-------------------------
;;; Single sentence testers
;;;-------------------------

(defun dectest (n &optional (sentences *dec-tests*))
  (declare (special *dec-tests*))
  (run-test n nil :sentences sentences))

(defun jantest (n &optional (sentences *jan-dry-run*))
  (declare (special *jan-dry-run*))
  (run-test n nil :sentences sentences))



(defmacro test (n)
  `(run-test ,n))

(defparameter *show-semantics* t)
(defun quiet-semantics(&optional (flag t))
  (setq *show-semantics* (not flag)))


(defun run-test (n &optional  (semantics *show-semantics*) &key(sentences *sentences*))
  (let ((test (nth (- n 1) sentences))
        (*do-anaphora* nil))
    ;; Anaphora rarely is germane on a single sentence by itself
    (declare (special *do-anaphora* *save-chunk-edges*))
    (format t "~&___________________________________________~%~%")
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
        (print "skipping because of known problems")
        (progn
          (eval test)
          (when *save-chunk-edges*
            ;;make the list of chunk edges show their sentence origin
            (push (cons n (cdr test)) *all-chunk-edges*))
          (when semantics ;;*show-semantics*
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
                    (format t "-----  ~s" (car edge-tree))
                    (print-tree (second edge-tree))))))))))

(defun sem-test (n &optional (sentences *sentences*))
  (let ((test (nth (- n 1) sentences))
        (*do-anaphora* nil))
    (declare (special *do-anaphora*))
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
      (print "skipping because of known problems")
      (else
       (pp (second test))
       (show-semantics)))))
          
                
(defun stest (n &optional (sentences *sentences*))
  "Variant on run-test using a different semantics extractor"
  (let ((test (nth (- n 1) sentences))
        (*do-anaphora* nil))
    (declare (special *do-anaphora*))
    (format t "~&~%___________________________________________~%")
    (print (list n test))
    (terpri)
    (let ((*readout-relations* t)
          s-expressions )
      (declare (special *readout-relations*))
      (eval test)
      (initalize-model-collection)
      (format t "~&~%Relations:")
      (loop for r in *relations*
        do (let ((sexp (collect-model r)))
             (push sexp s-expressions)
             (pprint sexp)))
      (terpri)
      (reverse s-expressions))))



;;;-------------------------------
;;; helper functions for sem tree
;;;-------------------------------

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
     (terpri stream)
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
   (terpri stream))
  tree)

(defun psemtree (x)
  (print-tree (semtree x)))

    
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

(defun np (l &optional (stream t))
  (loop for ll in l do (print ll stream)))

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
  (progn 
    (format t "~&~&~&**************************************************************~&")
    (sem-test i)
    (let
        ((res (loop for pair in (adjacent-tts) 
                when (eq 'pp (car (edge-rep (second pair))))
                collect (loop for edge in pair collect (edge-rep edge)))))
      (np res)
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
 

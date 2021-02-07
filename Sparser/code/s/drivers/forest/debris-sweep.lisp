;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "debris-sweep"
;;;   Module:  "drivers;forest:"
;;;  Version:  February 2021

;; Initiated 1/15/20 to identify discourse relations and other
;; patterns in the debris left after pass one. Design is similar
;; to sweep-sentence-treetops but maintains state across multiple
;; sentences.

(in-package :sparser)

;; (trace-debris-sweep)

(defun sweep-debris-in-sentence (sentence)
  "Runs the debris sweeper over this sentence and integrates
   it into the paragraph level state layout"
  ;;/// one step at a time
  (declare (special *trace-debris-sweep*))
  (sweep-debris-treetops sentence)
  (when *trace-debris-sweep*
    (format t "~&~%")) ;; formatting the repl
  )

(defgeneric sweep-debris-treetops (sentence)
  (:method ((sentence sentence))
    (let* ((start-pos (starts-at-pos sentence))
           (end-pos (ends-at-pos sentence))
           (rightmost-pos start-pos)
           (sentence-initial? t)
           (count 0)
           tt  prior-tt  pos-after form )
      (tr :debris-sweep-sentence sentence)
      (loop
         (multiple-value-setq (tt pos-after)
           (next-treetop/rightward rightmost-pos))
         (incf count)

         (typecase tt
           (edge

             (setq form (edge-form tt))
             (tr :debris-tt count (or form (edge-category tt)))
             
             (when (category-p form)
               (case (cat-name form)

                 (pp
                  (when sentence-initial?) ; preposed-pp
                  )

                 (conjunction ) ; stranded conjunction

                 (punctuation
                  ;; *the-punctuation-semicolon*
                  )

                 ))

             (when (word-p (edge-category tt))
               (let ((pname (pname (edge-category tt))))
                 (cond
                   ((string-equal pname ",")) ; loose-comma
                   ))))
           (word
            ;; a bare, uncovered word - usually a bug
            (tr :debris-bare-word count tt))

           (edge-vector ; indicates multiple initiate edges
            ;; in overnight #8 it's two versions of "to"
            )
           (t         
            (error "Ill-formed chart object: ~a" tt)))

                     

         (when (eq pos-after end-pos)
           (return)) ;; leave the loop
         (when sentence-initial?
           (setq sentence-initial? nil))
         (setq rightmost-pos pos-after
               form nil ; reinitialize
               prior-tt tt))

       )))


;;;-----------------------------------------------------
;;; keeping track of what rules are fired by heuristics
;;;-----------------------------------------------------

(defvar *last-ditch-rule-records* nil)

(defclass rule-instance (binary-edge-strings)
  ((rule :initform nil :accessor rule
    :documentation "The symbol returned by rule-name")))
(setup-find-or-make rule-instance)

(defun tally-last-ditch-rules (list-of-triples)
  "Called from the 'last ditch' module inside island-driven-forest-parse
   where the whack-a-rule-cycle is run with the semantic constraints
   turned off. It returns this list of the triples that it executed
   in that pass."
  (when list-of-triples
    (flet ((record-rule (rule left-edge right-edge)
             ;;(push-debug `(,rule ,left-edge ,right-edge))
             #+ignore(format t "~&rule: ~a~%left: ~a~%right: ~a~%"
                     rule left-edge right-edge)
             (let* ((r (make-instance 'rule-instance))
                    (name (rule-name rule)))
               (setf (name r) name)
               (setf (rule r) name)
               (setf (left-string r) (string-for-edge left-edge))
               (setf (right-string r) (string-for-edge right-edge))
               r)))
      (let ((records
             (loop for triple in list-of-triples
                as rule = (triple-rule triple)
                as left = (left-edge-of-triple triple)
                as right = (right-edge-of-triple triple)
                collect (record-rule rule left right))))
        (setq *last-ditch-rule-records* records)
        (length records)))))
      



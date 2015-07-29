;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "colon-patterns""
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  July 2015

;; Broken out from pattern-gophers 7/19/15

(in-package :sparser)

(defun ns-patterns/edge-colon-edge (label-pattern
                                    start-pos end-pos edges words)
  ;; called from ns-sort-out-pattern-with-edges when there are three
  ;; elements in the pattern and the character between the two edges
  ;; is a colon
  (cond
   ((equal label-pattern '(:protein :colon  :protein))
    (make-ns-pair 'protein (first edges) (second edges)
                  words start-pos end-pos))
   (t (if *work-on-ns-patterns*
        (break "New edge colon pattern ~a" label-pattern)
        (edge-that-punts-edge-inside-pattern words start-pos end-pos edges)))))

(defun resolve-colon-pattern (pattern words colon-positions start-pos end-pos)
  ;; called from ns-pattern-dispatch when the only puctuation is a colon
  ;; (push-debug `(,pattern ,words ,hyphen-positions ,start-pos ,end-pos))
  ;; (break "starting colon pattern: ~a" pattern)
  (let ((count 0))
    (dolist (item pattern)
      (when (eq item :colon ) (incf count)))
    (case count
      (1 (one-colon-ns-patterns
          pattern words colon-positions start-pos end-pos))
      (otherwise
       (when *work-on-ns-patterns*
         (push-debug `(,pattern ,words ,colon-positions ,start-pos ,end-pos))
         (error "Write the code for ~a colons in a no-space sequence" count))))))

(defun one-colon-ns-patterns (pattern words colon-positions start-pos end-pos)
  ;; called from resolve-colon-pattern
  (cond
   ((or
     (equal pattern '(:single-digit :colon :single-digit))
     (equal pattern '(:single-digit :colon :digits))
     (equal pattern '(:digits :colon :single-digit))
     (equal pattern '(:digits :colon :digits)))
    (make-number-colon-number-structure 
     (right-treetop-at/edge start-pos) 
     (left-treetop-at/edge end-pos)))
   ((or
     (equal pattern '(:full :colon))
     (equal pattern '(:lower :colon))
     (equal pattern '(:lower :colon :full))
     (equal pattern '(:lower :colon :lower))
     (equal pattern '(:full :colon :full))
     (equal pattern '(:full :colon :lower)))
    (make-word-colon-word-structure 
     (right-treetop-at/edge start-pos) 
     (left-treetop-at/edge end-pos)))

   (*work-on-ns-patterns*
    (push-debug `(,pattern ,words ,colon-positions ,start-pos ,end-pos))
    (break "unknown NS pattern with one colon:~%  ~a" pattern))

   ;; fall through
   (t (tr :no-ns-pattern-matched)
      (reify-ns-name-and-make-edge words start-pos end-pos))))


;; endogenous C-RAF:B-RAF heterodimers
(defun divide-and-recombine-ns-pattern-with-colon (pattern words 
                                                   colon-positions hyphen-positions 
                                                   pos-before pos-after)
  (declare (ignore hyphen-positions colon-positions pattern))
  ;;(push-debug `(,hyphen-positions ,colon-positions ,pos-before ,pos-after ,words ,pattern))
  (let ((treetops (treetops-between pos-before pos-after)))
    (cond
     ((= (length treetops) 3)
      ;; nothing to do, there's already a parse of the consituents to either 
      ;; side of the colon
      (make-word-colon-word-structure (first treetops) (third treetops)))
     (*work-on-ns-patterns*
      (push-debug `(,treetops))
      (break "colon+hyphen stub: have to construct one of the constituents"))
     (t ;; bail
      (reify-ns-name-and-make-edge words pos-before pos-after)))))

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

(defun resolve-colon-pattern (pattern words edges colon-positions start-pos end-pos)
  ;; called from ns-pattern-dispatch when the only puctuation is a colon
  ;; (push-debug `(,pattern ,words ,colon-positions ,start-pos ,end-pos))
  ;; (break "starting colon pattern: ~a" pattern)
  (if (null (cdr colon-positions))
    (one-colon-ns-patterns
     pattern words edges colon-positions start-pos end-pos)
    (multi-colon-ns-patterns
     pattern words edges colon-positions start-pos end-pos)))

(defun one-colon-ns-patterns (pattern words edges colon-positions start-pos end-pos)
  ;; called from resolve-colon-pattern
  (cond
   ((equal pattern '(:protein :colon :protein))
    (make-ns-pair 'protein (first edges) (second edges)
                  words start-pos end-pos))
   ((or (equal pattern '(:single-digit :colon :single-digit))
        (equal pattern '(:single-digit :colon :digits))
        (equal pattern '(:digits :colon :single-digit))
        (equal pattern '(:digits :colon :digits)))
    (make-number-colon-number-structure 
     (right-treetop-at/edge start-pos) 
     (left-treetop-at/edge end-pos)))
   ((or (equal pattern '(:full :colon))
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


(defun multi-colon-ns-patterns (pattern words edges colon-positions start-pos end-pos)
  ;; called from ns-patterns/edge-colon-edge when the only punctuation
  ;; in the sequence is colon. Do a divide and recombine
  (push-debug `(,pattern ,words ,edges ,colon-positions ,start-pos ,end-pos))
  ;; (setq pattern (nth 0 *) words (nth 1 *) edges (nth 2 *) colon-positions (nth 3 *) pos-before (nth 4 *) pos-after (nth 5 *))
  (lsp-break "multi-colon"))


;;;------------------
;;; colon and hyphen
;;;------------------

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

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2016-2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "initial"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:   September 2017

;; 1.1 (4/21/91 v1.8.4)  Changed the arguments
;;     (9/12/92 v2.3) improved the documentation
;; 1.2 (11/1) changed the :form to be nil
;; 1.3 (2/24/94) added pro-forma daughters
;; 1.4 (3/15) started improving information about literals
;;     (5/25) added type predicate
;; 1.5 (11/16/94) added form category when word is a function word

(in-package :sparser)

(defun edge-over-literal? (edge)
  (eq (edge-right-daughter edge) :literal-in-a-rule))


(defun make-edge-over-literal (word
                               position
                               next-position
                               rule-set)
  
  "Called from Install-terminal-edges when a word is mentioned
   literally in a non-unary rule. The rule set of the word indicates
   it composes in some direction and we create this edge to provide
   what amounts to a carrier so that the word looks like everything
   else that participates in the parsing algorithm."

  (flet ((useful-form-category? (c)
           "Is this category going to contribute information to the
            parsing process, in particular does it trigger an FSA
            or introduce segment brackets."
           (let ((rs (rule-set-for c)))
             (when rs
               (or (rs-fsa rs)
                   (rs-phrase-boundary rs)
                   (rs-completion-actions rs))))))
    
    (let ((edge (next-edge-from-resource))
          (starting-vector (pos-starts-here position))
          (ending-vector   (pos-ends-here next-position))
          form-category )

      (setf (edge-category edge)  word)
      (setf (edge-starts-at edge) starting-vector)
      (setf (edge-ends-at edge)   ending-vector)

      #+ignore 
      ;; If we can keep track of the rules that mention this word
      ;; as a literal. Then we could list them here, otherwise the
      ;; numbers for the ids just confuse the innocent
      (let ((ll-rules (rs-left-looking-ids rule-set))
            (rl-rules (rs-right-looking-ids rule-set)))
        (setf (edge-rule edge)
              (cond ((and ll-rules rl-rules)
                     (cons ll-rules rl-rules))
                    ((or ll-rules rl-rules)
                     (or ll-rules rl-rules))
                    (t nil))))

      (if (setq form-category (function-word? word))
        (if (eq form-category t)
          ;; t is the default when the function word hasn't been defined yet.
          ;; See define-function-term, and its subroutine define-function-word
          (setf (edge-form edge) nil)
          (if (useful-form-category? form-category)
            (setf (edge-form edge) form-category)
            (setf (edge-form edge) nil)))
        (setf (edge-form edge) nil))

      (set-edge-referent edge word)

      (knit-edge-into-positions edge
                                starting-vector
                                ending-vector)

      (setf (edge-left-daughter edge) word)
      (setf (edge-right-daughter edge) :literal-in-a-rule)
      
      (when *trace-edge-creation*
        (format t "~&~%Edge for a literal in a rule ~A~%" edge))
      (note-surface-string edge)
      
      edge)))


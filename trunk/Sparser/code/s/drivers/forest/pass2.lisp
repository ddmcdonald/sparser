;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "pass2"
;;;   Module:  "drivers;forest:"
;;;  Version:  October 2014

;; Broken out of island-driving 10/23/14.

(in-package :sparser)

(defun smash-together-two-tt-islands (treetops)
  ;; Called from run-island-checks-pass-two when there are only
  ;; two treetops
  (push-debug `(,treetops))
  (tr :island-driver-forest-pass-2)
  (let* ((e1 (car treetops))
         (e1-form (edge-form e1))
         (e2 (cadr treetops))
         (e2-form (edge-form e2))
         (e1-status (category-status e1-form)) ;; 'major' vs 'minor'
         (e2-status (category-status e2-form)))
    (tr :smash-together e1 e2 e1-status e2-status)
    ;;(break "e1: ~a  e2: ~a" e1-status e2-status)
    (cond
     ((eq e1-status :major)
      ;; lets take the other edge as an adjunct regardless
      ;; of what it is. 
      (let* ((ref (unspecified-adjunction e1 e2))
             (edge (make-binary-edge/explicit-rule-components
                    e1 e2
                    :category (edge-category e1)
                    :form (edge-category e1)
                    :rule-name :smash-together-two-tt-islands
                    :referent ref)))
        (tr :smashed-together-edge edge)
        edge))
     (t (tr :no-smashing-tt1-not-major e1)
        (when nil
          (break "not major: ~a" e1))))))



(defun look-for-length-three-patterns (treetops)
  ;; with just three treetops, there's probably a pattern over them
  ;; that's easy to state. 
  (tr :pattern-over-three-tt (car treetops) (cadr treetops) (caddr treetops))
  (push-debug `(,treetops))
  ;;/// See if DA patterns machinery do this better -- especially the setup
  (let ((comma-edge (includes-tt-over-comma treetops))) ;; or 'that', etc.
    (when comma-edge
      ;; Try a stranded initial pp -- J5
      (when (match-treetop-pattern `(,category::pp
                                     ,*the-punctuation-comma*
                                     ,category::s)
                                   treetops)
        ;;/// should let the preposition dictate the relationship
        (let* ((clause (third treetops)) ;; drops the comma
               (pp (first treetops))   ;; rather than folding into pp
               (ref (unspecified-adjunction clause pp))
               (edge (make-binary-edge/explicit-rule-components
                      pp clause
                      :category (edge-category clause)
                      :form (edge-form clause)
                      :rule-name :look-for-patterns
                      :referent ref)))
          (tr :comma-3tt-pattern edge)
          edge))))
  (let* ((first-tt (car treetops))
         ;;(ca-action (conceptual-analysis-action first-tt))
         (da-node (trie-for-1st-item first-tt)))
    (if da-node
      (then (push-debug `(,da-node))
            ;; trace
            ;; (trace-da) 
            (standalone-da-execution da-node first-tt))
      (tr :no-3tt-da-pattern))))



(defun fill-in-between-subject-and-final-verb (subject copula treetops tt-count)
  (tr :filling-in-between-subj-and-verb subject copula tt-count)
  (push-debug `(,subject ,copula ,treetops))
  ;; (setq subject (car *) copula (cadr *) treetops (caddr *))
  (when (list-final copula treetops)
    (when (list-initial subject treetops)
      (unless (> tt-count 4)
        ;; only two constituents between the subject and what we can
        ;; heuristically presume is the main verb of the sentence,
        ;; so there must be a way to fit the two together and treat
        ;; the result as a 
        (let ((middle-edges (subseq (cdr treetops) ;; leave off subject
                                     0 2))) ;; '2' because there are only four tt.
          (let ((middle-edge
                 (try-to-carefully-compose-two-edges middle-edges)))
            (push-debug `(,middle-edge)) ;;   (break "middle edge = ~a" edge)
            (let ((extended-subject
                   (compose-as-reduced-relative subject middle-edge)))
              (push-debug `(,extended-subject)) ;;(break "extended")
              (ad-hoc-subj+copula-rule extended-subject copula))))))))


                               
(defun match-treetop-pattern (sequence treetops)
  ;; This should be factored to combine it with follow-out-pattern which
  ;; is looking through the raw set of treetops (pass 1) whereas here
  ;; we have a fixed sequence and a specified pattern
  (push-debug `(,sequence ,treetops))
  (let ( tt )
    (dolist (item sequence t)
      (setq tt (pop treetops))
      ;; (break "item = ~a~%tt = ~a~%" item tt)
      (when (null tt) (return-from match-treetop-pattern t))
      (typecase item
        (category ;; a form category
         (unless (eq item (edge-form tt))
           (return-from match-treetop-pattern nil)))
        (word ;; presumably punctuation
         (unless (eq item (edge-category tt))
           (return-from match-treetop-pattern nil)))
        (otherwise
         (error "Unexpected type of item in the pattern: ~a~%~a"
                (type-of item) item))))))


(defun try-to-carefully-compose-two-edges (two-edges)
  (tr :carefully-compose (car two-edges) (cadr two-edges))
  (let* ((left (car two-edges))
         (left-form (edge-form left))
         (right (cadr two-edges))
         (right-form (edge-form right)))
    (push-debug `(,left ,right))
    ;; These didn't naturally compose in phase 1, Lets assume
    ;; it was because the timing of the different things we tried
    ;; rather than a gap in the grammar. 
          
    (when (eq left-form category::pp)
      (when (vp-category? right-form)
        (let ((buried-np (edge-right-daughter left)))
         ;; The situation that applies in J1 is that the pp of the
          ;; first edge has covered the np that the vp of the second
          ;; VP edge, which is a reduced relative
          (let ((new-pp
                 (attached-reduced-relative-to-np-of-pp
                  left buried-np right)))
            (tr :np-buried-under-vp new-pp)
            new-pp))))))



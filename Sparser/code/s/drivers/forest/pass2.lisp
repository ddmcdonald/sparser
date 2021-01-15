;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "pass2"
;;;   Module:  "drivers;forest:"
;;;  Version:  January 2021

;; Broken out of island-driving 10/23/14. Added relative clause check
;; 12/19/14. 
;; 3/3/15 Ignoring the smash-togeter function as too agressive, changed
;;   the comma-edge case in look-for-length-three-patterns to lookup the
;;   subcategorization on the preposition.
;; 4/24/2015 fixed fill-in-between-subject-and-final-verb so that it doesn't look for
;;  material BETWEEN adjacent subject and vp which are about to be smashed together
;; 5/30/15 wrote conjoin-clause-and-vp as target of debris-analyis pattern.
;; 9/18/15 Moved da-handlers to go with the rules themselves in rules/DA.
;;  What's left here is connected with the original, highly heuristic, way of
;;  doing the second pass, so it may well soon be determined to be OBE.

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun pass-two (sentence start-pos end-pos)
  "The first pass, which is dominated by the whack cycle, has finished
   but we still have un-spanned portions of the sentence. In this phrase
   we interleave DA rules with follow-up whack operations. This continues
   until the operations have no effect or we've spanned the sentence."
  (declare (special *trace-DA-check* *trace-conjunction-hook*))
  
  (let ((treetops (successive-treetops :from start-pos :to end-pos)))
    (tr :island-driver-forest-pass-2)
    (tr :entering-pass-2)
    (when (or *print-forest-after-doing-forest*
              *trace-island-driving*
              *trace-DA-check*
              (and (there-are-conjunctions?) *trace-conjunction-hook*))
      (format t "~&~%Just before 2d pass:~%")
      (tts)
      (when *trace-DA-check*
        (terpri)
        (tts-form)))
    (tr :islands-pass-2 (length treetops))

    (flet ((conjunction-check ()
             (when (there-are-conjunctions?)
               (tr :try-spanning-conjunctions-pass2)
               (let ((*allow-form-conjunction-heuristic* t))
                 (declare (special *allow-form-conjunction-heuristic*))
                 (try-spanning-conjunctions)))))
      (let (da-result)
        (conjunction-check)
        (loop
           (setq da-result (da-rule-cycle start-pos end-pos treetops))
           (cond
             ((null da-result) ;; no DA rules executed -- nothing left to do
              (tr :no-result-from-da)
              (return-from pass-two t))
             ((eq (coverage-over-region start-pos end-pos)
                  :one-edge-over-entire-segment)
              (return-from pass-two t)))
           (conjunction-check)
           (unless (or (whack-a-rule-cycle sentence)
                       da-result)
             (return-from pass-two t))
           ;; reset the treetop list and go around the loop again
           (setq treetops (successive-treetops :from start-pos :to end-pos)))
        ))))





;;;-----------------------------------------------
;;; older version of integrated pass2 operations
;;;-----------------------------------------------

(defun old-pass2 (sentence start-pos end-pos treetops number-of-treetops)
  
  (let ((ramaining-treetops (copy-list treetops))
        (tt-count 0)
        tt  result  coverage  )
    
    (loop
      ;; We're looping over successive treetops. When we run out 
      ;; of tt we're done.
      (unless ramaining-treetops
        (tr :no-treetops-remain-exiting)
        (return))
      (setq tt (pop ramaining-treetops))
      
      (when (>= (incf tt-count) number-of-treetops)
        ;; belt and suspenders to ensure we don't loop indefinitely
        (return))
      
      ;; Start with Debris Analysis to find a pattern over these
      ;; treetops. We may have to look at several successive tt
      ;; before we get one
      (tr :trying-da-pattern-on tt)
      (setq result (look-for-da-pattern tt))
      
      ;; Did that cover everything? (Could only happen on the
      ;; first iteration.
      (setq coverage (coverage-over-region start-pos end-pos))
      (when (eq coverage :one-edge-over-entire-segment)
        ;; we're done because we've succeeded
        (return-from old-pass2 t))
      
      ;; Ok. Look at the result of the debris analysis run
      (cond
       ((null result)
        ;; Loop around to try DA on the next tt
        (tr :no-result-from-da))
       
       ((edge-p result)
        ;; If there are any contiguous edges now
        ;; we should run the rule engine   
        (tr :p2-da-returned-edge result)
        (let ((action (coverage-dispatch start-pos end-pos)))
          (case action
            (:one-edge-over-entire-segment
             (return-from old-pass2 t))
            (:do-not-apply-rules
             ;; go to the da loop
             (tr :p2-no-use-applying-rules))
            (:apply-rules 
             ;; The cycle runs to completion on all the treetops
             ;; and does it's own recalulation
             (tr :p2-applying-rules)
             (whack-a-rule-cycle sentence)
             ;; Once it's done we evaluate the coverage again
             ;; to see whether we're done, 
             (setq coverage (coverage-over-region start-pos end-pos))
             (tr :p2-converage-is coverage)
             (when (eq coverage :one-edge-over-entire-segment)
               (return-from old-pass2 t))
             ;; otherwise we update the tracking variables and loop
             (setq ramaining-treetops (successive-treetops :from start-pos :to end-pos)
                   number-of-treetops (length ramaining-treetops)))
            (otherwise
             (error "Unanticipate return from coverage dispatch: ~a" action)))))
       
       ((keywordp result)
        (ecase result
          (:trie-exhausted
           ;; didn't find anything, if there's a next tt after
           ;; this one we should look for a pattern starting there
           (tr :no-result-from-da))
          (:pattern-matched
           ;; the function ran, but it didn't return an edge
           ;; (so it should be revised to do so !!)
           (lsp-break "pattern matched, but what actually happened?"))))
       (t
        (push-debug `(,result ,sentence ,start-pos ,end-pos))
        (error "Unanticipated type of result: ~a" (type-of result))))
      
      ) ;; the loop
    ))


(defun older-run-island-checks-pass-two (layout start-pos end-pos)
  (declare (special category::adverb))
  (flet ((clean-treetops (treetops)
           (loop for edge in treetops
             unless (or (not (edge-p edge))
                        (memq (edge-category edge) `(,word::comma))
                        (memq (edge-form edge) `(,category::adverb)))
             collect edge)))
    (let* ((actual-treetops (successive-treetops :from start-pos :to end-pos))
           (treetops (clean-treetops actual-treetops))
           (tt-count (length treetops))
           (clauses (there-are-loose-clauses))
           (subject-edge (subject layout))
           (vps (verb-phrases layout))
           (copula (when vps (find-copular-vp vps)))
           (other-vps (when vps (find-non-copular-vps vps)))
           (pps (there-are-prepositional-phrases)))
    (tr :islands-pass-2 tt-count)
    (push-debug `(,start-pos ,end-pos ,treetops)) 
    (cond
     ((and subject-edge copula)
      (fill-in-between-subject-and-final-verb subject-edge copula treetops tt-count))
     ((there-is-a-that?)
      (try-to-make-that-relative-clause))
     (t (push-debug `(,clauses ,vps ,other-vps ,pps))
        (tr :no-established-pass-2-patterns-applied)
        (when nil
          (break "other")))))))



(defun coverage-dispatch (start-pos end-pos)
  "Look at the new coverage. If we're not done then
  return a keyword saying what to do next"
  (let ((coverage (coverage-over-region start-pos end-pos)))
    (case coverage
      (:one-edge-over-entire-segment ;; we're done
       :one-edge-over-entire-segment)
      ((:all-contiguous-edges :some-adjacent-edges)
       :apply-rules)
      (:discontinuous-edges
       :do-not-apply-rules)
      (otherwise
       (break "Unexpected pass-two coverage: ~a" coverage)))))


;;;------------------------------
;;; Original pass-two operations
;;;------------------------------

(defun try-to-make-that-relative-clause ()
  (declare (special category::np category::vp))
  (let ((that-edge/s (there-is-a-that?)))
    (when (cdr that-edge/s)
      (break "Need to extent relative clause forming routine ~
             because there is more than one 'that' edge: ~a"
             that-edge/s))
    (let* ((that-edge (car that-edge/s))
           (edge-to-left (left-treetop-at/edge that-edge))
           (edge-to-right (right-treetop-at/edge that-edge)))
      (tr :trying-to-make-that-rc that-edge)
      (cond
       ((and (eq (edge-form edge-to-left) category::np)
             (eq (edge-form edge-to-right) category::vp))
        ;; reduced relative clause
        (let ((edge (compose-as-relative-clause
                     edge-to-left that-edge edge-to-right)))
          (tr :relative-clause-succeeded edge)
          edge))
       (t
        (tr :not-rc-pattern)
        nil)))))


;; Rusty determined that this model of an unspecified 
;; adjunction between a major and a minor constituent
;; led to bad combinations, so shelving it baring a re-think
#+ignore
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


(defun fill-in-between-subject-and-final-verb (subject copula treetops tt-count)
  (tr :filling-in-between-subj-and-verb subject copula tt-count)
  (push-debug `(,subject ,copula ,treetops))
  ;; (setq subject (car *) copula (cadr *) treetops (caddr *))
  (when (list-final copula treetops)
    (when (list-initial subject treetops)
      (unless (or (eq tt-count 2) (> tt-count 4))
        ;; only two constituents between the subject and what we can
        ;; heuristically presume is the main verb of the sentence,
        ;; so there must be a way to fit the two together and treat
        ;; the result as a 
        (let ((middle-edges (subseq (cdr treetops) ;; leave off subject
                                     0 2))) ;; '2' because there are only four tt.
          (let ((middle-edge
                 (try-to-carefully-compose-two-edges middle-edges)))
            (when middle-edge
              (push-debug `(,middle-edge)) ;;   (break "middle edge = ~a" edge)
              (let ((extended-subject
                     (compose-as-reduced-relative subject middle-edge)))
                (push-debug `(,extended-subject)) ;;(break "extended")
                (ad-hoc-subj+copula-rule extended-subject copula)))))))))


;; Written for patterns over three treetops which were made obsolete
;; by the use of debris analysis patterns
(defun match-treetop-pattern (sequence treetops)
  ;; This should be factored to combine it with follow-out-pattern which
  ;; is looking through the raw set of treetops (pass 1) whereas here
  ;; we have a fixed sequence and a specified pattern
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
  (declare (special category::pp))
  (tr :carefully-compose (car two-edges) (cadr two-edges))
  (let* ((left (car two-edges))
         (left-form (edge-form left))
         (right (cadr two-edges))
         (right-form (edge-form right)))

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



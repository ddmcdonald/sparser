;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "island-driving"
;;;   Module:  "drivers;forest:"
;;;  Version:  December 2020

;; Initiated 8/30/14. Controls the forest-level parsing under the
;; new 'whole sentence at a time, start anywhere' protocol.
;; Incrementally extending through 9/24/14. Broke out the routines
;; 10/25/14 leaving the drivers. 
;; RJB 12/19/2014 remove adverbs and commas from islands before attempting second pass
;; 1/1/2015 New, flag-controlled, alternative to last part of run-island-checks, 
;;   repeatedly doing application of rightmost applicable rule.
;; now turned ON by default
;; 1/5/2015 improve whack-a-rule by moving functionally duplicative code into alternative path
;; 1/8/2015 refactoring to make use of best-treetop-rule and copula-rule? refactoring
;; 1/20/15 rewrote it a little to be easier to read.
;; 3/3/15 Dropped the case Rusty doesn't like. Sort of backed out of the
;;  cleaning tts to let run-island-checks-pass-two see the [pp , s] pattern.
;; 3/4/2015 cache rules discovered for pairs of edges so that we do not keep 
;;   calling multiply-edges unnecessarily
;; turn off *edges-from-referent-categories*  -- no longer seems to be needed -- 
;;   this speeds up the system by a factor of 3!
;; 6/5/2015 added (defvar *whack-a-rule-sentence*)bound in  whack-a-rule-cycle
;;  so that all-tts knows the boundaries of the current sentence.s
;; 9/18/15 Completely rebuilt the 2d pass. 9/29/15 removed the re-computation
;;  of the layout for 2d pass because it wasn't needed and it lost information
;;  about the presence of pronouns.
;; 12/1/15 pulled control parameters to globals file. 

(in-package :sparser)

;;;--------------------
;;; control parameters
;;;--------------------

(defparameter *island-driven-efrc* nil
  "Controls *edges-from-referent-categories* inside
   island-driven-forest-parse. When set to nil will speed up
   the system by a factor of 3!")

;;;-------------
;;; entry point
;;;-------------

;; (trace-island-driving)
;; (trace-parsing-style) -- to see the transitions

(defun island-driven-forest-parse (sentence layout start-pos end-pos)
  "Called from new-forest-driver after it has called 
   sweep-sentence-treetops to create the layout. 
   Runs in two passes over the chunks. DA rules are applied
   in the second pass."
  (declare (special *allow-pure-syntax-rules*
                    *edges-from-referent-categories* ;; OBE or leave?
                    *trace-island-driving* *parse-edges* ;; trace flags
                    *trace-whack-a-rule*
                    *trace-conjunction-hook*)
           (ignore layout))
  (tr :island-driven-forest-parse start-pos end-pos)
  (when (or *trace-island-driving* 
            *parse-edges*
            (and (there-are-conjunctions?) *trace-conjunction-hook*)
            *trace-whack-a-rule*
            *print-forest-after-doing-forest*) ;; light weight
    (format t "~&Treetops at start of island-driven parsing")
    (tts))
  (let ((*allow-pure-syntax-rules* t)
        (*edges-from-referent-categories* *island-driven-efrc*))
    (clrhash *executed-triples*)
    (run-island-checks sentence)
    (let ((coverage (coverage-over-region start-pos end-pos)))
      (unless (eq coverage :one-edge-over-entire-segment)
        (tr :island-driver-forest-pass-2)
        (when *trace-island-driving* (tts))
        (run-island-checks-pass-two sentence start-pos end-pos)))))


;;;------------
;;; first pass
;;;------------

(defun run-island-checks (sentence) ;;layout)
  "Makes a couple of layout-mediated special checks before and
   after its main operation of running the whack-a-rule-cycle
   to walk through pairs of constituents."
  
  (when (there-are-parentheses?)
    (tr :handle-parentheses)
    (handle-parentheses))
  
  ;;(Overnight 1 (p "Ras, like all GTPases, cycles between an inactive GDP-bound state and  an active GTP-bound state.")) 
  (when (there-are-conjunctions?)
    (tr :looking-for-short-conjuncts)
    (let ((*allow-form-conjunction-heuristic* nil))
      (declare (special *allow-form-conjunction-heuristic*))
      (look-for-short-obvious-conjunctions)))
  
  (when (there-are-prepositions?)
    (tr :look-for-prep-binders)
    (look-for-prep-binders))
  
  (when (there-are-conjunctions?) 
    ;; Originally inserted this call for conjunctions to merge
    ;; conjoined NPs before creating PPs as in "as a tumor suppressor
    ;; and an activator" Now only used for VG conjunctions
    (tr :try-spanning-conjunctions)
    (let ((*allow-form-conjunction-heuristic* :vg))
      (declare (special *allow-form-conjunction-heuristic*))
      (try-spanning-conjunctions :vg)))

  ;; This hash table must be cleared before we search for any rules over pairs of edges
  (clrhash *rules-for-pairs*)
  (if *whack-a-rule*
    (whack-a-rule-cycle sentence)
    (older-island-driving-rest-of-pass-one))

  (when (there-are-conjunctions?)
    (tr :try-spanning-conjunctions-again)
    (let ((*allow-form-conjunction-heuristic* t))
      (declare (special *allow-form-conjunction-heuristic*))
      (or (try-spanning-conjunctions)
          (look-for-submerged-conjunct)))))


    
;;;-------------
;;; second pass
;;;-------------

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


(defparameter *new-pass2* t)

(defun run-island-checks-pass-two (sentence start-pos end-pos)
  (declare (special *trace-DA-check* *trace-conjunction-hook*))
  ;; Called from island-driven-forest-parse after it's done everything
  ;; in its phase-one operations. Given the predominance of whack a rule
  ;; in phase one, we could probably fold these two together into
  ;; one routine. It's a question of what sorts of hard boundaries
  ;; we have on regular rules (e.g. ";") that call for a shift to
  ;; debris analysis. Also should mine the regular routines for
  ;; handling the forest level.
  ;;   We won't have gotten here unless the adjacency-driven rule
  ;; application has run out of cases, so we start with DA. We also
  ;; know that the sentence is not spanned by a single edge.
  
  ;; N.b. execute-da-trie does the interleaving between regular parsing
  ;; and a walk over the treetops looking for debris patterns,
  ;; but it's tail-recursive and would require considerable reworking
  ;; to use in this multi-pass context.

  (tr :entering-pass-2)
  (let* ((treetops (successive-treetops :from start-pos :to end-pos))
         (number-of-treetops (length treetops)))
    (tr :islands-pass-2 number-of-treetops)
    (when (or *print-forest-after-doing-forest*
              *trace-DA-check*
              (and (there-are-conjunctions?) *trace-conjunction-hook*))
      (format t "~&~%Just before 2d pass:~%")
      (tts)
      (when *trace-DA-check*
        (terpri)
        (tts-form)))
    (if *new-pass2*
      (new-pass2 sentence start-pos end-pos treetops)
      (old-pass2 sentence start-pos end-pos treetops number-of-treetops))))

(defun new-pass2 (sentence start-pos end-pos treetops)
  (flet ((conjunction-check ()
           (when (there-are-conjunctions?)
             (tr :try-spanning-conjunctions-pass2)
             (let ((*allow-form-conjunction-heuristic* t))
               (declare (special *allow-form-conjunction-heuristic*))
               (try-spanning-conjunctions)))))
    (let (da-result)
      (conjunction-check)
      (loop
         (setq da-result (da-rule-cycle start-pos end-pos treetops t))
         (cond
           ((null da-result) ;; no DA rules executed -- nothing left to do
            (tr :no-result-from-da)
            (return-from new-pass2 t))
           ((eq (coverage-over-region start-pos end-pos) :one-edge-over-entire-segment)
            (return-from new-pass2 t)))
         (conjunction-check)
         (unless (or (whack-a-rule-cycle sentence)
                     da-result)
           (return-from new-pass2 t))
         ;; reset the treetop list and go around the loop again
         (setq treetops (successive-treetops :from start-pos :to end-pos)))  )))


(defun da-rule-cycle (start-pos end-pos treetops &optional once-only?)
  (tr :entering-da-cycle)
  (let (rule-executed?)
    (loop with result while (setq result (execute-one-da-rule treetops))
       do
         (setq rule-executed? t)
         (when (edge-p result)
           (tr :p2-da-returned-edge result))
         (setq treetops (successive-treetops :from start-pos :to end-pos))
         (when once-only? (return t)))
    rule-executed?))

(defun execute-one-da-rule (treetops)
  (loop with result for tt in treetops
    thereis
    (progn
      (tr :trying-da-pattern-on tt)
      (setq result (look-for-da-pattern tt))
      (and result (not (eq result :trie-exhausted))))))

(defun look-for-da-pattern (tt)
  "If there is a da pattern that starts at this treetop
  execute it and return the 'result' Used by old-pass2
  and execute-one-da-rule as of 1/3/17"
  (let ((da-node (trie-for-1st-item tt)))
    (when da-node
      (standalone-da-execution da-node tt))))


(defun da-final-cycle (sentence)
  "Called from sentence-processing-core"
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (treetops (all-tts start-pos end-pos)))
    (da-rule-cycle start-pos end-pos treetops t)
    (unless (eq (coverage-over-region start-pos end-pos)
                :one-edge-over-entire-segment)
      (whack-a-rule-cycle sentence))))




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

             
  
;;;------------------------------------
;;; Older, more ad-hoc schemes to mine
;;;------------------------------------

(defun older-island-driving-rest-of-pass-one ()
  (when (starts-with-prep?)
    (tr :try-parsing-leading-pp)
    (try-parsing-leading-pp))
    
  (when  (there-are-prepositions?)
    (tr :trying-to-form-simple-pps)
    (try-simple-pps)
    (when *trace-island-driving* (tts)))
    
  ;;/// conjunctions over two words
  ;; though the regular conjunction routine in pts seems to get these
  ;; in-line if they're really simple: "GDP or GTP"
    
  (when  (there-are-known-subcat-patterns?)
    (tr :there-are-known-subcat-patterns)
    ;;(break "subcat")
    (let ((edges (apply-subcat-patterns)))
      ;; Assuming the patterns match, there will be 
      ;; an edge for every treetop that had a subcategorization
      ;; pattern
      (when edges
        ;; The subcategorizations are particularly solid,
        ;; and they're usually the equivalent of VPs or
        ;; complements. Gingerly look for leftward compositions. 
        (dolist (edge edges)
          (look-for-short-leftward-extension edge)))
      (when *trace-island-driving* (tts))))
    
  (try-simple-subj+verb)
  (when *trace-island-driving* (tts))
  ;;//// good place to update the layout
    
  (when (there-are-of-mentions?)
    (tr :try-to-compose-instances-of-of)
    (try-to-compose-of-complements)
    (when *trace-island-driving* (tts)))
    
  (when (there-are-loose-nps?)
    (tr :try-to-extend-loose-nps)
    (look-for-np-extensions)
    (when *trace-island-driving* (tts)))
    
  (when (there-are-prepositions?)
    (tr :trying-to-form-simple-pps)
    (try-simple-pps)
    (when *trace-island-driving* (tts)))
    
  (when (there-are-post-mvb-verbs?)
    (tr :try-simple-vps)
    (try-simple-vps)
    (when *trace-island-driving* (tts))))


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


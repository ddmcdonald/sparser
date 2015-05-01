;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "island-driving"
;;;   Module:  "drivers;forest:"
;;;  Version:  March 2015

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

(in-package :sparser)
(defvar *parse-edges*)
(defparameter *island-driven-efrc* nil) ;; controls *edges-from-referent-categories* inside island-driven-forest-parse -- 
;; when set to nil will speed up the system by a factor of 3!

;;;--------------------
;;; control parameters
;;;--------------------

(defparameter *whack-a-rule* t
  "This forces application of all applicable rules from 
   the right to the left, after initial priority rules.")

(defun whack-a-rule (&optional (yes? t))
  (setq *whack-a-rule* yes?))


;;;-------------
;;; entry point
;;;-------------

(defun island-driven-forest-parse (sentence layout start-pos end-pos)
  ;; called from new-forest-driver after it has called 
  ;; sweep-sentence-treetops to create the layout
  (declare (special *allow-pure-syntax-rules*
                    *edges-from-referent-categories*)
           (ignore layout))
  (tr :island-driven-forest-parse start-pos end-pos)
  (when (or *trace-island-driving* 
            *parse-edges*)
    (tts))
  (let ((*allow-pure-syntax-rules* t)
        (*edges-from-referent-categories* *island-driven-efrc*))
    (run-island-checks sentence) ;;layout)
    ;;  (successive-treetops :from start-pos :to end-pos)
    (let ((coverage (coverage-over-region start-pos end-pos)))
      (unless (eq coverage :one-edge-over-entire-segment)
        ;; make one more pass with a new layout. Notice that 
        ;; this layout is local. We want to keep it that way
        ;; so as not to lose the base layout that we got
        ;; after chunking. It has useful information in it.
        (let ((new-layout
               (sweep-sentence-treetops sentence start-pos end-pos)))
          ;; (push-debug `(,new-layout)) (break "new layout")
          ;;(break "before p2")
          (when t
            (tr :island-driver-forest-pass-2)
            (when *trace-island-driving* (tts))
            (run-island-checks-pass-two new-layout start-pos end-pos)))))))


;;;------------
;;; first pass
;;;------------

(defun run-island-checks (sentence) ;;layout)
  ;;(push-debug `(,layout))
  ;; preposed adjuncts
  
  (when (there-are-parentheses?)
    (tr :handle-parentheses)
    (handle-parentheses))
  
 ;; #+ignore ;; These have already been done
  ;; not quite true -- compare
  ;;(Overnight 1 (P "Ras, like all GTPases, cycles between an inactive GDP-bound state and  an active GTP-bound state.")) 
  (when (there-are-conjunctions?)
    (tr :looking-for-short-conjuncts)
    (let ((*allow-form-conjunction-heuristic* nil))
      (declare (special *allow-form-conjunction-heuristic*))
      (look-for-short-obvious-conjunctions)))
  
  (when (there-are-prepositions?)
    (tr :look-for-prep-binders)
    (look-for-prep-binders))
  
  (if *whack-a-rule*
    (whack-a-rule-cycle sentence)
    (older-island-driving-rest-of-pass-one))

  (when (there-are-conjunctions?) ;; J3 doesn't parse
    (tr :try-spanning-conjunctions)
    (let ((*allow-form-conjunction-heuristic* t))
      (declare (special *allow-form-conjunction-heuristic*))
      (try-spanning-conjunctions))))

(defparameter *rules-for-pairs* (make-hash-table :test #'equal :size 200))

(defun whack-a-rule-cycle (sentence)
  (let ( copula )
    (loop while (setq copula (copula-rule?))
      do (execute-triple copula)))

  (let ( rule-and-edges  edge)
    (clrhash *rules-for-pairs*)
    (loop
      (setq rule-and-edges (best-treetop-rule sentence))
      (when (null rule-and-edges)
        (return))
      (setq edge (execute-triple rule-and-edges))
      (tr :whacking-triple rule-and-edges edge))))

(defun execute-triple (triple)
  ;; triple = rule, left-edge, right-edge
  (execute-one-one-rule (car triple)
                        (second triple)
                        (third triple)))



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

        

    
;;;-------------
;;; second pass
;;;-------------

(defun clean-treetops (treetops)
  (loop for edge in treetops
    unless (or 
            (memq (edge-category edge) `(,word::comma))
            (memq (edge-form edge) `(,category::adverb)))
    collect edge))

(defun run-island-checks-pass-two (layout start-pos end-pos)
  (let* ((actual-treetops (successive-treetops :from start-pos :to end-pos))
         (treetops (clean-treetops actual-treetops))
         (tt-count (length treetops))
         (clauses (there-are-loose-clauses))
         (subject-edge (subject layout))
         (vps (verb-phrases layout))
         (copula (when vps (find-copular-vp vps)))
         (other-vps (when vps (find-non-copular-vps vps)))
         (pps (there-are-prepositional-phrases)))
    ;;(declare (special treetops tt-count clauses subject-edge vps copula))
    (tr :islands-pass-2 tt-count)
    ;;(push-debug `(,start-pos ,end-pos ,treetops)) (break "pass2")

    (cond
     ((and (not (= tt-count (length actual-treetops)))
           ;; a comma or an adverb was dropped out
           (= 3 (length actual-treetops)))
      (look-for-length-three-patterns actual-treetops))
     ((= tt-count 3)
      (look-for-length-three-patterns treetops)) ;; t)
     ((and subject-edge copula)
      (fill-in-between-subject-and-final-verb subject-edge copula treetops tt-count))
     ((there-is-a-that?)
      (try-to-make-that-relative-clause))
     (t (push-debug `(,clauses ,vps ,other-vps ,pps))
        (tr :no-established-pass-2-patterns-applied)
        (when nil
          (break "other"))))))



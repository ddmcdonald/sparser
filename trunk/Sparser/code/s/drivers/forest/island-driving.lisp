;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "island-driving"
;;;   Module:  "drivers;forest:"
;;;  Version:  Ovtober 2014

;; Initiated 8/30/14. Controls the forest-level parsing under the
;; new 'whole sentence at a time, start anywhere' protocol.
;; Incrementally extending through 9/24/14. Broke out the routines
;; 10/25/14 leaving the drivers. 
;; RJB 12/19/2014 remove adverbs and commas from islands before attempting second pass
;; 1/1/2015 New, flag-controlled, alternative to last part of run-island-checks, repeatedly doing application of rightmost applicable rule.
;; now turned ON by default
;; 1/5/2015 improve whack-a-rule by moving functionally duplicative code into alternative path

(in-package :sparser)

(defparameter *whack-a-rule* t) ;; this forces application of all applicable rules from the right to the left, after initial priority rules
(defun whack-a-rule (&optional (yes? t))
  (setq *whack-a-rule* yes?))

(defun island-driven-forest-parse (sentence layout start-pos end-pos)
  (declare (special *allow-pure-syntax-rules*
                    *edges-from-referent-categories*))
  (tr :island-driven-forest-parse start-pos end-pos)
  (let ((*allow-pure-syntax-rules* t)
        (*edges-from-referent-categories* t))
    (run-island-checks layout)
    (push-debug `(,start-pos ,end-pos))
    ;;  (successive-treetops :from start-pos :to end-pos)
    (let ((coverage (coverage-over-region start-pos end-pos)))
      (unless (eq coverage :one-edge-over-entire-segment)
        ;; make one more pass with a new layout
        ;; /// vast amount of room for more sophistication here
        (let ((new-layout
               (sweep-sentence-treetops sentence start-pos end-pos)))
          (push-debug `(,new-layout)) ;;(break "new layout")
          (when t
            (tr :island-driver-forest-pass-2)
            (when *trace-island-driving* (tts))
            (run-island-checks-pass-two new-layout start-pos end-pos)))))))


;;;------------
;;; first pass
;;;------------

(defun run-island-checks (layout)
  (push-debug `(,layout))
  ;; preposed adjuncts

  (when (there-are-parentheses?)
    (tr :handle-parentheses)
    (handle-parentheses))

  (when (there-are-conjunctions?)
    (tr :looking-for-short-conjuncts)
    (look-for-short-obvious-conjunctions))

  (when (there-are-prepositions?)
    (tr :look-for-prep-binders)
    (look-for-prep-binders))


  (setq *possible1* (possible-treetop-rules))
  ;;(break "*possible*")
  (cond
   (*whack-a-rule*
    (let ((rule-edges (copula-rule? (possible-treetop-rules))))
      (loop while rule-edges 
        do 
        (progn
          (execute-one-one-rule 
           (car rule-edges)
           (second rule-edges)(third rule-edges))
          (setq rule-edges  (car (possible-treetop-rules))))))
    (when (there-are-conjunctions?)
      (tr :try-spanning-conjunctions)
      (try-spanning-conjunctions))
    (let ((rule-edges (car (possible-treetop-rules))))
      (loop while rule-edges 
        do 
        (progn
          (execute-one-one-rule 
           (car rule-edges)
           (second rule-edges)(third rule-edges))
          ;;(break)
          (setq rule-edges  (car (possible-treetop-rules)))))))
   (t
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
    (setq *possible2* (possible-treetop-rules))
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
      (when *trace-island-driving* (tts)))))
  
  (when (there-are-conjunctions?)
    (tr :try-spanning-conjunctions)
    (try-spanning-conjunctions)))

        
(defun copula-rule? (rule-trips)
  (let
      ((rule? nil))
    (loop for r in rule-trips
      until
      (setq rule? (and (eq (car (cfr-rhs (car r))) category::be)
                      (eq (second (cfr-rhs (car r))) category::adjective)
                      r))
      do (progn t))
    rule?))
    
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
  (let* ((treetops (clean-treetops (successive-treetops :from start-pos :to end-pos)))
         (tt-count (length treetops))
         (clauses (there-are-loose-clauses))
         (subject-edge (subject layout))
         (vps (verb-phrases layout))
         (copula (when vps (find-copular-vp vps)))
         (other-vps (when vps (find-non-copular-vps vps)))
         (pps (there-are-prepositional-phrases)))
    ;;(declare (special treetops tt-count clauses subject-edge vps copula))
    (tr :islands-pass-2 tt-count)

    (cond
     ((= tt-count 2)
      (smash-together-two-tt-islands treetops))
     ((= tt-count 3)
      (look-for-length-three-patterns treetops) t)
     ((and subject-edge copula)
      (fill-in-between-subject-and-final-verb subject-edge copula treetops tt-count))
     ((there-is-a-that?)
      (try-to-make-that-relative-clause))
     (t (push-debug `(,clauses ,vps ,other-vps ,pps))
        (tr :no-established-pass-2-patterns-applied)
        (when nil
          (break "other"))))))



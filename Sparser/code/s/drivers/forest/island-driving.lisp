
;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2023 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "island-driving"
;;;   Module:  "drivers;forest:"
;;;  Version:  November 2023

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

(defparameter *do-last-ditch-non-semantic-whacks* nil
  "Gates a final pass of the whack cycle, now running with
   all the semantic checks suspended")


;;;-------------
;;; entry point
;;;-------------

;; (trace-island-driving)
;; (trace-parsing-style) -- to see the transition

(defun island-driven-forest-parse (sentence layout start-pos end-pos)
  "Called from new-forest-driver after it has called 
   sweep-sentence-treetops to create the layout. 
   Runs in two passes over the chunks. DA rules are applied
   in the second pass."
  (declare (special *allow-pure-syntax-rules*
                    *edges-from-referent-categories* ;; repurpous
                    *do-last-ditch-non-semantic-whacks*
                    *trace-island-driving* *parse-edges* ;; trace flags
                    *trace-whack-a-rule* *trace-debris-sweep*
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
    
    (pass-one sentence)
    (operations-after-phase-one sentence) ; see interventions.lisp

    (let ((coverage (coverage-over-region start-pos end-pos)))
      (unless (eq coverage :one-edge-over-entire-segment)        
        (pass-two sentence start-pos end-pos)

        ;; Moved here from sentence-processing-core
        (repair-bad-composition sentence) ;; lifts-out predicted but smothered complements
        (make-this-a-question-if-appropriate sentence)
        (da-final-cycle sentence) ;; handle post-modifying subordinate conjunctions after questions

        (setq coverage (coverage-over-region start-pos end-pos))
        (unless (eq coverage :one-edge-over-entire-segment)
          (when *do-last-ditch-non-semantic-whacks*
            (run-last-ditch-whack-cycle sentence))

          (unless (eq :one-edge-over-entire-segment
                      (coverage-over-region start-pos end-pos))
            (when *trace-debris-sweep*
              (format t "~%Treetops when all is done")
              (tts))
            (sweep-debris-in-sentence sentence)))))))


(defun run-last-ditch-whack-cycle (sentence)
  "Turn off the semantic compatibility checks and run a cycle of adjacency-
   driven rules. Tends to attach subjects and objects that haven't been
   explicitly licensed -- but probably should be"
  (when *do-last-ditch-non-semantic-whacks*
    (let ((*subcat-accept-all-semantics* t)
          (*check-semantic-applicability* nil))
      (declare (special *subcat-accept-all-semantics*
                        *check-semantic-applicability*))
      (let ((triples-executed (whack-a-rule-cycle sentence)))
        (tally-last-ditch-rules triples-executed)))))


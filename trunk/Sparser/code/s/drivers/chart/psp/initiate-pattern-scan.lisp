;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-1996,2010-2013 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "initiate pattern scan"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  0.3 February 2013

;; initiated 9/21/95.  Added temporary guard against edges ending at the
;; starting positin 10/18. 
;; 0.1 (7/11/96) fixed what looked like a bug and cleaned up the threading
;; 0.2 (3/1/07) Added a hack that preempts specific pattern rule checks
;;     in favor of one that operates across the board.
;; 0.3 (2/5/13) took out the hack -- now the two schemes are complementary.

(in-package :sparser)

(defun no-space-before-word? (position)
  ;; Predicate inserted into the scan fsa (check-for/initiate-scan-patterns)
  ;; as the condition on whether we look for the possibility that a pattern
  ;; might start here.
  (null (pos-preceding-whitespace position)))


(defun scan-pattern-starting-pair (position word)
  ;; Called from check-for/initiate-scan-patterns.
  (unless (<= (pos-token-index position) 1) ;; gratuitous NS after start
    (scan-pattern-starting-pair-1 position word)))

(defun scan-pattern-starting-pair-1 (position word)
  ;; Called from check-for/initiate-scan-patterns.
  ;; The hook that makes the quick check for the initiation of
  ;; a pattern.
  ;;   Any pattern consists of at least two elements not separated
  ;; by whitespace. The potential second element has just been
  ;; scanned into the chart at this position and we've just checked
  ;; that it is adjacent to the previous terminal with no interveening
  ;; whitespace.
  ;;   We get the prior word and check whether it is a transition out
  ;; of the initial state. If it is, we follow out the state (or states)
  ;; that yields to check for continuations with the word at this
  ;; position. If that too yields a state(s) then it's warranted to
  ;; start the whole driver.
  
  (let* ((prior-position (chart-position-before position))
         (prior-word (pos-terminal prior-position)))

    (if (eq prior-word *source-start*)
      (then (tr :no-pattern-initiated/source-start)
            nil )
      (else
        (tr :checking-starting-pair position prior-word word)
      
        (multiple-value-bind (first-state first-item-type)
                             (initial-pattern-transition? prior-word)
          (tr :word-starts-patterns prior-word first-state)

          (if first-state
            (multiple-value-bind (next-state second-item-type)
                                 (pattern-transition? first-state word)
              
              (if next-state
                (then
                  ;; If we've gotten here, then we know that we have (at least)
                  ;; the prefix of some defined pattern. (We might have a whole
                  ;; pattern if one of those state/s is an accept.) 
                  ;;    This being the case, then we should save the prior word
                  ;; and this word right now while we've got our paws on them.
                  (tr :scan-pattern-prefix-found next-state prior-word word)
                  
                  (initialize-scan-pattern-process)                  
                  
                  (push-instantiated-pattern-element prior-word first-item-type)
                  (push-instantiated-pattern-element word second-item-type)
                  
                  (setq *position-scan-pattern-started-at* prior-position)                      
                  
                  next-state )
                
                (else
                  (tr :no-scan-pattern-initiated prior-word word)
                  nil )))
            
            (if (ev-top-node (pos-ends-here position))
              (when (edge-p (ev-top-node (pos-ends-here position)))
                #+ignore
                (break "stub: There's an edge (e~A) ending just before a word (\"~A\")~
                        ~%that is the second item in a no-space transition pattern.~
                        ~%The algorithm needs to be extended so that there's a check ~
                        ~%for whether this edge is an initial item in a pattern ~
                        ~%(it could be a non-terminal from a successful earlier pattern)~
                        ~%and whether it and the word are a defined transition.~%"
                       (edge-position-in-resource-array (ev-top-node (pos-ends-here position)))
                       word )
               nil ))))))))


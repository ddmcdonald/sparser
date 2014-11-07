;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "no-brackets-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  October 2014

;; Initiated 10/5/14, starting from the code for detecting bio-entities.
;; 10/29/14 added flags to turn off various steps so lower ones
;; could be independently tested

(in-package :sparser)

;;; Sweep to introduce minimal edges over the text, one sentence
;;; at a time, covering all unary rules, polywords, word-driven
;;; fsa's (digits), no-space compositions, and word completions.
;;;   This pass over the sentence will be followed by a succession
;;; of sweeps over the edges (conclusions) of the previous one.

;; lookup-the-kind-of-chart-processing-to-do uses the keyword 
;; :successive-sweeps to call this function. The lookup fn is
;; called from chart-based-analysis where there is a catch to 
;; terminate chart parsing. 

; (setq *kind-of-chart-processing-to-do* :successive-sweeps)
; (bio-setting)  ;; revert to 'normal'

;;;--------
;;; Driver
;;;--------

(defun initiate-successive-sweeps ()
  ;; Copied from inititate-c3-protocol which is already stripped down
  ;; from the normal inititate-top-edges-protocol driver. 
  ;; Called from lookup-the-kind-of-chart-processing-to-do which
  ;; is the content of analysis-core after it finishes initializing.
  ;; N.b. The initialization routines created a sentence already
  (scan-next-position) ;; pull the source-start word into the chart
  (scan-next-position) ;; adds 1st real word into the chart
  (sentence-sweep-loop))


(defun sentence-sweep-loop ()
  (tr :entering-sentence-sweep-loop)
  (let ((sentence (sentence)))
    (loop
      (let* ((start-pos (starts-at-pos sentence))
             (first-word (pos-terminal start-pos)))
        (push-debug `(,sentence))
 
        ;; 1st scan the text into minimal terminal edges.
        ;; The thow is from period-hook, which will also advance
        ;; the value returned by (sentence) to be the next sentence
        ;; after this one that we're working on. 
        (tr :scanning-terminals-of sentence)
        (catch :end-of-sentence
          (scan-terminals-loop start-pos first-word))
        (when *trace-island-driving* (tts))

        (when *chunk-sentence-into-phrases*
          (tr :identifying-chunks-in sentence)
          (identify-chunks sentence) ;; calls PTS too

          ;;(break "after chunking ~a" sentence) 

          (when *parse-chunked-treetop-forest*
            (let ((*return-after-doing-forest-level* t))
              (declare (special *return-after-doing-forest-level*))
              (new-forest-driver sentence))))

        ;; EOS throws to a higher catch. If the next sentence
        ;; is empty we will hit the end of source as we
        ;; start scanning terminals and it will throw
        ;; beyond this point. 
        (setq sentence (next sentence))))))


#| scan-next-position:
Bumps the chart indexes. Does an add-terminal-to-chart if
there is not already a word at this 'next' position. Returns 
the position. (N.b. there's an incremental trace hook in it.) |#

(defun scan-terminals-loop (position-before word)
  (when *trace-sweep*
    (format t "~&p~a ~s"
            (pos-token-index position-before) (word-pname word)))
  (simple-eos-check position-before word)

  ;; Polyword check
  (let* ((where-pw-ended (polyword-check position-before word))
         (position-after (or where-pw-ended
                             (chart-position-after position-before))))
    (when where-pw-ended
      (setq position-before where-pw-ended)
      (unless (includes-state where-pw-ended :scanned)
        ;; PW can complete without thinking about the
        ;; word that follows it.
        (scan-next-position))
      (setq word (pos-terminal where-pw-ended)))

    (unless (includes-state position-after :scanned)
      (scan-next-position))

    (when nil
      (push-debug `(,position-before ,position-after)) 
      (break "After PW check: before = p~a  after= p~a"
             (pos-token-index position-before)
             (pos-token-index position-after)))

    (let ((traversal-checked position-before))
      ;; (trace-traversal-hook) (trace-traversal-hits)
      (word-traversal-hook word position-before position-after)
      ;; Traversal actions are managed by a hash table from the word
      ;; qua label (i.e. could be applied to edges as well) to a function
      ;; that takes these same arguments. This is used for bracket pairs
      ;; such as parentheses, double quotes, etc. Check with a call to
      ;; (list-hash-table *traversal-routine-table*)
      ;;    The action is always on the matching close. The open
      ;; notes its oposition so the close knows what span to operate
      ;; over. We check for traversal hits before the no-space check
      ;; because the ns is greedy and moves the position, which can
      ;; cause the open to be missed. 


      (when (no-space-before-word? position-before)
        ;; As with PW, if it succeeds we need to restart the loop
        ;; where it leaves off. 
        (let ((where-ns-ended (do-no-space-collection position-before)))
          (when where-ns-ended ;; which will have been scanned
            (setq position-before where-ns-ended
                  position-after (chart-position-after position-before)
                  word (pos-terminal position-before)))))
      (unless (includes-state position-after :scanned)
        (scan-next-position))


      (unless (eq traversal-checked position-before)
        ;;/// if we noted whether no-space had completed we could
        ;; conditionalize this 'addional' check. But we do need it
        ;; for the cases where the earlier traversal check picked up
        ;; the open and the no-space has moved us ahead so that we're
        ;; about to see the close. 
        ;; (trace-parentheses)
        (word-traversal-hook word
                             position-before
                             position-after)))


    (complete-word/hugin word position-before position-after)
    ;; (setq *trace-completion-hook* t)
    ;; The function check-for-completion-actions/word looks on the
    ;; rule-set of the word for a completion action or actions and
    ;; runs carry-out-actions to execute (funcall) them. 
    ;;   The significant case is the period-hook (in rules/DM&P/period-hook)
    ;; because it is responsible for managing the succession of sentences.
    ;; That requires some tweaking because normally the period hook signals
    ;; the progression to the forest level and here we need to notice
    ;; the period (in order to stop this pass and start the next), but
    ;; be more selective in what happens. 
    ;;    Another important case is conjunction. Both "and" and "or"
    ;; set the *pending-conjunction* flag. 


    (do-just-terminal-edges word position-before position-after)


    (let ((next-word (pos-terminal position-after)))
      (when nil
        (format t "~&Next step: p~a ~a"
               (pos-token-index position-after) (word-pname next-word)))
      (scan-terminals-loop position-after next-word))))



(defun do-just-terminal-edges (word position-before position-after)
  ;; modeled on introduce-terminal-edges but returns after the
  ;; edges are created rather than continuing in the incremental
  ;; scan. 
  (install-terminal-edges word position-before position-after))

(defun do-no-space-collection (position-before)
  ; lifted from check-for-uniform-no-space-sequence
  (tr :check-for-uniform-no-space-sequence position-before)
  (let ((uniform-pos-reached
         (collect-no-space-sequence-into-word position-before)))
    uniform-pos-reached))
   

(defun polyword-check (position-before word)
  ;; lifted from check-for-polywords where all we want is
  ;; the fsa to fire if there is one, and to get the position
  ;; that it ends at. Returns either that position or nil. 
  (tr :check-for-polywords word position-before)
  (set-status :polywords-check position-before)
  (let ((pw-cfr (initiates-polyword1 word position-before)))
    ;; This "1" variant calls a "1" variant of capitalized-correspondent
    ;; which use the position information correctly
    (when pw-cfr
      (tr :word-initiates-polyword word position-before)
      (let ((position-reached
             (do-polyword-fsa word pw-cfr position-before)))
        (if position-reached
          (tr :pw-was-found position-before position-reached)
          (tr :pw-not-found word position-before))
        (push-debug `(,position-reached))
        ;; Check the status -- cf. adjudicate-result-of-word-fsa
        ;(break "Polyword succeeded at ~a" position-reached)
        position-reached))))



(defun simple-eos-check (position-before word)
  ;; Taken from end-of-source-check without worrying about the
  ;; forest or other things to do. In the usual scan, this check
  ;; is part of check-for-[-from-word-after before anything happens.
  ;;    Has to be ammended in a similar way to the original because
  ;; there will invariably be something that needs to be tied
  ;; off
  (tr :end-of-source-check word position-before)
  (when (eq word *end-of-source*)
    ;; This just does the throw up to chart-based-analysis
    (terminate-chart-level-process)))



(defun sucessive-sweeps? ()
  ;; syntactic sugar for a mode detector. Cf. new-forest-protocol?
  (eq *kind-of-chart-processing-to-do* :successive-sweeps))



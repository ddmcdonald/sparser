;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "judgements"
;;;   Module:  "grammar;rules:brackets:"
;;;  Version:  0.6 July 1994

;; initiated 6/14/93 v2.3
;; but giving them a lot more power to make decisions
;; 0.1 (6/30) made the ] routine more modular by incorporating code from the
;;      scan routine -- lets it be called from different points
;; 0.2 (3/17/94) added case for conjunction.], moved to rules;brackets
;; 0.3 (4/24) commented out a reference to verb]., since couldn't find its
;;      definition and trying to run with a minimal grammar.
;; 0.4 (5/5) backing out of earlier decision to mark the status of a segment-ending
;;      position as :ended-segment because it seems to be losing useful information.
;; 0.5 (5/26) added ].adverb.  6/9,10 added mvb]. & verb].
;; 0.6 (7/11) adding some reasoning

(in-package :sparser)


;;;-----------------------
;;; consequences of  [<w>
;;;-----------------------

(defun adjudicate-new-open-bracket (b p)
  (if *left-segment-boundary*
    (then  ;; look for some cases where we should move the boundary
           ;; ahead to this new position
      (if (eq b punctuation.[)
        (then
          (tr :punct.[-moves-boundary p)
          (break "punctuation moves boundary")
          (setq *bracket-forming-left-boundary* b
                *left-segment-boundary* p))
        (else
          (tr :[-ignored/left-boundary-already-in-place b p))))
    (else
      (tr :[-sets-left-boundary p b)
      (setq *bracket-opening-segment*
            (if *bracket-opening-segment*
              (strongest-version-of-left-boundary-bracket b)
              b))
      (setq *left-segment-boundary* p))))


(defun strongest-version-of-left-boundary-bracket (b)
  ;; this might not get called for NPs if the .[phrase started
  ;; by the word before the determiner is canceled by the ].phrase
  ;; of the determiner before the .[np is looked at, which should
  ;; always be the case
  (break "stub: Existing bracket is ~A~
          and the new bracket is ~A" *bracket-opening-segment*
         b)
  b )


;;;-----------------------
;;; consequences of  .]<w>
;;;-----------------------

(defun bracket-ends-the-segment? (] position)
  ;; The words use to indicate the start of VGs or
  ;; NPs can occur several in a row (e.g. "the seven ...").  
  ;; Only the first of these legitimately ends a segment.

  (let ((ends-the-segment?
         (cond ((eq ]  ].phrase)
                ;; the generic bracket always closes its segment
                (setq *bracket-closing-segment* ]))

               ((eq ]  phrase].)
                ;; the generic bracket always closes its segment
                (setq *bracket-closing-segment* ]))

               ((eq ]  np].)
                ;; the generic bracket always closes its segment
                (setq *bracket-closing-segment* ]))

               ((eq ]  ].verb)
                (if (or (eq *bracket-closing-segment* ].verb )
                        (eq *bracket-opening-segment* .[verb ))
                  nil
                  (if (eq *bracket-opening-segment* .[article)
                    ;; "the sounds" -- where "sounds" can be a verb
                    (if (np-segment-contains-more-than-article? position)
                      (then (setq *bracket-closing-segment* ])
                            t)
                      nil )
                    (else (setq *bracket-closing-segment* ])
                          t))))

               ((eq ]  mvb].)
                (if *bracket-closing-segment*
                  (if (eq *bracket-closing-segment* ].verb)
                    nil
                    (else (setq *bracket-closing-segment* ])
                          t))
                  (else (setq *bracket-closing-segment* ])
                        t)))

               ((eq ]  verb].)
                (if *bracket-closing-segment*
                  (if (eq *bracket-closing-segment* ].verb)
                    nil
                    (else (setq *bracket-closing-segment* ])
                          t))
                  (else (setq *bracket-closing-segment* ])
                        t)))

               ((eq ]  ].adverb)
                (if (or (eq *bracket-closing-segment* ].verb )
                        (eq *bracket-closing-segment* ].adverb )
                        (eq *bracket-opening-segment* .[verb ))
                  nil
                  (else (setq *bracket-closing-segment* ])
                        t)))

               ((eq ]  ].punctuation)
                (setq *bracket-closing-segment* ]))

               ((eq ] ].conjunction)
                (setq *bracket-closing-segment* ]))

               ;((eq ] conjunction].)
               ; (setq *bracket-closing-segment* ])
               ; t)

               (t (break/debug "Unclassified closing bracket: ~A" ])
                  :foo))))

    (when ends-the-segment?
      (setq *right-segment-boundary* position)
      (tr :segment-ends position ])

      (let ((current-status (pos-assessed? position)))
        #|  changed 5/5/94 -- dropping :ended-segment mark that was
            being put on positions marked as :boundaries-introduced
        ;; we want to mark the status so that the right information is
        ;; communicated to figure-out-where-to-start-on-next-pos since
        ;; the very next thing after ending a segment is calling out to
        ;; pts, and where we might go during that time is unpredictable. |#
        (ecase current-status
          (:]-from-word-after-checked)
          (:]-from-prior-word-checked)
          (:]-from-edge-after-checked)
          ;;(:word-fsas-done)
          ))

      ;; place for bracket-directed actions
      )

    ends-the-segment? ))





(defun np-segment-contains-more-than-article? (position)
  ;; We are within an np -- probably one started with an article
  ;; given that the caller is Bracket-ends-the-segment? -- and
  ;; we want to know whether there is at least one word within
  ;; the segment after the article. That comes down to this
  ;; position being at least two greater than the position at
  ;; which the segment starts.
  (>= (- (pos-token-index position)
         (pos-token-index *left-segment-boundary*))
      2))

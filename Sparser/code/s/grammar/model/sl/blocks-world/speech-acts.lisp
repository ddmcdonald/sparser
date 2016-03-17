;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "speech-acts"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  March 2016

;; Broken out on its own 3/16/16.

(in-package :mumble)

#| The same content can be used to make a statement, frame a question,
make a command. The speech act is the largest determniner of which of
these to use. Operationally, the effect of the speech act is to
modulate the content -- to add something to the dtn that's the
realization specification for the content. For dialog-1 that's
making them all commands. See instantiate-speech-act

The 'elaboration' used for dialog-1 is a standin for a much more
interesting planner that would modulate the content further for
rhetorical, stylistic, or discourse-driven effects.

This is a trivial treatment that names the speech act using 
a symbol and dispatches to them from a common starting point.
|#

;;;-------------
;;; speech acts
;;;-------------

;;--- self contained. Might include "but"

(defmethod standalone-speech-act ((speech-act symbol))
  (memq speech-act '(acknowledge good-job confirm-did-right-thing)))

(defmethod do-standalone-speech-act ((speech-act symbol))
  (let ((dtn (ecase speech-act
               (acknowledge (plan-an-acknowledgement))
               (good-job (plan-brief-praise))
               (confirm-did-right-thing (construct-that-is-good)))))
    (discourse-unit dtn)))

(defun plan-an-acknowledgement ()
  (let ((lp (get-lexicalized-phrase 'ok)))
    (make-dtn :referent 'acknowledge ;;/// no -- more substantial
              :resource lp)))

(defun plan-brief-praise ()
  "Ought to be able to fold this into a main text"
  (let ((lp (get-lexicalized-phrase 'good)))
    (make-dtn :referent 'brief-praise ;;/// no -- more substantial
              :resource lp)))

(defun construct-that-is-good ()
  "Total punt -- taking 'that's good' as a conventional reply
   to other person's action (or the situation/configuration
   that resulted from the action) in order to confirm that it was correct.
   Imagine saying it to a little kid. It probably does indeed
   refer, but don't want to set all that up yet (2/11/16)."
  (let* ((lp (get-lexicalized-phrase 'be))
         (dtn (make-dtn :referent 'that-is-good ;;/// no -- more substantial
                        :resource lp))
         (s-comp (make-instance 'complement-node
                   :phrase-parameter (parameter-named 's)
                   :value (mumble-value 'that 'pronoun)))
         (c-comp (make-instance 'complement-node
                   :phrase-parameter (parameter-named 'c)
                   :value (plan-brief-praise)))) ;;kind of cheating
    (push c-comp (complements dtn))
    (push s-comp (complements dtn))
    (present-tense dtn)
    dtn))
  


(defun instantiate-speech-act (dtn speech-act elaborations)
  ;;// method-ize when there are more of these
  (let ((dtn-to-return dtn))
    (case speech-act
      (propose-goal 
       (command dtn)) ;; these don't change the identity of the dtn
      (perform
       (command dtn))
      (otherwise 
       (error "Don't know the consequence for the dtn of ~a" speech-act)))
    (when elaborations
      ;; only token, completely ad-hoc cases. Only purpose is
      ;; to illustrate modulating a core message (base eventuality)
      ;; by applying operations to it that add prefixes or interjections
      ;; like "please". Not worth going any real distance down this
      ;; road before working out what general story we should have
      ;; about this stuff.
      ;; (push-debug `(,elaborations)) (break "look at elaborations")
      (cond
       ((memq 'friendly elaborations)
        (setq dtn-to-return (let-us dtn)))))
    dtn-to-return))


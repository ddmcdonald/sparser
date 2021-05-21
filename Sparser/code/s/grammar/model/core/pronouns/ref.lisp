;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-2005,2013-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ref"
;;;   Module:  "model;core:pronouns:"
;;;  version:  May 2021

;; 3.0 (7/11/94) completely redone from scratch
;; 4.0 (5/8/95) in progress ..5/22
;; 4.1 (6/22) extended person alg. to use most-recently-mentioned
;;     (7/5) put in the comparable thing for companies
;;     (11/13) put in routine to take "they" etc. to collections of people, left stub
;; 4.2 (11/17) added special-pattern check for "<co> said it"  (12/4) fixed glich
;;      in it.  (1/16/96) added a filter against background companies. 
;;      (3/11/05) Tweaked Respan-pn-with-most-recent-company-anaphor to use the 
;;      form of the pronoun - addresses case of "its".
;; 4.3 (7/30/13) Rewrote respan-pn-with-most-recent-person-anaphor to change
;;      the edge that's passed in rather than make a new one. The new one was
;;      getting lost. (8/22/13) Added the *debug-pronouns* to guard breaks where
;;      the result was unexpected.
;; 4.4 (8/28/13) Extended respan with person to look for named-objects. 
;;     (2/3/15) Adding general search routines to handle 'it' forms in a more
;;      diverse type set. Added wh-pronoun to be ignored 3/19/15.
;;     (5/31/15 Guard the otherwise fall-through in handle-any-anaphora
;;     (6/5/15) Make handle-pronoun return nil if pronoun hasn't been massaged.
;; 4.5 (9/8/15) Turned off the completion actions on proteins. 
;;     (9/29/15) Fixed cases in handle-any-anaphora

(in-package :sparser)

(defparameter *debug-pronouns* nil
  "Guards breaks like the one in seek-person-for-pronoun where the search
   was expected to return an entity but didn't.")

;; (trace-pronouns)
;; (trace-discourse-structure)
;; (trace-treetops-sweep)
;; (trace-paragraphs) ;; period hook


;;;------------------------
;;; doing pronouns in-line
;;;------------------------

#| Deferencing pronouns in-line is to do them as soon as there
enough information to establish their context.

The process is run out of sweep-sentence-treetops and controlled
by these parameters. The existence of a pronoun or pronouns in
a sentence is noted in the sweep/form-dispatch portion of the
sweep operation where decides what to do with any sort of np.
Quote: 
               ;; We've got several options. If we're going to wait until the
               ;; whole sentence is done and condition-anaphor-edge runs to
               ;; record whatevern information the grammar can give us for v/r,
               ;; the we just push the pronoun.
               ;;   If we going to do it now, then we can either wait until
               ;; all of the features of this sentence have been determined,
               ;; in which case we 'enqueue' the pronoun and a trap will find it.
               ;; That might provide a better picture of the sentence layout.
               ;; Alternatively, we see if we can do it right now.


|#

(defparameter *try-incrementally-resolve-pronouns* nil
  "Read in sweep/form-dispatch and determines whether we call
   attempt-to-dereference-pronoun or just push the pronoun
   onto the layout.
     Another option (commented out 5/19/21) is to save the
   pronoun by calling enqueue-pronoun")

(defvar *pending-pronoun* nil
  "Holds the edge passed to enqueue-pronoun for later processing")

(defun enqueue-pronoun (edge-over-pn)
  "Called in the np handler of sweep-sentence-treetops when it walks
   over a pronoun that we could potentially dereference.
   At the end of the sweep we check for *pending-pronoun* and
   call attempt-to-dereference-pronoun"
  (setq *pending-pronoun* edge-over-pn))


(defparameter *record-rather-than-try-pronoun* nil
  "Good when in quiet mode since the format statement will blow
   through that.")

(defparameter *work-on-pronouns* nil
  "Gate to ignore everything for the moment")

(defun attempt-to-dereference-pronoun (edge-over-pn layout)
  "Called at the end of sweep-sentence-treetops, which is after chunking
   and before any forest-level operations.
   Get the discriminiating properties of the pronoun
   If 3d person, note the candidates based on same-sentence topology."
  (if *record-rather-than-try-pronoun*
    (format t "Pronoun ~a in ~%~s~%" edge-over-pn (current-string))
    (else
      (push-debug `(,edge-over-pn ,layout))
      (when *work-on-pronouns*
        (break "Pn at ~a" edge-over-pn)))))



;;;--------------------------------
;;; directed pronoun dereferencing 
;;;--------------------------------

;  (f "/Users/ddm/ws/R3/ws/Mitre December texts/passage 1.txt")

(defun handle-any-anaphora (sentence)
  ;; called from post-analysis-operations with the sentence currently being
  ;; analyzed. 
  (let ((edge/s (there-are-pronouns))
        (defNPs (pending-definite-references sentence)))
    (when defNPs
      (when nil
        (lsp-break "There are defNP edges in ~a:~%~a"
                   sentence defNPs)))
    (when edge/s
      ;; It's a push list, so we're going to set the rightmost ones first
      (dolist (edge edge/s)
        (tr :anaphora-looking-at-edge edge)
        (let ((label (edge-category edge))
              (form (edge-form edge)))
          (push-debug `(,edge/s ,sentence)) ;;(lsp-break "Looking at pn")
          (case (cat-symbol form)
            ((category::pronoun ;;/// Review -- is this case still possible?
              category::subject ;;/// Review -- why do we have both of these
              category::grammatical-subject ;; ways to say 'subject' ?
              category::direct-object)
             (cond
              ((ignore-this-type-of-pronoun label)
               (tr :ignoring-personal-pronouns))
              (t
               (handle-pronoun
                label form edge sentence))))
            (category::wh-pronoun ;; ignore -- question or subordinator
             (tr :ignoring-wh-pronoun))
            (category::reflexive/pronoun
             ;; ignore -- adds emphasis, but can be ignored for now
             ;; N.b. when a reflexive is in object position it will
             ;; be handled by the prior clause
             (tr :ignoring-reflexive-pronoun))
            (otherwise
             (when *debug-pronouns*
               (push-debug `(,edge ,form ,label))
               (break "Unhandled category of form on pronoun: ~a" form)))))))))



(defun ignore-this-type-of-pronoun (label)
  "If we're ignoring personal pronouns then is the label on
   this edge we're looking at (it's category) one of the
   proscribed cases. We're also ignoring WH pronouns because
   they should be handled by different mechanisms than anaphora."
  (or (is-wh-pronoun? label)
      (and *ignore-personal-pronouns*
           (memq (cat-name label)
                 '(pronoun/first/plural pronoun/first/singular
                   pronoun/second which how)))))


(defun subject-of-previous-sentence (sentence)
  (when (slot-boundp sentence 'previous)
    (get-sentence-subject (previous sentence))))


(defun handle-pronoun (label form edge sentence)
  ;; This is for 'it' in the biology texts where the edge 
  ;; has been conditioned for us by condition-anaphor-edge
  ;; which changed the values of the edge's fields to
  ;; provide us with additional information to constrain
  ;; the search for a referent
  (let ((layout (base-layout (contents sentence))))
    (cond
     ;; are we the subject? 
     ((eq edge (subject layout))
      (let (previous-subject (subject-of-previous-sentence sentence))
        (if (and previous-subject
                 (edge-p previous-subject))
          (then
            (tr :resolving-pronoun/previous-subject previous-subject)
            (transfer-edge-data-to-edge previous-subject edge))
          (when *debug-pronouns*
            (push-debug `(,edge ,sentence))
            (error "Problem with resolving to prevous subject")))))

     ;; any other edge-based checks go here

     ((not (eq (edge-rule edge) 'condition-anaphor-edge))
      (if *debug-pronouns*
        (then
          (push-debug `(,edge ,sentence))
          (error "Pronoun edge didn't go through condition-anaphor-edge~
                ~% ~a" edge))
        ;; Don't do anything
        (else
          (tr :pronoun-not-conditioned)
          (return-from handle-pronoun nil))))

     (t (let ((type-restriction (edge-category edge))
              (grammatical-relation (edge-form edge)))
          (tr :restriction-on-pronoun type-restriction) ;; grammatical-relation)
          (let ((referent
                 (search-dh-for-compatible-referent 
                  type-restriction grammatical-relation)))
            (cond
             ((null referent)
              (tr :no-compatible-referent)
              ;; convert it back to a pronoun?
              (when *debug-pronouns*
                (push-debug `(,label ,form ,edge ,sentence))
                (break "Couldn't find a referent")))
              
             (t ;; make-over the referent
              (push-debug `(,edge ,referent))
              (let ((i (car referent))
                    (source-edge (cadr referent))
                    (dummy-i (edge-referent edge)))
                (tr :pronoun-resolved-to i)
                (transfer-edge-data-to-edge source-edge edge)
                (rethread-anaphor-bindings dummy-i i)
                i)))))))))


(defun search-dh-for-compatible-referent (type-restriction grammatical-relation)
  (push-debug `(,type-restriction ,grammatical-relation))
  ;; (setq type-restriction (car *) grammatical-relation (cadr *))
  ;; When the restriction is broad, e.g. biological, then
  ;; local-recorded-instances will return everything and 
  ;; find-best-recent will prefer the verb (in a simple clause)
  ;; because it went the referent list last.
  ;; If we reverse the list we'll pickup the subject
  (let ((local-candidates (local-recorded-instances type-restriction)))
    (when local-candidates
      (let ((in-order (nreverse (copy-list local-candidates))))
        ;; That puts them in the order they occurred in within
        ;; the sentence. In a simple clause this is now subject-first
        (car in-order)))))

(defun transfer-edge-data-to-edge (from to)
  ;; Copy values on the from edge onto the to edge
  (let ((category (edge-category from))
        (form (edge-form from))
        (referent (edge-referent from)))
    (tr :subverting-pn-edge to category referent)
    (setf (edge-category to) category)
    (setf (edge-form to) form)
    (set-edge-referent to referent)))

(defun rethread-anaphor-bindings (dummy real)
  ;; The dummy individual on the pronoun edge has already been
  ;; integrated into one or more bindings as a result of the
  ;; analysis has already been done. We look up those bindings
  ;; and modify them to replace the dummy with the real individual.
  (let ((bindings (indiv-bound-in dummy)))
    (when bindings
      ;; The dummy is in the value field
      (loop for b in bindings
        do (setf (binding-value b) real))
      real)))

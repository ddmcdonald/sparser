;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "base-categories"
;;;  Module: "grammar/model/sl/motifs/
;;; version: July 2021

;; Broken out of word-spotting/object.lisp 7/13/21

(in-package :sparser)

#| If we are spotting individual words there won't be any edge.
For polywords there will be an edge but it won't carry form or
referent information. To be compatible, the referent needs to be
a Krisp individual. |#

(define-category motif-trigger
  :specializes index
  :binds ((spotter-index :primitive word))
  :realization ((:common-noun name))
  :documentation "While the words that signal a motif tend to
 have literal meanings, we're ignoring that (you'd have to have
 already decided how it was being used) to just provide a common
 Krisp-based representation for them, with an individual for each
 spotter/phrase.")

(define-category prop-motif :specializes motif-trigger)
(define-category character-motif :specializes motif-trigger)
(define-category event-motif :specializes motif-trigger)

(defun setup-motifs-language-spec (word spotter kind)
  "Create an individual of the appropriate category given
   the kind of motif, and store that category and the name
   of the individual as the rdata of the spotter. For operating
   in contexts like PNF, we make a rewrite rule as well since we need to
   appreciate that these are known words, as well as being a motif trigger"
  ;; construct-cfr calls knit-single-term-rewrite-rule (via knit-into-psg-tables)
  ;; which connects with the rule-set and fills the field so that
  ;; install-terminal-edges can see it when pnf needs it to.
  (declare (special *common-nouns-brackets*))
  (let* ((rs (establish-rule-set-for word))
         (kind-of-motif (kind-of-notable spotter))
         (cat-name (ecase kind-of-motif
                     (prop 'category::prop-motif)
                     (char 'category::character-motif)
                     (event 'category::event-motif)))
         (name (symbol-name (name spotter)))
         (plural (when (eq kind-of-motif 'prop)
                   (unless (polyword-p word)
                     (plural-version word))))
         (form (if (eq kind-of-motif 'prop)
                 (category-named 'common-noun)
                 (category-named 'proper-noun)))
         (i (define-or-find-individual cat-name :name name))
         (j (bind-variable 'spotter-index word i)))
    (unless i (break "something wrong in motif rdata setup"))
    (assign-brackets-to-word word *common-noun-brackets*) ; pro-forma
    (let ((rule (define-cfr category::motif-trigger (list word)
                  :form form
                  :referent j))
          (plural-rule (when plural
                         (define-cfr category::motif-trigger (list plural)
                           :form form
                           :referent j))))
      ;; for computing the referent when massaging a word
      (setf (language-spec spotter) `(,cat-name ,name))
      spotter)))

           
(defun massage-spotted-edge (edge entry)
  "called from handle-spotted-word to flesh out the missing parts on
   the identified edge (typically from a polyword) by using the information
   stored on the spotter."
  (let* ((spotter (notable entry))
         (rdata (language-spec spotter)))
    (when rdata
      (let* ((cat-name (first rdata))
             (name (second rdata))
             (i (define-or-find-individual cat-name :name name))
             (capitalized? (capitalized-instance (pos-edge-starts-at edge))))
        (revise-edge-labels edge
                            :category category::motif-trigger
                            :form (if capitalized?        
                                    (category-named 'proper-noun)
                                    (category-named 'common-noun))
                            :referent i)
        edge))))

(defun make-edge-over-motif-word (entry start-pos end-pos)
  "called from handle-spotted-word when the driver doesn't have
   a ready-make edge. We make the equivalent of a single-term
   edge, using the same convention for its labels as in the
   'massage' case. We know that this case is over a single word,
   but otherwise it engages the same machinery."
  (let* ((spotter (notable entry))
         (rdata (language-spec spotter))
         (word (pos-terminal start-pos)))
    (unless rdata (break "no rdata on ~a" entry))
    (let* ((cat-name (first rdata))
           (name (second rdata))
           (i (define-or-find-individual cat-name :name name))
           (capitalized? (capitalized-instance start-pos)))
      (let ((edge
             (make-completed-unary-edge
              (pos-starts-here start-pos) ; starting-vector
              (pos-ends-here end-pos)     ; ending-vector
              'make-edge-over-motif-word ; rule
              word ; daughter
              category::motif-trigger ; category
              (if capitalized?        ; form
                (category-named 'proper-noun)
                (category-named 'common-noun))
              i))) ; referent
        edge))))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2012 David D. McDonald all rights reserved
;;;
;;;     File: "assignments"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  December 2012

;; Extracted from diverse files 12/4/12. Added referent construction
;; 12/11/12, 

(in-package :sparser)

;;;-------------------
;;; Unambiguous words
;;;-------------------
;; These are for the most part lifted from rules/tree-families/
;; morphology1

(defun assign-brackets-as-a-main-verb (word)
  (assign-bracket/expr word ].verb )
  (assign-bracket/expr word .[verb )
  (assign-bracket/expr word mvb]. )
  (assign-bracket/expr word mvb.[ )
  word )


(defun assign-brackets-as-a-common-noun (word)
  ;;(assign-bracket/expr word np].)
  ;;  a noun can be a classifier as well as a head, so we have
  ;;  them indicate np starts, but they shouldn't force np ends.
  (assign-brackets/expr word (list ].np .[np))
  word)

(defun assign-brackets-to-proper-noun (word)
  (assign-brackets/expr word (list ].proper-noun proper-noun.[ )))


(defun assign-brackets-to-adverb (word)
  ;; rules/words/adverbs1 has a lot of individual cases that 
  ;; are different. Often with just ].adverb because they
  ;; bind to their left and terminate ongoing segments
  ;; See define-adverb in words/adverbs1
  (assign-brackets/expr word (list ].adverb .[adverb )))


(defun assign-brackets-to-adjective (word)
  ;; in morphology1, the brackets were ].adjective .[adjective,
  ;; but when I inadvertantly reinvented this in the Comlex
  ;; unpacking, I made them this, with the .[np
  (assign-brackets/expr word (list ].adjective .[np )))


(defun assign-brackets-to-preposition (word)
  ;; See define-preposition in words/prepositions2
  (assign-brackets/expr word (list ].preposition preposition]. preposition.[ )))


(defun assign-brackets-to-interjection (word)
  (assign-brackets/expr word (list ].treetop  treetop.[ )))


(defun assign-brackets-to-standalone-word (word)
  (assign-brackets/expr word (list ].phrase phrase.[ )))


;;;------------------------
;;; Word with multiple POS 
;;;------------------------
;;  Reified from Comlex decoder

(defun brackets-for-adjective-noun (word)
  (assign-brackets-to-adjective word))

(defun brackets-for-adjective-adverb (word)
  (assign-brackets-to-word word (list ].adj-adv .[np-vp )))

(defun brackets-for-adverb-noun (word)
  ;; this can't be right. Ex. was "home"
  (assign-brackets-to-adjective word))


(defun brackets-for-adjective-adverb-noun (word)
   ;; E.g. "plain"
  ;; It doesn't matter really, just a question of where
  ;; in an NP the word appears. //// collect cases
  (assign-brackets-to-word word (list ].adj-adv .[adj-adv)))


(defun brackets-for-adjective-adverb-noun-verb (word)
  ; "clear"
  ;; Lets see how far we can go with this
  (assign-brackets-to-word word (list ].adj-verb .[adj-verb)))


(defun brackets-for-adjective-verb (word)
  (assign-brackets-to-word word (list ].adj-verb .[adj-verb)))


(defun brackets-for-adverb-noun-verb (word clauses)
  ;; "part"
  ;;/// how often might the adverb part get us into trouble?
  (assign-noun-verb-brackets word clauses))


(defmethod assign-noun-verb-brackets ((lemma word) clauses)
  ;;/// what else do we need? Will the NP cases soak up
  ;; the adjective as well?
  ;; N.b only a few of the forms are actually ambiguous
  (let* ((noun-clause (assoc 'noun clauses))
         (plurals (plural-words-given-CL-clause lemma noun-clause))
         (noun-forms (cons lemma plurals)))
    (let* ((verb-inflections (verb-forms-of lemma))
           (verb-forms (pushnew lemma verb-inflections)))
      ;; We only put the special np-vp brackets on the words
      ;; that are shared b/w noun and verb, e.g. "fire" and "fires"
      ;; but not "fired" or "firing", which keep their original
      ;; verb-only brackets
      (let ((ambigous
             (loop for verb in verb-forms
                when (memq verb noun-forms)
                collect verb)))
        (dolist (w ambigous)
          (assign-brackets-to-word
           ;; completely parallels the set for verbs.
           w '( .[np-vp  ].np-vp  np-vp]. np-vp.[  )))))))


(defun brackets-for-adjective-noun-sconj-prep-verb (word)
  ;; "like"
  ;; strand it and let something else do the compositions
  (assign-brackets-to-word word '( ].phrase phrase.[ )))


;;;-------------------------------------------
;;; Deciding on category, referent, and rules
;;;-------------------------------------------
;; Much of this is from tree-families/shortcuts, but adapted
;; so we can be free with the factoring. Final actions by
;; the code in morphology just as its used by ETF.

(defun setup-common-noun (word comlex-clause)
  (let* ((marked-plural (explicit-plurals comlex-clause))
         (category-name (name-to-use-for-category word))
         (super-category (super-category-for-POS :noun))
         (category (define-category/expr category-name
                     `(:specializes ,super-category
                        :instantiates :self))))
    (let ((rules
           (make-cn-rules/aux ;; we don't need to decipher the 'word'
            word
            category ;; lhs
            category ;; referent
            marked-plural))) 
      (add-rules-to-category category rules)
      category)))


(defun setup-verb (word comlex-clause)
  (let* ((special-cases
          (lift-special-case-form-from-comlex-clause comlex-clause))
         (category-name (name-to-use-for-category word))
         (super-category (super-category-for-POS :verb))
         (category (define-category/expr category-name
                     `(:specializes ,super-category
                       :instantiates :self))))
    ;; Adds the rule to the category itself
    (apply #'define-main-verb (cat-symbol category)
           :infinitive (word-pname word)
           :category category
           :referent category
           special-cases) 
    category))
    


(defun setup-adjective (word clause)
  (declare (ignore clause)) ;; /// pull stuff out of it
  ;; Comlex has a 'gradable' feature on adjectives, with 
  ;; a flag for er-est. See adjectives in sl/checkpoint/
  (let* ((category-name (name-to-use-for-category word))
         (super-category (super-category-for-POS :adjective))
         (category (define-category/expr category-name
                      `(:specializes ,super-category
                        :instantiates :self))))
    (let ((rules
           (make-rules-for-adjectives
            word
            category
            category)))
      (add-rules-to-category category rules)
      category)))


(defun setup-adverb (word)
  ;; Adverbs that serve functions that we understand,
  ;; such as approximation, are explicitly defined using
  ;; define-adverb. Ones that we import are by that
  ;; token ones we wouldn't know what to do with, so
  ;; we go through the morphology routine used with ETF.
  (let* ((category-name (name-to-use-for-category word))
         (super-category (super-category-for-POS :adverb))
         (category (define-category/expr category-name
                      `(:specializes ,super-category
                        :instantiates :self))))
    (let ((rules
           (make-rules-for-adverbs
            word
            category
            category)))
      (add-rules-to-category category rules)
      category)))


;;--- gofers

(defmethod super-category-for-POS ((pos symbol))
  "Returns a category object to feed to a morphology
   routine to feed to a setup routine."
  (case pos
    (:noun
     ;; c.f. model/core/kinds/object.lisp
     (category-named 'kind))
    (:verb
     (category-named 'event)) ;; see upper-model
    (:adjective
     ;; c.f. mode/core/kinds/upper-model.lisp
     (category-named 'modifier))
    (:adverb
     (category-named 'adverbial))
    (otherwise
     (break "Unexpected pos: ~a" pos))))
  

(defmethod name-to-use-for-category ((string string))
  "Encapsulates the lisp-specific checks for what case to use."
  (let* ((s #+mlisp string
            #+(or :ccl :alisp)(string-upcase string))
         (symbol (intern s (find-package :sparser))))
    ;; n.b. not the category package. The pname will be interned there
    ;; as part of creating the category
    symbol))

(defmethod name-to-use-for-category ((w word))
  (name-to-use-for-category (word-pname w)))


(defun explicit-plurals (comlex-clause)
  (when (some #'keywordp comlex-clause)
    (let ((plural-entry (cadr (assoc :plural comlex-clause))))
      (when plural-entry
        `(:plural ,plural-entry)))))




;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2014 David D. McDonald all rights reserved
;;;
;;;     File: "assignments"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  July 2014

;; Extracted from diverse files 12/4/12. Added referent construction
;; 12/11/12. Revised those 'setup' constructors 2/23/13 to specialize
;; the category names when words come in more than one part of speech,
;; and to trap constructed categories that have the same name as
;; one that already exists to cut down of weird definition changes.
;; 2/28/13 included primitive way to tell the provinance of the
;; categories we make here. 6/14/14 Broke out the backet lists as
;; independent parameters that the assign functions map over. 
;; 7/27/14 Slightly factored the set-xx routines to use with affix morph.

(in-package :sparser)

;;;---------------
;;; Bracket lists
;;;---------------

(defparameter *main-verb-brackets*
  (list ].verb  .[verb   mvb].  mvb.[ ))

(defparameter *common-noun-brackets*
  (list ].np .[np ))

(defparameter *proper-noun-brackets*
  (list ].proper-noun proper-noun.[ ))

(defparameter *adverb-brackets*
  (list ].adverb .[adverb ))

(defparameter *adjective-brackets*
  (list ].adjective .[adjective .[np ))

(defparameter *preposition-brackets*
  (list  ].preposition preposition]. preposition.[ ))

(defparameter *default-determiner-brackets*
  (list  ].phrase .[article )
  "See words/determiners where certain ones get other brackets")

(defparameter *interjection-brackets*
  (list ].treetop  treetop.[ ))

(defparameter *standalone-brackets*
  (list ].phrase phrase.[ ))

(defparameter *comparative-brackets*
  (list ].phrase .[np ))


;;;-------------------
;;; Unambiguous words
;;;-------------------
;; These are for the most part lifted from rules/tree-families/
;; morphology1

(defun assign-brackets-as-a-main-verb (word)
  (assign-brackets/expr word *main-verb-brackets*))

(defun assign-brackets-as-a-common-noun (word)
  ;;(assign-bracket/expr word np].)
  ;;  a noun can be a classifier as well as a head, so we have
  ;;  them indicate np starts, but they shouldn't force np ends.
  (assign-brackets/expr word *common-noun-brackets*))

(defun assign-brackets-to-proper-noun (word)
  (assign-brackets/expr word *proper-noun-brackets*))
 
(defun assign-brackets-to-adverb (word)
  ;; rules/words/adverbs1 has a lot of individual cases that 
  ;; are different. Often with just ].adverb because they
  ;; bind to their left and terminate ongoing segments
  ;; See define-adverb in words/adverbs2
  (assign-brackets/expr word *adverb-brackets*))

(defun assign-brackets-to-adjective (word)
  (assign-brackets/expr word *adjective-brackets*))

(defun assign-brackets-to-preposition (word)
  ;; See define-preposition in words/prepositions2
  (assign-brackets/expr word *preposition-brackets*))

(defun assign-brackets-to-interjection (word)
  (assign-brackets/expr word *interjection-brackets*))

(defun assign-brackets-to-standalone-word (word)
  (assign-brackets/expr word *standalone-brackets*))


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

(defun setup-common-noun (word &optional comlex-clause ambiguous?)
  (let ((marked-plural
         (when comlex-clause
           (explicit-plurals comlex-clause)))
        (category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :noun)))
    (when ambiguous?
      (setq category-name
            (construct-disambiguating-category-name
             category-name super-category)))
    (when (category-named category-name)
      (push-debug `(,category-name ,word ,comlex-clause))
      (error "Setup: The category named ~a already exists."
             category-name))
    (let* ((category (define-category/expr category-name
                        `(:specializes ,super-category
                         :instantiates :self)))
           (rules
            (make-cn-rules/aux ;; we don't need to decipher the 'word'
             word
             category ;; lhs
             category ;; referent
             marked-plural)))
      (mark-as-constructed-category-for-word category super-category)
      (add-rules-to-category category rules)
      category)))


(defun setup-verb (word &optional comlex-clause  ambiguous?)
  (let ((special-cases
         (when comlex-clause
           (lift-special-case-form-from-comlex-clause comlex-clause)))
        (category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :verb)))
    (when ambiguous?
      (setq category-name
            (construct-disambiguating-category-name
             category-name super-category)))
    (when (category-named category-name)
      (push-debug `(,category-name ,word ,comlex-clause))
      (error "Setup: The category named ~a already exists."
             category-name))
    (let ((category (define-category/expr category-name
                       `(:specializes ,super-category
                        :instantiates :self))))
      ;; Adds the rule to the category itself
      (apply #'define-main-verb (cat-symbol category)
             :infinitive (word-pname word)
             :category category
             :referent category
             special-cases)
      (mark-as-constructed-category-for-word category super-category)
      category)))
    


(defun setup-adjective (word &optional comlex-clause ambiguous?)
  ;; /// pull stuff out of the clause
  ;; Comlex has a 'gradable' feature on adjectives, with 
  ;; a flag for er-est. See adjectives in sl/checkpoint/
  (let ((category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :adjective)))
    (when ambiguous?
      (setq category-name
            (construct-disambiguating-category-name
             category-name super-category)))
    (when (category-named category-name)
      (push-debug `(,category-name ,word ,comlex-clause))
      (error "Setup: The category named ~a already exists."
             category-name))
    (let* ((category (define-category/expr category-name
                       `(:specializes ,super-category
                        :instantiates :self)))
           (rules
            (make-rules-for-adjectives
             word
             category
             category)))
      (mark-as-constructed-category-for-word category super-category)
      (add-rules-to-category category rules)
      category)))


(defun setup-adverb (word &optional ambiguous?)
  ;; Adverbs that serve functions that we understand,
  ;; such as approximation, are explicitly defined using
  ;; define-adverb. Ones that we import are by that
  ;; token ones we wouldn't know what to do with, so
  ;; we go through the morphology routine used with ETF.
  (let ((category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :adverb)))
    (when ambiguous?
      (setq category-name
            (construct-disambiguating-category-name
             category-name super-category)))
    (when (category-named category-name)
      (push-debug `(,category-name ,word))
      (error "Setup: The category named ~a already exists."
             category-name))
    (let* ((category (define-category/expr category-name
                       `(:specializes ,super-category
                        :instantiates :self)))
           (rules
            (make-rules-for-adverbs
             word
             category
             category)))
      (mark-as-constructed-category-for-word category super-category)
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
  
(defun construct-disambiguating-category-name (category-name super-category)
  "Something should constrain this to make sure that we only apply
   it in this case where we're doing general word -> category setup's
   out of a lexical store that discriminates on POS.
      We construct a name to distinguish e.g. the noun version of
   'die' (the stuff that changes the color of cloth) from the verb
   version, by appending their type to their name."
  (unless (and (symbolp category-name)
               (referential-category-p super-category))
    (push-debug `(,category-name ,super-category))
    (error "Parameters are the wrong type - check in debugger"))
  (let* ((super-name (cat-symbol super-category))
         (super-pname (symbol-name super-name))
         (disambiguated (string-append category-name "-"
                                       super-pname)))
    (name-to-use-for-category disambiguated)))


;;--- Probably simpler way to do this
;; Want it for the reification code in analyzers/SDM&P/reify-individuals
;; So that it generalizes correctly

(defvar  *constructed-categories-to-supercategory* (make-hash-table)
  "Takes a category that we created here in this file and maps
   it to its supercategory")

(defun mark-as-constructed-category-for-word (category super-category)
  (setf (gethash category *constructed-categories-to-supercategory*)
        super-category))

(defun supercategory-of-constructed-category (category)
  (gethash category *constructed-categories-to-supercategory*))



(defun explicit-plurals (comlex-clause)
  (when (some #'keywordp comlex-clause)
    (let ((plural-entry (cadr (assoc :plural comlex-clause))))
      (when plural-entry
        `(:plural ,plural-entry)))))


;;;-------------------------------------------
;;; Making a category name from a word string
;;;-------------------------------------------

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

(defmethod name-to-use-for-category ((exp cons))
  ;; We get this case when the word includes keywords to mark
  ;; irregular word forms. We pull out the base word and make
  ;; the category from that. 
  ;; Have to check (a) that there is at least one keyword since
  ;; another case of multiple word strings in a list is as a way
  ;; to do synonyms (which we should stop using), so that 
  (unless (cdr exp)
    (error "No irregular markers in list string definition: ~a" exp))
  (unless (and (cddr exp) ;; length at least three
               (keywordp (cadr exp)))
    (error "Bad form in word irregulars expression: ~a" exp))
  (unless (stringp (car exp))
    (error "Expected first element of word specification to be a string,~
          ~%not a ~a~%~a" (type-of exp) exp))
  (check-for-correct-irregular-word-markers (cdr exp))
  (let ((base (car exp)))
    (name-to-use-for-category base)))
  






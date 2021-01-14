;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2020 David D. McDonald all rights reserved
;;;
;;;     File: "assignments"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  April 2020

;; Extracted from diverse files 12/4/12. Added referent construction
;; 12/11/12. Revised those 'setup' constructors 2/23/13 to specialize
;; the category names when words come in more than one part of speech,
;; and to trap constructed categories that have the same name as
;; one that already exists to cut down of weird definition changes.
;; 2/28/13 included primitive way to tell the provinance of the
;; categories we make here. 6/14/14 Broke out the backet lists as
;; independent parameters that the assign functions map over. 
;; 7/27/14 Slightly factored the set-xx routines to use with affix morph.
;; 8/29/14 Made the errors for already defined categories into cerrors
;; 4/27/15 added *break-on-pattern-outside-coverage?* to the duplicate
;; checks. 10/21/15 fixed explicit-plurals

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

(defun assign-brackets-for-word (word pos)
  (check-type word (or word polyword))
  (check-type pos keyword)
  (assign-brackets-to-word word
                           (ecase pos
                             (:word *standalone-brackets*)
                             (:quantifier *comparative-brackets*)
                             (:verb *main-verb-brackets*)
                             (:common-noun *common-noun-brackets*)
                             (:proper-noun *proper-noun-brackets*)
                             (:adjective *adjective-brackets*)
                             (:adverb *adverb-brackets*)
                             (:interjection *interjection-brackets*)
                             (:preposition *preposition-brackets*))))


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

(defparameter *block-redefinition* t
  "Words that are automatically given categories via Comlex or
   morphology should not inadvertantly clobber an explicitly defined
   category. When this flag is up we catch these potental clashes
   and give the proposed category a distinguishing name.")

(defparameter *categories-created-by-setup*
  (make-hash-table :size 10000)
  "These are categories that were created while defining words.
   They were not pre-defined in the loadup")


(defun setup-common-noun (word &optional comlex-clause ambiguous?)
  (declare (special *break-on-pattern-outside-coverage?*))      
  (mark-definition-source word)
  (let ((marked-plural
         (when comlex-clause (explicit-plurals comlex-clause)))
        (category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :noun)))
    (when ambiguous?
      (setq category-name
            (construct-disambiguating-category-name
             category-name super-category)))
    (setq category-name (maybe-distinguish-category category-name))   
    (let* ((category
            (define-category/expr category-name
                                    `(:specializes ,super-category
                                      :instantiates :self
                                      :mixins (comlex-noun))))
           (rs (rule-set-for word))
           (rules (apply #'make-rules-for-head
                         :common-noun word category category
                         marked-plural))) ;; special-cases
      (mark-as-constructed-category-for-word category super-category)
      (when rs ;; could start out as nil
        (assert (eq (rule-set-for word) rs)
                ((rule-set-for word) rs)
                "Rule set for ~a changed by making rules." word))
      (add-rules rules category)
      category)))


(defparameter *show-R3-new-verb-definitions* nil)
(defun show-new-verb-definitions ()
  (setq *show-R3-new-verb-definitions* t))
(defun dont-show-new-verb-definitions ()
  (setq *show-R3-new-verb-definitions* t))

(defun setup-verb (word &optional comlex-clause ambiguous?)
  (declare (special *big-mechanism* *unknown-word*
                    *break-on-pattern-outside-coverage?*))
  (mark-definition-source word)
  (if *big-mechanism*
    (then
      (when *show-R3-new-verb-definitions*
        (format t "~&--------DEFINING NEW VERB ~s-- using svo/bio, ~
                 assuming ~s is a bio-verb~&" word (or *unknown-word* word)))
      ;; n.b. svo/bio/expr will check for already used categories
      ;; and specialize the category name accordingly
      (svo/bio/expr word comlex-clause))
    (else
      (when (stringp word)
        (setq word (resolve/make word)))
      (let ((special-cases
             (when comlex-clause
               (lift-special-case-form-from-comlex-clause comlex-clause)))
            (category-name (name-to-use-for-category word))
            (super-category (super-category-for-POS :verb)))
        (when ambiguous?
          (setq category-name
                (construct-disambiguating-category-name
                 category-name super-category)))
        (setq category-name (maybe-distinguish-category category-name))
        (let ((category
               (define-category/expr category-name
                   `(:specializes ,super-category
                     :mixins (comlex-verb)
                     :realization (:verb ,word ;;///analyze special-cases
                                  ;; :etf (svo)
                                         )))))
          ;; Adds the rules to the category itself
          (apply #'define-main-verb (cat-symbol category)
                 :infinitive (word-pname word)
                 :category category
                 :referent category
                 special-cases)
          (mark-as-constructed-category-for-word category super-category)
          category)))))
    


(defun setup-adjective (word &optional comlex-clause ambiguous?)
  ;; For more exhaustive treament of comlex adjectives see adjectives in sl/checkpoint/
  (declare (special *break-on-pattern-outside-coverage?*))
  (mark-definition-source word)
  (let ((category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :adjective)))    
    (when ambiguous?
      (setq category-name ;;/// feed into define-adjective discriminator ??
            (construct-disambiguating-category-name
             category-name super-category)))
    (setq category-name (maybe-distinguish-category category-name))
    (if comlex-clause
      (let ((entry (if ambiguous?
                     (cadr (assq 'adjective comlex-clause))
                     (second comlex-clause))))
        (if (memq :comparative entry)
          (let ((comparative (cadr (memq :comparative entry)))
                (superlative (cadr (memq :superlative entry))))
            (mark-definition-source comparative)
            (mark-definition-source superlative)
            (setup-anonymous-graded-adjective
             word comparative superlative))
          (else ;; has comlex entry but isn't an er-est
            (let ((category (define-adjective (word-pname word)
                            :super-category super-category)))
              (mark-as-constructed-category-for-word category super-category)
              category))))
      (else ;; no entry. Probably coming from morphology
        (let ((category (define-adjective (word-pname word)
                            :super-category super-category)))
          (mark-as-constructed-category-for-word category super-category)
          category)))))



(defun setup-adverb (word &optional ambiguous?)  ;; Adverbs that serve functions that we understand,
  ;; such as approximation, are explicitly defined using
  ;; define-adverb. Ones that we import are, by that
  ;; token, ones that we wouldn't know what to do with, so
  ;; we go through the morphology routine used with ETF.
  (declare (special *break-on-pattern-outside-coverage?*))
  (mark-definition-source word)
  (let ((category-name (name-to-use-for-category word))
        (super-category (super-category-for-POS :adverb)))
    (when ambiguous?
      (setq category-name
            (construct-disambiguating-category-name
             category-name super-category)))
    (setq category-name (maybe-distinguish-category category-name))
    (let* ((category (define-category/expr category-name
                       `(:specializes ,super-category
                        :instantiates :self)))
           (rules (make-rules-for-head :adverb word category category)))
      (mark-as-constructed-category-for-word category super-category)
      (add-rules rules category)
      category)))


(defun form-dispatch-setup (word form-category)
  "Alternative path into the category-creating setup routines.
   Motivated by make-edge-based-on-morphology."
  (check-type form-category category)
  (check-type word word)
  (ecase (cat-name form-category)
    (adverb (setup-adverb word))
    (adjective (setup-adjective word))
    (verb (setup-verb word))
    (noun (setup-common-noun word))))


;;--- gofers

(defmethod super-category-for-POS ((pos symbol))
  "Returns a category object to feed to a morphology
   routine to feed to a setup routine."
  (case pos
    (:noun
     (category-named 'endurant))
    (:verb
     (category-named 'perdurant))
    (:adjective
     (category-named 'modifier))
    (:adverb
     (category-named 'adverbial))
    (otherwise
     (break "Unexpected pos: ~a" pos))))
  

;;--- Probably simpler way to do this
;; Want it for the reification code in analyzers/SDM&P/reify-individuals
;; So that it generalizes correctly

(defvar *constructed-categories-to-supercategory* (make-hash-table)
  "Takes a category that we created here in this file and maps
   it to its supercategory")

(defun mark-as-constructed-category-for-word (category super-category)
  "Serves same purpose as mark-definition-source, but applies to categories
   rather than words"
  (declare (special *source-of-unknown-words-definition*))
  (let ((source *source-of-unknown-words-definition*))
    (setf (get-tag :file-location category) source)
    (setf (gethash category *constructed-categories-to-supercategory*)
          super-category)))

(defun supercategory-of-constructed-category (category)
  (gethash category *constructed-categories-to-supercategory*))



(defun explicit-plurals (comlex-clause)
  ;; E.g. (noun (:plural "stimuli") (:features ((countable))))
  (let ((alist (cdr comlex-clause)))
    (let ((plural-entry (cadr (assoc :plural alist))))
      (when plural-entry
        (unless (eq plural-entry '*none*)
          ;;/// This should be elevated to set *inhibit-constructing-plural*
          ;; to completely block creating a plural, as it stands this
          ;; will have us create a regular plural by rule
          `(:plural ,plural-entry))))))


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
    (error "Parameters are the wrong type"))
  (let* ((super-name (cat-symbol super-category))
         (super-pname (symbol-name super-name))
         (disambiguated (string-append category-name "-" super-pname)))
    #+ignore
    (format t "construct-disambiguating-category-name given ~a produces ~a~%"
            category-name disambiguated)
    ;;(lsp-break)
    (name-to-use-for-category disambiguated)))

(defun maybe-distinguish-category (category-name)
  (if (and *block-redefinition*
           (not (gethash category-name *categories-created-by-setup*))
           (category-named category-name)
           ;; next is a temporary fix because it'll take a while to define plurals
           ;;  for all cellular locations suchh as "nuclei"               
           (not (itypep (category-named category-name) 'cellular-location))
           ;; for "additives"
           (not (itypep (category-named category-name) 'bio-predication))
           ;; for :comparative and "superlative of already defined adjectives
           (not (itypep (category-named category-name) 'modifier))
           ;; to handle plurals of already defined common-nouns
           (not (search "-ENDURANT" (symbol-name category-name)))
           (not (search "-PERDURANT" (symbol-name category-name))))
    (setq category-name (distinguish-category category-name))
    (setf (gethash category-name *categories-created-by-setup*) t))
  category-name)


(defparameter *report-distinguishing-auto-category* nil
  "Turn on to see the announcements of core-category overlaps or use the break")

(defun distinguish-category (original-name)
  "Similar to construct-disambiguating-category-name but applies in
   any case where the name is already taken by an already defined
   category."
  (let ((new-name (string-append original-name "-AUTO")))
    (when *report-distinguishing-auto-category*
      (if (search "-" (format nil "~a" original-name))
        (format t "*** distinguish-category given ~a produces ~a~%"
                original-name new-name)
        ;;(lsp-break "*** CORE CATEGORY OVERLAP distinguish-category ~given ~a produces ~a~%" original-name new-name)
        (format t "*** CORE CATEGORY OVERLAP distinguish-category given ~a~
                produces ~a~%" original-name new-name)))
    (name-to-use-for-category new-name)))
   

;;;-------------------------------------------
;;; Making a category name from a word string
;;;-------------------------------------------

(defgeneric name-to-use-for-category (string)
  (:documentation "Encapsulates the lisp-specific checks 
    for what case to use. Hyphenates category names that
    are based on a polyword")
  (:method ((string string))
    (declare (special *break-on-pattern-outside-coverage?*))
    (assert (not (string-equal string "top")) ()
            "You mustn't define another 'top' category")
    (when (contains-whitespace string)
      ;; fill the spaces, if only for the sake of the category display
      (setq string (substitute #\- #\space string)))
    (let* ((s #+mlisp string
              #-mlisp (string-upcase (substitute #\- #\space string))) 
           (symbol (intern s (find-package :sparser))))
      ;; n.b. not the category package. The pname will be interned there
      ;; as part of creating the category
      symbol))

  (:method ((w word))
    (name-to-use-for-category (word-pname w)))

  (:method ((pw polyword))
     (name-to-use-for-category (pw-pname pw)))

  (:method ((exp cons))
    "We get this case when the word includes keywords to mark
     irregular word forms. We pull out the base word and make
     the category from that."
    (check-type exp (cons string (cons irregular-keyword (cons string)))
                "a valid marked-irregulars expression")
    (check-irregular-word-markers (cdr exp))
    (name-to-use-for-category (car exp))))

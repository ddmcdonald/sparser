;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-master"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  April 2016

;; Initiated 9/14/14 to make more flexible, complete shortcuts.
;; 11/11/14 added keyword for obo-id.
;; 1.0 (12/13/14) totally made over to simplify everything down
;;  to one two routines. 1/5/15 Refactored a bit to handle
;;  nouns and adjectives without ETF. 
;; 1/14/2015 Changes to put :subject and :object selectional 
;;   restrictions in the subcat frame
;;   also, initial subcat for THATCOMP -- not used yet
;;   Delete old noun definitions when redefining a noun (but 
;;     don't delete old verb definitions)
;; add new method delete-adj-cfr (like delete-noun-cfr) to handle cases where core definitions conflict with new definitions
;; 4/15/2015 make the use of sub-categorizations less taxing (OK, it is April 15)
;;  only have one place where the slots (not just prepositions) are defined, and don't use the &key mechanism for passing them individually
;;  have a variable called slots which holds a plist of all the slot information
;; this will make it easier to add new slots, including ones which are not prepositions
;; 4/24/2015 added whethercomp as a type of verb complement
;; 5/12/15 Minor cleanup for read-ability.
;; 6/5/2015 extend subject-variable and object-variable to make use of subcategorization information
;; and add thatcomp-variable
;; 6/30/15 Implemented irregular plural for nouns.
;; 7/29/30 added find-single-unary-cfr and rearranged slightly.

(in-package :sparser)

;;;------------------
;;; valid parameters
;;;------------------

(defparameter *def-realization-keywords*
  '(:verb :noun :adj :etf :s :o :c :m ;;:alt-s  :alt-o 
    :binds :realization
    :control-relations
    :prep :by
    :premod
    :about :above :across :after :against :among :as :as-comp :at
    :below :before :between :but\ not :during :following :for :from :ifcomp :in :into 
    :like :next\ to
    :of :on :onto :on\ top\ of
    :over :such\ as :to :to-comp :thatcomp :through :throughout :toward :towards :under 
    :unlike :upon :via 
    :mumble
    :designator
    :whethercomp :with :within :without
    :optional-object ;; for words like "translocate" which can appear with or without objects
    :adjp-complement ;; for cases like "Make the top block red."
    :loc-pp-complement ;; for cases like "Put the block on the table"
    ))

(defparameter *slot-keywords*
  '(:s :o 
    ;;:alt-s :alt-o
    :m :premod
    :about :above :across :after :against :among :as :as-comp :at
    :before :below :between :but\ not :during :following :for :from :ifcomp 
    :by :in :into :like :next\ to :of
    :on :onto :on\ top\ of
    :over :to :such\ as :to-comp :thatcomp :through :throughout :toward :towards :under :unlike
    :upon :via :whethercomp :with :within :without :designator
    ))


(defun includes-def-realization-keyword (rdata)
  ;; used in decode-category-parameter-list to decide whether
  ;; this is shortcut-style rdata or ordinary. 
  (dolist (symbol rdata nil)
    (when (keywordp symbol)
      (when (memq symbol *def-realization-keywords*)
        (return t)))))

(defun check-for-valid-def-realization-keywords (key-value-pairs)
  (dolist (symbol key-value-pairs)
    (when (keywordp symbol)
      (unless (memq symbol *def-realization-keywords*)
        (error "The keyword :~a is not a known option for ~
               define-realization" symbol)))))


;;;--------------
;;; entry points
;;;--------------

;;--- toplevel macros

(defmacro def-realization (category-name &rest key-value-pairs)
  `(define-realization ',category-name ',key-value-pairs))

(defun define-realization (category-name key-value-pairs)
  (let ((category (category-named category-name :break-if-undefined)))
    (check-for-valid-def-realization-keywords key-value-pairs)
    (apply-decode-realization-parameter-list category key-value-pairs)
    category))

(defun apply-decode-realization-parameter-list (category key-value-pairs)
  ;; we are moving from having all the prepositional subcats as specified
  ;; keywords to having them on a plist -- this is a solution that does not
  ;; require rewriting all the word definitions
  (declare (special category key-value-pairs))
  (let ((kw nil)
        (slots nil))
    ;;(break "apply-decode-realization-parameter-list")
    (loop for pair on key-value-pairs by #'cddr 
      do
      (cond
       ((memq (car pair) *slot-keywords*)
        (push (second pair) slots)
        (push (car pair) slots))
       (t (push (second pair) kw)
          (push (car pair) kw))))
    (apply #'decode-realization-parameter-list category 
           `(,@kw :slots ,slots))))


;;--- entry point from decode-category-parameter-list 

(defun setup-shortcut-rdata (category key-value-pairs)
  ;; called from decode-category-parameter-list when the rdata
  ;; satisfies includes-def-realization-keyword, which works
  ;; because an ordinary rdata only includes :tree-family, :binding
  ;; and possibly a word specifier.
  (check-for-valid-def-realization-keywords key-value-pairs)
  (apply-decode-realization-parameter-list category key-value-pairs)
  category)

;; N.b. def-synonym, aka define-additional-realization goes straight
;; to decode-realization-parameter-list with the *deliberate-duplication*
;; flag dynamically bound. 

;;;------------------------------------
;;; decoders that actually do the work
;;;------------------------------------

(defun decode-realization-parameter-list (category
                                          &key etf verb noun adj
					    control-relations  
					    ;; s o ;; no longer arguments because they can be duplicated for ambiguity
					    c
                                            prep ;; owned preposition
                                            slots ;; a plist with labels like :against :as :at 
                                            ;;:between :for :from :in :into :of :on :onto :to :thatcomp :through :via :with
                                            mumble
                                            optional-object
                                            loc-pp-complement
                                            adjp-complement)
  ;; Decoder for the realization part of def-term, for the rdata of
  ;; define-category when it fits this new pattern, and for def-synonym,
  ;; though in that case the *deliberate-duplication* flag will be up.
  (declare (special *valid-keywords-for-irregular-word-forms* word::|by|))
  (typecase etf
    (null
     (when verb
       (error "You must specifiy a realization schema/s using the keyword ':etf'")))
    (cons)
    (symbol (setq etf (list etf)))  
    (otherwise (error "The :etf parameter must be a symbol or a list")))

  (let* ((sf (fom-subcategorization category
                                    :category category
                                    ;;:s s :o o
                                    :slots slots))
         (subj-pat (find-subcat-pattern :subject sf))
         (obj-pat (find-subcat-pattern :object sf))
         (m-pat (find-subcat-pattern :m sf))
         substitution-map
         word-map)
    (setf (control-relations sf) control-relations)
    (dolist (schema-name etf)
      ;; Iterate through the etf, adding to the substituions and word list
      (let* ((rschema (get-realization-scheme schema-name))
             (lexical-class (when rschema (schema-head-keyword rschema))))
        (unless rschema
          (error "There is no realization scheme named ~a" schema-name))

        ;; set up the word map
        (case lexical-class
          (:verb
           (unless verb
             (error "The etf ~a requies a ':verb' parameter" etf))
           (push `(:verb . ,verb)  word-map))
          (:common-noun
           (unless noun
             (error "The etf ~a requies a ':noun' parameter" etf))
           (push `(:common-noun . ,noun) word-map))
          (otherwise
           (error "Unexpected lexical class: ~a" lexical-class)))

        ;; incrementally set up the substitution map
        (when subj-pat
          (let ((s-var (subcat-variable subj-pat))
                (s-v/r (subcat-restriction subj-pat)))
            (push `(subj-slot . ,s-var) substitution-map)
            (push `(subj-v/r . ,s-v/r) substitution-map)
            (register-variable category s-var :subject-variable)
            (when (is-a-form-of-passive? schema-name)
              (push `(by-v/r . ,s-v/r) substitution-map)
              (assign-subcategorization category word::|by| s-v/r s-var))))

        (when obj-pat
          (let ((o-var (subcat-variable obj-pat))
                (o-v/r (subcat-restriction obj-pat)))
            (push `(theme-slot . ,o-var) substitution-map)
            (push `(theme-v/r . ,o-v/r) substitution-map)
            (register-variable category o-var :object-variable)
            (register-variable category optional-object :optional-object)
            (register-variable category
                               (mapcar #'(lambda(prep)
                                           (resolve (string-downcase prep)))
                                       loc-pp-complement)
                               :loc-pp-complement)))

        (when c  ;; complement, e.g. "reported that ..."
          (let* ((var (variable/category c category))
                 (v/r (var-value-restriction var)))
            (push `(comp-slot . ,var) substitution-map)
            (push `(comp-v/r . ,v/r) substitution-map)
            (register-variable category var :complement-variable)))

	(when m-pat ;; modifier, normally to a head noun
          (let ((m-var (subcat-variable m-pat))
                (m-v/r (subcat-restriction m-pat)))
            (unless m-var (error "No ~a variable associated with ~a"
                                 m-pat category))
            (push `(modifier-slot . ,m-var) substitution-map)
            (push `(modifier-v/r . ,m-v/r) substitution-map))))

      (when prep ;; preposition 'owned' by the verb, appears
        ;; immediately after the verb, making it effectively
        ;; a compound verb name
        (apply-preposition verb prep category))) ;; end dolist
    (register-variable category adjp-complement :adjp-complement)
    (when noun ;; a noun can just expect to get all the pp's w/o an etf
      (unless (assq :common-noun word-map)
        ;; if it's on the map then the realization machinery will expand it
        (when (consp noun)
          ;; Check that it's marking an irregular plural
          (unless (= 3 (length noun))
            (error "Illformed irregular noun spec: not three items long"))
          (unless (and (keywordp (second noun))
                       (memq (second noun) *valid-keywords-for-irregular-word-forms*))
            (error "Unknown keyword in irregular noun spec~%~a" noun)))

        (let* ((word-string (if (consp noun) (car noun) noun))
               (word (resolve/make word-string))
               (special-cases (when (consp noun) (cdr noun)))
               (cn-rules (make-cn-rules/aux word category category
                                            special-cases)))
          (make-corresponding-mumble-resource word :common-noun)
          (add-rules-to-category category cn-rules))))

    (when adj
      ;; Adjectives are analyzed as being able to take subjects and/or objects
      ;; as well as subcategorizations ('slots')
      (unless (assq :adjective word-map)
        (let* ((word (resolve/make adj))
               (adj-rules (make-rules-for-adjectives word category category)))
          (make-corresponding-mumble-resource word :adjective)
          (add-rules-to-category category adj-rules))))

    (when (or etf substitution-map word-map)
      ;;  (push-debug `(,category ,etf ,substitution-map ,word-map))
      ;; if we go in here for just a noun or an adjective,
      ;; there may be nothing for this call to do
      (apply-rdata-mappings category etf
                            :args substitution-map
                            :word-keys word-map))

    (add-subcats-to-rdata category)

    (when mumble
      (when *build-mumble-equivalents*
        (decode-mumble-spec category mumble)))

    category))

;;;------------------------------------------------
;;; Designated interesting variables in a category
;;;------------------------------------------------

(defun register-variable (category variable grammatical-relation)
  (setf (get-tag grammatical-relation category) variable))

(defmethod subject-variable (label)
  (declare (ignore label)))
(defmethod subject-variable ((e edge))
  (subject-variable (edge-referent e)))
(defmethod subject-variable ((c category))
  (or (get-tag :subject-variable c)
      (find-subcat-variable :subject (get-ref-subcategorization c))))
(defmethod subject-variable ((i individual))
  (or (get-tag :subject-variable (car (indiv-type i)))
      (find-subcat-variable :subject i)))

(defmethod object-variable (label)
  (declare (ignore label)))
(defmethod object-variable ((e edge))
  (object-variable (edge-referent e)))
(defmethod object-variable ((c category))
  (or (get-tag :object-variable c)
      (find-subcat-variable :object (get-ref-subcategorization c))))
(defmethod object-variable ((i individual))
  (or (get-tag :object-variable (car (indiv-type i)))
      (find-subcat-variable :object (get-ref-subcategorization i))))

(defmethod thatcomp-variable (label)
  (declare (ignore label)))
(defmethod thatcomp-variable ((e edge))
  (thatcomp-variable (edge-referent e)))
(defmethod thatcomp-variable ((c category))
  (find-subcat-variable :thatcomp (get-ref-subcategorization c)))
(defmethod thatcomp-variable ((i individual))
  (find-subcat-variable :thatcomp (get-ref-subcategorization i)))

(defmethod complement-variable ((c category))
  (get-tag :complement-variable c))


;;;---------------------------------------------------------------
;;; looking for and removing unwanted definitions via their rules
;;;---------------------------------------------------------------

(defun find-form-cfr (word form)
  (when (rule-set-p (rule-set-for word))
    (loop for cfr in (rs-single-term-rewrites (rule-set-for word))
      when (eq form (cfr-form cfr))
      do (return cfr))))

(defun delete-noun-cfr (word)
  (when word
    (let ((noun-cfr (find-form-cfr word category::common-noun)))
      (when noun-cfr
        (delete/cfr noun-cfr)))))

(defun delete-verb-cfr (word)
  (when word
    (let ((verb-cfr (or
                     (find-form-cfr word category::verb)
                     (find-form-cfr word category::verb+ed)
                     (find-form-cfr word category::verb+ing))))
      (when verb-cfr
        (delete/cfr verb-cfr)))))

(defun delete-adj-cfr (word)
  (when word
    (let ((adj-cfr (find-form-cfr word category::adjective)))
      (when adj-cfr
        (delete/cfr adj-cfr)))))


(defun find-single-unary-cfr (word)
  (let ((rs (rule-set-for word)))
    (when rs
      (let ((single-rewrites (rs-single-term-rewrites rs)))
        (when single-rewrites
          ;;/// check for there being more than one?
          (car single-rewrites))))))




        
#| The target is a call to apply-realization-scheme or an open-coded equivalent.
The key part is the mapping, which is constructed by assemble-scheme-form which
takes the arg-to-substitute that were assembled as special-case combinations
in the def-term routines (e.g. def-subj-theme-term). 

The map of the schema, e.g.
(define-realization-scheme svo transitive
  :head :verb
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)))

Is specialized by the values provided by the def-term routine, e.g.
     :args `((subj-slot . ,subj-slot)
             (theme-slot . ,theme-slot)
             (subj-v/r . ,subj-v/r)
             (theme-v/r . ,theme-v/r)))

The schema of the etf expect at mapping from their parameters and labels
to variables (for the parameters) and categories (for the labels). 
Or to the category of the realization (for :self) or a word for any string.

The cdr's of the schema maps coresppond to the car's of the driver's map.
The process in assemble-schema-form is driven by walking down the schema's
map, pair by pair. So we have to have all of the terms that the schema
expects, but we could have more if we wanted.

|#

#| "define-realization" is too good a name to waste.
   I don't -think- these are being loaded. At some point they should be
   changed over or treated differentl
ddm$ grep "(define-realization "  **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
interface/workbench/define-rule1.lisp:           ~%(define-realization ~A~
grammar/model/dossiers/change-in-amount-verbs.lisp:(define-realization to-money
grammar/model/dossiers/co-rules.lisp:(define-realization at-company
grammar/model/dossiers/co-rules.lisp:(define-realization comma-company-descriptor
grammar/model/dossiers/co-rules.lisp:(define-realization company
grammar/model/dossiers/location-descriptions.lisp:(define-realization location-phrase
grammar/model/dossiers/new-rules.lisp:(define-realization position-at-co
grammar/model/dossiers/new-rules.lisp:(define-realization company
grammar/model/dossiers/new-rules.lisp:(define-realization for-company-activity
grammar/model/dossiers/new-rules.lisp:(define-realization at-company
grammar/model/dossiers/new-rules.lisp:(define-realization for-company-activity
grammar/model/dossiers/new-rules.lisp:(define-realization in-financial-data
grammar/model/dossiers/new-rules.lisp:(define-realization company
grammar/model/dossiers/new-rules.lisp:(define-realization title
grammar/model/dossiers/new-rules.lisp:(define-realization company
grammar/model/dossiers/new-rules.lisp:(define-realization company
interface/workbench/def-rule/save.lisp:          "~%(define-realization ~A~
interface/workbench/def-rule/save1.lisp:          "~%(define-realization ~A~
grammar/model/core/time/anaphors1.lisp:;(define-realization calculated-day pre-verb-adverb
grammar/model/sl/ISR/draft-lexicon.lisp:(define-realization 
grammar/model/sl/PCT/person+title.lisp:(define-realization has-title |#


    

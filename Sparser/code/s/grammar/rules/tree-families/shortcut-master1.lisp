;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "shortcut-master"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  1.0 December 2014

;; Initiated 9/14/14 to make more flexible, complete shortcuts.
;; 11/11/14 added keyword for obo-id.
;; 1.0 (12/13/14) totally made over to simplify everything down
;;  to one two routines. 1/5/15 Refactored a bit to handle
;;  nouns and adjectives without ETF. 

(in-package :sparser)

;;;------------------
;;; valid parameters
;;;------------------

(defparameter *def-realization-keywords*
  '(:verb :noun :adj :etf :s :o :c :m
    :binds :realization
    :prep :by
    :as :at :for :from :in :of :on :to :through))

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

(defmacro def-term (name &rest parameter-plist)
  ;;/// simplest data checks on the minimal args
  `(def-term/expr ',name ',parameter-plist))

(defun def-term/expr (name parameter-plist)
  (apply #'decode-def-term-call name parameter-plist))


(defmacro def-realization (category-name &rest key-value-pairs)
  `(define-realization ',category-name ',key-value-pairs))

(defun define-realization (category-name key-value-pairs)
  (push-debug `(,category-name ,key-value-pairs))
  (let ((category (category-named category-name :break-if-undefined)))
    (check-for-valid-def-realization-keywords key-value-pairs)
    (apply #'decode-realization-parameter-list category key-value-pairs)
    category))

(defun setup-shortcut-rdata (category key-value-pairs)
  ;; called from decode-category-parameter-list when the rdata
  ;; satisfies includes-def-realization-keyword, which works
  ;; because an ordinary rdata only includes :tree-family, :binding
  ;; and possibly a word specifier.
  (check-for-valid-def-realization-keywords key-value-pairs)
  (apply #'decode-realization-parameter-list category key-value-pairs)
  category)

;;;------------------------------------
;;; decoders that actually do the work
;;;------------------------------------

(defun decode-def-term-call (name 
                             &key super-category
                                  mixin restrict rule-label 
                                  obo-id 
                                  etf verb noun adj
                                  s o c m
                                  prep by
                                  as at for from in of on through to)
  ;; Make the category, then use the independent realization
  ;; machinery to finish it. 
  (labels 
      ((compute-superc-name (verb noun adj)
         (cond
          (verb (super-category-for-POS :verb))
          (noun (super-category-for-POS :noun))
          (adj (super-category-for-POS :adjective))
          (t ;; also :adverb
           (error "Cannot compute super-category: neither ~
                   :verb, :noun, or :adj supplied."))))
       (default-value-restriction (param)
         (case param
           ((:s :o) 'endurant)
           (:c 'event)
           (otherwise "Unexpected paramter: ~a" param)))
       (decode-slot-value (value param)
         (typecase value
           (symbol
            (values value
                    (default-value-restriction param)))
           (cons
            (unless (= 2 (length value))
              (error "More that two elements in the ~a paramter"
                     param))
            (values (first value)
                    (second value)))
           (otherwise
            (error "Unexpected type of paramter value for ~a~
                    ~%  ~a~%  ~a"
                   param (type-of value) value)))))
         
    (let ((superc (or super-category
                      (compute-superc-name verb noun adj)))
          subj-slot subj-var
          obj-slot obj-var )
      #| The category creater need both the variable and
      its value restriction. The realization routine needs
      just the name of the variable, since it will access
      the rest of what it needs from the information on
      the category. There must be at least on variable, which
      we dictate must be :s. 
      This form does not use the bindings field so we read
      that information of our the values given for :s, :o, wtc.
      If the value is a symbol it is taken to be the name
      of the variable and we provide a default value restriction.
      If the value lis a list it should contain just two symbols.
      The first one is the name of the variable, the second one
      is the category of its value restriction. At the moment
      there is a provision for up to three variables. |#
      (multiple-value-setq (subj-slot subj-var)
        (decode-slot-value s :s))
      (when o
        (multiple-value-setq (obj-slot obj-var)
          (decode-slot-value o :o)))

      (let ((category (create-category-for-a-term
                            name superc 
                            mixin restrict rule-label
                            subj-slot subj-var
                            obj-slot obj-var
                            ;;goal-slot goal-var
                            )))
        (decode-realization-parameter-list category
          :etf etf
          :verb verb
          :noun noun
          :adj adj
          :s subj-slot  
          :o obj-slot
          :c c
          :m m
          :prep prep  :by by
          :as as :at at :for for :from from :in in :of of :on on :through through :to to)

        (when obo-id
          (bind-variable 'uid obo-id category))
        category))))


(defun decode-realization-parameter-list (category
                                          &key etf verb noun adj
                                               s o c m ;; arguments
                                               prep ;; owned preposition
                                               by ;; for passive
                                               as at for from in of on through to ;; prepositions
                                               )
  (if etf
    (typecase etf
      (cons)
      (symbol (setq etf (list etf)))
      (otherwise (error "The :etf parameter must be a symbol or a list")))
    (unless (or adj noun)
      (error "You must specifiy a realization schema/s using the keyword ':etf'")))

  (let ( substitution-map  word-map )
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
        (when s  ;; subject
          (let* ((var (variable/category s category))
                 (v/r (var-value-restriction var)))
            (push `(subj-slot . ,var) substitution-map)
            (push `(subj-v/r . ,v/r) substitution-map)
            (register-variable category var :subject-variable)

            (when (is-a-form-of-passive? schema-name)
              (let ((by-v/r (or by;; already determined
                                (formulate-by-category v/r))))
                (push `(by-v/r . ,by-v/r) substitution-map)))))

        (when o  ;; direct object
          (let* ((var (variable/category o category))
                 (v/r (var-value-restriction var)))
            (push `(theme-slot . ,var) substitution-map)
            (push `(theme-v/r . ,v/r) substitution-map)
            (register-variable category var :object-variable)))

        (when c  ;; complement, e.g. "reported that ..."
          (let* ((var (variable/category c category))
                 (v/r (var-value-restriction var)))
            (push `(comp-slot . ,var) substitution-map)
            (push `(comp-v/r . ,v/r) substitution-map)
            (register-variable category var :omplement-variable)))

        (when m ;; modifier, normally to a head noun
          (let* ((var (variable/category m category))
                 (v/r (when var (var-value-restriction var))))
            (unless var (error "No ~a variable associated with ~a"
                               m category))
            (push `(modifier-slot . ,var) substitution-map)
            (push `(modifier-v/r . ,v/r) substitution-map)))

        (handle-prepositions category as at for from in of on to through)

        (when prep ;; preposition 'owned' by the verb, appears
          ;; immediately after the verb.
          ;; effectively a compound verb name 
          (apply-preposition verb prep category)))) ;; end dolist

    (when noun ;; a noun can just expect to get all the pp's w/o an etf
      (unless (assq :common-noun word-map)
        ;; if it's on the map then the realization machinery will expand it
        (let ((word (resolve/make noun)))
          (make-cn-rules/aux word category category)))
      (unless etf
        (handle-prepositions category as at for from in of on to through)))
    (when adj
      (unless (assq :adjective word-map)
        (let ((word (resolve/make adj)))
          (make-rules-for-adjectives word category category)))
      (unless etf
        (handle-prepositions category as at for from in of on to through)))

    (push-debug `(,category ,etf ,substitution-map ,word-map))
    ;; (break "look at inputs")
    (apply-rdata-mappings category etf
                          :args substitution-map 
                          :word-keys word-map)

    category))



(defun handle-prepositions (category &optional as at for from in of on to through)
  (when as
    (subcategorize-for-preposition category "as" as))
  (when at
    (subcategorize-for-preposition category "at" at))
  (when for
    (subcategorize-for-preposition category "for" for))
  (when from
    (subcategorize-for-preposition category "from" from))
  (when in
    (subcategorize-for-preposition category "in" in))
  (when of  
    (subcategorize-for-preposition category "of" of))
  (when on 
    (subcategorize-for-preposition category "on" on))
  (when to
    (subcategorize-for-preposition category "to" to))
  (when through
    (subcategorize-for-preposition category "through" through)))


(defun register-variable (category variable grammatical-relation)
  (push-onto-plist category variable grammatical-relation))

(defmethod subject-variable ((c category))
  (get-tag-for :subject-variable c))
(defmethod subject-variable ((i individual))
  (get-tag-for :subject-variable (car (indiv-type i))))
(defmethod subject-variable ((ignore t)) nil)


(defmethod object-variable ((c category))
  (get-tag-for :object-variable c))
(defmethod object-variable ((i individual))
  (get-tag-for :object-variable (car (indiv-type i))))
(defmethod object-variable ((ignore t)) nil)

(defmethod complement-variable ((c category))
  (get-tag-for :complement-variable c))


        
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


    
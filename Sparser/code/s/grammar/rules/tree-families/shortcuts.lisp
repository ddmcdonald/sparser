;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2021 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "shortcuts"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  February 2021


;; Started 4/3/09. Modeled on [model;core:kinds:object] Modified
;; 7/16/09: added modifier to np-head Modified 7/21/09: replaced
;; 'where' in sv-location with 'location' to avoid inconsistency in
;; output Modified 7/23/09: added additional bootstrap rule to svo to
;; treat "it" as an individual, also added spatial-orientation to
;; sv-location, and interjection 9/21/09 Renaming ETF in
;; np-head. Fanout from also loading more diverse set of nps. 2/16/10
;; Added synonyms code. 8/8/11 Working out a macro to generate 'type'
;; categories. 9/6 folded :rule-label into the macro. 9/23 adjusted
;; adverbials to fit changes to the ETF. 9/26 expunged spatial-orientation
;; by removing sv-spatial-prep-marked-o (which had no applications) and
;; making sv-location mostly meaningless by duplicating the problematic
;; case. 8/19/13 Added head-noun as first of possibly many short-cuts
;; for already defined categories. 1/30/14 Started cleaning them up. 
;; 5/28/14 Pulled the rule-adders to uniform place. 6/4/14 added vo. 
;; 6/6/14 Worked out a set of macros to make shortcuts more consistent
;; and compact. 6/9/14 Starting make over, including removing shortcuts
;; that are only used in sl/checkpoint/vocabulary.lisp. 9/14/14 pulled
;; out the macros to their own file. 11/7/14 added a :prehead-modifier
;; standalone rule to svo/passive/nominal. 
;; remove broken new rule for vo/passive/nominal/expr.
;; 1.0 1/5/15 Radical overhaul to make things uniform by taking the
;;  full set of parameters. Also to remove dead wood. 
;; 4/24/17 Added def-ided-indiv and related functions 

(in-package :sparser)

#| We need models for single words (like countries), for words
that are head of relations (like "increase"), and for some combinations
(like adjective+adverb). In every case we are creating a category
based on the word, with a superclass and the set of slots (variables) 
they require. All of that can be specified, or else a reasonable set
of defaults will be used. There is also the possibility of mixins, 
overriding the rule label, distinguishing the category name, and
broadly speaking doing for you all the things you might do by hand.
|#
;;;--------------
;;; single words
;;;--------------

;;--- Synonyms

(defmacro define-named-individual-with-synonyms (category-name word-list
                                                 &key brackets no-morph)
  "Create an instance of the named category. 
   The category must bind a name variable and an aliases variable.
   The new individual is made the referent of all of its aliases, which are
   defined according to the realization specification on the category.
   Returns the individual."
  ;; To do:
  ;; -- record the rules.
  ;; -- mark the synonyms as such.
  ;; -- figure out more clever way to do :no-morph, e.g. for ("kilometer" "km")
  ;;    And this might just mean 'no plural' -- see *inhibit-constructing-plural*
  ;; -- need to allow for irregulars
  ;; -- Decide whether it makes sense to specify brackets if we can
  ;;    get realization information from the category
  `(define-named-individual-with-synonyms/expr ',category-name ',word-list ',brackets ',no-morph))

(defun define-named-individual-with-synonyms/expr (category-name word-list &optional brackets no-morph)
  (declare (ignore brackets no-morph))
  (let* ((category (category-named category-name :break-if-undefined))
         (i (find-or-make-individual category :name (car word-list)))
         (pos (car (rdata-head-words (first (cat-realization category))))))
    (dolist (word (cdr word-list))
      (add-rules (make-rules-for-head pos (resolve/make word) category i) i))
    ;; How do we record these synonyms with the instance given that this scheme
    ;; (taken from unit-of-measure) makes an instance for each case but the
    ;; realization information is kept with the category? We can either change
    ;; the encoding scheme (but it's ubiquitous) or devise some other channel
    ;; for organizing the information.
    i))


(defparameter *uid-to-individual* (make-hash-table :size 10000 :test #'equal))
(defparameter *id-mult-defs* nil) ;; to aid in definition consolidation later

(defmacro def-indiv-with-id (category-name word id &key name members adj synonyms plural
                                                        no-plural maintain-case)
  `(define-individual-with-id ',category-name ,word ,id ,.(when name `(:name ,name))
                              ,.(when members `(:members ',members))
                              ,.(when adj `(:adj ',adj))
                              ,.(when synonyms `(:synonyms ',synonyms))
                              ,.(when plural `(:plural ',plural))
                              ,.(when no-plural `(:no-plural ',no-plural))
                              ,.(when maintain-case `(:maintain-case ',maintain-case))))

(defun define-individual-with-id (category-name word id &key name members adj synonyms plural
                                                             no-plural  maintain-case pos)
  "This creates individuals with UIDs, given a category, a word, and
 an ID. There are also keyword options for including a name, members,
 an adjectival form, synonyms, unusual plurals (e.g. rhinoviridae for
 rhinovirus), specifying that this should not create plurals, whether
 to maintain case for the word, and what part of speech this should
 be (defaults to common noun)"
  (assert (and category-name word id))
  (when (gethash id *uid-to-individual*)
    (push `(,id ,category-name ,word ,.(when name `(:name ,name))) *id-mult-defs*))
  (let* ((base-word (if maintain-case
                        word
                        (string-downcase word)))
         (category (category-named category-name :break-if-undefined))
         (i (or (gethash id *uid-to-individual*)
                (setf (gethash id *uid-to-individual*)
                      (let ((ind (find-or-make-individual category :uid id)))
                        (when (consp members)
                          (setq ind
                                (set-family-members ind members)))
                        (if name
                            (bind-dli-variable :name name ind)
                            ;ind
                            (bind-dli-variable :name base-word ind)
                            )))))
         (word-list `(,base-word ,word ,.(when name `(,name))
                                 ,.(when synonyms `(,synonyms)))))
    (add-rules-cond-plural base-word category i :plural plural :no-plural no-plural)
    (unless (equal (subseq word 1) (subseq base-word 1))
      ;; if there were capitals beyond the initial letter in the original word, we want to actually make rules for that word so that tests for whether it has rewrites are correct
      (add-rules-cond-plural word category i :plural plural :no-plural no-plural))
    (when (and name 
               (not (equal name base-word))) ;; if the name is the same as the base-word, there's nothing to do
      (add-rules-cond-plural name category i :no-plural no-plural)) 
    (when adj (add-rules (make-rules-for-head :adjective (resolve/make (pname adj)) 
                                              category i)
                         i))
    (when synonyms (loop for s in synonyms
                         do (add-rules-cond-plural s category i :no-plural no-plural)))
    (when (itypep i 'biological)
      (add-bio-synonyms id word-list))
    (stipulate-simple-mumble-resource i base-word :common-noun)
    ;; putting it before we add the familiy members has a chance of matching
    ;; what's on the rules. This members statement should be much earlier
    ;; to i for the rules has it. 
    i))

(defun stipulate-simple-mumble-resource (i s-word s-pos)
  "In define-individual-with-id, where there is a provision for synonyms, the base
   word and every synonym is processed by calling make-rules-for-head, which is
   about as high a def function as we have to get the job done (e.g. write the
   needed unary rules). Make-rules-for-head is also the locus of the action that
   sets up the mapping to lexicalized phrases used to realized the individual.
   This mapping is a hash-table, last setf wins. This stipulate function is called
   from a point where we know that no other calls to make-rules-for-head will
   occur. Its purpose is to fix things up by looking up the lexicalized phrase
   for the base word (i.e. 'MEK' rather than 'mitogen-activated protein kinase kinase')
   and making the mapping point to it."
  (let* ((m-word (get-mumble-word-for-sparser-word s-word s-pos))
         (m-pos (mumble-pos s-pos))
         (lp (m::get-lexicalized-phrase m-word m-pos)))
    (assert lp (i s-word) "No lexicalized phrase was defined for ~s on ~a"
            (pname s-word) i)
    (m::record-lexicalized-phrase i lp m-pos)
    lp))

(defun get-head-ref-from-rule (s-t-r-rule)
  (let ((ref (cfr-referent s-t-r-rule)))
    (if (consp ref) ;; happens when the ref word is a collection (e.g. "RNAs") and maybe other cases?
        (second (assoc :head ref))
        ref)))

(defparameter *inhibited-plurals* nil "Collects these for later review")

(defun add-rules-cond-plural (word category ind &key plural no-plural (pos :common-noun))
  "Given a word, category, and individual, add-rules to the individual
for that word, and if no-plural or if the plural-version of the word
resolves, it blocks the plural (and in the latter case adds the word
to the list of *inhibited-plurals* so we can troubleshoot later and
see if there are issues"
  (let* ((plural-word (unless no-plural (plural-version word)))
         (defined-plural? (and (resolve plural-word)
                               (single-term-rewrite? plural-word :no-warn t)))
         (defined-plural-sc (when defined-plural?
                              (if (name-is-cat-p plural-word)
                                  (cat-name (second (super-categories-of (name-is-cat-p plural-word))))
                                  (cat-name (category-of (get-head-ref-from-rule (car (single-term-rewrite? plural-word  :no-warn t))))))))
         (*inhibit-constructing-plural* 
          (or no-plural
              (when defined-plural?
                (push `(,word :new-cat ,(cat-name category) :old-cat ,defined-plural-sc ,plural-word)  
                      *inhibited-plurals*)))))
    (declare (special *inhibit-constructing-plural*))
    (if plural
        (add-rules (make-rules-for-head pos (resolve/make word) category ind :plural plural) ind)
        (add-rules (make-rules-for-head pos (resolve/make word) category ind) ind))))

    

;; early version of 'noun'
(defmacro common-noun (name
                &key noun 
                     super specializes index
                     binds realization
                     instantiates mixins restrict rule-label 
                     obo-id)
  (typecase name
    (symbol)
    (string  ;; (np-head "S338" :super 'residue-on-protein)
     (setq noun name) ;; preserve it
     (setq name (name-to-use-for-category name)))
    (cons
     (if (stringp (car name))
       (then
        (setq noun name)
        (setq name (name-to-use-for-category (car name))))
       (error "name parameter is a list of unexpected form: ~a" name)))
    (otherwise
     (error "Unexpected type for name parameter in noun shortcut: ~a~%~a"
            (type-of name) name)))

  (when (stringp name)
    (setq noun name) ;; preserve it
    (setq name (name-to-use-for-category name)))

  `(common-noun/expr ',name
         :noun ',noun
         :super ',super :specializes ',specializes :index ',index
         :binds ',binds :realization ',realization
         :instantiates ',instantiates :mixins ',mixins 
         :restrict ',restrict :rule-label ',rule-label
         :obo-id ,obo-id))


(defun common-noun/expr (name
                  &key noun
                       super specializes index
                       binds realization
                       instantiates mixins 
                       restrict rule-label obo-id)
  (when (stringp name)
    (setq noun name)
    (setq name (name-to-use-for-category name)))
  (unless (or super specializes)
    (setq  specializes (super-category-for-POS :noun)))
  (when binds
    (unless realization
      (error "Variables were specified (:binds) but not a realization")))
  (when realization
    (unless (or binds 
                ;; should actually check for inherited categories as well
                (and super (cat-slots (category-named super)))
                (and specializes (cat-slots (category-named specializes))))
      (error "A realization was specified but no variables")))

  #+ignore(unless index
    (setq index '(:temporary)))
; > Error: No data in index field, (temporary)
; >        from which to establish operations
; > While executing: decode-for-find-&-index
    
  (let ( category )
    (cond
     (binds ;; this means that we're doing the equivalent of
      ;; define-category, with the shortcut realization. 
      ;; If we exposed the realization parameters we could 
      ;; determine what the slot and value restrictions were
      ;; as in decode-def-term-call and use the category making 
      ;; function. That doesn't seem reasonable, so falling 
      ;; back to a standard form
      (let ((form
            `(define-category ,name
               :instantiates ,(or instantiates :self)
               :specializes ,(or super specializes)
               :rule-label ,rule-label
               :binds ,binds
               ;;:index ,index
               :restrict ,restrict
               :mixins ,mixins
               :realization ,realization)))
        (setq category (eval form))))
     (t
      ;; Essentially the same thing, but with no bindings,
      ;; just the inherited ones
      (let ((form
             `(define-category ,name
                :instantiates ,(or instantiates :self)
                :specializes ,(or super specializes)
                :rule-label ,rule-label
                :index ,index
                :restrict ,restrict
                :mixins ,mixins
                :realization
                  (:common-noun ,noun))))
        (setq category (eval form)))))
    (when obo-id
      (setq category (bind-dli-variable 'uid obo-id category)))
    category))


;;--- NP patterns


(defmacro noun (name
                &key noun 
                     super specializes index
                     binds realization documentation
                     instantiates mixins restrict rule-label 
		  obo-id)
  (cond
    ((and super specializes)
     (lsp-break "defining noun with both :super ~s  and :specialize ~s"
		super specializes))
    (t (setq super (or super specializes))))
  (typecase name
    (symbol)
    (string  ;; (np-head "S338" :super 'residue-on-protein)
     (setq noun name) ;; preserve it
     (setq name (name-to-use-for-category name)))
    (cons
     (if (stringp (car name))
       (then
        (setq noun name)
        (setq name (name-to-use-for-category (car name))))
       (error "name parameter is a list of unexpected form: ~a" name)))
    (otherwise
     (error "Unexected type for name parameter in noun shortcut: ~a~%~a"
            (type-of name) name)))

  (when (stringp name)
    (setq noun name) ;; preserve it
    (setq name (name-to-use-for-category name)))

  `(noun/expr ',name
         :noun ',noun
         :super ',super ;;:specializes ',specializes no longer use this
	 :index ',index
         :binds ',binds
         :documentation ,documentation
         :realization ',realization
         :instantiates ',instantiates
         :mixins ',mixins
         :restrict ',restrict :rule-label ',rule-label
         :obo-id ,obo-id))

;;/// carbon copy of noun, but a function rather than a macro
(defun np-head (name 
                &key noun super specializes index
                     binds realization documentation
                     instantiates mixins restrict rule-label 
		  obo-id)
   (cond
    ((and super specializes)
     (lsp-break "defining noun with both :super ~s  and :specialize ~s"
		super specializes))
    (t (setq super (or super specializes))))
   
  (when (stringp name) ;; (np-head "S338" :super 'residue-on-protein)
    (setq noun name) ;; preserve it
    (setq name (name-to-use-for-category name)))

  (noun/expr name
         :noun noun
         :super super ;;:specializes specializes
	 :index index
         :binds binds :realization realization
         :documentation documentation
         :instantiates instantiates :mixins mixins
         :restrict restrict :rule-label rule-label
         :obo-id obo-id))


(defun noun/expr (name
                  &key noun
		    super ;; specializes
		    index
		    binds realization documentation
		    instantiates mixins 
		    restrict rule-label obo-id)
  (declare (ignore rule-label instantiates index))
  (when (stringp name)
    (setq noun name)
    (setq name (name-to-use-for-category name)))
  (unless super
    (setq  super (super-category-for-POS :noun)))

  (let* ((form
	  `(define-category ,name
	       :instantiates ,(or instantiates :self)
	       :specializes ,super
	       :rule-label ,rule-label
	       :binds ,binds
	       ;;:index ,index
	       :restrict ,restrict
	       :mixins ,mixins
               :documentation ,documentation
	       :realization
	       ,(if noun `(:noun ,(if (and (consp noun)
                                           (not (member :plural noun)))
				      (car noun)
				      noun)
				 ,.realization)
		    realization)))
	 (category (eval form)))
    (when obo-id
      (setq category (bind-dli-variable 'uid obo-id category)))
    (dolist (string (when (and (consp noun)
                               (not (member :plural noun)))
                      (cdr noun)))
      (let ((rule-form
             `(def-synonym ,(cat-name category) (:noun ,string))))
	(eval rule-form)))
    category))




(defmacro adj (string
               &key adj
                 super specializes ; alternatives
                 mixins 
                 binds
                 realization
                 ;; restrict -- no counterpart in define-adjective
                 rule-label
                 documentation)
  "Feeder to define-adjective, which is a feeder to define-function-term
   so that we can have uniform definitions and behavior across all our
   adjectives. This is more restricted than the original 2015 version:
   The category that's created for the adjective has the same name as
   the adjective and can't be overridden, and while you can add variables
   using ':binds' you can't restrict existing categories. To do that use
   the full define-category form with an :adj in the realization."
  (cond
    ((and super specializes)
     (lsp-break "defining adjective with both :super ~s  and :specialize ~s"
		super specializes))
    (t (setq super (or super specializes))))

  `(define-adjective ,string
       :super-category ',super
       :mixin ',mixins
       :binds ',binds
       :rule-label ',rule-label
       :realization ',realization
       :documentation ,documentation))




(defmacro adv (name
               &key adv
                 super specializes
                 form mixins instantiates
                 binds realization
                 restrict rule-label 
		 obo-id
                 documentation)
  (cond
    ((and super specializes)
     (lsp-break "defining adverb with both :super ~s  and :specialize ~s"
		super specializes))
    (t (setq super (or super specializes))))
  (typecase name
    (string ;; name is taken from the string
     (unless adv ;; is there a good reason for them to be different?
       (setq adv name))
     (setq name (name-to-use-for-category name)))
    (symbol 
     (unless adv
       (error "You have to specify the word for the noun (:adj)")))
    (otherwise
     (error "Bad type for 'name'. It should be a string or a symbol")))

  `(adv/expr ',name
        :adv ',adv
        :super ',super ;; :specializes ',specializes
        :binds ',binds :realization ',realization
        :instantiates ',instantiates :mixins',mixins
        :restrict ',restrict :rule-label ',rule-label
        :obo-id ,obo-id))

(defun adv/expr (name
                 &key adv
		   super specializes 
		   binds realization
		   instantiates mixins
		   restrict rule-label obo-id)
  (declare (ignore rule-label instantiates))
  (unless (or super specializes)
    (setq specializes (super-category-for-POS :modifier)))
  (when binds
    (unless realization
      (error "Variables were specified (:binds) but not a realization")))
  (let* ((form
	  `(define-category ,name
	       :specializes ,super
	       :binds ,binds
	       :restrict ,restrict
	       :mixins ,mixins
	       :realization
	       ,(if adv `(:adverb ,(if (consp adv) (car adv) adv)
			  ,.realization)
		    realization)))
	 (category (eval form)))
    (when obo-id
      (setq category (bind-dli-variable 'uid obo-id category)))
    (dolist (string (when (consp adv)(cdr adv)))
      (let ((rule-form `(def-cfr/expr ',(cat-name category) '(,string)
			  ;; can we guess it's a common noun for form?
			  :referent ,category)))
	(eval rule-form)))
    category))



;;--- Adjective/adverb pairs

(defun adj/adv (adjective adverb &key super-category)
  "This defines a single concept with realizations (rules) for both
   and adjective form and an adverb form. The category name is based on
   the adjective version"
  (unless super-category
    (error "You must supply a super category for any multi part-~
            of-speech def form~%adjective/adverb: ~a ~a"
           adjective adverb))
  (with-name-and-superc adjective super-category :dummy
    (let ((adj (resolve/make adjective))
          (adv (resolve/make adverb)))
      (let* ((form
              `(define-category ,name
                 :instantiates :self
                 :specializes ,superc
                 :mixins (adjective-adverb)
                 :bindings (adjective ,adj adverb ,adv)))
             (category (eval form)))
        ;; Parameters to these two are (pos word category referent)
        ;; and they do the bracket assignment. 
        (make-rules-for-head :adjective adj category category)
        (make-rules-for-head :adverb adv category category)

        #+ignore ;; call to define-individual can't find a 'word'
        ;;  variable on the constructed category
        (let* ((instance-form `(define-individual ',name
                                   :word ,adj)) ; arbitrary choice
               (i (eval instance-form))
               (rules (get-rules category)))
          (break "rules: ~a" rules)
          (loop for r in rules
             do (setf (cfr-referent r) i))
          category)))))



(defun define-simultaneous-adjective-adverb (string
                                             &key super-category)
  "One word but with two rules, one marked as an adverb and the
   other as an adjective"
  (let ((superc (or super-category
                    'modifier))
        (word (resolve/make string))
        (category-name (name-to-use-for-category string)))
    (let* ((form
            `(define-category ,category-name
               :instantiates :self
               :specializes ,superc
               :bindings (word ,word)))
           (category (eval form)))
      (let* ((instance-form `(define-individual ',category-name
                                 :word ,word))
             (i (eval instance-form)))
        (let* ((adj-rule
                (define-cfr category (list word)
                  :form (category-named 'adjective)
                  :referent i))
               (adv-rule
                (define-cfr category (list word)
                  :form (category-named 'adverb)
                  :referent i))
               (rules (list adj-rule adv-rule)))
          (add-rules rules category)
          (values category
                  i
                  rules))))))
            

(defun define-simultaneous-adverb-subord-conj (string
                                                  &key super-category)
  "One word but with two rules, one marked as an adverb and the
   other as a subordinate conjunction"
  (let ((superc (or super-category
                    'conjunction)) ;/// motivation for abstractions
        (word (resolve/make string))
        (category-name (name-to-use-for-category string)))
    (let* ((form
            `(define-category ,category-name
               :instantiates :self
               :specializes ,superc
               :bindings (word ,word)))
           (category (eval form)))
      (let* ((instance-form `(define-individual ',category-name
                                 :word ,word))
             (i (eval instance-form)))
        (let* ((sub-conj-rule
                (define-cfr category (list word)
                  :form (category-named 'subordinate-conjunction)
                  :referent i))
               (adv-rule
                (define-cfr category (list word)
                  :form (category-named 'adverb)
                  :referent i))
               (rules (list sub-conj-rule adv-rule)))
          (add-rules rules category)
          (values category
                  i
                  rules))))))




;;--- verb patterns

;; original 
(defun sv (string-for-verb)
  (let* ((name (name-to-use-for-category string-for-verb))
         (form
          `(define-category ,name
	     :instantiates :self ;; place for generalization
             :specializes perdurant
             :binds ((subject . individual))
             :realization
             (:tree-family intransitive
	          :mapping ((s . perdurant)
                        (vp . perdurant)
                        (np/subject . endurant)
                        (agent . subject))
              :verb ,string-for-verb))))
    (eval form)))


             
(defun svo (string-for-verb)
  (let* ((name (name-to-use-for-category string-for-verb))
         (form
          `(define-category ,name
	      :instantiates :self ;; place for generalization
             :specializes perdurant
             :binds ((subject . endurant)
                     (object . endurant))
             :realization
             (:tree-family transitive
	      :mapping ((s . process)
                        (vp . process)
                        (vg . :self)
                        (np/subject . endurant)
                        (np/object . endurant)
                        (agent . subject)
                        (patient . object))
              :verb ,string-for-verb)))
         (category (eval form)))
    (let* ((bootstap-rule
            `(def-cfr event (,name endurant)
               :form vp
               :referent (:head left-edge
                          :bind (object right-edge))))
           (rule (eval bootstap-rule)))
      (add-rule rule category)
      name)
    (let* ((bootstap-rule
            `(def-cfr event (,name pronoun/inanimate)
	       :form vp
               :referent (:head left-edge
			  :bind (object right-edge))))
           (rule (eval bootstap-rule)))
      (add-rule rule category)
      name)))


(defun define-template-verb (string &key infinitive  ;; "to give"
                                      tensed/singular    ;; "he gives"
                                      tensed/plural      ;; "they give"
                                      past-tense         ;; "they gave"
                                      past-participle    ;; "they have given"
                                      present-participle ;; "they are giving"
                                      ((:etf tree) 'svo-passive)
                                      ((:subcats mixin) 'action-verb))
  "Auto-define a verb to be used in a Krisp template. 
   This is like the other verb-based shortcuts here except
   that it's not using the circa 2012/15 shortcut value restriction
   patterns (no v/r at all) or explicit realizations (uses current
   shorter verson),and it's real focus is on getting the correct
   mumble-data created. Returns not only the category but the set
   of parameters to use (since that depends on the eft)."
  (when past-tense (error "Extend the function to take irregulars"))
  (unless (and (eq tree 'svo-passive) (eq mixin 'action-verb))
    (error "Do etf/mix vars properly"))
  (let ((*break-on-pattern-outside-coverage?* t)) ;; block duplicates
    (declare (special *break-on-pattern-outside-coverage?*))
    (let* ((name (name-to-use-for-category string))
           ;; writing these out explicitly to put off task
           ;; of doing them for real. 
           (variables
            '((actor) (patient)))
           (name-of-phrase 'svo)
           (parameter-map '(:s actor :o patient))
           (p/v-alist '((s . actor) (o . patient)))
           (form
            `(define-category ,name
               :instantiates nil
               :specializes perdurant
               :binds ,variables
               :lemma (verb ,string)
               :realization
               (:mumble (,name-of-phrase ,@parameter-map))))
           (category (eval form)))
      (values category p/v-alist))))




;;//// 9/14/14 This scheme doesn't work. The bracket judgements
;; completely close off the verb on an mvb, which hides it from
;; the check on occurances prepositions
(defun sv-prep (verb preposition)
  "Intransitive with an associated preposition, e.g. 'move along'"
  (unless (and (stringp verb) (stringp preposition))
    (error "Arguments must be string giving the base for of words"))
  (let* ((name (name-to-use-for-category 
		(string-append verb "/" preposition)))
         (form
          `(define-category ,name
             :instantiates :self ;; place for generalization
             :specializes perdurant
             :binds ((subject . individual))
             :realization
             (:tree-family intransitive-with-preposition
	      :mapping ((s . process)
                        (vp . process)
                        (vg . :self)
                        (np/subject . endurant)
                        (prep . ,preposition)
                        (agent . subject))
              :verb ,verb)))
         (category (eval form)))
    category))


;;//// Illustrative case. Probably wouldn't do it this way.
;; look at the ETF
(defun sv-location (string-for-verb)
  (let* ((name (name-to-use-for-category string-for-verb))
	 (form
	  `(define-category ,name
               :instantiates :self ;; place for generalization
               :specializes perdurant
               :binds ((subject . endurant)
                       (location . location)) ;; where . location
	     :realization (:tree-family transitive-location
	                   :mapping ((s . process)
                                     (vp . process)
                                     (vg . :self)
                                     (loc1 . deictic-location)
                                     (loc2 . location)
                                     (loc3 . location) ;; duh, but
                                     ;; spatial-orientation has gone away
                                     (np/subject . endurant)
                                     (agent . subject)
                                     (location . location))  ;; location . where
                       :verb ,string-for-verb))))
    (eval form)))


;; See dismount in sl/ISR/specifics
;; Assumes the variables are defined on more abstract categories
;; than this one. The subject & object info is for the mapping
(defun c3-sv-optional-o (verb super-category 
                         &key restrict mixins subject object)
  (unless super-category
    (setq super-category 'process))
  (unless subject object
    (error "Need subject and object specified"))
  (let ((subj-v/r (car subject))
        (subj-var (cadr subject))
        (obj-v/r (car object))
        (obj-var (cadr object)))

  (let* ((name (name-to-use-for-category verb))
         (form
          `(define-category ,name
             :instantiates :self
             :specializes ,super-category
             :restrict ,restrict
             :mixins ,mixins
             :realization
               ((:tree-family intransitive
                 :mapping ((agent . ,subj-var)
                           (s . :self)
                           (vp . :self)
                           ;; Needs *edges-from-referent-categories*
                           (np/subject . ,subj-v/r))
                 :verb ,verb)
                (:tree-family subj/verb+np
                 ;; C3 left to right parsing
                 :mapping ((object . ,obj-var)
                           (s . :self)
                           (np/object . ,obj-v/r))))) ))
    (eval form))))



(defmacro svcomp (verb super-category &key subject complement)
  `(svcomp/expr ,verb ',super-category 
                :subject ',subject :complement ',complement))
(defun svcomp/expr (verb super-category &key subject complement)
  (with-name-and-superc verb super-category :verb
    (with-subject subject
      (with-complement complement
        (let ((form
               `(define-category ,name
                  :instantiates :self
                  :specializes ,superc
                  ;; :restrict  :mixins  :rule-label
                  :binds ((,subj-slot ,subj-var)
                          (,comp-slot ,comp-var))
                  :realization
                    (:tree-family that-complement
                     :mapping ((result . :self)
                               (agent . ,subj-slot)
                               (theme . ,comp-slot)
                               (s . :self)
                               (np . ,subj-v/r)
                               (vp . :self)
                               (vg . :self)
                               (s/that-comp . ,comp-v/r))
                     :verb ,verb))))
          (eval form))))))


(defun formulate-by-category (base)
  ;; the base is one of the slot-forming expressions 
  (let* ((base-name (etypecase base
                      (symbol base)
                      (cons (car base))
                      (category (cat-symbol base))))
         (by-cat-name (name-to-use-for-category
                       (string-append ':by- base-name))))
    ;; This is what the define-category macro opens up as
    ;; for a trivial category like this
    (cat-symbol (find-or-make-category-object by-cat-name))))

(defmacro svo/passive/nominal (verb nominalization
                               &key super-category agent patient by-category)
  `(svo/passive/nominal/expr ,verb ,nominalization
     :super-category ',super-category :agent ',agent :patient ',patient
     :by-category ',by-category))
(defun svo/passive/nominal/expr (verb nominalization
                                 &key super-category agent patient by-category)
  ;; pattern orginated with "assassinate"
  (with-name-and-superc verb super-category :verb
    (with-agent agent
      (with-patient patient
        (let ((by-cat 
                (if by-category
                  (category-named by-category :break-if-missing)
                  (formulate-by-category agent))))
          
          (let ((form
                 `(define-category ,name
                  :instantiates :self
                  :specializes ,superc
                  ;; :restrict  :mixins  :rule-label
                  :binds ((,agent-slot ,agent-var)
                          (,patient-slot ,patient-var))
                  :realization
                   ((:tree-family passive/with-by-phrase
                     :mapping ((agent . ,agent-slot)
                               (patient . ,patient-slot)
                               (s . :self)
                               (vp . :self)
                               (vg . :self)
                               (np/agent . ,agent-v/r)
                               (np/patient . ,patient-v/r)
                               (by-pp . ,by-cat)
                               (result-type . :self))
                     :verb ,verb)
                    (:tree-family empty-head-of-complement
                     :mapping ((result-type . :self)
                               (of-item . ,agent-slot)
                               (base-np . :self)
                               (complement . ,agent-v/r)
                               (np . :self))
                     :common-noun ,nominalization)
                    #+ignore(:tree-family 
                     :mapping 
                     :common-noun ,nominalization)))))

            (eval form)))))))


(defun passive-premodifier (verb noun slot)
  (push-debug `(,verb ,noun ,slot)) 
  (if nil
   (break "got to passive premod")
   noun))

  

(defun svo/nominal (verb nominalization &key super-category subject theme)
  (with-name-and-superc verb super-category :verb
    (with-subject subject subject
      (with-theme theme
        (let ((form
               `(define-category ,name
                  :instantiates self
                  :specializes ,superc
                  :binds ((,subj-slot ,subj-var) 
                          (,theme-slot ,theme-var))
                  :index (:key theme) ;; ought to suffice
                  :realization
                    ((:tree-family transitive
                    :mapping ((agent . ,subj-slot)
                              (patient . ,theme-slot)
                              (s . :self)
                              (vp . :self)
                              (vg . :self)
                              (np/subject . ,subj-v/r)
                              (np/object . ,theme-v/r))
                    :verb ,verb)
                  (:tree-family empty-head-of-complement
                   :mapping ((result-type . :self)
                             (of-item . ,theme-slot)
                             (base-np . :self)
                             (complement . ,theme-v/r)
                             (np . :self))
                   :common-noun ,nominalization)))))
          (eval form))))))



(defun svo/nominal/adjective (verb nominalization adjective
                              &key subject theme)
  (declare (ignore adjective))
  (let ((subject-restriction (or subject 'endurant))
        (theme-restriction (or theme 'endurant)))
    (let* ((name (name-to-use-for-category nominalization))
           (form
            `(define-category ,name
              :instantiates self
              :specializes  event
              :binds ((subject person)
                      (theme person))
               :index (:key theme) ;; ought to suffice
               :realization
                  ((:tree-family transitive
                    :mapping ((agent . subject)
                              (patient . theme)
                              (s . :self)
                              (vp . :self)
                              (vg . :self)
                              (np/subject . ,subject-restriction)
                              (np/object . ,theme-restriction))
                    :verb ,verb)
                  (:tree-family empty-head-of-complement
                   :mapping ((result-type . :self)
                             (of-item . theme)
                             (base-np . :self)
                             (complement . ,theme-restriction)
                             (np . :self))
                   :common-noun ,nominalization)
                  ;(:tree-family adjective-really-creates-subtype
                  ; :mapping (
                  ; :adjective ,adjective)             
                   ))))
      (eval form))))








;;;----------------------------------------------------------------------
;;; Auto-defining definition forms for subcategories of a given category
;;;---------------------------------------------------------------------

(defmacro define-type-category-constructor (name-of-type-category)
  "Macro for defining a category-defining function that's tailored
   to a particular super category."
  `(define-type-category-constructor/expr
    ',(category-named name-of-type-category t)))

(defun define-type-category-constructor/expr (type-category)
  (let* ((fn-name
          (intern (string-append #+mlisp "define-"
                                 #-mlisp "DEFINE-"
                                 (symbol-name (cat-symbol type-category)))
                  (find-package :sparser)))
         (form
         `(defun ,fn-name (string)
            (let* ((symbol (name-to-use-for-category string))
                   (word (define-word string))
                   (super-category ,type-category)
                   (category (category-named symbol))
                   (new? (null category)))
              (when new? ;; for re-evaluation of this file
                (let ((expr `(define-category ,symbol
                               :specializes ,super-category
                               :instantiates :self
                               :rule-label ,super-category 
                               :binds ((name . name))
                               :index (:permanent :key name)
                               ;;:bindings (type-name ,word) /// rethink -- was variable on location
                               :realization (:common-noun ,string))))
                  (setq category (eval expr)))) ))))
    (eval form)))



(defmacro define-type-instance-constructor (category-name)
  "Sets up a standard framework for defining named individuals of a particular type,
   where define-category is the prototypical example."
  (assert (symbolp category-name))
  (let ((fn-name (intern (string-append #+mlisp "define-"
                                         #-mlisp "DEFINE-"
                                         (symbol-name category-name))
                         (find-package :sparser))))
    `(def-type-instance-constructor ',fn-name ',category-name)))

(defun def-type-instance-constructor (fn-name category-name)
  (let* ((category (category-named category-name))
         (form
         `(defun ,fn-name (string &key aliases adjective)
            (let ((i (define-or-find-individual ',category-name
                         :name string)))
              (when adjective
                (let ((adjectives (ensure-list adjective)))
                  (loop for adj in adjectives
                     as word = (resolve/make adj)
                     do (define-cfr ,category (list word)
                          :form category::adjective
                          :referent i))))
              (when aliases
                (loop for pname in aliases
                   as word = (resolve/make pname)
                   do (define-cfr ,category (list word)
                        :form category::proper-noun
                        :referent i)))
              i))))
    (eval form)))
              

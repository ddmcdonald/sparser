;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2015 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "shortcuts"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  1.0 January 2015


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
  ;;    And this might just mean 'no plural' -- see *inihibit-constructing-plural*
  ;; -- need to allow for irregulars
  ;; -- Decide whether it makes sense to specify brackets if we can
  ;;    get realization information from the category
  `(define-named-individual-with-synonyms/expr ',category-name ',word-list ',brackets ',no-morph))

(defun define-named-individual-with-synonyms/expr (category-name word-list 
                                                   &optional brackets no-morph)
  (push-debug `(,brackets ,no-morph))
  (let ((category (category-named category-name :break-if-undefined))
        rules )
    ;; Define the individual, which becomes the
    (let* ((form `(find-or-make-individual ',category-name :name ,(car word-list)))
           (i (eval form)))

      ;; look up schema to apply
      (let ((fn (retrieve-word-constructor category)))
        ;; no-morph would fit in here
        (dolist (string (cdr word-list))
          (if fn
            (let ((word (resolve/make string)))
              (funcall fn word category i)) ;; word, category, referent
            (let* ((rule-form `(def-cfr/expr ',category-name '(,string)
                                 ;; can we guess it's a common noun for form?
                                 :referent ,i))
                   (rule (eval rule-form)))
              (push rule rules)))))
          ;;/// How do we record these synonyms with the instance given that this
          ;; scheme (taken from unit-of-measure) makes an instance for each case
          ;; but the realization information is kept with the category?
          ;; We can either change the encoding scheme (but it's ubiquitous) or
          ;; devise some other channel for organizing the information.
          ;   (let ((words (mapcar #'word-named word-list)))
          ;	(setf (cat-realization category)
          ;	      `(:synonyms ,words . ,(cat-realization category)))
          ;	(push-debug `(,category ,i ,rules)) (break "synonyms"))
      i)))


;;--- NP patterns

;;//// in biology/NFkappaB only
(defun np-head/of (string-for-noun &key super of)
  ;;  (amino acid residue) of protein
  (with-name-and-superc string-for-noun super :noun
    (let* ((of-restriction (or of 'individual)) ;;//// macro-ify when next used
           (form
             `(define-category ,name
                :instantiates :self
                :specializes ,superc
                :binds ((on . ,of-restriction))
                :realization (:tree-family group-of-type
                              :mapping ((type . on)
                                        (np . :self)
                                        (group . :self)
                                        (complement . ,of-restriction))
                              :common-noun ,string-for-noun))))
      (eval form))))


(defmacro noun (name
                &key noun 
                     super specializes index
                     binds realization
                     instantiates mixin restrict rule-label 
                     obo-id)
  `(noun/expr ',name
         :noun ',noun
         :super ',super :specializes ',specializes :index ',index
         :binds ',binds :realization ',realization
         :instantiates ',instantiates :mixin ',mixin 
         :restrict ',restrict :rule-label ',rule-label
         :obo-id ,obo-id))

;;/// carbon copy of noun, but a function rather than a macro
(defun np-head (name 
                &key noun super specializes index
                     binds realization
                     instantiates mixin restrict rule-label 
                     obo-id)
  (when (stringp name) ;; (np-head "S338" :super 'residue-on-protein)
    (setq noun name) ;; preserve it
    (setq name (name-to-use-for-category name)))
  (noun/expr name
         :noun noun
         :super super :specializes specializes :index index
         :binds binds :realization realization
         :instantiates instantiates :mixin mixin 
         :restrict restrict :rule-label rule-label
         :obo-id obo-id))


(defun noun/expr (name
                  &key noun
                       super specializes index
                       binds realization
                       instantiates mixin 
                       restrict rule-label obo-id)
  (when (stringp name)
    (setq noun name)
    (setq name (name-to-use-for-category name)))
  (unless (or super specializes)
    (setq  specializes (super-category-for-POS :noun)))
  (when binds
    (unless realization
      (error "Variables were specificed (:binds) but not a realization")))
  (when realization
    (unless binds
      (error "A realization was specificed but no variables")))

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
               :mixins ,mixin
               :realization ,realization)))
        (setq category (eval form))))
     (t
      ;; Essentially the same thing, but with no bindings,
      ;; just the interited ones
      (let ((form
             `(define-category ,name
                :instantiates ,(or instantiates :self)
                :specializes ,(or super specializes)
                :rule-label ,rule-label
                :index ,index
                :restrict ,restrict
                :mixins ,mixin
                :realization
                  (:common-noun ,noun))))
        (setq category (eval form)))))

    (when obo-id
      (bind-variable 'uid obo-id category))
    category))




(defmacro adj (name
               &key adj
                    super specializes
                    binds realization
                    instantiates mixin restrict rule-label 
                    obo-id)
  (typecase name
    (string ;; name is taken from the string
     (unless adj ;; is there a good reason for them to be different?
       (setq adj name))
     (setq name (name-to-use-for-category name)))
    (symbol 
     (unless adj
       (error "You have to specify the word for the noun (:adj)")))
    (otherwise
     (error "Bad type for 'name'. It should be a string or a symbol")))
  `(adj/expr ',name
        :adj ',adj
        :super ',super :specializes ',specializes
        :binds ',binds :realization ',realization
        :instantiates ',instantiates :mixin ',mixin 
        :restrict ',restrict :rule-label ',rule-label
        :obo-id ,obo-id))

(defun adj/expr (name
                 &key adj
                      super specializes 
                      binds realization
                      instantiates mixin 
                      restrict rule-label obo-id)

  (unless (or super specializes)
    (setq  specializes (super-category-for-POS :adjective)))
  (when binds
    (unless realization
      (error "Variables were specificed (:binds) but not a realization")))
  (when realization
    (unless binds
      (error "A realization was specificed but no variables"))
    (setq realization
          (cons :adj (cons adj realization))))
    
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
               :restrict ,restrict
               :mixins ,mixin
               :realization ,realization)))
        (setq category (eval form))))
     (t
      ;; Essentially the same thing, but with no bindings,
      ;; just the interited ones
      (let ((form
             `(define-category ,name
                :instantiates ,(or instantiates :self)
                :specializes ,(or super specializes)
                :rule-label ,rule-label
                :restrict ,restrict
                :mixins ,mixin
                :realization
                  (:adjective ,adj))))
        (setq category (eval form)))))

    (when obo-id
      (bind-variable 'uid obo-id category))
    category))



;;--- Adjective/adverb pairs

(defun adj/adv (adjective adverb &key super-category)
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
        ;; Parameters to these two are (word category referent)
        ;; and they do the bracket assignment. 
        (make-rules-for-adjectives adj category category)
        (make-rules-for-adverbs adv category category)
        category))))



;;--- Interjection

(defun sentential-interjection (string-for-interjection)
  ;; "ok" "goodbye"  All instances right now are in checkpoint/vocabulary.lisp
  (let* ((name (name-to-use-for-category string-for-interjection))
         (form
          `(define-category ,name
	     :instantiates :self
             :binds ((modifier))
             :realization
               (:tree-family sentence-interjection
                :mapping ((interjection . :self)
                          (modifier . modifier))
               :interjection ,string-for-interjection))))
    (eval form)))



;;--- verb patterns

;; original 
(defun sv (string-for-verb)
  (let* ((name (name-to-use-for-category string-for-verb))
         (form
          `(define-category ,name
	     :instantiates :self ;; place for generalization
             :specializes event
             :binds ((subject . individual))
             :realization
             (:tree-family intransitive
	          :mapping ((s . event)
                        (vp . event)
                        (np/subject . individual)
                        (agent . subject))
              :main-verb ,string-for-verb))))
    (eval form)))

#|
(define-category-abbreviation-class sv intransitive
  :parameter-defaults ((subject . individual)))
|#
;; envisioned -- needs the customized rspec to be designed
#+ignore(defun sv (verb &optional super-category &key instantiates subject)
  (let* ((category-name (name-to-use-for-category verb))
         (subject-restriction (or subject 'individual))
         (specializes (or super-category 'event))
         (category-instantiated (or instantiates :self))
         (form
          `(define-category ,category-name
             :instantiates ,category-instantiated
             :specializes ,specializes
             :binds ((subject . ,subject-restriction))
             :index (:key subject))))
    (let ((category (eval form)))
      category)))
             
(defun svo (string-for-verb)
  (let* ((name (name-to-use-for-category string-for-verb))
         (form
          `(define-category ,name
	      :instantiates :self ;; place for generalization
             :specializes event
             :binds ((subject . individual)
                     (object . individual))
             :realization
             (:tree-family transitive
	      :mapping ((s . event)
                        (vp . event)
                        (vg . :self)
                        (np/subject . individual)
                        (np/object . individual)
                        (agent . subject)
                        (patient . object))
              :main-verb ,string-for-verb)))
         (category (eval form)))
    (let* ((bootstap-rule
            `(def-cfr event (,name individual)
               :form vp
               :referent (:head left-edge
                          :bind (object right-edge))))
           (rule (eval bootstap-rule)))
      (add-rule-to-category rule category)
      name)
    (let* ((bootstap-rule
            `(def-cfr event (,name pronoun/inanimate)
	       :form vp
               :referent (:head left-edge
			  :bind (object right-edge))))
           (rule (eval bootstap-rule)))
      (add-rule-to-category rule category)
      name)))




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
             :specializes event
             :binds ((subject . individual))
             :realization
             (:tree-family intransitive-with-preposition
	      :mapping ((s . event)
                        (vp . event)
                        (vg . :self)
                        (np/subject . individual)
                        (prep . ,preposition)
                        (agent . subject))
              :main-verb ,verb)))
         (category (eval form)))
    category))


;;//// Illustrative case. Probably wouldn't do it this way.
;; look at the ETF
(defun sv-location (string-for-verb)
  (let* ((name (name-to-use-for-category string-for-verb))
	 (form
	  `(define-category ,name
         :instantiates :self ;; place for generalization
	     :specializes event
	     :binds ((subject . individual)
                 (location . location)) ;; where . location
	     :realization (:tree-family transitive-location
	                   :mapping ((s . event)
                                 (vp . event)
                                 (vg . :self)
                                 (loc1 . deictic-location)
                                 (loc2 . location)
                                 (loc3 . location) ;; duh, but
                                 ;; spatial-orientation has gone away
                                 (np/subject . individual)
                                 (agent . subject)
                                 (location . location))  ;; location . where
                       :main-verb ,string-for-verb))))
    (eval form)))


;; See dismount in sl/ISR/specifics
;; Assumes the variables are defined on more abstract categories
;; than this one. The subject & object info is for the mapping
(defun c3-sv-optional-o (verb super-category 
                         &key restrict mixin subject object)
  (unless super-category
    (setq super-category 'event))
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
             :mixins ,mixin
             :realization
               ((:tree-family intransitive
                 :mapping ((agent . ,subj-var)
                           (s . :self)
                           (vp . :self)
                           ;; Needs *edges-from-referent-categories*
                           (np/subject . ,subj-v/r))
                 :main-verb ,verb)
                (:tree-family subj/verb+np
                 ;; C3 left to right parsing
                 :mapping ((object . ,obj-var)
                           (s . :self)
                           (np/object . ,obj-v/r))))) ))
    (eval form))))


(defun vo (verb super-category &key object)
  ;;// rule-for, restrict, mixin
  ;; Based on verb+direct-object, the variable for the object
  ;; is 'theme' by a convention out of c3.
  (let ((name (name-to-use-for-category verb)))
    (multiple-value-bind
        (binding-vr parsing-vr)
        (typecase object
          (symbol (values object object))
          ;; a cons would distinguish type from vr
          (otherwise
           (push-debug `(,object))
           (error "New object case for vo: ~a" object)))
      (let ((form
             `(define-category ,name
                :instantiates :self
                :specializes ,super-category
                :binds ((theme . ,binding-vr))
                :realization
                  (:tree-family verb+direct-object
                   :mapping ((patient . theme)
                             (result-type . :self)
                             (vp . :self)
                             (vg . :self)
                             (np/object . ,parsing-vr))
                   :main-verb ,verb))))
        (eval form)))))


;; Used in checkpoint vocabulary for 'open up'
(defun sv-prep-marked-o (verb preposition)
  (unless (and (stringp verb) (stringp preposition))
    (error "Arguments must be string giving the base for of words"))
  (let* ((name (name-to-use-for-category 
		(string-append verb "/" preposition)))
         (form
          `(define-category ,name
	     :instantiates :self ;; place for generalization
             :specializes event
             :binds ((subject . individual)
                     (object . individual))
             :realization
             (:tree-family transitive/specializing-pp
	          :mapping ((s . event)
                        (vp . event)
                        (vg . :self) ;; otherwise we don't pickup the pn
                        (np/subject . individual)
                        (prep . ,preposition)
                        (pp/np . individual)
                        (agent . subject)
                        (theme . object))
              :main-verb ,verb)))
         (category (eval form)))
    (let ((v+p-rule (find-rule-in-category category :vp+prep/object)))
      (if v+p-rule 
	    (let* ((lhs (cat-symbol (cfr-category v+p-rule)))
               (bootstap-rule
                `(def-cfr event (,lhs individual)
                   :form vp
                   :referent (:head left-edge
                              :bind (object right-edge))))
               (rule (eval bootstap-rule)))
          (add-rule-to-category rule category)
          category)
        (error "v+p-rule is missing")))))


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
                     :main-verb ,verb))))
          (eval form))))))


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
                     :main-verb ,verb)
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
  (if
   nil
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
                    :main-verb ,verb)
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
  (let ((subject-restriction (or subject 'individual))
        (theme-restriction (or theme 'individual)))
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
                    :main-verb ,verb)
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









;;;

(defmacro define-type-category-constructor (name-of-type-category) ;; symbol
  (let ((type-category (category-named name-of-type-category)))
    (unless type-category
      (error "There is no category named ~a" name-of-type-category))
    `(define-type-category-constructor/expr',type-category)))

(defun define-type-category-constructor/expr (type-category)
  (let* ((fn-name
          (intern (string-append #+mlisp "define-"
                                 #+(or :ccl :alisp) "DEFINE-"
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
                               :bindings (type-name ,word)
                               :realization (:common-noun ,string))))
                  (setq category (eval expr))))
;; Double check, but this is likely completely redundant with the
;; rules created by the category given that we've fed it a specific
;; word.
;;               (let ((rule
;;                      (define-cfr super-category `(,word)
;;                        :form (category-named 'common-noun)
;;                        :referent category))) ;;//// :schema
;;                 (values category
;;                         rule))
              ))))
    (eval form)))


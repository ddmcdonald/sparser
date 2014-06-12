;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011-2014 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "shortcuts"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  June 2014

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
;; that are only used in sl/checkpoint/vocabulary.lisp

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

;;;--------
;;; macros
;;;--------
;; Simplify how slots, etc. are handled by sharing the parts
;; as a set of wrappers

;; Shared decoder
(defun decode-shortcut-var-spec (spec type)
  "A shortcut variable specification can be a single symbol or
 a list of as many as three symbols. If the specification is 
 a symbol it is interpreted as the label (or more generally
 the value restriction) for the semantic grammar built by
 the tree family. If the specification is a list, the the
 first element is the label for the semantic grammar.
 The second element (if there is one), is the value restriction
 on the slot that's to be bound. The third element specifies
 the name of the slot, replacing the default."
  (flet ((default-value-restriction (type)
           (case type
             ((or :subject :theme :agent :patient)
              'individual)
             (:complement 'event)
            (otherwise (error "Unknown v/r default: ~a" type))))
         (default-slot-name (type)
           (case type
             (:subject 'subject)
             (:agent 'agent)
             (:patient 'patient)
             (:theme 'theme)
             (:complement 'complement)
             (otherwise (error "Unknown slot default: ~a" type)))))
    (let ( v/r var-v/r slot )
      ;; decode the spec into the semantic grammar label: v/r,
      ;; the category of slot (variable): var-v/r,
      ;; and the name of the variable itself: slot
      (typecase spec
        (symbol (setq v/r spec))
        (cons (cond
          ((null (cdr spec))
           (setq v/r (car spec)))
          ((null (cddr spec))
           (setq v/r (car spec)
                 var-v/r (cadr spec)))
          ((= 3 (length spec))
           (setq v/r (car spec)
                 var-v/r (cadr spec)
                 slot (caddr spec)))))
        (otherwise
         (push-debug `(,spec ,type))
         (error "Badly formed var spec: ~a" spec)))
      (values v/r
              (or var-v/r
                  (default-value-restriction type))
              (or slot
                  (default-slot-name type))))))

(defmacro with-name-and-superc (string super-category pos &body body)
  `(let ((name (name-to-use-for-category ,string))
         (superc (or ,super-category
                     (super-category-for-POS ,pos))))
     ,@body))


(defmacro with-subject (subj-spec &body body)
  ;; Identical in use with subject, but clearer to set up in passives
  `(multiple-value-bind (subj-v/r subj-var subj-slot)
                        (decode-shortcut-var-spec ,subj-spec :subject)
       ,@body))

(defmacro with-agent (agent-spec &body body)
  `(multiple-value-bind (agent-v/r agent-var agent-slot)
                        (decode-shortcut-var-spec ,agent-spec :agent)
       ,@body))

(defmacro with-complement (comp-spec &body body)
  `(multiple-value-bind (comp-v/r comp-var comp-slot)
                        (decode-shortcut-var-spec ,comp-spec :complement)
     ,@body))

(defmacro with-theme (theme-spec &body body)
  `(multiple-value-bind (theme-v/r theme-var theme-slot)
                        (decode-shortcut-var-spec ,theme-spec :theme)
     ,@body))

(defmacro with-patient (patient-spec &body body)
  `(multiple-value-bind (patient-v/r patient-var patient-slot)
                        (decode-shortcut-var-spec ,patient-spec :patient)
     ,@body))


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

(defun np-head (string-for-noun &key super)
  ;; "trunk", "car", ...
  (with-name-and-superc string-for-noun super :noun
    (let ((form
           `(define-category ,name
              :instantiates :self
              :specializes ,superc
              :realization
                 (:common-noun ,string-for-noun))))
      (eval form))))


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
                                 &key super-category agent patient by-category
                                )
  ;; pattern orginated with "assassinate"
  (with-name-and-superc verb super-category :verb
    (with-agent agent
      (with-patient patient
        (let ((by-cat 
                (if by-category
                  (category-named by-category :break-if-missing)
                  (let* ((agent-name (etypecase agent
                                       (symbol agent)
                                       (cons (car agent))))
                         (by-cat-name (name-to-use-for-category
                                       (string-append ':by- agent-name))))
                    ;; This is what the define-category macro opens up as
                    ;; for a trivial category like this
                    (cat-symbol
                     (find-or-make-category-object by-cat-name :define-category))))))
          
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
                     :common-noun ,nominalization)))))
            (eval form)))))))

  

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


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

(in-package :sparser)


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

(defmacro head-noun (string category &optional referent)
  "Like np-head, but we already have the category/referent and
   just want to assign the word to it."
  `(head-noun/expr ',string ',category ',referent))

(defun head-noun/expr (string category referent)
  (typecase category
    (referential-category)
    (symbol 
     (setq category (category-named category :break-if-missing)))
    (otherwise 
     (push-debug `(,string ,category ,referent))
     (error "Unexpected type for the category argument: ~a~%~a"
            (type-of category) category)))
  (unless referent
    (setq referent category))
  ;; Idea is to follow pattern in setup-common-noun
  (let ((word (resolve string)))
    (make-cn-rules word category referent)))
  

(defun np-head (string-for-noun &key super)
  ;; "trunk", "car", ...
  (unless (stringp string-for-noun)
    (error "Argument must be a string providing the base noun"))
  (unless super
    (setq super 'individual))
  (let* ((name (intern string-for-noun
		       (find-package :sparser)))
         (form
          `(define-category ,name
             :instantiates :self
             :specializes ,super
             :binds ((modifier))
             :realization
             (:common-noun ,string-for-noun))))
    (eval form)))


(defun np-head/of (string-for-noun &key super of)
  ;; "trunk", "car", ...
  (unless (stringp string-for-noun)
    (error "Argument must be a string providing the base noun"))
  (unless super
    (setq super 'individual))
  (let* ((name (intern string-for-noun
		       (find-package :sparser)))
         (of-restriction (or of 'individual))
         (form
          `(define-category ,name
             :instantiates :self
             :specializes ,super
             :binds ((on . ,of-restriction))
             :realization (:tree-family group-of-type
                           :mapping ((type . on)
                                     (np . :self)
                                     (group . :self)
                                     (complement . ,of-restriction))
                           :common-noun ,string-for-noun))))
    (eval form)))



;;--- Modifier patterns

(defun ignorable-np-modifier (string-for-adj)
  (let* ((name (category-name-from-string-arg string-for-adj))
         (rule-form ;; /// what other np head forms?
          `(def-form-rule (,string-for-adj common-noun)
	         :form np
             :new-category individual
             :referent (:daughter right-edge))))
    (declare (ignore name)) ;; until we do something interesting w/ it
    (eval rule-form)))


(defun adverbial (string-for-adverb)
  (let* ((name (category-name-from-string-arg string-for-adverb))
	 (form
	  `(define-category ,name
	     :instantiates :self
	     :realization
	       (:tree-family pre-verb-adverb
	         :mapping ((adverb . :self))
             :adverb ,string-for-adverb))))
    (eval form)))

(defun sentence-adverbial (string-for-adverb)
  (let* ((name (category-name-from-string-arg string-for-adverb))
	 (form
	  `(define-category ,name
	     :instantiates :self
         :binds ((modifier))
	     :realization
	       (:tree-family sentence-adverb
	        :mapping ((adverb . :self))
            :adverb ,string-for-adverb))))
    (eval form)))

(defun sentential-interjection (string-for-interjection)
  (let* ((name (category-name-from-string-arg string-for-interjection))
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
  (let* ((name (category-name-from-string-arg string-for-verb))
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
  (let* ((category-name (category-name-from-string-arg verb))
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
  (let* ((name (category-name-from-string-arg string-for-verb))
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
  (let* ((name (category-name-from-string-arg 
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
  (let* ((name (category-name-from-string-arg string-for-verb))
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

  (let* ((name (category-name-from-string-arg verb))
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
  (let ((name (category-name-from-string-arg verb)))
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


(defun sv-prep-marked-o (verb preposition)
  (unless (and (stringp verb) (stringp preposition))
    (error "Arguments must be string giving the base for of words"))
  (let* ((name (category-name-from-string-arg 
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


(defun svo/nominal (verb nominalization &key subject theme)
  (let ((subject-restriction (or subject 'individual))
        (theme-restriction (or theme 'individual)))
    (let* ((name (category-name-from-string-arg nominalization))
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
                   :common-noun ,nominalization)))))
      (eval form))))



(defun svo/nominal/adjective (verb nominalization adjective
                              &key subject theme)
  (let ((subject-restriction (or subject 'individual))
        (theme-restriction (or theme 'individual)))
    (let* ((name (category-name-from-string-arg nominalization))
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





;;--- go'fers

;; Compare code in name-to-use-for-category

(defun category-name-from-string-arg (string-arg)
  ;; Could actually be a cons to cover irregulars
  (typecase string-arg
    (string
     (intern string-arg (find-package :sparser)))
    (cons
     ;;/// a good place to check for valid keywords for the irregulars
     (unless (stringp (car string-arg))
       (error "Arguments must be string giving the base for of words"))
     (do ((keyword (first (cdr string-arg)) (car rest))
          (string (second (cdr string-arg)) (cadr rest))
          (rest (cdddr string-arg) (cddr rest)))
         ((null keyword))
       ;;(break "keyword = ~a  string = ~a" keyword string)
       (unless (keywordp keyword)
         (error "Looks like a badly formed irregulars list:~%~a" string-arg))
       (unless (memq keyword *valid-keywords-for-irregular-word-forms*)
         (error "Keyword for marking an irregular form, ~a, isn't one ~
                  of these:~%  ~a" keyword
                  *valid-keywords-for-irregular-word-forms*))
       (unless (stringp string)
         (error "Words have to be given as strings. ~a isn't:~%~a"
                string string-arg)))       
     (let ((base (car string-arg)))
       (intern base (find-package :sparser))))))





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


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "shortcuts"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  September 2011

;; Started 4/3/09. Modeled on [model;core:kinds:object] Modified
;; 7/16/09: added modifier to np-head Modified 7/21/09: replaced
;; 'where' in sv-location with 'location' to avoid inconsistency in
;; output Modified 7/23/09: added additional bootstrap rule to svo to
;; treat "it" as an individual, also added spatial-orientation to
;; sv-location, and interjection 9/21/09 Renaming ETF in
;; np-head. Fanout from also loading more diverse set of nps. 2/16/10
;; Added synonyms code. 8/8/11 Working out a macro to generate 'type'
;; categories. 9/6 folded :rule-label into the macro. 9/23 adjusted
;; adverbials to fit changes to the ETF.

(in-package :sparser)


;;--- Synonyms

(defmacro define-named-individual-with-synonyms (category-name word-list
					&key brackets no-morph)
  `(make-individual-with-synonyms ',category-name ',word-list ',brackets ',no-morph))

(defun make-individual-with-synonyms (category-name word-list brackets no-morph)
  (let ((category (category-named category-name))
        rules )
    (unless category (error "There is no category named ~a" category-name))
    ;;/// lookup the realization information on the category and deploy it
    ;; for the synonyms unless no-morph.
    (let* ((form `(define-individual ',category-name :name ,(car word-list)))
           (i (eval form)))
      (dolist (string (cdr word-list))
        (let* ((rule-form `(def-cfr/expr ',category-name '(,string) :referent ,i))
               (rule (eval rule-form)))
          (push rule rules)))
      ;;/// How do we record these synonyms with the instance given that this
      ;; scheme (taken from unit-of-measure) makes an instance for each case
      ;; but the realization information is kept with the category?
      ;; We can either change the encoding scheme (but it's ubiquitous) or
      ;; devise some other channel for organizing the information.
;      (let ((words (mapcar #'word-named word-list)))
;	(setf (cat-realization category)
;	      `(:synonyms ,words . ,(cat-realization category)))
;	(push-debug `(,category ,i ,rules)) (break "synonyms"))
      i)))


;;--- NP patterns

(defun np-head (string-for-noun) ;; "trunk", "car", ...
  (unless (stringp string-for-noun)
    (error "Argument must be a string providing the base noun")) 
  (let* ((name (intern string-for-noun
		       (find-package :sparser)))
         (form
          `(define-category ,name
             :instantiates :self
             :specializes individual
             :binds ((modifier))
             :realization
             (:tree-family np-common-noun/possessive-pns
              :mapping ((np . individual)
                        (np-head . :self)
                        (modifier . modifier))
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
                                 (loc3 . spatial-orientation)
                                 (np/subject . individual)
                                 (agent . subject)
                                 (location . location))  ;; location . where
                       :main-verb ,string-for-verb))))
    (eval form)))

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

(defun sv-spatial-prep-marked-o (verb)
  (unless (stringp verb)
    (error "Arguments must be string giving the base for of words"))
  (let* ((name (category-name-from-string-arg 
                (string-append verb "-spatial-prep" )))
         (form
          `(define-category ,name
	         :instantiates :self ;; place for generalization
             :specializes event
             :binds ((subject . individual)
                     (object . individual))
             :realization (:tree-family transitive/pp
	                       :mapping ((s . event)
                                     (vp . event)
                                     (vg . event) ;; vs. :self)
                                     (np/subject . individual)
                                     (prep . spatial-orientation)
                                     (pp/np . individual)
                                     (agent . subject)
                                     (theme . object))
                           :main-verb ,verb))))
    (eval form)))


;;--- go'fers

(defvar *sa* nil)
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


(defun add-rule-to-category (rule category)
  ;; This is done in objects;model:tree-families:rdata1, but doesn't
  ;; appear to be a clean factoring of that code for this one-off
  ;; addition
  (let ((rule-list (cadr (member :rules (cat-realization category)))))
    (rplacd (last rule-list)
	    (list (car (last rule-list)) rule))))

(defun find-rule-in-category (category relation)
  (let ((rules (cadr (member :rules (cat-realization category)))))
    (dolist (rule rules)
      (let ((schema (cfr-schema rule)))
        (when schema
          (when (eq (schr-relation schema) relation)
            (return rule)))))))




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


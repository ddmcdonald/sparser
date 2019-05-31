;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2014-2019 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "rdata"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  February 2019

;; initiated 8/4/92 v2.3, fleshed out 8/10, added more cases 8/31
;; 0.1 (5/25/93) changed what got stored, keeping around a dereferenced
;;      version of the rdata so that individuals could prompt rule definition
;; 0.2 (10/25) Allowed mappings to multiple categories
;;     (1/17/94) added :adjective as a option for heads. 5/24 added 'time-deictic'
;;     5/26 aded 'adverb'  10/6 added option for a label to be a word
;; 0.3 (10/20) rewrote 'time-deictic' as 'standalone-word'
;; 0.4 (11/1) hacked Setup-rdata to have rules be written even when the head word
;;      specifies a variable rather than a word
;; 1.0 (12/6/97) bumped on general principles given new work on psi.
;;     (7/5/98) modified Decode-rdata-mapping to allow lists of words.
;; 1.1 (7/12) provided for multiple definitions.
;;     (6/24/99) Added standalone rdata assembler to solve timing problems.
;;     (7/3) renamed it '1'.
;; 1.2 (9/3) Adjusted Dereference-rdata to use the symbol :no-head-word
;;      when there isn't one, instead of the value nil. This solved a problem
;;      with the rdata of currency.
;;     (9/30) Tweaked Decode-rdata-mapping to appreciate the possibility that
;;      a parameter could get the value :self.
;;     (11/18) Added :preposition to the list in Vet-rdata-keywords and
;;      dereference-rdata. (7/11/00) added :quantifier.  (4/11/05) added check 
;;      to Decode-rdata-mapping to allow symbols to pass on through if they're
;;      the names of functions. (7/23/09) Added interjection.
;; 1.3 (2/21/11) Added define-marker-category as another standalone def form
;;      where we're defining a minimal category along with its realization.
;; 1.4 (8/11/11) moved in define-realization from the workbench file it
;;      was in (interface/workbench/def-rule/save1.lisp). Refactored setup-
;;      rdata a bit to allow a standalone realization spec to add to the
;;      existing rules rather than replace them: define-additional-realization.
;;      8/16 fixed decode-rdata-mapping to accommodate references to variables
;;      that are in the category's parents. 9/6/11 propogated change to
;;      override-label in decode-rdata-mapping. 12/10/11 added :verb to the
;;      set of rdata keywords. 
;;      (2/11/12) Took :verb out of the keywords because it interferes with
;;      the binding of the parameters in dereference-rdata by blocking the
;;      binding of :main-verb (created a preference for :verb), so no verbs
;;      were getting realizations. (1/5/13) minor in-line doc.
;;     (3/7/13) added :method to go with :function in ever-appears-in-function-referent
;;      that lets us supply functions to the mappings as though they were
;;      conventional binding-parameters. 
;;     (11/18/13) Added some routines to root around inside realization data.
;; 1.5 (12/4/13) Modified deref-rdata-word to look at all slots and not just local ones.
;;     (12/26/13) Tweeked decode-rdata-mapping to notice an explicit category
;;      as the equivalent of :self. (2/1/14) Finished retrieve-word-constructor for
;;      use in abbreviation code.
;;     (5/12/14) Fixed error message in decode-rdata-mapping. 6/11/14 Added call
;;      in record ETF to the categories that use them inside dereference-rdata.
;;     (1/6/15) Modified setup-category-lemma to allow multiple words.
;;     (7/6/15) Commented out apparently no-op complain in decode-rdata-mapping
;;      that it wasn't getting a dotten pair. Need to come back to this and fix it.
;;     (9/22/15) added final value to setup-category-lemma now that it's being
;;      called by itself.
;;     (11/3/15) Tweaked deref-rdata-word to allow for multiple irregular words
;; 1/6/16 Folding in specifications for Mumble.
;; 2/26/15 reworked apply-mumble-rdata to pass all parameters through
;; 8/11/16 Revised and simplified. Use realization-data class exlusively.

(in-package :sparser)

;;;----------------------
;;; Standalone def forms
;;;----------------------

(defmacro define-marker-category (category-name &key realization)
  "This amounts to reversible syntactic sugar for the light, 'glue'
   categories that don't add any content (variables) but indicate
   a context for a complement (folded into the realization by name)
   that controls how it's incorporated into larger phrases.
     The category that's created is just the minimal form of
   simple syntactic categories. For something substantive use
   full arguments with define-category."
  `(setup-rdata (find-or-make-category ',category-name) ',realization))

(defmacro define-realization (category-name &body realization)
  `(setup-rdata (category-named ',category-name t) ',realization :delete nil))

(defmacro define-additional-realization (category &body realization)
  `(let ((*deliberate-duplication* t))
    (declare (special *deliberate-duplication*))
    (define-realization ,category ,@realization)))

(defmacro def-synonym (category (&rest realization))
  `(define-additional-realization ,category ,@realization))


;;;-------------
;;; Data checks
;;;-------------

(deftype head-keyword ()
  "A keyword indicating part-of-speech for a head word.
Should mirror the cases on the *single-words* ETF."
  '(member :verb
           :modal
           :common-noun
           :proper-noun
           :adjective
           :adverb
           :interjection
           :preposition
           :word
           :quantifier
           :number))

(eval-when (:compile-toplevel :load-toplevel :execute) ; for deftype
  (defparameter *head-aliases*
    '((:noun . :common-noun)
      (:adj . :adjective)
      (:adv . :adverb))
    "An alist of aliases for head keywords."))

(deftype realization-keyword ()
  `(or head-keyword
       (member ,@(mapcar #'car *head-aliases*))
       (member :tree-family
               :mapping
               :additional-rules
               :mumble)))

(defun check-rdata (rdata)
  (loop for (key value) on rdata by #'cddr
        do (check-type key realization-keyword "a realization keyword")))

(deftype subcat-slot-keyword ()
  '(member
    :a ; attribute
    :about :above :across :after :against :among :as :as-comp :at
    :before :below :between :but\ not :by
    :designator :during
    :down :up
    :following :for :from
    :ifcomp :howcomp
    :indirect-object ;;:i ; indirect object
    :in :into
    :like
    :l ; location
    :m ; modifier
    :verb-premod
    #|:next\ to|#
    :object :of :on :onto #|:on\ top\ of|# :over
    :oc ; object complement
    :premod
    :s-comp
    :subject :such\ as
    :to :to-comp :thatcomp :through :throughout :toward :towards
    :under :unlike :upon
    :via :whethercomp :with :within :without))

(defparameter *subcat-aliases*
    '((:s . :subject)
      (:o . :object)
      (:i . :indirect-object))
  "An alist of aliases for subcategorization slot names.")

(deftype subcat-relation-keyword ()
  '(member :adjp-complement
    :complement-variable
    :loc-pp-complement
    :optional-object))

(defun decode-subcat-slots (rdata)
  "Separate subcategorization slots and relations from the realization args."
  (loop with args and slots and relations
        for (key value) on rdata by #'cddr
        as alias = (assoc key *subcat-aliases*)
        if alias do (setq key (cdr alias))
        do (macrolet ((push-into (place)
                        `(progn (push key ,place)
                                (push value ,place))))
             (etypecase key
               (subcat-slot-keyword (push-into slots))
               (subcat-relation-keyword (push-into relations))
               (keyword (push-into args))))
        finally (return (values (nreverse args)
                                (nreverse slots)
                                (nreverse relations)))))

;;;-----------------------------------------------------------
;;; Entry point from the definition of a referential category
;;;-----------------------------------------------------------

(defvar *build-mumble-equivalents* t
  "Build Mumble realization information from category definitions.")

(defun setup-rdata (category rdata &key (delete t)
                    (mumble *build-mumble-equivalents*))
  "Called from decode-category-parameter-list as part of defining a category.
   This routine is responsible for decoding the realization data, and runs for
   side-effect on the category object.

   The routines in objects;model;tree-families;driver.lisp create the rules
   when individuals of the category are created. The function that actually
   makes the rules is make-rules-for-rdata."
  (declare (optimize debug) (special *build-mumble-equivalents*))
  (check-type category category)
  (check-type rdata list)
  (when delete
    (setf (cat-realization category) nil
          (get-rules category) (map nil #'delete/cfr (get-rules category))))
  (dolist (rdata (etypecase (car rdata)
                   (keyword (list rdata)) ; one realization
                   (list rdata)) ; multiple realizations
           (rdata category))
    (multiple-value-bind (args slots relations) (decode-subcat-slots rdata)
      (apply #'fom-subcategorization category slots)
      (loop for (relation variable) on relations by #'cddr
         do (register-variable category relation variable))
      (multiple-value-bind (etf mapping local-rules mdata)
          (apply (if (getf args :etf) #'decode-shortcut-rdata #'decode-rdata)
                 category args)
        (make-realization-data category
                               :heads (decode-rdata-heads args category)
                               :etf etf
                               :mapping mapping
                               :local-rules local-rules
                               :mumble mdata)
        (when mumble
          (cond
            ((includes-mumble-spec? rdata)
             (unless etf ;; already done by make-realization-data
               (apply-mumble-rdata category rdata)))
            ((inherits-mumble-data? category)
             (apply-inherited-mumble-data category))))))))

(defun setup-word-data (word pos category)
  "For adverbs, adjectives, and anything else whose realization
   is made by rule rather than the interpretation of an rdata
   expression. The call oridinates in define-function-term, where
   the category will be based on the word."
  (declare (special *build-mumble-equivalents*))
  (when *build-mumble-equivalents*
    (assert (or (word-p word) (polyword-p word)))
    (make-realization-data category :heads `(,pos ,word))))


;;;----------------------------
;;; Recording realization data
;;;----------------------------

(defclass realization-data ()
  ((category :initarg :category :accessor rdata-for
    :documentation "Backpointer to the category object.")
   (etf :initform nil :initarg :etf :accessor rdata-etf
    :documentation "Points to the etf if one was used.")
   (mapping :initform nil :initarg :mapping :accessor rdata-mapping
    :documentation "A completely dereferenced mapping from
      an individual as a instance of a category to the variables 
      used in that case.")
   (mumble :initform nil :initarg :mumble :accessor mumble-rdata
    :documentation "Records the phrase and mapping to use when
      realizing an instance of this category.")
   (locals :initform nil :initarg :local-rules :accessor rdata-local-rules
    :documentation "The rules that are written out in direct form
      to cover cases not incorporated in the ETF of the realization.")
   (subcat :initform nil :initarg :subcat-frame :accessor rdata-subcat-frame
    :documentation "A list of all the known subcategorization patterns")
   (heads :initform nil :initarg :heads :accessor rdata-head-words
    :documentation "A plist of head words keyed on part of speech.")))

(defmethod print-object ((rdata realization-data) stream)
  (print-unreadable-object (rdata stream)
    (let ((head-info (rdata-head-words rdata)))
      (if head-info
        (let ((word (cadr head-info))
              (pos (car head-info)))
          (when (consp word) ;; irregulars
            (setq word (car word)))
          (format stream "realization for ~a: ~s ~a"
                  (cat-name (rdata-for rdata)) (pname word) pos))
        (format stream "realization for ~a" (cat-name (rdata-for rdata)))))))

(defgeneric pprint-rdata (rdata stream)
  (:documentation "Compactly print the important filled fields")
  (:method ((rdata realization-data) stream)
    (with-slots (etf mapping heads) rdata
      (when etf (format stream "~&  etf: ~a" etf))
      (when heads
        (format stream "~&  heads: (~a ~s" (car heads) (cadr heads))
        (loop for (pos word) on (cddr heads) by #'cddr
           do (format stream "~&          ~a ~s" pos (pname word)))
        (format stream ")"))
      (when mapping
        (format stream "~&  mapping: (~a" (first mapping))
        (loop for m in (cdr mapping)
           do (format stream "~&            ~a" m))))))

(defvar *during-rdata-initialization* nil
  "Flag controlling timing in mdata construction")

(defmethod initialize-instance :after ((instance realization-data)
                                       &key category etf heads mumble)
  (let ((*during-rdata-initialization* t))
    (declare (special *during-rdata-initialization*))
    (when etf (record-use-of-tf-by etf category))  
    (when mumble (setup-mumble-data mumble category instance)) ;; Try Mumble rdata first.
    (when heads (make-corresponding-lexical-resource heads category))))

(defun make-realization-data (category &rest initargs)
  "Make a realization data record and attach it to a category."
  (check-type category category)
  (let ((rdata (apply #'make-instance 'realization-data
                      :category category
                      initargs)))
    (nconcf (cat-realization category) (list rdata))
    (make-rules-for-rdata category rdata)
    rdata))
         
(defgeneric rdata (item)
  (:documentation "Retrieve the realization data for a category designator.")
  (:method (item)
    (declare (ignore item)))
  (:method ((name symbol))
    (rdata (category-named name t)))
  (:method ((i individual))
    (rdata (itype-of i)))
  (:method ((c category))
    (cat-realization c)))

(defgeneric rdata/pos (item pos)
  (:documentation "Similar to rdata, but retrieve the datum
    corresponding to a particular part of speech, e.g. verb
    vs. noun vs. adjective")
  (:method :before (item pos)
   "check for valid part of speech"
   (declare (ignore item))
   (assert (keywordp pos) ()
           "Part of speech argument must be a keyword"))
  (:method ((i individual) pos)
    (rdata/pos (itype-of i) pos))
  (:method ((name symbol) pos)
    (rdata/pos (category-named name t) pos))
  (:method ((c category) pos)
    (loop for rdata in (rdata c)
       when (getf (rdata-head-words rdata) pos)
       return rdata)))

(defgeneric rdata-head-word (item pos)
  (:argument-precedence-order pos item)
  (:method (item pos)
    (declare (ignore item pos)))
  (:method (item (pos (eql t)))
    "Return the first recorded head word and its part of speech."
    (when (rdata item)
      (let ((pos (car (rdata-head-words (car (rdata item))))))
        (values (rdata-head-word item pos) pos))))
  (:method ((c category) pos)
    "Retrieve the head associated with the given part of speech."
    (loop for rdata in (rdata c)
          thereis (getf (rdata-head-words rdata) pos)))
  (:method ((i individual) pos)
    "Return the head word or dereference a head variable."
    (let ((head (rdata-head-word (itype-of i) pos)))
      (etypecase head
        ((or word polyword) head)
        (list (car head)) ; should handle irregulars better
        (lambda-variable
         (let ((head-var (find head (indiv-binds i) :key #'binding-variable)))
           (and head-var (binding-value head-var))))))))


;;;-----------------
;;; handling lemmas
;;;-----------------

(defgeneric lemma (item pos)
  (:method ((c category) pos)
    (getf (get-tag :lemma c) pos))
  (:method ((i individual) pos)
    (lemma (itype-of i) pos)))

(defgeneric (setf lemma) (word item pos)
  (:method (word (c category) pos)
    (setf (getf (get-tag :lemma c) pos) word)))

(defun setup-category-lemma (category lemmata)
  "Lemmas are used when the name of a category is the same as some word,
   e.g. 'comparative', and the realization field is used to provide
   the rspec for the words of instances of the category.
   Note that if the category has any normal rdata it will have been
   handled before this is called and an rdata object installed
   on the category."
  (loop for (key lemma) on lemmata by #'cddr
     do (unless (keywordp key) ;; friendly DWIM
          (setq key (intern (string key) :keyword)))
       (check-type key head-keyword "a valid realization keyword")
       (check-type lemma (or string cons word polyword))
       (let ((head (deref-rdata-word lemma category)))
         (when (stringp lemma) (setq lemma (resolve lemma)))
         (integrate-lemma-rdata category key lemma)
         (let ((rules (make-rules-for-head key head category category)))
           ;; n.b. call invokes make-corresponding-mumble-resource
           (setf (lemma category key) head) ;; store lemma on category
           (add-rules rules category)))))

(defun integrate-lemma-rdata (category key lemma)
  "Copy the lemma data into the category's realization data.
   This also ensures that the category has a realization data object.
   Can be complicated when categories have both a lemma and 
   a realization statement based on a variable."
  (let* ((rdata (car (rdata category)))
         (head-data (when rdata (rdata-head-words rdata))))
    (cond
      ((and rdata (null head-data)) ;; entry but no head information
       (setf (rdata-head-words rdata) `(,key ,lemma)))
      (head-data ;; has at least one entry already
       (setf (rdata-head-words rdata)
             (cons key (cons lemma head-data))))
      ((null rdata) ;; not even an entry
       (let ((rdata (make-realization-data category)))
         (setf (rdata-head-words rdata) `(,key ,lemma)))))))



;;;--------------------------------------
;;; Decode symbols -> objects by keyword
;;;--------------------------------------

(defun decode-rdata (category &rest rdata &key tree-family mapping
                     additional-rules &allow-other-keys)
  "Convert symbols to objects for realization data."
  (check-rdata rdata)
  (values (when tree-family
            (setq tree-family (exploded-tree-family-named tree-family)))
          (when tree-family
            (decode-rdata-mapping tree-family mapping category))
          (decode-additional-rules additional-rules)))

(defun deref-rdata-word (word category)
  "Recursively replace symbols with variables and strings with words."
  (etypecase word
    ((or word polyword keyword) word)
    (string (resolve-string-to-word/make word))
    (symbol (or (find-variable-for-category word category)
                (when (string-equal (symbol-name word)
                                    (symbol-name (cat-name category)))
                  category)
                (error "The symbol ~a does not correspond to a variable of ~a."
                       word category)))
    (cons (mapcar (lambda (word) (deref-rdata-word word category))
                  word))))

(defun decode-rdata-heads (rdata category)
  "Return a plist of specified head words in the realization data."
  (loop for (key value) on rdata by #'cddr
        as alias = (assoc key *head-aliases*)
        if alias do (setq key (cdr alias))
        when (typep key 'head-keyword)
          nconc (list key (deref-rdata-word value category))))

(defun decode-additional-rules (cases)
  "Additional rules don't use mappings. They use the names of categories, words,
   or variables directly. Given the way the rest of the modularity has worked out,
   all we have to do is look for strings and replace them since everything else
   will have been handled by replace-from-mapping even though it's really superfluous."
  (loop for (relation (lhs rhs . referent)) in cases
        collect `(,relation
                  (,lhs ,(loop for term in rhs
                               collect (if (stringp term)
                                         (resolve-string-to-word/make term)
                                         term))
                   ,@referent))))

(defun decode-rdata-mapping (etf mapping category)
  "Semantic parameters are decoded as variables.
   Syntactic labels are decoded as categories."
  (loop with parameters = (etf-parameters etf)
        with labels = (etf-labels etf)
        for (term . value) in mapping
        when (typep value '(cons * null))
          do (setq value (car value)) ; quietly fix a missing dot
        if (memq term parameters)
          collect (cons term
                        (or (and (eq value :self) category)
                            (find-variable-for-category value category)
                            (and (ever-appears-in-function-referent term etf)
                                 (coerce value 'function))
                            (error "No variable ~a in ~a for the parameter ~a."
                                   value category term)))
        else if (memq term labels)
          collect (cons term
                        (typecase value
                          ((eql :self) (or (override-label category) category))
                          (string (resolve-string-to-word/make value))
                          (list (loop for v in value
                                      collect (if (stringp v)
                                                (resolve-string-to-word/make v)
                                                (find-or-make-category-object v))))
                          (t (find-or-make-category-object value))))
        else
          do (error "Undefined term ~a in rdata mapping for ~a with ~a."
                    term category etf)))

(defun ever-appears-in-function-referent (term tf)
  "Check if a mapping term is a function or method for the given tree family.
   The alternative to this rather deep check is to add another field to etfs
   to hold this case of a simple symbol (the name of a function) that forestalls
   its interpretation as either a category or a variable."
  (loop for schr in (etf-cases tf)
        thereis (memq term (nth-value 1 ; property value
                            (get-properties (schr-referent schr)
                                            '(:function :method))))))

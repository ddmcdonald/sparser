;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE; -*-
;;; Copyright (c) 2016-2017 SIFT LLC. All Rights Reserved.
;;;
;;;     File: "krisp-mapping"
;;;   Module: "interface;mumble;"
;;;  Version: July 2017

;;; Krisp category / lexical head to annotated phrase

(in-package :mumble)

;;;---------------------------------------------
;;; Record/apply category-linked phrases (maps)
;;;---------------------------------------------

(defparameter *mappings-for-category-linked-phrase*
  (make-hash-table :test 'equal))

(defgeneric record-krisp-mapping (i category-linked-phrase)
  (:documentation
  "We need to be able to get to the CLP from both the Sparser and
   the Mumble words, and from the Krisp category (hidden in the CLP
   to simplify the signature). Doing string mapping of the words too.")
  (:method  ((word word) (clp category-linked-phrase))
    (let ((category (linked-category clp))
          (pname (pname word))
          (s-word (sparser::get-sparser-word-for-mumble-word word)))
      (setf (gethash category *mappings-for-category-linked-phrase*) clp)
      (setf (gethash word *mappings-for-category-linked-phrase*) clp)
      (setf (gethash s-word *mappings-for-category-linked-phrase*) clp)
      (setf (gethash pname *mappings-for-category-linked-phrase*) clp))))

(defgeneric krisp-mapping (individual)
  (:documentation "Return the associated category-linked-phrase")
  (:method ((i sp::individual))
    (krisp-mapping (sp::itype-of i)))
  (:method ((c sp::category))
    (gethash c *mappings-for-category-linked-phrase*))
  (:method ((w word))
    (gethash w *mappings-for-category-linked-phrase*))
  (:method ((w sp::word))
    (gethash w *mappings-for-category-linked-phrase*))
  (:method ((pname string))
    (gethash pname *mappings-for-category-linked-phrase*)))


;;--- realization using category-linked phrases
;; may be OBE though parts are probably reusable

(defgeneric apply-category-linked-phrase (individual)
  (:documentation "If there is a category-linked-phrase associated
    with this individual, use it to make the dtn")
  (:method ((i sp::individual))
    (let ((clp (realizing-resource i)))
      (when clp
        (tr "applying clp ~a" clp)
        (apply-CLP-to-individual i clp)))))

(defun apply-CLP-to-individual (i clp)
  (let* ((phrase (linked-phrase clp))
         (map (parameter-variable-map clp))
         (dtn (make-dtn :referent i :resource phrase)))
    (loop for pair in map
       as parameter = (corresponding-parameter pair)
       as variable = (corresponding-variable pair)
       as value = (value-of-map-var variable i)
       do (make-complement-node parameter value dtn))
    dtn))

(defgeneric value-of-map-var (variable i)
  (:documentation "Common subroutine to code that reads out
    parameter-variable maps to replace variables with their
    values on the the individual i.")
  (:method ((variable sp::lambda-variable) (i sp::individual))
    (let ((result (sp::value-of variable i)))
      (or result
          #+ignore(error "No value for ~a on ~a" variable i))))
  (:method ((word word) (i sp::individual)) ;; e.g. "together", "near"
    (declare (ignore i))
    word))


;;;----------------
;;; generic lookup
;;;----------------

(defgeneric realizing-resource (item)
  (:documentation "Look up the resource(s) that will be used
   to realize the item. Usually a category-linked-phrase, but
   fall back to lexicalized phrases.")
  (:method (null) nil)
  (:method ((i sp::individual))
    (or (realizing-resource (sp::itype-of i)) ;; get it from the category
        (get-lexicalized-phrase i)))
  (:method ((c sp::referential-category))
    (sp::get-tag :mumble c)))


(defgeneric verb-based-realization (item)
  (:documentation "Is the likely realization of this item going to be
    a clause, as opposed to an np, adjp or other oblique phrase.
    The DTN-based method will have a definitive answer.")
  (:method ((dtn derivation-tree-node))
    (let ((lp (resource dtn)))
      (verb-based-realization lp)))
  (:method ((lp lexicalized-phrase))
    (eq 'verb (lookup-pos lp)))
  (:method ((p phrase))
    (eq 'verb (lookup-pos p))))


;;;------------------------------------
;;; filtering alternative realizations
;;;------------------------------------

(defgeneric select-realization (mumble-rdata i pos)
  (:documentation "There are at least two if not more possible
    realizations on this category. Return the most appropriate one
    for this particular individual. Pass the rdata through a
    succession of filters until we've narrowed it down to one
    choice. Most of the work is done by the part of speech
    consistency check and the subcategorization check.")

  (:method ((rdata cons) i pos)
    "We have a list of possible realization data. See if we knock any
     out as inconsistent with the specified part-of-speech. 
     If we can't then we'll arbitrarily take the first one"
    (let ((consistent-rdata (filter-rdata-by-pos rdata pos)))
      (cond
        ((null consistent-rdata) nil)
        ((null (cdr consistent-rdata))
         (select-realization (car consistent-rdata) i pos))
        ((equal consistent-rdata rdata)
         ;; Nothing filtered out. Arbitrarily taking the 1st on
         (select-realization (car consistent-rdata) i pos))
        (t (error "New case after POS filter on ~a" i)))))
                        
  (:method ((rdata mumble-rdata) i pos) rdata)
  (:method ((pair variable-mdata-pair) i pos) (mpair-mdata pair))

  (:method ((msm multi-subcat-mdata) (i sp::individual) pos)
    "The alternatives correspond to different subcategorizations,
     which is manifest by which variables are bound by the individual.
     Select the alternative that has a binding for each of the
     variables it specifie. Returns a variable-mdata-pair"
    (flet ((binds-all-vars (i vars)
             (loop for v in vars
                unless (sp::value-of v i)
                return nil
                finally (return t))))
        (let ((consistent (loop for pair in (mdata-pairs msm)
                             as vars = (mpair-vars pair)
                             as mdata = (mpair-mdata pair)
                             when (binds-all-vars i vars)
                             collect pair)))
          (cond
            ((null consistent) nil) ;; none fit the individual
            ((null (cdr consistent)) ;; just one does
             (mpair-mdata (car consistent)))
            (t  (let ((var-count 0) longest)
                  (loop for pair in consistent
                     as vars = (mpair-vars pair)
                     as mdata = (mpair-mdata pair)
                     when (> (length vars) var-count)
                     do (setq var-count (length vars)
                              longest mdata))
                  longest))))))

  (:method ((fall-through t) i pos)
    (break "Caller passed unexpected data type to select-realization: ~
            ~a~%~a" (type-of fall-through) fall-through)))



(defgeneric filter-rdata-by-pos (rdata-choices pos)
  (:documentation  "Which of the alternatives is consistent
     with this part of speech")
  (:method ((alternatives cons) (pos symbol))
    (let* ((mpos (if (eq (symbol-package pos) (find-package :mumble))
                   pos
                   (sp::mumble-pos pos)))) ;; presume sparser pos
      (loop for mrd in alternatives
         when (eq mpos (lookup-pos mrd))
         collect mrd))))


;;;--------------------------
;;; part-of-speech functions
;;;--------------------------

(defgeneric determine-pos (individual)
  (:documentation "Consult the properties of the individual 
   as well as the set of realization resources associated with it
   to determine what is the appropriate part of speech to use.
   (For individuals embedded in the phrase we also look at constraints
   on its slot. For individuals at top-level all options are
   possible so linguistic context provides no constraints.
   Returns a mumble part-of-speech symbol.")
  (:method ((i sp::individual))
    "First determine our options by looking at the range of options
     provided by the resources. Then look for bound variables that are
     suggestive of noun vs. verb reading for this particular individual.
     If there's no descrimination, just check whether all the resources
     agree on the pos and return that."
    (let* ((resources (sp::mumble-resources-for i))
           (possible-pos
            (remove-duplicates (loop for r in resources
                                  collect (lookup-pos r)))))

      (when (null (cdr possible-pos))
        (return-from determine-pos (car possible-pos)))

      (loop for m-pos in possible-pos
         as key-pos = (intern (symbol-name m-pos) (find-package :keyword))
         when (sp::includes-suggestive-variables i key-pos)
         do (return-from determine-pos m-pos))

      (let ((remainder
             (loop for r in resources
                as pos = (lookup-pos r)
                when (current-position-compatible-with-pos pos)
                collect r)))
        (when (null remainder)
          (error "All realization resources for ~a~%ruled out by context" i))
        (when (null (cdr remainder))
          (return-from determine-pos (lookup-pos (car remainder))))

        ;; Make an educated guess based on preferences
        (let ((remaining-pos
               (loop for rr in remainder
                  as pos = (lookup-pos rr)
                  collect pos )))
          (cond
            ((memq 'verb remaining-pos) 'verb)
            ((memq 'adjective remaining-pos) 'adjective)
            ((memq 'noun remaining-pos) 'noun)
            (t (car remaining-pos))))))))


(defgeneric lookup-pos (resource)
  (:documentation "Return the mumble word-level part-of-speech
   of the resource. Interpolate phrase node levels to their implicit heads")
  (:method ((w word))
    (name (car (word-labels w))))
  (:method ((lp lexicalized-phrase))
    (lookup-pos (realizing-label lp)))
  (:method ((p phrase))
    (lookup-pos (realizing-label p)))
  (:method ((mrd mumble-rdata))
    (if (head-word mrd)
      (lookup-pos (head-word mrd))
      (else ;; mrd is abstract
        (lookup-pos (linked-phrase mrd)))))
  (:method ((pair variable-mdata-pair))
    (lookup-pos (mpair-mdata pair)))
  (:method ((msm multi-subcat-mdata))
    "Assume they're all the same pos so just pick one"
    (lookup-pos (mpair-mdata (car (mdata-pairs msm)))))
  (:method ((n node-label))
    (let ((name (name n)))
      (case name
        ((clause vp) 'verb)
        ((advp adv) 'adverb)
        ((adjp ap) 'adjective)
        (np 'noun)
        (preposition 'preposition)
        (pp 'preposition)
        (qp 'quantifier)
        (otherwise
         (warn "Lookup-pos: No part of speech option defined for ~a" n)
         'noun))))
  (:method ((items cons))
    "For some reason (///) probably going all the way back to has-mumble-rdata
     or even earlier. We are getting lists around singleton rdata"
    (if (null (cdr items))
      (lookup-pos (car items))
      (error "Non-singleton list passed in:~%~a" items))))

(defgeneric realizing-label (resource)
  (:documentation "Return the label of the resource,
    which will be a node-label if the resource is based on
    a phrase, or else a word-label.")
  (:method (null) nil)
  (:method ((clp category-linked-phrase))
    (realizing-label (linked-phrase clp)))
  (:method ((lp lexicalized-phrase))
    (realizing-label (phrase lp)))
  (:method ((p phrase))
    (let ((first (car (definition p))))
      (etypecase first
        (cons (car first))
        (slot-label first))))
  (:method ((w word))
    (car (word-labels w))))

;;;----------------------------
;;; properties of the resource
;;;----------------------------

(defgeneric get-parameters (item)
  (:documentation "Return the parameters on the phrase
    of this resource")
  (:method ((dtn derivation-tree-node))
    (get-parameters (resource dtn)))
  (:method ((lp lexicalized-phrase))
    (get-parameters (phrase lp)))
  (:method ((p phrase))
    (parameters-to-phrase p)))




(defun all-the-phrases ()
  (members (mcatalog (mtype 'phrase))))

(defun all-phrase-labels ()
  (remove-duplicates 
   (loop for p in (all-the-phrases)
      collect (realizing-label p))))
#|  6/1/17
m> (all-phrase-labels)
(#<node-label advp> #<node-label dp> #<node-label number>
 #<node-label conditional> #<node-label pp> #<node-label qp>
 #<node-label discourse-unit> #<slot-label comp> #<node-label clause>
 #<node-label conjunction> #<node-label np> #<node-label compound-sentence>
 #<node-label vp> #<node-label whp> #<node-label ap>) |#

;;/// move into mumble proper
(deftype mumble-part-of-speech ()
  `(member noun
           proper-noun
           verb
           modal
           adjective
           adverb
           preposition
           determiner
           quantifier
           pronoun
           interjection
           number))

(defun sparser-pos (pos)
  "Translate a Mumble part-of-speech tag to the equivalent Sparser tag.
   The other direction is mumble-pos "
  (ecase pos
    (noun :common-noun)
    (verb :verb)
    (adjective :adjective)
    (adverb :adverb)
    (preposition :prep)
    (quantifier :quantifier)
    (pronoun :pronoun)
    (interjection :interjection)))





;;---- formerly in binding-centric.lisp. May be OBE

(defparameter *check-lp-coverage* nil
  "Guards breaks used when testing whether the coverage of lexicalized
   phrases provided by the rdata on categories and individuals is thorough")

(defgeneric guess-pos (i)
  (:documentation "Guess the part of speech to be used for an individual.")
  (:method-combination or)
  (:method or ((i sp::individual))
    (cond ((let ((subject (sp::bound-subject-var i)))
             (and subject (eq (sp::value-of subject i) sp::**lambda-var**)))
           'adjective)
          ((or (sp::bound-subject-var i)
               (sp::bound-object-var i)
               (find sp::**lambda-var** (sp::indiv-binds i)
                     :key #'sp::binding-value))
           'verb)
          ;; ((sp::rdata-head-word i t)  )
          ))
  (:method or ((i sp::referential-category))
    (cond ((or (sp::subject-variable i)
               (sp::object-variable i))
           'verb)))
  (:method or (i)
    (when *check-lp-coverage*
      (break "fell through quess-pos on ~a" i))
    (if (current-position-p 'adjective 'relative-clause)
      'adjective
      'noun)))


(defvar *original-pos* nil
  "Guard against infinite mutual recursion in WORD-FOR.")

(defgeneric word-for (item pos)
  (:documentation "Try to determine what word to use for this type
   of item. Around methods provide alternatives and some special handling.")
  (:method ((item null) pos)
    (declare (ignore pos)))
  (:method ((item word) pos)
    (declare (ignore pos))
    item)
  (:method ((item string) pos)
    (word-for-string item pos))
  (:method ((item sp::word) pos)
    (sp::get-mumble-word-for-sparser-word item pos))
  (:method ((item sp::polyword) pos)
    (sp::get-mumble-word-for-sparser-word item pos))
  (:method ((item sp::referential-category) pos)
    "Try to get a head word for a category."
    (let ((head (sp::rdata-head-word item (sparser-pos pos))))
      (when *check-lp-coverage*
        (break "word-for: category ~a" item))
      (word-for (typecase head
                  (sp::lambda-variable (sp::lemma item (sparser-pos pos)))
                  (null (string-downcase (sp::cat-name item)))
                  (t head))
                pos)))
  (:method ((item sp::individual) pos)
    "Try to get a head word for an individual."
    (when *check-lp-coverage*
      (break "word-for: individual ~a" item))
    (let ((head (or (sp::rdata-head-word item (sparser-pos pos))
                    (sp::lemma item (sparser-pos pos))
                    (sp::value-of 'sp::name item)
                    (sp::value-of 'sp::word item))))
      (and head (word-for head pos))))
  
  (:method :around ((item sp::individual) pos)
    "Treat biological entities, collections, and prepositions specially."
    (cond ((sp::itypep item 'sp::biological)
           (let ((word (call-next-method)))
             (and word
                  (word-for-string (pretty-bio-name (sp::pname word)) pos))))
          ((sp::itypep item 'sp::collection)
           (word-for (sp::value-of 'sp::type item) pos))
          ((sp::itypep item 'sp::dependent-location) ;; "end" or "top" are nouns
           (sp::get-mumble-word-for-sparser-word item (sparser-pos 'noun)))
          ((sp::itypep item 'sp::prepositional) ;; vs. prepositions "of" or "on"
           (sp::get-mumble-word-for-sparser-word item 'preposition))
          (t (or (call-next-method) ; last-ditch effort
                 (word-for (string-downcase (sp::cat-name (sp::itype-of item))) pos)))))
  
  (:method :around (item (pos (eql 'adjective)))
    "Allow nouns as premodifiers."
    (or (call-next-method)
        (unless *original-pos*
          (let ((*original-pos* pos))
            (word-for item 'noun)))))
  (:method :around (item (pos (eql 'noun)))
    "Allow nouns as predications."
    (or (call-next-method)
        (unless *original-pos*
          (let ((*original-pos* pos))
            (word-for item 'adjective)))))
  (:method :around (item (pos (eql 'verb)))
    "Allow verbs as predications."
    (or (call-next-method)
        (word-for item 'adjective))))


    
;;;------------------------------------
;;; helpers for the incremental parser
;;;------------------------------------

(defun sp::incorporate-lexicalizations-into-predicted-path (lp)
  "Walk the position path until we encounter of the the parameters
   that's bound by the lexicalized phrase at which point we
   substitute the lp's value for that parameter. 
   Operates distructively in place."  
  (let* ((pairs (bound lp)) ;; parameter - value pairs
         (path (sp::predicted-path (sp::current-incremental-state))))
    (assert path) ;; should already be in place    
    (let ( modified )
      (loop for pvp in pairs
        do (setq modified
                 (subst (value pvp) (phrase-parameter pvp) path)))
      modified)))

(defvar *trace-popping-predicted-path* nil
  "Ad-hoc trace for pp1")

(defun ppp-1 (head-word path)
  ;;/// position would find the word if it worked on trees
  (let ((item (pop path)))
    (loop
      (when *trace-popping-predicted-path*
        (format t "~&item = ~a~%" item))
      (etypecase item
        (node-label) ;;///
        (keyword ;; :set-state (:aux-state mumble::initial)
         (pop path))
        (slot-label) ;;/// attachment points if dominates
        (parameter) ;; irrelevant on a word search
        (cons
         (ppp-1 head-word item))
        (word
         ;; We're assuming we've succeeded.
         ;; And that we could be a few levels down in the
         ;; node recursion, so we need to stash our
         ;; results and throw
         ;; Simplified (?) assumption that there will
         ;; only be one word
         (assert (eq head-word ;; sparser word
                     (sp::get-sparser-word-for-mumble-word item)))
         (setf (sp::predicted-path (sp::current-incremental-state))
               path)
         (throw :found-lexical-head t)))
      (setq item (pop path))
      (unless item
        (error "we've exhausted the path")))))

(defun sp::pop-path-to-next-slot (path state)
  "As called from walk-path-over-this-argument we have just
  completed the constituent that goes with the slot-label etc
  that is presently at the top of the path. Now pop that
  off. The question will be whether there is anything left
  on the path after we do this."
  ;; Caller has checked that the car of the path is correct
  (let ((item (pop path)))
    (loop
      (when *trace-popping-predicted-path*
        (format t "~&item = ~a~%" item))
      (etypecase item
        (parameter )
        (keyword ;; :additional-labels
         (pop path)) ;; get its argument
        (slot-label
         ;; we're done because we've found the
         ;; next slot in the path
         (setf (sp::predicted-path state) path)
         (throw :finished-path-walk :found-slot)))
      (setq item (pop path))
      (when (null item)
        (throw :finished-path-walk :path-exhausted)))))



;; not going to be used, but keep around a while for parts
(defun merge-lp-clp-parameter-specs (lexicalized-phrase catgory-linked-phrase)
  "Both arguments dictate how phrase parameters map to values."
  (let ((pvps (bound lexicalized-phrase)) ;; parameter-value-pair's
        (map (parameter-variable-map catgory-linked-phrase))
        alist )
    (loop for pvp in pvps
      do (push `(,(phrase-parameter pvp)
                 . ,(value pvp))
               alist))
    (loop for pair in map
      do (push `(,(corresponding-parameter pair)
                 . ,(corresponding-variable pair))
               alist))
    alist))

(defgeneric variable-for-parameter (parameter source)
  (:documentation "Given a phrase parameter and a source of
    values for the paratmeter, return the value. Mostly used in parsing")
  (:method ((p parameter) (mapping list))
    (variable-for-parameter
     p (find p mapping :key #'corresponding-parameter :test #'eq)))
  (:method ((p parameter) (pair parameter-variable-pair))
    (declare (ignore p))
    (corresponding-variable pair)))

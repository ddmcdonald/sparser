;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER; -*-
;;; Copyright (c) 2016-2017 David D. McDonald. All Rights Reserved.
;;;
;;;     File: "rdata"
;;;   Module: "interface;mumble;"
;;;  Version: June 2017

(in-package :sparser)

;;;--------------------------------------------
;;; Mumble information within shortcut schemes
;;;--------------------------------------------

;;--- creating

(defun translate-mumble-phrase-data (phrase-exp)
  "Called from define-realization-scheme to decode and check
   the Mumble side of the mapping schema. This map is like the 
   maps in realization schema in that it records variable
   descriptors (e.g. subj-slot) rather than actual variables.
   The converstion to actual variables is done by make-mumble-mapping
   which is called by decode-shortcut-rdata.
     The value this returns becomes the value of the 'phrase'
   slot of the realization-scheme we're defining."
  (let* ((phrase-name (car phrase-exp))
         (phrase (m::phrase-named (mumble-symbol phrase-name)))
         (arg-pairs (cdr phrase-exp))
         (decoded-pairs
          (loop for (param-name . schematic-var) in arg-pairs
             as param = (m::parameter-named (mumble-symbol param-name))
             collect `(,param . ,schematic-var))))
    (cons phrase decoded-pairs)))


(defun setup-mumble-data (raw-data category rdata)
  "Called from the initialize-instance method of realization-data.
   Take the phrase and mapping prepared in decode-shortcut-data ('mdata')
   working from the information on the phrase and create the runtime 
   object that realize et al. will access. Store that on the 
   instance ('rdata')."
  (let ((head-data (rdata-head-words rdata)))
    (let ( m-readings ) ;; if multiple pos will get mulitple mdata
      (do ((pos (car head-data) (car rest))
           (word (cadr head-data) (cadr rest))
           (rest (cddr head-data) (cddr rest)))
          ((null pos))
        (let ((mdata (construct-mdata category pos word raw-data)))
          (push mdata m-readings)))
      (setf (mumble-rdata rdata) (nreverse m-readings)))))


(defun construct-mdata (category pos word raw-data)
  "If its a verb and there's a verb-oriented lp in the raw data we'll
   assume it gets the map. For other parts of speech we leave those
   fields empty and just use the lp we get from the word."
  ;;(lsp-break "pos = ~a word = ~a" pos word)
  (case pos
    (:verb
     (let* ((phrase (car raw-data))
            (map (cdr raw-data))
            (variables (loop for (parameter . variable) in map
                          collect variable))
            (param-var-map
             (loop for (parameter . variable) in map
                collect (make-instance 'mumble::parameter-variable-pair
                                       :var variable :param parameter))))
       (multiple-value-bind (m-head lp)
           (decode-rdata-head-data pos word category phrase)
         (make-instance 'm::mumble-rdata
                        :class category
                        :lp lp
                        :map param-var-map
                        :head m-head
                        :vars variables))))
    (:common-noun
     (multiple-value-bind (m-head lp)
         (decode-rdata-head-data pos word category)
       (make-instance 'm::mumble-rdata
                      :class category
                      :lp lp
                      :head m-head)))
    (:adjective
     (multiple-value-bind (m-head lp)
         (decode-rdata-head-data pos word category)
       (make-instance 'm::mumble-rdata
                      :class category
                      :lp lp
                      :head m-head)))
    (otherwise
     (lsp-break "Unanticipated part of speech in rdata: ~a" pos))))
  
  
(defun decode-rdata-head-data (pos word-data category &optional phrase)
  "The head information in realization-data is moderately complicated.
   This digests it and returns the mumble word that is the head and
   the corresponding lexicalized phrase."
  (multiple-value-bind (s-head-word irregulars)
      (etypecase word-data
        (cons (values (car word-data) (cdr word-data))) ;; or could be synonyms
        (word word-data)
        (polyword word-data))
    (declare (ignore irregulars)) ;;//// third arg in define-word/expr
    (multiple-value-bind (lp m-word)
        (make-resource-for-sparser-word s-head-word pos category phrase)
      (values m-word lp))))


;;--- retrieving

#| The realization of an individual is principally determined by its
lexicalized-phrase (see m::get-lexicalized-phrase). However, we may also
know how to realize the entire relation (category) that the individual
instantiates. 
   If there is more than one possible realization we have to select
among them on some basis. Presently we can do this by part of speech
and/or by which subcategorized arguments the individual binds. 
|#

#+:mumble
(defgeneric has-mumble-rdata (category &key pos)
  (:documentation "Return the mumble field in the category's rdata.
    If there are several realizations, use the part of speech to
    discriminate among them.")
  
  (:method ((i individual) &key pos)
    (let ((mumble-rdata (has-mumble-rdata (itype-of i) :pos pos)))
      (when mumble-rdata
        (m::select-realization mumble-rdata i pos))))

  (:method ((c category) &key pos)
    (let ((rdata-field (rdata c)))
      (when rdata-field ;; does the category have any recorded realizations?
        (when (some #'mumble-rdata rdata-field)
          ;; do any have mumble realiation information on them?
          (let* ((relevant-rdata (loop for r in rdata-field
                                    when (mumble-rdata r)
                                    collect r))
                 (mumble-rdata (loop for rr in relevant-rdata
                                  collect (mumble-rdata rr))))
            (when mumble-rdata
              (when (consp mumble-rdata) ;; expected
                (unless (every #'m::mumble-rdata? mumble-rdata)
                  ;; could be a spurious extra level of parens
                  (if (and (= 1 (length mumble-rdata))
                           (m::mumble-rdata? (car (car mumble-rdata))))
                    (setq mumble-rdata (car mumble-rdata))
                    (error "Ill-formed rdata for mumble: ~a" mumble-rdata))))
              mumble-rdata )))))))


;;--- expedited access

(defgeneric mumble-data (unit)
  (:documentation "Return the mumble field of the unit
    if there is one.")
  (:method ((i individual)) (mumble-data (itype-of i)))
  (:method ((s symbol)) (mumble-data (category-named s :error-if-null)))
  (:method ((c referential-category)) (mumble-data (cat-realization c)))
  (:method ((list cons))
    (when (every #'(lambda (o) (typep o 'realization-data)) list)
      (mumble-data (car list))))
  (:method ((rdata realization-data)) (mumble-rdata rdata)))



;;;-----------------------------------------------
;;; Mumble information within rdata -- verb cases
;;;-----------------------------------------------

#| For explicit :mumble components within category realization data
e.g.
 (define-category ...
   :realization
     (...
      :mumble ("push" svo :s agent :o theme) ))

Field is noticed by setup-rdata, which calls apply-mumble-rdata to
the field. At this point the realization field of the category
has a value -- normally a single realization-data field -- though
it will only have been filled in if the rdata includes an etf and
a word. |#

(defgeneric includes-mumble-spec? (rdata)
  (:documentation "In setup-rdata gates whether we call apply-mumble-data")
  (:method ((rdata list))
    (if (keywordp (car rdata))
      (member :mumble rdata)
      (assq :mumble rdata))))

(defun apply-mumble-rdata (category rdata)
  "Called by setup-rdata to provide phrase and argument information
   for verbs. Look up the m-word, create the map, and create
   and store the lp and CLP.
   Called from setup-rdata when the mumble flag is up."
  ;; e.g. (:mumble ("build" svo :o artifact))
  ;;      (:mumble ("push" svo :s agent :o theme))
  ;;      (:mumble (transitive-with-final-adverbial "push" "together"))
  ;;      (:mumble ((svo :s agent :o patient) 
  ;;                (svicomp :s agent :c theme)
  ;;                (svoicomp :s agent :o patient :c theme))
  ;; We get the s-exp just after the :mumble rdata keyword
  (let ((mumble-spec (cadr (if (keywordp (car rdata))
                             (member :mumble rdata)
                             (assq :mumble rdata)))))
    (when mumble-spec
      (push-debug `(,mumble-spec))
      (assert (consp mumble-spec))
      (if (some #'keywordp mumble-spec) ;; Two-way split. One rspec vs. several
        (decode-one-mumble-spec category mumble-spec)
        (decode-multiple-mumble-specs category mumble-spec)))))

(defun decode-one-mumble-spec (category mumble-spec)
  (multiple-value-bind (clp lp m-word)
      (decode-mumble-spec category mumble-spec)
    (setf (get-tag :mumble category) clp)
    (let ((rdata ;;(rdata/pos category :verb)
           (car (rdata category)) ;; relative-location isn't verb-based
            ))
      (unless rdata (error "why no rdata yet for ~a" category))
      (setf (mumble-rdata rdata) `(,clp))
      (when m-word
        (m::record-lexicalized-phrase m-word lp)
        (mumble::record-krisp-mapping m-word clp))   )))

(defun decode-multiple-mumble-specs (category mumble-specs)
  "The only case so far where there is a good reason for multiple mumble
   data is with control verb (e.g. 'want'), where there are different
   maps according to what variables are involved. They're all for verbs
   though."
  (let ((rdata (rdata/pos category :verb)))
    ;; do one my hand to get the m-word
    (multiple-value-bind (clp lp m-word)
        (decode-mumble-spec category (first mumble-specs))
      (declare (ignore lp))
      (let* ((mdata-list (cons clp (loop for spec in (cdr mumble-specs)
                                      collect (decode-mumble-spec category spec))))
             (pairs (loop for mdata in mdata-list
                       as variables = (m::variables-consumed mdata)
                       collect (make-instance 'm::variable-mdata-pair
                                              :vars variables
                                              :mdata mdata)))
             (multi-data
              (make-instance 'm::multi-subcat-mdata
                             :mpairs pairs)))
        (setf (get-tag :mumble category) multi-data)))))

(defun decode-mumble-spec (category mumble-spec)
  "Separate cases (+/- includes the verb), decode the symbols, and
   create the spec per se. Caller decides what to do with it.
   If there is no pname then either we have a case like relative-location
   where the variables supply all the parts, or we have an abstraction
   like subcategorization mixin."
  (let* ((pname (when (stringp (car mumble-spec)) (car mumble-spec)))
         (phrase&args (if pname (cdr mumble-spec) mumble-spec))
         m-word  lp )
    (assert phrase&args)
    
    (when pname
      (setq m-word (m::find-word pname 'm::verb))
      (unless m-word
        (let ((sparser-word (resolve pname)))
          (assert sparser-word (pname)
                  "There is no word in Sparser for ~a" pname)
          (setq m-word (get-mumble-word-for-sparser-word sparser-word 'm::verb)))))

    (let* ((phrase-name (car phrase&args))
           (phrase (m::phrase-named (mumble-symbol phrase-name)))
           (p&v-pairs (cdr phrase&args)))                    
      (assert phrase (phrase-name) "There is no Mumble phrase named ~a." phrase-name)

      (let* ((map (loop for (param-name var-name) on p&v-pairs by #'cddr
                    as param = (mumble::parameter-named (mumble-symbol param-name))
                     as var = (etypecase var-name
                                (string (get-mumble-word-for-sparser-word
                                         (resolve var-name) nil))
                                (symbol
                                 (find-variable-for-category var-name category)))
                    do (progn
                         (assert var () "No variable named ~a in category ~a." var-name category)
                         (assert param () "No parameter named ~a in the phrase ~a." param-name phrase))
                    collect (make-instance 'mumble::parameter-variable-pair
                                           :var var
                                           :param param)))
             (variables (loop for pvp in map
                           collect (m::corresponding-variable pvp)))
             (clp (make-instance 'm::mumble-rdata
                    :class category
                    :map map
                    :vars variables)))

        (cond
          (m-word ;; add lexicalized phrase and head to CLP
           (setq lp (m::verb m-word phrase))
           (setf (m::linked-phrase clp) lp)
           (setf (m::head-word clp) m-word))
          (t ;; record the phrase for use by inheritors
           (setf (m::linked-phrase clp) phrase)))
        
        ;;(lsp-break "decode")
        (values clp lp m-word)))))

  

(defgeneric inherits-mumble-data? (category)
  (:documentation "Abstracts away from the actual type check")
  (:method ((name symbol))
    (inherits-mumble-data? (category-named name :error-if-missing)))
  (:method ((c category))
    (itypep c 'subcategorization-pattern)))

(defun apply-inherited-mumble-data (category)
  "Look up the realization data on the class we inherit from and 
   apply it to this category, which we expect to at least have
   a lexical realization"
    ;; copy the inherited rdata and augment it with whatever local
    ;; data there is.
  (let* ((category-inheriting-from (inherits-mumble-data? category))
         (inherited-rdata (get-tag :mumble category-inheriting-from))
         (local-rdata-field (rdata category))
         (local-rdata (when (null (cdr local-rdata-field)) (car local-rdata-field))))
    (unless local-rdata
      (warn "first case of multiple local rdata: ~a" category)
      ;;/// synonym for "seem" -- "appear" gets this. Two local rdata, one where
      ;; the head is "seem", the other where it's "appear"
      (if inherited-rdata
        (setq local-rdata (car local-rdata-field)) ;; do the first one
        (return-from apply-inherited-mumble-data nil))) ;; punt
    
    (when inherited-rdata
      (let ((new-rdata (m::copy-instance inherited-rdata))
            (local-head (rdata-head-words local-rdata)))
        
        (labels ((change-linked-category (mdata category)
                   (etypecase mdata
                     (m::mumble-rdata (setf (m::linked-category mdata) category))
                     (m::multi-subcat-mdata
                      (loop for pair in (m::mdata-pairs mdata)
                         as embedded-mdata = (m::mpair-mdata pair)
                         do (change-linked-category embedded-mdata category))))))
          
          (change-linked-category new-rdata category)
          (unless local-head (error "why no head word for ~a" category))
          
          (let* ((pos (car local-head))
                 (mpos (mumble-pos pos))
                 (s-word (cadr local-head))
                 (m-word (get-mumble-word-for-sparser-word s-word mpos)))
            (unless (eq pos :verb) (error "Not specializing a verb"))
            
            (flet ((lexicalize (phrase m-word)
                     (m::verb m-word phrase)))
              
              (etypecase new-rdata
                (m::mumble-rdata
                 (multiple-value-bind (lp)
                     (lexicalize (m::linked-phrase new-rdata) m-word)
                   (setf (m::head-word new-rdata) m-word)
                   (setf (m::linked-phrase new-rdata) lp)))
                
                (m::multi-subcat-mdata
                 ;; modify each one in place
                 (dolist (pair (m::mdata-pairs new-rdata))
                   ;; pull out the phrase and lexicalize it
                   (let* ((mdata (m::mpair-mdata pair))
                          (phrase (m::linked-phrase mdata)))
                     (assert (typep phrase 'm::phrase))
                     (multiple-value-bind (lp)
                         (lexicalize phrase m-word)
                       (setf (m::head-word mdata) m-word)
                       (setf (m::linked-phrase mdata) lp))))))
              (setf (mumble-rdata local-rdata) new-rdata) ;; belt & suspenders for now
              (setf (get-tag :mumble category) new-rdata))))))))






;;;------------
;;; head words
;;;------------
         
(defun make-corresponding-lexical-resource (head-word category)
  "Called from the initialize-instance method of realization-data;
   see make-realization-data. The 'head-word' was constructed by
   decode-rdata-heads. The goal is to arrange that every word
   that is mentioned in realization data of a category should 
   have a mumble word created for it. We ensure there's a sparser
   word first, then make its mumble equivalent."
  (declare (special *build-mumble-equivalents*))
  (when (or *build-mumble-equivalents*
            *CwC*)
    (let* ((pos-tag (car head-word))
           (word-or-variable (cadr head-word))
           (word (etypecase word-or-variable
                   ((or word polyword) word-or-variable)
                   (list (car word-or-variable))
                   (lambda-variable 
                    ;; Should we be doing words for variables?
                    ;; e.g. head-word = (:word #<variable name>)
                    (let ((lemma
                           (or (get-tag :lemma category)
                               (list :common-noun
                                     (let ((name (cat-name category)))
                                       (make-word :symbol name
                                                  :pname (string-downcase
                                                          (symbol-name name))))))))
                      (assert (= (length lemma) 2) (lemma) "Improper lemma.")
                      (setq pos-tag (car lemma))
                      (cadr lemma))))))
      (when word
        (make-corresponding-mumble-resource word pos-tag category)))))

(defgeneric make-corresponding-mumble-resource (word pos-tag krisp-obj)
  (:documentation "Used when the caller has the word and part-of-speech 
    in hand, such as lemmas or in the after method or make-rules-for-head's
    after method.
    Calls the standard lexicalized tree constructor and then records
    the result on the Krisp category or individual.")
  (:method :around (word pos-tag krisp-obj)
    (when (or *build-mumble-equivalents*
              *CwC*)
      (call-next-method)))
  (:method (word pos-tag (i individual))
    "Route for attributes"
    (let ((lp (make-resource-for-sparser-word word pos-tag i)))
      (when lp (m::record-lexicalized-phrase i lp))))
  (:method (word pos-tag (c category))
    "Route for lemmas, preposititions, make-rules-for-head"
    (let ((lp (make-resource-for-sparser-word word pos-tag c)))
      (when lp (m::record-lexicalized-phrase c lp)))))


(defun make-resource-for-sparser-word (word pos-tag category &optional verb-phrase)
  "Look up the corresponding mumble part of speech ('m-pos').
   Make the mumble word ('m-word'). Then create and record 
   lexicalized phrase to embed the word in the appropriate
   elementary tree (i.e. lexicalize the appropriate phrase).
   Record the lexicalized tree on the mumble word and th
   See Mumble/derivation-trees/builders.lisp for the lexicalized
   phrase creators." 
  (when (consp word) ;; irregulars e.g. ("bacterium" :plural "bacteria")
    ;; drop them on the floor for now. /// lookup Mumble rep of irregulars
    (setq word (car word)))
  (let ((m-pos (mumble-pos pos-tag)))
    (when m-pos
      (let* ((m-word (and m-pos (get-mumble-word-for-sparser-word word m-pos)))
             (lp (or (m::get-lexicalized-phrase m-word)
                     (case pos-tag
                       (:adjective (m::adjective m-word))
                       ((or :noun :common-noun) (m::noun m-word))
                       (:proper-noun (m::proper-noun m-word))
                       (:verb (m::verb m-word verb-phrase))
                       (:adverb (m::adverb m-word))
                       (:prep (m::prep m-word))
                       (:quantifier (m::quantifier m-word))
                       (:pronoun (m::pronoun m-word))
                       (:interjection (m::interjection m-word))))))
        (when lp
          (m::record-lexicalized-phrase m-word lp)
          (values lp
                  m-word))))))

(defun mumble-pos (pos-tag) ;; keep in sync w/ sparser-pos in binding-centric
  "Translate a Sparser part of speech into the Mumble equivalent"
  ;; Also in Mumble word labels: {past,present}-participle, {comparative,superlative}-adjective
  ;; abstract-noun, {interrogative,wh,relative}-pronoun, particle, complementizer,
  ;; exclamation, expletive, vocative, punctuation.
  (ecase pos-tag
    ((or :noun :common-noun) 'm::noun)
    (:proper-noun 'm::proper-noun)
    (:verb 'm::verb)
    (:modal 'm::modal)
    ((or :adj :adjective) 'm::adjective)
    ((or :adv :adverb) 'm::adverb)
    ((or :prep :preposition) 'm::preposition)
    (:determiner 'm::determiner)
    (:quantifier 'm::quantifier)
    (:pronoun 'm::pronoun)
    (:interjection 'm::interjection)
    (:number 'm::number)
    (:word nil)))


;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER; -*-
;;; Copyright (c) 2016-2019 David D. McDonald. All Rights Reserved.
;;;
;;;     File: "rdata"
;;;   Module: "interface;mumble;"
;;;  Version: November 2019

(in-package :sparser)

;;;-----------------------------------------------------------
;;; Mumble information within shortcut schemes -- phrasal etf
;;;-----------------------------------------------------------
#|  Infer variable-parameter maps by exploiting information stored
on the EFT family objects used by short-cut realizations. E.g

(define-category grow ...
  :realization
     (:verb ("grow" :past-tense "grown")
      :etf (svo-passive)) ... )

The set of 'families' that can appear in the etf field of
a simplified realization for a verb are (5/17)
  sv: s, v
  svo: s, v, o
  svol: s, v, o1, o2
  svo-passive: s, v, o
  svcomp: s, v, c

sp> (realization-scheme-named 'svo)
#<realization-scheme svo> ;; a realization-data instance
  name               = svo
  etf                = #<etf transitive>
  phrase             = (#<phrase svo> ...)
  head-keyword       = :verb
  subst-args         = nil
  schematic-mapping  = ( ... )

sp> (mumble-phrase schema)
(#<phrase svo> (#<parameter s> . subj-slot) (#<parameter v> . :self)
 (#<parameter o> . theme-slot))

sp> (schema-mapping schema)
((agent . subj-slot) (patient . theme-slot) (s . :self) (vp . :self)
 (vg . :self) (np/subject . subj-v/r) (np/object . theme-v/r))

|#

;;-- #1 Setup the maps on each phrase object
#| The map from the phrase is used in decode-shortcut-rdata when it
 sets up an explicit :mumble realization entry. The merging of
 actuals to schematic terms is done by make-mumble-mapping where the
 references to :self are replaced with a reference to the category.
|#
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


;;;-------------------------------------------------------------
;;; Processing explicit mumble fields with lexical info and etf
;;;-------------------------------------------------------------

#| (define-category build ...
     :realization (:verb ("build" :past-tense "built")
                   :etf (svo-passive)
                   :s agent
                   :o artifact
                   :mumble ("build" svo :s agent :o artifact)))

Setup-rdata processess the :realization field.
If there is an etf in it (marking it as a 'shortcut' style of
  realization), then the field is read by decode-shortcut-rdata 
  which passes along the :mumble field as one of its return arguments.
The next call is to make-realization-data where the initialize method
  on the realization-data class calls setup-mumble-data.

N.b. In the case of phosphorylate, whose variables are spread out
all over, the mapping derived from the ETF interfered with the
explicit mapping in the mumble field.

|#
(defun setup-mumble-data (raw-data category rdata)
  "Called from the initialize-instance method of realization-data.
   Take the phrase and mapping prepared in decode-shortcut-data 
   ('raw-data'), and working from the information on the phrase 
   create the runtime ('mdata') object that realize et al. will access. 
   Store that on the realization-data instance ('rdata')."
  (let ((head-data (rdata-head-words rdata)))
    (let ( m-readings ) ;; if multiple pos will have mulitple mdata
      (do ((pos (car head-data) (car rest))
           (word (cadr head-data) (cadr rest))
           (rest (cddr head-data) (cddr rest)))
          ((null pos))
        (let ((mdata (construct-mdata category pos word raw-data)))
          (push mdata m-readings)))
      (setf (mumble-rdata rdata) (nreverse m-readings)))))

;;-- #2a decode the :mumble expression

(defun construct-mdata (category pos word raw-data)
  "If its a verb and there's a verb-oriented lp in the raw data we'll
   assume it gets the map. For other parts of speech we leave those
   fields empty and just use the lp we get from the word."
  ;; Goes this route for "have", "add-to", "build", other BW verbs
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
     (error "Unanticipated part of speech in rdata: ~a" pos))))
  
;;-- #2b subroutine

(defun decode-rdata-head-data (pos word-data category &optional phrase)
  "The head information in realization-data is moderately complicated.
   This digests it and returns the mumble word that is the head and
   the corresponding lexicalized phrase."
#| e.g. :verb ("know" :past-tense "knew" :past-participle "known")
|#
  (multiple-value-bind (s-head-word irregulars)
      (etypecase word-data
        (cons (values (car word-data) (cdr word-data))) ;; or could be synonyms
        (word word-data)
        (polyword word-data))
    (declare (ignore irregulars)) ;;//// third arg in define-word/expr
    (multiple-value-bind (lp m-word m-pos)
        (make-resource-for-sparser-word s-head-word pos category phrase)
      (values m-word lp m-pos))))


;;;------------------------------------
;;; retrieving (processed) mumble data
;;;------------------------------------

#| The realization of an individual is principally determined by its
lexicalized-phrase (see m::get-lexicalized-phrase). However, we may also
know how to realize the entire relation (category) that the individual
instantiates. 
   If there is more than one possible realization we have to select
among them on some basis. Presently (7/17) we can do this by part of speech
and/or by which subcategorized arguments the individual binds. 
|#

#+:mumble
(defgeneric has-mumble-rdata (category &key pos)
  (:documentation "Used in m::new-style-realize-via-bindings to 
    retrieve any structured rdata associated with individuals
    of this category (as oposed to lexicalized-phrases). 
    If there is more than one, descriminate them by part of speech.")
  (:method ((i individual) &key pos)
    (let ((mumble-rdata (has-mumble-rdata (itype-of i) :pos pos)))
      (when mumble-rdata
        (m::select-realization mumble-rdata i pos))))
  (:method ((c category) &key pos)
    (let ((all-resources (mumble-resources-for c)))
      (let ((rdata (loop for r in all-resources
                      when (or (typep r 'm::mumble-rdata)
                               (typep r 'm::multi-subcat-mdata)
                               (typep r 'm::variable-mdata-pair))
                      collect r)))
        rdata))))

#+:mumble
(defgeneric mumble-resources-for (i)
  (:documentation "Lookup and return all the realization options on
   the individual without regard to what part of speech they apply to.
   Get both mrd and lp options .")
  (:method ((i individual))
    (mumble-resources-for (itype-of i)))
  (:method ((name symbol))
    (mumble-resources-for (category-named name :error-if-nil)))
  (:method ((c category))
    (let ((rdata-field (rdata c))
          resources )
      #| e.g. (#<realization for decrease: "decrease" verb>
               #<realization for decrease: "drop" verb>
               #<realization for decrease: "taper off" verb>
               #<realization for decrease: "decrease" common-noun>) |#
      (loop for rdata in rdata-field
         do (let ((head-field (rdata-head-words rdata))
                  (mdata-field (mumble-rdata rdata)))
              (when head-field
                (loop for (pos word) on head-field by #'cddr
                   as m-pos = (mumble-pos pos)
                   as m-word = (get-mumble-word-for-sparser-word word m-pos)
                   as lp = (when m-word
                             (m::get-lexicalized-phrase m-word m-pos))
                   when lp do (pushnew lp resources)))
              (when mdata-field
                (etypecase mdata-field
                  (cons (loop for mdata in mdata-field do
                             (etypecase mdata
                               (m::mumble-rdata (push mdata resources))
                               (m::multi-subcat-mdata
                                (push mdata resources)
                                #+ignore(loop for md in (m::mdata-pairs mdata)
                                   do (push md resources))))))
                  (m::mumble-rdata
                   (push mdata-field resources))
                  (m::multi-subcat-mdata
                   (push mdata-field resources)
                   #+ignore(loop for md in (m::mdata-pairs mdata-field)
                      do (push md resources)))))))
      resources)))


(defgeneric includes-suggestive-variables (i pos)
  (:documentation "Does this individual bind particular variables that
    a frequently present when an interpretation is for a particular
    part of speech. Noun vs. verb is pretty clear, others less so.")
  (:method ((i individual) (pos (eql :noun)))
    (or (value-of 'has-determiner i)
        (value-of 'name i)))
  (:method ((i individual) (pos (eql :verb)))
    (or (indicates-tense? i)))
  (:method ((i individual) (pos (eql :adjective)))
    nil)
  (:method ((i individual) (pos (eql :adverb)))
    nil)
  (:method ((i individual) (pos (eql :preposition)))
    nil)
  (:method ((i individual) (pos T))
    (error "Unexpected part of speech: ~a" pos)))
 

      
;;--- data collection     

(defun collect-cases-of-multiple-rdata-heads () ;; 355 in bio
  (remove nil
          (loop for c in (append *mixin-categories* ;; 47
                                *referential-categories*) ;; 2,420 in bio
            collect (loop for rdata in (rdata c)
                       as heads = (rdata-head-words rdata)
                       when (> (length heads) 2)
                       return c))))
(defun number-of-cases-without-realizations () ;; 308
  (let ((count 0))
    (loop for c in (append *mixin-categories* *referential-categories*)
       unless (rdata c) do (incf count))
    count))


;;--- expedited access (and see mdata in abbreviations)

(defgeneric mumble-data (unit)
  (:documentation "Return the mumble field of the unit
    if there is one.")
  (:method ((i individual)) (mumble-data (itype-of i)))
  (:method ((s symbol)) (mumble-data (category-named s :error-if-null)))
  (:method ((c referential-category))
    (let ((rdata (cat-realization c)))
      (when rdata (mumble-data rdata))))
  (:method ((list cons))
    (when (every #'(lambda (o) (typep o 'realization-data)) list)
      (mumble-data (car list))))
  (:method ((rdata realization-data)) (mumble-rdata rdata)))

(defgeneric mumble-map-data (unit)
  (:documentation "Does the mumble field of the unit include
     a data type that has a variables to parameters map?")
  (:method ((i individual)) (mumble-map-data (itype-of i)))
  (:method ((s symbol)) (mumble-map-data (category-named s :error-if-null)))
  (:method ((c referential-category)) (mumble-map-data (rdata c)))
  (:method ((c mixin-category)) (mumble-map-data (rdata c)))
  (:method ((no null)) nil)
  (:method ((list cons))
    (when (or (some #'(lambda (o) (typep o 'realization-data)) list)
              (some #'m::mumble-rdata? list))
      (mumble-map-data (car list))))
  (:method ((rdata realization-data)) (mumble-map-data (mumble-rdata rdata)))
  (:method ((clp m::category-linked-phrase))
    (when (m::parameter-variable-map clp) clp))
  (:method ((mrd m::mumble-rdata))
    (when (m::parameter-variable-map mrd) mrd))
  (:method ((msm m::multi-subcat-mdata)) msm))


;;;---------------------------------------------------
;;; Mumble information within rdata -- without an ETF
;;;--------------------------------------------------

#| For explicit :mumble components within category realization data
when the data doesn't include an ETF. Special call in setup-rdata
that will pick up these cases, which are primarily going to be
abstract categories with realization information but no lexical information.
e.g.
 (define-mixin-category action-verb
   :realization
     (... 
      :mumble  (svo :s actor :o patient)))

At this point the realization field of the category has a value --
normally a single realization-data field -- though it will only 
have been filled in if the rdata includes an etf and a word.
|#

(defgeneric includes-mumble-spec? (rdata)
  (:documentation "Called by setup-rdata to determine whether
    it should call apply-mumble-data")
  (:method ((rdata list))
    (if (keywordp (car rdata))
      (member :mumble rdata)
      (assq :mumble rdata))))

(defun apply-mumble-rdata (category rdata)
  "Called from setup-rdata when the mumble flag is up and there was
   no eft in realization data.
   Provides phrase and argument information, particularly for verbs. 
   Look up the m-word, create the map, and create and store the lp and CLP.
   Gets its lexical information (word) from full rdata by using
   rdata-head-word with a T argument to get anything rather than
   one particular POS."
  ;; e.g  :mumble ((svo :s agent :o patient) 
  ;;               (svicomp :s agent :c theme)
  ;;               (svoicomp :s agent :o patient :c theme))
  ;; vs.  :mumble (svo :s actor :o patient)
  (let ((mumble-spec (cadr (if (keywordp (car rdata))
                             (member :mumble rdata)
                             (assq :mumble rdata)))))
    (when mumble-spec
      (assert (consp mumble-spec))
      (if (some #'keywordp mumble-spec)
        (decode-one-mumble-spec category mumble-spec)
        (decode-multiple-mumble-specs category mumble-spec)))))

(defun decode-one-mumble-spec (category mumble-spec)
  "Get the spec decoded, have it packaged as rdata, then store it"
  (multiple-value-bind (clp lp m-word m-pos)
      (decode-mumble-spec category mumble-spec)
    (let ((rdata (rdatum-for-mdata category clp)))
      (setf (get-tag :mumble category) clp)
      (setf (mumble-rdata rdata) `(,clp))
      (when m-word
        (m::record-lexicalized-phrase category lp m-pos)
        (mumble::record-krisp-mapping m-word clp)))))

(defun rdatum-for-mdata (category mdata)
  "The mumble rdata is for a particular part of speech. 
   Examine the realization-data objects on this category,
   identify which one is for the comparable reading, and 
   put the mdata on it."
  (let* ((m-pos (m::lookup-pos mdata)) ;; even works on abstract mdata
         (s-pos (m::sparser-pos m-pos))
         (all-readings (rdata category))
         (rdatum (when all-readings (rdata/pos category s-pos))))
    (unless rdatum
      ;; At abstract levels there won't be any lexical information
      ;; in the rdata so rdata/pos won't have returned anything
      (cond
        ((and all-readings (null (cdr all-readings)))
         (setq rdatum (car all-readings)))
        (all-readings
         (error "There is no reading on ~a for POS ~a" (sp::pname category) s-pos))
        (t (error "There is no realization-data object on ~a" (sp::pname category)))))
    rdatum))

(defun decode-multiple-mumble-specs (category mumble-specs)
  "There are multiple mumble specifications on this category.
   Decode them all, and then distribute and store them so they
   can be found consistently."
  (let* ((mdata-list (loop for spec in mumble-specs
                        collect (decode-mumble-spec category spec)))
         (pairs (loop for mdata in mdata-list
                   as variables = (m::variables-consumed mdata)
                   collect (make-instance 'm::variable-mdata-pair
                                          :vars variables
                                          :mdata mdata)))
         (pair-mpos (loop for mdata in mdata-list
                       collect (m::lookup-pos mdata))))
    (if (all-the-same pair-mpos)
      (let* ((multi-data (make-instance 'm::multi-subcat-mdata
                                        :mpairs pairs))
             (rdata (rdatum-for-mdata category multi-data)))
        (setf (mumble-rdata rdata) multi-data)
        (setf (get-tag :mumble category) multi-data))
      (distribute-mdata-by-pos category pairs))))

(defun distribute-mdata-by-pos (category pairs)
  "The mdata is usually specific to part of speech. Identify the different
  readings in the realization of the category (verb, noun, adjective, pp)
  and record the approriate mdata on the appropriate rdata object.
  This could entail breaking down the multi-data into its individual CLP."
  (let ((pairs-pos (loop for pair in pairs
                      as m-pos = (m::lookup-pos pair)
                      collect `(,m-pos . pair))))
    (error "Stub: Multiple pos on mdata for ~a~%~a" category pairs-pos)))

;;--- decoder

(defun decode-mumble-spec (category mumble-spec)
  "Decode the symbols, and create the spec object. 
   Caller decides what to do with it.
   Separate cases (+/- whether it includes ////the verb)
   If there is no pname then either we have a case like relative-location
   where the variables supply all the parts, or we have an abstraction
   like a subcategorization mixin category.
   Returns a mumble-rdata, which is a category-linked-phrase plus head
   and variable data."
  (flet ((make-lexicalized-phrase (m-word m-pos phrase)
           (let ((lp (ecase m-pos ;; Reduced version of make-resource-for-sparser-word
                       (m::verb (m::verb m-word phrase))
                       (m::adjective (m::adjective m-word phrase)))))
             (m::record-lexicalized-phrase category lp m-pos)
             lp)))

    (let* ((pname (when (stringp (car mumble-spec)) (car mumble-spec)))
           (phrase&args (if pname (cdr mumble-spec) mumble-spec))
           m-word m-pos lp )
      (assert phrase&args)

      (let* ((phrase-name (car phrase&args))
             (phrase (m::phrase-named (mumble-symbol phrase-name)))
             (p&v-pairs (cdr phrase&args)))               
        (assert phrase (phrase-name) "There is no Mumble phrase named ~a." phrase-name)
        
        (when pname
          (multiple-value-bind (s-word pos)
              (rdata-head-word category t)
            (when (null pos) (error "no lexical head information for ~a" category))
            (assert (memq pos '(:verb :adjective :noun)))
            (setq m-pos (mumble-pos pos)
                  m-word (m::find-word pname m-pos))
            (unless m-word
              (let ((sparser-word (resolve pname)))
                (assert sparser-word (pname) "There is no word in Sparser for ~a" pname)
                (setq m-word (get-mumble-word-for-sparser-word sparser-word m-pos))))
            
            (setq lp (m::get-lexicalized-phrase m-word m-pos))
            (if lp
              (unless (eq phrase (m::phrase lp))
                ;; But the default (if we're on a path where there is one)
                ;; is unlikely to be correct given the specific instructions
                ;; we're getting here.
                (setq lp (make-lexicalized-phrase m-word m-pos phrase)))
              (setq lp (make-lexicalized-phrase m-word m-pos phrase)))))          
        

        (let* ((map (loop for (param-name var-name) on p&v-pairs by #'cddr
                       as param = (m::parameter-named (mumble-symbol param-name))
                       as var = (etypecase var-name
                                  (string (get-mumble-word-for-sparser-word
                                           (resolve var-name) nil))
                                  (symbol ;; had been :self check here
                                   (find-variable-for-category var-name category)))
                       do (progn
                            (assert var () "No variable named ~a in category ~a." var-name category)
                            (assert param () "No parameter named ~a in the phrase ~a." param-name phrase))
                       collect (make-instance 'mumble::parameter-variable-pair
                                              :var var
                                              :param param)))
               (variables (loop for pvp in map
                             as var = (m::corresponding-variable pvp)
                             when (typep var 'lambda-variable)
                             collect var))
               (clp (make-instance 'm::mumble-rdata
                                   :class category
                                   :map map
                                   :vars variables)))
          (cond
            (m-word ;; add lexicalized phrase and head to CLP
             (setf (m::linked-phrase clp) lp)
             (setf (m::head-word clp) m-word))
            (t ;; record just the phrase for use by inheritors
             (setf (m::linked-phrase clp) phrase)))
          
          ;;(lsp-break "decode -- look at clp")
          (values clp lp m-word m-pos))))))


;;;------------------------
;;; inheriting mumble data
;;;------------------------

(defgeneric inherits-mumble-data? (category)
  (:documentation "Abstracts away from the actual type check.
    Either we inherit from an explicit subcat pattern category
    such as control-verb, or our immediate supercategory has
    mumble-data recorded on it.
    Returns a category if it suceeds.")
  (:method ((name symbol))
    (inherits-mumble-data? (category-named name :error-if-missing)))
  (:method ((c mixin-category)) nil)
  (:method ((c referential-category))
    (let ((supers (immediate-supers c))) ;; include mixins
      (loop for super in supers
         when (mumble-map-data super)
         return super))))

(defparameter *deal-with-multiple-local-rdata* nil
  "Controls warning just below")

(defun apply-inherited-mumble-data (category)
  "Look up the realization data on the class we inherit from and 
   apply it to this category, which we expect to at least have
   a lexical realization.  We copy the inherited rdata and augment 
   it with whatever local data there is. Modifying the copy as
   needed. Called from setup-rdata when the category being setup 
   satisfies inherits-mumble-data?"
  (declare (optimize debug))
  (let* ((category-inheriting-from (inherits-mumble-data? category))
         (inherited-rdata (get-tag :mumble category-inheriting-from)))
    ;;(lsp-break "inheriting from ~a~%~a" category-inheriting-from inherited-rdata)
    (when (and inherited-rdata ;; not all subcat mixins have maps yet
               (abstract-mdata? inherited-rdata))

      (let* ((local-rdata-field (rdata category))
             (local-rdata (when (null (cdr local-rdata-field))
                            (car local-rdata-field))))

        (unless local-rdata ;; just one rdata object
          (when *deal-with-multiple-local-rdata*
            ;;/// synonym for "seem" -- "appear" gets this. Two local rdata, one where
            ;; the head is "seem", the other where it's "appear"
            (warn "first case of multiple local rdata: ~a" category))
          (setq local-rdata (car local-rdata-field))) ;; just do the first one
        
        (let ((new-rdata (m::copy-instance inherited-rdata))
              (local-head-data (rdata-head-words local-rdata)))
          
          (when local-head-data
            ;; Used to signal an error if there wasn't a head, but the more abstract
            ;; categories will draw on proper subcat-mixins without yet suppling a verb

            (labels ((change-linked-category (mdata category)
                       (etypecase mdata
                         (m::mumble-rdata (setf (m::linked-category mdata) category))
                         (m::multi-subcat-mdata
                          (loop for pair in (m::mdata-pairs mdata)
                             as embedded-mdata = (m::mpair-mdata pair)
                             do (change-linked-category embedded-mdata category))))))
              (change-linked-category new-rdata category))
            
            (let* ((pos (car local-head-data))
                   (mpos (mumble-pos pos))
                   (s-word (cadr local-head-data))
                   (m-word (get-mumble-word-for-sparser-word s-word mpos)))

              (flet ((lexicalize (phrase m-word)
                       ;; Could be all the cases in make-resource-for-sparser-word
                       ;; in principle, but rather than refactor just putting in the
                       ;; one's being used so far
                       (ecase pos
                         (:verb (m::verb m-word phrase))
                         (:common-noun (m::noun m-word phrase))
                         (:adjective (m::adjective m-word phrase))
                         (:preposition (m::prep m-word))))

                     ;;////////////// will already be excised?
                     (replace-map-self-values (clp)
                       (let ((map (m::parameter-variable-map clp)))
                         (assert map)
                         (loop for pvp in map
                            as variable = (m::corresponding-variable pvp)
                            when (category-p variable)
                            do (error "self category still in map")
                              #+ignore(setf (m::corresponding-variable pvp) m-word)))))         

                ;; Modify (on the copy -- new-rdata) the head word and lp.
                ;; Store the new lp on the category. Also revise the maps
                ;; to ensure that self nodes (which show up as categories)
                ;; are replaced with the (mumble) head word.
                (etypecase new-rdata
                  (m::mumble-rdata
                   (multiple-value-bind (lp)
                       (lexicalize (m::linked-phrase new-rdata) m-word)
                     (setf (m::head-word new-rdata) m-word)
                     (setf (m::linked-phrase new-rdata) lp)
                     (replace-map-self-values new-rdata)
                     (m::record-lexicalized-phrase category lp mpos)))
                  
                  (m::multi-subcat-mdata
                   ;; (push-debug `(,new-rdata)) (lsp-break "1")
                   (dolist (pair (m::mdata-pairs new-rdata))
                     ;; pull out the phrase and lexicalize it
                     (let* ((mdata (m::mpair-mdata pair))
                            (phrase (m::linked-phrase mdata)))
                       (assert (typep phrase 'm::phrase)) ;; indicates +abstract
                       (multiple-value-bind (lp)
                           (lexicalize phrase m-word)
                         (setf (m::head-word mdata) m-word)
                         (setf (m::linked-phrase mdata) lp)
                         (replace-map-self-values mdata)
                         (m::record-lexicalized-phrase category lp mpos))))))

                (setf (mumble-rdata local-rdata) new-rdata) ;; belt & suspenders for now
                (setf (get-tag :mumble category) new-rdata)))))))))


(defgeneric abstract-mdata? (mdata)
  (:documentation "Used as a check when inheriting mumble data from a super
    category. Some super-categories have mdata that is specific to them
    and should not be inherited. The difference is whether their lp field
    contains a phrase (abtract) or a lexicalized phrase (specific).")
  (:method ((mdata T))
    (push-debug `(,mdata))
    (error "New data type passed to abstract-mdata? check: ~a" (type-of mdata)))
  (:method ((mdata m::mumble-rdata))
    "Base case. More elaborate mumble types are built on these."
    (let ((lp (m::linked-phrase mdata)))
      (typep lp 'm::phrase)))
  (:method ((msm m::multi-subcat-mdata))
    (abstract-mdata? (car (m::mdata-pairs msm))))
  (:method ((pair m::variable-mdata-pair))
    (abstract-mdata? (m::mpair-mdata pair)))
  (:method ((cat-name symbol))
    (let* ((category (category-named cat-name :errorp))
           (rdata (get-tag :mumble category)))
      (assert rdata (cat-name) "No mumble realization data on ~a" cat-name)
      (abstract-mdata? rdata))))




;;;------------
;;; head words
;;;------------

;;--- rdata-initialization entry point

(defun make-corresponding-lexical-resource (head-field category)
  "Only called from the initialize-instance method of realization-data;
   see make-realization-data.
   The 'head-word' was constructed by decode-rdata-heads. The goal is
   to arrange that every word that is mentioned in realization data of
   a category should have a mumble word created for it. We ensure
   there's a sparser word first, then make its mumble equivalent."
  (declare (special *build-mumble-equivalents*))
  (when *build-mumble-equivalents*
    (let* ((pos-tag (car head-field))
           (word-or-variable (cadr head-field))
           (word (etypecase word-or-variable
                   ((or word polyword) word-or-variable)
                   (list word-or-variable) ;;(car word-or-variable))
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


;;--- general entry point

(defgeneric make-corresponding-mumble-resource (word pos-tag krisp-obj)
  (:documentation "Called directly when there is not a mumble expression in 
 the category's realization, but the caller has the word and part-of-speech 
 information in hand, such as:
    (a) The after method of make-rules-for-head
    (b) Old-style prepositions
    (c) quantifiers, attribute-value, pronouns
    (d) time/anaphors ('now')
    (e) directions
 Calls the standard lexicalized tree constructor and then records
 the result on the krisp-obj, which is a category or individual
 Calls extend to look for possibility of inheriting more rdata from
 a parent or mixed-in category.")
  (:method :around (word pos-tag krisp-obj)
    (declare (special *build-mumble-equivalents*))
    (when *build-mumble-equivalents*
      (call-next-method)))

  (:method (word pos-tag (i individual))
    "Route for attributes"
    (multiple-value-bind (lp m-word m-pos)
        (make-resource-for-sparser-word word pos-tag i )
      (declare (ignore m-word))
      (when lp (m::record-lexicalized-phrase i lp m-pos))))
  
  (:method (word pos-tag (c category))
    "Route for lemmas, preposititions, make-rules-for-head"
    (multiple-value-bind (lp m-word m-pos)
        (make-resource-for-sparser-word word pos-tag c)
      (when lp
        (record/extend-mdata c lp m-pos m-word word pos-tag)))))


(defvar *recording-extended-mdata* nil
  "Flag to block recursion (infinite loop) while paths get debugged")

(defun record/extend-mdata (category lp m-pos m-word s-word s-pos)
  "Additional operations over category for mdata. 
    -- Record the lexicalized phrase
    -- If we're not in the scope of the category's rdata object's
   construction (i.e. the object exists and we can store stuff on
   its mumble field), then look for the possibility of inheriting
   map data from a super category."
  (declare (special *recording-extended-mdata*
                    *during-rdata-initialization*))
  
  (when *recording-extended-mdata*
    (error "Potential loop on ~a mdata~%On prior pass data was ~a"
           category *recording-extended-mdata*))
  (let ((*recording-extended-mdata* `(,lp ,m-word ,s-word)))
    (declare (special *recording-extended-mdata*))

    ;; record the lp.
    (m::record-lexicalized-phrase category lp m-pos)

    (unless *during-rdata-initialization*
      (when (inherits-mumble-data? category)
        ;; To do this we need local head word data, which we
        ;; expect to get from the rdata object in the category's
        ;; realization. 

        ;; These shouldn't happen. If they do, then there's been
        ;; another path through setup-rdata -> mumble resources
        ;; that has to be accommodated.
        (unless (rdata category)
          (error "Why no realization on ~a?" category))
        (unless (rdata/pos category s-pos)
          (error "No head entry for ~a on ~a" s-pos category))

        ;;  Look for the possibiity of inheriting map data.
        (let ((mdata
               (if (inherits-mumble-data? category)
                 (apply-inherited-mumble-data category)
                 ))) ;;//// what would we build to help when there's no map.
          (values category lp mdata))))))


;;;-------------------------------
;;; making the lexicalized-phrase
;;;-------------------------------

(defgeneric make-resource-for-sparser-word (word pos-tag category 
                                            &optional irregulars verb-phrase)
  (:documentation "Look up the corresponding mumble part of speech ('m-pos').
    Make the mumble word ('m-word'). Then create and record 
    lexicalized phrase to embed the word in the appropriate
    elementary tree (i.e. lexicalize the appropriate phrase).
    Record the lexicalized tree on the mumble word with its mumble-side
    pos. See Mumble/derivation-trees/builders.lisp for the lexicalized
    phrase creators.")
  (:method ((word-list list) pos-tag category &optional irregulars verb-phrase)
    (let ((s-word (car word-list))
          (rest (cdr word-list)))
      (let* ((irregular-cases (when (keywordp (car rest)) rest))
             (synonyms (unless irregular-cases rest)))
        (cond
          (irregulars (make-resource-for-sparser-word s-word pos-tag category
                                                      irregular-cases verb-phrase))
          (synonyms
           ;; Take the first word as the value to return.
           ;; Run the others for side effects of producing resources
           (multiple-value-bind (lp m-word m-pos)
               (make-resource-for-sparser-word (car synonyms) pos-tag category
                                               nil verb-phrase)
             (loop for s in (cdr synonyms)
                do (make-resource-for-sparser-word s pos-tag category
                                                   nil verb-phrase))
             (values lp m-word m-pos)))           
          (t
           (make-resource-for-sparser-word s-word pos-tag category
                                           nil verb-phrase))))))
  
  (:method (s-word pos-tag category &optional irregulars verb-phrase)
    (let ((m-pos (mumble-pos pos-tag)))
      (when m-pos
        (let* ((m-word (get-mumble-word-for-sparser-word s-word m-pos irregulars))
               (lp (or (m::get-lexicalized-phrase m-word m-pos)
                       (case pos-tag
                         (:adjective (m::adjective m-word nil))
                         ((:noun :common-noun) (m::noun m-word))
                         (:proper-noun (m::proper-noun m-word))
                         (:verb (m::verb m-word verb-phrase))
                         (:adverb (m::adverb m-word))
                         ((:prep :preposition) (m::prep m-word))
                         (:quantifier (m::quantifier m-word))
                         (:pronoun (m::pronoun m-word))
                         (:conjunction (m::conjunction m-word))
                         (:interjection (m::interjection m-word))))))
          (when lp
            (m::record-lexicalized-phrase m-word lp m-pos)
            (values lp
                    m-word
                    m-pos)))))))

  
(defun mumble-pos (pos-tag)
  "Translate a Sparser part of speech into the Mumble equivalent"
  ;; Other Mumble word labels: {past,present}-participle, {comparative,superlative}-adjective
  ;; abstract-noun, {interrogative,wh,relative}-pronoun, particle, complementizer,
  ;; exclamation, expletive, vocative, punctuation.
  ;; keep in sync w/ sparser-pos in krisp-mapping
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
    ((:conjunction :subordinate-conjunction) 'm::conjunction)
    (:number 'm::number)
    (:word nil)))


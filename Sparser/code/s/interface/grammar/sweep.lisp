;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2021 David D. McDonald -- all rights reserved
;;;
;;;      File:   "sweep"
;;;    Module:   interface/grammar/
;;;   Version:   August  2021

;; Routines for sweeping down through the structure of Krisp referents.
;; Initiated 1/11/15 with code from December. 
;; 3/21/2015 SBCL pointed out that binding of pobj and prep variables in PP 
;;  referents was very wasteful
;;  put in a hash table instead. This means that all cases where we were searching 
;;  for the bindings of pob must be replaced by use of (get-prep-pobj value)
;; 4/16/15 The hashtable scheme wasted individuals. Only need to store the PP
;;  as the referent of its edge. Fanout from that change. 
;; 4/28/15 Changed gate of add-new-word-to-catalog to new parameter: 
;;  *collect-new-words* 
;; 6/9/15 Added "strip" routines to reverse the "human-reaable" expressions
;;  created by collect-model. Add strings to stripper for "!recursion!"
;; 11/4/15 Removed the return value form that string case. Doesn't make
;;  sense as something to aggregate. 

(in-package :sparser)

(defun strip-model-descriptions (list)
  "Called by identify-relations to pass the raw-entities and raw-relations
   that are collected by collect-model and pass them through a filter
   dropping out types of individuals that aren't relevant.
   The original list was created by pushing so this puts in text order."
  (let (  clean-items  )
    (dolist (item list)
      (when item ;; some are null
        (typecase item
          (category) ;; ignore it
          (number)
          (individual
           (when (relevant-type-of-individual item)
             (push item clean-items)))
          (cons
           (let ((results (strip-model-description item)))
             (loop for r in results
               do (push r clean-items))))
          (otherwise
           (push-debug `(,item))
           (break "New type of item: ~a~%~a"
                  (type-of item) item)))))
    clean-items))

(defun strip-model-description (tree)
  "Walks down a cons tree to collect all the individuals.
   Returns them as a list."
  ;; e.g. 
  ;; (agent
  ;;  (#<pathway 4020>
  ;;    (modifier
  ;;      (#<protein-pair 4030>
  ;;          (right #<human-protein-family "MAPK" 397>)
  ;;          (left #<human-protein-family "Ras" 401>)))))
  (flet ((strip-model-description1 (item)
           "returns a list or nil"
           (typecase item
             (symbol nil)
             (individual `(,item))
             (category nil)
             (lambda-variable nil) ;; ??
             (cons
              (strip-model-description item))
             (number)
             (string)
             (word)
             (edge) ;; in sequence of number-sequence
             (otherwise
              (push-debug `(,item))
              (break "New case to strip: ~a~%~a"
                     (type-of item) item)))))
    (nconc ; drops the nil's
     (strip-model-description1 (car tree))
     (strip-model-description1 (cdr tree)))))




;;;-----------------------------------
;;; filter out grammatical categories
;;;-----------------------------------

(defun filter-list-of-items-for-relevance (list)
  "Called by filter-for-relevant-mentions (in content-methods).
   The list is the dedup'd sentence-mentions in a sentence,
   and we collect individuals. Feeds into aggregate-terms
   Relevance is ultimately determined by the list that is used
   to control what goes on the discourse history ('dh')."
  (loop for item in list
     when (relevant-type-of-individual item)
     collect item))

(defgeneric relevant-type-of-individual (item)
  (:documentation "Is this item the type of individual that
    is included in the discourse history")
  (:method ((c category))
    (relevant-category-for-dh c))
  (:method ((i individual))
    (relevant-category-for-dh (itype-of i)))
  (:method ((m discourse-mention))
    (if (slot-boundp m 'ci)
      (relevant-type-of-individual (contextual-description m)))
      (relevant-type-of-individual (base-description m)))
  (:method ((s symbol)) nil)
  (:method ((l lambda-variable)) nil)
  (:method ((w word)) nil)
  (:method ((pw polyword)) nil)
  (:method ((e edge)) nil)
  (:method ((n number)) nil)
  (:method ((item T))
    (warn-or-error "'~a' of type ~a passed to relevant-type filter"
          item (type-of item))
    nil))

(defun relevant-category-for-dh (category)
  "Some categories are irrelevant and should never be recorded
   in the discourse history (see global). Return nil if the
   category is on this list."
  ;; also called by add-subsuming-object-to-discourse-history
  (declare (special *irrelevant-to-discourse-history*))
  (unless *irrelevant-to-discourse-history*
    (populate-irrelevant-to-discourse-history))
  (let ((supers (super-categories-of category)))
    (loop for c in *irrelevant-to-discourse-history*
       when (memq c supers)
       do (return-from relevant-category-for-dh nil)
       finally (return t))))


(defparameter *irrelevant-to-discourse-history* nil
  "Populated by the first call from relevant-category-for-dh ('discourse history')")

;; (update-irrelevant-to-discourse-history)

(defparameter *names-of-irrelevant-to-dh-categories*
  '(
    bio-pair
    bio-use
    copular-predication-of-pp
    event-relation
    percent
    sequence
    position-in-a-sequence
    relative-time
    time-unit
    wh-question
    adverbial
    approximator
    be
    bib-reference ; "et-al." -- maybe document-part, it's parent?
    collection ;; don't want to highlight conjunctions of NPs, just the individual NPs
    conjunction
    demonstrative
    determiner
    experimental-condition ; in-vivo
    have
    greek-letter
    hyphenated-pair
    interlocutor
    knockout-pattern ; -/-
    ;;linguistic -- kills items that inherit from it
    ;; remove "linguistic" as an ignored category, since too many items inherit from it,
    ;; e.g. through has-location
    modality ; 'may', 'should'
    modifier
    number
    prepositional-phrase
    prep-comp
    relative-time-adverb
    relativized-prepositional-phrase
    preposition
    prepositional
    pronoun
    quantifier
    spatial-preposition
    subordinate-conjunction
    single-capitalized-letter
    there-exists

    ))

(defun populate-irrelevant-to-discourse-history ()
  "Just runs once, the very first time we need it"
  (when (null *irrelevant-to-discourse-history*)
    (update-irrelevant-to-discourse-history)))

(defun update-irrelevant-to-discourse-history ()
  "Should be used while debugging when testing additions
   to the list"
  (declare (special *names-of-irrelevant-to-dh-categories*))
  (setq *irrelevant-to-discourse-history*
        (loop for name in *names-of-irrelevant-to-dh-categories*
           collect (category-named name))))



;;;----------------------
;;; collecting the model
;;;----------------------

(defvar *individuals-seen* (make-hash-table)
  "There are some recursive references in the binding used for
  prepositional phrases and possibly other things. We use this
  to avoid an infinite loop while collecting.")

(defun initalize-model-collection ()
  (clrhash *individuals-seen*))

(defgeneric collect-model (object)
  (:documentation "Called from identify-relations after all
   other operations on a sentence have been done, provided
   that the *readout-relations* flag is set. Returns a list
   of (variable-name, value) pairs based on a recursive
   sweep through the bindings on individuals. Called on
   the referent of every treetop edge."))

(defmethod collect-model ((n number)) ;; For debugging
  (let ((edge (edge# n)))
    (unless edge (error "The number ~a does not retrieve an edge" n))
    (collect-model edge)))

(defmethod collect-model ((e edge))
  (let ((referent (edge-referent e)))
    (when referent
      (collect-model referent))))

(defmethod collect-model ((w word)) nil) ;;`(,w))
(defmethod collect-model ((pw polyword)) nil) ;;`(,pw)) ; 
(defmethod collect-model ((c category)) nil) ;;`(,c))
;; anything else to be dropped on the floor?


(defmethod collect-model ((i individual))

  (unless (gethash i *individuals-seen*)
    
    (let ((bindings (filter-bindings-by-category i))
          objects )
      
      (push (if (itypep i category::number)
              (value-of 'value i)
              i)
            objects)

      (setf (gethash i *individuals-seen*) t)

      (dolist (b bindings)
        (let* ((var (binding-variable b))
               (var-name (var-name var))
               (value (binding-value b)))
          (unless (or (memq var-name '(category trailing-parenthetical))
                      (typep value 'mixin-category)) ;; has-determiner
            (typecase value
              (individual
               (let ((interior-objects
                      (collect-from-individual i var-name value)))
                 (loop for o in interior-objects
                    do (push o objects))))
              (number)
              (list (push (list var-name (list :list value))
                          objects))
              (category
               (push `(,var-name ,value) objects))
              (lambda-variable)
              (symbol)
              (string)
              (word)
              (polyword)
            
              (otherwise
               (push-debug `(,value ,b ,i))
               (break "Unexpected type of value of a binding: ~a" value))))))
      
      (reverse objects))))


(defun collect-from-individual (i var-name value)
  "Normally we recursively call collect-model on the values of all
   of the bindings. But for some cases we want to deliberated
   ignore some of those bindings as subsumed in the individual"
  ;; Right now this is inside a loop over i's bindings.
  ;; Might have to position this dispatch earlier
  (let ((v-cat (cat-name (itype-of value)))
        objects ) ;; for the new ones
    (case v-cat
      (prepositional-phrase
       (cond ((value-of 'pobj value)
              (push (list var-name
                          (collect-model (value-of 'pobj value)))
                    objects))
             ((value-of 'comp value)
              (push (list var-name
                          (collect-model (value-of 'comp value)))
                    objects))))

      (protein-family ;; no longer use bio-family
       (push (list var-name value)
             objects))

      (prop-motif) ;; ignore

      (otherwise
       (push (list var-name (collect-model value))
             objects)))

    objects))


;;(defparameter *original-collect-mode-recursion-on-individuals* t)

(defvar *categories-seen-by-collect-model* nil)
(define-per-run-init-form
    (setq *categories-seen-by-collect-model* nil))

(defgeneric filter-bindings-by-category (i)
  (:documentation "For selected categories, remove certain bindings
    from the recursive collection walk over bind values.
    Returns the list of bindings to use.")
  (:method ((i individual))
    ;; Evolve into eql signatures if this starts to get large
    (let* ((i-cat (cat-name (itype-of i)))
           (bindings (indiv-binds i))
           (redundant (redundant-bindings i i-cat)))
      (push i-cat *categories-seen-by-collect-model*)
      (if redundant
        (suppress-bindings bindings redundant)
        bindings))))

(defun redundant-bindings (i category-name)
  "When we are tallying what kinds of individuals were encountered
   in a document we get a skewed result if we also include normal
   'parts' of this individuals. Returns a list of variables whose
   bindings should be suppressed from a count, depending on the
   category of the individual."
  (labels ((find-var (name i)
             "Return the specific lambda-variable object with
            this name for the category of this individual"
             (find-variable-for-category name i))
           (map-names (list-of-names)
             (loop for n in list-of-names collect (find-var n i))))
    (case category-name
      (company (map-names '(name)))
      (month (map-names '(name next previous number-of-days-position-in-year)))
      (year (map-names '(name value year-of-century)))
      (date (map-names '(year day month)))
      (number (map-names '(value)))
      (money (map-names '(currency number)))
      (denomination/money '(name symbol))
      )))

;;;--------------------------------------------------------------------
;;; collecting sentences & new vocabulary automatically from a passage
;;;--------------------------------------------------------------------

(defparameter *collect-new-words* t
  "Gates add-new-word-to-catalog, which is called by 
  all the different ways of defining a previously unknown word")

;;-- accumulators
(defvar *newly-found-unknown-words* nil
  "Accumulator for add-new-word-to-catalog")
(defvar *from-comlex* nil)
(defvar *from-BigMech-default* nil)
(defvar *from-no-morph-default* nil)
(defvar *from-morphology* nil)
(defvar *from-computation* nil)
(defvar *first-names* (make-hash-table :size 5000 :test #'equalp))
(defvar *last-names* (make-hash-table :size 5000 :test #'equalp))

(defun reset-unknown-word-accumulators ()
  (setq *newly-found-unknown-words* nil
        *from-comlex* nil
        *from-BigMech-default* nil
        *from-no-morph-default* nil
        *from-morphology* nil
        *from-computation* nil
        *bio-entity-strings* (list *bio-entity-initial-string*)
        ;; *bio-entity-strings* is in analyzers/psp/patterns/driver.lisp
        ))

(defun display-word-accumulator-tallies (&optional (stream *standard-output*))
  (format stream "~& ~a looked up in Comlex~
                  ~% ~a deduced from their morphology~
                  ~% ~a added by Big Mechanism default~
                  ~% ~a added with default setup~
                  ~% ~a added from no-space operations~
                  ~% ~a added by computing them~%~%"
          (length *from-comlex*)
          (length *from-morphology*)
          (length *from-BigMech-default*)
          (length *from-no-morph-default*)
          (1- (length *bio-entity-strings*))
          (length *from-computation*)))

#| make-word/all-properties/or-primed => objects/chart/words/lookup/new-words
The real call is to establish-unknown-word, which gets set by the 
call to what-to-do-with-unknown-words (which dispatches on the protocol 
we're using. The precursor feeder routines are find-word, really-known-word?, 
and word-has-associated-category who encounter unknown words.|#

(defun add-new-word-to-catalog (word source &optional instance-string)
  "Called as part of cataloging any new word. The 'source' encodes
   which of the places that define new words was involved."
  (declare (special *suffix-pos-table*))
  (case source
    (:comlex ;; unpack-primed-word, continue-unpacking-lexical-entry
     (when (member (pname word)
                 '("bag" "bin" "bomb" "branch" "bre" "build" "call" "cap" "cash" "cast" "center" "centre" "chase"
 "clean" "clear" "close" "club" "con" "core" "cox" "crash" "deal" "dream" "echo" "factor" "fail"
 "fee" "follow" "foot" "gather" "grasp" "greet" "group" "ham" "hang" "held" "hold" "host" "lie"
 "light" "load" "mail" "mask" "mean" "meet" "mute" "net" "overlaid" "overlay" "prep" "prey" "proce"
 "race" "save" "segment" "sell" "shot" "sin" "sip" "ski" "smooth" "spike" "spin" "star" "str"
                   "stud" "sun" "sup" "thread" "tower" "trip" "usher" "wild" "win")
                 :test #'equal)
       ;;??? what is the function of this list -- and the warnings ??
       #+ignore(if instance-string
           (warn "New comlex verb ~s with lemma ~s " instance-string word)
           (warn "New comlex verb ~s " word)))
     (pushnew word *from-comlex*))

    (:BigMech-default ;; handle-unknown-word-as-bio-entity
     (pushnew word *from-BigMech-default*))

    (:computed
     (pushnew word *from-computation*))
    
    (:default ;; setup-unknown-word-by-default -- no mophology information
     ;; will be redundantly listed in *from-morphology*
     (pushnew word *from-no-morph-default*))

    ((:ends-in-ed :ends-in-ing :ends-in-ly :ends-in-s
       #| :ends-in-er :ends-in-est |#)
     ;; in assign-morph-brackets-to-unknown-word
     ;; Those are the explicit keyword cases
     (pushnew word *from-morphology*))

    (otherwise
     (typecase source
       (cons
        ;; There is also a set of cons values for a word's morphology,
        ;; e.g. ("ible" ADJ) in objects/chart/words/lookup/morphology.lisp
        (if (and (= 2 (length source))
                 (assq (car source) *suffix-pos-table*))
          (pushnew word *from-morphology*)
          (warn "New cons source for ~s - ~a"
                (word-pname word) source)))
       (otherwise
        (warn "Unexpected source type for ~s~%~a  ~a"
              (word-pname word) (type-of source) source))))))


(defgeneric added-from-comlex (word)
  (:method ((pname string))
    (let ((word (resolve pname)))
      (if word
        (added-from-comlex word)
        (format nil "'~a' is not defined as a word" pname))))
  (:method ((w word))
    (or (get-tag :comlex w)
        (eq :comlex (get-tag :source w)))))

(defgeneric added-from-morphology (word)
  (:method ((pname string))
    (let ((word (resolve pname)))
      (if word
        (added-from-morphology word)
        (format nil "'~a' is not defined as a word" pname))))
  (:method ((w word))
    (eq :morphology (get-tag :source w))))
  

#| original
  (declare (ignore source)) ;; Comlex vs. morphology vs. ...
  (mark-definition-source word) ;; replaces ignore argument
  (when *collect-new-words*
    (pushnew word *newly-found-unknown-words*)))  |#


;;--- saving an aliquat of unknown word information
#|
  1. (reset-unknown-word-accumulators)
  2. run the files you want the data on, e.g.
        (run-n-json-articles 50)
  3. pick a name to describe what you did: 'xriv-1-50 
  4. figure out where you want to stash the file
  5. call save-unknown-word-aliquat with the name and filename
|#

(defun save-unknown-word-aliquat (name outfilename &key ns-stuff &aux *fnames* *lnames*)
  "Sort the different lists or otherwise clean up the various
   accumulators. Write them to 'outfilename' as a succession
   of lists each bound to a parameter whose name will
   incorporate the name of this run in an attempt to be unique"
  (declare (special *first-names* *last-names*))
  (handler-case
      (with-open-file (out (if ns-stuff
                               (format nil "sparser:tools;ns-stuff;~a" outfilename)
                               outfilename)
                           :direction :output
                           :if-exists :overwrite :if-does-not-exist :create)
        (format out ";; ~a sample of unknown words~
               ~%;; created ~a~
             ~%~%(in-package :sparser)~%"
                name (date-&-time-as-formatted-string))

        (flet ((tailored-string (type)
                 (intern (string-append type "-" name)
                         (find-package :sparser))))
      
          (let ((pnames (loop for word in (sort-words *from-BigMech-default*)
                              collect (pname word)))
                (var-name (tailored-string 'bigmech)))
            (format out "~&~%;; ~a extracted as unknown bio-entity~%"
                    (length pnames))
            ;; package the subsets of these unknown bio entities
            (when (or (> (hash-table-count *first-names*) 0)
                      (> (hash-table-count *last-names*) 0))
              (setq *fnames*
                    (loop for w in pnames
                       when (and (gethash (pname w) *first-names*)
                                 (not (equal (pname w)
                                             (string-downcase (pname w))))
                                 (not (< (length (pname w)) 3)))
                       collect w))
              (setq *lnames*
                    (loop for w in pnames
                       when (and (gethash (pname w) *last-names*)
                                 (not (equal (pname w)
                                             (string-downcase (pname w)))))
                       collect w))
              (setq pnames (loop for w in pnames
                                 unless (or (gethash (pname w) *first-names*)
                                            (gethash (pname w) *last-names*))
                                 collect w))
              (write-list-to-param (format nil "~a-All-Upper" var-name)
                                   (loop for w in pnames
                                         when (equal (pname w) (string-upcase (pname w)))
                                         collect w)
                                   out)
              (write-list-to-param (format nil "~a-All-Lower" var-name)
                                   (loop for w in pnames
                                      when (equal (pname w) (string-downcase (pname w)))
                                      collect w)
                                   out)
              (write-list-to-param (format nil "~a-MixedCase" var-name)
                                   (loop for w in pnames
                                      unless (or (equal (pname w) (string-downcase (pname w)))
                                                 (equal (pname w) (string-upcase (pname w))))
                                      collect w)
                                   out)
              (write-list-to-param "FirstNames" *fnames* out)
              (write-list-to-param "LastNames" *lnames* out)))

          (let* ((minus-seed (delete *bio-entity-initial-string*
                                     *bio-entity-strings*
                                     :test #'string=))
                 (sorted (sort (copy-list minus-seed) #'string-lessp))
                 (var-name (tailored-string 'bio-entity)))
            (format out "~&~%;; ~a defined as a bio-entity~%" (length sorted))
            (write-list-to-param var-name sorted out))

          (let* ((minus-default
                  (if (null *from-no-morph-default*)
                      *from-morphology*
                      (loop for word in *from-morphology*
                         unless (memq word *from-no-morph-default*)
                         collect word)))
                 (pnames (loop for word in (sort-words minus-default)
                            collect (word-pname word)))
                 (var-name (tailored-string 'morph)))
            (format out "~&~%;; ~a extracted by morphology~%" (length pnames))
            (write-list-to-param var-name pnames out))
      
          (let ((pnames (loop for word in (sort-words *from-no-morph-default*)
                           collect (word-pname word)))
                (var-name (tailored-string 'defaulted)))
            (format out "~&~%;; ~a extracted with default mophology~%" (length pnames))
            (write-list-to-param var-name pnames out))

          (let ((pnames (loop for word in (sort-words *from-comlex*)
                           collect (word-pname word)))
                (var-name (tailored-string 'comlex)))
            (format out "~&~%;; ~a extracted from Comlex~%" (length pnames))
            (write-list-to-param var-name pnames out))))
    (error (e)
      (format t "~&Error in dumping unknown word set: ~a, Error is: ~a~%" name e))))

(defun incremental-save-unknown-words (name outfilename &key (ns-stuff t) &aux *fnames* *lnames*)
  "Sort the different lists or otherwise clean up the various
   accumulators. Write them to 'outfilename' as a succession
   of lists each bound to a parameter that can be extended by loading other versions of this file"
  (declare (special *first-names* *last-names*))
  (handler-case
      (with-open-file (out (if ns-stuff
                               (format nil "sparser:tools;ns-stuff;~a" outfilename)
                               outfilename)
                           :direction :output
                           :if-exists :overwrite :if-does-not-exist :create)
        (format out ";; ~a sample of unknown words~
               ~%;; created ~a~
             ~%~%(in-package :sparser)~%"
                name (date-&-time-as-formatted-string))

        (flet ((tailored-string (type)
                 (intern (string-append type "-" name)
                         (find-package :sparser))))
      
          (let ((pnames (loop for word in (sort-words *from-BigMech-default*)
                              collect (pname word)))
                (var-name (tailored-string 'bigmech)))
            (format out "~&~%;; ~a extracted as unknown bio-entity~%"
                    (length pnames))
            ;; package the subsets of these unknown bio entities
            (when (or (> (hash-table-count *first-names*) 0)
                      (> (hash-table-count *last-names*) 0))
              (setq *fnames*
                    (loop for w in pnames when
                            (and (gethash (pname w) *first-names*)
                                 (not (equal (pname w)
                                             (string-downcase (pname w))))
                                 (not (< (length (pname w)) 3)))
                          collect w))
              (setq *lnames*
                    (loop for w in pnames when
                            (and (gethash (pname w) *last-names*)
                                 (not (equal (pname w)
                                             (string-downcase (pname w)))))
                          collect w))
              (setq pnames (loop for w in pnames
                                 unless (or (gethash (pname w) *first-names*)
                                            (gethash (pname w) *last-names*))
                                 collect w))
              (write-list-to-param "*All-Upper-Unknown-Words*"
                                   (loop for w in pnames
                                         when (equal (pname w) (string-upcase (pname w)))
                                         collect w)
                                   out)
              (write-list-to-param "*All-Lower-Unknown-Words*"
                                   (loop for w in pnames
                                         when (equal (pname w) (string-downcase (pname w)))
                                         collect w)
                                   out)
              (write-list-to-param "*MixedCase-Unknown-Words*"
                                   (loop for w in pnames
                                         unless (or (equal (pname w) (string-downcase (pname w)))
                                                    (equal (pname w) (string-upcase (pname w))))
                                         collect w)
                                   out)
              (write-list-to-param "*FirstNames*" *fnames* out)
              (write-list-to-param "*LastNames*" *lnames* out)))

          (let* ((minus-seed (delete *bio-entity-initial-string*
                                     *bio-entity-strings*
                                     :test #'string=))
                 (sorted (sort (copy-list minus-seed) #'string-lessp))
                 (var-name (tailored-string 'bio-entity)))
            (format out "~&~%;; ~a defined as a bio-entity~%" (length sorted))
            (write-list-to-param var-name sorted out))

          (let* ((minus-default
                  (if (null *from-no-morph-default*)
                      *from-morphology*
                      (loop for word in *from-morphology*
                            unless (memq word *from-no-morph-default*)
                            collect word)))
                 (pnames (loop for word in (sort-words minus-default)
                               collect (word-pname word)))
                 (var-name (tailored-string 'morph)))
            (format out "~&~%;; ~a extracted by morphology~%" (length pnames))
            (write-list-to-param "*Morph-Words*" pnames out))
      
          (let ((pnames (loop for word in (sort-words *from-no-morph-default*)
                              collect (word-pname word)))
                (var-name (tailored-string 'defaulted)))
            (format out "~&~%;; ~a extracted with default mophology~%" (length pnames))
            (write-list-to-param "*Default-Morphology-Words*" pnames out))

          (let ((pnames (loop for word in (sort-words *from-comlex*)
                              collect (word-pname word)))
                (var-name (tailored-string 'comlex)))
            (format out "~&~%;; ~a extracted from Comlex~%" (length pnames))
            (write-list-to-param "*Comlex-Word-List*" pnames out))))

    (error (e)
      (format t "~&Error in dumping unknown word set: ~a, Error is: ~a~%" name e))))


(defun write-list-to-param (param-name list stream)
  (format stream
          "~%~%(defparameter ~a~
             ~%    (remove-duplicates~
             ~%      (append~
             ~%         (when (boundp '~a) (symbol-value `~a))~
             ~%         '"
          param-name param-name param-name)
  (pprint list stream)
  #+gnore
  (loop for item in list
     do (format stream "~s " item))
  (format stream ")~%    :test #'equalp))~%"))

(defun push-list-on-param (file-handle items stream)
  (format stream
          "~%~%(install-article-mentions~%  ~s~%  ~a~%"
          (json-relative-pathname (decoded-file file-handle))
          file-handle)
  (pprint (second items) stream)
  (format stream ")"))

;;;------------------------
;;; sweeping for sentences
;;;------------------------

; (f "/Users/ddm/ws/R3/ws/Mitre December texts/passage 1.txt")
; (setq *sweep-for-sentences* t)
; (setq *sweep-for-sentences* nil)


(defvar *sentence-sweep-stream* *standard-output*
  "Bound by write-swept-sentences-to-file to the file that
   it opens for output. Defaults to the listener for debugging.")

(defvar *swept-sentence-count* 0
  "Initialized by write-swept-sentences-to-file and bumped
   by sentence-sweep. Shows up in a comment to help us keep
   track of which sentence is which by eye.")



(defun sentence-sweep (sentence &optional (stream *sentence-sweep-stream*))
  ;; The outer loop is the standard sentence-sweep-loop where this is
  ;; called as an alternative to the rest of the analysis passes by the
  ;; flag *sweep-for-sentences* being up. The call is made once per sentence
  ;; and just after the sentence has been delimited, which does mean that
  ;; the first pass of analysis has happened.
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (start-char (pos-character-index start-pos))
         (end-char (1+ ;; include period
                    (pos-character-index end-pos))))
    (let ((string
           (extract-string-from-char-buffers start-char end-char)))
      ;;(print string stream)
      (format stream "~&~5T(p ~s) ;; ~a"
              string (incf *swept-sentence-count*)))))

(defun write-swept-sentence-to-file (in-filename out-filename)
  (setq *swept-sentence-count* 0)
  (with-open-file (out-stream
                   out-filename
                   :direction :output
                   :if-does-not-exist :create
                   :if-exists :overwrite)
    (let ((*trace-lexicon-unpacking* nil)
          (*trace-morphology* nil)
          (*sweep-for-sentences* t)
          (*sentence-sweep-stream* out-stream))
      (declare (special *trace-lexicon-unpacking* *trace-morphology*
                        *sweep-for-sentences*))
      (funcall #'f in-filename))))



;;;------------------------------------
;;; tabulating facts about the grammar
;;;------------------------------------

(defun words-with-rule-sets () ;; vanilla R3 10/9/18 32,146
  (loop for w in *words-defined* ;; 66,638
       as rs = (rule-set-for w)
       when (and rs (typep rs 'rule-set)) collect rs))

(defun polywords-with-rule-sets () ;; 73,235
  (loop for pw in *polywords-defined* ;; 97,902
       as rs = (rule-set-for pw)
       when (and rs (typep rs 'rule-set)) collect rs))


(defun categories-with-rule-sets () ;; 969
  (let ((rule-sets nil))
    (loop for accumulator in '(*referential-categories* ;; 2,430
                               *form-categories* ;; 127
                               *mixin-categories* ;; 46
                               *grammatical-categories*) ;; 503
       as categories = (eval accumulator)
       do (loop for c in categories
             as rs = (rule-set-for c)
             when (and rs (typep rs 'rule-set)) do (push rs rule-sets)))
    rule-sets))


(defun all-defined-rule-sets () ;; 106,350
  (append (categories-with-rule-sets)
          (words-with-rule-sets)
          (polywords-with-rule-sets)))

(defun tally-rule-ids-in-use ()
  (let ((left 0) (right 0))
    (loop for rs in (all-defined-rule-sets)
       when (rs-right-looking-ids rs) do (incf right)
       when (rs-left-looking-ids rs) do (incf left))
    (values left right))) ;; 913, 570

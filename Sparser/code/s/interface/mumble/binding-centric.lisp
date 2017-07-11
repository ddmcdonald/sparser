;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2013-2017 David D. McDonald -- all rights reserved
;;;
;;;     File:  "binding-centric"
;;;   Module:  "interface;mumble;"
;;;  Version:  June 2017

;; Broken out from interface 4/7/13.
;; Completely rewritten 8/16 by AFP.

(in-package :mumble)


(defparameter *check-lp-coverage* nil
  "Guards breaks used when testing whether the coverage of lexicalized
   phrases provided by the rdata on categories and individuals is thorough")


;;;-----------------------------------------------------------
;;; interface into Mumble's state at the time we make the dtn
;;;-----------------------------------------------------------

(defun current-position ()
  "Wraps the generation state variable *current-position*, which only
   has a value when Mumble has started instantiating and executing phrases.
   Returns nil if the variable does not have a meaningful value."
  (when (boundp '*current-position*)
    (when *current-position* ;; nil check
      *current-position*)))

(defun current-position-p (&rest labels)
  "Return true if the slot being generated has one of the given labels."
  (let ((slot (current-position)))
    (when slot
      (memq (name slot) labels))))

;;;----------------------
;;; poor man's def-trace
;;;----------------------

(defparameter *trace-archie* nil)

(defun tr (string &rest args)
  (when *trace-archie*
    (let ((doctored-string (string-append "~&" string "~%")))
      (apply #'format t doctored-string args))))

;;;--------------------------------------
;;; subroutines to realizing individuals
;;;--------------------------------------

(defun pretty-bio-name (name)
  "Heuristically guess a nice name for a protein or other biological entity."
  (let ((syns (sp::get-bio-synonyms name)))
    (if syns
      (or (let ((human (search "_HUMAN" name))) ; prefer the synonym without the _HUMAN suffix
            (find (subseq name 0 human) syns :test #'string-equal))
          (first (stable-sort ; prefer shortest synonym
                  (cons name (copy-list syns))
                  #'< :key #'length)))
      ;; no synonyms, so look for removable parts
      (let ((index (search "_HUMAN" name)))
        (if index
          (subseq name 0 index)
          (subseq name (case (search "BIO-" name :test #'char-equal)
                         (0 4) ; elide bio-prefix
                         (t 0))))))))

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


(defgeneric tense (object)
  (:documentation "Determine and attach tense to the given object.")
  (:method ((dtn derivation-tree-node) &aux (referent (referent dtn)))
    "Attach tense to the given DTN by inspecting its referent."
    (cond ((sp::value-of 'sp::past referent)
           (past-tense dtn))
          ((sp::value-of 'sp::progressive referent)
           (progressive dtn))
          ((sp::value-of 'sp::perfect referent)
           (had dtn))
          ((current-position-p 'adjective 'complement-of-be 'relative-clause)
           (past-tense dtn))
          (t (present-tense dtn))))
  (:method :after ((dtn derivation-tree-node) &aux (referent (referent dtn)))
    "Interpret a referent with an object but no subject as an imperative."
    (when (and (sp::individual-p referent)
               (sp::missing-subject-vars referent)
               (let ((object-var (sp::bound-object-var referent)))
                 (and object-var (not (eq (sp::value-of object-var referent)
                                          sp::**lambda-var**)))))
      (command dtn))))

(defun heavy-predicate-p (i)
  "Return true if the individual is too heavy to be used as a premodifier."
  (and (sp::individual-p i)
       (remove-if (lambda (b)
                    (or (eq (sp::binding-value b) sp::**lambda-var**)
                        (eq (sp::var-name (sp::binding-variable b)) 'sp::name)))
                  (sp::indiv-binds i))))


;;--------- dtn modifiers
#| These take a dtn that was created by their caller and add to it.
Many use methods in derivation-trees/builders.lisp or make.lisp
to do the actual manipulation. These are called by cases in
attach-via-binding. |#

(defun attach-adjective (adjective dtn pos)
  (let ((adjp (make-dtn :referent adjective
                        :resource (phrase-named 'adjp)))
        (ap (ecase pos
              ((adjective noun) 'adjective)
              ((adverb verb)
               (if (sp::itypep adjective 'sp::intensifier)
                 'adverbial-preceding
                 (multiple-value-bind (head rpos)
                     (sp::rdata-head-word adjective t)
                   (declare (ignore head))
                   (case rpos
                     (:interjection 'adverbial-preceding)
                     (otherwise 'vp-final-adjunct))))))))
    (tr "Attaching adjective: ~a" adjective)
    (make-complement-node 'a adjective adjp)
    (make-adjunction-node (make-lexicalized-attachment ap adjp) dtn)))

(defun attach-pp (prep object dtn pos)
  (let ((pp (make-dtn :resource (prep prep)))
        (ap (ecase pos
              ((adjective noun) 'np-prep-adjunct)
              (verb 'vp-prep-complement))))
    (tr "Attaching a pp: ~a ~a" prep object)
    (make-complement-node 'prep-object object pp)
    (make-adjunction-node (make-lexicalized-attachment ap pp) dtn)))


(defun possibly-pronoun (item)
  "Wrapper around subject, object, and complement below."
  (cond ((sp::itypep item 'sp::pronoun/first/singular)
         (pronoun-named 'first-person-singular))
        ((sp::itypep item 'sp::pronoun/first/plural)
         (pronoun-named 'first-person-plural))
        ((sp::itypep item 'sp::pronoun/second)
         (pronoun-named 'second-person-singular))
        ((sp::itypep item 'sp::pronoun/plural)
         (pronoun-named 'third-person-plural))
        (t item)))

(defun attach-subject (subject dtn)
  (tr "Attaching subject: ~a" subject)
  (make-complement-node 's (possibly-pronoun subject) dtn))

(defun attach-object (object dtn)
  (tr "Attaching object: ~a" object)
  (make-complement-node 'o (possibly-pronoun object) dtn))

(defun attach-complement (complement dtn)
  (tr "Attaching complement: ~a" complement)
  (make-complement-node 'c (possibly-pronoun complement) dtn))


;;---- dtn sources for particular cases

(defun realize-number (i)
  "Make a dtn for simple number words. For long, multi-word numbers recover
   the algorithm from grammar/numbers.lisp"
  (let* ((lisp-number (sp::value-of 'sp::value i))    
         (number-string (format nil "~r" lisp-number))
         ;; (format nil "~r" 1325) => "one thousand three hundred twenty-five"
         (word (word-for-string number-string 'number))
         (phrase (phrase-named 'bare-np-head))
         (dtn (make-dtn :referent i :resource phrase)))
    (tr "Realize-number: ~a" i)
    (make-complement-node 'n word dtn)
    dtn))

;;;--------------------------------------
;;; Realizations for Sparser individuals
;;;--------------------------------------

(defmethod realize ((i sp::individual))
  "Realize a Sparser individual. Handles special cases then falls through
   to realize-via-bindings."
  (cond ((sp::itypep i 'sp::collection)
         (let ((items (sp::value-of 'sp::items i))
               (type (sp::value-of 'sp::type i)))
           (tr "Realizing collection ~a" i)
           (if (null items)
             (plural (realize-via-category i type))
             (cl:labels ((conjoin (one &optional two &rest more)
                           (let ((conjunction
                                  (make-dtn :referent `(and ,one ,two)
                                            :resource (phrase-named
                                                       'two-item-conjunction))))
                             (make-complement-node 'one one conjunction)
                             (make-complement-node 'two two conjunction)
                             (if more
                               (apply #'conjoin conjunction more)
                               conjunction))))
               (apply #'conjoin items)))))
        ((sp::itypep i 'sp::number)
         (tr "Realizing number ~a" i)
         (realize-number i))
        ((sp::itypep i 'sp::polar-question)
         (tr "Realizing polar-question ~a" i)
         (discourse-unit (question (realize (sp::value-of 'sp::statement i)))))
        ((sp::itypep i 'sp::copular-predication)
         (tr "Realizing copular-predication ~a" i) ;;/// explicit call
         (let ((be (realize-via-bindings (sp::value-of 'sp::predicate i)
                                         :pos 'verb
                                         :resource (phrase-named 's-be-comp))))
           (attach-subject (sp::value-of 'sp::item i) be)
           (attach-complement (sp::value-of 'sp::value i) be)
           be))
        ((sp::itypep i 'sp::explicit-suggestion)
         (tr "Realizing explicit-suggestion ~a" i) ;;/// explicit call
         (let ((dtn (realize-via-bindings (sp::value-of 'sp::suggestion i)))
               (m (sp::value-of 'sp::marker i))
               (ap 'initial-adverbial))
           (make-adjunction-node (make-lexicalized-attachment ap m) dtn)
           dtn))
        ((sp::itypep i 'sp::there-exists)
         (tr "Realizing there-exists ~a" i) ;;/// explicit call
         (let ((be (realize-via-bindings (sp::value-of 'sp::predicate i)
                                         :pos 'verb
                                         :resource (phrase-named 's-be-comp))))
           (attach-subject (find-word "there" 'pronoun) be)
           (attach-complement (sp::value-of 'sp::value i) be)
           be))
        
        ((sp::itypep i 'sp::object-dependent-location) ;; 'end of the row'
         (tr "Realizing object-dependent-location ~a" i)
         (apply-category-linked-phrase i))
        
        ((sp::itypep i 'sp::relative-location)
         (tr "Realizing relative-location ~a" i)
         (apply-category-linked-phrase i))
        
        ((and (null (sp::indiv-binds i)) ;; nothing for realize-via-bindings to chew on
              (sp::rdata-head-word i t))
         (tr "Realizing ~a, with no bindings" i)
         (apply-lexical-resource i))
        (t (realize-via-bindings i))))

(defun apply-lexical-resource (i)
  "There's a word associated with this individual. Use it's lexicalized phrase
   as the resource"
  (let ((lp (get-lexicalized-phrase i)))
    (tr "For ~a using lexical resource ~a" i lp)
    (assert lp (i) "No lexicalized resource on ~a" i)
    (make-dtn :referent i :resource lp)))

(defgeneric realize-via-category (i category) ;; "a big red block."
  (:documentation "Use the category as the source of the head, then add
    any other binding on the individual")
  (:method ((i sp::individual) (c sp::referential-category))
    (let ((lp (get-lexicalized-phrase c)))
      (assert lp (c) "No lexicalized resource on ~a" c)
      (tr "realizing ~a via its category" i)
      (let ((pos (lookup-pos lp))
            (dtn (make-dtn :referent i :resource lp)))
        (loop-over-bindings i pos dtn)))))


;;--- realize-via-bindings

(defgeneric realize-via-bindings (i &key pos resource)
  (:documentation "Loop over the bindings of the individual 'i' to populate
    its dtn. If the caller knows the part of speech (pos) or the resource
    phrase should be used it supplies it, otherwise we make as good a guess
    as we can before starting to walk over the bindings.")
  
  (:method ((i sp::individual) &key pos resource)
    "Look for realization data on the individual or its category and marshal it."

    (let* ((lp (find-lexicalized-phrase i))
           (pos (cond
                  (pos ;; passed in for copular-predication, there-exists
                   (tr "explicit part of speech passed in: ~a" pos)
                   pos)
                  (lp (lookup-pos lp))
                  (t (tr "Have to guess POS of ~a" i)
                     (guess-pos i))))
           ;; rdata is essentially an annotated category-linked-phrase.
           ;; It encodes the variable to phrase-parameter mapping.
           ;; It's also POS-specific.
           (rdata (sp::has-mumble-rdata i :pos pos)))
      (when rdata ;; lp can be more specific
        (setq lp (linked-phrase rdata)))
      (unless resource
        (setq resource (if lp lp (ecase pos ;; make the lp from scratch
                                   (adjective (word-for i pos))
                                   (noun (noun (word-for i pos)))
                                   (verb (verb (word-for i pos)
                                               (verb-frame-for i)))))))
      (tr "Realize-via-bindings for ~a  lp = ~a~
         ~%       rdata = ~a" i lp rdata)
      
      (let ((dtn (make-dtn :referent i :resource resource)))            
        (case pos (verb (tense dtn))) ;; also checks for command
        (if rdata
          (loop-over-some-bindings i pos dtn rdata)
          (loop-over-bindings i pos dtn))))))
 
(defun loop-over-some-bindings (i pos dtn rdata)
  "Use the map on the rdata to handle the core bindings
   then use the normal binding loop dispatch for the rest."
  (let ((map (parameter-variable-map rdata)))
    (let ((handled
           (loop for pvp in map
              as variable = (corresponding-variable pvp)
              as parameter = (corresponding-parameter pvp)
              as value = (etypecase variable
                           (word variable) ;; e.g. "together"
                           (sp::lambda-variable
                            (sp::value-of variable i)))
              do (when value (make-complement-node parameter value dtn))
              collect variable)))
      (loop for binding in (reverse (sp::indiv-binds i))
         as variable = (sp::binding-variable binding)
         as var-name = (sp::var-name variable)
         unless (memq variable handled)
         do (attach-via-binding binding var-name dtn pos))
      dtn)))

(defun loop-over-bindings (i pos dtn)
  "Handle every binding on i"
  (loop
     for binding in (reverse (sp::indiv-binds i))
     as variable = (sp::binding-variable binding)
     as var-name = (sp::var-name variable)
     do (attach-via-binding binding var-name dtn pos)
     finally (return dtn)))


(defun verb-frame-for (i)
  ;; Should be able to eliminate this along with the other guess work
  ;; since these cases shold be handled by rdata
  (when *check-lp-coverage*
    (break "call to verb-frame-for"))
  'svo )

;; Original for reference during transition
#|  (:method ((i sp::individual) &key
            (pos (guess-pos i))
            (resource (ecase pos
                        (adjective (word-for i pos))
                        (noun (noun (word-for i pos))) ;; see derivation-trees/builders.lisp
                        (verb (verb (word-for i pos) ;; for def of noun and verb
                                    (verb-frame-for i))))))
    "Realize a Sparser individual as a DTN with its bindings attached."  |#


;;-------- attach-via-binding

(defgeneric attach-via-binding (binding var-name dtn pos)
  (:documentation "Dispatch off the identity of the variable to
    determine how to add the value of the binding to the dtn
    that was passed in. ")
  
  (:method (binding var-name dtn pos)
    "Attach a binding as a subject, object, or prepositional phrase."
    (declare (ignore var-name))
    (declare (optimize debug))
    (tr "unmarked binding: ~a" binding)
    (let* ((individual (sp::binding-body binding))
           (variable (sp::binding-variable binding))
           (value (sp::binding-value binding))
           (subcats (stable-sort ; prefer shorter words
                     (typecase value
                       ((or sp::referential-category sp::individual)
                        (sp::find-subcat-labels value variable individual)))
                     #'< :key (lambda (label)
                                (etypecase label
                                  ((or string symbol)
                                   (length (string label)))
                                  ((or sp::word sp::polyword)
                                   (length (sp::pname label)))))))
           (prep (or (find-if #'sp::word-p subcats) ; prefer single words
                     (find-if #'sp::polyword-p subcats))))
      (cond ((eql value sp::**lambda-var**)) ;; effectively a trace
            ((or (eql variable (sp::subject-variable individual))
                 (find :subject subcats))
             (if (current-position-p 'complement-of-be)
               (attach-pp "by" value dtn pos) ; passive subject
               (attach-subject value dtn)))
            ((or (eql variable (sp::object-variable individual))
                 (find :object subcats))
             (attach-object value dtn))
            ((sp::itypep value 'sp::attribute-value) ; a modifier like 'red'
             (tr "attribute-value: ~a" value)
             (attach-adjective value dtn pos))
            (prep
             (tr "Preposition: ~a ~a" prep value)
             (attach-pp (word-for prep 'preposition) value dtn pos))
            ((find :thatcomp subcats)
             (tr "thatcomp: ~a" value)
             (make-adjunction-node
              (make-lexicalized-attachment 'restrictive-relative-clause value)
              dtn))
            ((find :m subcats)
             (tr "M subcat label: ~a" value)
             (attach-adjective value dtn pos))
            (t (tr "No handler for unmarked binding ~a" variable)
               nil))))
  
  (:method (binding (var-name (eql 'sp::adverb)) dtn pos)
    "Attach an adverb."
    (tr "Binding var is adverb: ~a" binding)
    (attach-adjective (sp::binding-value binding) dtn pos))
  
  (:method (binding (var-name (eql 'sp::has-determiner)) dtn pos)
    "Attach a determiner."
    (declare (ignore pos))
    (tr "Binding var is has-determiner: ~a" binding)
    (case (sp::cat-name (sp::itype-of (sp::binding-value binding)))
      (sp::a (initially-indefinite dtn))
      (sp::the (always-definite dtn))
      (sp::that (attach-adjective "that" dtn 'noun))))
  
  (:method (binding (var-name (eql 'sp::modal)) dtn pos)
    "Attach a modal."
    (tr "Binding var is modal: ~a" binding)
    (add-accessory dtn :tense-modal (word-for (sp::binding-value binding) pos) t))
  
  (:method (binding (var-name (eql 'sp::modifier)) dtn pos)
    "Attach a modifier as an adjective."
    (tr "Binding var is modifier: ~a" binding)
    (attach-adjective (sp::binding-value binding) dtn pos))
  
  (:method (binding (var-name (eql 'sp::negation)) dtn pos)
    "Attach a negation."
    (tr "Binding var is negation: ~a" binding)
    (negate dtn))
  
  (:method (binding (var-name (eql 'cl:number)) dtn pos) ;; "a three step staircase"
    "Attach a numeric quantifier as an adjective so it retains its determiner."
    (tr "Binding var is number: ~a" binding)
    (attach-adjective
     (let ((number (sp::binding-value binding)))
       (if (sp::itypep number 'sp::ordinal)
         (format nil "~:r" (sp::value-of 'sp::value (sp::value-of 'sp::number number)))
         (format nil "~r" (sp::value-of 'sp::value number))))
     dtn pos))
  
  (:method (binding (var-name (eql 'sp::position)) dtn pos)
    "Attach a position as a premodifier."
    (tr "Binding var is position: ~a" binding)
    (attach-adjective (sp::binding-value binding) dtn pos))
  
  (:method (binding (var-name (eql 'sp::predicate)) dtn pos)
    "Attach a predicate as a diff from the subject or object description."
    (tr "predicate binding: ~a" binding)
    (loop with value = (sp::binding-value binding)
          with complement = (loop with s/o = (list (parameter-named 's)
                                                   (parameter-named 'o))
                                  for c in (complements dtn)
                                  when (and (find (phrase-parameter c) s/o)
                                            (sp::itypep (referent c)
                                                        (sp::itype-of value)))
                                  return (referent c))
          for binding in (set-difference (and (sp::individual-p value)
                                              (sp::indiv-binds value))
                                         (and (sp::individual-p complement)
                                              (sp::indiv-binds complement))
                                         :key #'sp::binding-variable)
       do (attach-adjective (sp::binding-value binding) dtn pos)))
  
  (:method (binding (var-name (eql 'sp::predication)) dtn pos)
    "Attach a predication as either a premodifier or a relative clause."
    (tr "predication binding: ~a" binding)
    (let* ((individual (sp::binding-body binding))
           (predicate (sp::binding-value binding)))
      (if (heavy-predicate-p predicate)
        (make-adjunction-node
         (make-lexicalized-attachment
          'restrictive-relative-clause
          (realize-via-bindings predicate :pos 'verb))
         dtn)
        (attach-adjective predicate dtn pos))))
  
  (:method (binding (var-name (eql 'sp::quantifier)) dtn pos)
    "Attach a quantifier as a premodifier."
    (tr "Binding var is quantifier: ~a" binding)
    (attach-adjective (sp::binding-value binding) dtn pos))

  (:method (binding (var-name (eql 'sp::parts)) dtn pos)
    (tr "Bindng var is parts (of): ~a" binding)
    "This variable is defined by partonomic and will hold a set -of- parts"
    (attach-pp (find-word "of") (sp::binding-value binding) dtn pos))
  
  (:method (binding (var-name (eql 'sp::time)) dtn pos)
    "Attach a time as an adverbial."
    (declare (ignore pos))
    (tr "Binding var is time: ~a" binding)
    (make-adjunction-node
     (make-lexicalized-attachment 'adverbial-preceding (sp::binding-value binding))
     dtn))
  
  (:method (binding (var-name (eql 'sp::location)) dtn pos)
    "Look at how the location will be realized and selected an attachment
     point that fits."
    (let* ((i (sp::binding-value binding)))
      (tr "location binding: ~a" i)
      (let ((ap (cond
                 ((heavy-predicate-p i) 'np-prep-complement)
                  (t 'nominal-premodifier))))
        (make-adjunction-node
         (make-lexicalized-attachment ap i)
         dtn)))))
    

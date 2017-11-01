;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "binding-helpers"
;;;   Module:  "/interface/mumble/"
;;;  version:  October 2017

;; initiated 7/25/17 to hold all the auxiliary subroutines of the
;; realization procesure.

(in-package :mumble)

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

(defun current-position-is-top-level? ()
  "Is the current position something like turn or a similar
   main-clause holding slot like sentence, question, or s.
   If the current position isn't bound yet then we're in 
   declared to be at top level. 
      Controls application of command in the tense fn."
  (let* ((slot (current-position))
         (name (name slot)))
    (cond
      ((null slot) t)
      ((memq name '(turn sentence question s paragraph)) t)
      ((eq name 'item)
       ;; This is from a conjunction phrase. Toplevel if not below a clause.
       (null (dominating-clause)))
      (t nil))))

(defun display-current-position (&optional (stream *standard-output*))
  (let* ((slot (current-position))
         (toplevel? (unless slot (current-position-is-toplevel?))))
    (format stream "~&Current position: ")
    (cond
      (slot (format stream "[~a]" (name slot)))
      (toplevel? (format stream "toplevel"))
      (t (format stream "unknown")))))


;;;------------------------------------
;;; grammatical constraint information
;;;------------------------------------

(defparameter *slot-name-part-of-speech-table*
  '((turn (verb noun adjective adverb))
    ;; grammatical-constraints (clause np vp pp adjp advp)
    (subject (noun)) ;; (np vp)
    (direct-object (noun)) ;; (np)
    (complement-of-be (adjective adverb verb noun))
    (relative-clause (verb))
    (adjp-head (adjective))
    )
  "Has the information we could otherwise glean (and abstract to
   the needed level) from the grammatical constraints on slot labels")

(defun current-position-compatible-with-pos (pos-label)
  "Is the current syntactic position compatible with
   realizations of this particular part-of-speech?"
  (let ((slot (current-position)))
    (when slot
      (grammatically-compatible? slot pos-label))))

(defgeneric grammatically-compatible? (position pos)
  (:documentation "Are the grammatical constraints on this position
    compatible with realizations of this part of speech")
  (:method ((slot slot) (pos symbol))
    (let* ((table *slot-name-part-of-speech-table*)
           (labels-on-slot (labels slot))
           (label-names (loop for l in labels-on-slot
                           collect (name l))))
      (let ((entries (loop for name in label-names
                        when (assoc name table)
                        collect (cadr (assoc name table)))))
        (unless entries (warn "no slot-pos entry for ~a" label-names))
        (loop for entry in entries
           when (memq pos entry)
           do (return-from grammatically-compatible? t))
        nil))))


;;;----------------------
;;; poor man's def-trace
;;;----------------------

(defparameter *trace-archie* nil)

(defun sp::trace-archie () (setq *trace-archie* t))
(defun sp::untrace-archie () (setq *trace-archie* nil))

(defun tr (string &rest args)
  (when *trace-archie*
    (let ((doctored-string (string-append "~&" string "~%")))
      (apply #'format t doctored-string args))))

;;;-----------------------------------------
;;; special cases for realizing individuals
;;;-----------------------------------------

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

(defun realize-wh-question/attribute (i)
  (let ((wh-category (sp::value-of 'sp::wh i))
        (attribute (sp::value-of 'sp::attribute i))
        (statement (sp::value-of 'sp::statement i))
        (top-dtn (make-dtn :referent i :resource (phrase-named 'comp-s)))
        (wh-dtn (make-dtn :resource (phrase-named 'wh-term))))
    ;; setup wh phrase
    (make-complement-node 'wh wh-category wh-dtn)
    (make-complement-node 'q attribute wh-dtn)
    ;; setup top
    (make-complement-node 'wh wh-dtn top-dtn)
    (make-complement-node 's statement top-dtn)

    (discourse-unit ;; supply the "?" as well as capitalizing
     (question ;; invert the aux
      top-dtn))))


(defun realize-copular-predication (i)
  ;;(sp::with-bindings ((:sparser) item value prep predicate) i <= getting nil's
    ;;/// The predicate variable holds the tense, e.g.
  ;; (predicate (#<be 84923> (present #<ref-category PRESENT>)))
  (let ((item (sp::value-of 'sp::item i))
        (value (sp::value-of 'sp::value i))
        (prep (sp::value-of 'sp::prep i))
        (predicate (sp::value-of 'sp::predicate i)))
    (let* ((of-pp? (sp::itypep i 'sp::copular-predication-of-pp))
           (phrase (if of-pp?
                     (phrase-named 'SVPrepO)
                     (phrase-named 's-be-comp)))
           (dtn (make-dtn :referent i :resource phrase)))
      (when item (attach-subject item dtn))
      (when value
        (if of-pp?
          (attach-object value dtn)
          (attach-complement value dtn)))
      (when prep (attach-preposition prep dtn))
      (when predicate
        (attach-verb predicate dtn))
      (verb-aux-handler dtn i)
      dtn)))


;;;-------------------------------------------------------------
;;; additional handling to sort out potential issues in clauses
;;;-------------------------------------------------------------

(defgeneric verb-aux-handler (dtn i)
  (:documentation "Called from realize-bindings-via-common-path 
    and simpler clause-creating routines. Handle things that are
    common to any verb-centric realization.")
  (:method ((dtn derivation-tree-node) (i sp::individual))
    (when (verb-based-realization dtn)
      ;; Look for a specified tense
      (cond ((sp::value-of 'sp::past i)
             (past-tense dtn))
            ((sp::value-of 'sp::progressive i)
             (progressive dtn))
            ((sp::value-of 'sp::perfect i)
             (had dtn))
            ;; ((current-position-p 'adjective 'complement-of-be 'relative-clause)
            ;;  (past-tense dtn)) -- moved just below
            (t (unless (get-accessory-value :tense-modal dtn) ;; e.g. a modal
                 (present-tense dtn))))
      ;; Look at the status of its variables.
      ;; If some/all are abstract/missing then depending on the context
      ;; we need to make various adjustments
      (let ((parameters (get-parameters dtn)) ;; parameter objects
            (slot (current-position))
            (object (get-object i)) ;; value of object var
            (subject (get-subject i)))
        (cond
          ((current-position-is-top-level?)
           ;; ??? why did we check for a concrete object?
           (when (sp::missing-subject-vars i)
             (command dtn)))
          ((current-position-p 'relative-clause)
           (let ((head (head-of-relative-clause slot)))
             (declare (ignore head)) ;; need more info in predication
             (when (and object
                        (sp::is-lambda-var object)) ;; =? the head
               (passive dtn)
               (when (and subject
                          (explicit-subject dtn))
                 ;; That subject will be clipped by the relative-clause
                 ;; transformation. As good a reason as any for a by-phrase
                 ;; since we're alrady passivized this clause.
                 (attach-pp "by" subject dtn 'verb)))))
          ;; complement-of-be -- leads to by-phrase w/in complement-of-be
          ;; adjective
          ))
      dtn)))


(defgeneric includes-tense? (idividual)
  (:documentation "Do the bindings on the individual 
    include any of the tense carriers?")
  (:method ((i sp::individual))
    (let* ((bindings (sp::indiv-binds i))
           (variables (loop for b in bindings collect (sp::binding-variable b)))
           (names (loop for v in variables collect (sp::var-name v))))
      (or (memq 'sp::past names) ;;/// stage in syntax/tense.lisp
          (memq 'sp::progressive names)
          (memq 'sp::perfect names)
          (memq 'sp::present names)))))



;;;------------------------------------------
;;; Subroutines for attaching various things
;;;------------------------------------------

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
              (adjective 'adjp-prep-complement)
              (noun 'np-prep-adjunct)
              (verb 'vp-prep-complement))))
    (tr "Attaching a pp: ~a ~a via ~a" prep object ap)
    (make-complement-node 'prep-object object pp)
    (make-adjunction-node (make-lexicalized-attachment ap pp) dtn)))


(defun attach-verb (verb dtn)
  "The individual representing the verb can be carrying additional
   bindings that need to be expressed, such as negation"
  (make-complement-node 'v verb dtn)
  (when (and (sp::individual-p verb) ;; vs. a word
             (sp::indiv-binds verb)) ;; has some bindings
    (loop-over-bindings verb 'verb dtn))
  dtn)


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

(defun attach-preposition (prep dtn)
  (make-complement-node 'p prep dtn))


;;;-------
;;; tests
;;;-------

(defun heavy-predicate-p (i)
  "Return true if the individual is too heavy to be used as a premodifier.
   Applied to predication and location bindings in attach-via-binding"
  (and (sp::individual-p i)
       ;; Could it be a pp or a clause that has a subj or obj that's not lambda
       ;;/// how to test pp case -- e.g. for location?
       (or (includes-real-subj/obj? i)
           (includes-tense? i))))

;; Original definition. Doesn't deal properly with "phosphorylated MEK"
;; where that instance of 'phosphorylated' should be deemed light.
       #+ignore(remove-if (lambda (b)
                    (or (eq (sp::binding-value b) sp::**lambda-var**)
                        (eq (sp::var-name (sp::binding-variable b)) 'sp::name)))
                          (sp::indiv-binds i))

;;--- accessors

(defgeneric get-subject (item)
  (:method ((i sp::individual))
    (loop for v in (sp::find-subject-vars i)
       as value = (sp::value-of v i)
       when value do (return value))))

(defgeneric get-object (item)
  (:method ((i sp::individual))
    (loop for v in (sp::find-object-vars i)
       as value = (sp::value-of v i)
       when value do (return value))))

(defgeneric explicit-subject (item)
  (:documentation "Is the subject parameter a bound complement
     in the dtn?")
  (:method ((dtn derivation-tree-node))  ;;  get-parameter-binding
    (let ((s (parameter-named 's)))
      (loop for node in (complements dtn)
         when (eq (phrase-parameter node) s)
         collect (value node)))))

(defun includes-real-subj/obj? (i)
  "Discounts binding to the lambda variable as 'real'"
  (let ((subject (get-subject i))
        ;; ignoring possibilty of intransitives since we don't know
        ;; what the realization really would be
        (object (get-object i)))
    (when subject
      (when (sp::is-lambda-var subject)
        (setq subject nil)))
    (when object
      (when (sp::is-lambda-var object)
        (setq object nil)))
    (or subject object)))

(defun wrap-if-abstracted (value)
  "Called in loop-over-some-bindings to allow some value
   to go through to the parameter, even if its realization
   is the empty string."
  (if (sp::is-lambda-var value)
    (build-trace value)
    value))



;;--- ignore these

(defparameter *variables-to-ignore-for-attach-by-binding*
  '(sp::present
    sp::raw-text  sp::uid
    sp::name sp::word
    )
  "Holds list of variables that attach-via-bindings needn't bother
   to look at because either they don't contribute to the
   content we're generating or some other process will handle them.")

(defun ignorable-variable? (v)
  (memq (sp::var-name v) *variables-to-ignore-for-attach-by-binding*))

;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE -*-
;;; Copyright (c) 2013-2016 David D. McDonald -- all rights reserved
;;;
;;;     File:  "binding-centric"
;;;   Module:  "interface;mumble;"
;;;  Version:  August 2016

;; Broken out from interface 4/7/13.
;; Completely rewritten 8/16 by AFP.

(in-package :mumble)

;;;--------------------------------------
;;; Realizations for Sparser individuals
;;;--------------------------------------

(defun pretty-bio-name (name)
  "Heuristically guess a nice name for a protein or other biological entity."
  (let ((syns (sp::get-bio-synonyms name)))
    (if syns
      (or (let ((human (search "_HUMAN" name)))
            (and human ; prefer the synonym without the _HUMAN suffix
                 (find (subseq name 0 human) syns :test #'string-equal)))
          (first (sort (cons name (copy-list syns)) ; use the shortest synonym
                       #'< :key #'length)))
      (subseq name (case (search "BIO-" name :test #'char-equal)
                     (0 4) ; elide bio-prefix
                     (t 0))))))

(defun sparser-pos (pos)
  "Translate a Mumble part-of-speech tag to the equivalent Sparser tag."
  (ecase pos
    (noun :common-noun)
    (verb :verb)
    (adjective :adjective)
    (preposition :prep)
    (interjection :interjection)))

(defun word-for (item &optional (pos 'noun))
  "Produce a Mumble word that denotes the given item."
  (declare (optimize debug))
  (check-type item (or sp::individual sp::referential-category))
  (let ((raw-word (or (sp::rdata-head-word item (sparser-pos pos))
                      (sp::lemma item (sparser-pos pos))
                      (sp::value-of 'sp::name item)
                      (sp::value-of 'sp::word item)
                      (string-downcase ; last-ditch guess
                       (sp::cat-name (sp::itype-of item))))))
    (cond ((sp::itypep item 'sp::biological)
           (word-for-string (pretty-bio-name (sp::pname raw-word)) pos))
          ((sp::itypep item 'sp::collection)
           (word-for (sp::value-of 'sp::type item)))
          (t (etypecase raw-word
               (string (word-for-string raw-word pos))
               (mumble::word raw-word)
               ((or sp::word sp::polyword)
                (sp::get-mumble-word-for-sparser-word raw-word pos)))))))

(defun current-position-p (&rest labels)
  "Return true if the slot being generated has one of the given labels."
  (memq (name *current-position*) labels))

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
    (when (and (sp::value-of (sp::object-variable referent) referent)
               (not (sp::value-of (sp::subject-variable referent) referent)))
      (command dtn))))

(defun heavy-predicate-p (i)
  "Return true if the individual is too heavy to be used as a premodifier."
  (and (sp::individual-p i)
       (remove-if (lambda (b)
                    (or (eq (sp::binding-value b) sp::**lambda-var**)
                        (eq (sp::var-name (sp::binding-variable b)) 'sp::name)))
                  (sp::indiv-binds i))))

(defgeneric guess-pos (i)
  (:documentation "Guess the part of speech to be used for an individual.")
  (:method-combination or)
  (:method or ((i sp::individual))
    (when (some (lambda (b)
                  (or (eq (sp::binding-value b) sp::**lambda-var**)
                      (eq (sp::binding-variable b) (sp::subject-variable i))
                      (eq (sp::binding-variable b) (sp::object-variable i))))
                (sp::indiv-binds i))
      'verb))
  (:method or ((i sp::referential-category))
    (when (or (sp::subject-variable i)
              (sp::object-variable i))
      'verb))
  (:method or (i)
    (if (current-position-p 'adjective 'complement-of-be 'relative-clause)
      'adjective
      'noun)))

(defun realize-collection (collection)
  "Realize a collection as a plural or a conjunction of items."
  (assert (sp::itypep collection 'sp::collection))
  (let ((items (sp::value-of 'sp::items collection)))
    (if (null items)
      (plural (realize-via-bindings collection 'noun))
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

(defun realize-predication (subject predicate copula)
  (check-type subject sp::individual)
  (check-type predicate sp::individual)
  (assert (sp::itypep copula 'sp::be) (copula) "Invalid copula.")
  (let ((be (make-dtn :referent copula
                      :resource (phrase-named 's-be-comp))))
    (make-complement-node 's subject be)
    (make-complement-node 'c predicate be)
    (tense be)))

(defmethod realize ((i sp::individual))
  "Realize a Sparser individual."
  (let ((primary-category (car (sp::indiv-type i))))
    (cond ;; Check for focus, known object, same type as recent, etc.
      #+(or)
      ((sp::get-tag :mumble primary-category)
       (realize-via-category-linked-phrase primary-category i))
      ((sp::itypep i 'sp::collection)
       (realize-collection i))
      ((sp::itypep i 'sp::polar-question)
       (discourse-unit (question (realize (sp::value-of 'sp::statement i)))))
      ((sp::itypep i 'sp::copular-predication)
       (realize-predication (sp::value-of 'sp::item i)
                            (sp::value-of 'sp::value i)
                            (sp::value-of 'sp::predicate i)))
      (t (realize-via-bindings i)))))

(defun realize-via-bindings (i &optional (pos (guess-pos i)))
  "Realize a Sparser individual as a DTN with its bindings attached."
  (declare (optimize debug))
  (check-type i sp::individual)
  (loop with dtn = (make-dtn :referent i
                             :resource (ecase pos
                                         (adjective (word-for i pos))
                                         (verb (verb (word-for i pos) 'svo))
                                         (noun (noun (word-for i pos)))))
        initially (tense dtn)
        for binding in (reverse (sp::indiv-binds i))
        as variable = (sp::binding-variable binding)
        as var-name = (sp::var-name variable)
        do (attach-via-binding binding var-name dtn pos)
        finally (return dtn)))

(defun attach-adjective (adjective dtn pos)
  (let ((adjp (make-dtn :resource adjective))
        (ap (ecase pos
              ((adjective noun) 'adjective)
              (verb (multiple-value-bind (head rpos)
                        (sp::rdata-head-word adjective t)
                      (declare (ignore head))
                      (case rpos
                        (:interjection 'adverbial-preceding)
                        (otherwise 'vp-final-adjunct)))))))
    (make-adjunction-node (make-lexicalized-attachment ap adjp) dtn)))

(defun attach-pp (prep object dtn pos)
  (let ((pp (make-dtn :resource (prep prep)))
        (ap (ecase pos
              ((adjective noun) 'np-prep-adjunct)
              (verb 'vp-prep-complement))))
    (make-complement-node 'prep-object object pp)
    (make-adjunction-node (make-lexicalized-attachment ap pp) dtn)))

(defgeneric attach-via-binding (binding var-name dtn pos)
  (:method (binding var-name dtn pos)
    "Attach a binding as a subject, object, or prepositional phrase."
    (declare (ignore var-name))
    (declare (optimize debug))
    (let* ((individual (sp::binding-body binding))
           (variable (sp::binding-variable binding))
           (value (sp::binding-value binding))
           (subcats (typecase value
                      ((or sp::referential-category sp::individual)
                       (sp::find-subcat-labels value variable individual))))
           (prep (or (find-if #'sp::word-p subcats) ; prefer single word
                     (find-if #'sp::polyword-p subcats))))
      (cond ((eql value sp::**lambda-var**))
            ((or (eql variable (sp::subject-variable individual))
                 (find :subject subcats))
             (if (current-position-p 'complement-of-be)
               (attach-pp "by" value dtn pos) ; passive subject
               (make-complement-node 's value dtn)))
            ((or (eql variable (sp::object-variable individual))
                 (find :object subcats))
             (make-complement-node 'o value dtn))
            ((sp::itypep value 'sp::attribute-value) ; essentially a modifier
             (attach-adjective value dtn pos))
            (prep
             (attach-pp (sp::get-mumble-word-for-sparser-word prep 'preposition)
                        value dtn pos)))))
  (:method (binding (var-name (eql 'sp::adverb)) dtn pos)
    "Attach a final adverb."
    (attach-adjective (sp::binding-value binding) dtn pos))
  (:method (binding (var-name (eql 'sp::aspect)) dtn pos)
    "Attach tense/aspect/modality/etc."
    (loop with t/a = (sp::binding-value binding)
          initially (assert (sp::itypep t/a 'sp::tense/aspect-vector) (t/a))
          for binding in (sp::indiv-binds t/a)
          as variable = (sp::binding-variable binding)
          as var-name = (sp::var-name variable)
          do (attach-via-binding binding var-name dtn pos)
          finally (return dtn)))
  (:method (binding (var-name (eql 'sp::has-determiner)) dtn pos)
    "Attach a determiner."
    (declare (ignore pos))
    (case (sp::cat-name (sp::itype-of (sp::binding-value binding)))
      (sp::a (initially-indefinite dtn))
      (sp::the (always-definite dtn))
      (sp::that (attach-adjective "that" dtn 'noun))))
  (:method (binding (var-name (eql 'sp::modifier)) dtn pos)
    "Attach a modifier as an adjective."
    (attach-adjective (sp::binding-value binding) dtn pos))
  (:method (binding (var-name (eql 'sp::negation)) dtn pos)
    "Attach a negation."
    (negate dtn))
  (:method (binding (var-name (eql 'cl:number)) dtn pos)
    "Attach a numeric quantifier as an adjective so it retains its determiner."
    (attach-adjective
     (let ((number (sp::binding-value binding)))
       (if (sp::itypep number 'sp::ordinal)
         (format nil "~:r" (sp::value-of 'sp::value (sp::value-of 'sp::number number)))
         (format nil "~r" (sp::value-of 'sp::value number))))
     dtn pos))
  (:method (binding (var-name (eql 'sp::position)) dtn pos)
    "Attach a position as a premodifier."
    (attach-adjective (sp::binding-value binding) dtn pos))
  (:method (binding (var-name (eql 'sp::predicate)) dtn pos)
    "Attach a predicate as a diff from the subject or object description."
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
    (let* ((individual (sp::binding-body binding))
           (predicate (sp::binding-value binding)))
      (if (heavy-predicate-p predicate)
        (make-adjunction-node
         (make-lexicalized-attachment
          'restrictive-relative-clause
          (let ((be (make-dtn :referent predicate
                              :resource (phrase-named 's-be-comp))))
            (make-complement-node 's individual be)
            (make-complement-node 'c predicate be)
            (present-tense be)))
         dtn)
        (let ((adjp (make-dtn :referent predicate
                              :resource (phrase-named 'adjective-phrase))))
          (make-complement-node 'a predicate adjp)
          (attach-adjective adjp dtn pos)))))
  (:method (binding (var-name (eql 'sp::quantifier)) dtn pos)
    "Attach a quantifier as a premodifier."
    (attach-adjective (sp::binding-value binding) dtn pos))
  (:method (binding (var-name (eql 'sp::time)) dtn pos)
    "Attach a time as an adverbial."
    (declare (ignore pos))
    (make-adjunction-node
     (make-lexicalized-attachment 'adverbial-preceding (sp::binding-value binding))
     dtn)))

;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2016 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "specialists"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  March 2016

;; Broken out on its own 3/16/16

(in-package :mumble)

#| This a file of "specialist" functions that encode how 
particular kinds of things can be realized. Referring to
individuals by their type, refering to collections.
The sources are Krisp categories or individuals.
The outputs are dtns. The specialists are sensitive
to the current context and make updates to it. 
|#

;;;-----------------------------------------
;;; type-based references: "a block", "one"
;;;-----------------------------------------

#| At least in the blocks world, a reference to a category
is effectively a reference to a individual instance of it
that may or may not exist. E.g. we could be building it
or (inside 'a') we don't care which one we get.

But we need to check for this sort of context because a shorter,
more contextually appropriate / fluent phrase may be better
 1. Have individuals of this sort already been mentioned?
    "another one", "another block", "(do you have) one?"
 2. Was that reference recent or long ago? 
 3. Is this category salient / in focus ?
|#
(defun plan-reference-to-category (category-name)
  (let ((category (sp::category-named 
                   (sparser-symbol category-name) :break-if-none))

        ;; first check if there is a mention of this category
        ;; in the recent discourse => "another one", "one more"
        (assumed-types (assumed-object-types)))

    (cond
     ((memq category assumed-types)
      (plan-how-to-use-One category))

     (t
      ;; Otherwise lookup the tree. Here we're just presuming
      ;; that we're getting an NP. We could probably confirm
      ;; it by knowledge that would be stored on the clause's
      ;; phrase and the current argument that organizes parsing
      ;; Of course, though, if we guarenteed that this is 
      ;; a category we're realizing then we only get into trouble
      ;; with verbal complements or other sorts of embedded clauses.
      (let* ((phrase (get-lexicalized-phrase category-name))
             (dtn (make-dtn :referent category ;; the Krisp object
                            :resource phrase)))
        ;; No we need to add the information that various 
        ;; pronoun and agreement functions what to have.
        ;; This is world knowledge, so we ought to be able
        ;; to stash it in the ontology and query for it.
        (neuter-&-third-person dtn)
        (singular dtn)
        
        ;; If this is the first mention, then use an indefinite,
        ;; on the other hand a later mention will be in a context
        ;; that will likely move us down the "one" path.
        ;; In any event this is Mumble's operator
        (initially-indefinite dtn)

        ;; Add our choice to the discourse history
        (record-use-of-object-type category)

        dtn)))))



(defun plan-how-to-use-One (category)
  "Return a dtn with the word 'one' as its resource and the
  category as its referent. The question is what's going one
  when the correct thing to say is 'another one' or 'one more'
  and where/when does that additional term come in?"
  (record-use-of-object-type category) ;; but it's not quite as strong (????)
  (let ((dtn (make-dtn :referent category
                       :resource (mumble-value 'replacitive-one/singular 'pronoun))))
    ;; See QGSL #6.55 for 'substitute one' I think we can just
    ;; use the pronoun and it will be understood correctly
    (neuter-&-third-person dtn)
    (singular dtn)
    dtn))


;;;-------------------------------------------------------------------
;;; specific individuals -- corresponding to particulars in the scene
;;;-------------------------------------------------------------------

(defun plan-reference-to-individual (i)
  (cond
   ((unique? i) ;; "the table"
    (plan-the-category i))
   (t (error "Don't yet have a way to refer to ~a" i))))

(defun plan-the-category (i)
  "Describe the individual as a definite reference to its category."
  (let* ((category (sp::itype-of i))
         (phrase (get-lexicalized-phrase
                  (symbol-name (sp::cat-symbol category))))
         (dtn (make-dtn :referent i
                        :resource phrase)))
    (assert phrase)
    (always-definite dtn)
    dtn))


;;;-------------
;;; collections
;;;-------------

(defun create-collection-and-refer-to-it (items)
  "The arguments are expected ot be Krisp individuals.
  We find-or-make their collection and then make a
  DTN. If the collection is in focus we pronominalize,
  otherwise we enumberate them."
  (let ((collection (sp::find-or-make-individual 'sp::collection
                                                 :items items)))
    (plan-reference-to-collection collection)))

(defun plan-reference-to-collection (collection)
  (cond
   ((in-focus? collection)
    (let ((dtn (make-dtn
                :referent collection
                :resource (mumble-value 'third-person-plural 'pronoun))))
      ;; history done by general-np-bundle-driver
      dtn))
   ;; How do we decide between describing the collection
   ;; and enumerating it?

   (t ;; "the (two) blocks" 
    ;; Can omit the count is it's known
    ;; Can use just the number if the fact of the collection is known
    (let* ((type (sp::value-of 'sp::type collection))
           ;;(count (sp::value-of 'sp::number collection)) ;; simple Lisp number
           (phrase (get-lexicalized-phrase
                    (symbol-name (sp::cat-symbol type))))
           (dtn (make-dtn :referent collection
                          :resource phrase)))
      (plural dtn) ;; "blocks"

      ;; If we want to omit the number, that goes here.
;      (let ((number (reference-to-a-number count)))
;        ;; now we have to set it up to attach as a determiner
;        number)

      dtn))

     ;; enumeration -- e.g. for the drugs in BioC dialog
     (t (error "No defined collection strategy applied"))))



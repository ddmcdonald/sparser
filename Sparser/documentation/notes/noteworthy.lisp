;; Note on 'notes'
;; Started 5/24/21
;; This version 6/21/21

(in-package :sparser)

The information collection described in the note on content-structures is all derived from edges: appyling the rules of the grammar to the text to produce edges and collecting information based on the referents of those edges. However, unless we introduce an alternative for the filter that removes anything that's not germane for the discourse history (i.e. types that could be the basis of anaphora or elipsis), then that route will have to leave out a great many kinds of things that Sparser notices in a text and could help to provide features that characterize the semantic texture of a text and its variation across genres.

With that goal of a more flexible, less constrained record of the kinds of things Sparser's semantic model and rules have identified in an article, we have the facility known broadly as 'notes'. This is a largely self-contained module, so it is worth investing some time in exploring how it works.

First is how we specify what kinds of things we want to take note of. This is done by adding the names of categories to a specific list. This list is bound to the parameter *noteworthy-categories* in the file grammar/rules/sdmp/noteworthy.lisp. ("sdmp" was originally "SDM&P" before we simplified the file name conventions. It stands for "simple domain-modeling & populating", and contains much of the less conventional aspects of Sparser.)

We are not yet noting nearly as much as we could or should, so the idea is that we should all freely add to this list as we notice categories that look the least bit interesting.

Here is an excerpt. 

   (time
    time
    date day-of-the-month
    year month weekday time-unit)

   (quantities
    amount
    measurement unit-of-measure
    number ordinal multiplier
    approximator)

Notice that it is organized as a list of lists (an 'association list', or 'alist'). One of the goals in an exploratory effort like applying Sparser to ACUMEN is to be able get an easy and quick to read description of what was found. To that end, part of the design from the beginning is how we want to view the results. This grouping is part of that information reduction.

Like the rest of Sparser, all symbol and list expressions like these are actually manipulated as typed structured objects. In noteworthy.lisp just after the list of categories is this expression. It assimilates the category list and converts it to the objects we use at runtime.

(defparameter *note-groups* ;; parameter so we can update it
  (takeup-noteworthy-categories *noteworthy-categories*))

The note-specific code is all in the 'sdmp' subdirectory of the major Sparser directory 'analyzers'. There are three specific files: note-classes.lisp, note.lisp, and note-aux.lisp (for 'auxiliary'). This is a standard design.


--- Data-types

note-classes.lisp has the defclass expressions that define the types. It also has the general code that manipulates them, and the code that takes up the expressions from the list and instantiates instances of the classes.

The object types sort out into types and tokens. The types are long-lasting, the tokens are specific to the article analyses and need to cleared between runs.

Each sublist of the noteworthy categories is an instances note-group.

(defclass note-group (named-object)
  ((notables :initform nil :accessor get-notables))
  (:documentation "Holds a group of notables that have something
 in common semantically or textually. For notes, these are created
 by define-note-group and stashed on *note-groups* when defined."))

In the course of an analysis we work with its token counterpart. In particular these are focused on how we present our results (see below).

(defclass note-group-instance (named-object)
  ((doc-element :initform nil :accessor for)
   (note-instances :initform nil :accessor note-entries)
   (count :initform 0 :accessor group-count))
  (:documentation "Created after an article is finished
    as a sort of summary."))

Individual noteworthy categories (e.g. amount or measurement), are represented by instances of 'notable'.

(defclass notable (named-object)
  ((kind :initform nil :accessor kind-of-notable)
   (group :initform nil :accessor part-of-group)
   (trigger :initform nil :accessor note-trigger))
  (:documentation "A noteworthy category or something we identify
 via word-spotting and treat like a note for reporting purposes.
 This is the type for which a note-entry is the token."))

At runtime, we tally counts and other information as instances of 'note-entry'.

(defclass note-entry (named-object)
  ((notable :initform nil :accessor notable) ; backpointer
   (count :initform 0 :accessor instance-count)
   (text-strings :initform nil :accessor edge-strings
     :documentation "A list of the edge-span strings and edge-numbers
        that motivated this instance of the notable."))
  (:documentation "Represents the instances of a notable throughout
 a particular document. Does what the base implentation did, i.e.
 keep a count of the instances and facilitate their aggregation
 at higher levels of the document, but adds things like tracking
 the edges (text strings) involved to facilitate debugging."))


--- Resources

In any object system you need to be able access the individual objects: manage resources of them including clearing, and retrieving particular individuals. The document structure (in objects/doc/object.lisp) has very tailored version of this. We have a quick and easy way to do this for -any- class provided that it is a subclass of named-object like these are. This is done by calling the macro 'setup-find-or-make' with the name of the class, e.g.

(setup-find-or-make notable)
(setup-find-or-make note-entry)

This macro is in tools/basics/resource.lisp. It applies a template to create all of the standard object-manipulation functions for the class it is applied to: a hash table to record instances, e.g. *note-entry-table*. a function to retrieve instances by name, get-note-enty. a function to clear the hash table, clear-note-entry. And the function for defining the instances, find-or-make-note-entry.

'Find or make' is a design pattern that is crutial to a maintaining clean object system. It helps with being disciplined in creating object and managing the pointers to them. If we want to define, say, the notable for the category named 'person' (and we want to use that same symbol as the name of the class instance), then find-or-make-notable first looks in its hash table for an already existing instance that's keyed to that symbol. If there isn't one already, the it applies make-instance to create the object, puts it in the table, then returns it.

In this pattern, the identity of the object is fixed once it is created. The values of its slots, however, can continually change. For example there will be just one instance of the note-entry for, say, pronoun. But its slot values will be updated every time a pronoun is encountered. The only way we could get a new object for the note-entry for pronoun will be if we have first cleared the existing instance from the table.


----------------------------------------------------------------
--- Runtime, traces, edge-span, accumulation at paragraph level

Notes are based on the categories of the edges in the chart. Mistaken rules will lead to mistaken notes, particularly in the heuristics used by the proper name facility ('PNF') which is challenged by the variety in ACUMEN names.

There are traces to show us what is being noted (these are included in note-aux.lisp). The briefest trace is

(announce-notes)

It writes out a line for each note that is recorded, e.g.

NOTE: named-object 2 "McClatchy-"
NOTE: number 1 "1"
NOTE: country 4 "the United States"

The string is the span of the triggering edge. It quickly shows when mistakes are being made.

You turn off the trace by executing the "un" version of the function that turns them on: (unannounce-notes)


----
The key function is 'note?', in analyzers/sdmp/note.lisp.

(defgeneric note? (item)
  (:documentation "Combines the check as to whether the item is
    noteworthy with the action ('note') that records it in the current
    content model.
    Presently seeded in the edge referent computation
       -- analyzers/psp/referent/ driver & unary
       -- grammar/model/core/names/fsa/driver")

This asks whether any of the category labels on an edge is 'noteworthy?'. Categories are marked as noteworthy when the category list is processed. This is the function that does it.

(defgeneric noteworthy (category)
  (:documentation "Instances of this category in a text should be
    recorded when they occur in a text as part of its meta data.
    The established list of notworthy categories is in 
    grammar/rules/sdmp/noteworthy.lisp")
  (:method ((name symbol))
    (let ((c (category-named name)))
      (when c
        ;; Not every load will include a noteworthy category.
        ;; E.g. biology doesn't include us-state
        (noteworthy c))))
  (:method ((c category))
    (pushnew c *noteworthy-categories*)
    (setf (get-tag :noteworthy c) t)))


We keep track of the edges associated with a note in order to get the correct instance counts. Many categories lie on a headline in the parse and will pass through a note? call several times. If we counted each instance then the result would be greatly exagerated over what we really want. To accommodate this, the procedure for recording a noted category (or not) implements a 'subsuming edge' strategy similar to what we do when adding individuals into the discourse history.

This is the relevant method signature in note?

  (:method ((e edge))
    (when (noteworthy? e)
      (tr :edge-is-noteworthy e)
      (cache-noteworthy-edge e)))

This 'cache' makes up the bulk of note-aux.lisp. Here is the function and its documentation string.

(defun cache-noteworthy-edge (edge)
  "If the cache is empty, just populate its field.
   Otherwise check the incoming edge against the
   one in the cache.
     If it starts after the one in the cache, then
   this edge replaces the one in the cache and we
   send that edge to the note-making machinery.
     If its span subsumes the cached edge, and it
   has the same category, then we replace the
   cached edge with this one.
     If there is a cached edge after all the sentence
   processing has finished, then we sent the cached
   edge to the note-making machinery."

There are still unhandled cases of partial overlap in the edges. Some of these are listed in the body of the cache-noteworthy-edge function. To extend the algorithm you should set the parameter *debug-cached-new-adjudication* to T, which will make the function break on the cases it doesn't handle, and you should use the more verbose set of traces -- (trace-notes).

The final step on the way out of the cache is a call to maybe-note.

(defun maybe-note (edge)
  "Check whether we're seen this edge earlier, and if not then
   lookup the entry for the notable category on this edge,
   take a copy of the edge's span to add to the entry and pass it
   to the final step to get its count incremented."
  (declare (special *edges-noted*))
  (if (memq edge *edges-noted*)
    (tr :blocking-redundant-note edge)
    (else
      (push edge *edges-noted*)
      (let* ((value (get-entry-for-notable edge))
             (entry (etypecase value
                      (note-entry value)
                      (cons (cadr value)))))
        (add-edge-to-note-entry edge entry)
        (tr :noting-category entry edge)
        (note entry)))))

----

Note-entry objects accumulate on the items slot of the contents object of the current sentence. To get the total set of notes for an article we merge them as we work our way up its document structure. Recall that after any document element is finished, we call its 'after-actions' method. (All of these methods are in objects/doc/content-actions.lisp.)  What is done can depend on what classes were incorporated into the element's contents object. For note-specific operations we want contents that include the accumulate-items class (defined in content-classes.lisp).

At the paragraph level we execute collect-noted-items (in content-methods.lisp).

(defgeneric collect-noted-items (doc-element)
  (:documentation "The accumulate-items class holds
    an alist of the count of noted categories. See the
    function 'note' for details. Specialized to the relationship
    between a paragraph and the sentences in it.")
  (:method ((p paragraph))
    (let* ((sentences (sentences-in-paragraph p))
           (contents (loop for s in sentences collect (contents s)))
           (alists (loop for c in contents
                      when (items c) collect (items c))))       
      (when alists
        ;;(format t "~&Items alists for ~a~%~a~%" p alists)
        ;;(push-debug `(,alists)) (break "do merge")
        (setf (items (contents p))
              (merge-items-alist alists)))
      p)))

The merge operation overloads the individual note-entry objects on the sentences. It sweeps the association lists on the sentence contents to merge note-entries with the same name (i.e. referring to the same notable object). Sums their counts and appends their edge strings. The same kind of merge operation is done on the section object that is the parent document element of the individual paragraph object.

At the final level, the operations on the after-actions method for articles are concerned with presentation and long-term packaging to do things like backing article displays. To that end we recover the note-group, the larger scale organization of the notes, so we can get an easy to scan summary of what's been found.

This is done by the function consolidate-notes (in content-methods.lisp). It first distributes the note-entries according to the note-group they belong to, and then creates a note-group-instance with a summary count. The action function show-noted-categories prints this out as part of the default article summary.

For example, for ACUMEN corpus article #251 at the time this is written we get this summmary.

672 words  time to parse: 122 msec  5,508.2 words/second
Parsing coverage: 7 (1 edge), 6 (2-5), 13 (> 5)
vague-names: 89
places: 43
verbs: 40
time: 5
speech-acts: 4
identified-names: 2
quantities: 2

where the final value of the items slot is now this. ('a' is bound to the article.)

sp> (items (contents a))
(#<note-group-instance vague-names> #<note-group-instance places>
 #<note-group-instance verbs> #<note-group-instance time>
 #<note-group-instance speech-acts> #<note-group-instance identified-names>
 #<note-group-instance quantities>)


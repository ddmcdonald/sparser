word-spotting
8/8/21, revised 9/6/21

(in-package :sparser)

The list of motif indicator phrases that ACUMEN uses in collecting documents that potentially refer to motifs (or to place names, sports teams, mining companies, etc.) has been integrated into Sparser's word-spotting machinery. The list of indicator words with their labels (e.g. "tir-na-nog_PROP") is in the file
    grammar/model/dossiers/motif-key-words.lisp 

The other files that are involved in doing word-spotting for motif phrases are
-- grammar/model/sl/motifs/base-categories.lisp for providing Krisp categories so that edges have the expected properties,  and the directory
-- analyzers/psp/word-spotting/  which holds the word-spotting code itself.

The classes and methods that support word-spotting are specializations of the ones developed earlier for noting instances of interesting categories. And, like those, the basic operation is to record designated edges and accumulate them in an article to produce a summary report.


@========= Setting up

Lets start with what we do to prepare a motif indicator for word-spotting. This is all done by code in the dossier file with the list of indicators.

The indicators are stored on a parameter (which we can update/revise as we need to). This is the first few lines of this list:

(defparameter *motif-type-word-pairs*
  '(("salmon_PROP" . "salmon of wisdom")
    ("salmon_PROP" . "salmon of knowledge")
    ("children-of-lir_EVENT" . "years as a swan")
    ("children-of-lir_EVENT" . "children of lir")
    ("finn-mccool_CHAR" . "finn mccool")
    ... ))

The list is processed by a call to assimilate-motif-type-word-pairs. The call happens when the loader reaches the end of the file. This is what it looks like.

(eval-when (:load-toplevel :execute)
  (assimilate-motif-type-word-pairs *motif-type-word-pairs*))

Assimilate-motif-type-word-pairs just passes each pair in turn to the function that does all the heaving lifting, make-spotter-for-motif-pair. A pair consists of word that we want to spot, and the 'group' that the word belongs to. For instance, in this sample of the list we see that there are two phrases ("salmon of wisdom" and "salmon of knowledge") that are taken as evidence for the 'salmon' group.

The groups and the spotters are saved onto global variables and when assimilate-motif-type-word-pairs has finished it reports their counts to the REPL, so you'll see this statement when that happens.

81 spotters in 39 groups

The job of make-spotter-for-motif-pair is first to decompose the group string (e.g. "salmon_PROP") into its constituent parts: the kind of the motif ("PROP" for 'property') and the name of the group ("salmon"). The group string is broken apart and its substrings are converted to symbols in the sparser package.

At that point we need to create a spotter object for the phrase, and find (or make) the group that it is associated with. The group is an instance of the word-spotting-group class.

(defclass word-spotting-group (note-group)
  ()
  (:documentation "Links a set of spotters. Stored in the inherited
    notables slot"))

All the classes used in word-spotting are specializations of the classes in the note facility (in this case 'note-group'). This lets us use the methods and operations already in place for handing notes, which makes for considerable economy in the code.

The phrase, either a single word like "salmon" or a polyword like "tir na nog", is packaged in an instance of the 'spotter' class. 

(defclass spotter (notable)
  ((rdata :initarg :for :accessor language-spec
     :documentation "The information we use to make the referent for
       the edge we put over the span driver identifies"))
  (:documentation "This is the type of thing we want to identify
    via word-spotting -- a particular word or polyword. The setup
    routine supplies a name for it (in the name slot). We also use
    the kind and group fields of notable."))

We link this spotter instance to the group it is part of and set the inherited 'trigger' slot to the word (or PW). The 'rdata' field of the spotter instance is created by setup-motifs-language-spec (in the base-categories file). We do this because the regular edge creation and manipulation code of Sparser expects the referents of the edges to be Krisp categories or individuals -- this setup function creates the category and a rule that will rewrite it as an edge with the label (semantic category) 'motif-trigger', which is what we'll see over spotted phrases in the edge. The rdata field is filled with enough information to recreate this edge.

So part of setting up to create the edge is creating an individual that reflects what sort of motif this is (from the group recorded on the spotter instance). These are the Krisp categories involved. All in grammar/model/sl/motifs/base-categories.lisp.

(define-category motif-trigger
  :specializes index
  :binds ((spotter-index :primitive word))
  :realization ((:common-noun name))
  :documentation "While the words that signal a motif tend to
 have literal meanings, we're ignoring that (you'd have to have
 already decided how it was being used) to just provide a common
 Krisp-based representation for them, with an individual for each
 spotter/phrase.")

(define-category prop-motif :specializes motif-trigger)
(define-category character-motif :specializes motif-trigger)
(define-category event-motif :specializes motif-trigger)

The last thing that make-spotter-for-motif-pair does is to integrate the phrase and the spotter object into the requisite tables with a call to setup-word-to-spotter. The *words-to-triggers* table links the words that we could observe to the spotters that store what we know about them.


@========== Running

The actual 'spotting' of a phrase in the table happens very early in the layered processing that Sparser does. This first layer is emboddied in the function scan-sentences-and-pws-to-eos. Its job is to populate the chart with the words in the input stream and to delimit its sentences. Getting accurate sentence boundaries requires recognizing and expanding abbreviations and instantiating any polywords as they may also account for some of the periods ("G.M.B.H."). This function's code has been seeded with calls to the functions 'spot-word' and 'spot-polyword' positioned so that they will encounter words (or polywords) as soon as they are added to the chart. Here is the code for spot-word. Spot-polyword is essentially the same except that the words that constitute the polyword will have been convered by an edge.

(defgeneric spot-word (term)
  (:method ((p position))
    (let* ((word (pos-terminal p))
           (spotter (target-word-to-spot word)))
      (when spotter
        (handle-spotted-word spotter p (chart-position-after p))))))

Spot-word checks the word at this position against the table. If the word has an associated spotter it calls handle-spotted-word (in analysers/psp/word-spotting/actions.lisp). The principal task of handle-spotted-word is to locate the spot-entry object that goes with this spotter and to associate it with the edge over the word (pw) we have just identified.

Spot-entry objects are the per-article tokens that are associated with spotter types. The entries are temporary, the spotters are permanent (see word-spotting/object.lisp for all the class definitions). Like the note-entry objects they specialize, spot-entry instances are stored on an association list (alist) where the key is the name of the spotter (i.e. the symbol that names the motif group). This alist is shared with any note-entry's that have been triggered, and is stored in the 'items' slot of the 'contents' instance for the current sentence.

The note-entry class has a associated print-object method. Any time a note-entry is returned or printed in the REPL it will appear and an unreadable object (e.g. enclosed in #<...>) and show the name of the entry and its present instance count, e.g.  #<shamrock 2>. On the alist we would see, e.g. (shamock #<shamrock 2>). Note that like note-entry objects, spot-entry's are created just once (per article), their instance count and set of linked edges are the only things that change.

To link the edge, we use the same function as we do with notes, add-edge-to-note-entry (see analysers/sdmp/edge-classes.lisp). The association of edges and the entries that triggered them is mediated by instance of an edge-record structure (newly added for spotting).

(defstruct (edge-record
             (:print-function print-edge-record))
  number ; the edge-position-in-the-resource-array of the edge, see edge#
  string ; its string-for-edge
  chain  ; its edge-chain following up its used-in field
  configuration)

A list of these records will be stored in the text-strings field of the entry. Edge-record has a print function that uses the unique number for the edge, e.g. #<e27>.

Add edge-to-note-entry instantiates the record and sets its edge number and string. The chain and configuration field are not set until we have finished processing the article and are about to examine what we've found and create a report. (Equivalently we could create a JSON record for export.)


@========= Analysis

What to report about an article after its been analysed is dictated by specific calls in finish-paragraph-based-article, in objects/doc/paragraphs.lisp.

(defun finish-paragraph-based-article ()
  "Called from parse-successive-paragraphs to organize the usual
   article-oriented tallying and reporting. We emulated what happens
   in document-driven parsing -- ripple the after actions up the
   document structure to the article. 
   The document timer that we stop here was started in analyze-text-from-file"
  (let* ((article (article))
         (section (first-section article)))
    (unless section (error "threading bug: no section in ~a" article))
    (unless (every #'(lambda (c) (typep c 'paragraph)) (children section))
      (error "Something other than paragraphs in ~a" section))
    (after-actions section)
    (after-actions article)

    (stop-timer '*time-to-read-document*)
    (report-time-to-read-article article)
    (show-parse-performance article)
    (show-noted-categories article)
    (show-motif-term-context)
    article))

The setup that lets us look at the properties of the spot entries is done in the after-action method for articles. It makes a call to apply-context-predicates that sets the whole analysis process in motion. The later call to show-motif-term-context will present the results.

(defgeneric apply-context-predicates (article)
  (:documentation "Called as part of the after-actions method on articles.
 We identify what group instances we should work on, the we iterate through
 the edges in their entries and create and store their used-in chains.
 That's the raw material we apply context predicates to, or explore as part
 of developing the predicates.")
  (:method ((a article))
    (declare (special *compute-items-contexts*))
    (when *compute-items-contexts*
      (let* ((items-field (items (contents a)))
             (group-instances (collect-germane-group-instances items-field)))
        (loop for group in group-instances
           do (loop for entry in (note-instances group)
                 do (loop for record in (text-strings entry)
                       as edge-number = (edge-record-number record)
                       as chain = (upward-used-in-chain edge-number)
                       do (store-edge-chain record chain))))
        (loop for gi in group-instances
           do (analyze-trigger-contexts gi))))))

Collect-germane-group-instances determines what we analyze, and while this will certainly change, with the present focus on motifs right now we concentrate on only the motif-based groups. These were gathered onto the global *motif-groups* when they were defined.

We want to know where each of the spotted motif triggers has occurred in a text. This is a clear benefit when one occurs as a component of a name, and it ought to be possible to find other configurations that could provide heuristic evidence for classification.

To set this up, apply-context-predicates walks through all the edge records on all of the note-instance objects in the germane groups and computed their 'chains'. Every edge has a 'used-in' field. This is an upwards pointer in the parse tree. Imagine that we had a rule A -> B C that has completed. The used-in fields of the edges for B and C are set to the C edge as part of the mechanics of applying rules.

The function upwards-used-in-chain walks up through the used-in field and returns a list of all the edges it walked through, ordered from the bottom of the tree to the top. Store-edge-chain reifies the chain of edges as an instance of the edge-chain class, and stores that new object in the 'chain' field of the edge-record.

With the chains in place, apply-context-predicates ends by applying the function analyze-trigger-context to each of the germaine note-group instances.

The whole new collection process is directed by one of the functions in the after-action method for articles: apply-context-predicates. (In a new file in the word-spotting directory, context.lisp.) First it determines which of the group-instance objects in the items slot of the article's contents object are about motifs. It does that by comparing the names of those groups with the names of groups that were collected in motif-key-words.lisp when that file was loaded.

From analyze-trigger-contexts we call identify-edge-configuration. It applies the chain of each edge record to a sequence of predicates, stopping with the first one that returns a value. These predicates are at the bottom of word-spotting/context.lisp. Some of them do setup, but two of them, edge-context-for-name? and position-in-np-head return keywords (e.g. :np-modifier). These conclusions on the part of the predicates are stored in the 'configuration' field of the edge record.

There are a great many more predicates (functional roles of an edge within its syntactic context) that we can imagine. We need to create them.



@========= Presentation

Here is the presentation after a call to run acumen file #1. We can walk through it and explain its parts and where they come from. The presentation as a whole is driven from the calls at the end of finish-paragraph-based-article.

sp> (run-specific-acumen-file 1 :quiet t)
1. "amanda_leduc__the_postmagic_world"
1,448 words.  Time to parse: 139 msec  10,417.3 words/second
Parsing coverage: 4 (1 edge), 26 (2-5), 36 (> 5)
vague-names: 93  identified-names: 23  quantities: 20  places: 16  time: 15  
verbs: 14  leprechaun: 12  speech-acts: 4  shamrock: 1  
Functional categorizations for 12 out of 13 instances
   (np-head 9)  (np-modifier 3)  
Uncategorized instances:
  e806  (np s thatcomp vp s)
        "I found out that leprechauns weren't real"

The beginning is as usual. A call to run acumen file #1 quietly, immediately followed by the speed of the run (about the normal ten thousand words per second, see report-time-to-read-article), and a report on the quality of the parse: how many full sentences did we get (4), how how many sentences had between two and five 'treetop' fragments (26), and in how many sentences were there more than that number of fragments (36), which is produced by show-parse-performance. After than comes the listing of note-groups in the article and how many of each sort were there (show-noted-categories). This version is abbreviated, so we print more of the note groups on each line.

That is followed by the information that the word-spotter has identified about the motif triggers. Here what we care most about is the function each instance has in the syntax of the sentence it appears in. In article #1 there were 12 instances of 'leprechaun' and one instance of 'shamrock'. The predicates that we've defined so far were able to characterize 12 of those 13 instances, which is summarized in the line that says 9 of the instances were recognized as the head of a noun phrase and 3 as noun phrase modifiers (i.e. the appear just before the head). This is also an abbreviated presentation. It it wasn't, then every instance would be presented just like the single uncategorized instance. Once the predicates had been improved and could functionally classify more instances than not, I found it tedious to scan through the full list to see how we were doing and revised it to its present form.

We can see more details by working through the one uncategorized instance.

  e806  (np s thatcomp vp s)
        "I found out that leprechauns weren't real"

This says that the edge that spans "leprechauns" is number 806.

sp> (ie 806)
#<edge806 423 motif-trigger 424>
  [structure-object]

Slots with :instance allocation:
  category                    = #<ref-category MOTIF-TRIGGER>
  form                        = #<ref-category NP>
  referent                    = #<prop-motif "LEPRECHAUNS" 4311>
  starts-at                   = #<edges starting at 423>
  ends-at                     = #<edges ending at 424>
  rule                        = make-edge-over-motif-word
  left-daughter               = #<word "leprechauns">
  right-daughter              = :single-term
  used-in                     = #<edge831 423 be 428>
  position-in-resource-array  = 806
  constituents                = nil
  spanned-words               = nil
  mention                     = nil

It also says that the form labels on the chain of edge about 806 are np, s ('sentence' but really just a clause), thatcomp for the subordinate clause just about it, then vp ('verb phrase') and s -- this is one of those cases were we got a parse for the whole sentence. It then prints out the text that the topmost edge of the chain spans.

You can get the record for any edge by calling get-edge-record, e.g.

(get-edge-record 806)
#<e806>
t
sp> (d *)
#<e806>
  [structure-object]

Slots with :instance allocation:
  number         = 806
  string         = "leprechauns"
  chain          = #<e806..e834 >
  configuration  = nil
#<e806


Similarly you can get the chain by reference to its bottom ('first') edge.

sp> (get-chain 806)
#<e806..e834 >
t
sp> (d *)
#<e806..e834 >
  [standard-object]

Slots with :instance allocation:
  list    = (#<edge806 423 motif-trigger 424> #<edge831 423 be 428>..
  top     = #<edge834 419 find-out 428>
  labels  = (np s thatcomp vp s)
#<e806..e834 >


When we're trying to figure out how to categorize the function role of an instance we usually need to see the whole tree that dominates it and the rules that were involved. For that we have display-chain (in analyzers/sdmp/edge-classes.lisp). It lists all the edges in the chain, with both their form and semantic labels, and then does an stree to show the structure of the parse and the rules involved.

sp> (display-chain 806)
#<e806..e834 >
  edges: e806  e831  e832  e833  e834  
  form:  np s thatcomp vp s 
  categories:  motif-trigger be be find-out find-out 
 stree:
 e834 find-out/s              p419 - p428   rule 1389
  e812 pronoun/first/singular/pronoun   p419 - p420   rule 2796
    "I"
  e833 find-out/vp            p420 - p428   rule 1629
    e829 find-out/vg          p420 - p422   rule 241290
      e821 bio-find/vg+ed     p420 - p421   rule 226643
        "found"
      e822 out/preposition    p421 - p422   rule 2220
        "out"
    e832 be/thatcomp          p422 - p428   rule 1798
      e824 that/demonstrative   p422 - p423   rule 12
        "that"
      e831 be/s               p423 - p428   rule 1371
        e806 motif-trigger/np   p423 - p424   make-edge-over-motif-word
          "leprechauns"
        e830 be/vp            p424 - p428   rule 1489
          e828 be/vg          p424 - p427   rule 2037
            e825 weren/verb+past    p424 - p425   rule 2036
              "weren"
            e815 apostrophe-t/quantifier    p425 - p427   apostrophe-fsa
              "'"
          e826 real-endurant/np   p427 - p428   rule 257393
            "real"
#<e806..e834 >

Intuitively, we probably want to characterize this instance as the subject of an embedded tensed clause. That's a pretty salient position, though I don't know what implications this might have to how to classify leprechaun in this article. The annotators marked every instance as referential.

To come up with a classification in this case, where the instance np is directly dominated by a clause (e831), we need to look at the rule that was used, which is rule 1371. (Note that edge numbers and frequently rule numbers can change between sessions as the grammar is extended.) The short version of the function 'ir' -- 'irr' -- usually has enough information.

sp> (irr 1371)
referent: (funcall assimilate-subject left-referent right-referent)
#<PSR-1371 s → {np vp}>

That easily interpreted by a person, but a program is probably going to need a table to make explicit what a person can infer from just the labels in the righthand side of the rule (np, vp) and the parameter names of the semantic function assimilate-subject (subj, vp).

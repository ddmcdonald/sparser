(in-package :sparser)

;; Note on the "sweeping" control structure used 
;; in the Big Mechanism treatment of biology.

Before we began to work on the molecular biology of signaling pathways in cancer, all of the parsing operations were tightly interleaved by a tail recursive network of function calls orchestrated by the code in /drivers/chart/psp/scan.lisp. 

Such tight control makes sense in a sublanguage for which there is a rich semantic grammar. We do not have this for scientific journal articles in biology, which have the most complex lexico-syntactic patterns we have seen this side of contracts law. To compensate, we developed a control structure that makes multiple passes over a sentence, beginning with the simplest, most likely to be correct, analysis, continuing through the most heuristic. When all of the processing on a sentence is finished, it moves on to the next sentence and repeats the process.

@--- initiate-successive-sweeps

The starting point for all of the different kinds of sources we can handle is initiate-successive-sweeps in drivers/chart/psp/no-brackets-protocol. All the sources  follow the same sequence of operations (i.e. document, files, individual strings).


@--- scan-sentences-and-pws-to-eos

First, scan-sentences-and-pws-to-eos (in multi-scan) walks across the entire string of characters in the input. Its principal job is to delimit the sentences of the text. While doing that it will:
- populate the chart with the succession of words returned by the tokenizer,
- instantiate any polywords the text has (see polyword-check), and
- handle any period-terminated abbreviations ("Mr.").

Delimiting sentences correctly requires correctly interpreting the meaning of all of the periods. Many are better understood as parts of polywords or abbreviations or numbers expressed by digits. The heuristics and embedded actions (doing abbreviations) that do this work are run by period-marks-sentence-end?


@--- sweep-successive-sentences-from

Having delimited the sentences we call sweep-successive-sentences-from, and walk over the successive sentences in the current paragraph. Sentence objects are connected by links (next, previous). When we run out of sentence we throw to do-next-paragraph, which will be caught in different places depending on our source.

Depending on the value of *trap-error-skip-sentence* each sentence is then passed either directly to scan-terminals-and-do-core or first goes through error-trapped-scan-and-core where we have a handler-case to catch any error in the dynamic scope of the rest of the processings. 

In scan-terminals-and-do-core we call scan-terminals-of-sentence, where the first sweeps over the sentence are organized. At that point we can either call do-smart-frequency-count, or proceed to sentence-processing-core for the remaining sweeps.


@--- Scan-terminals-loop

Scan-terminals-loop carries out the first layer of analysis by checking for and applying word-level rules. It does three sweeps in succession. Each one is guarded by a global, which means you have the option to turn that level off. This is the germane snippet of code.

  (when *sweep-for-word-level-fsas*
    (word-level-fsa-sweep position-before end-pos))
  (when *word-level-completion-sweep*
    (word-level-completion-sweep position-before end-pos))
  (when *sweep-for-terminal-edges*
    (terminal-edges-sweep position-before end-pos))

-- Word-level-fsa-sweep was written to apply FSA routines. It walks over the successive words of the sentence, though the chart can also included edges over polywords and initials at this point. In order to see whether some FSA applies (such as the digits parser), it calls word-or-variant-has-fsas? which involves consulting the word's rule set (see routines in analyzers/fsa/generic.lisp).

Word-level-fsa-sweep also handles initiating the proper name facility (PNF) if the word it is looking at is capitalized (word-at-this-position-is-capitalized?) and of course the PNF routine has to be loaded and active. If both an fsa and pnf are applicable the code goes the pnf route (apply-pnf) assuming that PNF can notice and apply the fsa, which is usually an abbreviation.

-- Word-level-completion-sweep is next. It passes each word in the sentence to complete-word/hugin (in analyzers/psp/complete/complete-ha). There we check for and carry out any 'completion actions' associated with the word. These are also recorded on the word's rule-set. Completion actions are a very old part of Sparser. Doing a grep on define-completion-action shows how they are involved with initating conjunction and pronominalization, and noticing the structure of documents. Many of these operations have been shifted to other parts of the grammar. 

-- Terminal-edges-sweep is the final sweep that scan-terminals-sweep organizes. It is responsible for introduce the edges over any words that haven't already been spanned by an edge. This is done by applying do-just-terminal-edges to successive words. After looking for capitalization variants that operation bottoms out in preterminals/word which adds all the edges for a word's single-term-rules as well as for uses as a literal. This is also where the ignore-rule? filter applies.

FSAs can be associated with edge categories as well as words, so each edge that is introduced by terminal-edges-sweep is checked for category fsas which are carried out before proceeding in the terminals sweep. Abbreviations are expanded in this step, as are contractions marked by an apostorphe (e.g. for "aren't", "wouldn't", etc.).


@--- sentence-processing-core
When the terminals loop operations have finished we move on to the first part of sentence-processing-core, i.e. the sentence-sweeps that happen before chunking. This is the relevant part of its code. Notice again that each option can be turned off by rebinding its guard.

    (when *do-early-rules-sweep*
      (do-early-rules-sweep sentence))
    (when *sweep-for-da-patterns*
      (apply-debris-analysis sentence))
    (when *sweep-for-patterns*
      (pattern-sweep sentence))
    (when *sweep-for-early-information*
      (detect-early-information sentence))
    (when *sweep-for-conjunctions*
      (short-conjunctions-sweep sentence))
    (when *sweep-for-parentheses*
      (sweep-to-span-parentheses sentence))


@--- do-early-rules-sweep

The goal of this sweep is to look for semantic rules that can be conveniently run at this point, which should simplify the situation that the chunker will have to deal with. It turns off applying other sorts of rules by binding their controllers to nil.

  (let ((*allow-pure-syntax-rules* nil)
        (*allow-form-rules* nil))  ...)

It then makes a pass over the treetops of the portion of the chart spanned by the current sentence looking for an applying applicable rules. Every time a rule applies it restarts the pass, See do-early-rules-sweep-between in multi-scan for the details.


@--- apply-debris-analysis

This is a standard application of debris analysis, which you can think of as a way define n-ary rules. The patterns that are run at this level are defined by a special form -- define-early-pattern-rule -- that takes care of setting up the dynamic bindings that let us use the regular DA machinery on a different set of rules. The entry point is apply-debris-analysis in drivers/chart/psp/embedded-da.lisp, and it does the same treetop walk, except that is is bounded by the bounds of the sentence, see apply-debris-analysis in embedded-da.


@--- pattern-sweep

This sweep is to look for instance of two kinds patterns that are characterized there being no spaces between their terms. Like all of these sweeps, it walks through the treetops of the chart one at a time left to right from the beginning of the sentence  to the end (ends-at-pos). The final position, which is typically the word for period, is not checked for patterns. The check for no space between words is encapsulated in the function no-space-before-word? though all that does is check whether the proceding-whitespace field in the position is nil.


One kind is known as a scan-pattern. These are explicitly defined sequence of terms.
This sweep is managed by sweep-for-scan-patterns to organize the walk across the treetops of the sentence and the test for patterns is done by check-for-pattern. 
Success is defined by returning the position just after the last term (usually word) in the pattern. The pattern scare-quotes in the biology rules file is an example. These tended to be used before there were more options, such as early DA rules and their notation takes a while to write out since you need to lay out all the possible paths. With some simpliciation to the notation, however, there is much to be said for using these more often as a means writing cheap transition networks for phenomena that do not pattern well as binary trees.


The other style of pattern is referred to as 'no-space' patterns and what massively expanded during the work on Big Mechanism as there are so many instances where we have to decode a pattern to determine what is being referred to, e.g. proteins: AF6, MEK1, 
SHOC2. The machinery for these patterns is invoked by 'sweep-for-no-space-patterns'.

Tne no-space pattern sweep across a sentence consists of calls to 'start-of-ns-region' to identify positions where a pattern might start while checking conditions such as words that don't appear in patterns such as most punctuation characters. Once we have the start position we immediately call 'end-of-ns-regions' to find its right boundary.

The bulk of the work is done by collect-no-space-segment-into-word. It begins by calling characterize-words-in-region to provide a set of keyword labels for each of the in the span words. The sequence of these keywords becomes that basis of 'patterns' that fall into groups of similar patterns that -- given that we are operating in the sublanguageof biology -- can be often be given very specific interpretations. For example, the pattern (:single-cap :digits :single-cap) usually designates a point mutation ("BRAF V600E"). Typically, recognized patterns are passed to a function that will check any preconditions before finalizing the classification. In this case, the function is reify-point-mutation-and-make-edge which checks for the letters being names for amino acids. 

The dispatch to specific pattern recognizing functions such as resolve-hyphen-pattern or divide-and-recombine-ns-pattern-with-slash is the last thing that collect-no-space-segment-into-word does before it returns the end position of the not-separated-by-whitespace sequence, indicating success. The dispatch is preceded by a call to the function parse-between-boundaries which is given a chance to, in effect, look
for a predefined pattern before we resort to the looking at different sets of patterns. 

The routines that make the final decisions about what a pattern means are all responsible for creating an appropriately labeled edge over the span. The base case, and what we fall through to if nothing more applies, is reify-ns-name-and-make-edge, which breaks down into two cases, one conditioned on the flag *big-mechanism* and a default. The default makes an instance of the category 'spelled-name' and assumes that something else will provide
the context to really understand it (e.g. "M1A1"). The biology case calls reify-ns-name-as-bio-entity to determine the category and referent of the edge over the span. It first looks to see whether there is an OBO with that name (using corresponding-obo) and if not calls reify-bio-entity to create a bio-entity. Note that both of these routines go back to the character buffer to get the true capitalization
of the words by calling actual-characters-of-word with the bounding positions and the (usually) lowercase'd words in the span. 

Note that both reify-spelled-name and reify-bio-entity are going to make a polyword from the word sequence. This means that the next time though, the a ns-word sequence will not go through this pattern facility but be handed in the first pass as a polyword. Also, every ns sequence is going to be reified, even if it has not be matched to a specific pattern. This is controlled by the flag *work-on-ns-patterns* which defaults to nil. Setting it to T will trap unmatched sequences and let you extend the pattern set
and helper functions to handle it. 

The best way to get a feel for what the new pattern facility can do you should read through collect-no-space-segment-into-word to make this concrete and then browse analyzers/psp/patterns/patterns.lisp to see how the pattern check is organized (basically it is raw code) and look some of its cases. 


@--- early information

The function 'detect-early-information' is the next layer of the sucessive sweeps. It was developed to facilitate getting the information needed to recognize and understand questions, particularly whether we have 'aux-inversion' -- "is the block red?". It looks at the first few edges in the chart. If they indicate that this sentence will be a question, we revise their form labels to keep them from being absorbed into a chunk accidentally and represent what we have observed locally here for use in a later stage of processing. Since the pattern sweeping has finished at this point, every terminal edge has been entered into the chart. 



@--- 'short' conjunctions

The next pass is contolled by the function short-conjunctions-sweep. It is conditioned on whether the global *pending-conjunction* has a value. This global will have been set earlier in the word-completion sweep. This is the setup that triggers this (in rules/syntax/conjunction.lisp)

  (define-completion-action word::|and|
    :mark-event  'mark-instance-of-AND)

Every time the word and is see in the completion pass, the function mark-instance-of-AND is called and the position just before the conjunction is pushed onto a global accumulator.

At this point in the analysis we are only looking for conjunctions over 'short' spans. The computation done by 'short-conjunction-sweep' is essentially the same it is in later conjunction checks, but at this early point in the analysis, when all that has happened is
the introduction of unary terminal edges, polywords, and no-space patterns, the only edges found by its calls to next-treetop/leftward and its right-looking equivalent will be covering what amount to orthographic words, albeit often formed out of multiple Sparser  words and spaning several positions in the chart. For example the four cell lines in Dec#10: "in D04, MM415, MM485, and WM852 NRAS mutant cells".

The sweep consists of looking at every conjunction-marked position that is recorded in *pending-conjunction. 'Create-short-conjunction-edge-if-possible' handles the testing. The standard criteria is that the two edges being conjoined have the same semantic label. We loosened that in recent years to optionally conjoin edges if they have the same form label. Whether or not we permit this is determined by the value of the flag *allow-form-conjunction-heuristic*, which is turned on in the short-conjunction-sweep, though there is a flag that can be set of nil to try not doing it: *use-form-heuristic-in-conj-sweep* .

The decision whether or not to conjoin two edges is made by the function conjunction-heuristics which presently has just these two criteria. If we needed more subtle or context-sensitive rationale to conjoin (or not), that is where they would go.

As you saw, conjunction is not limited to pairs. We are invoking a rather old and well tuned piece of code that was originally designed to distinguish lists of companies and handle multi-element company names, as in law firms. Consequently if the base test, 'conjoin/2', succeeds, then it will look to the left for the rest of a comma delimited list of entities using the same criteria as it used with the first pair. 

 

@--- Parentheses (et al.)

After applying conjunction we call sweep-to-span-parentheses, which like the others does a treetop-by-treetop walk across the sentence. Given the sweeps that have preceded this, there will be no edges over the parentheses. 

Consequently this sweep walks through the sentence looking for 'exposed' words and applying the word-traversal-hook to each one in turn. Actions occur when the close of a set of paired punctuation is encountered.  Note that this applies to -every- case of a word with a traversal action: parentheses, other bracket types, and double or single quotes.

Each pair of characters, and open and a close, have a matching pair of functions. A 'mark' function notes the position of the open on a global variable (e.g. *position-of-pending-open-paren*), and a 'span' function that determines what to do.

These functions are organized by stylized code in grammar/rules/traversal/ according to the paired character they are handling. The handler for quotations, paired double quote characters is simple and worth going through to exemplify the general pattern.

(set-traversal-action  word::double-quote  'check-quotation)

(defun check-quotation (start-pos end-pos)
  (if (car *pending-double-quote*)
    (span-quotation start-pos end-pos)
    (mark-initial-quotation-mark start-pos end-pos)))

This illustrates how the action happens when the matching character is traversed. Open angle or square brackets pair with their close characters. Open parentheses with close. This is the form of the standard handler. Others can be more complex. Note that the handler has to turn off its triggering state when it has finished.

(defun span-quotation (pos-before-end-quote
                       pos-after-end-quote)
  (let ((pos-before-start-quote (car *pending-double-quote*))
        (pos-after-start-quote  (cdr *pending-double-quote*)))
    (do-paired-punctuation-interior :quotation-marks
                                    pos-before-start-quote
                                    pos-after-start-quote
                                    pos-before-end-quote
                                    pos-after-end-quote)
    (rplaca *pending-double-quote* nil)))

The common core is 'do-paired-punctuation-interior' in analyzers/traversal/dispatch.lisp. It calls analyze-segment-layout to get a characterization of the state of the edges in the chart inside the paired characters: :single-span means that there is already an edge that goes from just after the open to just before the close. If the state is :contiguous-edges we invoke a span-delimited parsing routine, 'parse-between-parentheses-boundaries', to see if any rules apply.

At that point we usually just create an edge that covers the chart from just before the opening character to just after the closing character and give it a category, form and referent according to what kinds of characters are involved. We'll close this note by looking at the notable exceptions to this.


--- interior-hooks

These are appliable to cases where there is a single-spanning edge convering the interior. We call 'interior-hook' to see what we are supposed to do. Here is an example from measurements.lisp. Its goal is to take a phrase like 'Follow this road uphill past the forest boundary (1.5 miles) to a fork (2.5 miles).' Look like it had been written as 'Follow this road uphill past the forest boundary 1.5 miles to a fork 2.5 miles'.

(define-interior-action  category::measurement  :parentheses
  'elevate-measurement-within-parens)

(defun elevate-measurement-within-parens (measurement ;; first-edge
                                          pos-before-open pos-after-close
                                          pos-after-open pos-before-close 
                                          layout )
  ;; Respan the parens with a copy of the measurement edge
  (declare (ignore layout ;; do-paired-punctuation-interior requires :single-span
                   pos-after-open pos-before-close))
  (make-chart-edge :category (edge-category measurement)
                   :form (edge-form measurement)
                   :referent (edge-referent measurement)
                   :starting-position pos-before-open
                   :ending-position pos-after-close
                   :left-daughter measurement
                   :right-daughter :single-term
                   :rule :elevate-measurement-within-parens))


--- Hiding parentheses

The bulk of the multi-scan code in its final section is for dealing with acronyms (below) and 'hiding' parenthesis. Hiding is set in motion by a call to 'assess-parenthesized-content' called at the end of 'span-parentheses' in the parenthesis traversal handler. The flags at the top of the final section determine what should be done, and *hide-parentheses* is presently nil. Its purpose was to provide an adequate way to remove text within parentheses from the parser's attention by 'burying' the edge over the parens inside the prior edge. This is playing fast and loose with the concept of a chart, but basically the end position of the edge just before the parens is changed to now be the end position of the paren edge. This effectively makes it disappear from the view of an treetop sweeping routines.


--- Handling acronyms

Acroyms are ubiquitous in scientific and professional texts. This example is fromm the first set of Big Mechanism test sentences. One of the roles of a sentence like this is to introduce the short forms of these specialized terms so that they can be used in place of them is the remainder of the paper.

"Growth factors can turn on Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms."

Acronym handling is set in motion by the default action of assess-parenthesized-content when it has what looks like an acronym in its hands, which is to relable the edge.

          (revise-edge-labels
            paren-edge
            :category (category-named 'single-capitalized-word-in-parentheses))

This newly labeled edge will later trigger a rule like this one. There could be many others of the same sort. This machinery is in grammar/core/names/parens-after-name.lisp.

(def-form-rule (proper-name single-capitalized-word-in-parentheses)
  :form proper-name
  :head :left-edge
  :referent (:function acronym-is-alternative-for-name left-edge right-edge))

When the dust settles, a record will have been made that uses the reference-handling of the name facility to link the acronym to the referent of its full form.


--- Transparent edges over single quotes

Often as not, paired single quotation marks are used as so-called 'scare quotes' that signal that the words inside the quotes should be appreciated as tentative or new or special in some way. In motific #27 we have: "[the Queen] was keen to hold a 'faith reception' from a wide range of faith groups.". Sometimes there are long sequences of words enclosed in single quotes of course, but scare quotes dominate in more all articles.

It's still an experiment, but I've been trying to figure out how to record an edge over a long span like a quotation without having it block the flow of rule application and other traversals of the chart. As it happens there is another field on an edge-vector that we haven't been using. This is the definition their struct:

(defstruct (edge-vector
            (:include unit)
            (:conc-name #:ev-)
            (:print-function print-edge-vector-structure))

  edge-vector      ;; a vector of edges
  top-node         ;; an edge or :multiple-initial-edges or nil
  number-of-edges  ;; an integer
  boundary         ;; a phrase boundary
  position         ;; a #<position>
  direction        ;; a keyword, e.g. :|ending at|
  marker           ;; an expansion site for things like font-shift indicators
  )

As the comment says, the 'marker' field on an edge vector is an expansion slot. In an early project working with documents where every word was marked up in XML with the label of their part of speech, that information was stashed in the marker field so that it did not get in the way of normal processing of the chart and its edge. I am doing the same thing with the edges over the span of words between a pair of single-quotes. The work is being done in handle-single-quotes-span which is called from do-paired-punctuation-interior when single-quotation-marks are involved. This is the parse for the example about the Queen.

p> (p "she was keen to hold a 'faith reception' from a wide range of faith groups.")
[she ][was ][keen ]to [hold ]a 'faith reception' from [a wide range ]of [faith groups]

                    source-start
e39   BE            1 "she was keen to hold a 'faith reception' from a wide range of faith groups" 18
                    period
                    end-of-source

Look at the edge spans around the words faith and reception in this tree.

sp> (stree 39)
 e39 be/s                     p1 - p18    rule 1915
  e36 be/s                    p1 - p4   rule 1714
    e0 pronoun/female/pronoun   p1 - p2   rule 3149
      "she"
    e35 be/vp+past            p2 - p4   rule 1812
      e2 be/vg+ed             p2 - p3   rule 2328
        "was"
      e4 keen-endurant/np     p3 - p4   rule 262235
        "keen"
  e38 hold-something/to-comp    p4 - p18    rule 1813
    e27 hold-something/infinitive   p4 - p6   rule 2287
      e7 to/preposition       p4 - p5   rule 2561
        "to"
      e8 hold-something/verb    p5 - p6   rule 5031
        "hold"
    e37 reception/np          p6 - p18    add-adjunctive-pp
      e34 reception/np        p6 - p11    rule 1192
        e10 a/det             p6 - p7   rule 44
          "a"
        e25 reception/np      p7 - p11    rule 1319
          e11 faith/common-noun   p8 - p9   rule 266751
            "faith"
          e12 reception/common-noun   p9 - p10    rule 266753
            "reception"
      e33 from/pp             p11 - p18   rule 2139
        e14 from/preposition    p11 - p12   rule 2489
          "from"
        e32 range/np          p12 - p18   rule 1372
          e29 range/np        p12 - p15   rule 1175
            e16 a/det         p12 - p13   rule 44
              "a"
            e28 range/n-bar   p13 - p15   rule 1302
              e17 width-value/adjective   p13 - p14   rule 4765
                "wide"
              e18 range/common-noun   p14 - p15   rule 241823
                "range"
          e31 of/pp           p15 - p18   rule 2139
            e21 of/preposition    p15 - p16   rule 2532
              "of"
            e30 group/np      p16 - p18   rule 1259
              e22 faith/common-noun   p16 - p17   rule 266751
                "faith"
              e24 group/common-noun/plural    p17 - p18   rule 860
                "groups"

Edge 25, which is where out scare quotes appeared, runs from p7 to p11, 'faith' and 'reception' together run from p8 to p10, which is what the edge over them records.

sp> (de 25)
category: #<ref-category RECEPTION>
form: #<ref-category NP>
rule: #<PSR-1319 n-bar → {common-noun common-noun}>
referent: #<reception 106852>
left: #<edge11 8 faith 9>
right: #<edge12 9 reception 10>

The extra positions are where the now transparent single-quote edge is. This is the starting edge vector at p7.

sp> (ev/s 7)
#<edges starting at 7>
sp> (d *)
#<edges starting at 7>
  plist            = nil
  edge-vector      = #(#<edge25 7 reception 11> nil nil nil ...)
  top-node         = #<edge25 7 reception 11>
  number-of-edges  = 1
  boundary         = nil
  position         = #<position7 7 "'">
  direction        = :|starting at|
  marker           = (#<edge26 7 quotation 11> :start :ends-at #<edges ending at 11>)

The marker field is a record of the starting point of the edge over the quotation (e26) and points to the edge-vector where it ends.

sp> (de 26)
category: #<ref-category QUOTATION>
form: #<ref-category QUOTATION>
rule: handle-single-quotes-span
referent: #<reception 106852>
left: nil
right: nil

The form of the information in the marker field was set up by handle-single-quotes-span and is quite likely to change once some use-cases are developed. This is an unfinished story, but it does illustrate some potential.


                      

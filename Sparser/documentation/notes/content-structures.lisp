;; Note on the structure and assembly of document element 'contents' instances
;; 5/24/21
(in-package :sparser)

(This note builds directly on the 'doc-structure' note.)

Every document structure class has a standard set of slots. This is an example of the slots on a sentence. It's the first sentence in a paragraph worth of text that I wanted to look at because of a problem we were having with the company name at its start.

sp> (d s1)
#<sentence p1 -- p51>
  contents        = #<sentence-content p1 -- p51>
  words-to-count  = #<hash-table :TEST eql :COUNT 0 {109AC4E773}>
  words           = nil
  token-count     = 0
  index           = 1
  toc-index       = "nil.s1"
  previous        = nil
  next            = #<sentence p52 -- p54>
  children        = nil
  parent          = #<paragraph 1>
  starts-at-char  = 1
  ends-at-char    = 240
  starts-at-pos   = #<position1 1 "aug">
  ends-at-pos     = #<position51 51 ".">
  string          = "Aug. 14, 1996, Ashanti Goldfields Co. Ltd. (ASL) said its board agree.."


@--- Sentence contents

The contents field of this sentence is an instance of the sentence-content class, which again is the concatenation of a set of smaller classes that support different functions. (It was previewed in the document structure note. It is defined in objects/doc/content.lisp.)  This is the sentence-content instance for that sentence. I've annotated each set of slots with the name of the class that contributed them. If you meta-. on any of these class names Aquamacs will take you to its definition

#<sentence-content p1 -- p51>

ordered:  previous                     = nil
          next                         = nil

named-object:   name                         = unknown

text-relations:  head-relations               = nil
                 classifier-heads             = nil
                 modifier-heads               = nil
                 adjacencies                  = nil
;; Used in the Grok project to track the relations that
;; words were found in

accumulate-items:  items-alist                = nil
;; For noteworthy categories and similar observations that are
;; too diverse to distribute into a fixed set of slots

records-of-delayed-actions:
  pending-definite-references  = ((#<the 106> #<edge75 22 term-name 24>))
  pending-partitives           = nil
  preposed-aux                 = nil
  initial-wh                   = nil
  sentence-mentions            = (#<m:537918 i379252 #<holder plural 379252> #1=nil.s1 200-208>..
used to to find selected remote
;; Records kept while parsing. It is also the home of the sentence-mentions                                           

sentence-text-structure:
  subject                      = #<company Ashanti Goldfields Co . Ltd .  1575,629820>

sentence-discourse-history:
  individuals                  = (#<company Ashanti Goldfields Co . Ltd .  1575,629820>..

entities-and-relations:
  entities                     = (#<year "1996" 1426> #<month "July" 1268> #<month "June" 1265>..
  relations                    = (#<company Ashanti Goldfields Co . Ltd .  1575,629820>..
  treetop-count                = 16
  
epistemic-status:
  explicit-reference           = nil
  conjectures                  = nil
  experimental-results         = nil
  new-facts                    = nil
  known-results                = nil
  methodology                  = nil
  motivation                   = nil
  discourse-role               = nil
;; Used in R3 to appreciate the structure of
;; the arguments in the articles

local-layout:  base-layout      = #<sentence-layout unknown>
;; A description of what kinds of entities we have
;; encountered in the parse just after we've finished the chunking sweep

parsing-status: level-completed        = :chunked
;; which level of the sweep have we gotten to

sentence-content:   backpointer                  = #<sentence p1 -- p51>
                     metadata                     = nil


If we defined an alternative class for the sentence content we could trim this down to just the ones that are actually relevant to ACUMEN. The epistemic and Grok classes are candidates for leaving off the everyday set of classes/slots were need to deal with. Doing that, however, would prompt examining all of the slots, which is not a pressing problem. 



@--------- when is information collected

Like virtually every other aspect of text interpretation, we collect information and move it into content slots sentence by sentence. The last substantive call in sentence-processing-core is to record-sentence-model-data, and so long as *collect-model* control parameter is up (it virtually always is). That function makes a call to indentify-relations and then disburses the results to the entities, relations, and treetop count fields.

Identify-relations loops over the treetop edges of the sentence (in drivers/chart/psp/semantic-extraction.lisp). It applies the generic function collect-model to the referent of each edge and adds the result to a list. The list is then divided into relations and entities, where the criteria for being a relation is being something that has a subject (arbitrary, if workable).

The 'raw' lists in identify-relations are then filtered for 'relevance'. The filter is embodied in the function relevant-type-of-individual, which is in interface/grammar/sweep.lisp. The filter per se is a list of categories in that file bound to a parameter called *names-of-irrelevant-to-dh-categories*. The 'dh' stands for 'discourse history' and that is actually its primary purpose -- to determine which types of individuals to leave out of the discourse history because it is quite unlikely, even grammatically imposible to ever refer to them anaphorically, e.g. by a pronoun.

Any number of the types on that list could turn out to be interesting determinants of the characteristics of document. Augmented by other observables such a quotations or parentheticals they could be used as features when classifying or taken in aggregates as typifying what sort of document we have: financial news, events involving people, etc. There is a whole literature on this sort of classification that we could consider dipping into.

Changing what's done would entail coming up with an alternative list of things we do want to ignore and parameterizing the function relevant-category-for-dh (which is where the actual comparison against the list is done -- it's a sort of open-coded version of itypep and worth reading carefully) such that it uses this alternative list. 
                                                                                                                                                                

There are just a few sentence-level slots that presently provide information we could consider using to characterize the properties of a text. Here are their raw values for this long sentence. ('s1-contents' is bound to its contents instance.)

"Aug. 14, 1996, Ashanti Goldfields Co. Ltd. (ASL) said its board agreed to amend the terms of its proposed merger with Golden Shamrock Mines Ltd. following further discussions with representatives of holders of Golden Shamrock's 7.5% Conv."

The entities and relations slots. These values get massaged when they're moved up to the paragraph level.

sp> (pl (entities-in-sentence s1-contents))
  1.  #<say 106111>
  2.  #<company Ashanti Goldfields Co . Ltd .  9,106214>
  3.  #<pronoun/inanimate "its" 106277>
  4.  #<board-endurant 106297>
  5.  #<the 106>
  6.  #<term-name plural 106281>
  7.  #<propose 106282>
  8.  #<pronoun/inanimate "its" 1016>
  9.  #<merger 106294>
  10.  #<of 630>
  11.  #<further "further" 72472>
  12.  #<follow 106290>
  13.  #<company Golden Shamrock Mines Ltd .  10,106239>
  14.  #<discussion plural 106292>
  15.  #<with 706>
  16.  #<representatives 106267>
  17.  #<with 706>
  18.  #<holder plural 106269>
  19.  #<of 630>
  20.  #<percent 106272>
  21.  #<name-word "Shamrock" 106225>
  22.  #<name-word "Golden" 106226>
  23.  #<sequence #<"Golden"> #<"Shamrock"> 106246>
  24.  #<uncategorized-name Golden Shamrock 106250>
  25.  #<named-object Golden Shamrock 106251>
  26.  #<conv 106285>
  27.  #<of 630>

sp> (pl (relations-in-sentence s1-contents))
  1.  #<agree 106301>
  2.  #<amend 106296>

  
The individuals slot is a copy of the list of items that were entered into the discourse list. Notice that it has a lot of redundancy. A good deal of that reflects the structure of the parse tree, where an individual will be carried up as the referent of larger spans of text and gain bindings along the way. This is reflected in the indexes of the individuals. For example there are two instances of the company in this list, one with the index 106214 and a second with the larger index 106239 

sp> (pl (sentence-individuals s1-contents))
  1.  #<company Ashanti Goldfields Co . Ltd .  9,106214>
  2.  #<generic-co-word "company" 4171>
  3.  #<limit 106190>
  4.  #<inc-term "limited" 4158>
  5.  #<limit 106190>
  6.  #<inc-term "limited" 4158>
  7.  #<ashanti 106194>
  8.  #<goldfield plural 106196>
  9.  #<asl 106219>
  10.  #<shamrock 106220>
  11.  #<mine-cl-noun plural 106222>
  12.  #<mine 106223>
  13.  #<company Golden Shamrock Mines Ltd .  10,106239>
  14.  #<shamrock 106220>
  15.  #<named-object Golden Shamrock 106251>
  16.  #<conv 106285>
  17.  #<say 105667>
  18.  #<board-perdurant 106253>
  19.  #<board-perdurant 106253>
  20.  #<board-endurant 106297>
  21.  #<agree 106301>
  22.  #<amend 106256>
  23.  #<amend 106296>
  24.  #<term 106257>
  25.  #<term-name plural 106281>
  26.  #<propose 106261>
  27.  #<merger 106294>
  28.  #<follow 106263>
  29.  #<following-adj 106264>
  30.  #<discussion plural 106292>
  31.  #<representatives 106267>
  32.  #<holder plural 106269>
  33.  #<day-of-the-month 106274>
  34.  #<say 106111>
  35.  #<propose 106282>
  36.  #<follow 106290>

The sentence-mentions slot holds a smaller list of what appears in the discourse history after the dust has settled. Notice that these objects contain the edge they were derived from. Its position information is what we use in the Covid article browser to determine the bounds of the selectable regions.

sp> (pl (sentence-mentions s1-contents))
  1.  #<m:328 i106281 #<term-name plural 106281> nil.s1 #<edge78 22 term-name 24>>
  2.  #<m:326 i106296 #<amend 106296> nil.s1 #<edge94 20 to 24>>
  3.  #<m:324 i106301 #<agree 106301> nil.s1 #<edge98 7 agree 20>>
  4.  #<m:323 i106297 #<board-endurant 106297> nil.s1 #<edge95 7 board-endurant 19>>


  
Here is the list of noted categories. Internally it is an alist of a category name as a symbol and its  note-entry object. The entry records how many instances of the category were noted along with their edges. The leading numbers were produced by pl ('print list'). They are conventient for looking at a list by hand using the nth function, which is zero based.

sp> (pl (items s1-contents))
  0.  (date #<date 1>)
  1.  (day-of-the-month #<day-of-the-month 1>)
  2.  (parentheses #<parentheses 1>)
  3.  (year #<year 1>)
  4.  (number #<number 2>)
  5.  (name-word #<name-word 1>)
  6.  (name #<name 3>)
  7.  (company #<company 1>)
  8.  (shamrock #<shamrock 2>)
  9.  (month #<month 1>)

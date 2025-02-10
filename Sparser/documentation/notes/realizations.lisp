;; nlp/Sparser/documentation/notes in preparation/realizations
;; 11/10/21, tweaked 11/23

The idea of realization comes from language generation, where we ask how a particular concept or situation is 'realized' in language. For Sparser, we turn this on its head. The purpose of parsing is to recover the meaning (and moreover the situated intent) of a text, which we model in Krisp and store in the 'referent' fields of the edges.

The potential realizations of a Krisp category -- the different ways that it is expressed in language -- can be specified in several different ways. Which way is the best has evolved over the history of the project, and largely comes down to which way is most convenient for the grammar writer. In the end, all this is cashed out in a set of rules that specify how to identify or extend edge referents.


@---- Providing the Realization as Part of category

When you are defining objects in the model -- lexical-level categories, individuals for specific companies or diseases -- you can include their realization as part of the definition you create. The referent fields in the resulting rule(s) can then point directly to the Krisp object you defined. Here is example from grammar/model/core/time/seasons.lisp,
edited slightly to remove distracting comments.

(define-category  season
  :specializes time
  :instantiates self
  :binds ((name :primitive word)
          (position-in-year . ordinal))
  :index (:permanent :key name)
  :lemma (:common-noun "season")
  :realization (:proper-noun name ))

The seasons dossier has a set of expresions like this:

(define-season "autumn" 2 )

with this definition. 

(defun define-season (string integer)
  "The define-or-find does the conversion of the string
   into a word and creates the two rules that go with
   being a common noun (i.e. singular and plural forms)
   with the season individual as their referent"
  (let ((season (define-or-find-individual
                    'season :name string))
        (ordinal (nth-ordinal integer)))
    (setq season (bind-variable 'position-in-year ordinal season))
    season ))

The comments say it all. The category 'season' is defined using a variable in its realization specification ('name'). Creating the individual by supplying a string for the binding for that variable ("winter") executes that specification, creating a rule that incorporates the individual that represents the season.

sp> (p "Winter")
[Winter]
                    source-start
e0    TIME          1 "Winter" 2
                    end-of-source 

sp> (de 0)
category: #<ref-category SEASON>
form: #<ref-category PROPER-NOUN>
rule: #<PSR-3713 season → "winter">
referent: #<season "winter" 1743>
left: #<word "winter">
right: single-term

sp> (ir 3713)
#<PSR-3713 season → "winter">
  plist       = (:grammar-module #<grammar-module *TIME*> :file-location..
  symbol      = rule::psr-3713
  category    = #<ref-category SEASON>
  rhs         = (#<word "winter">)
  rhs-forms   = nil
  completion  = nil
  form        = #<ref-category PROPER-NOUN>
  relation    = nil
  referent    = #<season "winter" 1743> ;<<<<<
  schema      = #<schr type → proper-noun>

  
To do this, define-individual (in objects/model/individuals/make.lisp) calls apply-single-category-rdata (objects/model/tree-families/driver.lisp) passing it the individual and the category. It walks through the rdata on the category (see below) looking for the case that has a lambda-variable for its head. The resulting rules are stored on the individual.

sp> (get-rules (i# 1743))
(#<PSR-3714 time → "winter"> #<PSR-3715 time → "winters">)


The 'lemma' specified in the definition of season is another instance of this, designed specifically for situations like this where you want to define a schema to be used by all the individuals in this category, but you also want a word to refer to the category proper.

sp> (p "season")
[season]
                    source-start
e0    SEASON        1 "season" 2
                    end-of-source

sp> (de 0)
category: #<ref-category SEASON>
form: #<ref-category NP>
rule: #<PSR-2892 season → "season">
referent: #<season  1736> 
left: #<word "season">
right: single-term

sp> (ir 2892)
#<PSR-2892 season → "season">
  plist       = (:grammar-module #<grammar-module *TIME*> :file-location..
  symbol      = rule::psr-2892
  category    = #<ref-category SEASON>
  rhs         = (#<word "season">)
  rhs-forms   = nil
  completion  = nil
  form        = #<ref-category COMMON-NOUN>
  relation    = nil
  referent    = #<ref-category SEASON> ;<<<<
  schema      = #<schr type → common-noun>




@---- Stating the Mapping Directly in the Rule.

For relational categories, the basic task is to map the consituents that are being composed to the appropriate bindings in the individual that instantiates the relation. Sparser was designed to run semantic grammars using a provably efficent algorithm (linear real time). At that time the grammar just consisted of hand-written phrase-structure rules with structured expression in their realization fields. Now we have more options in our toolbox and these are used less frequently.

Here is an example. This is from the grammar for specifier phrases (grammar/rules/syntax/specifiers.lisp), which builds on the grammar for sequences (core/collections/object.lisp).

From collections:

(define-mixin-category part-of-a-sequence
  :instantiates nil
  :specializes index
  :binds ((position ordinal)
          (sequence sequence)))

(define-category sequence-selector
  :specializes subsequence ;; inherits number
  :mixins (part-of-a-sequence) ;; provides position, sequence
  :binds ((ordering superlative))
  :documentation "Provides a container for bare NP specifier phrases
 that function as specifications of what to select from the reference
 set (which will usually be construed as an ordered sequence).")

From specifiers:

(define-category sequencer-number
  :specializes sequence-selector
  :documentation "The reference set is ordered. Selected 'number' of
 elements from the region of the set indicated by the sequencer.")

(def-cfr sequence-selector (sequencer number)
  :form specifier
  :referent (:instantiate-individual sequencer-number
             :with (position left-edge
                    number right-edge)))

sp> (p "first two")
first two
                    source-start
e3    SEQUENCE-SELECTOR 1 "first two" 3
                    end-of-source

sp> (stree 3)
 e3 sequence-selector/specifier   p1 - p3   rule 2429
  e0 sequencer/adjective      p1 - p2   rule 5225
    "first"
  e2 number/number            p2 - p3   number-word-fsa
    e1 ones-number/number     p2 - p3   rule 2689
      "two"

sp> (semtree 3)
(#<sequencer-number 107812>
 (position (#<first-sequence "first" 2895> (name "first")))
 (number 2))

This semantic rule for sequence-selector (i.e. the def-cfr) illustrates the most common pattern in this style of realization. The expression in this rule's referent field says that first we instantiate an individual of type sequencer-number. Then we map the constituent on the left to bind the position variable of this individual ("first"), and we map the constituent on the right to bind its number variable ("two").

To set this up, the expression that we typed into the :referent field of the rule is examined during the construction of the rule in order to substitute objects for symbols. At runtime, decoded referent expressions are interpreted by the core function 'referent-from-rule' (in analyzers/psp/referent/driver.lisp). All of the routines in the referent directory are part of this enterprise. In particular, the function 'resolve-referent-expression' in referent/decode-exp.lisp organizes the walk through the original expression to render it into the form to interpret at runtime.

This is the result for our example. Note that the instantiate-individual and binds expressions has been compacted into :instantiate-individual-with-binding.

sp> (psr# 2429)
#<PSR-2429 sequence-selector → sequencer number>

sp> (cfr-referent *)
(:instantiate-individual-with-binding #<ref-category SEQUENCER-NUMBER>
 (#<variable position> . left-referent) (#<variable number> . right-referent))

There are a lot of these referent actions as you can see by reading through the decode-exp file or the functions that are executed when the driver (referent-from-rule) does its walk through the referent actions. Dispatch-on-rule-field-keys (in dispatch.lisp) has the full set. The functions it calls are in the referent files cases.lisp and new-cases.lisp.

Some examples.

(def-form-rule (s time)
  :form s
  :head :left-edge
  :referent (:function add-time-to-event left-edge right-edge))

(def-cfr article-figure (article-figure number)
  :form proper-noun
  :referent (:head left-edge
             :bind (label right-edge)))

(def-cfr plus-minus-number ( plus-minus number )
    :form plus-minus-number
    :referent (:daughter right-edge))

This 'immediate' style of defining the referents of a rule is thoroughly described in the 1994 Sparser manual (sparser/Sparser/documentation/manual/) in section 4.2 (pg. 8) of 'Phrase Structure Rules.pdf'.




@---- Using Tree Families

There is an extensive set of 'exploded-tree-families' in the grammar/rules/tree-families/ directory. They are part of a systematic effort to generate semantic rules that can be guarenteed to follow standard grammatical structural contraints, and to make distinctions that are valuable to appreciate when inverting the grammar and generating. There are papers describing the rationale behind the design choices involved (in Sparser/documentation/papers/ see McD-IWPT-93 and also 'Krisp in Iwanska & Spiro 2000').

Exploded tree families ('etf') define rule schemas: sets of abstract rules written in terms of parameters. Here is an example from pre-head-np-modifiers.lisp. If you squint slightly you will see schematic versions of the rules with explit referent instructions that we just described.

(define-exploded-tree-family  def+proper+np-head
  :description "A combination of a general head and a modifier that refers
    to a specific individual. The result needs a determiner to be a complete    
    NP, and refers to a different kind of individual than the head does.
    E.g. \"(the) Southeast Bank unit\""
  :incorporates np-common-noun/definite
  :binding-parameters ( individual  base )
  :labels ( np n-bar proper-modifier np-head result-type )
  :cases
     ((:premodifier (n-bar (proper-modifier np-head)
                       :instantiate-individual result-type
                       :binds (individual left-edge
                               base right-edge))
                    :head right-edge )))

Here is an example of it being used as the realization of a category, along with an example of it being run and the list of the rules that were created. To make this sort of realization you use keywords to indicate the name of the tree-family and then a set of symbol-value pairs (:mapping) where you specify what variables of the category should be associated with the 'binding-parameters' of the ETF and what semantic categories should be used for the ETF's 'labels'. When this realization expression is processed, symbols are replaced with objects as usual, and multiple rules are created for cases where there are multiple categories in the mapping, such as the np-head label in this case. 
               
(define-category  currency
  :specializes  unit-of-measure
  :instantiates :self
  :binds ((denomination . denomination/money)
          (country . country))
  :realization (:tree-family definite-proper+np-head ; "British pounds"
                :mapping ((individual . country)
                          (base . denomination)
                          (np . :self)
                          (proper-modifier . country)
                          (np-head . (denomination/money
                                      fractional-denomination/money))
                          (result-type . :self))))

sp> (p/s "British pounds")
[British pounds]
                    source-start
e2    CURRENCY      1 "British pounds" 3
                    end-of-source
(#<currency 107817>
 (country (#<country "Great Britain" 2024> (name "Great Britain")))
 (denomination
  (#<denomination/money plural "pound" 107815> (name "pound") (symbol "£"))))

sp> (stree 2)
 e2 currency/np               p1 - p3   rule 3135
  e0 country/adjective        p1 - p2   rule 4012
    "British"
  e1 denomination/money/common-noun/plural    p2 - p3   rule 7096
    "pounds"

sp> (has-rules? 'currency)
(#<PSR-3136 currency → country fractional-denomination/money>
 #<PSR-3135 currency → country denomination/money>)


Realizations that are specified in this way go through the same machinery as all of the other cases when a realization is given as part of defining the category: the function decode-rdata (see below). Besides instantiating the rule schema and creating the rules, decode-rdata collects all the information about what was specified in an instance of the realization-data class. There is an compact accessor that retrives a category's realization(s) -- rdata.

sp> (rdata 'currency)
(#<realization for currency>)

sp> (d (car *))
#<realization for currency>
  category  = #<ref-category CURRENCY>
  etf       = #<etf definite-proper+np-head>
  mapping   = ((individual . #<variable country>) (base . #<variable denomination>)..
  mumble    = nil
  locals    = nil
  subcat    = nil
  heads     = nil


This style of realization was designed for realizations where there are several different schema that could be used. There are many examples of this in the older sublanguges, but this is an examples of one in current use.

(define-category  die
  :instantiates self
  :specializes accomplishment ;; i.e. it can take a while
  :binds ((who person) ;; animate? What about the birds -- need "animal" ??
          (of-what pathogen)) ;;e.g. age, disease, warfare, crime, accident, etc.
  :realization ((:verb "die")
		(:tree-family intransitive
		 :mapping ((agent . who)
			   (s . :self)
			   (vp . :self)
			   (np/subject . person)))
                (:tree-family empty-head-of-complement
                 :mapping ((result-type . :self)
                           (of-item . who)
                           (base-np . :self)
                           (complement . person)
                           (np . :self))
                 :common-noun "death")
                (:tree-family empty-head-of-complement ;; "die of H5N1"
                 :mapping ((result-type . :self)
                           (of-item . of-what)
                           (base-np . :self)
                           (complement . pathogen)
                           (np . :self))
                 :verb "die")))

There are several thing to note about that expression. It has four parts: the specification of the verb, and three family+mapping expressions where the last two also specify a word. The cat-realization slot of the category has four instances of realization-data, and substantial set of semantic rules were created.

sp> (rdata 'die)
(#<realization for die: "die" verb>
  #<realization for die>
  #<realization for die: "death" common-noun>
  #<realization for die: "die" verb>)

sp> (has-rules? die)
(#<PSR-3204 die → "die">
 #<PSR-3205 die → "dies">
 #<PSR-3206 die → "died">
 #<PSR-3207 die → "diying">
 #<PSR-3208 die → person die>
 #<PSR-3210 die → "deaths">
 #<PSR-3209 die → "death">
 #<PSR-3211 die → die of-person>
 #<PSR-3052 of-person → "of" person>
 #<PSR-3212 die → die of-pathogen>
 #<PSR-3213 of-pathogen → "of" pathogen>)

A similar, even larger multi-part realization is define-movement-verb (in model/core/places/moving.lisp). It is a schematic definition that can be fed words (in the verbs dossier) and produces categories with a set of standard realization options.


The files in the grammar/rules/tree-families/ directory are a mixture of files defining tree families and files that carry out the mechanics of setting up realizations or providing alternatives. There are two load files:

shortcut-mechanics.lisp loads early and puts in place actual shortcuts (below), the mophological analysis, and glue code of various sorts to help interpret realization expressions.

The tree-families proper are loaded by loader.lisp. Each of these files starts with an extended comment that lists each exploded-tree-family defined in that file along with a phrase that illustrates its use.



@--- Reducing Complex Mappings to :etf

It is a lot of work to produce what me might call a 'classic' realization like what we just described. The presure to produce more rules faster let to exploring several ways of producing short cuts. The first one that stuck, and which we're still using, is realization-scheme, where full exploded tree families are reduced by pre-building the mapping and replacing it with a short abbreviation for the etf along with a set of keywords to use in the realization expression. This is setup by the routines in  rules/tree-families/families.lisp, which is the last file of that set to load since it needs to refer the other tree-families to do its work.

There are presently seven realization schemes defined, all in the families file. This is an example of the very commonly used svo-passive.

(define-realization-scheme svo-passive passive/with-by-phrase
  :args (agent-slot agent-v/r patient-slot patient-v/r)
  :head :verb
  :phrase (SVO (s . subj-slot) (v . :self)
               (o . theme-slot)) ;; by-phrase is an adjunct
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r) ;; from transitive
            (np/agent . subj-v/r)   ;; from passive/with-by-phrase
            (np/patient . theme-v/r)
            (np/object . theme-v/r)
            (by-pp . by-v/r)
            (result-type . :self)))

This scheme defines the correspondence between the parameters of the family, in this example passive/with-by-phrase, and a simpler set of arguments, s, v, and o. We could do this for all the tree-families, but our focus shifted to a broader set of subcategorization options (below). This is the complete set as of this writing, with their 'etf' label, their corresponding exploded-tree-family and their arguments.

sv -- intransitive
 :v :s

svo -- transitive
 :v :s :o

svo-passive -- passive/with-by-phrase
 :v :s :o

svol -- transitive-loc-comp
  :v :s :o1 :o2

svio -- ditrans-pp/io
  :v :s :do :io

svoa -- ditransitive/attribute
  :v :s :o :a

svcomp -- that-complement
  :v :s :c


The point of including an etf in a realization is to automatically make a set of rules by instantiating the schemas in the tree. If you want these rules to be automatically created you should specify one of these realization schemes in the :etf field of your realization and a set of semantic rules will be generated according to the restrictions on the variables you specify.

Here is an example from model/dossiers/verbs.lisp

(define-category answer
  :specializes process
  :mixins (simple-action) ;; actor & theme
  :restrict ((theme question))
  :realization (:verb ("answer" :past-tense "answered"
                                :present-participle "answering"
                                :past-participle "answered")
                :etf svo ;; or intransitive
                :o theme))

Here is the resulting set of rules.

sp> (has-rules? 'answer)
(#<PSR-4719 answer → "answer">
 #<PSR-4720 answer → "answers">
 #<PSR-4721 answer → "answered">
 #<PSR-4721 answer → "answered">
 #<PSR-4722 answer → "answering">
 #<PSR-4721 answer → "answered">
 #<PSR-4723 answer → physical-agent answer>
 #<PSR-4724 answer → answer question>)

The presence of an etf in a realization is detected at the very first step of its process, setup-rdata. That initiates a call to decode-shortcut-rdata in tree-families/shortcut-master.lisp. This function knows how to expand the arguments you use with the etf. If you want to extend the set of families and add more arguments, you will need to extend this function.

As decode-shortcut-data goes through the rdata expression it was passed it builds up a substitution map where it records the variables refered to and the their subcategory restrictions. Just as it is about about to return to setup-rdata, it passes the schema, the subsitution-map, and the category that this is for to the function make-scheme-mapping in tree-families/shortcut-expansion.lisp. Make-scheme-mapping does the expression to objects substitution as spelled out by the subtitution-map and returns the decode expression to be bound to the mapping variable in setup-rata.

The labels on the generated rules are as a precise or as general as the value restrictions dictated by the category and what it inherits from. For rapidly defined terms, and for any term imported from Comlex, these restrictions are extremely general, and will rarely be useful. To forstall this largely wasted effort we have the parameter *inhibit-construction-of-systematic-semantic-rules* which blocks these rules from being built, presently for all of the verbs and other relational terms in biology. This means that as it stands, all of the etf expressions is the realizations of, say, biology/general-verbs.lisp could be removed with no effect on the other parts of the realization.



@--- Subcategorizing and Setup-Rdata

The detailed handling of the realization data on a category is orchestrated by setup-rdata in objects/model/tree-familes/rdata.lisp. A companion file in that directory, driver.lisp, handles the actual rule creation and invoking of morphology. 

Rdata.lisp starts by defining several Lisp types. These provide constraints on the notation in all of the realization specification ('rdata') that can be defined. For example this defines the set of keywords that can be used for head words.

(deftype head-keyword ()
  "A keyword indicating part-of-speech for a head word.
Should mirror the cases on the *single-words* ETF."
  '(member :verb
           :modal
           :common-noun
           :proper-noun ; one word
           :proper-name ; more than one word - np
           :adjective
           :adverb
           :interjection
           :preposition
           :word
           :quantifier
           :number))

Shorter keywords are permitted in the expressions, but they get expanded as setup-rdata gathers its arguments and we continue using the regular head vocabulary.

(eval-when (:compile-toplevel :load-toplevel :execute) ; for deftype
  (defparameter *head-aliases*
    '((:noun . :common-noun)
      (:adj . :adjective)
      (:adv . :adverb))
    "An alist of aliases for head keywords."))


This is an example of the simplest realization specification, just specifying the head word.

(define-category database
  :specializes information-container
  :mixins (mental-construction-concerning has-uid)
  :realization (:noun "database"))


There are a vast number of sanctioned keywords that can be used to designate mappings to variables to be bound, particularly for prepositions. This is a very small portion of the list.

(deftype subcat-slot-keyword ()
  '(member
    :a ; attribute
    :ac ; adjective complement
    :about :above :across :after :against :among :as :as-comp :at
    :before :below :between :but\ not :by
    :designator :during
    :down :up
    ... ))

There are aliase for a few of these as well.

(defparameter *subcat-aliases*
    '((:s . :subject)
      (:o . :object)
      (:i . :indirect-object))
  "An alist of aliases for subcategorization slot names.")

In the file grammar/rules/syntax/subcategorization.lisp, which supports the technical details of the subcategorization machinery, there is another deftype that is used by override-subcat-patterns. It distinguishes slot keywords refering to arguments (this set) and the much larger set of prepositions.

(deftype literal-subcat-slot-label ()
  '(member
    :a ; attribute
    :ac ; adjective complement
    :as-comp
    :ifcomp
    :l ; independent location constituent
    :m ; pre-head modifier
    :howcomp
    :indirect-object
    :object
    :premod
    :subject
    :thatcomp
    :s-comp ;; for verbs like "Let (me know ...)", "Make (John ride the bike)"
    :to-comp
    :oc ; object-complement
    :verb-premod
    :whethercomp
    :whycomp
    ))



@--- Inheriting subcategorizations

Setup-rdata orchestrates creating the realization ('rdata') when we are defining a category. It begins by removing any rules that are already on the category. (This is controlled by a parameter, which is bound to nil by forms like def-synonym so that its rules can be added in.) It then walks over the keyword-value pairs using the function decode-subcat-slots to divide them into three piles using the type definitions -- slots, relations, and arguments -- where the 'arguments' are every other keyword, which will include the head-keywords and the keywords that are part of classic definitions.

Setup-rdata's body is a loop over every subexpression in its input rdata. Like the example of 'die' above, realizations can specify several independent realization instructions, each in its own set of parentheses, with enveloping parentheses around the whole set.

Every verb or other relation whose rdata specifies one or more slots gets an instance of a subcategorization-frame. This class is in grammar/rules/syntax/subcategorization.lisp, it records all of the aspects of, e.g., a verb affect its handling: bound prepositions, phrases, and it particular the subcategorization patterns it has. These are instances of the subcat-pattern struct. These are inherited from the subcategorizations of a category's super categories (see inherit-subcat-patterns). 

Setup-rdata passes the slots in a category rdata expression to fom-subcategorization ('find or make') which makes or updates the subcategorization information the slots imply. Consider this rather simple realization.

(define-category come
  :specializes move
  :mixins (basic-intransitive)
  :realization (:verb ("come" :past-tense "came")))

It inherits the subcategorization information in basic-intransitive.

(define-mixin-category basic-intransitive
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (with-patient)
  :realization (:s patient
                :mumble (sv :s patient)))

And it inherits this information from all of its supercategories that have subcategorization information. The function 'dsc', is the short form of display-subcategorization, which displays all of the accumulated subcat-patterns in a nicely formatted form showing their keyword, value-restriction ('v/r') corresponding variable, and what category provided the pattern.

sp> (dsc 'come)
Subcategorization options for come
    :SUBJECT  v/r: nil  var: patient
          from basic-intransitive
    :prior to  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                     #<ref-category AMOUNT-OF-TIME> #<ref-category END>)  var: before
          from temporally-localized
    :upon  v/r: process  var: following
          from temporally-localized
    :over  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                 #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :on  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :in  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :for  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :following  v/r: process  var: following
          from temporally-localized
    :during  v/r: process  var: during
          from temporally-localized
    :before  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                   #<ref-category AMOUNT-OF-TIME> #<ref-category END>)  var: before
          from temporally-localized
    :at  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME> #<ref-category END>)  var: before
          from temporally-localized
    :before  v/r: process  var: preceding
          from temporally-localized
    :at  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :after  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                  #<ref-category AMOUNT-OF-TIME>)  var: after
          from temporally-localized
    :after  v/r: process  var: following
          from temporally-localized
    :with  v/r: certainty  var: certainty
          from temporally-localized

The category 'come' is a subcategory of perdurant, and perdurant incorporates mixins that provide the bulk of its subcat-patterns. Here's temporally-localized. You can see their effect directly in the patterns on 'come'. 

(define-mixin-category temporally-localized
  :specializes adds-relation
  :documentation "Supplies a set of bindings and subcategorization
   specifications for temporal and other adjuncts that acrue to
   clauses that denote perdurants and perdurant-like categories."
  :binds ((certainty certainty) ;; originally from with-certainty
          (following process)
          (preceding process)
          (during process)
          (after (:or time-unit
                      time ;; for "any time"
                      amount-of-time))
          (before (:or time-unit time amount-of-time end))
          (timeperiod (:or time-unit time amount-of-time)))
  :realization
    (:with certainty   ;; originally from with-certainty
     :after following
     :after after
     :at timeperiod
     :before preceding
     :at before
     :before before
     :during during
     :following following
     :for timeperiod
     :in timeperiod
     :on timeperiod
     :over timeperiod
     :upon following
     :prior\ to before
     ))


It's hard to go much deeper into how subcategorization operates without getting into the specifics of our syntactic grammar and the 'syntax functions' that are invoked to provide a representation for what they mean (their referents). I will just look at one very common situation where prepositional phrases are involved. This is the parse for "Add another block to the row".

sp> (p/s "Add another block to the row")
[Add ][another block ]to [the row]
                    source-start
e12   ADD-TO        1 "Add another block to the row" 7
                    end-of-source
(#<add-to 4894> (goal (#<row 4889> (has-determiner (#<the 119> (word "the")))))
 (theme (#<block 4888> (quantifier (#<another 853> (word "another")))))
 (present #<ref-category PRESENT>))
sp> (stree 12)
 e12 add-to/vp                p1 - p7   rule 1864
  e11 add-to/vp               p1 - p4   rule 1809
    e0 add-to/vg              p1 - p2   rule 5177
      "add"
    e8 block/np               p2 - p4   rule 1312
      e1 another/quantifier   p2 - p3   rule 2615
        "another"
      e2 block/common-noun    p3 - p4   rule 3455
        "block"
  e10 to/pp                   p4 - p7   rule 2138
    e4 to/preposition         p4 - p5   rule 2586
      "to"
    e9 row/np                 p5 - p7   rule 2420
      e6 the/det              p5 - p6   rule 42
        "the"
      e7 row/common-noun      p6 - p7   rule 3473
        "row"

Looking at edge 12 we see it uses rule number 1864.

sp> (irr 1864)
referent: (funcall adjoin-pp-to-vg left-referent right-referent)
#<PSR-1864 vp → {vp pp}>

The syntactic function adjoin-pp-to-vg wants to know whether the referent of the verb phrase subcategorizes for the preposition of the prepositional phrase. That comes down to executing this form (in the helper function variable-to-bind-pp-to-head).

  (subcategorized-variable head prep-word pobj-referent)

As it says in the doc string for that function. '[it] returns the variable on the HEAD that is subcategorized forthe ITEM when it has the grammatical relation LABEL to the head and the ITEM satisfies the value restriction on that variable. This layer just checks that the query is well-formed. It calls find-subcat-var to do the real work.' Find-subcat-var goes through the subcat-patterns of the head. It returns the variable of the first pattern where the item passes
the value restriction of the variable as determined by satisfies-subcat-restriction?.


Another type of realization information we have are what are termed 'subcat-relations' keywords. These were originally designed to mark some grammatical phenomena that were hard to do by other means. They have fallen out of general use except in a few situations. Setup-rdata calls register-variable when the one of these keywords is 
included in the rdata, which has the effect of adding the keyword and the slot-preposition pair to the property list of the category

(deftype subcat-relation-keyword ()
  '(member
    :complement-variable
    :loc-pp-complement
    :optional-object))

;; "invert all the notes around G4"
;;
(define-category invert
  :specializes process
  :mixins (simple-action with-instrument)
  :realization (:verb "invert"
                :etf svol
                :s agent
                :o theme
                :l instrument
                :on instrument
                :loc-pp-complement  (on "around")
                :mumble ("invert" svo1o2 :s agent :o theme :o2 instrument)))

sp> (unit-plist category::invert)
(:mumble #<m-rdata: INVERT, svo v="invert" (#<variable agent> #<variable theme>)>
 :loc-pp-complement (#<word "on"> #<word "around">)
 :rdata-expr (:verb "invert" :etf svol :s agent :o theme :l instrument :on instrument
 :loc-pp-complement (on "around") ;<<<<<<<<<<
 :mumble ("insert" svo1o2 :s agent :o theme :o2 instrument))
 :super-categories
 (#<ref-category INVERT> #<ref-category PROCESS> #<ref-category PERDURANT>
  #<mixin TAKES-TENSE-ASPECT-MODAL> #<mixin TEMPORALLY-LOCALIZED>
  #<mixin TAKES-ADVERB> #<ref-category HAS-LOCATION> #<mixin SIMPLE-ACTION>
  #<ref-category SUBCATEGORIZATION-PATTERN> #<ref-category LINGUISTIC>
  #<ref-category ABSTRACT> #<mixin WITH-AGENT> #<mixin WITH-THEME>
  #<mixin WITH-INSTRUMENT> #<ref-category THEMATIC-ROLE>
  #<ref-category ADDS-RELATION> #<ref-category NOTATIONAL-EXTENSION>
  #<ref-category TOP>)
 :rules
 (#<PSR-4892 invert → "invert"> #<PSR-4893 invert → "inverts">
  #<PSR-4894 invert → "inverted"> #<PSR-4895 invert → "inverting">
  #<PSR-4896 invert → physical-agent invert>
  #<PSR-4897 invert → invert endurant> #<PSR-4898 invert → invert object>)
 :grammar-module #<grammar-module *MID-LEVEL-ONTOLOGY*> 
 :file-location #P"SPARSER:DOSSIERS;VERBS.LISP")

Today, :loc-pp-complent is used in one place. The function filter-rules-by-local-competition is part of the 'whack a rule' protocol that we use for the bulk of the parsing once you get above the level of the chunker. This code is in driver/forest/edge-search.lisp. The short version of what it does is to cycle through the chart finding all of the adjacent edges that could be composed by a rule. The combination an edge to the left and ane to the right and the composing rule is referred to as a triple. As triples are selected and add edges to the chart we loop around and recompute what triples are in contention.

There are times when two different triples are overlap: the right edge of one triple is identical to the left edge of a second triple. The question is how to choose which triple to select. By default we would choose the rightmost of the two triples, but we have a body of heuristics that encode circumstances when we take the triple to the left, leaving the one on the right to be handled by a later interation of the cycle. These heuristics are what filter-rules-by-local-competition applies.

For 'invert' (and the other verb that use loc-pp-complement) we want to have two consituents beyond the verb. For "invert all the notes around G4" this would be noun phrase edge for 'all the notes' and the prepositional phrase edge for 'around G4'. The presence of :loc-pp-complement for the preposition "around" causes the heuristics to select the left edge, whereas by default the PP would have been composed with the NP. Now both will end up composing with the verb.


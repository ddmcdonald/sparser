;; defining-verbs-by-inheriting-patterns
;; 6/7/19


In the core grammar file  mid-level/subcat-patterns.lisp we have a set
of  mixin categories  whose role  is to  characterize the  patterns of
subcategorization found in  English verbs. (It is  incomplete, but the
project to mine VerbNet to extend Sparser's vocabulary could get us to
something closer to a complete set.)

These categories serve several functions. They identify the thematic
roles that should be used, the subcategorization correspondences,
and a specification of the equivalent generation pattern. By packaging
all these things together, they can be inherited by the verbs we
define, reducing the amount you have to spell out to a bare minimum
because the elaborate detail has already been established.

For example this defines the pattern for a simple transitive verb
that involves an actor and a patient.

(define-mixin-category action-verb
  :specializes subcategorization-pattern
  :instantiates nil
  :mixins (actor patient)
  :restrict ((actor (:or pronoun endurant))
             (patient physical))       
  :realization
    (:s actor
     :o patient
     :mumble (svo :s actor :o patient)))

The thematic roles, which are intended to track the roles we settled
on for the ECIpedia, are all defined in model/core/kinds/roles.lisp.
Functionally, they supply a variable to bind.

(define-mixin-category actor
  :binds ((actor))
  :documentation "The entity that performs the action.
    No implied agency. No obvious specified type.")

Notice that there's no restriction on the 'actor' variable here where
it's introduced into the grammar. The natural place to supply the
value restriction is in the subcat definition. Syntactically, the
two variables are incorporated into action-verb as mixins. The
categories that provide the value restriction are stated in the
:restrict field.

Every category that specializes action-verb will inherit all of
the realization data that is specifies. Here the :s and :o labels
have been expanded to the labels :subject and :object. The functions
that provide the interpretation to the syntactic rules use this
subcategorization information to license a subject or an object
provided they meet these (very broad) type restrictions.

sp> (dsc 'action-verb)
Subcategorization options for action-verb
    :OBJECT  v/r: physical  var: patient
          from action-verb
    :SUBJECT  v/r: (or #<ref-category PRONOUN> #<ref-category ENDURANT>)  var: actor
          from action-verb

Th definition of the verb 'find', from model/dossiers/verbs.lisp, uses
action-verb to provide the grammatical information. All it needs to
supply is the realization of verb. Though it also further refines the
restriction on the patient variable.

(define-category find
  :specializes process
  :mixins (action-verb)
  :restrict ((patient (:or physical-object location))) ;; find a block
  :realization
    (:verb ("find" :past-tense "found")))

Because we're marking find as a type of process, its subcategorization
options are considerably larger. (Probably too large, but that's a
separate matter.) Notice how the individual subcategorization facts
record which super-category introduced them.

sp> (dsc 'find)
Subcategorization options for find
    :OBJECT  v/r: (or #<ref-category PHYSICAL-OBJECT> #<ref-category LOCATION>)  var: patient
          from find
    :SUBJECT  v/r: (or #<ref-category PRONOUN> #<ref-category ENDURANT>)  var: actor
          from action-verb
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
                   #<ref-category AMOUNT-OF-TIME>)  var: before
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


------------- Rules ------------

If we want a realization specification to generate phrase structure
rules we have to include the directive for what to do as part of
specification. This is mediated by the function make-rules-for-rdata
(in objects/model/tree-families/driver.lisp), which is called from
the realization-data constructor when the process is set in motion by
setup-rdata (in objects/model/tree-families/rdata.lisp).

The head specs (:verb, :noun, etc.) make their way through this
path to the part-of-speech specific make-rule-for-head methods which
are all in grammar/rules/tree-families/morphology.lisp. They handle
all of the details, appreciate irregulars, synonyms, and all of the
things we can specify with a lexical head, such as owned prepositions.

sp> (get-rules 'find)
(#<PSR-3389 find → "find"> #<PSR-3390 find → "finds">
 #<PSR-3391 find → "found"> #<PSR-3392 find → "finding">)

To have semantic phrase structure rules with greater scope, such as a
whole clause, we have to give the realization machinery a template to
follow.

Up until about 2014, that template would be a 'classic' definition
like this one for 'die', from the disease sublanguage module
(grammar/model/sl/disease/) that was developed for reading articles on
bird flu.

(define-category  die
  :instantiates self
  :specializes accomplishment ;; it can take a while
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
                (:tree-family empty-head-of-complement ;; "die of h5n1"
                 :mapping ((result-type . :self)
                           (of-item . of-what)
                           (base-np . :self)
                           (complement . pathogen)
                           (np . :self))
                 :verb "die")))

This is build using the substitution rule schema of our Tree Adjoining
Grammar. It defines three different constituent patterns, employing
three specific 'exploded tree families', each with a set of syntactic
and semantic substitution variables and a 'mapping' expression that
pairs them with the appropriate categories. The mechanics of this
process and the particular flavor of TAG grammar it uses are throughly
described in several papers. These work well, providing a means of
creating a syntactically disciplined semantic grammar.

sp> (get-rules 'die)
(#<PSR-2122 die → "die"> #<PSR-2123 die → "dies"> #<PSR-2124 die → "died">
 #<PSR-2125 die → "diying"> #<PSR-2126 die → person die>
 #<PSR-2128 die → "deaths"> #<PSR-2127 die → "death">
 #<PSR-2129 die → die of-person> #<PSR-1897 of-person → "of" person>
 #<PSR-2130 die → die of-pathogen> #<PSR-2131 of-pathogen → "of" pathogen>)

Classic realizations do, however, take a long time to write down,
which led to the development of a system of 'shortcut' notation that
let you get the same effects as a classic realization, but with far
fewer keystrokes. Of course, as more defaults are used, the semantic
constraints get weaker because more general categories are used and
the grammar rules they produce are presently unreasonable as the basis
of a semantic grammar. It is no coincidence that about the same time
as we started speeding up the grammar-writing process we put more and
more weight onto syntactic analysis and moved the semantic checks to
as set of functions that are responsible for the semantic
interpretation of the constituents the syntactic rule wants to
compose.

If you wander through shortcuts.lisp (in rules/tree-families, though
it should be moved elsewhere), you'll see a diverse set of functions
that assemble classic realization specifications for various sorts of
clause subcategorization patterns, and simple treatments of nouns
and adjectives or adverbs. However, because the prose in molecular biology
articles is dominated by optional prepositional adjuncts, we stopped
using these pre-build classic realizations and moved to the very
lightweight style where most definitions are just mapping prepositions
to the appropriate variables and clause subcategorization patterns
are an afterthought.

Now we have a quite compact way to provide the same content and
range of expression as a classic definition via the keyword :etf,
where this definition shows most of its moving parts.

(define-category move-to
  :specializes move
  :mixins (agent theme with-specified-location)
  :restrict ((agent physical-agent)
             (theme endurant)
             (to-location (:or physical location)))
  :documentation "This allows proper chunking of a locative
  complements to 'move' verbs (more than just 'to'), where previously
  these locative complements were swalowed up by the theme np. It
  seems that move is a complex category with lots of working parts, so
  this may just be a temporary hack."
   :realization (:verb "move"
                 :etf (svol)
                 :s agent
                 :o theme
                 :l location
                 :loc-pp-complement (on to from)
                 :mumble ("move" svo1o2 :o1 theme :o2 to-location)))

When the realization expression includes ':etf' we take a different
route within setup-rdata and pass the arguments of the realization
expression to the function decode-shortcut-rdata (in tree-families/
shortcut-master.lisp). What this file does is construct a classic-
style of mapping dynamically, follow the instructions provided by
the value of :etf -- svol. 







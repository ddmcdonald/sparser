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
  :mixins (with-actor with-patient)
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

Syntactically, the two variables are incorporated into action-verb as
mixins. The categories that provide the value restriction are stated
in the :restrict field.

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

This is build using the substitution-rule schema of our Tree Adjoining
Grammar. The realization specification defines three different
constituent patterns, employing three specific 'exploded tree
families' (:tree-family field) each with a :mapping that pairs
the syntactic and semantic substitution variables of the tree family
with the appropriate categories.

(The mechanics of this process and the particular flavor of TAG
grammar it uses are throughly described in several papers. These work
well, providing an effective means of creating a syntactically
disciplined semantic grammar.)

sp> (get-rules 'die)
(#<PSR-2122 die → "die"> #<PSR-2123 die → "dies"> #<PSR-2124 die → "died">
 #<PSR-2125 die → "diying"> #<PSR-2126 die → person die>
 #<PSR-2128 die → "deaths"> #<PSR-2127 die → "death">
 #<PSR-2129 die → die of-person> #<PSR-1897 of-person → "of" person>
 #<PSR-2130 die → die of-pathogen> #<PSR-2131 of-pathogen → "of" pathogen>)

Classic realizations do, however, take a long time to write down,
which led to the development of a system of 'shortcut' notation that
let us get the same effects as a classic realization, but with far
fewer keystrokes. Of course, as more defaults are used in these
shortcuts, the semantic constraints on composition get weaker because
more general categories are used. The grammar rules they produce
are presently unreasonable as the basis of a semantic grammar. It is 
thus no coincidence that about the same time as we started speeding up 
the grammar-writing process we put more and more weight onto syntactic
analysis and moved the semantic checks to as set of functions that are
responsible for the semantic interpretation of the constituents the
syntactic rule wants to compose.

If you wander through shortcuts.lisp (in rules/tree-families, though
the file should be moved elsewhere), you'll see a diverse set of functions
that assemble classic realization specifications for various sorts of
clause subcategorization patterns, and simple treatments of nouns
and adjectives or adverbs. However, because the prose in molecular biology
articles is dominated by optional prepositional adjuncts, we stopped
using most of these pre-build classic realizations and moved to a very
lightweight style where most definitions are just mapping prepositions
to the appropriate variables and the clause subcategorization patterns
are not emphasized.

We do though have a quite compact way to provide the same content and
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

When the realization expression includes ':etf', we take a different
route within setup-rdata and pass the arguments of the realization
expression to the function decode-shortcut-rdata (in tree-families/
shortcut-master.lisp). We end up in the same place, the call to
make-rules-for-rdata,but the classic-style mapping we supply to
instantiate the rule schema there is assembled dynamically, following
the instructions provided by the :etf -- svol -- which is the name of
a 'realization-schema'.

The realization schema and the machinery that instantiates them are
all in the file grammar/rules/tree-families/families.lisp. In essence
they are shrunken versions of the full tree-families they
reference. In this case svol is 'shrinking' the tree family
transitive-loc-complement, shown here in its full form. Notice the
substitution variables in its :binding-parameters and :labels fields.

(define-exploded-tree-family  transitive-loc-comp
  :description "Two post-verb arguments, a direct object and constituent
      describing a location, e.g., 'I put the block in the box'"
  :binding-parameters ( agent patient location )
  :labels ( s vp vg np/subject np/object loc )
  :cases
     ((:subject (s (np/subject vp)
                  :head right-edge
                  :binds (agent left-edge)))
      (:direct-object (vp (vg np/object)
                        :head left-edge
                        :binds (patient right-edge)))
      ;; Note that we pick up the first (direct) object
      ;; on the vg, but the second (location) object
      ;; is on the vp, which is a crude but workable way
      ;; to enforce consituent order.
      (:location (vp (vp loc)
                   :head left-edge
                   :binds (location right-edge)))))

The realization-scheme in families.lisp mirrors the binding parameters
(the variables) and the labels (for providing semantic labels to the
syntactic categories) for the full ETF in a map to information
(e.g. subj-slot) that is supplied by decode-shortcut-label.

(define-realization-scheme svol transitive-loc-comp
  :head :verb
  :phrase (SVO1O2 (s . subj-slot) (v . :self) 
                  (o1 . theme-slot) (o2 . loc-slot))
  :mapping ((agent . subj-slot)
            (patient . theme-slot)
            (location . loc-slot)
            (s . :self)
            (vp . :self)
            (vg . :self)
            (np/subject . subj-v/r)
            (np/object . theme-v/r)
            (loc . loc-v/r)))

Decode-shortcut-label unpacks the realization-scheme and assembles
a 'substitution map' by retrieving information from the category's
subcategorization-frames. Given the timing of the actions in
setup-rdata, we can trust that this subcategorization information
is in place. A typical clause in the function looks like this.

      (let ((obj-pat (find-subcat-pattern :object subcat-frame)))
        (when obj-pat
          (let ((o-var (subcat-variable obj-pat))
                (o-v/r (subcat-restriction obj-pat)))
            (push `(theme-slot . ,o-var) substitution-map)
            (push `(theme-v/r . ,o-v/r) substitution-map))))

Any time that another directly subcategorized clause complement
is added to the grammar (like :s :o or :l) we have to add another
clause to decode-shortcut-rdata to handle it, and we will likely
have also had to add one or more realization-schemes (and look up
the correct phrase in the Mumble language realization system,
where the trees of our Tree Adjoining Grammar are represented
explicitly as tree, unlike the slices of immediate constituent
structure we use in parsing).

(There are presently a great many more tree families in the grammar
than there are corresponding realization schemes, largely just because
of limited development time, and partly because we are not presently
trying to take advantage of the semantic nuances that many of the
alternate tree families try to reflect. The set of families in the
file np-adjuncts is a good illustration.)

The final step of decode-shortcut-rdata is to apply the substitution-
map is has accumulated to render it into the form a classic
realization expects and make-rules-for-rdata knows how to apply.
The application of the map is done by make-schema-mapping, in the
file rules/tree-families/shortcut-expansion.lisp.

sp> (get-rules 'move-to)
(#<PSR-3440 move-to → "move">
 #<PSR-3441 move-to → "moves">
 #<PSR-3442 move-to → "moved">
 #<PSR-3443 move-to → "moving">
 #<PSR-3444 move-to → physical-agent move-to>
 #<PSR-3445 move-to → move-to endurant>
 #<PSR-3446 move-to → move-to location>)

To summarize, if an :etf argument is include in a  modern compact
realization specifications then this process will create rules
that reflect the type restrictions on the variables in the category.
The only exception (applied across the board for the biology grammar)
is it the flag *inhibit-construction-of-systematic-semantic-rules* is
up, in which case only the rules for the lexical heads will be
instantiated.

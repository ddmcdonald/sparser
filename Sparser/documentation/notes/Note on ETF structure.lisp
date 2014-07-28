(in-package :sparser)

;; 6/11/14

The exploded tree families in Sparser are based on a construal of Tree 
Adjoining Grammar (TAG) that was developed from a language generation 
perspective [refs].

The "family" part refers to Zelig Harris's notion of a transformational 
family, which is to say a base form, such as a declarative svo construction, 
plus all the variations that can be derived from it through the application 
of various transformations (Harris was Chomsky's thesis advisor): questions, 
two sorts of relative clauses, embedded questions, clefts, imperatives, etc.

All those variants were explicit on the generation side, in Sparser they
are not. An ETF is really just a schematic representation of one tree, 
where the "exploded" part refers to the fact that we've sliced the tree
horizontally along all of its levels of immediate constituents in order to
have a form that's easily instantiated as a set of (binary) phrase structure
rules.


Here is an example of one of the simplest ETF in the grammar. Since 
define-exploded-tree-family is a macro this is processed as one big 
unevaluated expression that is picked apart and converted into an object 
piece by piece -- see the note on ETF construction.

(define-exploded-tree-family  intransitive
  :description "A verb that requires only a subject to have a complete sentence.
     It may be followed by prepositional phrases that carry crucial information,
     but that information may also just be conveyed by context."
  :binding-parameters ( agent )
  :labels ( s vp np/subject )
  :cases
     ((:subject (s  (np/subject vp)
                 :head right-edge
                 :binds (agent left-edge)))))

The description string is important for capturing the intent behind the tree.
There are a lot of ETF, especially for "of" constructions, that specify 
essentially the same structure but differ in the the semantic relationships
they are intended to capture. It makes little difference on the parsing side
but a large one when generating since different relationships have different
options for reduction or variation.

The ':cases' are expressions that have the same organization as the expression
used for def-cfr: The same layout of lefthand side ('s') and righthand side
('np/subject' + 'vp'), and the same way of specifying referents in terms
of edges (n.b. the referents of those edges). The symbols left-edge and
right-edge correspond to parameters in the referent evaluator where they
are bound to their respective edges.

The difference is that they also name the relation they capture, ':subject',
thought that notion has not been developed or exploited. As well as, of
course, the fact that the rule is stated over symbols -- to be replaced by
real categories and words when the case ('schematic-rule', or 'schr') is
instantiated.

There are two types of substitution terms. The ':binding-parameters' will
be replaced with variables. They are used in the reference expressions.
In this case the variable that is mapped to 'agent' is the one that will
be bound to the referent of the left edge.

The ':labels' are substitution terms what will map to categories (edge 'labels')
or sometimes words. Their names reflect their role in a functional syntax.
('subject' rather than first np under s). This is, however, just to help the 
grammar writer keep things straight since their actual meaning is determined
by how they are used in the cases/rules. 

The slashes in the labels are just a convention for distinguishing, e.g., the
np that goes in subject position ('np/subject') from the 'np/object' that
goes in object position. 

Slashes in the rule schema, when they do not refer to one of the substitution
labels, can get special treatment. This is handled by the rather complicated
function decode-slashed-label that is called from replace-from-mapping -- the
function that is called from instantiate-rule-schema to replace the term
given in a case, e.g. 's', with the object that the mapping says should
be substituted for it.

One case is the passive.

define-exploded-tree-family  passive
  :description "For a verb that only appears in the passive."
  :binding-parameters ( patient )
  :labels ( vp vg np/object )
  :cases
     ((:passive (s  (np/object vg/+ed)
                       :head right-edge
                       :binds (patient left-edge)))))

For the symbol 'vg/+ed' (passive verb group), the slash followed by the '+'
is recognized as identifying a grammatical suffix. In this case, the +ed
is part of the machinery for recognizing passives ("was assassinated").
This one-off treatment is in grammar/rules/syntax/be.lisp.


Another case is constructing a composite label out of pieces. It's
simplest to illustrate this by example (the alternative is reading the
code). This next ETF is possibly the most complicated one in the set. 
It is used in one place, the definition of the job-event name-to-position
from the sublanguage for Who's News. The point of the complexity in the
slash pattern in the labels of the ETF is to provide for a relatively
simple statement of the rdata mapping in the category. We start with
the category's definition. The point is to get both the verb "name"
and the preposition "to" into the schema. 

(define-category  name-to-position
  :instantiates job-event
  :specializes  get-position
  :binds ((person . person)
          (position . position-at-co)
          (title . title)
          (company . company))
  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je)
  :realization
     (:tree-family  ditransitive/pp-or-np
      :mapping ((s . job-event)
                (vp . job-event/agent)
                (v-bar . job-event/title)
                (vg . :self)
                (np/agent . company)
                (np/patient . person)
                (np/goal . title)
                (prep . "to")
                (pp/goal . position)
                (agent . company)
                (patient . person)
                (goal . title))
      :main-verb "name" ))

Notice that the preposition is going to be linked to the substitution
label prep. But in this ETF it appears by both itself and in slashed
labels. The description explains why this ETF is so elaborate.

(define-exploded-tree-family  ditransitive/pp-or-np
  :description "Fits a verb that takes a subject and two objects, ~
                where the second 'object' can be either an np or a pp. ~
                The first object can be promoted (passivized); the second ~
                can as well provided that it is negative. When there is a pp, ~
                the preposition serves as a 'case marker' rather than carrying ~
                independent information.  Unlike a verb like 'give', ~
                the two complements to the verb do not change their positions. ~
                Examples are 'name' and 'appoint'."
  :binding-parameters ( agent patient goal )
  :labels ( s vp v-bar vg np/agent np/patient np/goal prep pp/goal )
  :cases
    ((:subject (s (np/agent vp)
                :head right-edge
                :binds (agent left-edge)))

     (:verb+first-object (v-bar (vg np/patient)
                           :head left-edge
                           :binds (patient right-edge)))

     (:v-bar+second-object (vp (v-bar np/goal)
                             :head left-edge
                             :binds (goal right-edge)))

     (:pp (pp/prep/pp/goal (prep pp/goal)
             :head right-edge ))

     (:v-bar+pp-object (vp (v-bar prep/pp/goal)
                            :head left-edge
                            :binds (goal right-edge)))

     (:verb+pp-object (vp/+ed (vg/+ed prep/pp/goal)
                            :head left-edge
                            :binds (goal right-edge)))

     (:verb+second-object (vp/+ed (vg/+ed np/goal)
                            :head left-edge
                            :binds (goal right-edge)))
     
     (:passive (s (np/patient vp/+ed) 
                 :head right-edge
                 :binds (patient left-edge)))

     (:promoting-second-object  (s (np/goal vg/+ed)
                                 :head right-edge
                                 :binds (goal left-edge)))))

The point of the slashing is to let you separate form and substitution
terms. The lefthand side of the :pp case, for example, pp/prep/pp/goal,
says that the form of the rule for this case is 'pp', and that the
'real' substitution term is just internal to the ETF: prep/pp/goal,
which is the second term on the righthand side of the next case
and the one after it. 

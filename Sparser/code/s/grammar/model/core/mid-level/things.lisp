;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017-2022 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "things"
;;;   Module:  "model;core:mid-level:"
;;;  version:  July 2022

;; Initiated 8/15/17 to hold general noun-like stuff, particularly the
;; vocabulary need for the fixed texts in generate.lisp

(in-package :sparser)

;;;----------------------
;;; emotion
;;;----------------------

(define-category emotion
  :specializes mental-construction
  :documentation "You 'have' or 'are' an emotion. It is a 'feeling'    
    such 'happy' or 'mad'. Taken abstractly we have phrases like
    'he learned to control his emotions', suggesting a connotation
    of 'strong' emotions"
  :realization (:noun "emotion"
                :adj "emotional"))


(define-category appeal
  :specializes emotion
  :documentation "something is appealing / pleasing to the eye, or for
   a need where you have to pick something -- fruit, candidates for office, ..."
  :realization (:noun "appeal"
                :adj "appealing" ))

;; :verb "appeal" -- this is a request < direction < illocution < communication
;; "Abrams appealed to Browne to hire Change" -- from TRIPS
;;    :binds ((on) (for) (to))
;;    :on on :for for :to to

(define-category anxiety
  :specializes emotion
  :realization (:noun "anxiety" :adj "anxious"))

(define-category concern
  :specializes emotion
  :realization (:noun "concern" :with theme))

(define-category be-concerned
  :specializes emotion
  :realization (:adj "concerned" :with theme))

(define-category confusion
 :specializes emotion
 :realization (:adj "confused"))
;; :noun "confusion" 

(define-category confuse
  :specializes agent-interaction ; look for more specific - in communicate
  :realization (:verb "confuse"))

(define-category distress
 :specializes emotion
 :realization (:noun "distress"))

(define-category fear
 :specializes emotion
 :binds ((fear-for top))
 :realization (:verb  "fear" :s agent :o theme :for fear-for
               :noun "fear"
               :adj "afraid"))

(define-category feeling
  :specializes emotion
  :realization (:noun "feeling"
                :of theme))

(define-category frustrate
  :specializes emotion
  :realization (:noun "frustration"
                :adj "frustrated"))
;; active version
;;   :verb  "frustrate"
             
(define-category pessimism
 :specializes emotion
 :realization (:adj "pessimistic"))
;; :noun "pessimism" -- what is it?

(define-category preoccupation
  :specializes emotion
  :realization (:noun "preoccupation"))

(define-category surprise
  :specializes emotion
  :realization (:noun "surprise"))
;; active: :verb  "surprise" 

(define-category stress
 :specializes emotion
 :realization (:noun "stress"))

(define-category worry
 :specializes emotion
 :realization (:noun ("worry" :plural "worries") :verb "worry"))

(define-category loneliness
 :specializes emotion                 
 :realization (:adv "lonely" :noun "loneliness"))

(define-category abuse
 :specializes agent-interaction
 :realization (:noun "abuse" :verb "abuse")
 :documentation "TRIPS has ont::abuse, the verb, with superc's
 judgement > agent-interaction. This is enough until we have to
 model social work.")

(define-category attention
 :specializes directed-cognitive-event
 :realization (:noun "attention"
               :to concerning))

(define-category attitude
 :specializes directed-cognitive-event
 :realization (:noun "attitude"
               :toward concerning
               :towards concerning
               :to concerning))

(define-category awareness
 :specializes directed-cognitive-event
 ;;/// second reading of "anxious" !
 :realization (:noun "awareness"
               :adj "anxious"
               :of concerning))

(define-category belief
  :specializes directed-cognitive-event
  :realization (:noun "belief"
                :verb "believe" 
                :in concerning))

(define-category disagree
 :specializes directed-cognitive-event
 :realization (:noun "disagreement"
               :verb "disagree"))


(define-category coverage
 :specializes directed-cognitive-event ;;???? citation?
 :realization (:noun "coverage"))



(define-category disinformation
 :specializes directed-cognitive-event
 :realization (:noun "disinformation"))

(define-category fact
 :specializes directed-cognitive-event
 :realization (:noun "fact"))



(define-category forecast
  :specializes directed-cognitive-event
  :binds ((at) (to))
  :realization (:verb  "forecast"
                :s subject :o object
                :at at 
                :to to
                :to-comp concerning))


(define-category headline
  :specializes directed-cognitive-event
  :realization (:noun "headline"))


(define-category implication
 :specializes directed-cognitive-event
 :realization (:noun "implication" :of concerning))

(define-category insight
  :specializes directed-cognitive-event
  :realization (:noun "insight"))

(define-category interpretation
  :specializes directed-cognitive-event
  :realization (:noun "interpretation" :verb "interpret"))


(define-category item
 :specializes mental-construction
 :realization (:noun "item"))


(define-category intuition
 :specializes mental-construction
 :realization (:noun "intuition"))

(define-category judgement
 :specializes mental-construction
 :realization (:noun ("judgement" "judgment")))

(define-category learn
 :specializes  mental-construction
 :realization (:verb ("learn" :present-participle "learning")))


(define-category news
 :specializes mental-construction
 :realization (:noun "news"))

(define-category opinion
 :specializes mental-construction
 :realization (:noun "opinion"))

(define-category perception
  :specializes mental-construction
  :realization (:noun "perception" :of concerning))

(define-category misperception
 :specializes mental-construction
 :realization (:noun "misperception"))

(define-category misinformation
 :specializes mental-construction
 :realization (:noun "misinformation"))

(define-category questionnaire
  :specializes mental-construction
  :realization (:noun "questionnaire"))


(define-category reason
  :specializes mental-construction
  :mixins (knowledge-verb)
  :binds ((WITH top))
  :realization (:verb "reason" :noun  "reason" :with with))
;;TO-DO -- fix this one
(define-category represent
 :specializes directed-cognitive-event
  :binds ((visual-presentation visual-presentation))
  :realization
  (:verb "represent"
   :noun "representation"
   :adj "representative"
   :of :object
   :o theme
   :in visual-presentation))



(define-category focus-noun
  :specializes mental-construction
  :binds ((|out of|) (in) (into))
  :realization (:noun "focus" :out\ of |out of| :in in :into into))

(define-category focus-verb
  :specializes directed-cognitive-event
  :mixins (comlex-verb)
  :binds ((among) (in) (upon) (on))
  :realization (:verb  ("focus"  :past-tense "focused" :past-participle "focused")
                :s subject :o object :among among :in in :upon upon :on on))



(define-category demonstrate
  :specializes communicate-information
  :mixins (show-pattern)
  :realization
        (:verb "demonstrate"
         :noun "demonstration"))

(define-category exhibit
  :specializes communicate-information
  :mixins (show-pattern)
  :restrict ((beneficiary interlocutor))
  :realization
     (:verb ("exhibit" :past-tense "exhibited" :past-participle "exhibited")
      :noun "exhibit"))




(define-category endorsement
  :specializes directed-cognitive-event
  :mixins (thatcomp)           
  :realization
        (:verb "endorse"
         :noun "endorsement"))

(define-category estimation
  :specializes directed-cognitive-event
  :mixins (thatcomp)           
  :realization
        (:verb "estimate"
         :noun "estimation"))

(define-category evaluation
  :specializes directed-cognitive-event
  :mixins (thatcomp)           
  :realization
        (:verb "evaluate"
         :noun "evaluation"))


(define-category reminder
 :specializes mental-construction
 :realization (:noun "reminder"))

(define-category report ;;/// merge with model/sl/reports version
  :specializes directed-cognitive-event
  :realization (:noun "report" :verb "report"))

(define-category reveal
 :specializes directed-cognitive-event
 :realization (:noun "reveal" :verb "reveal"))

(define-category scare
 :specializes directed-cognitive-event
 :realization (:verb ("scare" :past-tense "scared" :past-participle "scared")))



(define-category speculation
 :specializes directed-cognitive-event
 :realization (:noun "speculation" :verb "speculate"))

(define-category view :specializes mental-construction
 :realization (:noun ("view" :plural "views")))

(define-category survey
  :specializes mental-construction
  :binds ((across) (about) (for) (throughout))
  :realization (:noun  "survey" :across across :about about
                :for for :throughout throughout :of concerning))


;;;--------------------------------
;;; information and its containers
;;;--------------------------------

(define-category information
  :specializes non-physical
  :mixins (scalar)
  :instantiates self
  :lemma (:common-noun "information")
  :documentation
    "A proper axiomatization of the concept of information (Shannon, bits,
  information theory, becoming informed about something) needs a companion
  theory of knowledge and belief, which we don't need to just talk about
  messages. So we'll treat information as a [[non-physical endurant]]
  without being more specific than that. It's just a primitive that's
  not analyzed further.
  Notes:
    Information can be described or characterized, and it can be
  embodied in a medium that acts as a container for the information.
    Information must be distinguished from the the medium that carries
  it (bitstream, music score, book). The same information can be
  carried by different media and in different instances,
  i.e. information can be copied without losing its identity (which
  makes it a very special kind of stuff and drives the MPAA nuts).
  We can talk about the fidelity of a copy (compare different people
  singing the Star Spangled Banner at ball games) but poor copies are
  still copies of the same information.")

#| "information" is an 'information-functional-objects' in Trips
  < functional-object < abstract-object-nontemporal

JDP: information appears to be a primitive notion

Information and goals are both things one can 'have' or 'get'
They both can be put to use for some purpose
  and their suitability for that purpose can be judged: 'relevant'
Information carries a notion of scalar quantity: 'more', 'enough'

Fixed text: "I don't have enough information to do that."
invites this reply: "What (else) do you need to know?"
|#


(define-category evidence
  :specializes information
  :binds ((fact))  
  :documentation "Evidence provides support for a proposition
    or conjecture. Calling it just 'information' is to miss
    some potentially quite interesting intermediate categories.
    But we can come back to it"
  :realization (:noun "evidence" :for fact :of fact))

(define-category observation
  :specializes evidence
  :realization (:noun "observation"))

#|
"intent" is the 'result' of having an intention
   It's an 'intent' to do something
"I intend to get a new car" (same force as 'will', maybe 'expect')
"It is my intention to ..."
  (which sounds more natural that "my intent"
The noun is something you can 'have' / 'possess'
  (could be a transform from the 

"relevant" and "enough" are attributes of information. 
They are relational and have an explicit or implicit (contextual)
  'figure' (?) that they're predicating of. 
Tr: "relevant", "applicable", "pertinent"
  < relevant-val < information-property-val < property-val

TRIPS: "enough" qua 'adequate' is a quantity-related-property-val
 pred-s-post-templ  "I've talked about it enough"
 post-adv-optional-xp-templ "is it quiet enough (for you)?"
 post-adv-xp-templ: "is it quiet enough to sing?"
  and as a quantifier: Cabot calls the modifier 'size'

--- specific cases
 relevant goal
 (enough) information
 structure (I don't have any structure in mind)
 "in mind"
"Is your [intent] to ~a something?"
|#


(define-category information-container
  :specializes container
  :restrict ((contents information))
  :documentation "This is a rough draft waiting on more use-cases.
 The definition of 'container' (in kinds/space.lisp) is based on
 physical (geographical) regions rather than abstract regions.
 More importantly, the protopyical containers of information
 ('books', 'newspapers') are also the locus of the Pustejovsky's
 logical polysemy where alternative properties are inherited along
 different qualia: the physical newspaper that you spilled coffee on,
 vs. the telic newspaper that you always read for its articles, etc.
 That needs an treatment somewhere, and it could be here.")


(define-category publication
  :specializes information-container
  :realization (:noun "publication" :verb "publish"))

(define-category book
  :specializes information-container
  :mixins (publication)
  :realization (:noun ("book" "handbook")))
;;/// has verb reading as in 'to book tickets to the concert'

(define-category novel/book
  :specializes book
  :realization (:noun "novel"))
;;/// adjective reading is in dossiers/modifiers

(define-category journal
  :specializes publication
  :realization (:noun "journal" :verb "journal"))

(define-category story
 :specializes information-container
 :realization (:noun "story"))

(define-category theory
 :specializes information-container
 :realization (:noun "theory"))



(define-category answer/info ;; needs a better name
  :binds ((question))
  :specializes information
  :realization (:noun "answer"
                :to question))
;; "question" (as noun & verb) is in bio;general-verbs

(define-category literature
  :specializes information-container
  :realization (:noun "literature"))
  ;; from biocuration questions e.g.,
  ;; "What factors from the literature regulate IL15 and IL2?"


(define-category database
  :specializes information-container
  :mixins (has-UID ) ;; because of how we're defining the individuals
  :realization (:noun "database"))
  ;; from biocuration questions e.g.,
  ;; "What regulates GLUL from the GEO RNAi database?"


(define-category list-container
  :specializes information-container
  :restrict ((contents top))
  :realization (:noun "list"
                :of contents))


;;;-------------------
;;; natural phenomena
;;;-------------------

#| TRIPS has more layers before we get to ont::air-current for "wind".
atmospheric-phenomenon < natural-phenomenon < natural-object.
 For 'mountain' its geo-formation < geo-object < phys-object
which perhaps misses the commonality.

We're starting with just natural-object. Add finer categories
when we see the need for them.  |#

(define-category wind
  :specializes natural-object
  :realization (:noun "wind"))

(define-category dust
  :specializes natural-object
  :realization (:noun "dust"))

(define-category smoke
  :specializes natural-object
  :realization (:noun "smoke")
  :documentation "// should add the verb for the activity of 'smoking'
 and associated notions of 'smoker', 'cigar', 'cigarette', 'joint', etc")


;;;---------------
;;; Having a name
;;;---------------

#| Ordinary simple attributes (color, size) are realized as
adjectives. Since the suite of these attributes can largely
be anticipated, the treatment in core/kinds/attribution.lisp
defines their semantic relationship in terms of variables
that are incorporated into the target categories as mixins
(see, e.g., the definition of 'object' in core/mid-level/
ontology.lisp). 

Perhaps because of their salience in human relationships,
names have a more diverse set of realizations and typically 
establish the relationship using verbs.  

  "my name is Inigo Montoya"
  "we call him Daniel"

The name attribute, per se, is the category 'name', which
is defined with the other standard attributes in mid-level/
attributes.lisp. The basic semantic model for names is given
in the names, people, companies, and location directories
of grammar/model/core/, and elaborated in several model/sl/'s.
While the core/names/ module can be assumed, the other grammar 
modules are not available in every configuration

'Names' like 'Daniel' or 'MEK' are attribute 'values', like
'red' and 'big'.  The entity to whom we're attributing the
name fills the third variable of that (inherited) has-attribute
category. 

Note that names ('proper names') are individuals that instantiate
one of the subcategories of the category 'name'. 
See grammar/model/core/names.lisp

|#
(define-category has-name
  :specializes has-attribute ;; vars: item, attribute, value
  ;; :mixins ()
  :realization 
    (:noun "name"
     :of item
     :for item))

(define-category has-symbol
  :specializes has-attribute
  ;; :mixins ()
  :realization 
    (:noun "symbol"
     :of item
     :for item))
     
(define-category has-synonym
  :specializes has-attribute
  :realization
    (:noun "synonym"
     :of item
     :for item))
;; (p/s "what are synonyms for BRAF?")


(define-category name-something
  :specializes achievement
  ;;:mixins (attributing-verb) ;; actor, patient, attribute
  ;;:restrict ((attribute endurant)) ;; should be 'name' but "Daniel"=>bio-entity
  :documentation "If there's an agent it's the entity
    that assigned the name to the patient (e.g. a parent
    or an NIH committee). The attribute per se is 'name'
    and with particular names ('RAS', 'David') as the
    values of the attribute."
  :realization  (:verb "name"
                       ;; :etf (svoa) -- have to fix the realization scheme
                       :oc 
                       )) ;;-- need scheme for v+ed-a "called Daniel"
;; :eft svoa ;; subject,verb,object,a value -- like "paint them red"
#| inherited from attributing-verb
   :s agent  ;; "we[s] named him[o] Daniel[a]
   :o patient
   :a attribute
"What is insulin's gene named?"
 |#

(define-category called-something
  :specializes name-something
  :realization (:verb "call"))

#| This version of 'name' and 'call' doesn't handle the standard reduced relative
that's ubiquitous in biology examples (show-sents), e.g.
"the upstream activator of Raf, called Ras, and the direct substrate of Raf, called MEK1/2"
|#
     
(define-category known-as
  :specializes has-attribute
  :binds ((alternate-name)) ; making the v/r 'name' would likely fail a lot
  :realization (:adj "known as")
  :documentation "Super category of all the variations on this pattern,
e.g. 'aka', 'formerly know as (Prince)'. Not clear where to stage the
semantic effects of these phrases, which invariably turn up as apposatives
to provide alternative names for the NP head. Also awkward since unlike propositions
we don't have phrases 'headed' by the adjective that heads a np-complement
where they will normally just be recorded as modifiers.
  Probably need to use an explicit rule -- good excuse for a semantic type
rule since all these behave the same")
    
(adj "also known as" :super known-as)

(adj "formerly known as" :super known-as)




;;--- 'label'

(define-category label
  :specializes designator
  :lemma (:common-noun "label")
  :documentation "A label is a way to specify one instance of stuff
 versus another. 'doi's label publications, as do PMC ids. This notion
 of 'label' is the result of the process of 'labeling' (defined in
 bio;bio-methods. The name tag a person might wear is a physical
 embodiment of the 'label', and probably should be analyzed as
 as sort of information container. Labels aren't expected to be
 unique (as a 'UID' would be), just to provide a possibly ideosyncrating
 basis for distinguishing things. If the label incorporates numbers
 or letters could be used to sort things, e.g. the components in
 a Dewey Decimal system identifier.")
#|
Cf. the category two-part-label (in rules/DA/nospace-categories.lisp)
 that provides an account for ""in Figure S1", where 'figure', 'Fig.'
 are in bio;terms.lisp and the label assembled by nospace.
|#



;; The verb "term" is a bio-rhetorical in bio;verbs
;;   There's also got to be a verion for 'period of time' as in
;;     "short term" "long term" "school term"
;;
(define-category term-name
  :specializes label ;;/// maybe 'name' -- same thing as 'word' (no yet defined)
  :realization (:noun "term"))
"what GO terms are most frequent in these genes"
"the most frequent GO terms for these genes"
"for these genes"
"are enriched for AKT1"
"What GO terms are those genes enriched in?"
"the most frequent GO terms among these genes"




;;--- "model"
#|  'create/make/build a model where <description>
"add X to the model",  "remove X from" => make is a container
"the model contains X"
"build a model" -- artifact (like 'stack')
Show sents:  
  "a novel model for", "an established in vitro model for" <== dominant case
      -- purpose?
  "our model suggests"  --- information?
  "supporting the model that"
  "in this model P" -- the contents of the model do P
  |#
(define-category model
  :specializes information-container
  :mixins (predication)
  ;; not really always an 'artifact'
  :binds ((modeled-process perdurant)
          (modeled-object endurant))
  :realization (:noun "model"
                :of modeled-process
                :of modeled-object
                :for modeled-process
                :for modeled-object))

#+ignore ;; COMLEX gives this 
(define-category model-cl-noun :specializes comlex-noun
     :binds
      ((INTO top)
       (IN top)
       (FOR top)
       (ON top))
     :realization (:noun  "model" :into INTO :in IN :for FOR :on ON))





;;--- "contain" is also in general-verbs as a bio-relation
#|
sp> (p/s "the model contains MEK")
[the model ][contains ][MEK]
                    source-start
e7    CONTAIN       1 "the model contains MEK" 5
                    end-of-source
(#<contain 92950>
 (participant (#<model 92947> (has-determiner (#<the 106> (word "the")))))
 (theme
  (#<protein-family MEK 85897> (raw-text "MEK") (name "MEK") (uid "BE:MEK")))
 (present #<ref-category PRESENT>))


;;--- "construct" is also in general-verbs as a bio-method
probably to get the noun reading
|#


;;/// move to be with birds of a feature -- or rethink

(define-category relationship
  :specializes state ;;?? maybe relation
  :binds ((agent) (patient) (participants)) ;;/// yeuch! Wrong meaning.
  :realization (:noun "relationship"
                :m agent
                :with patient
                :between participants
                :among participants))
;; "What is its relationship with BRAF?"



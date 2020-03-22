;;; -*- Mode: Lisp; Syntax: Common-lisp; Package: sparser; -*-
;;; Copyright (c) 2010-2020 David D. McDonald 
;;;
;;;     File:  "upper-model"
;;;   Module:  "model;core:kinds:"
;;;  version:  March 2020

#| Defines the set of 'expressive categories' (see Meteer 1992) that we're
   experimenting with as the top tier of our domain model.  This sort of thing
   is often referred to as an 'upper model'. This is loosely derived from
   the refinements to that model made at Zoesis in 2003.  

   Need some axioms and tighter review before buying in completely.
   Also need a merger with my adoption of Dolce.

|#

;; 0.1 (8/1/11) Moved in the 'top' categories from other parts of the
;;      core so they can be defined before they're referenced. 8/23 added
;;      the first relation. 9/16 added modifier (words;adverbs) tenatively.
;;      9/29 added operator as in the meeaning from the old days.
;;      12/17 added perdurant, not clear how to fit it in correctly.
;; 0.2 (4/5/13) Exposed top and expressible top so there was somewhere
;;      to hand the type variable.
;;     (8/19/13) Trying a stand-alone definition for "relation" to go with
;;      the class. 12/17/13 added scalar-quality and state. 6/9/14
;;      pulled the standalone definition. It was a one-off. 
;; 0.3 (6/16/14) Trying to insert more organization.
;;     (1/12/15) Filled in missing super-types.  1/20/15 added negation
;;      to top. Worth seeing what a good ontologist would do though. 
;; 0.4 (8/10/15) Reorganized for clarity and ease of reading. 
;; 0.5 (9/22/15) pulled the lemmas so the upper model could be loaded early


(in-package :sparser)

;;;------------------------------
;;;   the top of the lattice 
;;;------------------------------

;; This is supposed to be a formal top with just the functional role of
;; providing a place for searches up the AKO tree to stop.
;; However, there's no established way to say that 'this variable
;; applies to every kind of thing' except to have it defined here,
;; though we should keep it to a very minimal set.

(define-category top
  :instantiates nil
  :specializes nil
  :binds ((name :primitive word) ;; more like a label than a name proper.
          
          (modifier) ;; supplies a property. May be adverbial
          
          (qualifier) ;; a modifier that changes somethings type: 'toy gun'
          
          (negation) ;; applies to both endurants and perdurants
          ;;/// but c.f. negative on tense/modal -- needs coordination

          (quantifier) ;; "more precise" -- applies to attributes

          ;; Variables for plural
          (number) ;; leave v/r open -- could be a #<number>, integer, quantifier etc.
          (items :primitive list)
          )
          
  :documentation
  "This is a formal top. Nothing should take 'top' as its value restriction
   (except for mechanical defaults). Its functional role is to provide a place 
   for searches up the AKO tree to stop, and to provide an upper-most class. 
   Any variable bound here must be applicable to anything.")

(defparameter *top-of-category-tree* (category-named 'top))


;;;-----------------------------------------------------------------
;;;     'real' categories -- the effective top of the hierarchy
;;;-----------------------------------------------------------------
;; The other 'tops' are in the files 
;;   kinds/processes.lisp, 
;;   kinds/things.lisp,
;;   kinds/space.lisp (though that needs to be integrated better with
;;     rest of the location)
;;   kinds/time.lisp


(define-category  quality
  :instantiates nil
  :specializes  top
  :documentation 
"Qualities are attributes of / inhere in other entities, such as
 color location, size, severity, saturation, anger Their 'range', so
 to speak, is top.  If the entity goes away, so do its
 qualities. I.e. these are dependent properties ontologically
 speaking. A rose has a color that's the color of that particular
 rose. If you don't keep its water fresh then the rose's color quality
 will change to brown. Nothing happens to the points in color space
 that the rose's color quality refers to: they are independent
 abstract entities.")
;; possible subclasses: SensoryQuality (color, sound),
;; SocialQuality (angry)


(define-category abstract
  :instantiates nil
  :specializes top
  :documentation
 "Independent stuff that is not anchored in space or time or by
 association with something that is: units of measure, regions of the
 color space, numbers, propositions, intentions and intensional
 descriptions, structures assembled out of symbols...")


;;;---------------------------
;;; Subcategories of abstract
;;;---------------------------

(define-category abstract-region
  :instantiates nil
  :specializes abstract
  :documentation 
   "Dolce defines a 'region' class as one of the immediate
 daughters of 'abstract' (the others include 'fact' and 'set)
 Region is then divided into 'temporal', 'physical' aka space,
 and 'abstract'.
   In general, 'region' is taken abstractly here using the notion of
 demarcation or setting boundaries over some domain to pick out a
 particular part of it. You can have a region of the number line, a
 region of a process (e.g. S-phase in cell division), a region of
 space. The emphasis on regions having interiors in which other things
 can be located. The world itself is not cut up into nice parts. Any
 partitionings or identification of regions are arbitrary cognitive
 constructs, which makes them abstract: not situated in time or space.
   This category is called 'abstract-region' because 'region' carries
 a strong conotation of things geographical, and the present model
 has a fairly rich treatment of place and location, which are all physical
 stuff of one sort or anouther leading to defining 'region' as an endurant
 in the things file.
   An earlier version of this class had an 'applicable-domain' slot
 in it to identify 'The kind of stuff this regain demarcates: numbers, cytoplasm,
 curricula, geographical space, etc.', however it not been clear how to
 fill this slot with anything without going second order (i.e. using a
 class), and it's worth exploring that that would come to in some use-case.")




; We need an unmarked, equally weighted 'relation' for what holds
; among things like the members of a collection or between categories
; taken generically. Don't want to assume a standard arity 
; or a directionality (for that we'd use operator and predication). 
;
(define-category relation
  :instantiates nil
  :specializes abstract
  :binds ((adverb))
  :documentation
  "A relation designates a relationship between some number (arity) of
 entities. It is intended as the super class of more specifc types
 of relations such as meronomyms, kinship, or change over time.
   As a piece of logic, a relation is the equivalent of a function
 symbol, i.e. the name of a possible relationship rather than an
 instance of the relationship. Attributes of the relation acrue here,
 such as arity, type-restrictions, and (for unary relationships)
 meta-properties if we were to get serious about following Guarino &
 Welty's distinctions in their 'A Formal Ontology of Properties' paper
 from 2000.")


(define-category linguistic
  :instantiates nil
  :specializes abstract
  :binds ((word  :primitive word))
  :documentation
  "A converting class for categories that we create and instantiate
  whose meaning is a linguistic or text-organizational structure
  or imposes a linguistic relationship. Note that as a rule many
  of the relations and organizing structures that were done with
  categories earlier are now being done with conventional structures
  like CLOS classes.")

(define-category phrase-interpretation
  :instantiates nil
  :specializes linguistic
  :documentation
  "A set of categories that only exist to provide scaffolds for
 grammatical constructions that have to be formed as constituents
 before they can be interpreted in context. Canonical example
 is a prepositional phrase. 'Linguistic' things will often have
 an existence outside of the context of parsing and semantic
 interpretation. Things that are phrase-interpretation's only
 live during an interpretation and are meaningless afterwards.")

(define-category requires-context
  :instantiates nil
  :specializes phrase-interpretation
  :documentation "Intended for things like pronouns that require
 reference to the discourse context or general knowledge of defaults
 to be grounded.")


(define-category subcategorization-pattern
  :instantiates nil
  :specializes linguistic
  :documentation
  "The role of these mixin categories is to enforce the use of
 a uniform, only-defined-once set of categories, and to provide the
 basic subcategorization information for how those variables are
 realized.")

(define-category thematic-role
  :instantiates nil
  :specializes linguistic
  :documentation
  "A way to group all the role mixins in roles.lisp and thereby
 make the sub/super organization of the ontology as a whole more
 intelligible. These roles are use as the way to introduce variables
 into regular categories. There are possibilities for drawing
 general inferences from the use of one role vs. another but we
 haven't worked that out yet.")

;;;---------------------------------------
;;; names -- simple and root of real ones
;;;---------------------------------------

(define-mixin-category has-UID
  :instantiates nil
  :specializes abstract 
  :binds ((uid))
  :documentation "UID is a field in many TRIPS objects")

(define-category designator
  :specializes abstract
  :documentation "Provides a generalization over diffent
  kinds of things that pick out instances.")

(define-category index
  :specializes designator
  :instantiates nil
  :documentation "Functions as a selector by picking out
 one of some set or segence of things because they have
 this 'index'. Could be used for street addresses, social 
 security numbers, serial numbers, etc. Could be used for
 a 'cursor' that changes as we iterate over some sequence.
 Motivating case is position-in-a sequence in numbers/ordinals.lisp")

(define-category named-type  ;; "Honda"
  :specializes designator
  :binds ((type-of :primitive category))
  :documentation
    "Describes or names something. Not a thing itself (not physical)
 because if anything it designates the whole class of the stuff 
 it names. The type-of variable indicates what actual kind of thing
 to instantiate when we have reason to deference this type to something
 physical.")

;;;----------------------
;;; extension in a model
;;;----------------------

(define-mixin-category indexical
  ;;:specializes relation
  :binds ((extension))
  :documentation "Most all Sparser interpretations describe things
 rather than denote them. This mix-in provides an option for portions
 of the system that do maintain proper mental models of the world
 where denotation is a sensible notion to use this 'extension' variable
 to hold the denotion rather than overload the 'referent' field of
 an edge.")



;;;------------------------------------------------
;;;--------- subcategories of quality -------------
;;;------------------------------------------------


(define-category scalar
  :instantiates nil
  :specializes quality
  :documentation "'scalar' per se is a meta-property. 
 It is a quality of some other category and says about it 
 that it can take on different values along some dimention")

(define-mixin-category qualifiable
  :instantiates nil
  :specializes quality
  :binds ((qualifier))
  :documentation "a meta-property over values, usually scalar
 values. It says that the value is not exact in some fashion.
 The variable this mixin provides will be bound to an
 approximator, an intensifier, or the like, and will
 usually correspond to an adverb.")
;;/// might be worth distinguishing approximation from
;; intensity

#+ignore
(define-category scalar-quality
  :specializes scalar
  :documentation "There are a substantial number of references to
 'scalar-quality' in the model. They are unlikely to have any
 consequence given how light this is, but putting this back should
 provide some temporary relief.")


;;;------------------------------------------------------------
;;;---------------- nothing live beyond here ------------------
;;;------------------------------------------------------------

#|  This is the presently unused part of the ontology that started
    with Meteer's study of Talmy for her thesis, as laundered by
    McDonald at Zoesis. It's worth mining this periodically for
    notions that might be worth incorporating into the now Dolce-
    centric upper model. 

;;--- expressible-type  (more of a generation-centric notion)

; This is the category that dominates almost everything in the model.
; These are the things that the world is comprised of - things, actions, 
; properties -- unicorns, raising money, being -really- good.  
;
; You have to think very carefully if you want to introduce something
; into the ontology that isn't a subcategory (doesn't inherit from)
; expressive type. 
; 
; If we ignoring the capabilities provided by language and interpersonal
; talk, everything that you model will get a single category (or a base
; category and some mixins). But people have more options and can express
; the same state of affairs from different perspectives -- the canonical
; example is 'making a decision' and 'deciding', where you shift between
; a thing and an action. These differences correspond here to differences
; in the choice of expressive type and could be made for tactical reasons
; within the text planner.
;
(define-category expressible-type
  :instantiates nil
  :specializes top)

; This is the natural choice for a value restriction that can accept 'anything'.
; All the categories for the things we can mention/talk about in language
; fall under this category. 



;;--- categories that are classifications of effects rather than stuff

; Grunts, expression of pain, exclamations, and the like are the natural
; province of this category.  It is sometimes used when the motivation
; seems to be immediate and direct rather than involving any sort of
; considered choice. The best theory on this sort of 'direct pass through'
; notion is from Amanda Stent.
;
(define-category direct-expression-of-intent
  super-category expressible-type) ;; // might want to be 'top'



; The speaker's intent gets converted to the instruction to carry out
; a particular 'dialog-move' when it crosses the line and initiates the
; generation process. Dialog moves are basic things like questioning or 
; asserting a proposition, as well as smaller ones like evoking a person's
; name or adding a tag that disambiguates an anaphor.  
;
; A dialog move necessarily involves someone (something?) who's speaking,
; who they're speaking to, and the content of what they say -- which is
; reflected in the variables associated with this category (though they're
; not restricted to just this category  -- there's always a speaker and
; an interlocutor (or several interlocutors/hearers/the-audience) and
; there's (nearly) always content. Remember that variables have a life
; of their own independent of categories. Categories can insist on having
; certain variables (their slots), and can impose value restrictions on
; them that (in principle, but the implementation is weak) can vary from
; category to category.
;   Subcategories of dialog move will often have a richer descrimination
; of their content, e.g. motive+action, deny+reassert, which is reflected
; in their choice of variables.
;
; An important subclass of dialog moves (which so far its hasn't seemed
; useful to break out) are 'speech acts' which are being read here very 
; narrowly as the classic set of actions achieved through the direct use 
; of language: promising, explicit naming/proclaiming (e.g. the act that
; makes you married), denying, etc. 

(define-category dialog-move
  super-category top
  slots ((speaker . expressible-type)  ;; allows rocks and events to talk
         (interlocutor . expressible-type) ;; who it's directed to
         (content . expressible-type)
         (center . individual) ;; might have to elevate the v/r
         ))

; The canonical slot, 'content', is for what it is that's said to the interlocutor.
; The initial motivation comes from Forbid, where there are several choices that
; make the speaker and hearer explicit in addition to the obvious command where
; they're implicit.  The content field is the basis of the weight of the
; message nodes that wrap dialog moves. The additional weight from explicit
; mention of the interlocutors is unlikely to matter.
  



; Rhetorical is a category only because we use categories to organize
; choice sets. (Essentially the same is true for dialog-move though they 
; often are realized by verbs, e.g. "promise", and something rhetorical would
; never that lexically explicit.)  
;
; It is the classification for the intuitive rhetorical moves like hedging
; or emphasizing, and also for stylistic effects (e.g. sentence length),
; and also for labeling individuals like maybe-add-both' that provide
; carriers for alternative choices that add very little to the semantic
; content being realized, and that are factored out so that they can save
; us space by appearing as follow-ons to choices rather than multiplying
; the choices.
;
(define-category rhetorical
  super-category top)



; Frame and  state-of-affairs are envelop categories whose realizations
; would be choices over regular categories. They are used to model
; notions of alternative perspective or of complex situations where
; you would deliberate over what element of the situation to focus on.

(define-category frame
  super-category top)

(define-category state-of-affairs
  super-category top)



;;;--------------------------------------------------------------
;;;------- the expressive categories and subcategories ----------
;;;--------------------------------------------------------------

;; operator et al. went here

;;;-----------------------------------------------------------------------------
;;; conventional categories -- the conventional upper model of expressive types
;;;-----------------------------------------------------------------------------


(define-category anchored-in-time
  super-category expressible-type
  slots ((modality . modality)
         (time . time)
         (aspect . aspect)))

; This is a super-category over states and events and such that provides
; a common place to position variables that apply to all of them. This way
; of thinking about it is due to Talmy.



;;--- situations

(define-category situation
  super-category anchored-in-time)

; The terms 'situation' and 'state of affairs' pretty much cover the same
; territory, so the difference here is technical.  A state-of-affairs object
; is a way to model a complex situation as a set of concrete events, states,
; and participants by bundling them into a single envelop that a very
; early decision process picks through.  Situations are used almost as
; anaphors to refer to the state of affairs atomically. They're the
; referents of things like the 'it' in "It's raining again" or for
; phrases like "what's the big deal?"



;;--- events 

(define-category eventuality
  super-category anchored-in-time)

; 'Eventuality is a term introduced by Emmond Bach to abstract
; events away from (what amounts to) their tense. We have the same
; eventuality ("Marie <get> a bicycle") whether it's a goal for the
; future, what's happening right now in the store, or happened years
; ago. 


(define-category action-by-an-agent
  super-category eventuality
  slots ((agent . individual)
         (reason . proposition)))  ;; too specific?

(define-category action-upon-a-patient
  super-category action-by-an-agent
  slots ((patient . individual)))

(define-category agentive-action-with-tacit-result   ;; hurt, injure, elect
  slots ((result-state . result-of-past-event))
  super-category action-upon-a-patient)

; This set of specific kinds of eventualities is just the tip of the
; iceburg for reifying the relationships between the participants in
; an eventuality.  I can see do it thoroughly as a way to control
; what kinds of adjunctions you can make to specific base categories 
; of objects, which would let the generator make accurate (felicitous)
; compositions on its own without getting the message-builder involved
; beyond just specifying the intended rhetorical effect / dialog move.




;;--- actions 

(define-category action
  super-category expressible-type)

; If you abstract the agent/subject away from an eventuality you get an
; action: "swimming off Dorchester beach in January", "kissing", "kissing
; your wife".  These pick out generic things in the world rather than
; actual ones -- for that we have eventualiies and states. If it were useful
; to model something along the same lines as the grammatical decomposition
; of a clause (sentence) into subject and predicate, you'd have an individual
; in the subject and an action in the predicate.



;;--- states, propositions, facts, etc.

(define-category state
  super-category anchored-in-time
  slots ((theme . individual)))


(define-category result-of-past-event
  super-category state
  slots ((initiating-event . eventuality)))
 #| This leads to including features for have+en - the 'present perfect' 
    See L&S #115 'past event with result in the present time' the result
    is assumed to be ongoing now. |# 


(define-category state-of-an-individual  ;; vs. a state of affairs or a situation
  super-category state
  slots ((individual-whose-state-it-is . individual)))
;
; This is a subclassification of state in the same style as the one for
; eventuality in that it reifies the relationship between the particpants,
; and we'd elaborate it further for the same reasons -- providing some structure
; to adjunct/operator resources by specifying what kind of object they
; can compose with.


(define-category proposition
  super-category anchored-in-time)
;
; Proposition is distinguished from state in that we take states to 
; be real -- true descriptions of the current situation, whereas
; propositions have truth values and may or may not actually describe
; the world.  /// They're also believed or not, which is a variation
; on the notion of truth value. This calls for standard variables.


(define-category assessment
  super-category proposition)
;
; An assessment is a judgment about something (could have used that word
; as well, though it's connations seem narrower). /// It could have some
; standard variables, but I'm not sure what


(define-category proposal
  super-category anchored-in-time)
;
; A proposal is a future eventuality or state that some agent believes
; should come to pass. These are the P's in "I propose that P", that is
; to say that the act of proposing is formalized as a dialog-move (i.e. a
; category that inherits from dialog-move), and what you are proposing is
; an instance of this category.




;;--- qualities

; The term 'quality' is the choice of the current ontology literature (though
; it goes back to Aristotle) for what might otherwise be called   a 'property'
; or an 'attibute'. Those words come from the intimate association of these
; things with predications, but "quality" conceptualizes them in pure form
; independent of predications, which is what we want. These are the canonical
; example of an operator.

(define-category quality  
  super-category operator)


(define-category specializer ;; takes a kind into a more specific kind
  super-category quality)

(define-category distinguisher ;; differentiates one instance from another
  super-category quality)

(define-category quantity  ;; says how many there are
  super-category quality)

(define-category quantifier  ;; "all", "ours", generalized quantifiers
  super-category quality)


;;-- shadings on quality that may or may not actually be useful

; This is a specialization of quality that focuses on the quality as 
; it is manifest in a particular actor -- so when instantiated
; you'd get individuals that would allow you model, e.g., the difference in
; the nature/strength/appreciation of the quality as it is held by one
; actor vs. it's nature/etc. as it is manifest in another actor.
; It was used in the BBG model for 'leadership'.
;
(define-category quality-of
  super-category actor
  slots ((actor . individual)))


(define-category state-predicate
  super-category quality)
;
; Our 'states' are relations over individuals and anchored in time.
; If we want to quantify over the 'state' per se, independent of these
; normal concomitants, then we need a different notion -- this one.
; In PC this would be the predicate and the customary states would be
; the wffs.  The "calm" in "You need to stay calm" is a state-predicate.
;/// this terms does not trip off the tongue. Would be nice to find
;    a better one. This terminology is analogous to the predicate in
;    breaking an event down into a subject and predicate, where we have
;    the ready made word 'action' for what the agent in the subject
;    position did. 




;;--- things

(define-category anchored-in-space
  super-category expressible-type)

; This is super category of individuals and categories qua kinds. 


;;--- generic things: categories, natural kinds, types

; "Kind" is one of the standard terms for references to categories of
; stuff when they are used to be general/generic statements:
; "lions eat people", "the lion is a proud animal", "People who swim in icy cold 
; water are crazy."
;
; Virtually any category can be construed as a kind ('intruder', 'prince', 
; 'professor', 'character architect', ...), so that is what we are going
; to do -- if we want to make a generic statement about something we will use
; its category as the representation that we pass to the generator. 
; Specifically we will use the category from the perspective of ('qua') 
; a kind, where the subcategories pick out the different ways kinds can
; be expressed: plurals and definites respectively.

(define-category kind
  super-category anchored-in-space)

(define-category set-of-anonymous-individuals  ;; perspective on kind
  super-category kind)

(define-category representative-instance       ;; ditto
  super-category kind)



;;--- particular things

(define-category individual
  super-category anchored-in-space)

(define-category anonymous-instance-of-a-kind  ;; "a dog"
  super-category individual)

(define-category instance-of-a-kind
  super-category individual)

(define-category specific-instance-of-a-kind   ;; "the dog"
  super-category instance-of-a-kind)

(define-category collection  ;;/// is this really parallel? Or is this scheme
  super-category individual) ;; in need of review because of the diverse, ostensibly lexical
                             ;; properties of NP specifiers. See Q&G.


(define-category mass-stuff   ;; honey, salt, sand, water
  super-category individual)

(define-category sample-of-a-kind  ;; an individuated bit of mass stuff: "some honey"
  super-category mass-stuff)

(define-category role ;; 'butcher', 'baker', 'teacher', 'rescuer'
  super-category individual)

(define-category named-instance-of-a-kind
  super-category individual)

(define-category name
  super-category individual)



;;--- Other

(define-category location
  super-category anchored-in-space)

(define-category manner
  super-category operator)





;;--- facets that run in parallel with time-anchored things

; Modality is for this like 'can', 'might', 'perhaps should have', and the like
; Time is to spell out the location of the eventuality/state in time in so far
;   as that's reflected in the surface language. Candidate cases besides past 
;   and ongoing are sources for temporal phrases: 'a moment ago', 'in just a
;   little while'. Note that English doesn't have a future tense -- it has 
;   to be expressed indirectly via a modal or an explicit phrase.

(define-category modality
  super-category operator)

(define-category time
  super-category operator)

(define-category aspect
  super-category operator)

(define-category temporal-qualifier
  ; Constrains the temporal extent of the eventuality
  ; "now", "anymore", "only on Tuesdays"
  super-category time)


;;--- facets for space-anchored things

;; common superc mixin for these two -- it will be either one or the other

(define-category specific      ;; These (and the range of individual types) need
  super-category operator)     ;; to be reviewed w.r.t. their deployment in the
                               ;; specifier table
(define-category non-specific
  super-category operator)



;;--- 'Compounds' -- units that consist of more than one 'basic' unit
;;
;; There is tacit, but operationally-strict rule that the other kinds
;; of expressible-type have realizations that project to single, simple
;; surface phrasal categories. 

(define-category compound-content
  super-category expressible-type)



  


;;--- Rhetorical categories -- effects accomplished -- encoded into msg nodes
;;                             and such to control choices


(define-category acknowledge
  super-category rhetorical)

(define-category elaboration
  super-category rhetorical)

(define-category hedge
  super-category rhetorical)

;(define-category vocative    ;; "Hey you!", "John(, you need to shovel the walk)"
;  super-category speech-act  ;; see GCE #7.39
;;/// The phrase dkm needs is now in dialog-moves so the POS on the comma
;;    comes out right


; 'Stylistic-effect' refers to  things like whether or not you add "both"
; to a two-item conjunction or whether you contract.
;
(define-category stylistic-effect
  super-category rhetorical)



;;--- other subcategories of Operator

; 'Attitude' is  for things like modals or or fixed adjuncts like 
; "I suppose that".  They represent stances or modalities that are being 
; imposed on something.  In the model they behave like operators
;
(define-category attitude
  super-category operator)





;;--------------- ////list of all the categories above -----------

(defparameter *the-expressible-types*
  ;; Actually, this is whole upper model. Have to review the use of the predicate
  ;; expressible-type? to see if that matters.
  (mapcar #'category-named '(direct-expression-of-intent
                             speech-act
                             rhetorical
                               elaboration
                               hedge
                               vocative
                               attitude
                               stylistic-effect
                               dialog-move
                             frame
                             state-of-affairs
                             expressible-type
                               operator
                                 time
                                   ongoing
                                   past
                                 modality
                                 specific
                                 non-specific
                               predication
                               anchored-in-time
                                 situation
                                 eventuality
                                   action-by-an-agent
                                     action-upon-a-patient
                                       agentive-action-with-tacit-result
                               action
                               state
                                 result-of-past-event
                                 state-of-an-individual
                               proposition
                                 assessment
                             quality
                               quality-of
                               specializer 
                               distinguisher
                               quantity
                               quantifier
                             anchored-in-space
                               kind 
                                 set-of-anonymous-individuals 
                                 representative-instance
                               individual 
                                 anonymous-instance-of-a-kind
                                 instance-of-a-kind
                                   specific-instance-of-a-kind
                                 collection
                                 mass-stuff
                                   sample-of-a-kind
                                 role
                                 named-instance-of-a-kind
                                 name
                               location
                             manner
                             )))
|#

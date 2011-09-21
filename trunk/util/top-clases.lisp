(in-namespace top)

;;; the very top level /TOP

(Class Top
  (comment "This is the top of the class lattice in the formal sense.
 It has no associated properties, no inferences follow from it.
 It subsumes all other classes.")
  (restrict val - xsd@string :index))

(Individual Top <null>
  (val "<null>"))


;;; The first level down. The top of the substantive classes

(Class Object
     (subClassOf Top)
  (comment "real, abstract, mental, any kind of object"))
;; subclasses: entity, abstraction, collection, region

(Class Quality
     (subClassOf Top)
  (comment "nominals for percept types like color, units of measure that relate things to non-object concepts"))
;; subclasses: SensoryQuality (color, sound), SocialQuality (angry), units of measure

(Class Relation
     (subClassOf Top)
  (comment "named, objectified kinds of relationships between an object, event etc. and others"))
;;; subclasses: Attribute (of objects), Aspect (of events), Parameter(of actions)
;;; except Attributes are really properties in the OWL sense, so probably nothing really below that.

(Class Relationship
     (subClassOf Top)
  (comment "Instances of Relations"))
;;; subclasses: Property, Predicate, ParamBinder, (data)Record

(Class Action
     (subClassOf Top)
  (restrict actor - Agent)
  (restrict object - Object)
  (restrict effect - Situation)
  (comment "the class of all classes of events"))
;;; subclasses: PhysicalAction, MentalAction, ServiceAction, Process (Procedure is a DesignedProcess)

(Class Event
     (subClassOf Top)
  (restrict eventType (cardinality 1) - Action) ; was Activity
  (comment "instances of Actions"))

;;; subclasses: AtomicEvent ExtendedEvent (as a ProcessInstance)
;;; ltml@Action, ev@TraceElt are AtomicEvent, ev@Trace is an ExtendedEvent

(Class Situation
     (subClassOf Top)
  (restrict resultOf - Event)
  (restrict precededBy (cardinality 1) - Situation)
  (restrict followedBy (maxcardinality 1) - Situation)
  (comment "description of a state of some world (e.g. resulting from an event)"))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; TOP/Quality

;;; A placeholder for the 'objects' that are conceptually mental designators associated with Objects and other things.
;;; that is the range of descriptive properties

(Class Color
  (subClassOf Quality))

(Class Pattern
  (subClassOf Quality)
  (comment "Subclasses of this class deliniate ordering or other kinds of structuring
 criteria that organizes the presentation or processing of the elements of some compound
 class."))
;; Break out StringPattern as a subclass ??

(Class Status
  (comment "class of all names of results in evaluations of functionality or suitability")
  (subClassOf Quality))

(Class UnitOfMeasure
     (subClassOf Quality)
  (comment "Corresponds to a word that names the units in which something
 can be meaured; as in '15 ___ of stuff, e.g. 'feet', "))

(Class Quantity
     (subClassOf Quality) ;; ??
  (comment "Like a number, this is the answer to 'how many'. Linguistically
 it patterns just like a number in its ability to compose with units of
 measure and to act as a determiner, e.g. 'dozen', 'handfull'"))

(Class Measurement
       (subClassOf Quality)
  (restrict measuredIn (cardinality 1) - UnitOfMeasure)
  (restrict quantity (cardinality 1) - Quantity)
  (comment "This captures composites like '10 yards' or '2 months'.
 The quanity property should be an OR with number, which would come down
 to making the restriction a union of the two classes, but we don't have
 the syntax for that yet."))

;; (ddm 8/5/09) You can measure anything, and the act of measuring
;; deliniates an 'amount' of the stuff that you're measuring
;; e,g, "five cups of flour", "(I've only had) one good idea (all morning)"
;; That suggests pushing the restriction all the way up to Object
(Class Amount
       (subClassOf Quality)
  (restrict measurment (cardinality 1) - Measurement)
  (restrict stuff (cardinality 1) - Object)
  (comment "Whenever you make a measurement you are measuring something.
 This class makes that explicit by reifying the 'chunk' or 'deliniation'
 of something that the measurement picks out. It couples the measurement,
 which is an abstract thing, with the thing being measured, which gives
 us a concrete thing that lets us, e.g., make comparisons over time:
 'My Aunt Jean has gotten shorter now that she's in her 90s'. (98 actually)
 Generally speaking Amounts should be interned, Measurements should
 not be."))

(Class SpatialMeasure
      (subClassOf Measurement))

;; For TemporalMeasure see timespace.ltml


(Class Name
    (subClassOf Quality)
  (comment "Parent of subclasses for the names of people, countries, etc.
 and the parts of those names and the relationships and patterns they can
 take on. (Compare the ordering of family name and given name between China
 and the US.)"))

; Names are things. People and other named entities have them. The 'having' is
; a relation, which are usually properties, so this is a set of properties.
; Abbreviations - is, e.g., Dr.' an abbreviation for the word 'Doctor' (which is
; how Sparser's grammar tends to work), or are they alternative names for
; the entity? Going with the entity since that lets the mixin provide both properties.

; 'HasName' is presently taken, and only presumes a string. The class we want
; will have richer value restrictions. {Named, HasAName, NameAndAbbrev}

(Class Abbreviation
    (subClassOf Name)
  (restrict fullName (cardinality 1) - Name))

;; Is the Relation 'abbreviation-of' reasonable to reify, or should that be
;; done with properties and inverse properties?

(Class Named
    (subClassOf Relation)
  (restrict name (cardinality 1) - top@Name :index)
  (restrict abbrev (mincardinality 0) - top@Abbreviation))


;;--- top of identifiers (moved from old TOP.ltml)

(Class Code
       ;; For things that we might otherwise have imagined we could do
       ;; as subclasses of xsd:string except that it wouldn't make sense
       ;; given the rules for OWL (or so Roman points out -- xsd:string being
       ;; a datatype rather than a class). -- comment from 2006, ddm
  (subClassOf Quality)
  (restrict named (cardinality 1) - xsd@string :index))

;; (ddm 8/12/09) I propose we make a pass that merges the use
;; of Code and ID into one class since they are both identified
;; by their string.
;;   Alternatively/preferably, we could flush these two 'top' classes
;; with the mixin relations that have essentially the same effect.

(Class ID
  (comment "Root of all unique indexical naming conventions")
  (subClassOf Quality)
  (restrict value (cardinality 1) - xsd@string :index))

(Class HasStringId
     (subClassOf Quality)
  (restrict id (cardinality 1) - xsd@string :index)
  (comment "Replaces the old use of top@Entity"))

;;; use this as mixin to indicate indexicals
(Class HasName
     (subClassOf Relation)
  (restrict name - xsd@string :index))

(Class HasID
     (subClassOf Relation)
  (restrict id - ID :index))




;; from old TOP (for now)
(Class PersonID
    (subClassOf ID))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Kinds of Object

;;;;;   /TOP/Object/Entity
(Class Entity
  (subClassOf Object))

(Class Agent
  (subClassOf Entity)
  (comment "Actor in an Action"))

(Class PhysicalObject
  (subClassOf Entity HasName)
  (comment "Any entity with mass or energy"))

(Class Indexical
  ;; sublcasses are TemporalIndexical, PersonalIndexical, SpatialIndexical, ...
  (subClassOf Entity HasName)
  (comment "Not to be confused with the properties that uniquely identify
 individuals, an indexical Entity is the denotation of linguistic expressions
 like 'today', 'here', or 'she' that have both an intrinsic meaning in their
 lexical semantics ('here' always picks out a location; 'she' indicates a
 female) and a 'content' that is context dependent. See e.g. plato.stanford.edu/
 entries/indexicals."))


;;;;;;  /TOP/Object/Abstraction

(Class Abstraction
  (subClassOf Object))

(Class Description
  (subClassOf Abstraction)
  (comment "Any information object"))

(Class DimensionedSpace
  (subClassOf Abstraction))

(Class Region
  (restrict boundedPartOf (cardinality 1) - DimensionedSpace)
  (subClassOf Abstraction))

(Class Variable
  (comment "placeholder or role")
  (subClassOf Abstraction))

(Class Role
  (comment "View of an object as its named relation to a complex Action or Event. Placeholder for objects in actions or events")
  (subClassOf Variable))

;;;;;;  /TOP/Object/Abstraction/Collection

(ObjectProperty elt
   (domain Collection))


(Class Collection
   (subClassOf Abstraction)
   (restrict elt ) ; - owl@Thing -- is this = TOP?
   (restrict dataElt - xsd@anyType)
   (comment "May have Non-unique members"))

(Class Set
  (comment "Collection with unique members")
;  (restrict elt) ;; on collection
  (subClassOf Collection))

(Class EmptySet
     (subClassOf Set)
  (restrict elt (cardinality 0)) ;  - owl@Thing
  (restrict dataElt (cardinality 0) - xsd@anyType))

;;; a special case
(Individual EmptySet NullSet)


(Class Ordered ;; was Navigable
  ;; N.b. similar terms are used with the Graph Constraints
      (subClassOf Relation)
  (restrict container (cardinality 1) )
  (restrict previous (cardinality 1) )
  (restrict next (cardinality 1)))

(Class OrderedSet
      (subClassOf Set Ordered)
  (comment "A sequence with unique members"))

(Class Positioned
       (subClassOf Ordered)
  (restrict eltPosition (maxcardinality 1) - xsd@nonNegativeInteger))


(ObjectProperty eltValue (range owl@Thing))

(DatatypeProperty eltDataValue (range xsd@anyType))

(Class HasValue
  ;; the objectValue and dataValue properties are mutually exclusive.
  ;; dataValues are for primitive types and objectValues for OWL/LTML
  ;; objects. [2009/10/07:rpg]
  (restrict objectValue (maxcardinality 1) - owl@Thing)
  (restrict dataValue (maxcardinality 1) - xsd@anyType))

(DatatypeProperty listLength (range xsd@nonNegativeInteger))

(Class List
  (comment "Ordered collection")
  (subClassOf Collection)
  (restrict elt - Positioned)
  ;; if the listLength property is available, then we can soundly reason about
  ;; what elements are and are not part of a list, without appealing to the
  ;; CWA. [2009/10/07:rpg]
  (restrict listLength (maxcardinality 1))
  )

(ObjectProperty eltValue
  (subPropertyOf objectValue))

(DatatypeProperty eltDataValue
  (subPropertyOf dataValue))

;; List elements can either be things with a position, or they can be specifically ListElts
(Class ListElt
     (subClassOf Positioned HasValue)
  ;; or (for backward compatiblity) just use these
  (restrict eltValue  (maxcardinality 1) ) ; - owl@Thing
  (restrict eltDataValue  (maxcardinality 1) - xsd@anyType))

;;;;;; /TOP/Object/Abstraction/Description

(Class Communication
  (subClassOf Description)
  (restrict commSource - Agent) ; was SocialObject
  (restrict commSink - Agent)
  (restrict commObject - InformationObject))


(Class IntentionalObject
  (subClassOf Abstraction Description)
  (restrict intender - Agent)
  (comment "any kind of goal description"))

;;;;;; /TOP/Object/Abstraction/Description/InformationObject

(Class InformationObject
  (subClassOf Description)
  (comment "a realized physical or other manifestation of a Description"))

(Class Descriptor
  (subClassOf InformationObject)
  (comment "any word, label, name or attribute applied to an Object"))

(Class Tuple ;;/////////////////////////////////////////
  (subClassOf InformationObject)
  (comment ""))

;;;;;; /TOP/Object/Abstraction/Description/InformationObject/Data
(Class Data
  (subClassOf InformationObject))

(Class DataRecord
  (subClassOf Data))



;;;;;;  /TOP/Object/Region

;;; a parent or aspect of most (situated) events?
(Class TimeSpaceObject
  (subClassOf Region))
;; Mark -- This idea of mingling space an time at a common root is
;;  Not A Good Thing. It leads to presumptive muddling of the waters.
;;  In ontologist's terms is presupposes the perdurant/endurant, 3D/4D
;;  split in perspective and we don't have the use-cases to justify that yet.
;;  What we want instead is to merge them after they've been independently
;;  articulated. The equivalent of this class should have two properties,
;;  one for the space region and one for the time.
;;    I'd change it, but we should talk.


(Class Time
     (subClassOf top@DimensionedSpace)
  (realization (:kind "time"))
  (comment "Undifferentiated time stuff. The root of all time sorts.
 Not a plausible referent for anything other than the word 'time'."))

;; The subclasses of Time are in time.ltml

(Class Space
     (subClassOf top@DimensionedSpace)
  (realization (:kind "space"))
  (comment "Undifferentiated space stuff. The root of all space sorts.
 Not a plausible referent for anything other than the word 'space'."))

;; The subclasses of Space are in space.ltml


;;; a delineated region in 2d space, possibly temporally bounded
;;; was called Area, but leave that for the measure
(Class TwoDRegion
  (subClassOf TimeSpaceObject))

(Class Place
  (subClassOf TwoDRegion HasName HasID))

;;; a 3d delineated region, not its size measure (Volume)
(Class ThreeDRegion
  (subClassOf TimeSpaceObject))


;;;;;; /TOP/OBJECT/Entity/PhysicalObject  (irrespective of REAL or IMAGINARY)

(Class InanimateObject
  (subClassOf PhysicalObject))
;; Mark -- This set of classes doesn't seem to be coherent. You've got
;; both inanimate and nonliving, and substance doesn't go anywhere (well
;; at least not in this file). What segment of Dolce did this come from?
;; My impression is that this might be aimed at the vase/clay problem, but
;; without carrying over the commentary from there it's impossible to tell.
(Class Substance
  (subClassOf PhysicalObject))

(Class LivingObject
  (disJointWith NonLivingObject)
  (subClassOf PhysicalObject))

(Class NonLivingObject
  (subClassOf PhysicalObject)
  (disJointWith LivingObject))

(Class Plant
  (subClassOf LivingObject))

(Class AnimateObject
  (subClassOf PhysicalObject))

(Class Animal
  (subClassOf LivingObject AnimateObject))

(Class DesignedObject
  (comment "Designed and made by Humans")
  (subClassOf NonLivingObject))

(Class Machine
  (subClassOf AnimateObject DesignedObject))

;;;;;; /TOP/Object/Entity/Agent

(Class SocialAgent
  (subClassOf Agent))

(Class CollectiveAgent
  (subClassOf Agent))

(Class PhysicalAgent
  (subClassOf Agent PhysicalObject))


(Class Person
  (subClassOf PhysicalAgent
              HasID ;; because top@id is occasionally predicated of it (sigh)
              SocialAgent)
  (restrict top@personID (cardinality 1) - top@PersonID :index))


(Class SoftAgent
  (comment "All software services")
  (subClassOf Agent))

(Class Robot
  (subClassOf PhysicalAgent SoftAgent Machine))



;;;;;; /TOP/Relation
;;; names of relationships

(Class Predicate
;;; if using LogicalTerm
;;; don't instantiate here - just define the head atoms as instances of this
;;; but if just slamming to ltml@FunctionTerm, then use it and specialize args to ltml@termArg
  (restrict args (cardinality 1) - List) ; was Tuple. What should it be? mb 8/18
  (subClassOf Relation))

(Class ThreePlacePredicate
     (subClassOf Predicate)
  ;; This feels like going out on a limb a bit, but we we are to be able
  ;; to fill some named variables while leaving others open, then the existing
  ;; function machinery isn't up to the task
  (restrict predicate (cardinality 1) - Relation)
  (restrict subject (cardinality 1) - owl@Thing)
  (restrict object (cardinality 1) - owl@Thing))

(Class OpenPredicate  ;; ?? function-creating mix-in to hold the open variables ?
     (subClassOf Relationship) ;; Function ??
  (restrict relation (cardinality 1) - Predicate)
  ;; this amounts to a wrapper
  (restrict openVariable (mincardinality 1)
            - Property))


;;; the class of all ltml properties (as names)
(Class Property
       (subClassOf Relation))

(Class Attribute
  (restrict attributeOf (cardinality 1) - Object)
  (subClassOf Relation))

;;; redundant with measurement?? -- yes (ddm 8/13/09)
;(Class Measure
;  (comment "e.g. a Distance 'object'")
;  (subClassOf Attribute))

(Class Aspect
  (restrict aspectOf (cardinality 1) - Event)
  (comment "context of an event, e.g. NIGHTTIME ballgame"))

(Class Parameter
  (comment "variablized role in an action or frame")
  (subClassOf Attribute Variable)
  (restrict parameterOf - Action))


;;;;;; /TOP/Relationship
;;; (Class Relation
;;;   (comment "named, objectified kinds of relationships between an object, event etc. and others"))
;;; subclasses: Attribute (of objects), Aspect (of events), Parameter(of actions)
;;; except Attributes are really properties in the OWL sense, so probably nothing really below that.


;;; dont need this if instantiating predicates directly - only if pointing to head (predicate)
(Class LogicalTerm
  (subClassOf Relationship)
  (restrict predicate (cardinality 1) - Predicate)
  (restrict args (cardinality 1) - Tuple))

(Class MeasureWithLargerSmallerGrainSize ;; mixin
  (subClassOf Relationship)
  (restrict larger (cardinality 1) - UnitOfMeasure)
  (restrict smaller (cardinality 1) - UnitOfMeasure)
  (restrict numberOfUnits (cardinality 1) - xsd@nonNegativeInteger)
  (comment "There's a question of what to do when there are several
 ways to divide up a unit. Weeks are problematic since they don't
 fit evenly into any larger unit. If we want to represent several
 subdivisions we need to make this a class and treat it like
 a referenced interface.
   The number of units is the number of the smaller inside the larger."))

;;;;;; /TOP/Action
;;; (Class Action
;;;   (comment "the class of all classes of events"))
;;; subclasses: PhysicalAction, MentalAction, SoftwareAction, Process (Procedure a DesignedProcess)

(Class AtomicAction
  (comment "an indivisible action, not necessarily instaneous but no intermediate states?")
  (subClassOf Action))

(Class PhysicalAction
  (subClassOf Action))

(Class MentalAction
  (subClassOf Action))

(Class Choose
  (subClassOf MentalAction))

(Class SoftwareAction
  (subClassOf Action))


(Class Process
  (comment "Action represented with multiple substeps or punctuated by intermediate states")
  (subClassOf Action)
  (restrict subProcess - Process))

(Class PhysicalProcess
  (subClassOf Process)
  (restrict subProcess - PhysicalProcess))

(Class Procedure
  (subClassOf Action Description))



;;;;;; /TOP/Event
;;; (Class Event
;;;   (comment "instances of Actions"))
;;; subclasses: AtomicEvent ExtendedEvent (as a ProcessInstance)
;;; ltml@Act, ltml@TraceElt are AtomicEvent, ltml@Trace is an ExtendedEvent

;;; do we really want to make this distinction?

(Class AtomicEvent
  (comment "Parent of TraceElt")
  (restrict atTime - ts@TimePoint)
  (subClassOf Event))

(Class ExtendedEvent
  (comment "Parent of Trace")
  (restrict during - ts@TimeInterval)
  (subClassOf Event))

(Class CompositeEvent
  (subClassOf ExtendedEvent List)
  (restrict subEvent - Event))

;;;;;; /TOP/Situation
;;; subclasses TBD


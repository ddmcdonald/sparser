
(in-package :sparser)
(define-category
  accelerate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "accelerate" :etf (svo-passive) :s subject :o object))
(define-category
  acclimate
  :specializes
  perdurant
  :binds
  ((subject endurant) (to endurant))
  :realization
  (:verb "acclimate" :etf (sv) :s subject :to to))
(define-category
  accompany
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "accompany" :etf (svo-passive) :s subject :o object))
(define-category
  accord
  :specializes
  perdurant
  :binds
  ((subject endurant) (to endurant))
  :realization
  (:verb "accord" :etf (sv) :s subject :to to))
(define-category
  achieve
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "achieve" :etf (svo-passive) :s subject :o object))
(define-category
  adapt
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (for endurant)
   (from endurant))
  :realization
  (:verb "adapt" :etf (svo-passive) :s subject :o object :for for
   :from from))
(define-category
  address
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "address" :etf (svo-passive) :s subject :o object))
(define-category
  age
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant) (in endurant))
  :realization
  (:verb "age" :etf (sv) :s subject :of of :in in))
(define-category
  anesthetize
  :specializes
  perdurant
  :binds
  ((subject endurant) (with endurant))
  :realization
  (:verb "anesthetize" :etf (sv) :s subject :with with))
(define-category
  anticipate
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "anticipate" :etf (sv) :s subject))
(define-category
  apply
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (for endurant) (to endurant))
  :realization
  (:verb "apply" :etf (svo-passive) :s subject :o object :for for :to
   to))
(define-category
  appose
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant) (by endurant))
  :realization
  (:verb "appose" :etf (svo-passive) :s subject :o object :to to :by
   by))
(define-category
  approve
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "approve" :etf (svo-passive) :s subject :o object :by by))
(define-category
  arise
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (during endurant)
   (by endurant) (from endurant))
  :realization
  (:verb "arise" :etf (svo-passive) :s subject :o object :during
   during :by by :from from))
(define-category
  attach
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant)
   (with endurant))
  :realization
  (:verb "attach" :etf (svo-passive) :s subject :o object :to to
   :with with))
(define-category
  attempt
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "attempt" :etf (sv) :s subject))
(define-category
  augment
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "augment" :etf (svo-passive) :s subject :o object))
(define-category
  author
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "author" :etf (sv) :s subject :of of))
(define-category
  average
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "average" :etf (sv) :s subject))
(define-category
  avoid
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "avoid" :etf (svo-passive) :s subject :o object))
(define-category
  bandage
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "bandage" :etf (sv) :s subject))
(define-category
  become
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "become" :etf (svo-passive) :s subject :o object))
(define-category
  begin
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "begin" :etf (sv) :s subject))
(define-category
  believe
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "believe" :etf (svo-passive) :s subject :o object))
(define-category
  blockade
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "blockade" :etf (sv) :s subject :of of))
(define-category
  blot
  :specializes
  perdurant
  :binds
  ((subject endurant) (with endurant))
  :realization
  (:verb "blot" :etf (sv) :s subject :with with))
(define-category
  border
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant))
  :realization
  (:verb "border" :etf (sv) :s subject :in in))
(define-category
  bottom
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "bottom" :etf (sv) :s subject))
(define-category
  brain
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "brain" :etf (sv) :s subject :of of))
(define-category
  branch
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "branch" :etf (sv) :s subject :of of))
(define-category
  breach
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "breach" :etf (svo-passive) :s subject :o object))
(define-category
  brief
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "brief" :etf (sv) :s subject))
(define-category
  calculate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant) (by endurant)
   (as endurant) (for endurant))
  :realization
  (:verb "calculate" :etf (svo-passive) :s subject :o object :in in
   :by by :as as :for for))
(define-category
  capture
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant) (by endurant)
   (with endurant))
  :realization
  (:verb "capture" :etf (svo-passive) :s subject :o object :in in :by
   by :with with))
(define-category
  care
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "care" :etf (sv) :s subject :of of))
(define-category
  carry
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "carry" :etf (svo-passive) :s subject :o object))
(define-category
  center
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant) (of endurant))
  :realization
  (:verb "center" :etf (sv) :s subject :for for :of of))
(define-category
  chain
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "chain" :etf (sv) :s subject :of of))
(define-category
  channel
  :specializes
  perdurant
  :binds
  ((subject endurant) (into endurant) (from endurant) (in endurant))
  :realization
  (:verb "channel" :etf (sv) :s subject :into into :from from :in in))
(define-category
  characterize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (as endurant) (in endurant)
   (by endurant))
  :realization
  (:verb "characterize" :etf (svo-passive) :s subject :o object :as
   as :in in :by by))
(define-category
  charge
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "charge" :etf (sv) :s subject))
(define-category
  circle
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "circle" :etf (sv) :s subject))
(define-category
  claim
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "claim" :etf (sv) :s subject))
(define-category
  cleave
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "cleave" :etf (svo-passive) :s subject :o object))
(define-category
  cluster
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "cluster" :etf (svo-passive) :s subject :o object))
(define-category
  code
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "code" :etf (svo-passive) :s subject :o object))
(define-category
  coincide
  :specializes
  perdurant
  :binds
  ((subject endurant) (with endurant))
  :realization
  (:verb "coincide" :etf (sv) :s subject :with with))
(define-category
  colocalize
  :specializes
  perdurant
  :binds
  ((subject endurant) (with endurant))
  :realization
  (:verb "colocalize" :etf (sv) :s subject :with with))
(define-category
  combine
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "combine" :etf (svo-passive) :s subject :o object :with
   with))
(define-category
  come
  :specializes
  perdurant
  :binds
  ((subject endurant) (to endurant) (from endurant))
  :realization
  (:verb "come" :etf (sv) :s subject :to to :from from))
(define-category
  compound
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "compound" :etf (sv) :s subject))
(define-category
  comprise
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (of endurant))
  :realization
  (:verb "comprise" :etf (svo-passive) :s subject :o object :of of))
(define-category
  conceive
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "conceive" :etf (svo-passive) :s subject :o object :by by))
(define-category
  concern
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "concern" :etf (svo-passive) :s subject :o object))
(define-category
  confirm
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "confirm" :etf (svo-passive) :s subject :o object :by by))
(define-category
  conjugate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant))
  :realization
  (:verb "conjugate" :etf (svo-passive) :s subject :o object :to to))
(define-category
  connect
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "connect" :etf (svo-passive) :s subject :o object))
(define-category
  consist
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "consist" :etf (sv) :s subject :of of))
(define-category
  contract
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "contract" :etf (svo-passive) :s subject :o object))
(define-category
  contradict
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "contradict" :etf (svo-passive) :s subject :o object))
(define-category
  coordinate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "coordinate" :etf (svo-passive) :s subject :o object :with
   with))
(define-category
  cord
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant) (of endurant))
  :realization
  (:verb "cord" :etf (sv) :s subject :in in :of of))
(define-category
  correct
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "correct" :etf (svo-passive) :s subject :o object))
(define-category
  correlate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "correlate" :etf (svo-passive) :s subject :o object :with
   with))
(define-category
  count
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (after endurant)
   (with endurant) (in endurant))
  :realization
  (:verb "count" :etf (svo-passive) :s subject :o object :after after
   :with with :in in))
(define-category
  couple
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "couple" :etf (svo-passive) :s subject :o object :with with))
(define-category
  curve
  :specializes
  perdurant
  :binds
  ((subject endurant) (from endurant) (of endurant))
  :realization
  (:verb "curve" :etf (sv) :s subject :from from :of of))
(define-category
  cut
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant) (in endurant))
  :realization
  (:verb "cut" :etf (svo-passive) :s subject :o object :to to :in in))
(define-category
  declare
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "declare" :etf (svo-passive) :s subject :o object))
(define-category
  define
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant) (as endurant))
  :realization
  (:verb "define" :etf (svo-passive) :s subject :o object :by by :as
   as))
(define-category
  demarcate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "demarcate" :etf (svo-passive) :s subject :o object))
(define-category
  deregulate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "deregulate" :etf (svo-passive) :s subject :o object))
(define-category
  derive
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (from endurant))
  :realization
  (:verb "derive" :etf (svo-passive) :s subject :o object :from from))
(define-category
  design
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (toward endurant)
   (into endurant) (by endurant) (against endurant))
  :realization
  (:verb "design" :etf (svo-passive) :s subject :o object :toward
   toward :into into :by by :against against))
(define-category
  differentiate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant)
   (into endurant))
  :realization
  (:verb "differentiate" :etf (svo-passive) :s subject :o object :in
   in :into into))
(define-category
  dish
  :specializes
  perdurant
  :binds
  ((subject endurant) (with endurant))
  :realization
  (:verb "dish" :etf (sv) :s subject :with with))
(define-category
  disorder
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "disorder" :etf (sv) :s subject))
(define-category
  distinguish
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant)
   (between endurant))
  :realization
  (:verb "distinguish" :etf (svo-passive) :s subject :o object :by by
   :between between))
(define-category
  divide
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant)
   (into endurant))
  :realization
  (:verb "divide" :etf (svo-passive) :s subject :o object :by by
   :into into))
(define-category
  donate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "donate" :etf (svo-passive) :s subject :o object :by by))
(define-category
  dose
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "dose" :etf (sv) :s subject :of of))
(define-category
  drop
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant))
  :realization
  (:verb "drop" :etf (sv) :s subject :in in))
(define-category
  dye
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "dye" :etf (sv) :s subject))
(define-category
  emerge
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (as endurant))
  :realization
  (:verb "emerge" :etf (svo-passive) :s subject :o object :as as))
(define-category
  empty
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "empty" :etf (sv) :s subject))
(define-category
  enable
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "enable" :etf (svo-passive) :s subject :o object :by by))
(define-category
  engineer
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (before endurant))
  :realization
  (:verb "engineer" :etf (svo-passive) :s subject :o object :before
   before))
(define-category
  enlarge
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "enlarge" :etf (sv) :s subject))
(define-category
  enrich
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (for endurant)
   (from endurant) (in endurant))
  :realization
  (:verb "enrich" :etf (svo-passive) :s subject :o object :for for
   :from from :in in))
(define-category
  equip
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "equip" :etf (svo-passive) :s subject :o object :with with))
(define-category
  estimate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "estimate" :etf (svo-passive) :s subject :o object))
(define-category
  evaluate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant) (by endurant))
  :realization
  (:verb "evaluate" :etf (svo-passive) :s subject :o object :in in
   :by by))
(define-category
  evoke
  :specializes
  perdurant
  :binds
  ((subject endurant) (by endurant))
  :realization
  (:verb "evoke" :etf (sv) :s subject :by by))
(define-category
  evolve
  :specializes
  perdurant
  :binds
  ((subject endurant) (as endurant) (from endurant))
  :realization
  (:verb "evolve" :etf (sv) :s subject :as as :from from))
(define-category
  exacerbate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "exacerbate" :etf (svo-passive) :s subject :o object :by by))
(define-category
  exact
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "exact" :etf (sv) :s subject))
(define-category
  excise
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "excise" :etf (svo-passive) :s subject :o object))
(define-category
  exclude
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "exclude" :etf (svo-passive) :s subject :o object))
(define-category
  exert
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "exert" :etf (svo-passive) :s subject :o object))
(define-category
  exit
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "exit" :etf (sv) :s subject))
(define-category
  expand
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "expand" :etf (svo-passive) :s subject :o object))
(define-category
  exploit
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "exploit" :etf (sv) :s subject))
(define-category
  explore
  :specializes
  perdurant
  :binds
  ((subject endurant) (about endurant))
  :realization
  (:verb "explore" :etf (sv) :s subject :about about))
(define-category
  expose
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant))
  :realization
  (:verb "expose" :etf (svo-passive) :s subject :o object :to to))
(define-category
  extend
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (into endurant))
  :realization
  (:verb "extend" :etf (svo-passive) :s subject :o object :into into))
(define-category
  extract
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant)
   (from endurant))
  :realization
  (:verb "extract" :etf (svo-passive) :s subject :o object :with with
   :from from))
(define-category
  fabricate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "fabricate" :etf (svo-passive) :s subject :o object))
(define-category
  faint
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "faint" :etf (sv) :s subject))
(define-category
  farm
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "farm" :etf (sv) :s subject))
(define-category
  fast
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "fast" :etf (sv) :s subject))
(define-category
  field
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant) (of endurant))
  :realization
  (:verb "field" :etf (sv) :s subject :for for :of of))
(define-category
  file
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "file" :etf (sv) :s subject))
(define-category
  fill
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "fill" :etf (svo-passive) :s subject :o object :with with))
(define-category
  film
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "film" :etf (sv) :s subject))
(define-category
  filter
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant))
  :realization
  (:verb "filter" :etf (sv) :s subject :for for))
(define-category
  flank
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "flank" :etf (svo-passive) :s subject :o object))
(define-category
  force
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "force" :etf (sv) :s subject))
(define-category
  formulate
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "formulate" :etf (sv) :s subject))
(define-category
  fuse
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant) (with endurant)
   (of endurant))
  :realization
  (:verb "fuse" :etf (svo-passive) :s subject :o object :to to :with
   with :of of))
(define-category
  gain
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "gain" :etf (sv) :s subject :of of))
(define-category
  gate
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "gate" :etf (sv) :s subject))
(define-category
  gel
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant))
  :realization
  (:verb "gel" :etf (sv) :s subject :for for))
(define-category
  gift
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant) (from endurant))
  :realization
  (:verb "gift" :etf (sv) :s subject :of of :from from))
(define-category
  glass
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "glass" :etf (sv) :s subject))
(define-category
  grade
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "grade" :etf (sv) :s subject))
(define-category
  graft
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "graft" :etf (sv) :s subject))
(define-category
  harbor
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "harbor" :etf (svo-passive) :s subject :o object))
(define-category
  harvest
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant)
   (from endurant))
  :realization
  (:verb "harvest" :etf (svo-passive) :s subject :o object :by by
   :from from))
(define-category
  head
  :specializes
  perdurant
  :binds
  ((subject endurant) (to endurant) (of endurant) (toward endurant))
  :realization
  (:verb "head" :etf (sv) :s subject :to to :of of :toward toward))
(define-category
  heat
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "heat" :etf (sv) :s subject))
(define-category
  help
  :specializes
  perdurant
  :binds
  ((subject endurant) (with endurant) (in endurant))
  :realization
  (:verb "help" :etf (sv) :s subject :with with :in in))
(define-category
  highlight
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant))
  :realization
  (:verb "highlight" :etf (svo-passive) :s subject :o object :in in))
(define-category
  hold
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (at endurant))
  :realization
  (:verb "hold" :etf (svo-passive) :s subject :o object :at at))
(define-category
  ignal
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "ignal" :etf (sv) :s subject))
(define-category
  image
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant) (from endurant) (of endurant))
  :realization
  (:verb "image" :etf (sv) :s subject :in in :from from :of of))
(define-category
  immobilize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant)
   (with endurant))
  :realization
  (:verb "immobilize" :etf (svo-passive) :s subject :o object :in in
   :with with))
(define-category
  immortalize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "immortalize" :etf (svo-passive) :s subject :o object))
(define-category
  implicate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant))
  :realization
  (:verb "implicate" :etf (svo-passive) :s subject :o object :in in))
(define-category
  imply
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "imply" :etf (sv) :s subject))
(define-category
  include
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant))
  :realization
  (:verb "include" :etf (svo-passive) :s subject :o object :in in))
(define-category
  infect
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "infect" :etf (svo-passive) :s subject :o object :with with))
(define-category
  infiltrate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "infiltrate" :etf (svo-passive) :s subject :o object))
(define-category
  inject
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant) (into endurant)
   (at endurant) (with endurant))
  :realization
  (:verb "inject" :etf (svo-passive) :s subject :o object :in in
   :into into :at at :with with))
(define-category
  inset
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "inset" :etf (sv) :s subject))
(define-category
  integrate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant)
   (into endurant))
  :realization
  (:verb "integrate" :etf (svo-passive) :s subject :o object :with
   with :into into))
(define-category
  interest
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant) (in endurant))
  :realization
  (:verb "interest" :etf (sv) :s subject :for for :in in))
(define-category
  interrupt
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "interrupt" :etf (svo-passive) :s subject :o object :by by))
(define-category
  introduce
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant)
   (into endurant))
  :realization
  (:verb "introduce" :etf (svo-passive) :s subject :o object :in in
   :into into))
(define-category
  invade
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (into endurant)
   (through endurant))
  :realization
  (:verb "invade" :etf (svo-passive) :s subject :o object :into into
   :through through))
(define-category
  invoke
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "invoke" :etf (svo-passive) :s subject :o object))
(define-category
  isolate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant) (for endurant)
   (in endurant) (from endurant))
  :realization
  (:verb "isolate" :etf (svo-passive) :s subject :o object :by by
   :for for :in in :from from))
(define-category
  issue
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "issue" :etf (sv) :s subject))
(define-category
  judge
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "judge" :etf (svo-passive) :s subject :o object :by by))
(define-category
  kill
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "kill" :etf (svo-passive) :s subject :o object :by by))
(define-category
  layer
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "layer" :etf (sv) :s subject :of of))
(define-category
  learn
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "learn" :etf (svo-passive) :s subject :o object))
(define-category
  leave
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "leave" :etf (svo-passive) :s subject :o object))
(define-category
  load
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (onto endurant)
   (with endurant))
  :realization
  (:verb "load" :etf (svo-passive) :s subject :o object :onto onto
   :with with))
(define-category
  machine
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "machine" :etf (sv) :s subject))
(define-category
  magnify
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "magnify" :etf (svo-passive) :s subject :o object))
(define-category
  make
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant) (for endurant)
   (from endurant) (by endurant))
  :realization
  (:verb "make" :etf (svo-passive) :s subject :o object :to to :for
   for :from from :by by))
(define-category
  manifest
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "manifest" :etf (svo-passive) :s subject :o object))
(define-category
  manipulate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "manipulate" :etf (svo-passive) :s subject :o object))
(define-category
  mature
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "mature" :etf (sv) :s subject))
(define-category
  mean
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "mean" :etf (svo-passive) :s subject :o object))
(define-category
  mention
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "mention" :etf (svo-passive) :s subject :o object))
(define-category
  mimick
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "mimick" :etf (svo-passive) :s subject :o object))
(define-category
  mix
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "mix" :etf (svo-passive) :s subject :o object :with with))
(define-category
  mock
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "mock" :etf (sv) :s subject))
(define-category
  motor
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant) (in endurant))
  :realization
  (:verb "motor" :etf (sv) :s subject :for for :in in))
(define-category
  mount
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (onto endurant)
   (with endurant))
  :realization
  (:verb "mount" :etf (svo-passive) :s subject :o object :onto onto
   :with with))
(define-category
  move
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (from endurant)
   (with endurant) (in endurant))
  :realization
  (:verb "move" :etf (svo-passive) :s subject :o object :from from
   :with with :in in))
(define-category
  neck
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "neck" :etf (sv) :s subject))
(define-category
  normalize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (for endurant) (to endurant))
  :realization
  (:verb "normalize" :etf (svo-passive) :s subject :o object :for for
   :to to))
(define-category
  note
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "note" :etf (svo-passive) :s subject :o object :with with))
(define-category
  occlude
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "occlude" :etf (svo-passive) :s subject :o object :by by))
(define-category
  oil
  :specializes
  perdurant
  :binds
  ((subject endurant) (from endurant))
  :realization
  (:verb "oil" :etf (sv) :s subject :from from))
(define-category
  oppose
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "oppose" :etf (svo-passive) :s subject :o object))
(define-category
  orchestrate
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "orchestrate" :etf (sv) :s subject))
(define-category
  oxygenate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "oxygenate" :etf (svo-passive) :s subject :o object))
(define-category
  pack
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "pack" :etf (svo-passive) :s subject :o object))
(define-category
  pad
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "pad" :etf (sv) :s subject :of of))
(define-category
  pair
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant)
   (in endurant))
  :realization
  (:verb "pair" :etf (svo-passive) :s subject :o object :with with
   :in in))
(define-category
  paper
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "paper" :etf (sv) :s subject))
(define-category
  participate
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant))
  :realization
  (:verb "participate" :etf (sv) :s subject :in in))
(define-category
  patch
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "patch" :etf (sv) :s subject))
(define-category
  pattern
  :specializes
  perdurant
  :binds
  ((subject endurant) (within endurant) (for endurant) (in endurant)
   (of endurant))
  :realization
  (:verb "pattern" :etf (sv) :s subject :within within :for for :in
   in :of of))
(define-category
  pause
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "pause" :etf (sv) :s subject))
(define-category
  pearl
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "pearl" :etf (sv) :s subject))
(define-category
  perfuse
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (at endurant)
   (throughout endurant))
  :realization
  (:verb "perfuse" :etf (svo-passive) :s subject :o object :at at
   :throughout throughout))
(define-category
  permeate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "permeate" :etf (svo-passive) :s subject :o object))
(define-category
  permit
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant))
  :realization
  (:verb "permit" :etf (svo-passive) :s subject :o object :in in))
(define-category
  phase
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "phase" :etf (sv) :s subject))
(define-category
  photoconvert
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "photoconvert" :etf (sv) :s subject))
(define-category
  piece
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "piece" :etf (sv) :s subject :of of))
(define-category
  plane
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "plane" :etf (sv) :s subject))
(define-category
  plate
  :specializes
  perdurant
  :binds
  ((subject endurant) (without endurant) (with endurant)
   (for endurant) (in endurant))
  :realization
  (:verb "plate" :etf (sv) :s subject :without without :with with
   :for for :in in))
(define-category
  play
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant))
  :realization
  (:verb "play" :etf (svo-passive) :s subject :o object :in in))
(define-category
  pool
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "pool" :etf (sv) :s subject :of of))
(define-category
  populate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "populate" :etf (svo-passive) :s subject :o object :with
   with))
(define-category
  possess
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "possess" :etf (svo-passive) :s subject :o object))
(define-category
  pour
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "pour" :etf (svo-passive) :s subject :o object))
(define-category
  power
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "power" :etf (sv) :s subject))
(define-category
  preclude
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "preclude" :etf (svo-passive) :s subject :o object))
(define-category
  predominate
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant))
  :realization
  (:verb "predominate" :etf (sv) :s subject :in in))
(define-category
  prepare
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (for endurant) (by endurant)
   (from endurant))
  :realization
  (:verb "prepare" :etf (svo-passive) :s subject :o object :for for
   :by by :from from))
(define-category
  produce
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (from endurant))
  :realization
  (:verb "produce" :etf (svo-passive) :s subject :o object :from
   from))
(define-category
  progress
  :specializes
  perdurant
  :binds
  ((subject endurant) (to endurant))
  :realization
  (:verb "progress" :etf (sv) :s subject :to to))
(define-category
  project
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "project" :etf (sv) :s subject :of of))
(define-category
  publish
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "publish" :etf (svo-passive) :s subject :o object))
(define-category
  pulse
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "pulse" :etf (sv) :s subject))
(define-category
  put
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (under endurant))
  :realization
  (:verb "put" :etf (svo-passive) :s subject :o object :under under))
(define-category
  quadruplicate
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "quadruplicate" :etf (sv) :s subject))
(define-category
  quantify
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (on endurant) (at endurant)
   (from endurant) (in endurant) (after endurant) (by endurant))
  :realization
  (:verb "quantify" :etf (svo-passive) :s subject :o object :on on
   :at at :from from :in in :after after :by by))
(define-category
  quantitate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "quantitate" :etf (svo-passive) :s subject :o object))
(define-category
  reach
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "reach" :etf (svo-passive) :s subject :o object))
(define-category
  record
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "record" :etf (svo-passive) :s subject :o object))
(define-category
  recover
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (before endurant)
   (on endurant) (by endurant))
  :realization
  (:verb "recover" :etf (svo-passive) :s subject :o object :before
   before :on on :by by))
(define-category
  recycle
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant))
  :realization
  (:verb "recycle" :etf (svo-passive) :s subject :o object :to to))
(define-category
  refer
  :specializes
  perdurant
  :binds
  ((subject endurant) (to endurant))
  :realization
  (:verb "refer" :etf (sv) :s subject :to to))
(define-category
  render
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "render" :etf (svo-passive) :s subject :o object))
(define-category
  repeat
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "repeat" :etf (svo-passive) :s subject :o object))
(define-category
  reproduce
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "reproduce" :etf (svo-passive) :s subject :o object))
(define-category
  request
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "request" :etf (sv) :s subject))
(define-category
  rescue
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant))
  :realization
  (:verb "rescue" :etf (svo-passive) :s subject :o object :by by))
(define-category
  research
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "research" :etf (sv) :s subject))
(define-category
  respond
  :specializes
  perdurant
  :binds
  ((subject endurant) (upon endurant) (to endurant))
  :realization
  (:verb "respond" :etf (sv) :s subject :upon upon :to to))
(define-category
  restore
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant) (by endurant))
  :realization
  (:verb "restore" :etf (svo-passive) :s subject :o object :to to :by
   by))
(define-category
  restrict
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant))
  :realization
  (:verb "restrict" :etf (svo-passive) :s subject :o object :to to))
(define-category
  resume
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "resume" :etf (sv) :s subject))
(define-category
  retain
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (for endurant))
  :realization
  (:verb "retain" :etf (svo-passive) :s subject :o object :for for))
(define-category
  retrograde
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "retrograde" :etf (sv) :s subject))
(define-category
  reverse
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (in endurant) (by endurant))
  :realization
  (:verb "reverse" :etf (svo-passive) :s subject :o object :in in :by
   by))
(define-category
  review
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "review" :etf (sv) :s subject :of of))
(define-category
  risk
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant) (of endurant))
  :realization
  (:verb "risk" :etf (sv) :s subject :for for :of of))
(define-category
  room
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "room" :etf (sv) :s subject))
(define-category
  rule
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "rule" :etf (sv) :s subject))
(define-category
  sacrifice
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "sacrifice" :etf (svo-passive) :s subject :o object))
(define-category
  saturate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "saturate" :etf (svo-passive) :s subject :o object))
(define-category
  scan
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "scan" :etf (sv) :s subject :of of))
(define-category
  score
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "score" :etf (sv) :s subject))
(define-category
  scrape
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "scrape" :etf (sv) :s subject))
(define-category
  seed
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (onto endurant) (on endurant)
   (into endurant) (in endurant))
  :realization
  (:verb "seed" :etf (svo-passive) :s subject :o object :onto onto
   :on on :into into :in in))
(define-category
  seek
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "seek" :etf (sv) :s subject))
(define-category
  send
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant) (in endurant))
  :realization
  (:verb "send" :etf (svo-passive) :s subject :o object :to to :in
   in))
(define-category
  sensitize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "sensitize" :etf (svo-passive) :s subject :o object))
(define-category
  separate
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (from endurant))
  :realization
  (:verb "separate" :etf (svo-passive) :s subject :o object :from
   from))
(define-category
  shed
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (from endurant)
   (of endurant))
  :realization
  (:verb "shed" :etf (svo-passive) :s subject :o object :from from
   :of of))
(define-category
  shift
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "shift" :etf (svo-passive) :s subject :o object))
(define-category
  shock
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "shock" :etf (sv) :s subject :of of))
(define-category
  silence
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (of endurant) (in endurant))
  :realization
  (:verb "silence" :etf (svo-passive) :s subject :o object :of of :in
   in))
(define-category
  skin
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "skin" :etf (sv) :s subject))
(define-category
  slice
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant) (with endurant) (from endurant))
  :realization
  (:verb "slice" :etf (sv) :s subject :of of :with with :from from))
(define-category
  spin
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "spin" :etf (sv) :s subject))
(define-category
  splice
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (into endurant)
   (of endurant))
  :realization
  (:verb "splice" :etf (svo-passive) :s subject :o object :into into
   :of of))
(define-category
  spread
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "spread" :etf (sv) :s subject :of of))
(define-category
  square
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "square" :etf (sv) :s subject))
(define-category
  stack
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "stack" :etf (sv) :s subject :of of))
(define-category
  stage
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant) (of endurant))
  :realization
  (:verb "stage" :etf (sv) :s subject :in in :of of))
(define-category
  stain
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (to endurant) (at endurant)
   (for endurant) (from endurant) (in endurant) (of endurant)
   (with endurant))
  :realization
  (:verb "stain" :etf (svo-passive) :s subject :o object :to to :at
   at :for for :from from :in in :of of :with with))
(define-category
  start
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant))
  :realization
  (:verb "start" :etf (sv) :s subject :for for))
(define-category
  steer
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "steer" :etf (svo-passive) :s subject :o object))
(define-category
  stop
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "stop" :etf (sv) :s subject))
(define-category
  strain
  :specializes
  perdurant
  :binds
  ((subject endurant) (by endurant) (at endurant))
  :realization
  (:verb "strain" :etf (sv) :s subject :by by :at at))
(define-category
  strand
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "strand" :etf (svo-passive) :s subject :o object))
(define-category
  stratify
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "stratify" :etf (svo-passive) :s subject :o object))
(define-category
  structure
  :specializes
  perdurant
  :binds
  ((subject endurant) (at endurant) (in endurant) (of endurant))
  :realization
  (:verb "structure" :etf (sv) :s subject :at at :in in :of of))
(define-category
  submerge
  :specializes
  perdurant
  :binds
  ((subject endurant) (for endurant) (in endurant))
  :realization
  (:verb "submerge" :etf (sv) :s subject :for for :in in))
(define-category
  supplement
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant))
  :realization
  (:verb "supplement" :etf (svo-passive) :s subject :o object :with
   with))
(define-category
  surround
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "surround" :etf (svo-passive) :s subject :o object))
(define-category
  survey
  :specializes
  perdurant
  :binds
  ((subject endurant) (of endurant))
  :realization
  (:verb "survey" :etf (sv) :s subject :of of))
(define-category
  synchronize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "synchronize" :etf (svo-passive) :s subject :o object))
(define-category
  synthesize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (by endurant) (as endurant))
  :realization
  (:verb "synthesize" :etf (svo-passive) :s subject :o object :by by
   :as as))
(define-category
  tail
  :specializes
  perdurant
  :binds
  ((subject endurant) (toward endurant) (in endurant) (of endurant))
  :realization
  (:verb "tail" :etf (sv) :s subject :toward toward :in in :of of))
(define-category
  take
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (with endurant)
   (of endurant))
  :realization
  (:verb "take" :etf (svo-passive) :s subject :o object :with with
   :of of))
(define-category
  tool
  :specializes
  perdurant
  :binds
  ((subject endurant) (in endurant))
  :realization
  (:verb "tool" :etf (sv) :s subject :in in))
(define-category
  total
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "total" :etf (sv) :s subject))
(define-category
  traffick
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (between endurant)
   (to endurant))
  :realization
  (:verb "traffick" :etf (svo-passive) :s subject :o object :between
   between :to to))
(define-category
  transmit
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "transmit" :etf (svo-passive) :s subject :o object))
(define-category
  transplant
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant) (at endurant) (to endurant)
   (onto endurant))
  :realization
  (:verb "transplant" :etf (svo-passive) :s subject :o object :at at
   :to to :onto onto))
(define-category
  utilize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "utilize" :etf (svo-passive) :s subject :o object))
(define-category
  visualize
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "visualize" :etf (svo-passive) :s subject :o object))
(define-category
  wound
  :specializes
  perdurant
  :binds
  ((subject endurant))
  :realization
  (:verb "wound" :etf (sv) :s subject))
(define-category
  write
  :specializes
  perdurant
  :binds
  ((subject endurant) (object endurant))
  :realization
  (:verb "write" :etf (svo-passive) :s subject :o object))
=======
(define-category accelerate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "accelerate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category acclimate :specializes biological
    :binds
    ((subject biological)
     (to biological)) 
    :realization 
      (:verb "acclimate"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category accompany :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "accompany"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category accord :specializes biological
    :binds
    ((subject biological)
     (to biological)) 
    :realization 
      (:verb "accord"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category account :specializes biological
    :binds
    ((subject biological)
     (for biological)) 
    :realization 
      (:verb "account"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category achieve :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "achieve"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category adapt :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)
     (from biological)) 
    :realization 
      (:verb "adapt"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :FROM FROM))

(define-category add :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)) 
    :realization 
      (:verb "add"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category address :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "address"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category advance :specializes biological
    :binds
    ((subject biological)
     (toward biological)
     (in biological)) 
    :realization 
      (:verb "advance"
      :ETF (sv)
      :S SUBJECT
      :TOWARD TOWARD
      :IN IN))

(define-category age :specializes biological
    :binds
    ((subject biological)
     (of biological)
     (in biological)) 
    :realization 
      (:verb "age"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :IN IN))

(define-category anesthetize :specializes biological
    :binds
    ((subject biological)
     (with biological)) 
    :realization 
      (:verb "anesthetize"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category anticipate :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "anticipate"
      :ETF (sv)
      :S SUBJECT))

(define-category apply :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)
     (to biological)) 
    :realization 
      (:verb "apply"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :TO TO))

(define-category appose :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (by biological)) 
    :realization 
      (:verb "appose"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :BY BY))

(define-category approve :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "approve"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category arise :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (during biological)
     (by biological)
     (from biological)) 
    :realization 
      (:verb "arise"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :DURING DURING
      :BY BY
      :FROM FROM))

(define-category attach :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (with biological)) 
    :realization 
      (:verb "attach"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :WITH WITH))

(define-category attempt :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "attempt"
      :ETF (sv)
      :S SUBJECT))

(define-category augment :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "augment"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category author :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "author"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category average :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "average"
      :ETF (sv)
      :S SUBJECT))

(define-category avoid :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "avoid"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category back :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "back"
      :ETF (sv)
      :S SUBJECT))

(define-category bandage :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "bandage"
      :ETF (sv)
      :S SUBJECT))

(define-category become :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "become"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category begin :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "begin"
      :ETF (sv)
      :S SUBJECT))

(define-category believe :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "believe"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category blockade :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "blockade"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category blot :specializes biological
    :binds
    ((subject biological)
     (with biological)) 
    :realization 
      (:verb "blot"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category border :specializes biological
    :binds
    ((subject biological)
     (in biological)) 
    :realization 
      (:verb "border"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category bottom :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "bottom"
      :ETF (sv)
      :S SUBJECT))

(define-category brain :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "brain"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category branch :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "branch"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category breach :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "breach"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category brief :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "brief"
      :ETF (sv)
      :S SUBJECT))

(define-category calculate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (by biological)
     (as biological)
     (for biological)) 
    :realization 
      (:verb "calculate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY
      :AS AS
      :FOR FOR))

(define-category capture :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (by biological)
     (with biological)) 
    :realization 
      (:verb "capture"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY
      :WITH WITH))

(define-category care :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "care"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category carry :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "carry"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category case :specializes biological
    :binds
    ((subject biological)
     (of biological)
     (in biological)) 
    :realization 
      (:verb "case"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :IN IN))

(define-category center :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (of biological)) 
    :realization 
      (:verb "center"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category chain :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "chain"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category change :specializes biological
    :binds
    ((subject biological)
     (during biological)
     (in biological)) 
    :realization 
      (:verb "change"
      :ETF (sv)
      :S SUBJECT
      :DURING DURING
      :IN IN))

(define-category channel :specializes biological
    :binds
    ((subject biological)
     (into biological)
     (from biological)
     (in biological)) 
    :realization 
      (:verb "channel"
      :ETF (sv)
      :S SUBJECT
      :INTO INTO
      :FROM FROM
      :IN IN))

(define-category characterize :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (as biological)
     (in biological)
     (by biological)) 
    :realization 
      (:verb "characterize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AS AS
      :IN IN
      :BY BY))

(define-category charge :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "charge"
      :ETF (sv)
      :S SUBJECT))

(define-category circle :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "circle"
      :ETF (sv)
      :S SUBJECT))

(define-category claim :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "claim"
      :ETF (sv)
      :S SUBJECT))

(define-category cleave :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "cleave"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category cluster :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "cluster"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category code :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "code"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category coincide :specializes biological
    :binds
    ((subject biological)
     (with biological)) 
    :realization 
      (:verb "coincide"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category colocalize :specializes biological
    :binds
    ((subject biological)
     (with biological)) 
    :realization 
      (:verb "colocalize"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category combine :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "combine"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category come :specializes biological
    :binds
    ((subject biological)
     (to biological)
     (from biological)) 
    :realization 
      (:verb "come"
      :ETF (sv)
      :S SUBJECT
      :TO TO
      :FROM FROM))

(define-category compound :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "compound"
      :ETF (sv)
      :S SUBJECT))

(define-category comprise :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (of biological)) 
    :realization 
      (:verb "comprise"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :OF OF))

(define-category conceive :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "conceive"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category concern :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "concern"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category concert :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "concert"
      :ETF (sv)
      :S SUBJECT))

(define-category condition :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (of biological)) 
    :realization 
      (:verb "condition"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category confirm :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "confirm"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category conjugate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)) 
    :realization 
      (:verb "conjugate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category connect :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "connect"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category consist :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "consist"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category contact :specializes biological
    :binds
    ((subject biological)
     (between biological)) 
    :realization 
      (:verb "contact"
      :ETF (sv)
      :S SUBJECT
      :BETWEEN BETWEEN))

(define-category contract :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "contract"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category contradict :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "contradict"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category convert :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (from biological)
     (to biological)) 
    :realization 
      (:verb "convert"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM
      :TO TO))

(define-category coordinate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "coordinate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category cord :specializes biological
    :binds
    ((subject biological)
     (in biological)
     (of biological)) 
    :realization 
      (:verb "cord"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :OF OF))

(define-category correct :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "correct"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category correlate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "correlate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category count :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (after biological)
     (with biological)
     (in biological)) 
    :realization 
      (:verb "count"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AFTER AFTER
      :WITH WITH
      :IN IN))

(define-category couple :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "couple"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category course :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "course"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category curve :specializes biological
    :binds
    ((subject biological)
     (from biological)
     (of biological)) 
    :realization 
      (:verb "curve"
      :ETF (sv)
      :S SUBJECT
      :FROM FROM
      :OF OF))

(define-category cut :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (in biological)) 
    :realization 
      (:verb "cut"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :IN IN))

(define-category declare :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "declare"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category define :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (as biological)) 
    :realization 
      (:verb "define"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :AS AS))

(define-category delete :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "delete"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category demarcate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "demarcate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category deregulate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "deregulate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category derive :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (from biological)) 
    :realization 
      (:verb "derive"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM))

(define-category design :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (toward biological)
     (into biological)
     (by biological)
     (against biological)) 
    :realization 
      (:verb "design"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TOWARD TOWARD
      :INTO INTO
      :BY BY
      :AGAINST AGAINST))

(define-category detail :specializes biological
    :binds
    ((subject biological)
     (about biological)
     (of biological)) 
    :realization 
      (:verb "detail"
      :ETF (sv)
      :S SUBJECT
      :ABOUT ABOUT
      :OF OF))

(define-category differentiate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (into biological)) 
    :realization 
      (:verb "differentiate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :INTO INTO))

(define-category direct :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (toward biological)
     (against biological)) 
    :realization 
      (:verb "direct"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :TOWARD TOWARD
      :AGAINST AGAINST))

(define-category dish :specializes biological
    :binds
    ((subject biological)
     (with biological)) 
    :realization 
      (:verb "dish"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category disorder :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "disorder"
      :ETF (sv)
      :S SUBJECT))

(define-category distinguish :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (between biological)) 
    :realization 
      (:verb "distinguish"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :BETWEEN BETWEEN))

(define-category divide :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (into biological)) 
    :realization 
      (:verb "divide"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :INTO INTO))

(define-category donate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "donate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category dose :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "dose"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category drop :specializes biological
    :binds
    ((subject biological)
     (in biological)) 
    :realization 
      (:verb "drop"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category dry :specializes biological
    :binds
    ((subject biological)
     (at biological)) 
    :realization 
      (:verb "dry"
      :ETF (sv)
      :S SUBJECT
      :AT AT))

(define-category dye :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "dye"
      :ETF (sv)
      :S SUBJECT))

(define-category edge :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "edge"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category emerge :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (as biological)) 
    :realization 
      (:verb "emerge"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AS AS))

(define-category empty :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "empty"
      :ETF (sv)
      :S SUBJECT))

(define-category enable :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "enable"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category engineer :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (before biological)) 
    :realization 
      (:verb "engineer"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BEFORE BEFORE))

(define-category enlarge :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "enlarge"
      :ETF (sv)
      :S SUBJECT))

(define-category enrich :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)
     (from biological)
     (in biological)) 
    :realization 
      (:verb "enrich"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :FROM FROM
      :IN IN))

(define-category equip :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "equip"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category estimate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "estimate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category evaluate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (by biological)) 
    :realization 
      (:verb "evaluate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY))

(define-category evidence :specializes biological
    :binds
    ((subject biological)
     (of biological)
     (for biological)) 
    :realization 
      (:verb "evidence"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :FOR FOR))

(define-category evoke :specializes biological
    :binds
    ((subject biological)
     (by biological)) 
    :realization 
      (:verb "evoke"
      :ETF (sv)
      :S SUBJECT
      :BY BY))

(define-category evolve :specializes biological
    :binds
    ((subject biological)
     (as biological)
     (from biological)) 
    :realization 
      (:verb "evolve"
      :ETF (sv)
      :S SUBJECT
      :AS AS
      :FROM FROM))

(define-category exacerbate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "exacerbate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category exact :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "exact"
      :ETF (sv)
      :S SUBJECT))

(define-category excise :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "excise"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exclude :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "exclude"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exert :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "exert"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exit :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "exit"
      :ETF (sv)
      :S SUBJECT))

(define-category expand :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "expand"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category exploit :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "exploit"
      :ETF (sv)
      :S SUBJECT))

(define-category explore :specializes biological
    :binds
    ((subject biological)
     (if biological)
     (about biological)) 
    :realization 
      (:verb "explore"
      :ETF (sv)
      :S SUBJECT
      :IF IF
      :ABOUT ABOUT))

(define-category expose :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)) 
    :realization 
      (:verb "expose"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category extend :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (into biological)) 
    :realization 
      (:verb "extend"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :INTO INTO))

(define-category extract :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)
     (from biological)) 
    :realization 
      (:verb "extract"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :FROM FROM))

(define-category fabricate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "fabricate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category facilitate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "facilitate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category faint :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "faint"
      :ETF (sv)
      :S SUBJECT))

(define-category farm :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "farm"
      :ETF (sv)
      :S SUBJECT))

(define-category fast :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "fast"
      :ETF (sv)
      :S SUBJECT))

(define-category fat :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "fat"
      :ETF (sv)
      :S SUBJECT))

(define-category field :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (of biological)) 
    :realization 
      (:verb "field"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category file :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "file"
      :ETF (sv)
      :S SUBJECT))

(define-category fill :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "fill"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category film :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "film"
      :ETF (sv)
      :S SUBJECT))

(define-category filter :specializes biological
    :binds
    ((subject biological)
     (for biological)) 
    :realization 
      (:verb "filter"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category flank :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "flank"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category fold :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "fold"
      :ETF (sv)
      :S SUBJECT))

(define-category force :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "force"
      :ETF (sv)
      :S SUBJECT))

(define-category form :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)
     (by biological)
     (from biological)) 
    :realization 
      (:verb "form"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :BY BY
      :FROM FROM))

(define-category formulate :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "formulate"
      :ETF (sv)
      :S SUBJECT))

(define-category front :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "front"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category function :specializes biological
    :binds
    ((subject biological)
     (during biological)
     (to biological)
     (with biological)
     (at biological)
     (through biological)
     (for biological)
     (as biological)
     (before biological)
     (of biological)
     (in biological)) 
    :realization 
      (:verb "function"
      :ETF (sv)
      :S SUBJECT
      :DURING DURING
      :TO TO
      :WITH WITH
      :AT AT
      :THROUGH THROUGH
      :FOR FOR
      :AS AS
      :BEFORE BEFORE
      :OF OF
      :IN IN))

(define-category fuse :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (with biological)
     (of biological)) 
    :realization 
      (:verb "fuse"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :WITH WITH
      :OF OF))

(define-category gain :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "gain"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category gate :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "gate"
      :ETF (sv)
      :S SUBJECT))

(define-category gel :specializes biological
    :binds
    ((subject biological)
     (for biological)) 
    :realization 
      (:verb "gel"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category gift :specializes biological
    :binds
    ((subject biological)
     (of biological)
     (from biological)) 
    :realization 
      (:verb "gift"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :FROM FROM))

(define-category glass :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "glass"
      :ETF (sv)
      :S SUBJECT))

(define-category grade :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "grade"
      :ETF (sv)
      :S SUBJECT))

(define-category graft :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "graft"
      :ETF (sv)
      :S SUBJECT))

(define-category harbor :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "harbor"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category harvest :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (from biological)) 
    :realization 
      (:verb "harvest"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :FROM FROM))

(define-category head :specializes biological
    :binds
    ((subject biological)
     (to biological)
     (of biological)
     (toward biological)) 
    :realization 
      (:verb "head"
      :ETF (sv)
      :S SUBJECT
      :TO TO
      :OF OF
      :TOWARD TOWARD))

(define-category heat :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "heat"
      :ETF (sv)
      :S SUBJECT))

(define-category help :specializes biological
    :binds
    ((subject biological)
     (with biological)
     (in biological)) 
    :realization 
      (:verb "help"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH
      :IN IN))

(define-category highlight :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)) 
    :realization 
      (:verb "highlight"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category hold :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (at biological)) 
    :realization 
      (:verb "hold"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT))

(define-category ice :specializes biological
    :binds
    ((subject biological)
     (for biological)) 
    :realization 
      (:verb "ice"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category ignal :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "ignal"
      :ETF (sv)
      :S SUBJECT))

(define-category image :specializes biological
    :binds
    ((subject biological)
     (in biological)
     (from biological)
     (of biological)) 
    :realization 
      (:verb "image"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :FROM FROM
      :OF OF))

(define-category immobilize :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (with biological)) 
    :realization 
      (:verb "immobilize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :WITH WITH))

(define-category immortalize :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "immortalize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category implicate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)) 
    :realization 
      (:verb "implicate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category imply :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "imply"
      :ETF (sv)
      :S SUBJECT))

(define-category include :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)) 
    :realization 
      (:verb "include"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category infect :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "infect"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category infiltrate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "infiltrate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category initiate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (as biological)
     (at biological)
     (with biological)) 
    :realization 
      (:verb "initiate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AS AS
      :AT AT
      :WITH WITH))

(define-category inject :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (into biological)
     (at biological)
     (with biological)) 
    :realization 
      (:verb "inject"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :INTO INTO
      :AT AT
      :WITH WITH))

(define-category insert :specializes biological
    :binds
    ((subject biological)
     (in biological)) 
    :realization 
      (:verb "insert"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category inset :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "inset"
      :ETF (sv)
      :S SUBJECT))

(define-category integrate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)
     (into biological)) 
    :realization 
      (:verb "integrate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :INTO INTO))

(define-category interest :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (in biological)) 
    :realization 
      (:verb "interest"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :IN IN))

(define-category internalize :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (via biological)) 
    :realization 
      (:verb "internalize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :VIA VIA))

(define-category interrupt :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "interrupt"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category introduce :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (into biological)) 
    :realization 
      (:verb "introduce"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :INTO INTO))

(define-category invade :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (into biological)
     (through biological)) 
    :realization 
      (:verb "invade"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :INTO INTO
      :THROUGH THROUGH))

(define-category invoke :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "invoke"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category isolate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (for biological)
     (in biological)
     (from biological)) 
    :realization 
      (:verb "isolate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :FOR FOR
      :IN IN
      :FROM FROM))

(define-category issue :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "issue"
      :ETF (sv)
      :S SUBJECT))

(define-category judge :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "judge"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category kill :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "kill"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category kit :specializes biological
    :binds
    ((subject biological)
     (with biological)) 
    :realization 
      (:verb "kit"
      :ETF (sv)
      :S SUBJECT
      :WITH WITH))

(define-category knock :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "knock"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category lack :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "lack"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category last :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "last"
      :ETF (sv)
      :S SUBJECT))

(define-category layer :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "layer"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category learn :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "learn"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category leave :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "leave"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category light :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "light"
      :ETF (sv)
      :S SUBJECT))

(define-category link :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (to biological)) 
    :realization 
      (:verb "link"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :TO TO))

(define-category load :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (onto biological)
     (with biological)) 
    :realization 
      (:verb "load"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ONTO ONTO
      :WITH WITH))

(define-category localize :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (on biological)
     (in biological)
     (to biological)) 
    :realization 
      (:verb "localize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ON ON
      :IN IN
      :TO TO))

(define-category machine :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "machine"
      :ETF (sv)
      :S SUBJECT))

(define-category magnify :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "magnify"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category make :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (for biological)
     (from biological)
     (by biological)) 
    :realization 
      (:verb "make"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :FOR FOR
      :FROM FROM
      :BY BY))

(define-category manifest :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "manifest"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category manipulate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "manipulate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category map :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)) 
    :realization 
      (:verb "map"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category mature :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "mature"
      :ETF (sv)
      :S SUBJECT))

(define-category mean :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "mean"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category mention :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "mention"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category mimick :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "mimick"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category mix :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "mix"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category mock :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "mock"
      :ETF (sv)
      :S SUBJECT))

(define-category motor :specializes biological
    :binds
    ((subject biological)
     (because biological)
     (for biological)
     (in biological)) 
    :realization 
      (:verb "motor"
      :ETF (sv)
      :S SUBJECT
      :BECAUSE BECAUSE
      :FOR FOR
      :IN IN))

(define-category mount :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (onto biological)
     (with biological)) 
    :realization 
      (:verb "mount"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ONTO ONTO
      :WITH WITH))

(define-category move :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (from biological)
     (with biological)
     (in biological)) 
    :realization 
      (:verb "move"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM
      :WITH WITH
      :IN IN))

(define-category neck :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "neck"
      :ETF (sv)
      :S SUBJECT))

(define-category normalize :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)
     (to biological)) 
    :realization 
      (:verb "normalize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :TO TO))

(define-category note :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "note"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category number :specializes biological
    :binds
    ((subject biological)
     (on biological)
     (as biological)
     (to biological)
     (at biological)
     (in biological)
     (of biological)) 
    :realization 
      (:verb "number"
      :ETF (sv)
      :S SUBJECT
      :ON ON
      :AS AS
      :TO TO
      :AT AT
      :IN IN
      :OF OF))

(define-category occlude :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "occlude"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category oil :specializes biological
    :binds
    ((subject biological)
     (from biological)) 
    :realization 
      (:verb "oil"
      :ETF (sv)
      :S SUBJECT
      :FROM FROM))

(define-category oppose :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "oppose"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category orchestrate :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "orchestrate"
      :ETF (sv)
      :S SUBJECT))

(define-category order :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (from biological)) 
    :realization 
      (:verb "order"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :FROM FROM))

(define-category overlap :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "overlap"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category oxygenate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "oxygenate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pack :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "pack"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pad :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "pad"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category pair :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)
     (in biological)) 
    :realization 
      (:verb "pair"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :IN IN))

(define-category paper :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "paper"
      :ETF (sv)
      :S SUBJECT))

(define-category part :specializes biological
    :binds
    ((subject biological)
     (through biological)
     (of biological)
     (via biological)
     (by biological)) 
    :realization 
      (:verb "part"
      :ETF (sv)
      :S SUBJECT
      :THROUGH THROUGH
      :OF OF
      :VIA VIA
      :BY BY))

(define-category participate :specializes biological
    :binds
    ((subject biological)
     (in biological)) 
    :realization 
      (:verb "participate"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category patch :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "patch"
      :ETF (sv)
      :S SUBJECT))

(define-category pattern :specializes biological
    :binds
    ((subject biological)
     (within biological)
     (for biological)
     (in biological)
     (of biological)) 
    :realization 
      (:verb "pattern"
      :ETF (sv)
      :S SUBJECT
      :WITHIN WITHIN
      :FOR FOR
      :IN IN
      :OF OF))

(define-category pause :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "pause"
      :ETF (sv)
      :S SUBJECT))

(define-category pearl :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "pearl"
      :ETF (sv)
      :S SUBJECT))

(define-category perfuse :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (at biological)
     (throughout biological)) 
    :realization 
      (:verb "perfuse"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT
      :THROUGHOUT THROUGHOUT))

(define-category permeate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "permeate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category permit :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)) 
    :realization 
      (:verb "permit"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category phase :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "phase"
      :ETF (sv)
      :S SUBJECT))

(define-category photoconvert :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "photoconvert"
      :ETF (sv)
      :S SUBJECT))

(define-category piece :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "piece"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category plane :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "plane"
      :ETF (sv)
      :S SUBJECT))

(define-category plate :specializes biological
    :binds
    ((subject biological)
     (without biological)
     (with biological)
     (for biological)
     (in biological)) 
    :realization 
      (:verb "plate"
      :ETF (sv)
      :S SUBJECT
      :WITHOUT WITHOUT
      :WITH WITH
      :FOR FOR
      :IN IN))

(define-category play :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)) 
    :realization 
      (:verb "play"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN))

(define-category point :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "point"
      :ETF (sv)
      :S SUBJECT))

(define-category pool :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "pool"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category populate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "populate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category position :specializes biological
    :binds
    ((subject biological)
     (at biological)
     (of biological)) 
    :realization 
      (:verb "position"
      :ETF (sv)
      :S SUBJECT
      :AT AT
      :OF OF))

(define-category possess :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "possess"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pour :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "pour"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category power :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "power"
      :ETF (sv)
      :S SUBJECT))

(define-category preclude :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "preclude"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category predominate :specializes biological
    :binds
    ((subject biological)
     (in biological)) 
    :realization 
      (:verb "predominate"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category prepare :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)
     (by biological)
     (from biological)) 
    :realization 
      (:verb "prepare"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :BY BY
      :FROM FROM))

(define-category produce :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (from biological)) 
    :realization 
      (:verb "produce"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM))

(define-category progress :specializes biological
    :binds
    ((subject biological)
     (to biological)) 
    :realization 
      (:verb "progress"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category project :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "project"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category publish :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "publish"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category pulse :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "pulse"
      :ETF (sv)
      :S SUBJECT))

(define-category put :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (under biological)) 
    :realization 
      (:verb "put"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :UNDER UNDER))

(define-category quadruplicate :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "quadruplicate"
      :ETF (sv)
      :S SUBJECT))

(define-category quantify :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (on biological)
     (at biological)
     (from biological)
     (in biological)
     (after biological)
     (by biological)) 
    :realization 
      (:verb "quantify"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ON ON
      :AT AT
      :FROM FROM
      :IN IN
      :AFTER AFTER
      :BY BY))

(define-category quantitate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "quantitate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category range :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "range"
      :ETF (sv)
      :S SUBJECT))

(define-category reach :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "reach"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category record :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "record"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category recover :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (before biological)
     (on biological)
     (by biological)) 
    :realization 
      (:verb "recover"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BEFORE BEFORE
      :ON ON
      :BY BY))

(define-category recycle :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)) 
    :realization 
      (:verb "recycle"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category refer :specializes biological
    :binds
    ((subject biological)
     (to biological)) 
    :realization 
      (:verb "refer"
      :ETF (sv)
      :S SUBJECT
      :TO TO))

(define-category render :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "render"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category repeat :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "repeat"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category reproduce :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "reproduce"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category request :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "request"
      :ETF (sv)
      :S SUBJECT))

(define-category rescue :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)) 
    :realization 
      (:verb "rescue"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY))

(define-category research :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "research"
      :ETF (sv)
      :S SUBJECT))

(define-category respond :specializes biological
    :binds
    ((subject biological)
     (upon biological)
     (to biological)) 
    :realization 
      (:verb "respond"
      :ETF (sv)
      :S SUBJECT
      :UPON UPON
      :TO TO))

(define-category restore :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (by biological)) 
    :realization 
      (:verb "restore"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :BY BY))

(define-category restrict :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)) 
    :realization 
      (:verb "restrict"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category resume :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "resume"
      :ETF (sv)
      :S SUBJECT))

(define-category retain :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)) 
    :realization 
      (:verb "retain"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR))

(define-category retrograde :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "retrograde"
      :ETF (sv)
      :S SUBJECT))

(define-category reverse :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (by biological)) 
    :realization 
      (:verb "reverse"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY))

(define-category revert :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "revert"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category review :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "review"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category ring :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "ring"
      :ETF (sv)
      :S SUBJECT))

(define-category risk :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (of biological)) 
    :realization 
      (:verb "risk"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :OF OF))

(define-category room :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "room"
      :ETF (sv)
      :S SUBJECT))

(define-category rule :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "rule"
      :ETF (sv)
      :S SUBJECT))

(define-category run :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "run"
      :ETF (sv)
      :S SUBJECT))

(define-category sacrifice :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "sacrifice"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category saturate :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "saturate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category scan :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "scan"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category score :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "score"
      :ETF (sv)
      :S SUBJECT))

(define-category scrape :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "scrape"
      :ETF (sv)
      :S SUBJECT))

(define-category screen :specializes biological
    :binds
    ((subject biological)
     (as biological)
     (of biological)
     (for biological)) 
    :realization 
      (:verb "screen"
      :ETF (sv)
      :S SUBJECT
      :AS AS
      :OF OF
      :FOR FOR))

(define-category section :specializes biological
    :binds
    ((subject biological)
     (of biological)
     (from biological)) 
    :realization 
      (:verb "section"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :FROM FROM))

(define-category seed :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (onto biological)
     (on biological)
     (into biological)
     (in biological)) 
    :realization 
      (:verb "seed"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :ONTO ONTO
      :ON ON
      :INTO INTO
      :IN IN))

(define-category seek :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "seek"
      :ETF (sv)
      :S SUBJECT))

(define-category send :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (in biological)) 
    :realization 
      (:verb "send"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :IN IN))

(define-category sensitize :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "sensitize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category separate :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (from biological)) 
    :realization 
      (:verb "separate"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM))

(define-category set :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (for biological)
     (of biological)
     (in biological)) 
    :realization 
      (:verb "set"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FOR FOR
      :OF OF
      :IN IN))

(define-category shed :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (from biological)
     (of biological)) 
    :realization 
      (:verb "shed"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :FROM FROM
      :OF OF))

(define-category shift :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "shift"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category shock :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "shock"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category silence :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (of biological)
     (in biological)) 
    :realization 
      (:verb "silence"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :OF OF
      :IN IN))

(define-category single :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "single"
      :ETF (sv)
      :S SUBJECT))

(define-category skin :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "skin"
      :ETF (sv)
      :S SUBJECT))

(define-category slice :specializes biological
    :binds
    ((subject biological)
     (of biological)
     (with biological)
     (from biological)) 
    :realization 
      (:verb "slice"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :WITH WITH
      :FROM FROM))

(define-category sort :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (at biological)
     (by biological)
     (of biological)) 
    :realization 
      (:verb "sort"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT
      :BY BY
      :OF OF))

(define-category spin :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "spin"
      :ETF (sv)
      :S SUBJECT))

(define-category splice :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (into biological)
     (of biological)) 
    :realization 
      (:verb "splice"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :INTO INTO
      :OF OF))

(define-category spread :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "spread"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category square :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "square"
      :ETF (sv)
      :S SUBJECT))

(define-category stack :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "stack"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category stage :specializes biological
    :binds
    ((subject biological)
     (in biological)
     (of biological)) 
    :realization 
      (:verb "stage"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :OF OF))

(define-category stain :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (at biological)
     (for biological)
     (from biological)
     (in biological)
     (of biological)
     (with biological)) 
    :realization 
      (:verb "stain"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :AT AT
      :FOR FOR
      :FROM FROM
      :IN IN
      :OF OF
      :WITH WITH))

(define-category start :specializes biological
    :binds
    ((subject biological)
     (for biological)) 
    :realization 
      (:verb "start"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR))

(define-category state :specializes biological
    :binds
    ((subject biological)
     (of biological)
     (in biological)) 
    :realization 
      (:verb "state"
      :ETF (sv)
      :S SUBJECT
      :OF OF
      :IN IN))

(define-category steer :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "steer"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category stop :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "stop"
      :ETF (sv)
      :S SUBJECT))

(define-category strain :specializes biological
    :binds
    ((subject biological)
     (by biological)
     (at biological)) 
    :realization 
      (:verb "strain"
      :ETF (sv)
      :S SUBJECT
      :BY BY
      :AT AT))

(define-category strand :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "strand"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category stratify :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "stratify"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category structure :specializes biological
    :binds
    ((subject biological)
     (at biological)
     (in biological)
     (of biological)) 
    :realization 
      (:verb "structure"
      :ETF (sv)
      :S SUBJECT
      :AT AT
      :IN IN
      :OF OF))

(define-category subject :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)) 
    :realization 
      (:verb "subject"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO))

(define-category submerge :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (in biological)) 
    :realization 
      (:verb "submerge"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :IN IN))

(define-category supplement :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)) 
    :realization 
      (:verb "supplement"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH))

(define-category support :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (by biological)) 
    :realization 
      (:verb "support"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :BY BY))

(define-category surround :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "surround"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category survey :specializes biological
    :binds
    ((subject biological)
     (of biological)) 
    :realization 
      (:verb "survey"
      :ETF (sv)
      :S SUBJECT
      :OF OF))

(define-category synchronize :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "synchronize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category synthesize :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (by biological)
     (as biological)) 
    :realization 
      (:verb "synthesize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BY BY
      :AS AS))

(define-category tail :specializes biological
    :binds
    ((subject biological)
     (toward biological)
     (in biological)
     (of biological)) 
    :realization 
      (:verb "tail"
      :ETF (sv)
      :S SUBJECT
      :TOWARD TOWARD
      :IN IN
      :OF OF))

(define-category take :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (with biological)
     (of biological)) 
    :realization 
      (:verb "take"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :WITH WITH
      :OF OF))

(define-category time :specializes biological
    :binds
    ((subject biological)
     (for biological)
     (in biological)
     (with biological)
     (of biological)) 
    :realization 
      (:verb "time"
      :ETF (sv)
      :S SUBJECT
      :FOR FOR
      :IN IN
      :WITH WITH
      :OF OF))

(define-category tool :specializes biological
    :binds
    ((subject biological)
     (in biological)) 
    :realization 
      (:verb "tool"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category total :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "total"
      :ETF (sv)
      :S SUBJECT))

(define-category traffick :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (between biological)
     (to biological)) 
    :realization 
      (:verb "traffick"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :BETWEEN BETWEEN
      :TO TO))

(define-category transfer :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (to biological)
     (onto biological)) 
    :realization 
      (:verb "transfer"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :TO TO
      :ONTO ONTO))

(define-category transmit :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "transmit"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category transplant :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (at biological)
     (to biological)
     (onto biological)) 
    :realization 
      (:verb "transplant"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :AT AT
      :TO TO
      :ONTO ONTO))

(define-category transport :specializes biological
    :binds
    ((subject biological)
     (toward biological)
     (to biological)
     (into biological)
     (through biological)
     (in biological)
     (of biological)) 
    :realization 
      (:verb "transport"
      :ETF (sv)
      :S SUBJECT
      :TOWARD TOWARD
      :TO TO
      :INTO INTO
      :THROUGH THROUGH
      :IN IN
      :OF OF))

(define-category trigger :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "trigger"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category trim :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "trim"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category turn :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "turn"
      :ETF (sv)
      :S SUBJECT))

(define-category type :specializes biological
    :binds
    ((subject biological)
     (in biological)
     (vs. biological)
     (with biological)
     (of biological)) 
    :realization 
      (:verb "type"
      :ETF (sv)
      :S SUBJECT
      :IN IN
      :VS. VS.
      :WITH WITH
      :OF OF))

(define-category utilize :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "utilize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category value :specializes biological
    :binds
    ((subject biological)
     (from biological)
     (to biological)
     (for biological)) 
    :realization 
      (:verb "value"
      :ETF (sv)
      :S SUBJECT
      :FROM FROM
      :TO TO
      :FOR FOR))

(define-category visualize :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "visualize"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

(define-category wash :specializes biological
    :binds
    ((subject biological)
     (object biological)
     (in biological)
     (with biological)) 
    :realization 
      (:verb "wash"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT
      :IN IN
      :WITH WITH))

(define-category work :specializes biological
    :binds
    ((subject biological)
     (in biological)) 
    :realization 
      (:verb "work"
      :ETF (sv)
      :S SUBJECT
      :IN IN))

(define-category wound :specializes biological
    :binds
    ((subject biological)) 
    :realization 
      (:verb "wound"
      :ETF (sv)
      :S SUBJECT))

(define-category write :specializes biological
    :binds
    ((subject biological)
     (object biological)) 
    :realization 
      (:verb "write"
      :ETF (svo-passive)
      :S SUBJECT
      :O OBJECT))

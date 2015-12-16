
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

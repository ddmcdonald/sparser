;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2019 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "planner"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  October 2019

#| Initiated 10/22/19 to hold code sketches for the text planner we're
building to take as set of unorganized simple relational triples from
Brandeis' Diana that describe the pairwise spatial relations among them. 
|#

(in-package :sparser)

#| Simplifying assumptions to get started:

-- The color of a block is sufficent to distinguish from the other
   on the table. (No two blocks have the same color.) This lets us
   put off Referring Expression Generation (REG) until later.

-- We start off just considering 2-block configurations.
   When you get to three or more blocks you have to work out
   how to organized the 'traversal' and other largish things 
   like schemas and derived composites like stacks and stairs.

|#


#| Sequester parameters inside a tailored structure

We're going to be trying out lots of different control parameters,
and perhaps different sets of parameters or at least different values.

We can expedite that by taking anything that we might otherwise
have done as a defparameter and instead incorporating it as a slot
in a standard structure (probably a class instance). Where their
access functions are auto-generated and when called look up their
value in the appropriate current 'parameter store'.  |#


#| Use a 'control queue' rather that monolithic functions 
we'd have to continually refactor as our idea evolve. |#


The general picture is that we start with a representation of the
content we intend to express that is abstract and has no association
with language at all. For planar configurations of blocks the Region
Connection Calculus seems like a good start. (Blocks themselves
are atomic and all we care about them is their identity and their
color.)

In one pass we go from the starting point with just this content
(a set of Krisp individuals) to one of Mumble's derivation trees
[ mumble/derivation-trees/types.lisp ] The DT is designed to be
incrementally extended so it will be a key term in our parameter
store. 

When we've finished deliberating over how to realize the content and achieve the designed organization given the current state of
the discourse and any intention / nuance we want to convey the DT
will be 'finished' (up until this point we can freely revise it)
and we send it off to Mumble to utter. Mumble will do a number of
things on its own, but from the planner's perspective this are
all unconscious. 




Given one of these relations, say (EC B6 B3), there will be a set of
'factors' that apply to it in order to determine how we want to
realize it. (Probably more like a structure, and 'factor' is a term
I picked out of a hat.)

As successive factors are considered the possible lexical realizations
become more specific, though as soon as we get -any- realization
options we could stop. Our description would just be more general
than it might be. Pace Grice this is something to play with.


Here's my sketch of a succesion of factors, starting as abstractly
as is reasonably plausible. (If this chain of factors corresponded
to the position of out input content in the category lattice
so much the better.)

-- Two individuals (B3 and B6)
   Each one has a burned in realization ("blue block") so there's
   a realization of a sort.

But there's a minimal set of thing we have to consider to before
we an say anything. Even just for individual blocks we have to know
their information status in the dialog.
  Known to both interlocutors, or newly introduced

-- There's a relationship between them.
      The two individuals are its participants.

   So we should expect that the relation is going to be lexicalized
   as a verb or a copula-adjective, which means we'll need to setup
   the scaffolding for a clause.

Every clause (more generally the realization of an eventuality) is situated in time, so we need to queue up functions to determine what to do for tense and aspect.

-- Two individuals that are part of a clause will invariably
   be expressed in some order (and some grammatical relationships
   but 'order' is a simpler starting point and we're not supposed
   to concern ourselves with grammar when we're planning.

Order conveys information. It's one of the ways that the information
structure of the text is expressed. There's a large body of somewhat
competing theory packed into that term, but for now (given isolated
single descriptions delivered as a monolog) we can boil it down to
just the concept of focus. 

    So we ask an oracle which of the two participants in this
    relation is in focus. Probably simplest to take this as part
    of the initial situation we are starting from.

-- It's a spatial relation, so the status of two blocks is more
   precise: they're in a figure/ground relationship. The block in
   focus is the figure.

-- EC does have plausible realizations
      "touching"
      "(are) together" (vs. "apart" or "separated")
      "next to"

At this stage, a realization is a lexicalized phrase.
The easiest way to get a lexicalized phrase is from an instance
of a Krisp category.

So the simplest way to represent the alternative realizations
(and this is long-term information we have (learn?) about a
relation like EC) is as list of categories.

If we elect to use a particular realization then we (find or make)
an instance of the category with figure and ground bound appropriately.

From the instance we can get to the corresponding lexicalized phrase
and we put it into the realization field of the DT. And either stop
or keep going an consider more facets.

-- Instances of two-element spatial relations (i.e. the grounded
   configuration of blocks that Diana is looking at) must have
   an orientation [ how do we know this? ].

We learn that the figure and ground are in a vertical orientation,
this exposes a substantial set of lexical alternatives for realizing
the relation. The identity of the orientation is given explicitly in
Diana's relations ('support'), so it's part of the explicit situation.

We have to pick a realization (category) that reflects the orientation
and do so subject to the constraint what the figure in the block
that is in focus
        "is above / below"
        "supports / supported by"
        "on"
        "under"

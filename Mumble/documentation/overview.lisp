-*-org-*-
~/sparser/Mumble/documentation/overview.lisp

Mumble-86 is a realization component based on a variation of tree-adjoining grammar. It is driven from a derivation tree ('dtn') and carries out the final, 'grammar application and readout' phase of generation as described in 'elements-of-generation'.

Since this version of Mumble doesn't do any thinking, all the considerations of what content to express and how organize it has to come from elsewhere, and be packaged as as a dtn.

To the extent that we have thoroughly annotated all the elements in Sparser's Krisp model with their Mumble resource equivalents, we can do the thinking in terms of Krisp types. The resulting compound object that reflects what we want to express can then be automagically turned into a dtn (though that is likely to turn up gaps in our coverage). 


* Start with the test files

The easiest way to understand the derivation trees is through the examples in the test files: /sparser/test/mumble.lisp, mumble-blocks-world.lisp, mumble-biology.lisp. These files are the regression tests, based on the elgantly simple RT testing jig (rt.lisp). If you want to track this yourself it's where you start doing your meta-dot exploration.

This is their principal driver -- mumble-says

(defun mumble-says (content)
  (with-output-to-string (*mumble-text-output*)
    (say content)))

'Say' the entry point to drive Mumble. Usually the 'content', certainly for a clause is a derivation-tree-node ('dtn' -- see derivation-trees/types.lisp). The test functions in mumble.lisp assemble dtn's by hand. This is the lowest level way of producing input for Mumble, but probably also the easiest to make sense of.
                                                                                               
The primary methods for 'say' are in interpreters/top-level.lisp. But since it is a generic function, we can make a more interesting test jig by using this version, from sparser/.../interface/mumble/interface.lisp.

(defmethod say ((object string))
  "Parse the string and generate from the semantics."
  (sp::qepp object) ; parse quietly
  (say (first (sp::semtree (first (sp::all-tts))))))

(defmethod say :around ((object string))
  "If the parse or generation from semantics fails, just return the string."
  (handler-case (call-next-method)
    (error () object)))

This version of 'say' takes in a text string, has it parsed, then drives the assembly of the dtn from the interpretation Sparser produces. The tests for blocks-world and biology use it.

(deftest (say big red block)
  (mumble-says "a big red block.")
  "a big red block")


* Code layout

Mumble proper is loaded as a single ASDF module piggy-backing on the Sparser ASDF system.

(defsystem :sparser
  :depends-on (:ddm-util :mumble)
  :components ((:file "Sparser/code/s/init/everything"))
  ... )

The Mumble/mumble.asd file provides a nice overview of Mumble's layout as a set of files grouped functionally into directories. For example the drivers and control structure are in the 'interpreters' directory, and the grammar is in 'grammar' organized by the kind of grammatical object. To understand this level of Mumble's operation you should consult the mumble-86 manual in this directory. The first section of the manual is an easy to read self-contained summary.

For the interface with Sparser -- the procedures for annotating Sparser's grammar with the corresponding Mumble resources and for constructing derivation trees from Krips individuals -- there are several pockets of relevant code. Since they are a mix of Sparser and Mumble functions, and we load Mumble first, you have to be careful about having the correct systems.

Sparser/.../interface/mumble/
-- Has the Sparser side of this code and is primarily concerned with assembling the Mumble resources for all the Sparser realizations

Mumble/derivation-trees/
-- Defines the data structures and basic helper functions that used to define the dtn-level resources and the mapping from Krisp individuals. The important files here are types.lisp and builders.lisp. The operators file is mostly OBE.

Mumble/interface/sparser/
-- Has the methods for the general, type-driven Krisp individual to dtn machinery. The core file is binding-centric.lisp. It gets the head from the individual's type, then it maps over its bindings to add the needed complements and adjuncts.

Mumble's interface to Sparser code depends on code from both systems having been loaded, and so it has a specific defsystem definition -- :mumble/sparser included in mumble.asd -- to do this. This is what I just put in my .sbclrc file to make sure this works.

(defun fire ()
  (handler-bind
      ((warning #'muffle-warning))
    (asdf:load-system :sparser/fire)
    (asdf:load-system :mumble/sparser))
  (in-package :sparser)
  :loaded-fire)


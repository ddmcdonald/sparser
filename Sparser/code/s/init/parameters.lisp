;;; -*- Mode: LISP; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016-2019 SIFT LLC. All Rights Reserved.
;;;
;;;      File: "parameters"
;;;    Module: "init;"
;;;   Version: June 2019

;;;----------------------------
;;; parameterizing the loading
;;;----------------------------

(defvar *load-the-grammar* t
  "The facilities for defining grammar rules are always loaded.
This flag governs whether the instance objects and rules defined
by the load file for the grammar are also loaded. Precisely which
modules of the grammar are loaded is further specialized by the
flags in the grammar configuration file.")

(defvar *sparser-loaded* nil
  "Useful when operations need to be changed from while the system
 and grammar are loading and after than when we are doing analyses.
 Set in session.lisp")

(defvar *pre-load-hooks* nil
  "A list of functions run at the start of \"loaders;master-loader\".")

(defvar *post-load-hooks* nil
  "A list of functions run at the end of \"loaders;master-loader\".")

(defvar *grammar-configuration* nil
  "The name of a file in the \"grammar-configurations;\" directory,
usually loaded as part of a script-specified pre-load hook.")

(defvar *track-incidence-count-on-bindings* nil
  "Unless we are working with very general individuals as we do
in DM&P, the number of times that a binding will be 'created'
more than once is vanishingly small. Small enough that when we
notice them we can determine whether they're real. This flag
is looked at in bind-variable/expr.")

(defvar *edges-from-referent-categories* nil
  "If non-nil, we look for edge label combinations off the labels
provided by the referent (often more general than the category)
including composite referents.")

(defvar *ignore-literal-edges* nil
  "Used in the pair-wise edge search to control whether rules over
   literals (edges whose labels are words; see, e.g., the handling 
   of modals) are permitted to be run. If flag is up, no bare words
   will ever be edge labels while applying rules, though a significant
   class of rules will be excluded.")

(defvar *allow-form-rules* t
  "Permits checking category labels against grammar ('form') labels
   when looking for rules of composition. See subroutine of
   multiply-edges: mult/ids-on-form-label")

(defvar *allow-pure-syntax-rules* nil
  "Permits looking for combinations off the form labels of the two edges.
Obviously this is dangerous without a thorough means of enforcing semantic
value restrictions, so the policy is to locally bind this flag
inside treetop functions with clear dynamic scopes.")

(defvar *inhibit-construction-of-systematic-semantic-rules* nil
  "In a system that relies primarily on syntactic rules and uses
large omnibus categories with large realizations fields in order to
be sure of having good subcategorization coverage of unforeseen
adjuncts (such as the category 'biological' in the biology sublanguage)
the usual machinery for interpreting variable restrictions as semantic
rules can massively over-generate rules that will never execute.
This switch turns that off.")

(defvar *external-referents* nil
  "Usually the model-level referents to rules or other schema are objects
in Krisp that are internal to Sparser (and may later be exported).
This flag signals that some referents are objects imported or linked to
from other programs/processes and conditions some of the rule-making
machinery to have few or no expectations about how it can manipulate
them.")

(defvar *connect-to-the-corpus* nil
  "Controls whether a file of logical pathnames is loaded that
point to various established directories of texts. The directory
for this file is pointed to by the 'corpus;' logical in the
loader's logicals file, whose normal value is dictated by the
value of cl-user::location-of-text-corpora. ")

(defvar *monitor-size* :14-inch
  "Read by workbench routines to establish the size of the windows.")

(defvar *nothing-Mac-specific*
  #-:apple t
  #+:apple nil
  "Some of the interface routines presuppose that we're loading
on a Mac and use MCL-specific routines. When this flag is on these
routines are left out of the load.")

;;;-------------------------------------------
;;; flags for specific versions of the system
;;;-------------------------------------------

(defvar *speech* nil
  "This flag indicates that the text we're parsing is transcribed
speech rather than a written text. It affects how the text-based
heuristics are handled and turns on other, speech-specific heuristics.")

(defvar *load-ad-hoc-rules* nil
  "The ultimate goal of development on Sparser is integration into
a fully bi-directional system (see Magi loader), which requires
painstaking care to route everything through a realization schema.
If a purely analysis-driven project requires being more ad-hoc,
then this switch will gate those rules.")

(defvar *incorporate-generic-lexicon* nil
  "When non-nil, we finish off the loading of the grammar by including
almost purely lexical knowledge about a horde of words.")

(defvar *do-not-use-psi* t
  "There are circumstances when psi proliferate even in cases where they
don't make sense (perhaps the 'simple criteria' need significant extension),
and there is the problem that saturated psi don't convert to individuals.
They are the correct long-run approach, but a given application may choose
to not use them. When this flag is up, make/individual will only create
individuals with regular bindings and never make psi. N.b. this is set by
the *grok* configuration. If it's to be set it has to be done very early,
before any model objects are constructed. Setting it with the configuration
is a safe way to do it.")

(defvar *include-model-facilities* t)

(defvar *description-lattice* nil
  "Use the description lattice for individuals.")

(defvar *index-under-permanent-instances* nil
  "Pick out the right sub-field when a category indexes
both permanent and temporary individuals.")

(defvar *override-category-permanent-individuals-assumption* nil
  "Works with the function individuals-of-this-category-are-permanent?
to handle cases where we are creating an individual of such a
category but we know definitively that we want to make a temporary
individual.")

(defvar *index-bindings-to-variables* nil
  "Controls whether we use the table on a variable to keep 
track of its bindings.")

;;;-----------------------------------------------------------------------
;;; Mutually exclusive application settings.
;;; These correspond to alternative system configurations, some of them
;;; now very old and mothballed (i.e. not incorporated in the present codebase).
;;; They dictate choices of grammar modules to load and values for parameters.
;;;-----------------------------------------------------------------------

(defvar *grok* nil
  "Includes the core grammar and selected sublanguages such as report.")

(defvar *c3* nil
  "Uses minimal built-in grammar. Has its own protocol over the chart,
and uses a set of document structures to maintain a 'situation' construct.")

(defvar *big-mechanism* nil
  "Uses a tailored version of the full grammar to remove grammar modules
whose rules get in the way.")

(defvar *CwC* nil
  "Uses a configuration similar a bit larger than the one for C3,
along with a grammar module (sublanguage) for the blocks world.")

(defvar *checkpoint-operations* nil
  "In mothballs.")

(defvar *fire*  nil
  "Fire stands for 'Free-text Information and Relation Extraction'.
It is essentially Grok going forward.")

(defvar *pure-dm&p-load* nil)

(defvar *da* nil)

;;;------------------------------------------------------------
;;; Scheme for drawing on additional files not in Sparser's
;;; directory tree. Developed for the Answer project.
;;;------------------------------------------------------------

(defvar *external-object-files* nil
  "Provides a hook for specifying object files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-analyzer-files* nil
  "Provides a hook for specifying analysis files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-driver-files* nil
  "Provides a hook for specifying driver files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-interface-files* nil
  "Provides a hook for specifying interface files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-testing-files* nil
  "Provides a hook for specifying testing files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-workspace-files* nil
  "Provides a hook for specifying workspace files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-grammar-files* nil
  "Provides a hook to load additional grammar rules of any sort.")

(defvar *external-grammar-dossier-files* nil
  "Provides a hook to load additional instances of items defined by
the grammar.")

(defvar *external-grammar-config* nil
  "Provides a hook for specifying the configuration of the grammar
from outside Sparser's directory tree. Value should be an object
that can be passed directly to load without requiring any sort
of translation, e.g. a fully specified pathname or namestring.")

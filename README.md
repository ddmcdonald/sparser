

# Introduction

Sparser is a model-driven, rule-based language text analysis system
for large volume, high-precision information extraction. At its heart,
Sparser is a bottom-up, phrase-structure-based chart parser, optimized
for semantic grammars and partial parsing. It has a highly efficient
implementation based on resources of reused data structures and an
indelible, deterministic parsing algorithm and style of grammar that
enable it to do full semantic analyses at thousands of words per
second on stock laptops.

Another way to look at Sparser is as a configurable toolkit for many
kinds of text-handling. Alternative configurations are defined by the
values that are given to an extensive set of parameters. These govern
what operations are permitted, what data structures are used, what
sets of rules will be loaded, the protocol for rule application, the
checks that are performed as words are scanned, and so on. There are
configurations that turn Sparser into a multi-document word-frequency
and TF/IDF tabulator; a highly efficient information extraction engine
driven from a semantic model of the target content; a shallow-meaning,
ontology induction engine; or a large-lexicon, syntax-driven system
for partially reading technical literature

Sparser is designed for continuous operation over sets of documents of
arbitrary number and length, although grammar and model development is
usually done over small texts. As a consequence, Sparser is run for
side-effects. It does not 'return' anything, though it has machinery
for periodically reading out its chart or the objects it has
recognized or instantiated (i.e. categories and instances of
categories). Sparser uses its native KRISP KR language to define its
domain models and represent the information that that it identifies as it
reads. KRISP can be easily converted to OWL triples or JSON.

Sparser is an open-source project under the Eclipse Public License
(see LICENSE). The definitive repository for Sparser is on GitHub
at https://github.com/ddmcdonald/sparser/, people who have been registered
as 'contributors' can push commits to the repository directly.

# Prerequisites

## Lisp You need to have a modern implementation of Common Lisp
already installed. We exclusively use SBCL in our own development (www.sbcl.org).
In the past we have also used Clozure (www.clozure.com) and
Allegro (www.franz.com). We do not presently run our regression tests on
those platforms, so caveat emptor.

## OS We develop on Intel-based Macs under OS X and Unix.
Sparser has been used with Windows in the past though that has not
been tested recently.
Since we use ASDF for toplevel loading and Lisp pathnames
for handling file compilation and module loading, we don't expect that
working in Windows would be problem, but as of this writing we have
not actually tested it.

# Installation, Setup, and Loading

After cloning Sparser, the toplevel of the sparser directory tree will
have four immediate subdirectories: "Mumble", "Sparser", "util", and
"test", as well as this README file, the LICENSE file, a MakeFile for
simple command-line operations like grep or removing all of the fasl
compiled files, and the "sparser.asd" file which contains the Sparser
ASDF system definitions for different configurations of the grammar,
semantics, and runtime behavior.

## Setup ASDF in your init file
At the toplevel, Sparser's loader is based on ASDF. To use it you
have to provide Sparser's location in your file system into the ASDF
registry so that ASDF can find Sparser's .asd file.
In addition several of Sparser's subsystems make use of a couple of
standard Lisp packages: CL-JSON, and CL-PPCRE, so you  need to
include a path to them as part of your source-registry. (they
are named in the depends-on specification in the :sparser defsystem
definition in the asd file.)

It is simplest to specify this information in your init file
(e.g. ~/.sbclrc).  This example assumes that your local copy
of Sparser is at toplevel in your home directory (i.e. ~/sparser/).
```
(in-package :COMMON-LISP-USER)

(require :asdf)

(defun sparser-minimal-config ()
  (setf asdf:*central-registry* nil)
  (asdf:initialize-source-registry 
   '(:source-registry
     (:tree (:home "sparser"))
     (:tree (:home "projects/cwc-integ/lisp-utils"))
     :ignore-inherited-configuration)))

(defmacro load-sparser ()
  (sparser-minimal-config) ; note A
  (defparameter cl-user::*use-all-proteins* nil) ; note B
  (handler-bind
      ((warning #'muffle-warning)) ; note C
    (asdf:load-system :sparser/fire)
    (asdf:load-system :mumble/sparser))
  (in-package :sparser)
  :sparser-loaded)
```

A. Typically you will have the configurations for several systems
in your init file, with their own library requirements.
That is why we have broken out the asdf requirements for Sparser
into a local function (sparser-minimal-config) and call it
in the function you invoke to do the loading.

B. In its biology configuration Sparser defines a very large number
of proteins. The cl-user parameter setting tells Sparser to ignore them.

C. Muffling warnings makes for a much quieter load. We periodically
turn this off to check whether we have to address something, but
these really are just warnings.

## Configurations and Loading

In a running Lisp, with the ASDF registry configured as just
described, you load Sparser by calling the function you defined.
This is the result. (1/5/23 on a 2018 MacBook Pro running 12.6.2
with sbcl's --dynamic-space-size" set to "15000")

```
cl-user> (load-sparser)

-------------------------------------------
 6,758  Referential categories
 138  Syntactic form categories
 99   Mixin categories
 330  Non-terminal categories
 11,464   Individuals
               
-------------------------------------------
 26,283   Words
 8,240  Polywords
 23,631   Lexical rules
 9,266  Semantic rules
 25   Context sensitive rules
 333  Form rules
 912  Syntactic rules
 287  Debris analysis rules
 94   ETF tree schema
 381  Grammar modules loaded
-------------------------------------------
                
System loaded in 17.0 seconds

Welcome to the Sparser natural language analysis system.
Copyright (c) David D. McDonald 1991-2005,2010-2022.
Distributed under the Eclipse Public License.

Type (in-package :sparser) to use Sparser symbols directly.

:sparser-loaded
sp> 
```

That loaded the default configuration of Sparser. At the moment
there are ten different Sparser asdf systems defined in
~/Sparser/sparser.asdf. Each one has an associated script that
sets up its own configuration of grammar modules to load
and its own choice of parameter ("switch") settings for
configuring the analysis protocol. Most of these only interesting
to illustrate the range of configurations we have used.  We are
actively doing development in just two configurations: 'biology' for
our project work for DARPA, and 'fire' for wider-ranging
explorations. The default configuration is the same as the one for
fire ("Free-text Information and Relation Extraction").


# Capabilities, documentation

Sparser can use context-free and context-sensitive semantic
grammar phrase-structure rules, along with syntactic rules
that check for valid semantic relations before they complete.
It provides hooks for regular-expression analysis, multi-words, 
and arbitrary state-based analyses. It has a rich representation
of the structure of documents.

There is extensive documentation for Sparser included with the code
base: see sparser/Sparser/documentation/. We regularly extend this
documentation, especially with 'notes' that provide a guide that is
very close to the implementation. By the same token we are usually far
behind in documenting the extensions we make or the rationale behind
our approach to semantics and grammar.

The default configuration includes nearly every sublanguage grammar
that has been developed for sparser, such as amounts and time, names
and numbers, location, or person-company-title. Beyond semantically
controlled sublanguages, we use an extensive syntactic grammar where
composition is constrained by more heuristic type-checking. We also
draw on the Complex lexicon to provide part of speech and simple
subcategorization information about words that haven't been given an
explicit semantic definition.


# Using Sparser

In production, Sparser is usually being run over files of documents
given as plain text (UTF-8) or as XML in a format we have a decoder
for. Most of the time though you are debugging an extension to the
grammar, which comes down to parsing short text strings and looking at
the results: what rules were applied, what words were unknown, was the
semantic structure of the results what you intended.

We can illustrate this with this short example, interpreting the
string "it is almost Wednesday". 
```
sp> (p "it is almost Wednesday")
[it ][is ]almost Wednesday
```
```
                    source-start
e7    BE            1 "it is almost Wednesday" 5
                    end-of-source
:done-printing
```
The function 'p' is one of the many abbreviations we use to cut down
on typing. P combines the step of running the parsing engine on
the string with printing out a view of the chart after the analysis was
finished. An early step in the analysis was chunking the input into
minimal phrases (noun groups, verb groups, or adjective groups), as
shown in the square brackets. 

Sparser's chart uses between-word positions, with edges representing
constituents formed by the application of rules in the grammar. In
this case the whole text was composed in to a single edge, with the
index 'e7' that started at position 1 and ended at position 5.

Under the hood everything in Sparser's representation is a typed
structured object. Manipulating objects directly is a matter of invoking
functions or small programs and can be cumbersome. But for things we
know we always want to see these have been already pre-packaged, and
often use the numbers of the chart edges as their arguments.

To see the syntactic constituent structure of the text we have the
function 'stree' for "syntactic tree". Constituency is shown by
indentation. Each edge show its index, its category and syntactic
labels, the chart positions at which it begins and ends, and the
number (or name) of the rule that created it.

```
p> (stree 7)
 e7 be/s                      p1 - p5   rule 1679
  e2 pronoun/inanimate/pronoun    p1 - p2   rule 3159
    "it"
  e6 be/vp                    p2 - p5   rule 1781
    e3 be/vg                  p2 - p3   rule 2305
      "is"
    e5 time/np                p3 - p5   rule 2908
      e4 approximator/det     p3 - p4   rule 5510
        "almost"
      e0 weekday/proper-noun    p4 - p5   rule 3824
        "Wednesday"
#<edge7 1 be 5>
sp>
```

The top edge is syntactically an 'S'. It is the result of applying a
syntactic rule that took the subject np (e2) and assimilated
it into the verb phrase predicate (e6). Note that the indexes
of the rules (e.g. 1679) are assigned while the grammar is being
loaded. You should not expect them to stay the same across sessions
or particularly in different configurations
```
sp> (irr 1679)
referent: (funcall assimilate-subject left-referent right-referent)
#<PSR-1679 s → {pronoun vp}>
```
Semantically the result is a dependency tree. These are displayed as a
set of nested expressions.
```
ssp> (semtree 7)
(#<be 11473>
 (subject (#<pronoun/inanimate "it" 1208> (word "it")))
 (predicate
   (#<relative-time 11471>
     (has-determiner (#<indefinite 11470>))
     (relativizer (#<almost "almost" 3155> (name "almost")))
     (reference-time (#<weekday "Wednesday" 1826>))))
 (present #<ref-category PRESENT>))
```
This shows an instance of the category representing 'be', whose index
is 11473. This category has two local variables, 'subject' and
'predicate', and also binds a variable it inherited, 'present'.
An expression for values of the variables follows them. The predicate,
for example, is an instance of the category 'relative-time', which
itself has variables for its relativizer and reference-time.

This a description of the semantic content of the input text.
In a application that provided the necessary context, this description
could be grounded and its terms given a denotation in actual calendar
time. Presumably along with an application-specific model of
what 'almost' means. (And an appreciation that the pronoun "it"
should be understood as an empty grammatical marker, though that
would be a reasonable extension to Sparser's own time model.)

There is much more that could be illustrated, but getting into 
more depth is usually best done by taking a guided tour in conjunction
with exploring the grammar directly.

Sparser is written in Lisp, and until we restore some form
of the interactive workbench it had on earlier versions of
the MacOS, extending Sparser's abilities and understanding
its operation requires you to have a working knowledge
of Lisp and are comfortable reading code.


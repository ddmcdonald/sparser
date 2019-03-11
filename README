

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
and TF/IDF tabulator, a highly efficient information extraction engine
driven from a semantic model of the target content, a shallow meaning,
ontology induction engine, or a large-lexicon, syntax-driven system
for reading technical literature

Sparser is designed for continuous operation over sets of documents of
arbitrary number and length, though grammar and model development is
usually done over small texts. As a consequence, Sparser is run for
side-effects. It does not 'return' anything, though it has machinery
for periodically reading out its chart or the objects it has
recognized or instantiated (i.e. categories and instances of
categories). Sparser uses its native KRISP language to define its
domain models and represent the information it identifies as it
reads. KRISP can be easily converted to OWL triples of JSON.

Sparser is an open-source project under the Eclipse Public License
(see LICENSE). The definitive repository for Sparser is on GitHub
at https://github.com/ddmcdonald/sparser, people who have been registered
as 'contributors' can push commits to the repository directly.

# Prerequisites

## Lisp You need to have a modern implementation of Common Lisp
already installed. We exclusively use SBCL in our own development (www.sbcl.org).
In the past we have also used Clozure (www.clozure.com) and
Allegro (www.franz.com), but we do not presently run our regression tests on
those platforms, so caveat emptor.

## OS
We develop on Intel-based Macs under OS X and Unix.
Sparser has been used with Windows in the past though that
has not been tested recently. Since we use ASDF for toplevel loading
and Lisp pathnames for handling file compilation and module loading,
we don't expect that working in Windows would be problem, but as of
this writing we have not actually tested it.

# Installation, Setup, and Loading

After cloning Sparser, the toplevel of the sparser directory
tree will have four immediate subdirectories: "Mumble",
"Sparser", "util", and "test", as well as this README file,
the LICENSE file, a MakeFile for simple command-line operations like
grep or removing all of the fasl compiled files, and finally
the "sparser.asd" file which contains the Sparser ASDF system
definitions for different configurations of the grammar, semantics,
and runtime behavior.

## Setup ASDF

At the toplevel, Sparser's loader is based on ASDF. To use it you
have to enter Sparser's location in your file system into the ASDF
registry so that ASDF can find Sparser's .asd file.  We recommend that
you include something like this in your Lisp init file. This example
assumes that your local copy of Sparser is at toplevel in your home
directory (i.e. ~/sparser/).

(require :asdf)

(asdf:initialize-source-registry
 '(:source-registry
    (:tree (:home "sparser"))
    :inherit-configuration))

## Configurations and Loading

In a running Lisp, with the ASDF registry configured, you load Sparser
by executing this in your REPL.

  (asdf:load-system :sparser)

That will load the default configuration of Sparser. At the moment
there are eight different Sparser asdf systems defined.  Each one has
an associated script that sets up its own configuration of grammar
modules to load and its own choice of parameter ("switch") settings
for configuring the analysis protocol. Most of these only interesting
to illustrate the range of configurations we have used.  We are
actively doing development in just two configurations: 'biology' for
our project work for DARPA, and 'fire' for wider-ranging
explorations. The default configuration is the same as
fire ("Free-text Information and Relation Extraction").


# Capabilities

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
draw on the Complex lexicon to giving as part of speech and simple
subcategorization information about words that weren't given an
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

sp> (p "it is almost Wednesday")
[it ][is ]almost [Wednesday]

                    source-start
e7    BE            1 "it is almost Wednesday" 5
                    end-of-source
:done-printing

The function 'p' is one of the many abbreviations we use to cut down
on typing time. P combines the step of running the parsing engine on
the string and printing out a view of the chart after the analysis was
finished. An early step in the analysis was chunking the input into
minimal phrases (noun groups, verb groups, or adjective groups), as
shown in the square brackets. 

Sparser's chart uses between-word positions, with edges representing
constituents formed by the application of rules in the grammar. In
this case the whole text was composed in to a single edge, with the
index 'e7' and started at position 1 and ended at position 5.

Under the hood everything in Sparser's representation is a typed
structured object. Manipulating them directly is a matter of invoking
functions or small programs and can be cumbersome. But for things we
know we always want to see these have been already pre-packaged, and
often use the numbers of the chart edges as their arguments.

To see the syntactic constituent structure of the text we have the
function 'stree' for "syntactic tree". Constituency is given by
indentation. Each edge show its index, its category and syntactic
labels, the chart positions at which it begins and ends, and the
number (or name) of the rule that created it.

sp> (stree 7)
 e7 be/s                      p1 - p5   rule 689
  e2 top/grammatical-subject    p1 - p2   condition-anaphor-edge
    "it"
  e6 be/vp                    p2 - p5   rule 782
    e3 be/vg                  p2 - p3   rule 1256
      "is"
    e5 weekday/np             p3 - p5   rule 1856
      e4 almost/approximator    p3 - p4   rule 3076
        "almost"
      e0 weekday/proper-noun    p4 - p5   rule 2772
        "Wednesday"
#<edge7 1 be 5>

The top edge is syntactically an 'S'. It is the result of applying a
syntactic rule combining that took the subject np (e2) and assimilated
it into the verb phrase predicate (e6).

sp> (irr 689)
referent: (funcall assimilate-subject left-referent right-referent)
#<PSR-689 s → {pronoun vp}>

Semantically the result is a dependency tree. These are displayed as a
set of nested expressions.

sp> (semtree 7)
(#<be 2328>
   (subject (#<top  105>))
   (predicate
      (#<weekday "Wednesday" 1175> (name "Wednesday")))
   (present #<ref-category PRESENT>))

This show an instance of the category representing 'be', whose index
is 2328. And it shows what is wrong with this interpretation and will
need sooner or later to be fixed: There is now appreciation that the
pronoun "it" should be understood as an empty grammatical marker, and
the modifier "almost" was not incorporated, as it is waiting on
someone working up a small semantic model of approximation and the
kinds of effects it should have on any reasoning that happens next.

There is much more that could be illustrated, but getting into much
more depth is usually best done by taking a guided tour in conjunction
with exploring the grammar directly. 
Sparser is written in Lisp, and until we restore some form
of the interactive workbench it had on earlier versions of
the MacOS, extending Sparser's abilities and understanding
its operation requires you to have a working knowledge
of Lisp and are comforable reading code.


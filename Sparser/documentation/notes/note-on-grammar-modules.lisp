(in-package :sparser)

10/6/15 Grammar modules

Grammar modules are a structure for organizing the definitions, rules,
and files that make up the system’s grammar. The machinery for grammar
modules is defined in init/Lisp/grammar-module.lisp, though to actually
create one you need to add to several files as described below.

Grammar modules serve two functions.

 (1) They 'gate' the loading of a set of files. The master load functions
are written to be able to load every part of the grammar and accompanying
model. Which parts they actually load is determined by what modules are
presently 'included' in the system given how it's configured.

 (2) They provide a structure to record the different Sparser objects that
make up the module.

Here is an example from load-the-grammar which is the function that organizes
and carries out the loading of the grammar, which is occasionally tricky
given that there are dependencies on what has to be loaded before/after what.

  (gate-grammar *numbers*
    (gload "numbers;loader"))

The function gate-grammar does the check. If the numbers module is
included in the current configuration, the symbol *numbers* will be
bound to it. Gate-grammar checks for the symbol having a value and 
then calls load-grammar-module to have all the forms in the scope
of the gate evaluated.

In particular, load-grammar-module binds the special variable
*grammar-module-being-loaded*, which is the key to enabling the
second purpose of a grammar module as a catalog of the module's
contents. 

-------- defining and integrating grammar modules --------

The grammar module first has to be defined. Then it has to be 'included'
in particular configuration of modules and integrated into the loaders.

Definition:

All of the grammar modules that are a standard part of Sparser are
defined in the single file grammar-modules.lisp in init/loader/.
Here is the definition for *numbers*

(define-grammar-module  *numbers*
                        :name "numbers"
                        :parent *model-core*)

This provides a pretty name for the module to use for display and
indicates where it sits in within the taxonomy of other modules.
Running define-gramar-module sets up the data structure and arranges
for *numbers* to be bound (via defparameter) and for the module
to be hashed by that symbol to the master list of modules *grammar-modules*.


Including in the load:

By conventional, the total set of grammar modules in the system is
collected into the file full-grammar.lisp in the grammar configurations
directory. New working configurations are created by copying the full-
grammar file and removing or commenting out what should not be included.
The function is very simple. 

  (include-grammar-module  *numbers*)

It just adds the module to the list *grammar-modules-in-image* and sets
the symbol to the grammar module object that it retrieved using 
grammar-module-named(symbol). This is also the source of the long
list of modules that is printed at the start of Sparser's load.


Defining logical paths to files:

Defining a new grammar module will normally entail creating a new
directory in the Sparser code tree to contain its files. Because
of the state of the Lisp world at the time Sparser was initally being
developed, it uses explicit load files rather than any sort of
loading system. The first file you would write in the directory
for a new module is it's loader. This loader file is then integrated
into one of the master load function, which is load-the-grammar for
anything that is not part of the Sparser engine.

The earlier gload expression, (gload "numbers;loader"), is using
a logical pathname expression to define the location of the directory 
that contains the load file for the numbers module. (Note that the
suffix ".lisp" is automatically appended to the name of the file.)

The system of logical pathnames that Sparser uses is derived from
the system used by Apple in it's pre-unix operating systems. The 
native logical pathnames were used in early versions of Sparser,
and they were recreated when MCL no longer supported them. 

The logical pathnames for every directory in the entire system are
defined in a single file -- logicals.lisp -- in the loaders
directory (/init/loaders/). The early part of the file is bootstrapping
its location in the file system using the parameter setting
established by init/everything.lisp. To add another one the best
strategy is to find an existing logical, perhaps in the parent
directory of the new directory you are adding, and follow the pattern.

The basis pattern is to give two strings. The first defines the
new logical, the second gives its location relative to an existing
logical, e.g.

(def-logical-pathname "numbers;"      "core;numbers;")

defines the new logical for numbers -- notice that it ends with
a semicolon -- in terms of the logical for the grammar model
core plus the specific directory. That reference pathname
always starts with a logical, indicated by the semicolon, and
can have as many intermediate directories as needed, each
delimited by a semicolon, e.g.

(def-logical-pathname "model-forms;"  "objects;model;forms;")


Populating grammar modules:

This is the struct that defines a grammar module. 

(defstruct (grammar-module
            (:conc-name #:gmod-)
            (:print-function print-grammar-module-structure))

  symbol  ;; this symbol indexes the module and acts as the
          ;; flag/gate that controls whether it is loaded

  princ-name  ;; a cleaned up string for use in menus

  sub-modules
  parent-module

  files
  cf-rules
  cs-rules
  form-rules
  syntax-rules
  words
  polywords
  non-terminals  ;; actually a category
  object-types   ;; ditto

  public?   ;; t or nil

  dossier/s
  citations
  )

These files are filled as a side-effect of defining the corresponding
objects. Every definition form (e.g. define-word) will eventually call
a function that has "catalog" as part of its name. Here is the function
that is used with words.

(defun catalog/word (word symbol-for-word)
  (note-file-location word)
  (note-grammar-module word)
  (push word *words-defined*)
  (set symbol-for-word word)
  (proclaim `(special ,symbol-for-word))
  word )

These functions are sensitive to the current value of the pointer that
maintained by load-grammar-module by the gate-grammar call,
*grammar-module-being-loaded*, ultimately using a type-dispatch to
get the newly defined object to the correct field of its grammar module.

Here is the fully filled out module for *numbers*

? (d *numbers*)
#<grammar-module *NUMBERS*>
Type: grammar-module
Class: #<structure-class grammar-module>
symbol: *numbers*
princ-name: "numbers"
sub-modules: nil
parent-module: #<grammar-module *MODEL-CORE*>
files: ("numbers;object1" "numbers;categories1" "numbers;form3"
        "numbers;fsa digits6" "numbers;fsa words" "numbers;ordinals3"
        "numbers;percentages1" "numbers;rules" "numbers;relation"
        "dossiers;numbers" "dossiers;ordinals" "numbers;loader2")
cf-rules: (#<PSR867  percent-sign ->  hyphen percent-sign>
           #<PSR871  comma-number ->  comma number>
           #<PSR893  digit-sequence ->  "0"> #<PSR878  digit-sequence ->  "1">
           #<PSR948  digit-sequence ->  "10">
           #<PSR883  digit-sequence ->  "100">
           #<PSR885  digit-sequence ->  "1000">
           #<PSR887  digit-sequence ->  "1000000">
           #<PSR889  digit-sequence ->  "1000000000">
           #<PSR891  digit-sequence ->  "1000000000000">
           #<PSR920  digit-sequence ->  "11">
           #<PSR923  digit-sequence ->  "12">
           #<PSR927  digit-sequence ->  "13">
           #<PSR930  digit-sequence ->  "14">
           #<PSR933  digit-sequence ->  "15">
           #<PSR936  digit-sequence ->  "16">
           #<PSR939  digit-sequence ->  "17">
           #<PSR942  digit-sequence ->  "18">
           #<PSR945  digit-sequence ->  "19"> #<PSR896  digit-sequence ->  "2">
           ...)
cs-rules: (#<PSR877  ones-number -> quantity / ___ np-head>)
form-rules: (#<PSR858  {common-noun} -> common-noun post-ordinal>
             #<PSR857  {common-noun} -> ordinal common-noun>)
syntax-rules: nil
words: (#<word "0"> #<word "1"> #<word "10"> #<word "100"> #<word "1000">
        #<word "1000000"> #<word "1000000000"> #<word "1000000000000">
        #<word "11"> #<word "12"> #<word "13"> #<word "14"> #<word "15">
        #<word "16"> #<word "17"> #<word "18"> #<word "19"> #<word "2">
        #<word "20"> #<word "3"> ...)
polywords: (#<polyword "percent-sign" >)
non-terminals: (#<ref-category COMMA-NUMBER>)
object-types: (#<ref-category HYPHENATED-NUMBER>
               #<ref-category ILLIONS-DISTRIBUTION> #<ref-category MEASUREMENT>
               #<ref-category MULTIPLIER> #<ref-category N-FOLD>
               #<ref-category ONES-NUMBER> #<ref-category ORDINAL>
               #<ref-category PERCENT> #<ref-category POSITION-IN-A-SEQUENCE>
               #<ref-category POST-ORDINAL> #<ref-category QUANTITY>
               #<ref-category QUANTITY-OF> #<ref-category SEQUENCE-OF-NUMBERS>
               #<ref-category SLASHED-SEQUENCE-OF-NUMBERS>
               #<ref-category TEENS-NUMBER> #<ref-category TENS-NUMBER>)
public?: nil
dossier/s: nil
citations: nil




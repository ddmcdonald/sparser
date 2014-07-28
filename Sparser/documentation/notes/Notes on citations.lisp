;; Version of 5/7/14

(in-package :sparser)

Citations are for regression testing. They record the sequence 
of toplevel edges ("treetops") that was created for the parse
of a particular, usually short, text. Citations are structured
objects with a definition form that can be stored in files and 
recreated when the file is loaded. 

* Defining citations

Until we have recreated Sparser's menu and window based workbench,
citations have to be defined by hand. The function cite wraps a
call to the parser on the string it is given as its argument,
followed by a call to write-citation-from-last-run to create the
form that can be copied and saved to a file. 

? (cite "June 27")
[june 27]
(define-citation "June 27"
  (1 DATE 3))
nil

The function fcite does the same thing except that it also saves 
the citation form to a file, saving you the copy and paste effort.
The forms are saved to the file "new-ones.lisp" in the directory
<sparser>/code/s/grammar/tests/citations/cases/.  New citations are
appended to the end of this file. It is a good idea to review the
file regularly and either add commentary or move the new citations
to another, more strategically located file. 

Citations are identified by the string that they test. If the analysis
of a particular string has deliberately changed, then you can 
call cite again and that will change the set of treetops tied to
that citation object. Unfortunately, if the citation was loaded
from a file you have to update the version in the file by hand.


* Accessing

The full list of all the citations that have been defined (i.e. loaded
from files or newly defined) are on *citations-defined* that lists
them in reverse chronological order. The function citation-named will
return the citation object that is associated with a given string
if there is one. 

? (citation-named "first quarter of 1998")
#<citation "first quarter of 1998">
t

** Access by grammar module

The define-citation function keeps track of the grammar module that is
being loaded when the citation is defined. This information is stored
separately from the citations, on the gmod-citations field of the 
module. The symbol *gmods-with-citations* has a list of all the grammar
modules that have associated citations. The grammar module *citations*
holds all the ones that were automatically stored. 

? (grammar-module-named '*citations*)
#<grammar-module *CITATIONS*>
? (length (gmod-citations *))
54




* Testing

The function test-citation takes a single citation object and returns 
a report as report as to whether the treetops presently created by
parsing the string as the same as the ones recorded in the citation. 

? (citation-named "194-43-4287”)
#<citation "194-43-4287”>
t
? (test-citation *)

Testing "194-43-4287”
   [194-43-4287]
   treetops:  matched
nil

The function test-all-citations loops over *citations-defined* and
calls test-citation on each one. Some of the listed citations are
rather old, so this is an enlightening exercise at the moment (5/7/14)
though it also revealed that the test function need to have error 
handlers added to them so you can get through the whole list, any
lisp errors in the parse not withstanding. 

The function test-modules-citations is a more precise instrument, and
also the best motivation for moving citation forms out of the default
file into specific files that are loaded as part of loading the models
and rules of a particular grammar module. We have one of these for
the time grammar.

? *time*
#<grammar-module *TIME*>

? (test-modules-citations *time*)

Testing "first quarter ending June 26, 2004"
   [first][ quarter][ ending] june 26, [ 2004]
   treetops:  matched

Testing "fiscal quarter"
   [fiscal quarter]
   treetops:  matched

Testing "first quarter of 1998"
   [first][ quarter] of [ 1998]
   treetops:  matched

Testing "first quarter"
   [first][ quarter]
   treetops:  matched
nil


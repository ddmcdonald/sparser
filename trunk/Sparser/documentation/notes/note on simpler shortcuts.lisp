
Notes on the new realization scheme
2/9/15 ddm

(in-package :sparser)

Under the pressure from the R3 project to expedite adding vocabulary 
to Sparser, the set of shortcuts was dramatically simplified and 
all the routines given a uniform set of required and optional arguments.



----------
The most difficult aspect of writing a conventional realization
was remembering the syntax of the mapping expression. The new shortcut
machinery hides that part of the work under a simple interface.

---
The differences between the mapping requirements of the ETF and
the simpler scheme are accommodated by realization schemes, 
which are all defined in grammar/rules/tree-families/families1.lisp. 

These are the  schema that are (presently) defined, along with
the ETF they are mediating for and the shortcut keyword argument(s)
and word argument they call for. 

sv -- intransitive
 :verb :s

svo -- transitive
 :verb :s :o

svo-passive -- passive/with-by-phrase
 :verb :s :o (optionally :by, defaults to value of :s)

sv-comp -- passive/with-by-phrase
 :verb :s :c

pre-mod -- premodifier-adds-property 
 :noun :m

of-nominal -- empty-head-of-complement
 :noun :o

np-by -- np-with-by-phrase
 :noun :s (for the np) :by

-----------
Adding a synonym
   The macro def-synonym takes a symbol that names a category plus
a rdata specification and adds that additional set of rules to the
category.  It is syntactic sugar for define-additional-realization,
both of these functions are in objects/model/tree-families/rdata1.lisp. 
They work by dynamically binding the flag *deliberate-duplication* to
T and then calling the usual rdata decoders: setup-rdata for conventional
realizations, and decode-realization-parameter-list for ones in the
new style.


-----------
When the same spelling form is used for a noun and a verb
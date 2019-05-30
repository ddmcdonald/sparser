;; extending subcategorizations
;; 5/28/19

The first question is whether you want the option of having a semantic grammar.
If so, you your realization specifications need to incorporate an "ETF".
Otherwise you can rely simply on indicating the mapping between the
defined set of subcategorization options, write appropriate syntactic rules to
capture the relevant constituent patterns, with syntactic functions to
carry out the mapping.

Subcategorization information comes down to the set of labels we have
defined.

In objects/model/tree-families/rdata.lisp (which is where the
realization specifications are interpreted), we have several lists.
The principal one is the deftype subcat-slot-keyword which includes
all of the sanctioned prepositions (as keyword symbols) and some
symbols for key grammatical relations: :a for 'attribute', :l for
'location', etc.

The subcategorizing labels can be words, polywords, or keyword
symbols included in the literal-subcat-slot-label type. 

In syntax/subcategorization.lisp we have the list (deftype)
   literal-subcat-slot-label

-- 

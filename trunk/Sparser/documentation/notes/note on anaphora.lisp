;; 12/26/14  Note on anaphora

---------
Discourse History

The history is organized by the categories of the individuals
that have been found or created during a run (a call to p or
f, etc). It is zeroed at the start of the run. The bulk of the
relevant code is in analyzers/CA/anaphora3.lisp. Use the function
print-discourse-history to see what is presently recorded.

Recording entries in the discourse history requires the global
parameters *do-completion-actions* and *pronouns* to be on. 
The recording is managed by the completion action on edges.
Complete-edge/hugin calls add-subsuming-object-to-discourse-history
with the edge that was just completed. 

Only individuals are recorded. The 'instantiates' field of their
primary category determines what entry they are added to. 

The start and end positions of the edge are used in setting up
a discourse entry. In general, an edge may be extended by other
adjoined edges without changing the individual it refers to though
of course it will likely have more bindings. This case is
checked for by extend-entry-in-discourse-history to distinguish
larger references from distinct ones. 

Note that this record is currently global. It isn't organized
by sentence or paragraph or other aspects of the document
structure. 

The function discourse-entry takes a category and returns all
of the individuals of that category that have been encountered with
the bounding positions of each instance. 

---------
DefNP (definite noun phrases) reference. Worked up thoroughly by
Candy Sidner in her 1979 thesis. 

In #13 of the December R3 test set:
  "<various things happen> in NRas mutant cells ... in these cells"

Establishing co-reference requires appreciating that we're 
refering to an earlier instance of the category 'cell'. If we can
find a plural instance so much the better, but historically it
has been sufficient just to find the category instance and not
concern ourselves with number concord.

The function dereference-DefNP can be called directly but is the
reference function in the ETF np-common-noun/defnp where it takes
the right edge, the np head as its argument. The NP schema aren't
well enough developed, so another 'launching point' is part of the
referent function on form rules.
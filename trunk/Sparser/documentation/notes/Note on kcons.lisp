(in-package :sparser)

Note on kcons
7/23/14

One of the main reasons that Sparser runs as fast as it does is that
it re-uses pre-build data structures rather than creating them
from scratch each time. This includes cons cells. Any temporary
list structure or other tree form that is built out of cons cells
that is not permanent (and very few things are) should be built
out of kcons cells and reclaimed on some schedule. An example of
this is the 'status' information that's kept on a position to help
coordinate the control structure. The function set-status kpushes
state keywords into a field. The cons cells are reclaimed when 
the chart recycles and the position struct is cleaned. 

The Sparser directory tools/cons-resource/ supplies a recyclable
set of cons cells and the "k" functions to operate over them. 

The file kons.lisp defines function that behave just as you
would expect given their names: kcons and kpush, ktail-cons, which
should be adding an item to the end of a list built out of kcons
cells, and kpop.

Reclaiming is done using deallocate-kons for individual cells, which
sets it's car and cdr pointers to nil and then splices the cell back 
into the list. For entire lists there deallocate-klist. Presently
there is nothing for reclaiming a tree of kconses. 

(The front of the list is *next-cons-cell* — ooking at its value 
just now makes me think there's a bug in the reclaimer since it has
the form ((nil) ((nil ((nil ... and blows out the printers stack.)



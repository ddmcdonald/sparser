;; extending subcategorizations
;; 5/28/19

The first question is whether you want the option of having a semantic grammar.
If so, you your realization specifications need to incorporate an "ETF".
Otherwise you can rely simply on indicating the mapping between the
defined set of subcategorization options, write appropriate syntactic rules to
capture the relevant constituent patterns, with syntactic functions to
carry out the mapping.

Subcategorization information comes down to the set of labels we have
defined, and how they're processed by the complex of operations done
by setup-rdata in objects/model/tree-families/rdata.lisp. This function
is run whenever a category with a realization is defined or redefined.

The first step in setup-rdata is to take all the elements in the
realization expression (all the keyword value pairs) and run them
through decode-subcat-slots, which will divide them into three piles:
arguments, slots, and relations. For instance, if this is the category
we're defining, its rdata ('realization data') is the list of six pairs
in its :realization field

 (define-category decrease
  :specializes negative-bio-control
  :binds ((theme biological)
          (level (:or measurement bio-scalar)))
  :realization
  (:verb "decrease" 
   :etf (svo-passive)
   :for theme
   :in theme
   :oc level ;; 'object complement'
   :to level))

The output of the sort operation is
  arguments: (:verb "decrease" :etf (svo-passive))
  slots: (:for theme :in theme :oc level :to level)

The arguments are applied to the function decode-rdata-heads if the arguments
include an :etf as they do here.

The slots are incorporated into the subcategorization information by
a call to fom-subcategorization ('fom' = 'find or make') which is in
grammar/rules/syntax/subcategorization.lisp.

You can see from the example, that the subcategorization information
in this flat style (which is really optimized for heads that can take
a lot of optional adjuncts) can be either a preposition ("for", "in",
"to") or a defined keyword (:verb, :etf, :oc). The code refers to
all of these equally as 'slots' when the finer distinctions don't
matter.

To add a new slot, you need to augment two defined types.
  1. In rdata.lisp the type is subcat-slot-keyword, which is located
    early in the file, along with several other deftype expressions
    that collectively establish the syntax of realization expressions
  2. In subcategorization.lisp it is literal-subcat-slot-label.
    The fom-subcategorization updated the 'subcat' information on
    a category by first gathering all of the subcat data that the
    new (redefined) category inherits, finally getting to a call to
    override-subcat-patterns which does the work.
       This code draws on the type definition literal-subcat-slot-label
    to determine what kinds of keyword can be incorporated in to
    a subcategorization frome.


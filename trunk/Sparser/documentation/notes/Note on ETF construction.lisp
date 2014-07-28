(in-package :sparser)
;; 6/10/14

The define-exploded-tree-family macro leads to its '/expr' expansion
in objects/model/tree-families/form.lisp that does an apply to the keys
just as define-category does. 

It is a find-or-make operation keyed on the name of the ETF, so you can
completely revise an ETF and it will just re-populate the fields of the
original object. 

The function ietf(name) will call exploded-tree-family-named with that 
symbol and inspect the object that is retrieved.

? (ietf 'passive) 
#<etf PASSIVE>
Type: exploded-tree-family
Class: #<structure-class exploded-tree-family>
name: passive
type: :user-instantiable
parameters: (patient)
labels: (vp vg np/object)
cases: (#<schr s -> np/object vg/+ed >)
description: "For a verb that only appears in the passive."
#<etf PASSIVE>


The function categories-using-etf returns a list of the categories that
reference that etf in their realization. 

? (categories-using-etf 'transitive)
(#<ref-category PHOSPHORYLATE> #<ref-category INDUCTION> #<ref-category ACTIVATE> #<ref-category EXPECT-TARGET> #<ref-category USE>)



The parameters and labels are just stored on the object without modification.
The case expressions are each passed through decode-etf-rule-case which converts
them to instances of the struct schematic-rule.

? (d (car (etf-cases *)))
#<schr s -> np/object vg/+ed >
Type: schematic-rule
Class: #<structure-class schematic-rule>
relation: :passive
lhs: s
rhs: (np/object vg/+ed)
referent: (:head right-referent :binds (patient left-referent))
descriptors: (:length-of-rhs 2 :head-edge right-edge :binding-spec
              (patient left-edge))
original-expression: (:passive
                      (s (np/object vg/+ed) :head right-referent :binds
                       (patient left-referent))
                      (:length-of-rhs 2 :head-edge right-edge :binding-spec
                       (patient left-edge)))
tree-family: #<etf PASSIVE>
form: #<ref-category S>
form-rule: nil
#<schr s -> np/object vg/+ed >


-------------------
The more elaborate process is applying the schema of the ETF to the
particular values they get when they're part of the realization specification
of a category. The result is a set of phrase structure rules.

This starts in decode-category-parameter-list after nearly everything
else about the newly defined (or redefined) category has been established
with a call to setup-rdata with the category and the realization expression
as its arguments. 

All the rdata processing code is in objects/model/tree-families/rdata1.lisp. 
After some machinery for keeping the set of applicable rules straight across
multiple redefinitions of the category (rules that are no longer supported
after a revision are deleted), we end up with a call that passes the category
and rdata expression on to dereference-and-store?-rdata-schema that does
all the work. 

That function first uses dereference-rdata to parse the expression into its
head-word, ETF, mapping, and any additional rules -- all of the symbols and lists
of the rdata expression having been converted to the corresponding objects. 
So if we had this definition

(define-category  retire-from-position
  :instantiates  job-event
  :specializes  leave-position
  :binds ((person . person)
          (position . position))
  :index (:special-case :find find/je
                        :index index/je
                        :reclaim reclaim/je )
  :realization (:tree-family intransitive
                :mapping ((s . job-event)
                          (vg . :self)
                          (np/subject . person)
                          (agent . person))
                :main-verb "retire"
                :additional-rules
                  ((:pp-adjunct (s (s as-title)
                                 :head left-referent
                                 :binds (position right-referent))))))

The head word is the word for "retire" marked as a verb, the ETF is the one
for intransitive, the mapping is an alist where the cdrs of each element
have replaced the original symbols with variables and categories (or words
if the element is a string). Each additional rule has a similar substitution
performed of symbols to categories and strings to words, with the referent
expression passed through unchanged. 

The next step is done by make-rules-for-realization-data using the elements
of the rdata expression that were just identified. That function is in a
different file:  objects/model/tree-families/driver2.lisp. This goes through
various alternative intermediary paths that all come together in calls to
instantiate-rule-schema applied to each of the schema in the ETF plus the
mapping and the category. 

The principal effort of instantiating a rule schema, after spreading it into
its elements, is to sort out whether the original expression on the category
definition used multiple categories to implicitly define multiple rules.
When that dust settles, it comes down to a series of calls to define-cfr where
the resulting rule objects are collected and stashed on the plist of the
category (or individual) they're for. 


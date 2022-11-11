;; extending subcategorizations
;; 5/28/19

The first question is whether you want the option of having a semantic grammar. If so, your realization specifications need to incorporate an "ETF". Otherwise you can rely simply on indicating the mapping between the defined set of subcategorization options, write appropriate syntactic rules to capture the relevant constituent patterns, with syntactic functions to carry out the mapping.

Subcategorization information comes down to the set of labels we have defined, and how they are processed by the parsing machinery and the complex of operations done by setup-rdata in objects/model/tree-families/rdata.lisp. Setup-rdata is run whenever a category with a realization is defined or redefined.

The first step in setup-rdata is to take all the elements in the realization expression (all the keyword value pairs) and run them through decode-subcat-slots, which will divide them into three piles: arguments, slots, and relations. For the example of 'decrease' below, its rdata ('realization data') is the list of six pairs in its :realization field

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

The arguments are applied to the function decode-rdata-heads if the arguments include an :etf as they do here.

The slots are incorporated into the subcategorization information by a call to fom-subcategorization ('fom' = 'find or make') which is in grammar/rules/syntax/subcategorization.lisp.

You can see from the example that the subcategorization information in this flat style (which is really optimized for heads that can take a lot of optional adjuncts) can be either a preposition ("for", "in", "to") or a defined keyword (:verb, :etf, :oc). The code refers to all of these equally as 'slots' when the finer distinctions don't matter.

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


;;--- Keyword lists in rdata.lisp

(deftype head-keyword ()
  "A keyword indicating part-of-speech for a head word.
Should mirror the cases on the *single-words* ETF."
  '(member :verb
           :modal
           :common-noun
           :proper-noun ; one word
           :proper-name ; more than one word - np
           :adjective
           :adverb
           :interjection
           :preposition
           :word
           :quantifier
           :number))

(eval-when (:compile-toplevel :load-toplevel :execute) ; for deftype
  (defparameter *head-aliases*
    '((:noun . :common-noun)
      (:adj . :adjective)
      (:adv . :adverb))
    "An alist of aliases for head keywords."))

(deftype realization-keyword ()
  `(or head-keyword
       (member ,@(mapcar #'car *head-aliases*))
       (member :tree-family
               :mapping
               :additional-rules
               :mumble)))


(defparameter *subcat-aliases*
    '((:s . :subject)
      (:o . :object)
      (:i . :indirect-object))
  "An alist of aliases for subcategorization slot names.")



(deftype subcat-slot-keyword ()
  '(member
    :a ; attribute
    :ac ; adjective complement
    :about :above :across :after :against :among :as :as-comp :at
    :before :below :between :but\ not :by
    :designator :during
    :down :up
    :following :for :from
    :ifcomp :howcomp
    :indirect-object ;;:i ; indirect object
    :in :into
    :like
    :l ; location
    :m ; modifier
    :verb-premod
    #|:next\ to|#
    :object :of :on :onto #|:on\ top\ of|# :over
    :oc ; object complement
    :premod
    :s-comp
    :subject :such\ as
    :to :to-comp :thatcomp :through :throughout :toward :towards
    :under :unlike :upon
    :via
    :whethercomp
    :whycomp
    :with
    :within
    :without


    :past ;;not really
    ;; new, from COMLEX
    :aboard
    :according\ to
    :ahead\ of
    :amid
    :amongst
    :around
    :along
    :away\ from
    :as\ to
    :atop
    :based\ on
    :behind
    :beneath
    :beyond
    :beside
    :close\ to
    :for
    :in\ excess\ of
    :in-excess-of
    :in\ favor\ of
    :in\ terms\ of
    :inside
    :inside\ of
    :kinds
    :near
    :next\ to
    :off
    :off\ of
    :out
    :out\ of
    :outside
    :per
    :p-dir
    :pending
    :prior\ to
    :regarding
    :relative\ to
    :till
    :time
    :until
    :unto
    :up\ to
    :with-regard-to
    ))

;; in grammar/rules/syntax/subcategorization.lisp

(deftype literal-subcat-slot-label ()
  '(member
    :a ; attribute
    :ac ; adjective complement
    :as-comp
    :ifcomp
    :l
    :m
    :howcomp
    :indirect-object
    :object
    :premod
    :subject
    :thatcomp
    :s-comp ;; for verbs like "Let (me know ...)", "Make (John ride the bike)"
    :to-comp
    :oc ; object-complement
    :verb-premod
    :whethercomp
    :whycomp
    ))


------------------------

sp> (irr 1505)
referent: (funcall assimilate-subject left-referent right-referent)
#<PSR-1505 s → {np vp}>

Assimilate-subject is in syntax-functions. It takes a subj and vp argument, the referents of the two edges being composed. It looks at a lot of specific cases, including whether the vp is a control-verb.

There are a great many assimilate-X functions. They all end up in calls to code in rules/syntax/subcategorization.lisp, starting with assimilate-subcat. The job of all the assimilate functions is to add a term to a head using bind-variable. Assimilate-subcat determines what that variable is by consulting the subcategorization information of the head. It calls subcategorized-variable to look this up, with head, subcat-label, and item as arguments. Assuming a variable is identifed assimilate-subcat does the variable binding to complete the operation.

Subcategorized-variable checks for special cases and then invokes find-subcat-var. The job of find-subcat-var is to collect up the subcat-patterns for the head then iterate through them to determine whether their type restrictions are met. In the process find-subcat-var has its own set of special cases involving possible ambiguities that have to be sorted out.

To retrieve the relevant subcat-patterns, find-subcat-var call known-subcategorization? on the head. They are tested by calls to satisfies-subcat-restriction?.

//// say something about subcategorization-frame objects

A subcategorization pattern is a simple four-slot struct:

(defstruct (subcat-pattern
             (:constructor make-subcat-pattern
               (label restriction variable source))
             (:conc-name #:subcat-)
             (:print-function print-subcat-pattern))
  label restriction variable source)



=== digression to dsc
sp> (dsc 'prevent)
Subcategorization options for prevent
    :from  v/r: perdurant  var: theme
          from prevent
    :OBJECT  v/r: perdurant  var: theme
          from prevent
    :SUBJECT  v/r: (or #<ref-category PHYSICAL-AGENT>
                    #<ref-category SOCIAL-AGENT>)  var: agent
          from prevent
    :prior to  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                     #<ref-category AMOUNT-OF-TIME> #<ref-category END>)  var: before
          from temporally-localized
    :upon  v/r: process  var: following
          from temporally-localized
    :over  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                 #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :on  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :in  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :for  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :following  v/r: process  var: following
          from temporally-localized
    :during  v/r: process  var: during
          from temporally-localized
    :before  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                   #<ref-category AMOUNT-OF-TIME> #<ref-category END>)  var: before
          from temporally-localized
    :at  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME> #<ref-category END>)  var: before
          from temporally-localized
    :before  v/r: process  var: preceding
          from temporally-localized
    :at  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
               #<ref-category AMOUNT-OF-TIME>)  var: timeperiod
          from temporally-localized
    :after  v/r: (or #<ref-category TIME-UNIT> #<ref-category TIME>
                  #<ref-category AMOUNT-OF-TIME>)  var: after
          from temporally-localized
    :after  v/r: process  var: following
          from temporally-localized
    :with  v/r: certainty  var: certainty
          from temporally-localized

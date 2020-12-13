;; defining-comparatives
;; 12/10/20

(in-package :sparser)

There are a number of different ways to define an adjective, most of which will also then also make its comparative and superlative counterparts ("happy", "happier", "happiest").

* define-adjective

The most direct way, and the common final path of many other others, is the function define-adjective.

(defun define-adjective (string
                         &key
                           form super-category
                           mixin bindings
                           rule-label discriminator)
  (unless form
    (setq form 'adjective))
  (define-function-term string form
    :super-category (or super-category 
                        (super-category-for-POS :adjective))
    :rule-label (or rule-label
                    'modifier)
    :mixins mixin
    :bindings bindings
    :discriminator discriminator
    :tree-families '(prenominal-adjective)
    :subcat-info 'adjective))

As you can see, this is just a wrapper on define-function-term. It creates a category for the adjective as well as an individual that instantiates the category and becomes the referent of the rewrite rule that's made for the adjective word.

Define-adjective does not create comparative forms for the adjective. And in general it should never do this sort of thing automatically. There are many cases where the adjective does not have morphological comparative form ("circumstantial"), though in such cases they can be composed with "more" or "most" to achieve the same semantic effects. 

* As attributes

We have a rich conception of attributes adjectives and an efficient means of creating them through auto-generated categories and rules. A statement defines an attribute. (These are in model/core/mid-level/attributes.lisp.)
   (define-attribute height)

And other statements assign words as symbolic values to this attribute using the automatically constructed instance-defining function.
   (define-height "tall" :dir :+)

These adjectives are scalar by definition, and the comparative and superlative related words are formed using morphological rules. To accommodate irregular forms they can be passed in as part of the call.
   (define-goodness "good" :dir :+  :er "better" :est "best")

** setup-comparatives

The standard final place for setting up the properties of the comparative (superlative) forms of an adjective is setup-comparatives in grammar/rules/syntax/comparatives.lisp. It is called by attribute-defining functions (define-height), and from the Comlex-based call to setup-adjective after a setup function prepares the arguments to the call. 



* In the realization specification of a category

You can define adjectives by using the realization keyword :adj as in

define-category low :specializes predication
  :binds ((theme (:or scalar measurement biological)))
  :realization (:adj "low"
                :s theme))

The reason we've done this has been to because it is an easy way to set up the needed parsing properties. In this example we are putting a restriction on what subjects are sensible when the adjective appears in copular forms ("the level is low"). We are creating a more systematic alternative for this through subcategorization mixins for adjectives like the ones we have for verbs (see the note on defining-verbs-by-inheriting-patterns). 

Adjectives created by this method go through the adjective case of the make-rules-for-head method (rules/tree-families/morphology.lisp). Unless the global flag *inhibit-constructing-comparatives* is up, this includes the comparative forms of the adjective.

There are recipes for constructing the comparative and superlative forms of an adjective (make-comparative/superlative).


To make the actual category we call define-comparative (and  define-superlative). These end up making rules whose category labels are comparative-modifier (superlative-modifier), which is different than what we get through other paths.

These two operations are lumped together in the functions make-comparative-rules and make-superlative-rules.




* Via Comlex or the morphology of unknown words

When the tokenizer returns a word that does not already have a definition, we look at any explicit morphology it has to see if we can use it to determine the word's part of speech (e.g. "..er", "..tion"). Another path is finding the word in the Comlex dictionary where the entry for it includes that its an adjective. 

Both paths go to the setup-adjective function. If the source was morphology then we use define-adjective but don't created any comparatives. 

If the source is Comlex we can be more explicit, since it will record whether the words for the adjective's comparative and superlative forms. It passes these to setup-anonymous-graded-adjective, which calls create-scalar-attribute to provide the attribute argument for the final call to setup-comparative.

The name of anonymous attribute is formed by combining the adjective with "-ness", and the category specializes scalar-attribute. 


* Via the shortcut macro 'adj'

The operations here are redundant with a call to define-adjective, and it will be considerably simplified to take advantage of this.

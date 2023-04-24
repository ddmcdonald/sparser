;; "words-category-colision"
;; 11/16/21

I've noticed that an ACUMEN configuration can't use our vocabulary from the blocks world, in particular I wanted its definition of "block". After checking its grammar configuration (init/config/grammars/acumen-grammar.lisp), the problem seemed obvious -- the blocks-world grammar-module had been left out. Here is a snippet of that file, with the module now included. (See the note on grammar-modules for more information.)

;; (include-grammar-module *middle-east*)
;; (include-grammar-module *Banking*)
;; (include-grammar-module *ISR*)
;; (include-grammar-module *waypoints*)
(include-grammar-module *blocks-world*)
;; (include-grammar-module *biocuration*)

That extension loaded without complaint (e.g. it didn't turn up any category loading-time conflicts), however it did not work. Here's what happened with my first try. Essentially nothing composed. 

sp> (p/s "the red block")
the red [block]
                    source-start
e0 e1               "the" :: #<word "the">, THE
e2    COLOR-VALUE   2 "red " 3
e3    BLOCK         3 "block" 4
                    end-of-source
I first thought that we had two edge over 'block' and the wrong one was removed, so I looked at the behavior of the chunker, which given two edges over a word, such as a noun and a verb, will drop out the one that is not consistent with the rest of the chunk that it believes in.

sp> (trace-chunker)
t
sp> (p/s "the red block")
Identifying the chunks in #<sentence p1 -- p4>

e0 e1               "the" :: #<word "the">, THE
e2    COLOR-VALUE   2 "red " 3
e3    BLOCK         3 "block" 4
                    end-of-source
Start chunk p1 "the": 2 edges, forms: (ng)
Moving on to p2 "red"
Its vector has 1 edge: #<edge2 2 color-value 3>
Remaining forms (ng)
Moving on to p3 "block"
Its vector has 1 edge: #<edge3 3 block 4>
No remaining forms
Delimited chunk without a head: #<chunk nil p1 "the red" p3>
Chunk ev #<edges starting at 1> has edges (#<edge0 1 "the" 2> #<edge1 1 the 2>)

e3    BLOCK         3 "block" 4
                    end-of-source
Start chunk p3 "block": 1 edges, forms: (vg)
Delimited chunk: #<chunk (vg) p3 "block" p4>
the red [block]
                    source-start
e0 e1               "the" :: #<word "the">, THE
e2    COLOR-VALUE   2 "red " 3
e3    BLOCK         3 "block" 4
                    end-of-source

That was informative. Since the chunker didn't drop any edge, the problem must be somewhere else. I next looked at the definition of the category for block.

sp> (ic 'block)
#<ref-category BLOCK>
  plist             = (:super-categories..
  symbol            = category::block
  rule-set          = nil
  id-counter        = 54
  slots             = nil
  binds             = nil
  mix-ins           = (#<mixin CAN-CHANGE-LOCATION>)
  realization       = (#<realization for block: "block" verb>)
  lattice-position  = #<top-lp block->negative-bio-control  2572>
  operations        = #<operations for block>
  instances         = #<hash-table :TEST equal :COUNT 0 {1075C4BF53}>
  rnodes            = nil

That was both insightful and puzzling. I appears to be a mixture of two definitions. The mixin comes from the blocks world. The lattice-position on the other hand, is from biology.

Location was not helpful. This reflects a known problem that the location recording does not maintain a representation of all of the places where a category (or a word) is defined.

sp> (loc 'block)
#P"SPARSER:BLOCKS;VOCABULARY.LISP"

Looking at the rules recorded with the category provided a clue, since it included the word "blockage", providing another term to try with loc.

sp> (loc "blockage")
#P"SPARSER:BIO;GENERAL-VERBS.LISP"

That provided the crutial information. This is a case of two categories with the same name that are realized by the same word. When this happens, the definition that loads last takes over the grammatical properties of the word.

sp> (has-rules? "block")
#<word "block">
(#<PSR-196648 block → "block">)

sp> (rdata 'block)
(#<realization for block: "block" verb>)

sp> (d (car *))
#<realization for block: "block" verb>
  category  = #<ref-category BLOCK>
  etf       = #<etf passive/with-by-phrase>
  mapping   = ((agent . #<variable cause>) (patient . #<variable comlex-object>)..
  mumble    = (#<m-rdata: BLOCK, svo v="block" (#<variable cause>..
  locals    = nil
  subcat    = nil
  heads     = (:verb #<word "block"> :common-noun #<word "blockage">)

Here are the two category definitions. The one that loaded first was from grammar/model/sl/blocks-word/vocabulary.lisp. Note that this definition was set up so we could apply it to the specific named blocks on the table.

(define-category block
  :specializes rectangular-solid ;; n.b. includes partonomy
  :mixins (can-change-location)
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "block")
  :realization (:proper-noun name))

The second is from model/sl/biology/general-verbs.lisp, and it contains a question that had been forgotten and not answered. We have now empirically established that the last category to load is going to determine the properties of the word.

(define-category block :specializes negative-bio-control
  :realization
     (:verb "block"
      :noun "blocking"
      :etf (svo-passive)
      :with object))
;; which one wins? 
(define-category block
  :specializes negative-bio-control
  :realization
    (:verb "block"
     :etf (svo-passive)
     :noun "blockage"))

As described pretty thoroughly in the note on defining categories, Define-category retains the identity of the object that was initially created for the category, and then overwrites any field that is specified by any new definition, particularly the realization, but it does not clear any of other field where the new definition didn't specify anything. That explains how the mixin about movement that came in with the first definition in the blocks world is still present after the two later definitions have been evaluated.


General design rule is to never write the category for a frequent word using the word itself as the name. Using the word to name the category is quick and simple, but was we've seen it will bite us once any other definition of a homonym like "block" is added when you aren't aware of the colision.

Here are my new definitions, where the category names now incorporate a bit of each category's meaning. (I find using the slash character in a symbol to be an convenient way to indicate variations on some base.)  

(define-category block/prevent
  :specializes negative-bio-control
  :realization
     (:verb "block"
      :noun ("blocking" "blockage")
      :with object)
  :documentation "The action of 'blocking' a process
 an involve introducing some sort of 'blockage' into the
 path the process would go through. We can also speak about
 the act of blocking', which means that this is a kind of
 process/result relationship.")

(define-category block/object
  :specializes rectangular-solid ;; n.b. includes partonomy
  :mixins (can-change-location)
  :instantiates :self
  :index (:permanent :key name)
  :lemma (:common-noun "block")
  :realization (:proper-noun name)
  :documentation "The Colins dictionary lists nine different
 possibilities for what a 'block' refers to, form a block of buildings
 in a town to a block of tickets or shares. Right now we also have
 the meaning of blocking a process, as block/prevent.")

After a hicccup to promulate the changed name block/object to the one file that instantiates some of them, we now have the desired result.

sp> (setq *chunk-sentence-into-phrases* nil)
nil
sp> (p "block")
                    source-start
e0 e1               "block" :: BLOCK/PREVENT, BLOCK/OBJECT
                    end-of-source
:done-printing

sp> (ppev/s 1)
#<edges starting at 1>
  top-node = multiple-initial-edges
  number-of-edges = 2
  edge-vector = #<edge0 1 block/prevent 2>
                #<edge1 1 block/object 2>

Turning off the chunker makes sure that we are seeing the raw set of possible edges unaltered by any default judgments the chunker might make. Indeed, given this noun, verb pair the chunker is wired to prefer the verb, but with context the chunker selects the appropriate sense.

sp> (p/s "the red block")
[the red block]
                    source-start
e6    BLOCK/OBJECT  1 "the red block" 4
                    end-of-source
(#<block/object 106754> (has-determiner (#<the 119> (word "the")))
 (modifier
  (#<has-attribute 106752> (attribute (#<attribute 456>))
   (value (#<red "red" 2638> (name "red"))) (item (#<block/object 1362>)))))


;1-13-20, Molly's Notes

; ~Project Goals~


; ~VerbNet-Sparser~

; The main goal of this integration was to extract syntactic and semantic information from VerbNet; more specifically, to make use of their groupings of verbs, and their pre-packaged "syntactic frames".

;As of right now, verbnet classes are conceived of as mixins for sparser categories (that is, a specific verb in Sparser inherits class information from these mixin objects). The majority of the VerbNet parsing and thought and effort went into the design of these mixins, which are contained in vn-mixins.lisp. They contain all the possible syntactic frames associated with the verb class (these syntactic frames are generated mixin-categories in their own right, as explained below), all the semantic roles bound by the category, all of the lemmas associated with the category, and finally role-mappings.

;vn-frames.lisp contains the objects we generated that correspond to VerbNet syntactic frames, providing both syntactic and semantic scaffolding for the realization of VerbNet classes. The future work is mostly concenrated in this file, because we need to build out these categories a lot more to specify the syntax in a mumble-friendly way. This is probably going to have to be done by hand, becuase it takes some thought to decide how the frames translate.

;The issue is that the verbnet syntactic frames are not entirely consistent in their representation, and there are quite a few of them, so the collection needs to be culled for the most useful information.


; ~MetaNet~

; The main goal of this project was to map the MetaNet concepts and connections onto EciPedia, to represent metaphorical relationships between ECIs, which I still think would be a very powerful aspect of the ontology. This would be extremely useful in identifying and properly parsing non-literal language, especially implicit metaphors. The main roadblock here is a lack of data - only a small percentage of the MetaNet is available, and it’s a very oddly specific grouping of metaphors, most of which don’t map cleanly onto EciPedia.

; The MetaNet has a complex hierarchy with superframes and subframes, and parent metaphors and child metaphors, but it’s very difficult to visualize and easily traverse this architecture on the web interface. If someone could get access to enough of the data and translate it into a network of LISP objects, it could be a very nice logical space. But a lot of fat can be cut from it as well: it should probably be distilled into a much smaller set of more “fundamental” relationships between certain super-frames.


; ~Notes on VerbNet~


; ~Typos, Formatting Oddities Still to be Handled~

; Some strange formatting occurs in the original VerbNet xml which leads to oddities in our generated categories. Occasionally, when several possible prepositions are possible in a syntactic frame, they'll be separated by vertical bars, leading to the confusing "|\||" realization keyword showing up in our vn-mixins.lisp.

;There are also various NILS scattered throughout our generated categories. NILS in role restrictions mean that there is a VN role category without a KRISP equivalent (i.e. "comestible"). These should probably just be removed from the restrictions entirely, but they often show up in context of a logical operator, so those cases need to be specially handled. A NIL verb realization for a mixin category means that this is a supercategory that has no lemmas corresponding to it - only its sub-classes have lemmas. These super-classes essentially just serve to pass on information to their sub-classes, but don't have any realizations. Whether these should be treated as separate categories is an open question.


; ~Inconsistent Labeling~

; Sentential VP complements are called “NP”s with a special feature that indicates what type of sentential complement it is: “that_comp”, “sentential”, “be_sc_ing”, etc. So, in the syntactic frame NP-V-S_ING, the syntactic restriction looks as follows:
;    <SYNTAX>
;                     <NP value="Agent">
;                         <SYNRESTRS/>
;                     </NP>
;                     <VERB/>
;                     <NP value="Theme">
;                         <SYNRESTRS>
;                             <SYNRESTR Value="+" type="be_sc_ing"/>
;                         </SYNRESTRS>
;                     </NP>
;                 </SYNTAX>

; Would be much easier to traverse each constituent and its restrictions if the constituents matched those in the frame name.

;Based on a conversation with Martha over email, the numbers associated with each frame ("description numbers") appear to have no specific meaning.

; Inconsistency with PP complements - the main problem is when we have a clause introduced by a preposition, such as: “I adjusted to waking up early” or “Martha thought about her going to the pool.” These frames are treated inconsistently by VerbNet.  Sometimes it calls this frame "NP V S_ING", and other times, inexplicably, calls it "NP V PP S_ING" - which would seem to imply that an entire other prepositional phrase comes before the S complement, which is incorrect.

;In the VerbNet frame role-bindings, sometimes there is an "AND" logic, sometimes there is an "OR" logic, and sometimes there is "AND/OR" - the AND/OR is the one we haven't properly handled, leading to some bad code in some of the generated mixins in vn-mixins.lisp. I imagine these should be handled just as a standard OR.


; ~Aspects not fully fledged out - by us and by VerbNet~

; Preposition types - VerbNet often refers to groupings of prepositions rather than specific prepositions in the spelling out of syntactic frames. These groupings are: SRC, LOC, DEST, DEST_CONF, DEST_DIR, and PATH, but there doesn’t exist a set of definitions for these (even though some are self-explanatory) nor a comprehensive list of which prepositions apply to which groupings. Having this would make translating/mapping the VerbNet frames into Sparser a lot easier. It might be worth 

; Realization keywords used in vn-mixins.lisp - There are a fair amount of realization-keywords I've used in vn-mixins.lisp that do not exist in Sparser and thus the file won't load yet. I did this on purpose, mainly to preserve the frame information that we don't have a way of handling yet in the Sparser realization vocabulary, so the original material can be easily accessible as you continue to work out these mappings. Keywords like "wh_extract" and "how_extract" might best be construed as "scomp", but I left these as they are so that you can at least look over the diversity of named constitnets in VerbNet, in case it turns out that any of them prompt the addition of a new Sparser realization keyword.

;I was recently experimenting with using the VN preposition types as realization keywords in the Sparser realizations, to save space and avoid adding a separate realization keyword for each preposition that could be used in a particular frame - this leads to really long realizations. Once again, this is there so that the original VerbNet conception of the frame is explicit for you to read through and decide in the future how to handle in Sparser.


;~Ideas for Sparser, etc.~

;I think it would be a good idea to incorporate VerbNet's preposition groupings into Sparser - we already sort of do this with the :l keyword. They're grouped not syntactically but semantically, so it could map very nicely onto mumble's frames and it would help cull the number of specific prepositions we include as keywords in mumble realizations. 

;A greater effort towards an explicit mapping between ecis and sparser categories could also be helpful, especially if the MetaNet project goes somewhere and we want to incorporate some sort of figurative parsing abilities into Sparser.




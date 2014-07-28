
Notes on switch settings -- toplevel description
Version: 6/3/14

The details of Sparser's operations are controlled by the settings of
several dozen parameters. The values of most of these parameters can be
changed during a session, even while an analysis is underway. They are
referred to as "switches" by analogy to the switches that control what
path a train can take. 

The defparameter forms for the individual switches are distributed
throughout the code. They are bundled into coherent sets with particular
values in the file drivers/inits/switches2.lisp. This note describes
the major alternatives and what you get by making one choice of setting 
versus another. 

The functions that define these coherent bundles of settings are all
in the file drivers/inits/switches2.lisp. The ones that are actively
in use are listed below. To see the current switch setting an a listing
of the more interesting individual settings use switch-settings:

? (switch-settings)

Sparser switch settings: just-bracketing
              Chart-level protocol: new-toplevel-protocol
                     unknown words: capitalization-digits-&-morphology
       capitalization FSA dispatch: no-op
                       PNF routine: scan-classify-record
treat single cap'd words as names?: t
    edges over new digit sequences? t
        brackets for unknown words? t
               do the forest level? nil
       segment/forest transition is move-when-segment-can-never-extend-rightwards
          protocol at forest level? parse-forest-and-do-treetops
                do debris analysis? t
     do heuristic segment analysis? nil
            do conceptual analysis? nil
 do domain modeling and populating? nil
                       do new DM&P? nil
         do strong domain modeling? nil
    do general actions on treetops? t
           collect salient objects? nil
      include property-based edges? t
               Length of the chart: 250
       Length of the edge resource: 500
nil


------------------------
(top-edges-setting/ddm)   -- :top-edges/with-extras-and-negatives
 This is the classic setting. It does a top-edges analysis, follows
 the standard protocol of scanning successive segments and then
 doing a forest-level parse. With the normal set of grammar modules
 it will do heuristic, debris, and conceptual analysis but no form
 of domain modeling. Unknown words are ignored. 
 This gives you an analysis based on the loaded semantic grammar
 and nothing else. 
 
-------------
(tuned-grok)
 An adjusted version of the setting used for the GROK project where
 we tried to make sense of everything. It starts with the top-edges,
 ddm setting and adds the COMLEX lexicon to handle unknown (unmodeled)
 words. Single capitalized words are treated as names. The domain modeling
 heuristics are turned on, in particular it will make edges over every
 segment if that wasn't done by the 'proper' grammar and try to
 make sense of them. It takes note of simple textual relationships 
 (head, adjacent, several others)
 The default text echo is set to display the bracketing analysis. 

---------------
(fire-setting)
 This is the present default, building on tuned-grok. It changes the 
 unparsed segment treatment to be :simple, which spans the segment with 
 an edge but doesn't think about it much. 
 It  does a (turn-off-debugging-flags), some of which were turned on for Grok. 
 It turns on the period-hook so sentence and paragraph structures are created. 

--------------
(bio-setting)
 I'm experimenting with this as a basis for Big Mechanism.
 The builds on tuned grok, but it turns COMLEX off so that all the words
 have to be explicitly modeled or they will be seen as unknown. It also
 turns off the period hook. It turns on the facility to treat a sequence
 of tokens with no space between them as a single entity ("p100").

-------------
(c3-setting)
 Strictly for C3 development. It changes the toplevel protocol to a tailored
 strictly increment analysis. Designates a special sentence-level container
 for representing situations per se, and of course does not use COMLEX since
 it expects every worked to be defined beforehand. 


-------  special purpose settings --------

(word-frequency-setting)
 Turns off all possible parsing operations, including drawing from
 COMLEX and all heuristics. Sets up the operations on terminals
 and the default parameters for tabulating word frequency.

(just-bracketing-setting)
 Starts with the word-frequency setup then adds in enough of the 
 'bottom' of the parsing operations to insert brackets and delimit
 segments (phrases, chunks). Allows unknown words. 

(just-bracketing-with-comlex-setting)
 Just what it says.

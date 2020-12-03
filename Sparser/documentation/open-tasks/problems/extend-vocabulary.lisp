
-*-org-*-
#+DATE: 12/3/20

* Automatically defined word in the wrong POS

sp> (p "the study’s objective")
the study’s objective

                    source-start
e2    THE           1 "the " 2
e4    STUDY         2 "study’s " 5
e5    MODIFIER      5 "objective" 6
                    end-of-source

sp> (loc "objective")
:morphology

** We presently prefer POS judgments based on morphology over always using Comlex.
  
+ The 'ive' suffix was detected by a call to affix-checker,
  which determined it was an adjective and made the unknown-word
  handler (assign-morph-brackets-to-unknown-word) call setup-adjective

** Maybe we should augment the morph. with Comlex?

sp> (comlex-entry "objective")
((noun (:features ((countable))))
 (adjective
  (:comparative ("more objective") :superlative ("most objective") :subc
   ((adj-pp :pval ("about"))) :features ((gradable)))))



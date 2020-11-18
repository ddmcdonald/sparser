;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020 SIFT LLC. All Rights Reserved
;;;
;;;    File: "score-issues"
;;;  Module: "grammar/model/sl/biology/
;;; version: November 2020

;; This is a file of parsing problems that we need to address. It is a poor-man's
;; ticket system, giving the example that illustrates the problem, when it was
;; identified, the larger context (e.g. source article), and any notes about it
;; that come up in investigating it.

;; The goal is to avoid duplicate effort and to make it easy to notice
;; and commonalities. To that end each issue is "owned" by a specific person

['main purpose'  David
Mark 11/18/20 11:22 -- What leads Sparser to get/not get the major clauses, even if not the connectives? In this case, it appears
all I get is shards. I was hoping to find "the main purpose of the present series of experiments was ..."

Below I see "the main purpose" by itself, and I dont know how I'd connect it to the (BE (Predicate (test..)))

"Although the main purpose of the present series of experiments was to test whether source memory is improved for individuals with a history
of cheating relative to individuals encountered in other situations, there was one additional consideration for the first three experiments reported
here." ]


[unknown attributes/suffixes
Mark 11/18/20 11:55  In looking at one paper, I wonder if vocab might also be an issue with unknown attributes/scales that are variables,
like "attractiveness" -- might we think about a way to cons together these when we see "ness" on something we know?

Could notice the 'ness' while we're determing the words part of speech
and look for a define base form.
Files:
*suffix-pos-table* => chart/words/lookup/morphology
assign-morph-brackets-to-unknown-word => rules/syntax/affix-rules
setup-common-noun => rules/brackets/assignments  ]


["rate", "ask"
Mark 11/18/20 1:00  Need a verb form of "rate" as in produce a rating.

Also better treatment of "asked to <do>"

(p/s-all "They were asked to rate the attractiveness of 36 facial photographs that were presented in random order during the exposition phase.")  ]


["conduct"
Mark 11/18/20 1:07 We should be able to nail this, I should think.  Actor of conduct is not calculations. This is probably an issue with the CONDUCT definition.

Sentence: "All power calculations were conducted using G•Power (Faul, Erdfelder, Lang, & Buchner, 2007). "  ]


["report"  David
Mark 11/18/20 1:12  I think the same issue with "is reported", "was reported", "we report that".  Subject is the info object.
Sentence: "Partial η2 is reported as a measure of the size of an effect."

(p/s-all "We report that faces are ugly.") -- doesnt get the roles at all.
((#<interlocutor "person-and-machine" 213> (NAME "person-and-machine"))
(#<report 106317> (PRESENT #<ref-category PRESENT>))
(#<face-perdurant 106321> (THAT-REL T) (PRESENT #<ref-category PRESENT>)) (#<ugly "ugly" 106320> (NAME "ugly")))  \


["better for .. than "  David
Mark 11/18/20 1:19  Treatment of "better for .. than for ..  and probably some other variations.
Sentence: "First, we tested the central hypothesis that source memory is better for faces encountered in a cheating context than for faces associated
with a context of trustworthiness. "  ]


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2005  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "ERN"
;;;    Module:   "worksace;"
;;;   version:   February 2005

#| Workspace for completing the ERN grammar and setting up to do style 
   work by collecting statistics.  |#

;; Initiated 2/1/05 by cribbing from "workspace;Magi"

(in-package :sparser)

;;--- utility

(unless (fboundp 'cl-user::def-string)
  (break "No definition for cl-user::def-string.~
          Back out of loading this file"))

(defun ed-S (lp-namestring)
  (ed (expand-namestring lp-namestring)))

;;;----------------
;;; examples to do
;;;----------------

#|  From 'Apple Q3 2004.rtf'
CUPERTINO, California -- July 14, 2004 -- Apple today announced
financial results for its fiscal 2004 third quarter ended June 26, 2004.
For the quarter, the Company posted a net profit of $61 million,
or $.16 per diluted share. These results compare to a net profit of
$19 million, or $.05 per diluted share, in the year-ago quarter. 
Revenue for the quarter was $2.014 billion, up 30 percent from 
the year-ago quarter. Gross margin was 27.8 percent, up from 
27.7 percent in the year-ago quarter. International sales accounted 
for 39 percent of the quarter’s revenue.

The quarter’s results include an after-tax restructuring charge 
of $6 million. Excluding this charge, the Company’s net profit 
for the quarter would have been $67 million, or $.17 per diluted share. 
|#

(defun ern ()
  (p "Apple today announced financial results for 
its fiscal 2004 third quarter ended June 26, 2004."))


;;--- from Who's News/DCI/

;(vinken)
;  is in [model/sl/Who's News/test set] and see vinken/markup
;  that's got all the DCI markup. The test set has a lot of other
;  examples
;(ed-s "model;sl:whos news:job events:test set"

(defun agnew () ;; 891102-0192
  (p "Hanson PLC (London) -- Rudolph Agnew, 55 years old and
 former chairman of Consolidated Gold Fields PLC, was named 
 a nonexecutive director of this British Industrial conglomerate."))


;;--- from 1998 IGW paper

(defun totaled ()
  (p "net income in the third quarter ended Nov. 30, 1995 totaled
$55.9 million, a 34 percent increase over net income of $41.8 million
in the comparable quarter of the preceding fiscal year"))

(defun increased ()
  (p "net income in the third quarter ended Nov. 30, 1995 increased
34 percent to $55.9 million as compared with net income of $41.8 million
in the comparable quarter of the preceding year"))



;;;--------------------
;;; what's in progress
;;;--------------------

;(totaled) (p "fiscal year")
; 4/11 Working on getting "fiscal" to be a general subtyping word and
; mostly succeeded. Once defined, subtype-the-head will be fed the category
; fiscal but the timing is off since *head-edge* isn't defined yet so it
; would have nothing to apply to unless we stipulate the direction and
; go for right-referent, which does have a value, or even add the edge
; to the function call in the schema.
;(ed-s "model;core:time:fiscal2")
;(ed-s "grammar;rules:tree-families:adjective phrases")
;Fan out of change in function field to be a list possible to other
; cases, but they seem to be immediate cases of the referent being decided
; by the function and no secondary to the head like this case.
;(ed-s "grammar;rules:tree-families:pre-head np modifiers")
;(ed-s "grammar;rules:tree-families:NP")
; And conceivably to "model;core:people:names to people" where we have
;  a directly defined rule.
; After "fiscal year" works, clean up the relevant old cases below it in
;(ed-s "model;core:time:fiscal2")

;(totaled)
;(ed-s "model;dossiers:change-in-amount verbs")
;(ed-s "model;core:amounts:amount-change verbs")
;(ed-s "model;core:amounts:amount-chg relation")

;(vinken)
;3/16 Its not mapping "Mr. Vinken" to the earlier "Pierre Vinken"
; interpret-name-as-person
; Ref/function Ref/binding Dispatch-on-rule-field-keys Referent-from-rule
; Make-default-binary-edge.

;3/17 The first run of vinken blows up within "Economist Newspaper Ltd." in
; do-treetop because it's walking treetops that are actually components of
; the company name and so have filled 'used-in' fields.

;3/16 We have both an employed-as and a has-title category, which is redundant,
; and it's raw rules rather than schema application.
;(ed-s "model;sl:pct:person+title")
;(ed-s "model;sl:pct:employment object")
;(ed-s "model;sl:pct:position object")

;3/17 Need rule/technique for join-company + board-of-directors

;3/10 Extend the adverb schema for calculated-day, etc. Also for
; report-verb + calculated-day, ditto for weekday

;3/14 for vinken, there's a disconnect somewhere in the creation
; of the sequence for "Pierre Vinken" and accessing it from the
; name-words within it, that dies in Names-including-name-word
;(ed-s "model;core:names:name words")
;(ed-s "model;core:names:object")
;(ed-s "model;core:collections:operations1")

;3/17 the duplication check can't tolerate as-title done by hand in
;(ed-s "model;core:titles:rules")
; via define-cfr or Def-cfr/expr
;(ed-s "objects;rules:cfr:duplicates")
; Commented out the problematic cases in
;(ed-s "model;dossiers:job events")

;3/14 Fix the propagation of the year into the date object via
; the operation that makes the new edge, and fix the threading
; w.r.t. the workbench -- wb/Treetops-below-edge
;(ed-s "analyzers;psp:edges:looking under")

;(ed-s "model;core:time:anaphors1")  ;; calculated-day
;(ed-s "model;core:time:phrases1")
;(ed-s "grammar;rules:syntax:tense")
;(ed-s "grammar;rules:tree-families:adverbs")
;(ed-s "grammar;rules:tree-families:that comp")
;(ed-s "model;dossiers:deictic times")

;(ed-s "model;dossiers:loader")

;(ed-s "objects;model:lattice-points:v+v objects")
;(ed-s "objects;model:psi:make")
;(ed-s "objects;model:lattice-points:structure")
;(ed-s "objects;model:bindings:index")
;(ed-s "objects;model:bindings:make1")
;(ed-s "model;core:numbers:ordinals3")
;(ed-s "model;core:collections:operations1")

;(ed-s "model;sl:ERN:financial data2")
;(ed-s "model;core:time:fiscal2")
;(ed-s "model;sl:ERN:earnings report2")
;(ed-s "model;sl:ERN:loader1")
;(ed-s "model;dossiers:financial data items")   ;; "results"

;(ed-s "grammar;model:sl:reports:object")
;(ed-s "grammar;model:sl:reports:rules")
;(ed-s "grammar;model:dossiers:report verbs")


;(ed-s "grammar;rules:tree-families:NP")
;(ed-s "model;sl:pct:board of directors")

;(trace-pnf)    ;(untrace-pnf)
;(trace-edges)  ;(untrace-edges)
;(ed-s "objects;traces:psp1")
;(ed-s "objects;traces:edges1")

;(ed-s "objects;traces:psp1")
;(Trace-network-flow)  (unTrace-network-flow)
;(Trace-brackets) (unTrace-brackets)
;(Trace-segments) (unTrace-segments)
;(Trace-treetops) (unTrace-treetops)
;(Trace-extension) (unTrace-extension)



;This will get things into interesting new territory
(defun h1 () (p "we met Peter Hoe here"))



;;--- Always want this on top since it's got the collective memory
;;    of where things are.

(ed-s "init;changed files")


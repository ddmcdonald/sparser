;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;sl:whos news:tests:"
;;;  version:  May 1991      system version 1.8.5

(in-package :CTI-source)


;;---- edge protocol
;;
(p "head of GM's international operations")
;   the 's forces it to the forest level, once there it will quickly
; form a co's -- since that can be extended we should move back to
; scanning but we don't.
;  [[  fixed  5/25,26 by extending the alg to leave the forest level
; as soon as a rightmost-edge is formed that can extend, and then by
; putting in company-possessive as a determiner triggering the heuristic
; to close spans on the basis of an unused pending determiner ///////////
; /// still leaky !!!!!!  and then rules for "company-activities", as a
; grab bag for these phrases that can combine with "of" and then with
; titles.

; 8
;(p "Ralph S. O'Connor,")
;  Proper name won't get the "O'" polyword unless Reuse-last-scan sets the
;  just-scanned position unassessed, but then single word titles don't get
;  parsed in belmoral,
;  ///more specifically, this citation gets stuck delimiting at p5
;(p "a group vice president and president of")
;    1 2      3     4          5    6           7  8


(p "of Golin/Harris Communications, a unit of Shandwick PLC.")
;  without the "of" it composes    [[ fixed by change to forest protocol ]]

;(p "of Citizens & Sothern Corp.")
  -- Corp. falls off the end --??? is it the
;    polyword that's hanging off "&"  (re. "& Co.") ????
;  [[ may have been -- the pw was pulled by having it in the pair table
;     and flushing the "& Co." rule ]]

#| (p "H. Robert Heller,
 executive vice president of this consortium of credit-card
 issuers and a former governor of the Federal Reserve Board,
 was named to the additional post of president of Visa U.S.A.
 Inc., a major unit.")   |#   ;; 2
;  strands the comma-subsidiary-phrase  [[ fixed by protocol change ]]


(p "Paul R. McGarr will be succeeded as chief financial
 officer by Donald L. Park, 55, the company's treasurer, who
 will also be named a vice president.")
;  the comma-title before the who doesn't compose with the person in this
;  context (i.e. the preceding "by") but does in isolation (i.e. "Donald L. Park, 55 ...")
[[ fixed by making co-head's not rightward extensible, with the result that
   the whole phrase parsed at the segment level ]]


#| (p "Berisford International PLC, a British food
 concern, said its chief executive officer, Peter Jacobs, will
 resign effective Friday.")  |#   ;; 5
;  the "its" can't see the title before it's snarfed from the right
;  (and it has to be rewritten just as "company" rather than company-possessive
;   because all the pns are taken to the same category and the dispatch is
;   just at the form level)
[[ fixed it by changing the cs rule over comma-name to preserve the
   comma in the label.  The company isn't reported because it'd take
   inference to recognize that the person's (reverse) apposative co. was
   where to look.  ]]

;(p "the U.S.")
;  breaks up the country
[[ cured as an undetermined side-effect of something else ]]

(p  "for Sears, Roebuck & Co.")
; the (incorrect) comma-company doesn't form unless there's another
;   word after this phrase
[[ fixed it by arranging for the company to be extended at the time
   its final element was completed and then usurping the edge that
   the cap-seq was building and assessing so that only the longer one
   was assessed.  

;  provided you put a comma (or whatever?) after it the citation below works
(p "Anchorage-based Northrim Bank Inc.")
[[ fixed by diddling the conditions underwhich Delimit considers terminating ]]


(p "Susan S. Boren, senior vice
 president, human resources, of Dayton Hudson Department Store
 Co., a unit of Dayton Hudson Corp., was")
;  #19  the company and comma-subsidiary don't compose because
;  The of-company phrase formed up well before the subsidiary did, and that
;  blocks it.  ???? "premature forest level" ????
[[ fixed by the reanalysis of defCo heads ]]

;; 22
(p "Mr. Wehmeier, 48, was president and chief
 executive of Agfa Corp., a Bayer USA unit.")
;  company and comma-subsidiary-co link up in isolation but not in this context

#| (p "as well as president of its
 largest subsidiary, Alabama Gas Corp.") |#
;  the last edge desired: comma-company won't form unless the citation
;  goes on at least one word more.
[[ fixed by setting up the determiner heuristic to appreciate multiple
   initial edges.  Also arranged for pronouns to rewrite themselves even
   if they don't get referents, and to use :unresolved-XX-anaphor instead ]]



;;--- company pattern
;
;(p  "for Sears, Roebuck & Co.")  --ditto in 12
;  comes out as  for-name comma-company

(p "the law firm of Jones, Day, Reavis & Pogue in Washington, D.C.")
;  comes out as [company ....Jones] [comma-person] [comma-company]
;                 [in-company ...Washington] , initial initial

(p "Warwick Baker & Fiore Advertising")
;  Advertising falls off as a Name

(p "Shareholders of New England Critical Care Inc.")  #25
;  comes out at  company + of-company + company   --fsa interaction ??

(p "Mr. Carney joined Arthur Young & Co.")
;  the name of the company includes the element: "(daughter right-edge)"

(p "CoreStates Financial Corp.")
;   comes out as [name] [word] [name]


;;--- subject search  #16
;;
(p "Francis T. Vincent Jr., who had been chief executive at
 Columbia Pictures Inc., is commissioner of Major League
 Baseball.")
;  blocked by the interveening je even though it's only a relative clause


;; above here they're fixed
;;-----------------------------------------------------------------
;; below here they're still a problem

;;--- randomness
;;
(p "chief operating officer")
  ;; pw doesn't complete because there's a non-printing ascii #1 just
  ;; after "operating" ==> a nasty kind of typo since it's invisible



;;--- leaks in the edge protocol
;;
; (p "Dennis Bottorff , president of C&S/Sovran , said")
;    company now forms fine, but it's grabbed by "said" before it can
;     see the title and person.

;(p "Peter Butler will assume Mr. Stuart's former position.")   ;; 5
;   The "Mr." is stranded, so the verb doesn't see its object

;; 68
;; -- the first person is stranded, maybe it's the "Mr." ??
;;
#| (p "Mr. Pietersen and Mr. McDonnell were
 Seagram executive vice presidents.") |#

;(p "International Paper's last president, Paul O'Neill, 
 left in 1987")
;  76 -- the co's is stranded because the comma-person sees the title 
;  before it can see the co's.

;; 21
(p "The parent company also named R. Marc Langland, president
 of Anchorage-based Northrim Bank Inc., a director, succeeding
 Frank G. Turpin")
;  rolls back prematurely during the segment "[name "Anchorage"] . based"
;   because based extends and the parse would change its category to location

;; 35
(p "Burson-Marsteller, the
 public relations unit of this advertising agency, named James
 B. Lindheim vice chairman and director of public affairs")
;  ?? the 2d title is pulled in at the level of the JE, and the conjunction
;  heuristic never seems to fire at all.

#| (p "Mr. Georges was named International Paper's chief
 executive officer in 1984 and chairman a year later.")  |#
;  5/20  Strands the final sequencer.  Outside this context the phrase
;   "a year later" completes fine.  --Also has outter-conj title problem
;   as above

(p "Mr. Dawkins, 52, was \"absolutely the right person\" to
 head Primerica Financial Services.")
; #142  There is a segment starting at the "to" and ending after the
; company that HA-both-ends will cover with a to-company, even though
; the mvb/head is there ready to do the right thing.


;;--- company pattern
;
(p "was sold to Heritage Media Corp. Health Club said")
;   forms it as one big company

; "Industrial Equity (Pacific) Ltd."   --in 10 it doesn't make a difference

; "800 Flowers"

(p "in the company's Watney Mann & Truman Brewers unit,")
;  The parse is largely correct, in that the possessive is linked to
;  the subsidiary head, but it would be nicer if it formed up more
;  conventionally since the interior company is created.  In any event,
;    the referent is missing most of the information that is available.
; #33

; (p "First Pensylvania Bank")  comes out  [sequencer] [company]

(p "US Sprint Communications")  -> [country] [co]



;;--- oddities in the subsidiaries

(p "Mr. Warren had been executive
 vice president of Energen Corp., as well as president of its
 largest subsidiary, Alabama Gas Corp.")
;   This subsidiary-phrase has the wrong composite given that it was
; formed from co's + subsidiary-head  --I'm worried about the rules
; that are running not being the one's I see in the obvious places.


;;--- subject search  #16
;;
(p "She added that one of four vice presidents who worked in
 marketing, Kevin Armstrong, also resigned yesterday.")
;   #18 'thought the search should accept comma-person, but in this case
; it'd be a comma-name, and doing a recategorization from a search rule
; sounds like asking for substantial trouble.  Waiting on a better case
; before mucking with the search criteria



;; Title search w/ conjunction has to produce a better composite that can
;;    be well reported  #20
(p "Mr. Goldstein in other assignments has been president of
 American Express Centurion Bank and president of Travel
 Related Services in the U.K.")


;;------------------------------------------------------------
;  below here they've not been tried


; (wnf "WSJ072.TXT" "feb0;")
;    quintessential subsidiary.
; (wnf/tts "WSJ099.TXT" "feb0;")
;    "United", some odd boundaries, topic company check hits multiple
;       initial edges.
#| (p/tts "former Indian chief justice P.N. Bhagwati will serve 
 as a consultant to the 370-lawyer Washington firm.")  |#
;    5/20 -- strands the country (which it takes as a person) and title and status



; complex conjunctions:  #8 (2),  #13 (3),  #21,
(p "for this telecommunications company and its US Sprint
 Communications long-distance subsidiary.")
(p "Richard J. Klau, previously president of this company's Ionpure
 Technologies Corp. unit, was named to the new position of president
 of its Water Products Group and to senior vice president of the
 parent company")


; "as well as ..."  #2 #11


; #9   je/co!__  has to search back and see a ThisCo


; "They"  #14


;;--- verbs

;   #15  --- interacts with the reanalysis of the object of "named"
; [person] named [person+title+co] to serve [on [company/commission]]

; pers + "be in charge of" ...  --or is this a responsibility phrase ??
;  #18

; pers "do {not} stand for {re-} election"  [to the board]   #19



;;--- relative pronoun refers to company    --in 10, ditto., but does in #20
;;
(p "Mr. Goldstein will continue to be responsible for the Consumer
 Financial Services Group of American Express International,
 which he has headed since its founding in September 1989.")

;  [unit] of which he ...  #33


;;--- subsidiary indexing  (#21)
;;


;; 68
;; "an office of the president"
;;    defco     of-title


;; indexing of companies / topic-company
;;
;;  #18 has "MIAMI" as its dateline and that found "Miami Herald"


;; #25  is about the formation of a "new company" whose name is given
;;  in a following sentence.


;;-- "reanalysis" of the  named  construction
;;


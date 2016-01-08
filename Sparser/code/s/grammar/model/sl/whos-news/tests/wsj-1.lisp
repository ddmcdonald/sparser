;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "wsj #1"
;;;   Module:  "model;sl:whos news:tests:"
;;;  version:  March 1991      system version 1.8.1

(in-package :CTI-source)


;--- pending cases in "wsj #1;"
;(wnf "WSJ002.TXT")  ;; new distribution:  je+title : <list of people>
;(wnf "WSJ004.TXT")  ;; "was elected president pro tem"
;(wnf "WSJ005.TXT")  ;; company has to "bury under" in case of "left"
                        ;;   and is in a "late" CA edge for the prime.
;(wnf "WSJ006.TXT")  ;; Edge recorded for readout is subsumed under
                        ;;  one extended by CA but this isn't noticed,
                        ;;  resulting in the wrong company being reported
;(belmoral)  ;; the plurals don't distribute properly now that the
             ;; relatives are being reported.
;(wnf "WSJ008.TXT")  ;; "Partners" is needed as internal evidence for a
                        ;;   company, but that makes it ambiguous with the
                        ;;   title.  --losing that company makes for a wrong
                        ;;   answer in a "was previously" record
;(wnf "WSJ009.TXT")  ;; mistook city dateline for a company, "dismissed",
                        ;;   "[co] replaced [title]",  "top bank executives"
;(wnf "WSJ010.TXT")  ;; gets company link wrong because of CA/treetop/
                        ;;   referent-of-name timing problem
;(wnf "WSJ011.TXT")  ;; CA search initiated by preposition runs off the end
;(wnf "WSJ012.TXT")  ;; ditto. "who recently said he would retire", "retires"
;(wnf "WSJ013.TXT")  ;; wrong companies -- topic-co default used instead
                        ;;   of noticing a concrete company via "of"
;(wnf "WSJ014.TXT")  ;; ditto.
;(wnf "WSJ016.TXT")
  ;; To get the "..., succeeding" je, need to extend Matrix-clause-search-for
  ;;   subject/person to use a scan rather than just expect the je to end
  ;;   right before the comma
;(wnf "WSJ017.TXT")
  ;; another case of the "of [co]" CA extension completing after the shorter
  ;;  je edge had been put on the salient object list.  Have to leave "used-in"
  ;;  trace so there's something to key off of.
;(wnf "WSJ018.TXT")
  ;; Because "U.S." is recorded simply as a name, a person will be formed from
  ;;  "Eastern U.S.", and the initial kills Establish-referent-of-a-person
  ;;  since it's a new kind of lastname
;(wnf "WSJ019.TXT")
  ;; hits a break because it's trying to bury under and got a new case of
  ;;  composite.  Problem is "executive vice president", and it wouldn't occur
  ;;  with a LIFO edge queue.  Pending that have to have a more general 
  ;;  replacement scheme, probably analogous to the readout code in JE;
;(wnf "WSJ020.TXT")
  ;; ditto., though the direction is different: "[title] [and/title+co]
;(wnf "WSJ021.TXT")
  ;; same problem as #18   "N.C." for North Carolina in the dateline
  ;; Ought to be a comprehensive overhaul/fix to all initials rules
;(wnf "WSJ022.TXT")
  ;; mistakes city dateline for company, like #9
  ;; Has a case of a plural person subject.  "...and was succeeded by [pers]"
  ;; Has a preamble/list distribution that calls for analyzing "2 senior 
  ;; executives" as an instance of a person
;(wnf "WSJ023.TXT")
  ;; Very clean plural person subjects.
  ;; needs cs rule for name->person   "[person (plural)] was named"
  ;; Should distinguish "director" from "director of ...", but that will run
  ;;   afoul of the left-recursion/fifo problem
;(wnf "WSJ024.TXT")
  ;; Search runs off the end like #11
;(wnf "WSJ025.TXT")
  ;; Misses the 1st record because of CA/psp synchronization hassles
;(wnf "WSJ027.TXT")
  ;; Makes a mistake in 2d record because of alternative sense of "left" no
  ;;  being reigned in and not having the vocabulary "He fills a vacancy left by
  ;;  the departure of Adm. Bobby R. Inman."
  ;; Needs an adjunct rule for [..resigned] from [title]
;(wnf "WSJ028.TXT")
  ;; city dateline problem
  ;; Misses 1st record because the VP doesn't know how to find the subject in
  ;;  the context "[co] said its board, as expected, ___ "
;/// have to put embedded title defining in a separate chart since if it
; occurs inline it clobbers the real chart.  e.g. #29
;(wnf "WSJ029.TXT")
  ;; plural subject, possibly stranded "to [title]"
;(wnf "WSJ030.TXT")
  ;; loses it immediately on the topic company "Equitable Life Assurance
  ;;   Society of the U.S.", with "U.S." being taken as a person's initials


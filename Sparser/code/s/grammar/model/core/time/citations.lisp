;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "citations"
;;;   Module:  "model;core:time:"
;;;  version:  April 1991    (v1.8.2)

;; Compiled examples 4/91. Started converting to citations 6/12/13.

(in-package :sparser)


#|  citations of time phrases

[event]  "later this year"                 (natl)
[event]  "early next year"                  Dec2;213
[event]  "since 1986"                       Dec2;234
[event]  "next year"                        Dec2;243
[event]  "next April"                       Dec2;235
"Four years ago" [event]                    Dec2;213
[event]  "June 30"                         (tandy)
[event]  "in May"                           (bone)
[event]  "in 1972"                          (monarch)
[event]  "in September 1989"                Dec2;243
[event]  "last month"                       Dec2;212
[event]  "last week"                        Dec2;241
[event]  "around the end of 1991"           Dec2;246

{effective} "July 1",                       (tandy)
{effective} "Jan. 1".                       Dec2;227
{effective} "this Thursday"                 (bone)
{effective} "in early January"              Dec2;220

[pers], [title] "since October", was...     Dec2;228

[ ... has been ...] "for 25 years"          Dec2;240

[at the] "April 29"  [annual meeting]       3/28;22

[event] "over the past 26 years"            3/28;22
|#

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "predications"
;;;   Module:  "model;sl:whos news:"
;;;  version:  1.2  April 1991

;; 1.1  (3/21 v1.8.1)  revised the rule to introduce the calculated value
;;      for the job event so that it would come through in the print form.
;; 1.2  (4/3)  Now that there are proper job events for BE switched to
;;      percolating up that edge rather than stipulating the event at
;;      this level

(in-package :CTI-source)


#|  This would be cleaner as a projection of the lambda je+title (seen
with the form of a VP) onto the composition of these two constituents,
but this is expeditious.  The point is that [be] is incredibly vague, 
so we have to wait until this combination is found before concluding
on the categorization. |#

(def-cfr job-event/pers!__  (be title)
  :referent (:composite job-event+title
                        left-edge right-edge))


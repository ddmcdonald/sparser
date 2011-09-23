;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "in reports"
;;;   Module:  "model;sl:whos news:"
;;;  version:  March 1991      system version 1.8.1

(in-package :CTI-source)

#| Handles the situation where the job event isn't a treetop because it is
   trivially embedded within an announcement. |#


;;; /////////////////// ?? do we need a span over the je???

;;;--------
;;; action 
;;;--------
#|
(set-generic-treetop-action (category-named 'job-event)
                            'Report-and-stash-salient-object/job-event)  |#


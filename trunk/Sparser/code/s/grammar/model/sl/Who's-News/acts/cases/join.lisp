;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "join"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  1.0 February 1990               (v1.8.1) 

(in-package :CTI-source)

#|  Has the special sense in Who's News seems of "join the board", which
calls for a different setup since it also has a pers!__!co!title-pp reading.
There are lots of historical uses in the longer articles of the sublanguage,
that aren't relevant, as there are with "retire". |#


(define-job-event 'join-company  'job-event/pers!__!co
  :infinitive         "join"
  :tensed/singular    "joins"
  :past-participle    "joined"
  :present-participle "joining")


#|   Without being overly clever, not clear how to also get this reading
     when we don't yet allow multiple initial non-terminals when running
     in :top mode.

(define-job-event  'join-board-of-directors)

(def-cfr job-event/pers!__  (join the-board)
  :referent (:composite  job-event+title
                         left-edge right-edge))  |#


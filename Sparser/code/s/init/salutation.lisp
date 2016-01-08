;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2010-2015  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "salutation"
;;;   Module:  "init;"
;;;  version:  January 2015

;; initiated 6/92, v2.3.  Tweeked 8/24/93, updated copyright 1/6/94,1/23/95,
;; 1/17/96. Added 2d image salutation 6/5/96. Bumped the copyright 8/16/97.
;; ditto 5/17/98. Ditt on 2/17/05. Added BBN 3/9/07, refined 7/5. 4/24 extended
;; copyright info to 2008. 7/22/09 extended it again. 11/10/10 updated to
;; reflect current reality moving towards open-source. 3/14/11 added 2011 
;; and removed BBN as confusing since if you go back far enough there are
;; still other copyright holding statements. 10/30/12 copyright. 5/9/13 ditto,
;; and pointer to the license. 4/9/14 ditto. 1/6/16 radically simplified.

(in-package :sparser)

(defparameter *salutation-string*
  (format nil "~&Welcome to the Sparser natural language analysis system.~
               ~%Copyright (c) David D. McDonald 1991-2005, 2010-2016.~
               ~%Distributed under the Eclipse Public License.~
               ~%~
               ~%Type (in-package :sparser) to use Sparser symbols directly.~
               ~%~%" ))

(write-string *salutation-string*)

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2010-2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "salutation"
;;;   Module:  "init;versions:v3.1:"
;;;  version:  October 2012

;; initiated 6/92, v2.3.  Tweeked 8/24/93, updated copyright 1/6/94,1/23/95,
;; 1/17/96. Added 2d image salutation 6/5/96. Bumped the copyright 8/16/97.
;; ditto 5/17/98. Ditt on 2/17/05. Added BBN 3/9/07, refined 7/5. 4/24 extended
;; copyright info to 2008. 7/22/09 extended it again. 11/10/10 updated to
;; reflect current reality moving towards open-source. 3/14/11 added 2011 
;; and removed BBN as confusing since if you go back far enough there are
;; still other copyright holding statements. 10/30/12 copyright.

(in-package :sparser)


(defparameter *salutation-string*

  (format nil "~&~%Welcome to the Sparser natural language analysis system~
               ~%  copyright (c) David D. McDonald 1991-2005,2010-2012
               ~%~
               ~%Type (in-package :sparser) to use Sparser symbols directly.~
               ~%~%" )

  "This string is printed out when an image is launched.  If no image
   is made, it will be the value of the last form in init;everything,
   and will be printed out by default." )


(defparameter *changed-files-salutation-string*
  (format nil "~&Type (update) to load files changed since the image ~
               was made.~%")

  "When a development image is launched, the Run-at-launch routine
   checks the value of *there-are-changed-files*, and prints this if
   it is non-nil.")


(defparameter *make-an-image-with-the-grammar*
  (format nil "~&~%~%To save an image with this grammar, type ~
               (sparser::save-sparser-with-grammar)~
               ~%To load the dossiers now, type ~
               (sparser::lload \"dossiers;loader\")")

  "In a public grammar application, the users get the option to change
   the grammar as well as the usual extending of the dossiers.  That
   situation is indicated by the flag *delayed-loading-of-the-grammar*,
   which in turn conditionalizes the printing of this string in Run-at-launch.")
   




;; By making this the return value. We are having it appear on the screen
;; as part of the 'do not make an image' development load when this file
;; is loaded by [everything]

*salutation-string*

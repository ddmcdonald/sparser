;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "objects;chart:brackets:"
;;;  Version:  January 1995

;; drastically redone 5/92.  1/24/95 added [rank]

(in-package :sparser)


(or (find-package :brackets)
    (defconstant *bracket-package*
      (make-package :brackets
                    :nicknames '()
                    :use nil)))

(lload "bracket;object")
(lload "bracket;assignments1")
(lload "bracket;printers1")
(lload "bracket;catalog")
(lload "bracket;intern1")
(lload "bracket;rank")
(lload "bracket;form1")


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title aux"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  March 1991      system version 1.8.1

(in-package :CTI-source)


;;;----------------------------------------------
;;; generic items needed by certain known titles
;;;----------------------------------------------


;;---------- "co-"
;;
(def-cfr "co" ("co" hyphen-edge)
  :referent (:daughter left-edge))

(def-cfr title ("co" title)
  :referent (:daughter right-edge))

#|
;;---------  "(a) member (of)"
;;
(def-cfr member ("member")
  :referent member)

(def-cfr member ("members")
  :form plural
  :referent member)

(def-cfr member ("a" member)
  :referent (:daughter right-edge)) |#



;;---------- "non-"
;;
(def-cfr "non" ;;( "non" "-" )
               ("non" hyphen-edge)
  :referent (:daughter left-edge))

(def-cfr title ("non" title)
  :referent (:daughter right-edge))



;;---------- "pro tem"
;;
(define-category pro-tem)
(def-cfr pro-tem ("pro" "tem")
  :referent pro-tem)

(def-cfr title (title pro-tem)
  :referent (:daughter left-edge))


;;---------- "vice-"
;;
(def-cfr "vice" ( "vice" "-" )
  :referent (:daughter left-edge))


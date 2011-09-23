;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "board of directors"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  1.2  March 1991

;; 1.1  (3/11 v1.8.1)  Moved "member of" to "title aux"
;; 1.2  (3/22)  Added "board member", 3/26 added "executive board
;;      member"
;; 1.3  (5/6 v1.8.4)  Made adjustments to accomodate to new edge protocol

(in-package :CTI-source)


;;;--------------------
;;; "board", by itself
;;;--------------------

(def-cfr board ("board")
  :referent board)

(def-cfr board ("boards")
  :referent board)

(def-cfr the-board ("the" board)
  :referent (:daughter right-edge))


(def-cfr of-the-board ("of" the-board)
  :referent (:daughter right-edge))

(def-cfr of-the-board ("of" board)
  :referent (:daughter right-edge))


;;;-----------------
;;;  board -> title
;;;-----------------

(def-cfr title-pp ("from" the-board)
  :referent (:daughter right-edge))

(def-cfr title-pp ("on" the-board)
  :referent (:daughter right-edge))

(def-cfr title-pp ("to" the-board)
  :referent (:daughter right-edge))


(def-cfr title-pp ("from" board)
  :referent (:daughter right-edge))

(def-cfr title-pp ("on"   board)
  :referent (:daughter right-edge))

(def-cfr title-pp ("to"   board)
  :referent (:daughter right-edge))


(def-cfr title-pp ("from" board-of-directors)
  :referent (:daughter right-edge))

(def-cfr title-pp ("on" board-of-directors)
  :referent (:daughter right-edge))

(def-cfr title-pp ("to" board-of-directors)
  :referent (:daughter right-edge))



(def-cfr title ("member" of-the-board)
  :referent (:daughter right-edge))


(define-title "board member")
(define-title "executive board member")



(def-csr the-board title  :left-context  job-event/pers!__!title
  :referent (:daughter right-edge))

(def-csr the-board title  :right-context  company
  :referent (:daughter left-edge))


;;;--------------------
;;; board of directors
;;;--------------------

(defparameter *title/board-of-directors*
  (make-title :name (resolve/make "board of directors")))


(def-cfr of-directors ("of" "directors"))


(def-cfr board-of-directors (board of-directors)
  :referent (:eval *title/board-of-directors*))

(def-cfr board-of-directors ("the" board-of-directors)
  :referent (:eval *title/board-of-directors*))


(def-cfr of-bod ("of" board-of-directors)
  :referent (:daughter right-edge))

(def-cfr title ("member" of-bod)
  :referent (:daughter right-edge))

;;;--------------------------
;;; compositions with titles
;;;--------------------------

(def-cfr title (title of-the-board)   ;;e.g. "chairman"
  :referent (:daughter left-edge))

;;;---------------------------
;;;  composition with company
;;;---------------------------

(def-cfr board (company-possessive board)
  :referent (:composite title+company
                        right-edge left-edge))

(def-cfr board-of-directors (company-possessive board-of-directors)
  :referent (:composite title+company
                        right-edge left-edge))



(def-cfr board (board of-company)
  :referent (:composite title+company
                        left-edge right-edge))

(def-cfr board-of-directors (board-of-directors of-company)
  :referent (:composite title+company
                        left-edge right-edge))


(def-cfr board (board of-thisCo)
  :referent (:composite title+company
                        left-edge right-edge))

(def-cfr board-of-directors (board-of-directors of-thisCo)
  :referent (:composite title+company
                        left-edge right-edge))



;;;-----------------------------------------
;;; allowing boards to do what companies do
;;;-----------------------------------------

;;------ job-event/co!__
;;
(def-cfr job-event
         (the-board  job-event/co!__)
  :form S
  :referent (:composite job-event+company
                        right-edge left-edge))


;;------ job-event/pers!__!co!title-pp    e.g. "join"
;;
(def-cfr job-event/pers!__!title-pp
         (job-event/pers!__!co!title-pp  the-board)
  :form  VP
  :referent  (:composite job-event+company
                         left-edge right-edge))


;;------ job-event/pers!__!co             e.g. "join"
;;
(def-cfr job-event/pers!__
         (job-event/pers!__!co  the-board)
  :form  VP
  :referent  (:composite job-event+company
                         left-edge right-edge))


;; wierder cases
;;
(def-cfr company ("Directors" of-company)  ;;  (feb0;20)
  :referent (:daughter right-edge))


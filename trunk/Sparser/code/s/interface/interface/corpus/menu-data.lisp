;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "menu data"
;;;   Module:  "interface;corpus:"
;;;  Version:  0.4 January 1996

;; initiated 1/25/94 v2.3. 3/10 added Earnings reports, Tipster test articles
;; product announcements. 
;; 0.1 (5/10) put in feature test to ensure a fit to what's available
;; 0.2 (9/12) fixed the use of the feature
;;     (8/9/95) removed the '1st 15' from WN set 
;; 0.3 (9/5) marked almost everything off-bounds unless there's a 'full corpus'
;;      so that the demos could be controlled.  (9/15) added html
;; 0.4 (1/16/95) added ern for minimal corpus and changed some of there names

(in-package :sparser)


#| We spell out here which document streams should go onto the corpus menu
   and in what order. |#


(defparameter *doc-streams-for-menu*
  ;; read by Create-the-corpus-menu. The organization is a hierarchy
  ;; where only the terminals are document streams, the others are
  ;; labels to use to head the submenus

  `(("Who's News"
      (,(document-stream-named '|small test set|)
       #+:full-corpus,(document-stream-named '|December 1990|)
       #+:full-corpus,(document-stream-named '|February 1991|)))

    #+:full-corpus
    ,(document-stream-named '|sample of Web pages|)

    #+:full-corpus
    ,(document-stream-named '|financial panic 9/17/92|)

    ("Earnings Reports"
      (,(document-stream-named '|WSJ 1990|)
       ,(document-stream-named '|London Stock Exchange 1990|)
       ,(document-stream-named '|from Knowledge Factory|)
       ,(document-stream-named '|2d set from Knowledge Factory|)
       ,(document-stream-named '|Web pages from Knowledge Factory|)
       ))

    #+:full-corpus
    ,(document-stream-named '|Tipster test articles|)

    ,(document-stream-named '|2 product announcements|)

    #+:full-corpus
    ,(document-stream-named '|3 long tnm|)

    ))

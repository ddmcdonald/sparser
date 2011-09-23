;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "group of type"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  October 1994 

;; initiated 10/7/94, finished 10/14

(in-package :sparser)


#| e.g.  "board of directors"

  Head can and often does stand by itself when the complement is implicit
    from the context.

  Does not have a variant where the complement preposes and appears in
    the possessive as in "IBM's Japanese subsidiary".

  Does not have a variant where the complement preposes as just a classifier
    as in "squadron of marines" / "marine squadron".   |#   


(define-exploded-tree-family  group-of-type
  :binding-parameters ( type )
  :labels ( np group complement )
  :cases
     ((:complement (np (group of-/complement)
                     :head left-edge
                     :binds (type right-edge)))
    
      (:of-phrase (of-/complement ("of" complement)
                    :head right-edge
                    ))

    #|  this one needs a twitch in its semantics that makes it look to
          the discourse context to fill in its complement
      (:head-by-itself (??? (group)
                         :instantiates-individual group))   |#
      ))

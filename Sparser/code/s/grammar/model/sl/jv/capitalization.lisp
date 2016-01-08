;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "capitalization"
;;;   Module:  "grammar;model:sl:jv:"    ("joint ventures")
;;;  version:  June 1993

(in-package :sparser)

;; initiated 8/92 v2.3, tweeked the mapping for state-in-a-company to fit new
;; constraints 6/15/93.


;;;-----------------------
;;; "an 80% stake in ..."
;;;-----------------------

(define-category  stake-in-a-company
  :instantiates :self
  :specializes nil
  :index (:temporary :list)
  :binds ((amount . amount)
          (company . company))
  :realization
    (:tree-family np-common-noun
     :mapping ((np . :self)
               (n-bar . :self)
               (np-head . :self))
     :common-noun ( "stake" "share" )
     :additional-rules
        ((:premodifier (n-bar (percent n-bar)
                         :head right-referent
                         :binds (amount left-referent)))
         (:pp-modifier (n-bar (n-bar in-company)
                          :head left-referent
                          :binds (company right-referent))))))


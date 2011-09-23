;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "edge-tests"
;;;   Module:  "grammar;tests:"
;;;  version:  August 2007

;; initiated 8/21/07, by removing the tests at the end of analysers/psp/
;; check/multiply and adding some cases. 

(in-package :sparser)

#| 
 (trace-edge-check)
 (trace-edge-multiplication)

 ;; no ids of either sort for either term
 (p "xx yy")

 ;; category ids on both terms
 (def-cfr mult-1 ("aa" "bb"))
 (p "aa bb")

 ;; category id on the 2d term, only a form id on the 1st
 (def-form-category rr)
 (def-cfr mult-2 ("cc")
   :form rr )
 (def-form-rule (rr "dd"))
 (p "cc dd")

 ;; category id on the 1st term, only a form id on the 2d
 (def-form-category ss)
 (def-cfr mult-3 ("ee")
   :form ss )
 (def-form-rule ("ff" ss))
 (p "ff ee")

 ;; category ids on both, but only a right-headed form rule works
 (def-cfr g ("gg"))
 (def-cfr h ("hh")
   :form rr )
 (def-cfr mult-4 (g mult-2))  ;; "gg cc"
 (def-cfr mult-5 (mult-2 h))  ;; "cc hh"
 (def-form-rule (g rr))
 (p "gg hh")

 ;; category ids on both, but only a left-headed form rule works
 (def-cfr i ("ii")
   :form ss )
 (def-cfr j ("jj"))
 (def-cfr mult-6 (i mult-2))  ;; "ii cc"
 (def-cfr mult-7 (mult-2 j))  ;; "cc jj"
 (def-form-rule (ss j))
 (p "ii jj")


 (untrace-edge-check)
 (untrace-edge-multiplication)
|#



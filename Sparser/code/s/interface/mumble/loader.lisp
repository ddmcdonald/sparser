;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2010-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "/interface/mumble/"
;;;  version:  October 2017

;; initiated 11/12/10. Factoring original file 4/7/13

(in-package :sparser)

(lload "mumble-interface;rspec-gophers")
(lload "mumble-interface;gofers")
(lload "mumble-interface;krisp-mapping")
(lload "mumble-interface;rdata")
(lload "mumble-interface;interface")
(lload "mumble-interface;binding-helpers")
(lload "mumble-interface;binding-centric")
(lload "mumble-interface;rnode-centric")
(lload "mumble-interface;mexp")
(lload "mumble-interface;discourse-reference")

(lload "mumble-interface;gloss-interpretations")
(lload "mumble-interface;templates")

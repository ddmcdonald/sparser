;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2010-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "loader"
;;;    Module:   "tools:basics"
;;;   Version:   October 2013

;; 7/23/09 Added 'debugging' with Jake's tools. Uncommented loading of no-breaks.
;; 9/10 Added the SFL macro for creating CLOS classes
;; 8/2/10 -- adding items here in preparation for a make-over for a common
;;  repository of lisp utilities.
;; 3/9/11 Conditionalizing on :ddm-utils feature.
;; 3/29/13 added [clos-classes]. 7/15/13 added [resource]. 10/4/13 added
;; [clos-operations].


(in-package :sparser)

#-ddm-utils (lload "sugar;loader")
#-ddm-utils (lload "basic tools;time")
(lload "basic tools;no breaks")
#-ddm-utils (lload "basic tools;debug stack")
#-ddm-utils (lload "basic tools;SFL Clos")
(lload "basic tools;sorting")
(lload "basic tools;clos-classes")
(lload "basic tools;clos-operations")
(lload "basic tools;resource")


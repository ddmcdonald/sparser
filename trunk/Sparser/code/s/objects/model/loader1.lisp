;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:"
;;;  version:  1.2 August 1992   

;; initiated 11/17/91 v2.1, added individuals (moved from dossiers) 12/2
;; 1.1 (7/16/92 v2.3) bumped everything to install the new rep.
;;     (8/4) added tree-families
;;     (12/28) deleted the loading of model:forms and model:old-individuals
;;       as those directories were archived as irrelevant.
;; 1.2 (8/12/94) broke out loading of the structures so that all the
;;      'setf' functions are defined before they're used.

(in-package :sparser)

;; first load all the structures
(lload "objects;model:categories:structure")
(lload "objects;model:categories:ops structure")
(lload "objects;model:individuals:structure")
(lload "objects;model:variables:structure")
(lload "objects;model:bindings:structure")

;; then load the code proper
(lload "objects;model:variables:loader1")
(lload "objects;model:bindings:loader1")
(lload "objects;model:categories:loader")
(lload "objects;model:individuals:loader")
(lload "objects;model:tree-families:loader")


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1998 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id: loader2.lisp 320 2009-10-20 19:36:28Z dmcdonal $
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:"
;;;  version:  2.1 October 2009

;; initiated 11/17/91 v2.1, added individuals (moved from dossiers) 12/2
;; 1.1 (7/16/92 v2.3) bumped everything to install the new rep.
;;     (8/4) added tree-families
;;     (12/28) deleted the loading of model:forms and model:old-individuals
;;       as those directories were archived as irrelevant.
;; 1.2 (8/12/94) broke out loading of the structures so that all the
;;      'setf' functions are defined before they're used.
;; 2.0 (11/29/97) Bumped to allow parameterized load for version that
;;       understands lattice-points. 12/6 bumped tree-families to 1.
;;       3/22 put the lattice points loader in. 9/12 broke psi out from
;;       lattice points. 1013 bumped individuals to 1.
;;     (8/15/07) moved in the psi structure file. 
;; 2.1 (6/17/09) Added cl-user::*psi-2009* flag to gate the transition to 
;;      the moby makeover. 7/12 moved over bindings.loader2. 10/9 bumped
;;      the categories loader to 2 and moved that version into the psi-2009
;;      section.

(in-package :sparser)

;; first load all the structures
(lload "objects;model:categories:structure")
(lload "objects;model:categories:ops structure")
(lload "objects;model:individuals:structure")
(lload "objects;model:bindings:structure")
(if cl-user::*psi-2009*
  (then
    (lload "objects;model:variables:structure1")
    (lload "objects;model:lattice-points:structure1")
    (lload "objects;model:psi:structure1"))
  (else
    (lload "objects;model:variables:structure")
    (lload "objects;model:lattice-points:structure")
    (lload "objects;model:psi:structure")))


;; then load the code proper
(if cl-user::*psi-2009*
  (then
    (lload "objects;model:categories:loader2")
    (lload "objects;model:bindings:loader2")
    (lload "objects;model:individuals:loader2")
    (lload "objects;model:variables:loader2")
    (lload "objects;model:lattice-points:loader1")
    (lload "objects;model:psi:loader1"))
  (else
    (lload "objects;model:categories:loader1")
    (lload "objects;model:bindings:loader1")
    (lload "objects;model:individuals:loader1")
    (lload "objects;model:variables:loader1")
    (lload "objects;model:lattice-points:loader")
    (lload "objects;model:psi:loader")))


(lload "objects;model:tree-families:loader1")


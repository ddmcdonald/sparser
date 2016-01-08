;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1998,2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:"
;;;  version:  2.2 August 2015

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
;; 2.2 (8/3/15) Removing the dependency on the flag since it's long
;;      been OBE.

(in-package :sparser)

;; first load all the structures
(lload "objects;model;categories;structure")
(lload "objects;model;categories;ops structure")
(lload "objects;model;individuals;structure")
(lload "objects;model;bindings;structure")
(lload "objects;model;variables;structure")
(lload "objects;model;lattice-points;structure")
(lload "objects;model;psi;structure")

;; then load the code proper
(lload "objects;model;categories;loader")
(lload "objects;model;bindings;loader")
(lload "objects;model;individuals;loader")
(lload "objects;model;variables;loader")
(lload "objects;model;lattice-points;loader")
(lload "objects;model;psi;loader")
(lload "objects;model;tree-families;loader")
(lload "objects;model;kraql;loader")
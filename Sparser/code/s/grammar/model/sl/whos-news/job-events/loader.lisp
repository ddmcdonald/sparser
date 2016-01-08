;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model;sl:whos news:job events:"
;;;  version:  June 1996

;; initiated 6/11/93 v2.3.  Added [macro], moved [verbs] to dossiers 4/13/94
;; Added [definition widgets] 3/8/95.  Redid calls as logicals 3/18/95
;; Added [test set] 5/28. 6/18/96 moved [definition widgets] to interface.

(in-package :sparser)

(gate-grammar *job-events*
  (lload "je;je object")
  (unless *nothing-Mac-specific*
    (lload "je;macro")))

(lload "who's News;test set")

;; in dossiers;
;; (lload "dossiers;job events")

#| previously in loader-2
(lload "je;ca")
(lload "je;lambdas")
(lload "je;readout")
(lload "je;records")
|#

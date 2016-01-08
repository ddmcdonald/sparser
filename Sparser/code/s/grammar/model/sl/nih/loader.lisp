;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1996-1997  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "loader"
;;;   Module:  "model:sl:NIH:"
;;;  version:  January 2007

;; started 7/21/96. Added [actions] 9/12. Dropped slash in gene/protein 1/7/07

(in-package :sparser)

(gload "nih;gene-protein")
(gload "nih;receptor")
(gload "nih;amino acid")
(gload "nih;actions")
(gload "nih;site")
(gload "nih;association")


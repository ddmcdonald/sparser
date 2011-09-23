;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992,1993  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "interface;file ops:"
;;;  Version:  1.1 September 1993

;;  0.1  Put in a switch to allow the character reader to have a mode
;;       where all uppercase input is converted to all lowercase as it
;;       is put into the buffer.
;;  0.2  (3/8/91 v1.8.1)  Added "file name" for operations on filenames
;;       (11/1)  Added [copy changed files]
;;       (1/23/92)  added [list whole tree]
;;  1.0  (9/25 v2.3)  Bumped the readers to fit the new tokenizer
;;  1.1  (9/8/93) added [backup recent] and [upgrade]

(in-package :sparser)

(lload "file ops;decoding")
(lload "file ops;file name")
(lload "file ops;open-close")

(lload "file ops;read switch1")           ;; bumped for 1.0
(lload "file ops;read chars1")            ;; bumped for 1.0


(unless *nothing-Mac-specific*
  (lload "file ops;copy changed files")
  (lload "file ops;upgrade")
  (lload "file ops;backup recent")
  
  (lload "file ops;list whole tree"))


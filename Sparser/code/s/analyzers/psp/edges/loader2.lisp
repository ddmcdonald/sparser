;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "loader"
;;;   Module:  "analyzers;psp:edges:"
;;;  Version:  2.5 March 2005

;;  1.1  (v1.5)  Added files for the edge-creating routines that had
;;        been embedded in other code so that it could all be centralized.
;;  1.2  (12/31  v1.6)  Update to alg. in right [ right1 ]
;;  1.3  (1/16  v1.8)  Substantially modified cs to the point of wanting
;;       to keep an original copy.
;;  1.4  (2/11  v1.8.1)  Added "known names"
;;  1.5  (2/20  v1.8.1)  Added "binary/explicit"
;;  1.6  (3/27) bumped version on "cap seq" to 2 to shelter it during
;;       reworking of name indexes
;;  1.7  (4/11 v1.8.2)  Added "long scan"
;;  1.8  (4/24 v1.8.4) bumped cap seq -> 3
;;  1.9  (11/29 v2.1) added binary/explicit to [.. all keys
;;       (9/2/92 v2.3) added in [single-new] and [initial-new] to clear out
;;        that directory
;;  1.10 (9/4) Changed the logical to make it functionally clearer in master loader
;;  2.0  (9/7/92) bumping some versions for consistency with the changes
;;        in fields. 9/12 bumped [initial-new] to 1.  10/16 bumped [cap seq]
;;        to 4.
;;       (11/10) bumped the explicits up.
;;       (11/28) moved [HA both] to analyzers;HA:loader
;;  2.1  (5/14/93) removed the commented-out alternatives and rationalized
;;        the order a bit
;;  2.2  (5/28) flushed [cap seq4] and [known names1] in favor of [pnf]
;;        and added conditionalizations by grammar-module
;;  2.3  (9/6/94) bumped [binary] to 1
;;  2.4  (8/30/95) bumped everything to test reordering or set-used-by
;;  2.5  (6/17/96) packaged the grammar-dependent files into a function that's
;;        called later. 6/25 moved the files (bumped and regular) to the
;;        grammar directory to smooth the process of delayed grammar loading.
;;       (3/14/05) Added [looking under].

(in-package :sparser)

;; unbumped
(gload "kinds of edges;single-new1")
(gload "kinds of edges;binary1")
(gload "kinds of edges;binary-explicit2")  ;;//// keep only one of these
(gload "kinds of edges;binary-explicit all keys2")
(gload "kinds of edges;cs2")
(gload "kinds of edges;initial-new1")
(gload "kinds of edges;unknown")
(gload "kinds of edges;polyw1")
(gload "kinds of edges;long scan1")
(gload "kinds of edges;looking under")


;; These aren't needed unless *load-the-grammar* is true.
;; However since that flag won't go up until late in the process
;; in some configurations, rather than check the flag here and
;; do the loading, we set up this function and have it run inside
;; load-the-grammar itself.  !!! Note that these live in [grammar;rules:
;; edges:]

(defun load-grammar-specific-edge-types ()
  (gload "grammar edge types;digits")
  (gload "grammar edge types;form rules")
  (gload "grammar edge types;CA")
  (gload "grammar edge types;pnf")
  (gload "grammar edge types;pronouns1"))

 

#|
;; bumped  -- these have the alternative ordering of set-used-by
(gload "kinds of edges;single-new2")
(gload "kinds of edges;binary2")
(gload "kinds of edges;binary-explicit3")  ;;//// keep only one of these
(gload "kinds of edges;binary-explicit all keys3")
(gload "kinds of edges;cs3")
(gload "kinds of edges;initial-new1")
(gload "kinds of edges;unknown")
(gload "kinds of edges;polyw1")
(gload "kinds of edges;long scan2")

(when *load-the-grammar*
  (gload "kinds of edges;digits2")
  (gload "kinds of edges;form rules1")
  (gload "kinds of edges;CA1")
  (gload "kinds of edges;pnf1")
  (gload "kinds of edges;pronouns2")
  ) |#

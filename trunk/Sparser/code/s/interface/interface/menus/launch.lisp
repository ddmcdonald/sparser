;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "launch"
;;;    Module:  "interface;menus:"
;;;   version:  0.1 March 1995

;; initiated 3/28/94 v2.3, as a stub file to be added to. Added more cases
;; 4/1.  Added Determine-items-for-sparser-menu 4/19.  4/24 added the gate
;; *spm/inculde-grammar-modules*.
;; 0.1 (3/21/95) spelled *spm/include-grammar-modules* correctly

(in-package :sparser)


(defun launch-Sparser-menus ()
  (when *spm/include-grammar-modules*
    (install-grammar-modules-menu))
  (create-the-corpus-menu)
  (determine-items-for-sparser-menu)
  (install-Sparser-menu))


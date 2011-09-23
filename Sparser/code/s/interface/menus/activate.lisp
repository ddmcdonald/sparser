;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "activate"
;;;    Module:  "interface;windows:menus:"
;;;   version:  June 1992

;; initiated 3/20/92 v2.2.  Added module menu later

(in-package :sparser)


(defun activate-Sparser-menus ()
  (when *corpus-menu*
    ;; This will be defined if the menu code was loaded
    (if (probe-file "corpus;")
      (install-corpus-menu-items)
      (format t "~%The corpus directory doesn't appear to exist~%"))
    (ask *corpus-menu* (menu-install)))

  (populate-grammar-module-menu)

  (when *objects-menu*
    (ask *objects-menu* (menu-install))))


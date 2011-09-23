;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "postprocessing"
;;;    Module:  "interface;grammar:"
;;;   version:  0.3 February 1998

#| Goes through the grammar modules after all the grammar has been loaded
   into an image and organizes them for display.  |#

;; initiated 2/10/92 v2.2. added summary modules 5/1
;; added grammar-module menu 6/19-20/92 v2.3
;; 0.1 (6/30) changed the modules from an embedded menu to toplevel so depth wouldn't
;;      be a problem
;; 0.2 (7/21) reorganized the threading of the menu construction a little
;; 0.3 (1/10/93) moved the menu stuff to [interface;windows:menus:module menu]
;;     (2/22/95) added postprocessing of tree families
;;     (6/21) added call to hack relationships among the categories
;;     (8/16/97) added some gates

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun postprocess-grammar-indexes ()
  ;; called as the last action in Load-the-grammar

  (setq *words-defined*     (sort-words *words-defined*)
        *polywords-defined* (sort-polywords *polywords-defined*)
        *non-terminals-defined* (sort-categories *non-terminals-defined*)
        *objects-defined*       (sort-categories *objects-defined*)
        *cfrs-defined* (sort-cfrs *cfrs-defined*)
        *csrs-defined* (sort-csrs *csrs-defined*)
        *context-free-rules-defined*
           (sort-cf&cs-rules-together *context-free-rules-defined*))
  (when *tree-families*
    (setq *tree-families-defined* (postprocess-tree-families
                                   *tree-families-defined*)))

  (when *include-model-facilities*
    (workout-the-relationships-among-the-categories))

  (dolist (gm *grammar-modules-in-image*)
    (unless (gmod-parent-module gm)
      (push gm *toplevel-grammar-modules*))
    (when (gmod-sub-modules gm)
      (setf (gmod-sub-modules gm) (nreverse (gmod-sub-modules gm))))
    (post-process-grammar-module gm))

  (setq *summary-grammar-modules*  (nreverse *summary-grammar-modules*)
        *grammar-modules-in-image* (nreverse *grammar-modules-in-image*)
        *toplevel-grammar-modules* (nreverse *toplevel-grammar-modules*))

  :grammar-is-postprocessed )



;;;-----------------
;;; grammar modules
;;;-----------------

(defun post-process-grammar-module (gm)
  ;; order/sort the objects in the various fields in ways that
  ;; will make sense when they appear in a menu

  (setf (gmod-cf-rules gm)      (sort-cfrs (gmod-cf-rules gm)))
  (setf (gmod-cs-rules gm)      (sort-csrs (gmod-cs-rules gm)))
  (setf (gmod-non-terminals gm) (sort-categories (gmod-non-terminals gm)))
  (setf (gmod-object-types gm)  (sort-categories (gmod-object-types gm)))
  (setf (gmod-words gm)         (sort-words (gmod-words gm)))
  (setf (gmod-polywords gm)     (sort-polywords (gmod-polywords gm)))
  (setf (gmod-files gm)         (nreverse (gmod-files gm)))
  gm )


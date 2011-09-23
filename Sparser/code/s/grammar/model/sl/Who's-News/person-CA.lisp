;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "person CA"
;;;   Module:  "model;sl:whos news:"
;;;  version:  March 1991      system version 1.8.1

(in-package :CTI-source)


(set-ca-action category::person 'search-outward-from-person)

(defun search-outward-from-person (pers-edge)
  (let ( neighbor rule new-edge )
    (cond
     ((comma-just-to-its-left pers-edge)
      (setq neighbor (edge-to-its-left/jump-word pers-edge))
      (when (typep neighbor 'edge)
        (case (cat-symbol (edge-category neighbor))
          (category::title
           (setq rule (lookup/cfr/resolved category::person
                                           `(,category::title ,category::person)))
           (when rule
             (setq new-edge
                   (make-default-binary-edge neighbor
                                             pers-edge
                                             rule))))
          )))
     )))


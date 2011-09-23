;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "stuff"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  April 1991      system version 1.8.4

;; initiated 5/9

(in-package :CTI-source)

#|
(defun head-of-stuff-phrase (string)
  (let ((word (resolve/make string)))
    (def-cfr stuff `(,word)
      :referent (:composite stuff left-edge))
    (def-cfr stuff `( <title-modifier> ,word )
      :referent 
    ))  |#


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved.

(in-package :sparser)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (use-package :rt))

(defun p/sem (string)
  "Parse the string and return a neutral semtree of its interpretation"
  (let ((*return-a-value* :referent-of-last-edge)
        (*what-value-to-return* :spire))
    (declare (special *return-a-value* *what-value-to-return*))
    (analyze-text-from-string string)))

(deftest location-lift
  (p/sem "put B1 on B2")
 (put-something-somewhere
  (location (relative-location (ground (block (name "B2"))) (prep (on))))
  (theme (block (name "B1"))) (present (category present))))

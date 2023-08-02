;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved.
;;; Copyright (c) 2023 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "semantic-structure"
;;;   Module:  /sparser/test/
;;;  Version:  June 2023

(in-package :sparser)

#+ignore ;; moved to init/workspace/abbreviations
(defun p/sem (string)
  "Parse the string and return a neutral semtree of its interpretation"
  (let ((*return-a-value* :referent-of-last-edge)
        (*what-value-to-return* :spire))
    (declare (special *return-a-value* *what-value-to-return*))
    (analyze-text-from-string string)))

(rt:deftest location-lift
  (p/sem "put B1 on B2")
 (put-something-somewhere
   (location (on (word (wd "on")) (ground (block/object (name (wd "B2"))))))
  (theme (block/object (name (wd "B1")))) (present (category present))))

(rt:deftest adjective-attribution ;; fixed 4/19/23
    (p/sem "the big red block")
  (block/object
    (has-determiner (the (word (wd "the"))))
    (size (big (attribute (category size)) (name (wd "big"))))
    (color (red (attribute (category color)) (name (wd "red"))))))

(rt:deftest adj-fix-for-copular ;; fixed 5/2/23
    (p/sem "The top block should be red.")
  (copular-predication
    (item
     (block/object (has-determiner (the (word (wd "the"))))
                   (location (top-qua-location (word (wd "top"))))))
   (value (red (attribute (category color)) (name (wd "red"))))
   (predicate (be (modal (should))))))

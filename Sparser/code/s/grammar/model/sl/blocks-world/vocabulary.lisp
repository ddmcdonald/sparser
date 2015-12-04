;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "vocabulary"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  December 2015

;; Initiated 12/3/15.

(in-package :sparser)

#| These are temporary definitions for one of Sparser's conventional
parsing protocols. Likely to be replaced by TAGs when the CwC-tailored
protocol is developed. Moreover they are semantically vacuous.  |#


;;--- nouns
(noun "block" :specializes artifact)
(noun "staircase" :specializes artifact)
(noun "table" :specializes artifact)

;;--- Interjections -- see ex. in model/sl/checkpoint/
(sentential-interjection "good")
(sentential-interjection "ok")


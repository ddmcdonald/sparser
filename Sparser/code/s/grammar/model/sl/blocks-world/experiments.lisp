;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "experiments"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  October 2015

;; Initiated 10/7/15

(in-package :mumble)

#| general-np-bundle-driver  derivation-tree  accessory-type
 make-adjunction-node  feature-driven-prepocessing  realize-dtn
 phrase-structure-execution  process-negate-accessory
 add-further-specification  define-word-stream-action-type
|#
;; "let's build a staircase"

(defun build-a-staircase ()
  "Constructs the derivation tree strictly from resources,
   not as the realization of some actually represented source."
  (let* ((staircase
          (make-dtn :resource
            (define-lexicalized-phrase common-noun ("staircase") (n))))        
         (a-staircase
          (kind (singular staircase)))
         (build
          (make-dtn :resource
                    (define-lexicalized-phrase SVO ("build") (v)))))
; 
    ;; connect them
    (make-complement-node 'o a-staircase build)
    (command build)
    build))


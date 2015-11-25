;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; Copyright (c) 2015 David D. McDonald  All Rights Reserved
;;;
;;;      File:  "experiments"
;;;    Module:  grammar/model/sl/blocks
;;;   version:  November 2015

;; Initiated 10/7/15. 

(in-package :mumble)

#| general-np-bundle-driver  derivation-tree  accessory-type
 make-adjunction-node  feature-driven-prepocessing  realize-dtn
 phrase-structure-execution  process-negate-accessory
 add-further-specification  define-word-stream-action-type
|#

;;;------------
;;; vocabulary
;;;------------
#| Define-lexicalized-phrase build nouns by default. If we start
in Sparser there is a translation routine. In a better world
rebuilt from scratch there would be a single word stock.
See Zo code for what that could look like. |#

(define-word "build" (verb) :ed-form "built")
(define-word "let" (verb))

;;;--------------------------
;;; Prebuilt phrases (trees)
;;;--------------------------

;; "build a staircase   (say (build-a-staircase))

(defun build-a-staircase ()
  "Constructs the derivation tree strictly from resources,
   not as the realization of some actually represented source."
  (let* ((staircase
          (make-dtn 
           :resource (define-lexicalized-phrase common-noun ("staircase") (n))
           :referent 'build-staircase))
         (a-staircase ;; singular and kind set the determiner
          ;; see interface/bundles/operators-over-specifications.lisp
          (kind (singular staircase)))
         (build
          (make-dtn :resource
                    (define-lexicalized-phrase SVO ("build") (v)))))

    ;; connect them
    (make-complement-node 'o a-staircase build) ;; bind argument
    (command build) ;; hack that removes subject
    build))


;; "let's X"

(defun let-us (dtn-for-eventuality)
  ;; Doing this one differently. The question is what is 
  ;; the best syntatic sugar. This version open-codes much
  ;; of what's in create-lexicalized-phrase as it wasn't clear
  ;; how to push the pronoun through that function as it's
  ;; presently written. 
  (let* ((let-phrase  ;; s v o c
          (define-lexicalized-phrase SVOC ("let") (v)))
         (1st-plural ;; the word
          (mumble-value 'first-person-plural ;; see gramar/pronouns.lisp
                        'pronoun)))
    (let* ((dtn (make-instance 'derivation-tree-node
                  :referent 'let-us
                  :resource let-phrase)))
      ;; (make-complement-node 'o pn-lexicalized-phrase dtn)
      (make-complement-node 'o 1st-plural dtn)
      (make-complement-node 'c dtn-for-eventuality dtn)
      (command dtn)
      dtn)))

; (say (let-us (build-a-staircase)))

        


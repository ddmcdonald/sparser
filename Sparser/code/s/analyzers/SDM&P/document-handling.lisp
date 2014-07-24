;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "document handling"
;;;   Module:  "analyzers/SDM&P/"
;;;  version:  July 2012

;; Broken out from Grok workspace and cleaned up 4/24/13. Made to take
;; document strings 5/1/13. Turned off another switch 7/1/13.

(in-package :sparser)

(defun grok-pass-one (document-stream)
  "Just pull in the vocabulary all at once"
  (let ((*do-forest-level* nil)  ;; No supra-segment parsing for this pass
        (*new-segment-coverage* :none)
        (*do-strong-domain-modeling* nil)
        (*do-heuristic-segment-analysis* nil)
        (*tts-after-each-section* nil))
    (declare (special *do-forest-level* *new-segment-coverage*
                      *do-strong-domain-modeling*
                      *do-heuristic-segment-analysis*
                      *tts-after-each-section*))
    (do-normal-segment-finished-options)
    (analyze-document-stream document-stream)))


;; N.b. will hang on "N." if UN isn't predefined
(defun grok-pass-two (document-stream)
  "Do a segment-level analysis and identify text relationships"
  (let ((*do-forest-level* nil)
        (*allow-pure-syntax-rules* nil)
        (*new-segment-coverage* :none)
        (*do-heuristic-segment-analysis* t)
        (*note-text-relations* t))
    (declare (special *do-forest-level* *allow-pure-syntax-rules*
                      *new-segment-coverage* *do-heuristic-segment-analysis*
                      *note-text-relations*))
    (what-to-do-at-the-forest-level :parse-forest-and-do-treetops)
    (do-note-text-relations-in-segment)
    (analyze-document-stream document-stream)
    (collect-relations-from-articles)
    ;; analysis and reification goes here. See the merged contents on (doc-set)
    ;; and other code in that file
    ))


(defun grok-pass-three (document-stream)
  (let ((*do-forest-level* t)
        (*allow-pure-syntax-rules* t)
        (*new-segment-coverage* :trivial)
        (*do-heuristic-segment-analysis* t)
        (*profligate-creation-of-individuals* t)
        (*note-text-relations* nil)) ;; don't overwrite the merged contents on (doc-set)
    ;; The relations noted on this pass will be straight off bindings
    (declare (special *do-forest-level*
                      *allow-pure-syntax-rules* *new-segment-coverage*
                      *do-heuristic-segment-analysis* *note-text-relations*
                      *profligate-creation-of-individuals*))
    (what-to-do-at-the-forest-level :parse-forest-and-do-treetops)
    (do-note-text-relations-in-segment)
    (do-strong-domain-modeling)
    (analyze-document-stream document-stream)
    ;; More analysis, now over sentential relations. Maybe more reification
    ))

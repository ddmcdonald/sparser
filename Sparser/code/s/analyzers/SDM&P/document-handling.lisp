;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "document handling"
;;;   Module:  "analyzers/SDM&P/"
;;;  version:  April 2012

;; Broken out from Grok workspace and cleaned up 4/24/13.

(in-package :sparser)

(defun grok-pass-one ()
  "Just pull in the vocabulary all at once"
  (let ((*do-forest-level* nil)  ;; No supra-segment parsing for this pass
        (*new-segment-coverage* :none)
        (*do-heuristic-segment-analysis* nil))
    (declare (special *do-forest-level* *new-segment-coverage*
                      *do-heuristic-segment-analysis*))
    (do-normal-segment-finished-options)
    (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu)))


;; N.b. will hang on "N." if UN isn't predefined
(defun grok-pass-two ()
  "Do a segment-level analysis and identify text relationships"
  (let ((*do-forest-level* nil)
        (*allow-pure-syntax-rules* nil)
        (*new-segment-coverage* :none)
        (*do-heuristic-segment-analysis* t)
        (*note-text-relations* t))
    (declare (special *do-forest-level* *allow-pure-syntax-rules*
                      *new-segment-coverage* *do-heuristic-segment-analysis*
                      *note-text-relations*))
    (setq  *forest-level-protocol* 'parse-forest-and-do-treetops) ;; bindable?    
    (do-note-text-relations-in-segment)
    (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu)
    (collect-relations-from-articles)
    ;; analysis and reification goes here. See the merged contents on (doc-set)
    ;; and other code in that file
    ))


(defun grok-pass-three-setup ()
  (setq  *forest-level-protocol* 'parse-forest-and-do-treetops) ;; semantic rules burned in
  (setq *do-forest-level* t)
  (setq *allow-pure-syntax-rules* t)
  (setq *new-segment-coverage* :trivial)
  (setq *do-heuristic-segment-analysis* t)
  (setq *note-text-relations* nil) ;; don't overwrite the merged contents on (doc-set)
  ;; The relations noted on this pass will be straight off bindings
  (do-note-text-relations-in-segment)
  (do-strong-domain-modeling)
  (setq *profligate-creation-of-individuals* t)
  (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu)
  ;;  -- 1st look at some reification
  )

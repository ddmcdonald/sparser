;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald -- all rights reserved
;;; extensions copyright (c) 2009-2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "setup"
;;;   Module:  "drivers;inits:sessions:"
;;;  Version:  3.0 March 2010

;; 1.1  (1/17/91 v1.8)  Conditionalized the relevant intializations using
;;      the globals that control loading.
;; 1.2  (1/23 v1.8)  Broke out the initializations between parser and
;;      grammar.
;; 1.3  (4/11 v1.8.2)  Added call for parsing-headers
;; 1.4  (11/1 v2.0.1)  Added default for paragraph strategy
;; 1.5  (11/18 v2.1) Added initialization of the composite resource
;; 1.6  (12/1 v2.1) Added initialization of the binding resource
;; 1.7  (5/14/92 v2.2) Added populating the left openers stack
;; 1.8  (6/26)  Changed the NL fsa to be paragraph rather than word
;; 1.9  (7/13 v2.3) Added initialize-cons-resource
;; 1.10 (7/20) Added initialize-individuals-resource
;; 2.0 (12/28) flushed item from old treatment of names
;; 2.1 (4/7/93) changed the spelling of one of its calls
;; 2.2 (6/14) moved initialize-individuals-resource to load-the-grammar
;; 2.3 (4/23/94) put newlines call under gate
;; 2.4 (5/3) changed the name of the chart-creating fn.
;; 3.0 (8/17) reflects change to treat paragraphs as regular individuals
;;     (10/9/09) Can't find use-newline-/paragraph so commented it out.
;;     3/12/10 Found it, so putting it back. 

(in-package :sparser)


(defun setup-session-globals/parser ()
  "Sets up the major reused working data structures of the system,
   and carries out some initializations that cannot be done as
   the system's files are loading.  Should be executed after an
   image is launched but before any analyses are undertaken."
  (make-the-chart)
  (make-the-edge-resource)
  (initialize-cons-resource)
  (unless (eq *loader-mode* :just-the-all-edges-parser)
    (populate-stack-of-pending-left-openers)))


(defun setup-session-globals/grammar ()
  ;; as above, should be executed as part of the launch configuration.
  ;; None of this should be specific to any source type, just 
  ;; initializations required by the definitions in the grammar that 
  ;; we don't particularly want taking up space in an image.
  (when *load-the-grammar*
    (when *paragraph-detection*
     (use-newline-fsa/paragraph))))


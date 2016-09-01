;;; -*- Mode: lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2010-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interface"
;;;   Module:  "interface;mumble;"
;;;  Version:  July 2016

;; initiated 11/12/10. Elaborated through ..12/9 Picked up again 3/16/11.
;; Refactored to use realization-history for the crawling around 3/20.
;; 11/21/11 Added sanity check that we're annotating realizations. 10/12/12
;; added methods that start with edges. 
;; 0.1 (11/18/13) Removed all rnode/psi centric code  out to rnode-centric
;;      to clear the decks for working more directly with Krisp objects
;;      and improvising. 1/5/16 kill ad-hoc-1 to quiet compiler

(in-package :mumble)

;;;-----------------------------------------------
;;; Mumble methods specialized on Sparser classes
;;;-----------------------------------------------

(defmethod say ((object string))
  "Parse the string and generate from the semantics."
  (sp::qepp object) ; parse quietly
  (say (first (sp::semtree (first (sp::all-tts))))))

(defmethod say :around ((object string))
  "If the parse or generation from semantics fails, just return the string."
  (handler-case (call-next-method)
    (error () object)))

(defmethod realize ((c sp::referential-category))
  "Realize a category as its head word."
  (multiple-value-bind (head pos) (sp::rdata-head-word c t)
    (sp::get-mumble-word-for-sparser-word
     (typecase head
       ((or sp::word sp::polyword) head)
       (t (sp::resolve (string-downcase (sp::cat-name c)))))
     pos)))

(defmethod realize ((w sp::word))
  (find-or-make-word (sp::pname w)))

(defmethod realize ((w sp::polyword))
  (find-or-make-word (sp::pname w)))

(defmethod record-lexicalized-phrase ((category sp::category)
                                      (lp lexicalized-resource))
  (record-lexicalized-phrase (symbol-name (sp::cat-symbol category)) lp))

(defmethod get-lexicalized-phrase ((category sp::category))
  (get-lexicalized-phrase (symbol-name (sp::cat-symbol category))))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "contract"
;;;    Module:   "sl;disease:"
;;;   version:   August 2013

;;category to represent states/events of acquiring a disease 
;;some are actual contracting events, e.g. "contract, catch, develop, etc."
;;others simply convey states of illness, e.g. "find, have, be sick with, etc."
;;generally binary, but can include a source as well
;;e.g. "the uncle had caught the virus from his niece"

(in-package :sparser)

;;;------------
;;; the object
;;;------------

(define-category contract
  :specializes event
  :instantiates self)
                
(defun define-contract-disease (string)
  (let* ((name (name-to-use-for-category
                (concatenate 'string (string-upcase string) "-DISEASE")))
	 (form
	  `(define-category ,name
             :specializes event
             :instantiates self
             :binds ((who)
                     (pathogen pathogen)
                     (source))
             ;;:index (:key ) left empty for now
             :realization ((:main-verb ,string)
                           (:tree-family transitive/passive
                           :mapping ((agent . who)
                                     (patient . pathogen)
                                     (s . :self)
                                     (vp . :self)
                                     (vg . :self)
                                     (np/subject . person)
                                     (np/object . pathogen)))))))
    (eval form))
  string)

;;;------------
;;; instances
;;;------------

(define-contract-disease "catch")

(define-contract-disease "contract")
  
;;;-----------
;;; citations
;;;-----------

;; find ;;

;; last month the virus was found on two poultry farms in the Czech Republic

;; the H5N1 strain has been found in poultry farms 
;;    in three other EU countries this year 

;; bird flu has been found in poultry

;; cases of birds being found with the disease

;; have ;;

;; the uncle did in fact have bird flu h5n1

;; contract ;;

;; the dead uncle of an iraqi girl who died last month 
;; after contracting the deadly bird flu virus

;; catch ;;

;; but catching the disease

;; the uncle had caught the virus from his niece s

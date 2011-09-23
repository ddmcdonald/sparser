;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "printers"
;;;   Module:  "grammar;rules:context:"
;;;  Version:  March 2010

;; broken out 8/19/94, v2.3
;; 9/28/94 wasn't having an effect in fasl so added eval-when's. 3/16/10, removed
;; the routine for paragraphs because the category is different now that using
;; structs again for the paragraph object

(in-package :sparser)

(eval-when (:load-toplevel :compile-toplevel :execute)
  (define-special-printing-routine-for-category  section-object
    :full ((format stream "#<section-object ~A ~A   ~A>"
                   (let ((so-type (value-of 'type obj)))
                     (typecase so-type
                       (section-marker
                        (string-downcase (sm-full-name so-type)))
                       (symbol
                        (string-downcase (symbol-name so-type)))
                       (otherwise
                        "new type of value field")))
                   (value-of 'count obj)
                   (indiv-uid obj)))
    
    :short ((format stream "#<~A ~A   ~A>"
                    (let ((so-type (value-of 'type obj)))
                      (typecase so-type
                        (section-marker
                         (string-downcase (sm-full-name so-type)))
                        (symbol
                         (string-downcase (symbol-name so-type)))
                        (otherwise
                         "new type of value field")))
                    (table-of-contents-entry/string obj)
                    ;;(value-of 'count obj)
                    (indiv-uid obj)))
    
    :string ((format stream "~A"
                     (value-of 'count obj)))))


#|  Revert paragraph objects to structs 3/16/10 to avoid PSI issues,
    so this doesn't make sense now (and breaks on loading), so just
    leaving it out.
(eval-when (:load-toplevel :compile-toplevel :execute)
  (define-special-printing-routine-for-category  paragraph
    :full ((format stream "#<section-object paragraph ~A  ~A>"
                   (value-of 'count obj)
                   (indiv-uid obj)))
    
    :short ((format stream "#<paragraph ~A  ~A>"
                    (table-of-contents-entry/string obj)
                    ;;(value-of 'count obj)
                    (indiv-uid obj)))
    
    :string ((format stream "p~A" (value-of 'count obj)))))  |#


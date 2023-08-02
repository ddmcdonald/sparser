;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2016,2023 SIFT LLC. All Rights Reserved.
;;;
;;;     File:  "subcategorization"
;;;   Module:  /sparser/test/
;;;  Version:  July 2023

;; Test basic methods routines

(in-package :sparser)

(defparameter *here*
  (or ;;(find-individual 'deictic-location :name "here")
      (find-individual 'here)
      (error "Don't know where \"here\" is."))
  "Pattern for definition of simple words changed since 2019.
 Now the word 'here' is defined as the category 'here, by the
 function define-location-adverb. Makes it easier to write methods
 over them.")

(def-k-function k-location-p (individual))
;; These methods are defined in most → least specific order.
(def-k-method k-location-p ((individual (eql *here*))) :here)
(def-k-method k-location-p ((individual category::deictic-location)) :deictic)
(def-k-method k-location-p ((individual category::location)) t)
(def-k-method k-location-p (individual) (declare (ignore individual)))

(rt:deftest k-location-p
  (values (k-location-p nil)
          (k-location-p category::region)
          (k-location-p category::location)
          (k-location-p category::deictic-location)
          (k-location-p *here*))
  nil
  nil
  t
  :deictic
  :here)

(def-k-function k-member (item collection &key key test test-not)
  (:documentation "Is ITEM an element of COLLECTION?")
  (:method (item collection &key key test test-not)
    (declare (ignore item collection key test test-not)))
  (:method (item (collection list) &rest args)
    (apply #'member item collection args))
  (:method (item (collection category::collection) &rest args)
    (apply #'member item (collection-items collection) args)))

(rt:deftest k-member
  (let* ((items '(a b))
         (collection (find-or-make-individual 'collection :items items)))
    (values (not (null (k-member 'a nil)))
            (not (null (k-member 'a items)))
            (not (null (k-member 'b collection)))))
  nil
  t
  t)

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "edge-gophers"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  November 2015

;; Initiated 11/12/15 to collect up and rationalized the edge building
;; code. 

(in-package :sparser)

(defun make-ns-edge (start-pos end-pos category 
                     &key form referent rule
                          constituents words)
  (declare (special category::n-bar))
  (unless form
    (setq form category::n-bar))
  (unless referent
    (error "Have to specify a referent for the edge"))

  (make-edge-over-long-span
   start-pos end-pos
   category
   :rule rule
   :form form
   :referent referent
   :constituents constituents
   :words words))


;;;-----------------------------------------------------
;;; for approximations -- which aren't actually modeled
;;;-----------------------------------------------------

(defun package-approximation-number (start-pos end-pos
                                     &aux (words (effective-words-given-edges start-pos end-pos)))
  (declare (special category::number))
  (push-debug `(,words ,start-pos ,end-pos))
  ;; (setq words (car *) start-pos (cadr *) end-pos (caddr *))
  ;; The matching patterns indicates that it's "~<number>"
  ;; so just trust that. 
  (let* ((num-word (second words))
         (number (find-or-make-number num-word)))
    ;;///// dropping the approximation on the floor
    ;; see model/core/adjuncts/approx/object.lisp for where to 
    ;; start the process of doing it right. 
    (tr :ns-made-approximation number)
    (let ((edge (make-ns-edge
                 start-pos
                 end-pos
                 category::number
                 :rule 'package-approximation-number
                 :form category::number
                 :referent number
                 :words words)))
      ;;/// trace
      edge)))

;;  (p "2.22±0.25.")
(defun package-number-plus-error (start-pos end-pos)
  (declare (special category::number))
  (let* ((edges (treetops-between start-pos end-pos))
         (base-edge (car edges))
         (base (edge-referent base-edge))
         (range-edge (cadr edges))
         (range (edge-referent range-edge)))
    ;;///////// dropping the range on the floor
    ;; and not continuing with proper representation 
    (tr :ns-make-number-plus-error base range)
    (let ((edge (make-ns-edge
                 start-pos end-pos category::number
                 :rule 'package-number-plus-error
                 :form category::number
                 :referent base
                 ;; :words (effective-words-given-edges start-pos end-pos)
                 )))
      (tr :no-space-made-edge edge)
      edge)))


;;;-------------------
;;; misc. other cases
;;;-------------------

;;/// Repair -- doesn't really go here
(defun fix-doubled-colon (pattern start-pos end-pos
                          &aux (edges (treetops-between start-pos end-pos)))
  ;;/// hack for the presenting case. Need more ex. to find
  ;; any useful generalizations
  ;; pattern = (:bio-entity :colon :colon :protein)
  (let ((pattern1 (cons (car pattern) (cddr pattern)))
        (edges1 (cons (car edges) (cddr edges))))
    (values pattern1 edges1)))









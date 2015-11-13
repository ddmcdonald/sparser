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

(defun package-approximation-number (words start-pos end-pos)
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
(defun package-number-plus-error (edges words start-pos end-pos)
  (declare (special category::number))
  (let* ((base-edge (car edges))
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
                 :words words)))
      (tr :no-space-made-edge edge)
      edge)))


;;;-------------------
;;; misc. other cases
;;;-------------------

(defun package-qualifying-pair (left-edge right-edge)
  ;; as called from resolve-protein-hyphen-pair 
  (let ((left-ref (edge-referent left-edge))
        (right-ref (edge-referent right-edge)))

    (let* ((i (find-or-make-individual 'qualifying-pair
                 :head left-ref
                 :qualifier right-ref))
           (label (edge-category left-edge))
           (edge (make-ns-edge
                  (pos-edge-starts-at left-edge)
                  (pos-edge-ends-at right-edge)
                  label
                  :referent i
                  :constituents (list left-edge right-edge))))
      edge)))









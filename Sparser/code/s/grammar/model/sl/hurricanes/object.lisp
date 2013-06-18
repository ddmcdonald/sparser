;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2011  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "grammar/model/sl/hurricanes/"
;;;  version:  December 2011

;; Initiated 12/17/11

(in-package :sparser)

;;;-------------------
;;; Hurricanes per se
;;;-------------------

(define-category hurricane
  :specializes storm
  :instantiates self
  :binds ((name . name)
          (year . year)
          (snapshots :primitive list))
  :realization (:common-noun "hurricane"))

;;/// define a snapshot template


;;;-----------------
;;; hurricane names
;;;-----------------

(define-category name-of-hurricane
  :instantiates self
  :specializes name
  :binds ((sequence . sequence)))
;; realization that appreciates the reductions

(defun make-hurricane-name (items hurricane-datum)
  ;; called from categorize-and-form-name, the datum tells us
  ;; where in the sequence the word "Hurricane" occurred.
  ;; We expect it to be first, as in 'Hurricane Adrian"
  (push-debug `(,items ,hurricane-datum))
  (unless (and (numberp (car hurricane-datum))
               (= (car hurricane-datum) 1))
    (break "The word \"Hurricane\" is not the first item ~
            in the name sequence. It's number ~a"
           (car hurricane-datum)))
  (unless (not (= 2 (length items)))
    (break "The hurricane name is ~a words long" (length items)))
  (let* ((sequence (define-sequence (cdr  items))) ;; drop "Hurricane"
         (name (define-individual 'name-of-hurricane
                 :sequence sequence)))
    name))

;;;---------------------
;;; find / index / make
;;;---------------------

;; Obviously, a hurricane name can be recycled over the course
;; of many years (except for the very serious ones). So we need
;; both the name and the year to get a definitive identification.

(defun find/hurricane-with-name (name)
  ;; called from establish-referent-of-pn
  )

(defun make/hurricane-with-name (name)
  ;; called from establish-referent-of-pn
  )


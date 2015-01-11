;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald -- all rights reserved
;;;
;;;      File:   "sweep"
;;;    Module:   "tools:basics"
;;;   Version:   January 2015

;; Routines for sweeping down through the structure of Krisp referents.
;; Initiated 1/11/15 with code from December. 

(in-package :sparser)



(defmethod collect-model ((n number))
  ;; For debugging
  (let ((edge (edge# n)))
    (unless edge (error "The number ~a does not retrieve an edge" n))
    (collect-model edge)))

(defmethod collect-model ((e edge))
  (let ((referent (edge-referent e)))
    (when referent
      (collect-model referent))))

(defmethod collect-model ((w word)) nil) ;;`(,w))
(defmethod collect-model ((pw polyword)) nil) ;;`(,pw)) ; 
(defmethod collect-model ((c category)) nil) ;;`(,c))
;; anything else?



(defmethod collect-model ((i individual))
  (let ((bindings (indiv-binds i))
        objects )
    ;; Had been restricting the recursion to types with
    ;; a subject variable: (subject-variable type), 
    ;; but that's missing interesting noun phrase referents.
    (push i objects)
    (dolist (b bindings)
      (let ((var (binding-variable b))
            (value (binding-value b)))
        (unless (or (eq (var-name var) 'category)
                    (typep value 'mixin-category)) ;; has-determiner
          (typecase value
            (number)
            (symbol)
            (string)
            (word)
            (polyword)
            (category)
            (individual 
             (cond
              ((itypep value 'prepositional-phrase)
               (dolist (bb (indiv-binds value))
                 (when (eq (var-name (binding-variable bb)) 'pobj)
                   (push (list var-name (collect-model (binding-value bb)))
                         objects))))
              (t
               (push (list var-name (collect-model value))
                     objects))))
          (otherwise
           (push-debug `(,value ,b ,i))
           (break "Unexpected type of value of a binding: ~a" value))))))
  
      (reverse objects)))


(dolist (b bindings)
      (let ((var (binding-variable b))
            (value (binding-value b)))
        (unless (or (eq (var-name var) 'category)
                    (typep value 'mixin-category)) ;; has-determiner
        (typecase value
          (individual 
           (let ((embedded-objects (collect-model value)))
             (loop for obj in embedded-objects
               when (individual-p obj)
               do (push obj objects))
             (push value objects)))
          (word)
          (polyword)
          (category)
          (otherwise
           (push-debug `(,value ,b ,i))
           (break "Unexpected type of value of a binding: ~a" value))))))
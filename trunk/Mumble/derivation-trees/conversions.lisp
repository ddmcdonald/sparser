;;; -*- Mode: Lisp; Syntax: Common-lisp; -*-
;;; $Id$
;;; Copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2010-2012 David D. McDonald  All Rights Reserved

;; /Mumble/derivation-trees/conversions.lisp

;; Initated 10/6/09. First real code 10/23. Real code that runs 11/9 (sigh)
;; Modified through 11/27. Completely redone 12/9/10. Picked up again 3/22/11.
;; Refining through 3/28. Picked up again 10/12/12

(in-package :mumble)

(defgeneric convert-to-derivation-tree (class object)
  (:documentation "Takes an instance from the Sparser domain and converts it
 into an object in Mumble's domain suitable for passing to the 'say' method
 by using realization knowledge associated with the class."))


;;---- RNodes

(defmethod convert-to-derivation-tree ((rnodes cons) i)
  (convert-to-derivation-tree (car rnodes) i))

(defmethod convert-to-derivation-tree ((rnode sparser::realization-node)
                                       (i sparser::individual)) ;; subsumes psi
  "Called from realization-for. Has to return something that is suitable for
   consumption by realize. Initializes the top DTN if this is the
   first call."
  (push-debug `(,rnode ,i))
  (case (sparser::cat-symbol (sparser::itype-of i))
    ;;//// Should catch this distinction earlier by looking at the CLOS class that
    ;; backs the type -- should catch at realization-for methods.
    (category::number
     ;; analogous to a word, but in general numbers, like people and other
     ;; interesting things should engage specialists or some such, and
     ;; probably at an earlier point than this.
     (construct-lspec-for-number i))
    (otherwise
     (read-rnode-into-dtn rnode i))))

(defun read-rnode-into-dtn (rnode i)
  ;; Spread the rnode's information to find the right thing to dispatch
  ;; off of in order to get the correspondence
  (let* ((schr (sparser::rn-cfr rnode))
         (relation (sparser::schr-relation schr))
         (descriptors (sparser::schr-descriptors schr))
         (etf (sparser::schr-tree-family schr)))
    (push-debug `(,etf ,rnode ,schr ,relation))
    ;; Toplevel dispatch, basically words vs. the rest
    (cond
      ;; single-word cases
      ((sparser::defined-type-of-single-word relation)
       (let* ((sp-word (sparser::bound-word i))
              (m-word (find-or-make-word sp-word)))
         m-word))
      ((sparser::has-mumble-mapping? etf)
       (map-etf-to-dtn i rnode etf descriptors))
      (t       
       (push-debug `(,etf ,rnode ,i ,schr))
       (break "New case in convert-to-derivation-tree.~
               ~%Maybe we need a Mumble phrase for ~a" etf)))))

    

;;--- Mapping to phrases

(defun map-etf-to-dtn (i rnode etf descriptors)
  ;; Decodes the mapping and returns a populated DTN
  (let ((mapping (sparser::has-mumble-mapping? etf)))
    (if (eq :adjunct (car mapping))
      (map-adjunction-to-dtn
       etf (cdr mapping) rnode descriptors i)
      (map-matrix-to-dtn
       etf mapping rnode descriptors i))))


(defun map-matrix-to-dtn (etf mapping rnode descriptors i)
  (let* ((dtn (make-derivation-tree-node :referent i))
         (name-of-phrase (car mapping))
         (arg-mapping (cadr mapping))
         (phrase (phrase-named name-of-phrase)))
    (unless phrase 
      (push-debug `(,etf ,rnode  ,dtn))
      (error "ETF mapping didn't return a phrase~%~a" etf))
    (setf (resource dtn) phrase)
    (map-rnode-args-to-complements rnode arg-mapping descriptors dtn i)
    dtn))

(defun map-rnode-args-to-complements (rnode arg-mapping descriptors dtn i)
  ;; Populate the rest of an elementary tree mapping.
  ;; Extract the arguments from the edges that the rnode points to
  ;; and package them up as complement nodes.
  (push-debug `(,rnode ,arg-mapping ,dtn))
  (let* ((head-rnode (sparser::rn-head rnode))
         (arg-rnode (sparser::rn-arg rnode))
         (head-edge (cadr (memq :head-edge descriptors)))
         (arg-edge (ecase head-edge
                     (sparser::right-edge 'sparser::left-edge)
                     (sparser::left-edge 'sparser::right-edge)))
         ;;(binding-spec (cadr (memq :binding-spec descriptors)))
         ;; what does this do? It's unused.
         )
    (push-debug`(,head-rnode ,arg-rnode ,head-edge ,arg-edge))
    (flet ((make-comp-node (c+v key)
             (unless c+v
               (break "No variable in ~a rnode"
                      (if (eq key 'sparser::head) 'head 'arg)))
             (let* ((variable (sparser::cv-variable c+v))
                    (category (sparser::cv-type c+v))
                    (phrase-arg (cdr (assoc key arg-mapping)))
                    (value (sparser::value-of variable i category)))
               (unless value
                 (push-debug `(,c+v ,key))
                 (break "Variable ~a returned nil for ~a" variable i))
               (format t "~&variable = ~a, value = ~a" variable value)
               (make-complement-node phrase-arg value dtn))))
      ;;(break "compound head")
      (when head-rnode
        (make-comp-node (car (sparser::rn-variable head-rnode))
                        'sparser::head))
      (when arg-rnode
        (make-comp-node (car (sparser::rn-variable arg-rnode))
                        'sparser::arg))
      dtn)))


;;--- Adjunctions

(defun map-adjunction-to-dtn (etf mapping rnode descriptors i)
  "We've got a matrix and an adjunction. So we have to set up
   a phrase and complements for the matrix, and an AP and
   its adjunct for the adjunction. The head is the matrix,
   the arg is the adjunction."
  (push-debug `(,rnode ,descriptors ,mapping ,i ,etf))    
  (let ((ap (car mapping))
        (body-arg (cadr mapping)) ;; need these?
        (adjunct-arg (caddr mapping))) ;; would they switch ever?
    (push-debug `(,ap ,body-arg ,adjunct-arg))
    (let* ((head-rnode (sparser::rn-head rnode))
           (arg-rnode (sparser::rn-arg rnode)))
      (push-debug `(,head-rnode ,arg-rnode))
      ;;(break "Look at decoding")
      (multiple-value-bind (head-i adjunct-i)
                           (sparser::decompose-psi-by-rnode
                            i head-rnode arg-rnode)
        (push-debug `(,head-i ,adjunct-i))
        (let ((dtn (convert-to-derivation-tree head-rnode head-i)))
          (let ((ap-node (make-adjunction-node ap adjunct-i dtn)))
            ;; self attaches
            (push-debug `(,ap-node ,dtn))
            (break "Look at nodes")
            dtn))))))
                                 



      ;; The call in to this takes an rnode and an individual
      ;; We've got the rnodes, where do we get the references of
      ;; their corresponding edges from ??  
      ;;   All three variables (for "a 12-month target of 60")
      ;; are bound in the psi that is 'i', so see if we can
      ;; count on it just falling out without our having to
      ;; partition the psi into those two parts. The parts are
      ;; there as v+v, but it's a bunch of computation to split them
      ;; on the basis of how they fit with the rnodes
 


;;--- Words

(defmethod find-or-make-word ((sw sparser::word))
  ;; Need to carry over the data on irregulars, which will be tricky
  ;; Could make inference from its brackets: 
  ;;   (rs-phrase-boundary (rule-set-for sw))
  ;;/// Ought to really fuse the two conceptions of the word object
  ;;  Or at least make these at the time on the sparser side when
  ;;  we have all the information right in our hand. 
  (find-or-make-word (sparser::word-pname sw)))

(defmethod find-or-make-word ((s string))
  (or (word-for-string s)
      (define-word/expr s '(noun))))





;;------------ 12/8/10 unreconstructed below here
;;   Goes with original, rather ad-hoc treatment of fall 2009 before
;;   the annotation facility was rebuilt and we got real rnodes
;;   rather than ertzatz ones built from edges. 

#|    references ltml package !!
(defmethod convert-to-derivation-tree ((rpath sparser::rpath) (i ltml::LTML-class))
  (let ((ordered-rnodes (sparser::ordered-list-of-rnodes rpath))
        (dtn (make-instance 'derivation-tree-node
                            :referent i)))
    (setf (root *the-derivation-tree*) dtn)
    (setf (participants *the-derivation-tree*) `(,i))

    (dolist (rnode ordered-rnodes)
      ;; a path will be ordered from the head out to its complements and adjuncts
      ;; so if we trust that, we can just put things where the conventionally go
      ;; and not have to examine the path.
      (read-out-rnode rnode i dtn))
    dtn)) |#

(defun read-out-rnode (rnode i dtn)
  (push-debug `(,rnode ,i ,dtn))
  (let* ((rule-descriptor (sparser::rule-used rnode))
         (variable (sparser::variable-bound rnode))
         (extracted-individual (sparser::extract-value-of-variable i variable)))
    (push-debug `(,rule-descriptor))
    (multiple-value-bind (resource argument/s features-source)
        (sparser::rule-descriptor-to-nlg-resource rule-descriptor)
      (push-debug `(,resource ,argument/s ,features-source))      
      (push-debug `(,i ,variable))
;      (break "resouce = ~a" resource) ;; look at whether we can do it before continuing
      ;; at this point it will go bad on the 2d rnode for that adjunction

      (typecase resource
        (phrase 
         (unless (null (resource dtn))
           (error "The resource derived from ~a~%is a phrase but we've already ~
                  fill that field in the dtn." rnode))
         (setf (resource dtn) resource))
        (sparser::bidir-mapping ;; may be an easy way to cover lots of cases
         (let ((mumble-resource ;; feels like there's an opportunity for recursion
                (sparser::mumble-resource resource)))
           (typecase mumble-resource
             (splicing-attachment-point
              (make-adjunction-node mumble-resource extracted-individual dtn))
             (otherwise
              (error "New/unexpectd mumble-side resource in bidir-mapping")))))
        (otherwise
         (error "Unexpected type of resource for ~a: ~a~%  ~a"
                rnode (type-of resource) resource)))

      (when argument/s ;; single-argument case. 
        (unless variable (break "There are arguments but no corresponding variable"))
        (unless (= 1 (length argument/s))
          (break "Stub not ready to do multi-parameter resources. Needs design"))
        (make-complement-node (car argument/s) extracted-individual dtn)))
    dtn))





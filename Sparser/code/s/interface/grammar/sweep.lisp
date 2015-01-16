;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald -- all rights reserved
;;;
;;;      File:   "sweep"
;;;    Module:   interface/grammar/
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
      (let* ((var (binding-variable b))
             (var-name (var-name var))
             (value (binding-value b)))
        (unless (or (eq var-name 'category)
                    (typep value 'mixin-category)) ;; has-determiner
          (typecase value
            (number)
            (list (push (list var-name (list :list value))
                         objects))
            (symbol)
            (string)
            (word)
            (polyword)
            (category)
            (individual 
             (cond
              ((itypep value 'unclear) nil)
              ((itypep value 'prepositional-phrase)
               (dolist (bb (indiv-binds value))
                 (when (eq (var-name (binding-variable bb)) 'pobj)
                   (push (list var-name (collect-model (binding-value bb)))
                         objects))))
              ((itypep value 'bio-family)
               (push (list var-name value)
                     objects))
              (t
               (push (list var-name (collect-model value))
                     objects))))
          (otherwise
           (push-debug `(,value ,b ,i))
           (break "Unexpected type of value of a binding: ~a" value))))))
  
      (reverse objects)))


;;;--------------------------------------------------------------------
;;; collecting sentences & new vocabulary automatically from a passage
;;;--------------------------------------------------------------------


(defvar *newly-found-unknown-words* nil
  "Accumulator for add-new-word-to-catalog")

; make-word/all-properties/or-primed =>
;   setup-unknown-word-by-default
;   assign-morph-brackets-to-unknown-word
;   unpack-primed-word
;   suitable-for-and-in-OBO => setup-word-denoting-an-OBO
(defun add-new-word-to-catalog (word source)
  (declare (ignore source)) ;; Comlex vs. morphology vs. ...
  (when *sweep-for-sentences*
    (push word *newly-found-unknown-words*)))
  

; (setq *sweep-for-sentences* t)

(defun sentence-sweep (sentence &optional (stream *standard-output*))
  (declare (ignore stream))
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (start-char (pos-character-index start-pos))
         (end-char (1+ ;; include period
                    (pos-character-index end-pos))))
    (let ((string
           (extract-string-from-char-buffers start-char end-char)))
      (print string stream))))


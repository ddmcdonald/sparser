;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald -- all rights reserved
;;;
;;;      File:   "sweep"
;;;    Module:   interface/grammar/
;;;   Version:   January 2015

;; Routines for sweeping down through the structure of Krisp referents.
;; Initiated 1/11/15 with code from December. 

(in-package :sparser)

(defvar *individuals-seen* (make-hash-table)
  "There are some recursive references in the binding used for
  prepositional phrases and possibly other things. We use this
  to avoid an infinite loop while collecting.")

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

(defun initalize-model-collection ()
  (clrhash *individuals-seen*))


(defmethod collect-model ((i individual))
  (unless (gethash i *individuals-seen*)
    (let ((bindings (indiv-binds i))
          objects )
      (push (if (itypep i 'number)
              (value-of 'value i)
              i)
            objects)
      (setf (gethash i *individuals-seen*) t)
      (dolist (b bindings)
        (let* ((var (binding-variable b))
               (var-name (var-name var))
               (value (binding-value b)))
          (unless (or (eq var-name 'category)
                      (typep value 'mixin-category)) ;; has-determiner
            (typecase value
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
              (number)
              (list (push (list var-name (list :list value))
                          objects))
              (category ;; is this right?
               (push `(,var-name ,value) objects))
              (symbol)
              (string)
              (word)
              (polyword)
            
              (otherwise
               (push-debug `(,value ,b ,i))
               (break "Unexpected type of value of a binding: ~a" value))))))
      
      (reverse objects))))


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
  
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/passage 1.txt")
; (setq *sweep-for-sentences* t)
; (setq *sweep-for-sentences* nil)

(defvar *sentence-sweep-stream* *standard-output*)

(defun sentence-sweep (sentence &optional (stream *sentence-sweep-stream*))
  (declare (ignore stream))
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (start-char (pos-character-index start-pos))
         (end-char (1+ ;; include period
                    (pos-character-index end-pos))))
    (let ((string
           (extract-string-from-char-buffers start-char end-char)))
      (print string stream))))



(defun write-swept-sentence-to-file (in-filename out-filename)
  (with-open-file (out-stream
                   out-filename
                   :direction :output
                   :if-does-not-exist :create
                   :if-exists :overwrite)
    (let ((*trace-lexicon-unpacking* nil)
          (*trace-morphology* nil)
          (*sweep-for-sentences* t)
          (*sentence-sweep-stream* out-stream))
      (declare (special *trace-lexicon-unpacking* *trace-morphology*
                        *sweep-for-sentences*))
      (funcall #'f in-filename))))


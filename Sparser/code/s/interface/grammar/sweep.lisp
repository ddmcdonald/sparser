;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2019 David D. McDonald -- all rights reserved
;;;
;;;      File:   "sweep"
;;;    Module:   interface/grammar/
;;;   Version:   August 2019

;; Routines for sweeping down through the structure of Krisp referents.
;; Initiated 1/11/15 with code from December. 
;; 3/21/2015 SBCL pointed out that binding of pobj and prep variables in PP 
;;  referents was very wasteful
;;  put in a hash table instead. This means that all cases where we were searching 
;;  for the bindings of pob must be replaced by use of (get-prep-pobj value)
;; 4/16/15 The hashtable scheme wasted individuals. Only need to store the PP
;;  as the referent of its edge. Fanout from that change. 
;; 4/28/15 Changed gate of add-new-word-to-catalog to new parameter: 
;;  *collect-new-words* 
;; 6/9/15 Added "strip" routines to reverse the "human-reaable" expressions
;;  created by collect-model. Add strings to stripper for "!recursion!"
;; 11/4/15 Removed the return value form that string case. Doesn't make
;;  sense as something to aggregate. 

(in-package :sparser)


(defun strip-model-descriptions (list)
  ;; Called by identify-relations
  (let (  clean-items  )
    (dolist (item list)
      (when item ;; some are null
        (typecase item
          (category) ;; ignore it
          (number)
          (individual
           (when (relevant-type-of-individual item)
             (push item clean-items)))
          (cons
           (let ((results (strip-model-description item)))
             (loop for r in results
               do (push r clean-items))))
          (otherwise
           (push-debug `(,item))
           (break "New type of item: ~a~%~a"
                  (type-of item) item)))))
    ;; The original list was created by pushing
    ;; so this puts in text order. 
    clean-items))

(defun strip-model-description (tree)
  ;; it's a tree, e.g. 
  ;; (agent
  ;; (#<pathway 4020>
  ;;  (modifier
  ;;   (#<protein-pair 4030> (right #<human-protein-family "MAPK" 397>)
  ;;    (left #<human-protein-family "Ras" 401>)))))
  (push-debug `(,tree))
  (nconc
   (strip-model-description1 (car tree))
   (strip-model-description1 (cdr tree))))

(defun strip-model-description1 (item)
  ;; return a list or nil 
  (typecase item
    (symbol nil)
    (individual `(,item))
    (category nil)
    (lambda-variable nil) ;; ??
    (cons
     (strip-model-description item))
    (number)
    (string)
    (word)
    (otherwise
     (push-debug `(,item))
     (break "New case to strip: ~a~%~a"
            (type-of item) item))))


(defun relevant-type-of-individual (i)
  (when (individual-p i)
    (relevant-category-for-dh (itype-of i))))


;;;----------------------
;;; collecting the model
;;;----------------------

(defvar *individuals-seen* (make-hash-table)
  "There are some recursive references in the binding used for
  prepositional phrases and possibly other things. We use this
  to avoid an infinite loop while collecting.")

(defun initalize-model-collection ()
  (clrhash *individuals-seen*))

(defgeneric collect-model (object)
  (:documentation "Called from identify-relations after all
   other operatiosn on a sentence have been done, provided
   that the *readout-relations* flag is set. Returns a list
   of (variable-name, value) pairs based on a recursive
   sweep through the bindings on individuals. Called on
   the referent of every treetop edge."))

(defmethod collect-model ((n number)) ;; For debugging
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
;; anything else to be dropped on the floor?


(defmethod collect-model ((i individual))
  (declare (special category::number category::prepositional-phrase))
  (unless (gethash i *individuals-seen*)
    (let ((bindings (indiv-binds i))
          objects )
      (push (if (itypep i category::number)
              (value-of 'value i)
              i)
            objects)
      (setf (gethash i *individuals-seen*) t)
      (dolist (b bindings)
        (let* ((var (binding-variable b))
               (var-name (var-name var))
               (value (binding-value b)))
          (declare (special var var-name value))
          (unless (or (memq var-name '(category trailing-parenthetical))
                      (typep value 'mixin-category)) ;; has-determiner
            (typecase value
              (individual 
               (cond
                ;;((itypep value 'unclear) nil)
                 ((itypep value category::prepositional-phrase)
                  (cond ((value-of 'pobj value)
                         (push (list var-name
                                     (collect-model-description (value-of 'pobj value)))
                               objects))
                        ((value-of 'comp value)
                         (push (list var-name
                                     (collect-model-description (value-of 'comp value)))
                               objects))))
                ((itypep value 'protein-family) ;; no longer use bio-family
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
              (lambda-variable)
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

(defparameter *collect-new-words* t
  "Gates add-new-word-to-catalog, which is called by 
  all the different ways of defining a previously unknown word")

(defvar *newly-found-unknown-words* nil
  "Accumulator for add-new-word-to-catalog")

; make-word/all-properties/or-primed =>
;   setup-unknown-word-by-default
;   assign-morph-brackets-to-unknown-word
;   unpack-primed-word
;   suitable-for-and-in-OBO => setup-word-denoting-an-OBO
(defun add-new-word-to-catalog (word source)
  (declare (ignore source)) ;; Comlex vs. morphology vs. ...
  (mark-definition-source word) ;; replaces ignore argument
  (when *collect-new-words*
    (pushnew word *newly-found-unknown-words*)))


  
; (f "/Users/ddm/ws/R3/ws/Mitre December texts/passage 1.txt")
; (setq *sweep-for-sentences* t)
; (setq *sweep-for-sentences* nil)



(defvar *sentence-sweep-stream* *standard-output*
  "Bound by write-swept-sentences-to-file to the file that
   it opens for output. Defaults to the listener for debugging.")

(defvar *swept-sentence-count* 0
  "Initialized by write-swept-sentences-to-file and bumped
   by sentence-sweep. Shows up in a comment to help us keep
   track of which sentence is which by eye.")



(defun sentence-sweep (sentence &optional (stream *sentence-sweep-stream*))
  ;; The outer loop is the standard sentence-sweep-loop where this is
  ;; called as an alternative to the rest of the analysis passes by the
  ;; flag *sweep-for-sentences* being up. The call is made once per sentence
  ;; and just after the sentence has been delimited, which does mean that
  ;; the first pass of analysis has happened.
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (start-char (pos-character-index start-pos))
         (end-char (1+ ;; include period
                    (pos-character-index end-pos))))
    (let ((string
           (extract-string-from-char-buffers start-char end-char)))
      ;;(print string stream)
      (format stream "~&~5T(p ~s) ;; ~a"
              string (incf *swept-sentence-count*)))))

(defun write-swept-sentence-to-file (in-filename out-filename)
  (setq *swept-sentence-count* 0)
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



;;;------------------------------------;;;------------------------------------

;;; tabulating facts about the grammar

(defun words-with-rule-sets () ;; vanilla R3 10/9/18 32,146
  (loop for w in *words-defined* ;; 66,638
       as rs = (rule-set-for w)
       when (and rs (typep rs 'rule-set)) collect rs))

(defun polywords-with-rule-sets () ;; 73,235
  (loop for pw in *polywords-defined* ;; 97,902
       as rs = (rule-set-for pw)
       when (and rs (typep rs 'rule-set)) collect rs))


(defun categories-with-rule-sets () ;; 969
  (let ((rule-sets nil))
    (loop for accumulator in '(*referential-categories* ;; 2,430
                               *form-categories* ;; 127
                               *mixin-categories* ;; 46
                               *grammatical-categories*) ;; 503
       as categories = (eval accumulator)
       do (loop for c in categories
             as rs = (rule-set-for c)
             when (and rs (typep rs 'rule-set)) do (push rs rule-sets)))
    rule-sets))


(defun all-defined-rule-sets () ;; 106,350
  (append (categories-with-rule-sets)
          (words-with-rule-sets)
          (polywords-with-rule-sets)))

(defun tally-rule-ids-in-use ()
  (let ((left 0) (right 0))
    (loop for rs in (all-defined-rule-sets)
       when (rs-right-looking-ids rs) do (incf right)
       when (rs-left-looking-ids rs) do (incf left))
    (values left right))) ;; 913, 570

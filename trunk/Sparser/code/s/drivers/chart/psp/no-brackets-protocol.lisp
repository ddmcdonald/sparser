;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "no-brackets-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  December 2014

;; Initiated 10/5/14, starting from the code for detecting bio-entities.
;; 10/29/14 added flags to turn off various steps so lower ones
;; could be independently tested. 11/18/14 Reflecting the decomposition
;; of the sweep into a succession of sweeps. 12/18/

(in-package :sparser)

;;; Sweep to introduce minimal edges over the text, one sentence
;;; at a time, covering all unary rules, polywords, word-driven
;;; fsa's (digits), no-space compositions, and word completions.
;;;   This pass over the sentence will be followed by a succession
;;; of sweeps over the edges (conclusions) of the previous one.

;; lookup-the-kind-of-chart-processing-to-do uses the keyword 
;; :successive-sweeps to call this function. The lookup fn is
;; called from chart-based-analysis where there is a catch to 
;; terminate chart parsing. 

; (setq *kind-of-chart-processing-to-do* :successive-sweeps)
; (bio-setting)  ;; revert to 'normal'


(defun sucessive-sweeps? ()
  ;; syntactic sugar for a mode detector. Cf. new-forest-protocol?
  (eq *kind-of-chart-processing-to-do* :successive-sweeps))


;;;--------
;;; Driver
;;;--------

(defun initiate-successive-sweeps ()
  ;; Copied from inititate-c3-protocol which is already stripped down
  ;; from the normal inititate-top-edges-protocol driver. 
  ;; Called from lookup-the-kind-of-chart-processing-to-do which
  ;; is the content of analysis-core after it finishes initializing.
  ;; N.b. The initialization routines created a sentence already
  (scan-next-position) ;; pull the source-start word into the chart
  (scan-next-position) ;; adds 1st real word into the chart
  (sentence-sweep-loop))


(defvar *sentence* nil)

(defun sentence-sweep-loop ()
  (tr :entering-sentence-sweep-loop)
  (let ((sentence (sentence)))
    (setq *sentence* sentence) ;; if we wait it will be the next sentence

    (loop
      (let* ((start-pos (starts-at-pos sentence))
             (first-word (pos-terminal start-pos)))

        ;; 1st scan the text into minimal terminal edges.
        ;; The thow is from period-hook, which will also advance
        ;; the value returned by (sentence) to be the next sentence
        ;; after this one that we're working on. 
        (tr :scanning-terminals-of sentence)
        (catch :end-of-sentence
          (scan-terminals-loop start-pos first-word))

        (when *sweep-for-patterns*
          (pattern-sweep sentence)
          (short-conjunctions-sweep sentence) ;; precede parens
          (sweep-to-span-parentheses sentence)
          (when *trace-island-driving* (tts))

          (when *chunk-sentence-into-phrases*
            (tr :identifying-chunks-in sentence)
            (identify-chunks sentence) ;; calls PTS too

            ;;(break "after chunking ~a" sentence) 

            (when *parse-chunked-treetop-forest*
              (let ((*return-after-doing-forest-level* t))
                (declare (special *return-after-doing-forest-level*))
                (new-forest-driver sentence)))

            (when *readout-relations*
              (multiple-value-bind (relations entities)
                                   (identify-relations sentence)
                (push-debug `(,relations ,entities))
                ;; Anything to do if there are no relations?
                (readout-relations relations)))))

        ;; EOS throws to a higher catch. If the next sentence
        ;; is empty we will hit the end of source as we
        ;; start scanning terminals and it will throw
        ;; beyond this point. 
        (setq sentence (next sentence))))))

;; (setq *readout-relations* nil)
;; (identify-relations *sentence*)


(defvar *relations* nil)
(defvar *entities* nil)

(defun identify-relations (sentence)
  ;; sweep over every treetop in the sentence and look at
  ;; their referents. For all sensible cases recursively
  ;; examine the object and tally the entities and relations.
  ;;/// when we do discourrse add these to the sentence object
  (setq *relations* nil
        *entities* nil)
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (rightmost-pos start-pos)
         entities  relations  tt-contents
         treetop  referent  pos-after    )
    (when t
      ;; add a space to separate these traces from the
      ;; summary that was just printed
      (format t "~%"))

    ;; modeled on sweep-sentence-treetops
    (loop
      (multiple-value-setq (treetop pos-after) ;; multiple?
        (next-treetop/rightward rightmost-pos))

      (when t
        (format t "~&[relations] tt = ~a~%" treetop))

      (when (edge-p treetop)
        (setq referent (edge-referent treetop))

        (setq tt-contents (collect-model referent))

        (loop for item in tt-contents
          do (if (subject-variable item)
               (push item relations)
               (pushnew item entities))))

      (when (eq pos-after end-pos)
        (return))
      (when (position-precedes end-pos pos-after)
        ;; we overshot somehow
        (return))
      (setq rightmost-pos pos-after))
    (setq *relations* relations
          *entities* entities)
    (values relations
            entities)))


(defmethod collect-model ((n number))
  (let ((edge (edge# n)))
    (unless edge (error "The number ~a does not retrieve an edge" n))
    (collect-model edge)))

(defmethod collect-model ((e edge))
  (let ((referent (edge-referent e)))
    (when referent
      (collect-model referent))))

(defmethod collect-model ((w word)) `(,w))
(defmethod collect-model ((pw polyword)) `(,pw)) ; 
(defmethod collect-model ((c category)) `(,c))
;; anything else?

(defmethod collect-model ((i individual))
  (let ((type (car (indiv-type i)))
        (bindings (indiv-binds i))
        objects )
    ;; It's a relation if one of its variables supports
    ;; a grammatical relation. If it is, then we recurse.
    (if (subject-variable type)
      (let ( embedded-objects )
       ;; Walk through the bindings. 
       ;; Push the pair that records the variable that bound 
       ;; the value onto objects.
       ;; Recurse on the values and stash the result on 
       ;; embedded-objects.After the loop elevate all of 
       ;; them to objects's list. /// may not be a good order
       (dolist (b bindings)
         (let ((var (binding-variable b))
               (value (binding-value b)))
           (unless (eq (var-name var) 'category)
             (push `(,var ,value) objects)
             (let ((objects (collect-model value)))
               (typecase objects
                 (category)
                 (cons
                  (loop for obj in objects
                  do (push `(,var ,obj) embedded-objects)))
                 (otherwise 
                  (error "Unexpected return type from collect-~
                          model: ~a~%  ~a"
                         (type-of objects) objects)))))))
        (push i objects))
      (else
       (push i objects)))
    objects ))

;; (readout-relations *relations*)
(defun readout-relations (relations 
                          &optional (stream *standard-output*))
  (when (null relations)
    (format stream "~&~%No relations identified~%~%"))
  (dolist (r relations)
    (print-readably r stream))
  (setq *relations* relations)
  (length *relations*))





;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "no-brackets-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  January 2015

;; Initiated 10/5/14, starting from the code for detecting bio-entities.
;; 10/29/14 added flags to turn off various steps so lower ones
;; could be independently tested. 11/18/14 Reflecting the decomposition
;; of the sweep into a succession of sweeps. 12/18/15 code to create trees 
;; of semantics for treetops -- collect-model-description and semantic-tts.
;; 1/11/15 Moving that code out to interface/grammar/sweep and refining 
;; how it's used. 
;; 1/12/2015 Handle circular structures in seemtree -- needed for verb+ed premodifiers, among others
;; 1.18.2015 fix collection of description of individuals when modifiers referents are categories and not individuals as in "catalytic domains"
;; 1/18/2015 code (a bit sketchy) to extract all entities and all relations after parsing a sentence -- entities-in and relations-in
;; tweaks to all-entities and all-relations

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

        (if *sweep-for-sentences*
          (sentence-sweep sentence)

          (when *sweep-for-patterns*
            (pattern-sweep sentence)
            (short-conjunctions-sweep sentence) ;; precede parens
            (sweep-to-span-parentheses sentence)
            (when *trace-island-driving* (tts))

            (when *chunk-sentence-into-phrases*
              (tr :identifying-chunks-in sentence)
              (identify-chunks sentence) ;; calls PTS too
              (when *trace-island-driving* (tts))

              (when *parse-chunked-treetop-forest*
                (let ((*return-after-doing-forest-level* t))
                  (declare (special *return-after-doing-forest-level*))
                  (new-forest-driver sentence))

                (post-analysis-operations sentence)))))
                
        ;; EOS throws to a higher catch. If the next sentence
        ;; is empty we will hit the end of source as we
        ;; start scanning terminals and it will throw
        ;; beyond this point. 
        (end-of-sentence-processing-cleanup sentence)
        (setq sentence (next sentence))))))


;;;----------------------------------------------------
;;; operations after the regular analysis has finished
;;;----------------------------------------------------

(defvar *relations* nil
  "Holds the relations for the last sentence when *readout-relations* is up")
(defvar *entities* nil
  "Holds the entities for the last sentence when *readout-relations* is up")

(defun post-analysis-operations (sentence)
  (when *scan-for-unsaturated-individuals*
    (sweep-for-unsaturated-individuals sentence))

  (identify-salient-text-structure sentence)

  (when *do-anaphora*
    (handle-any-anaphora sentence))

  (when *readout-relations*
    (multiple-value-bind (relations entities)
                         (identify-relations sentence)
      (set-entities sentence entities)
      (set-relations sentence relations)
      (setq *relations* relations  ; (readout-relations relations)
            *entities* entities))) ; (readout-entities entities)
)


;;;------------------------------------------------------------
;;; final operations on sentence before moving to the next one
;;;------------------------------------------------------------

(defun end-of-sentence-processing-cleanup (sentence)
  (set-discourse-history sentence (cleanup-lifo-instance-list))
  ;; we could do a tts 
  #+ignore(when *readout-segments-inline-with-text* ;; be quiet when others are
    (format t "~&--------------------------~%~%")))

  


;;;-----------------------
;;; identifying relations
;;;-----------------------

;; (setq *readout-relations* nil)
;; (identify-relations *sentence*)

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
    (when nil
      ;; add a space to separate these traces from the
      ;; summary that was just printed
      (format t "~%"))

    ;; modeled on sweep-sentence-treetops
    (loop
      (multiple-value-setq (treetop pos-after) ;; multiple?
        (next-treetop/rightward rightmost-pos))

      (when nil
        (format t "~&[relations] tt = ~a~%" treetop))

      (when (edge-p treetop)
        (setq referent (edge-referent treetop))

        (when referent
          (initalize-model-collection)
          (setq tt-contents (collect-model referent))

          (loop for item in tt-contents
            do (if (subject-variable item)
                 (push item relations)
                 (pushnew item entities)))))

      (when (eq pos-after end-pos)
        (return))
      (when (position-precedes end-pos pos-after)
        ;; we overshot somehow
        (return))
      (setq rightmost-pos pos-after))

    (values relations
            entities)))




(defun tts-semantics ()
  (loop for edge in (cdr (all-tts)) 
    when (and (edge-p edge) 
              (not (word-p (edge-referent edge))))
    collect (semtree (edge-referent edge))))

(defun tts-edge-semantics ()
  (loop for edge in (cdr (all-tts)) 
    when (and (edge-p edge) 
              (not (word-p (edge-referent edge))))
    collect (list edge
                  (semtree (edge-referent edge)))))

(defun all-entities (&optional (trees (tts-semantics)))
    (loop for st in trees
    append
    (entities-in st)))

(defun entities-in (tree)
  (let
      (entities)
    (when
        (consp tree)
      (if
       (and
        (not (consp (car tree)))
        (entity-p (car tree)))
       (push (car tree) entities))
      (loop for binding in (cdr tree)
        do
        (setq entities 
              (append 
               (entities-in (second binding))
               entities))))
    entities))

(defun all-relations (&optional (trees (tts-semantics)))
  (extend-relations
   (loop for rel in (all-rels trees)   
     when (cdr rel)
     collect rel)))

(defun all-rels (&optional (trees (tts-semantics)))
  (loop for st in trees
    append
    (loop for rel in 
      (relations-in st)
      when (cdr rel)
      collect rel)))

(defun extend-relations (relations)
  (let
      ((alist1
        (loop for r in relations 
          when (is-bio-entity? r)
          collect
          `(cons (second (second r)) (second (third r)))))
       (alist2
        (loop for r in relations 
          when (is-bio-entity? r)
          collect
          (cons (second (third r)) (second (second r))))))
    
    (remove-duplicates
     (append relations
             (sublis 
              alist1
              (loop for r in relations unless (is-bio-entity? r) collect r ))
             (sublis 
              alist2
              (loop for r in relations unless (is-bio-entity? r) collect r )))
     :test #'equalp)))

(defun is-bio-entity? (r)
  (and (individual-p (car r))
       (itypep (car r) 'is-bio-entity)
       (cddr r)))

(defun relations-in (tree)
  (let
      (relations)
    (when
        (and 
         (consp tree)
         (not (eq 'collection (car tree))))
      
      (if
       (and
        (not (consp (car tree)))
        (not (entity-p (car tree))))
       (push (extract-relation tree) relations))
      (loop for binding in (cdr tree)
        do
        (setq relations
              (append 
               (relations-in (second binding))
               relations))))
    relations))

(defun extract-relation (rel)
  `(,(car rel)
    .,(loop for binding in (cdr rel) 
        collect 
        `(,(car binding) 
          ,(if (consp (second binding)) 
              (if
               (consp (car (second binding)))
               (second (car (second binding)))
               (car (second binding)))
              (second binding))))))


;; THIS NEEDS TO BE REFINED
(defun entity-p (e)
  (and
   (individual-p e)
   (not (subject-variable e))
   (not (itypep e 'bio-process))
   (not (itypep e 'predicate))
   (not (itypep e 'is-bio-entity))))

(defmethod semtree ((x null))
  nil)

(defmethod semtree ((w word))
  nil)

(defmethod semtree ((n number))
  (semtree (e# n)))

(defmethod semtree ((e edge))
  (semtree (edge-referent e)))

(defparameter *semtree-seen-individuals* (make-hash-table))
(defmethod semtree ((i individual))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i))

(defmethod semtree ((i referential-category))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i))


(defmethod collect-model-description ((cat category))
  (list cat))

(defmethod collect-model-description ((cal cons))
  `(collection :members 
               (,@(loop for l in cal 
                    collect (collect-model-description l)))))

(defmethod collect-model-description ((i individual))
  (cond
   ((gethash i *semtree-seen-individuals*)
    (list (list "!recursion!" i)))
   ((itypep i 'number)
    (value-of 'value i))
   ((and
     (itypep i 'bio-family)
     (not (itypep i 'collection)))
    `(,i))
   (t  
    (let ((bindings (indiv-binds i))
          (desc (list i)))
      (setf (gethash i *semtree-seen-individuals*) t)
      ;; Had been restricting the recursion to types with
      ;; a subject variable: (subject-variable type), 
      ;; but that's missing interesting noun phrase referents.
      (dolist (b bindings)
        (let ((var (binding-variable b))
              (value (binding-value b)))
          (unless (or (eq (var-name var) 'category)
                      (typep value 'mixin-category)) ;; has-determiner
            (cond
             ((or (numberp value)
                  (symbolp value)
                  (stringp value))
              (push (list (var-name var) value) desc))
             (t
              (typecase value
                (individual 
                 (if
                  (itypep value 'prepositional-phrase)
                  (dolist (bb (indiv-binds value))
                    (when (eq (var-name (binding-variable bb)) 'pobj)
                      (push (list (var-name var)
                                  (collect-model-description (binding-value bb)))
                            desc)))
                  (push (list (var-name var)
                              (collect-model-description value))
                        desc)))
                (word)
                (polyword)
                (category
                 (push (list (var-name var)
                             (collect-model-description value))
                       desc))
                (cons
                 (push
                  (list (var-name var)
                        `(collection (:members 
                              (,@(loop for item in value 
                                   collect (collect-model-description item))))))
                  desc))
                (otherwise
                 (push-debug `(,value ,b ,i))
                 (break "Unexpected type of value of a binding: ~a" value))))))))
      
      (reverse desc)))))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "semantic-extraction"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  July 2016


;;; This file contains all the functions/methods for extracting the elements of the semantics of a
;;;  parse, for display to the user, and for transmission to Spire...


;;;-----------------------
;;; identifying relations
;;;-----------------------

;; (setq *readout-relations* nil)
;; (identify-relations *sentence*)

(defvar *relations* nil
  "Holds the relations for the last sentence when *readout-relations* is up")
(defvar *entities* nil
  "Holds the entities for the last sentence when *readout-relations* is up")


(defun identify-relations (sentence)
  ;; sweep over every treetop in the sentence and look at
  ;; their referents. For all sensible cases recursively
  ;; examine the object and tally the entities and relations.
  ;; N.b. this sweep is based on collect-model, which is
  ;; defined in interface/grammar/sweep.lisp
  (setq *relations* nil
        *entities* nil)
  (let* ((start-pos (starts-at-pos sentence))
         (end-pos (ends-at-pos sentence))
         (rightmost-pos start-pos)
         (tt-count 0)
	 treetops
         raw-entities  raw-relations  tt-contents
         treetop  referent  pos-after )

    ;; modeled on sweep-sentence-treetops
    (loop
       (multiple-value-setq (treetop pos-after) ;; multiple?
	 (next-treetop/rightward rightmost-pos))
      
       (incf tt-count)
       (push treetop treetops)

       (when (edge-p treetop)
	 (setq referent (edge-referent treetop))

	 (when referent
	   (initalize-model-collection)
	   (setq tt-contents (collect-model referent))

	   (loop for item in tt-contents
	      do (cond
		   ((or (subject-variable item)
			(individual-p item))
		    (push item raw-relations))
		   (t
		    (pushnew item raw-entities))))))

       (when (eq pos-after end-pos)
	 (return))
       (when (position-precedes end-pos pos-after)
	 ;; we overshot somehow
	 (return))
       (setq rightmost-pos pos-after))

    ;; (push-debug `(,raw-entities ,raw-relations))
    ;; (setq raw-entities (car *) raw-relations (cadr *))
    ;; (strip-model-descriptions raw-relations)
    ;; (break "debug strip model")

    (let ((relations (strip-model-descriptions raw-relations))
          (entities (strip-model-descriptions raw-entities)))
      (values relations
              entities
              tt-count
	      (reverse treetops)))))

;;;---------------------------
;;; Helper code for the cards
;;;---------------------------

(defun all-individuals-in-tts (sentence)
  ;; This used to both walk the treetops to identify
  ;; all of the individuals that they references 
  ;; and also recurd their surface strings.
  ;; Now it just does the walk and the strings
  ;; are recorded by the call to note-surface-string in complete/hugin.
  (let ((individuals nil)
        (start-pos (starts-at-pos sentence))
        (end-pos (ends-at-pos sentence)))
    (loop for tt in (all-tts start-pos end-pos)
      do (loop for i in (individuals-under tt)
           when (itypep i 'biological)
           do (pushnew i individuals)))
;;    (loop for i in individuals
;;      do (store-surface-string i))
    (reverse individuals)))

(defun note-surface-string (edge)
  ;; Called on every edge from complete-edge/hugin
  ;; Record the surface string from the span dictated 
  ;; by the edge. 
  (declare (special *surface-strings*))
  (let ((referent (edge-referent edge)))
    (when (and referent (individual-p referent))
      (let* ((start-pos (pos-edge-starts-at edge))
             (end-pos (pos-edge-ends-at edge))
             (start-index (pos-character-index start-pos))
             (end-index (pos-character-index end-pos)))
        #| Too noisy. Digit sequences typically have
        a null end-index for reasons as yet unexplored
        (unless start-index
          (format t "~&>>> Null start-index: ~a~%~%" edge))
        (unless end-index
          (format t "~&>>> Null end-index: ~a~%~%" edge)) |#

        (if (and start-index end-index)
          ;; need both indices to extract the string
          (let ((string (extract-string-from-char-buffers 
                         start-index end-index)))
	    (setf (gethash edge *surface-strings*) string)
            (setf (gethash referent *surface-strings*) string))

          (setf (gethash referent *surface-strings*) ""))))))



(defparameter *surface-strings* (make-hash-table :size 10000))

;; OBE ??? Or part of a last-resort strategy. 
;; No longer called from all-individuals-in-tts
(defun store-surface-string (i)
  (setf (gethash i *surface-strings*)
    (get-surface-string-for-individual i)))

(defun retrieve-surface-string (i)
  (gethash i *surface-strings*))

(defun get-surface-string-for-individual (i)
  ;; Most all entities should have gotten their surface string
  ;; recorded when their edge passed through complete. 
  ;; This provides a minimal value for the others.
  (let ((name (and (individual-p i) (value-of 'name i))))
    (if name
      (etypecase name
        (string name)
        (word (word-pname name))
        (polyword (pw-pname name)))
      (format nil "~s" i))))




;;--------- dregs of another scheme for getting 
;; surface strings  --- Review and flush.

#+ignore
(defun get-surface-string-from-locally-recorded-edge (edges)
  (let ((edge (car edges))) 
    ;; ignoring possibility of mulitple mentions at least for now
    (let* ((start-pos (pos-edge-starts-at edge))
           (end-pos (pos-edge-ends-at edge))
           (start-index (pos-character-index start-pos))
           (end-index (pos-character-index end-pos)))
      (unless (and start-index end-index)
        (error "Some position index is null"))
      (extract-string-from-char-buffers 
       start-index end-index))))

#+ignore
(defun get-surface-string-from-discourse-entry (i)
  ;; N.b. depends on the dicourse entries being current
  ;; and tacitly assumes that there's only one mention
  ;; of an individual in the region being looked at
  ;; or that their spelling (surface string) in those two
  ;; mentions is identical.
  (let ((entry (individuals-discourse-entry i)))
    (when entry
      (let* ((most-recent (second entry))
             (start (car most-recent))
             (end (cdr most-recent)))
        (when (and (position-p start) (position-p end))
          (let ((start-index (pos-character-index start))
                (end-index (pos-character-index end)))
            (push-debug `(,start-index ,end-index ,i)) 
            (extract-string-from-char-buffers 
             start-index end-index)))))))

;;;------------------------------------
;;; collectors for semtree and friends
;;;------------------------------------

(defun tts-semantics ()
  (loop for edge in (all-tts) #+ignore (cdr (all-tts)) 
    when (and (edge-p edge) 
              (not (word-p (edge-referent edge))))
    collect (semtree (edge-referent edge))))

(defun tts-edge-semantics ()
  (loop for edge in (all-tts) #+ignore (cdr (all-tts)) 
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
  (let (relations)
    (when (and (consp tree)
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
             (if (consp (car (second binding)))
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

(defun itypes-under (x type)
  (loop for i in (individuals-under x)
    when (itypep i type)
    collect i))

(defun processes-under (x)
  (itypes-under x 'bio-process))


(defun individuals-under (x)
  (declare (special *semtree-seen-individuals*))
  (let ((indivs nil))
    (semtree x)
    (maphash #'(lambda (l h)
                 (declare (ignore h))
                 (push l indivs))
             *semtree-seen-individuals*)
    indivs))


(defun spire-tree (item)
  (let ((*for-spire* t))
    (declare (special *for-spire*))
    (semtree item)))

;;----- semtree methods

(defmethod semtree ((x null))
  nil)

(defmethod semtree ((w word))
  nil)

(defmethod semtree ((n number))
  (semtree (e# n)))

(defmethod semtree ((e edge))
  (semtree (edge-referent e)))


(defparameter *semtree-seen-individuals* (make-hash-table)
  "Cleared and used by semtree to avoid walking through the
  same individual twice and getting into a loop.")

(defmethod semtree ((i individual))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i))

(defmethod semtree ((i referential-category))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i))


;;----- collect-model-description mentods

(defmethod collect-model-description ((cat category))
  (list cat))

(defmethod collect-model-description ((str string))
  (list str))


(defmethod collect-model-description ((w word))
  (word-pname w))

(defmethod collect-model-description ((w polyword)) ;
  (pw-pname w))

(defmethod collect-model-description ((cal cons))
  `(collection :members 
                   (,@(loop for l in cal 
                         collect (collect-model-description l)))))

(defparameter *print-sem-tree* nil
  "Set to T to change the structures extracted for collections, to allow psemtree to produce better output,
without damaging other code.")

(defparameter *show-words-and-polywords* nil)
(defparameter *for-spire* nil
  "If true, then we put category and id information into the tree explicitly, rather than putting the individual into the tree.")
(defun indiv-or-type (i)
  (if *for-spire*
      `((,(cat-name (itype-of i))
          ,(indiv-uid i)))
      `(,i)))

(defmethod collect-model-description ((i individual))
  (declare (special script))
  (cond
    ((gethash i *semtree-seen-individuals*)
     (if *for-spire*
         (indiv-or-type i)
         `(("!recursion!" ,i))))
    ((and
      (itypep i 'number)
      (not (itypep i 'ordinal))
      (not *print-sem-tree*)
      (not *for-spire*))
     (if
      (itypep i 'collection)
      (value-of 'items i)
      (value-of 'value i)))
   	
    ((and (eq script :biology)
          (itypep i 'protein-family) ;; get rid of bio-family -- misnamed...
          (not (itypep i 'collection)))
     (let ((bindings (indiv-binds i))
           (desc (indiv-or-type i)))
       (declare (special bindings desc))
       (append
        desc
        (loop for b in bindings 
           unless (member (var-name (binding-variable b))
                          '(members count ras2-model))
           collect
             (list (var-name(binding-variable b))
                   (collect-model-description (binding-value b)))))))
    ((itypep i 'collection)
     (setf (gethash i *semtree-seen-individuals*) t)
     (collect-model-description-for-collection i))
    (t  
     (let ((desc (indiv-or-type i)))
       (setf (gethash i *semtree-seen-individuals*) t)
       ;; Had been restricting the recursion to types with
       ;; a subject variable: (subject-variable type), 
       ;; but that's missing interesting noun phrase referents.
       (loop for b in  (indiv-binds i)
          as var  = (binding-variable b)
          as var-name = (var-name var)
          as value = (binding-value b)
          do
            (unless (or (memq var-name
                              '(trailing-parenthetical category ras2-model))
                        (typep value 'mixin-category)) ;; has-determiner
              (if (or (numberp value)(symbolp value) (stringp value))
                  (push (list var-name value) desc)
                  (typecase value
                    (individual 
                     (if (itypep value 'prepositional-phrase)
                         (push (list var-name ; 
                                     (collect-model-description
                                      (value-of 'pobj value)))
                               desc)
                         (push (list var-name
                                     (collect-model-description value))
                               desc)))
                    (word (cond (*for-spire* (push (list var-name value) desc))
                                (*show-words-and-polywords* (push (list var-name value) desc) )))
                    (polyword (cond (*for-spire* (push (list var-name value) desc))
                                (*show-words-and-polywords* (push (list var-name value) desc) )))
                    (category
                     (push `(,var-name ,(collect-model-description value)) desc))
                    (cons  (lsp-break "how did we get a CONS ~s as a value for variable ~s~%"
                                      value var-name))
                    (rule-set) ;; the word "anti" presently does this
                    ;; because the fix to bio-pair isn't in yet (ddm 6/9/15)
                    (otherwise
                     (push-debug `(,value ,b ,i))
                     ;;(break "Unexpected type of value of a binding: ~a" value)
                     (format t "~&~%Collect model: ~
                            Unexpected type of value of a binding: ~a~%~%" value))))))
       (reverse desc)))))


(defun collect-model-description-for-collection (i)
  (let ((desc (indiv-or-type i)))
    (loop for b in  (indiv-binds i)
       as var  = (binding-variable b)
       as var-name = (var-name var)
       as value = (binding-value b)
       do
         (unless (or (memq var-name '(trailing-parenthetical category ras2-model))
                     (typep value 'mixin-category)) ;; has-determiner
           (case var-name
             (type nil)
             (number nil)
             (items
              (let ((member-descs (mapcar #'collect-model-description value)))
                (push
                 (if *for-spire*
                     `(:members ,.member-descs)
                     `(,var-name (collection (:members (,@ member-descs)))))
                 desc)))
             (if (or (numberp value) (symbolp value) (stringp value))
                 (push `(,var-name value) desc)
                 (typecase value
                   (individual 
                    (push (list var-name
                                (collect-model-description
                                 (if (itypep value 'prepositional-phrase)
                                     (value-of 'pobj value)
                                     value)))
                          desc))
                   (word (when *show-words-and-polywords* (push `(,var-name ,value) desc)))
                   (polyword (when *show-words-and-polywords* (push `(,var-name ,value) desc)))
                   (category
                    (push `(,var-name ,(collect-model-descriptiOn value)) desc))
                   (cons (lsp-break "how did we get a CONS ~s as a value for variable ~s~%"
                                    value var-name))
                   (rule-set) ;; the word "anti" presently does this
                   ;; because the fix to bio-pair isn't in yet (ddm 6/9/15)
                   (otherwise
                    (push-debug `(,value ,b ,i))
                    ;;(break "Unexpected type of value of a binding: ~a" value)
                    (format t "~&~%Collect model: ~
                            Unexpected type of value of a binding: ~a~%~%" value)))))))
    (reverse desc)))

;;;--------------------
;;; save the sentences
;;;--------------------

(defparameter *print-sentences* nil)

(defun possibly-print-sentence ()
  (declare (special *sentence-in-core* *print-sentences*))
  (when (numberp *print-sentences*)
    (format t "~&~&*** (p ~s) ;; ~s" 
            (sentence-string *sentence-in-core*) 
            (incf *print-sentences*))))




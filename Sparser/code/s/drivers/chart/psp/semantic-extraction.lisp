;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "semantic-extraction"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  March 2018


;;; This file contains all the functions/methods for extracting the elements of the semantics of a
;;;  parse, for display to the user, and for transmission to Spire...


;;;-----------------------
;;; identifying relations
;;;-----------------------

;; (setq *readout-relations* nil)
;; (identify-relations *sentence*)
(in-package :sparser)
(defvar *relations* nil
  "Holds the relations for the last sentence when *readout-relations* is up")
(defvar *entities* nil
  "Holds the entities for the last sentence when *readout-relations* is up")

(defparameter *print-sem-tree* nil
  "Set to T to change the structures extracted for collections, to allow
 psemtree to produce better output, without damaging other code.")

(defparameter *show-words-and-polywords* nil)

(defparameter *for-spire* nil
  "If true, then we put category and id information into the tree explicitly,
 rather than putting the individual into the tree.")


(defun identify-relations (sentence)
  ;; sweep over every treetop in the sentence and look at
  ;; their referents. For all sensible cases, recursively
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

    ;; loop modeled on sweep-sentence-treetops
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

(defun all-individuals-in-tts ()
  ;; This used to both walk the treetops to identify
  ;; all of the individuals that they reference
  ;; and also recurd their surface strings.
  ;; Now it just does the walk and the strings
  ;; are recorded by the call to note-surface-string in complete/hugin.
  (let ((individuals nil))
    (loop for sentence in (all-current-sentences)
          do
            (let ((start-pos (starts-at-pos sentence))
                  (end-pos (ends-at-pos sentence)))
              (loop for tt in (all-tts start-pos end-pos)
                    do (loop for i in (individuals-under tt)
                             when (itypep i 'biological)
                             do (pushnew i individuals)))))
    (reverse individuals)))


;; Set this variable to collect information about realizations of
;; biochemical-entities in text...
(defparameter *bce-ht* nil)  ;;(make-hash-table :size 10000)
  	

(defparameter *save-surface-text-as-variable* t)
(defparameter *save-surface-text-classes*
  '(bio-chemical-entity pathway bio-complex
    ;;bio-control post-translational-modification
    bio-process
    bio-method
    residue-on-protein
    cellular-location
    bio-scalar
    ))


(defparameter *bio-entity-heads* nil)
(defparameter *bio-chemical-heads* nil)
(defparameter *localization-interesting-heads-in-sentence* nil)

(defun collect-bio-chemical-entity-strings ()
  (collect-bio-entity-heads)
  (collect-bio-chemical-heads))

(defun collect-bio-entity-heads ()
  (setq *bio-entity-heads* (make-hash-table :size 200000 :test #'equal)))

(defun collect-bio-chemical-heads ()
  (setq *bio-chemical-heads* (make-hash-table :size 200000 :test #'equal)))

(defun collect-localization-interesting-heads-in-sentence ()
  (setq *localization-interesting-heads-in-sentence* (list t)))

(defun reset-localization-interesting-heads-in-sentence ()
  (setq *localization-interesting-heads-in-sentence* (list t)))


(defparameter *localization-split-sentences* nil)
(defparameter *loc-types* nil)
(defparameter *loc-localizations* (make-hash-table :size 1000 :test #'equal))
(defparameter *loc-localizations-inverse* (make-hash-table :size 1000 :test #'equal))

(defun sort-loc-heads ()
  (let ((loc-heads
         (remove-duplicates
          (sort (loop for pair in
                        (cdr (reverse *localization-interesting-heads-in-sentence*))
                      when (second pair)
                      collect pair)
                #'(lambda(x y)(<= (edge-start-index (car x))(edge-start-index (car y)))))
          :test
          #'(lambda (x y) (and (= (edge-start-index (car x))(edge-start-index (car y)))
                               (equal (second x)(second y)))))))
    (loop for lh in loc-heads
          do
            (setf (gethash (second lh) *loc-localizations*)
                  (string->model-summaries (second lh)))
            (pushnew (second lh)
                     (gethash (string->model-summaries (second lh))
                              *loc-localizations-inverse*))
            (pushnew
             (edge-referent (car lh)) ;;(cat-name (itype-of (edge-referent (car lh))))
             *loc-types*))

    loc-heads))

(defun red-string (str)
  (if str
      (format nil "~c[31m~a~c[m" #\ESC str #\ESC)
      ""))

(defun green-string (str)
  (if str
      (format nil "~c[32m~a~c[m" #\ESC str #\ESC)
      ""))

(defun yellow-string (str)
  (if str
          (format nil "~c[33m~a~c[m" #\ESC str #\ESC)
      ""))

(defun blue-string (str)
  (if str
      (format nil "~c[34m~a~c[m" #\ESC str #\ESC)
      ""))


(defparameter *use-ansii-for-colors* nil)

(defun colorize (head)
  (let* ((edge (car head))
         (string (second head))
         (head-sem (edge-referent edge)))
    (if *use-ansii-for-colors*
        (cond ((itypep head-sem 'protein) (yellow-string string))
              ((itypep head-sem 'pathway) (green-string string ))
              ((itypep head-sem 'bio-process) (red-string string))
              (t (blue-string string)))

        (cond ((itypep head-sem 'protein) (protein-string string))
              ((itypep head-sem 'pathway) (pathway-string string ))
              ((itypep head-sem 'bio-process) (bio-process-string string))
              (t (other-named-string string))))))

(defun protein-string (str)
  (if str
      (format nil "<span class=\"protein\">~a</span>" str)
      ""))

(defun pathway-string (str)
  (if str
      (format nil "<span class=\"pathway\">~a</span>" str)
      ""))

(defun bio-process-string (str)
  (if str
      (format nil "<span class=\"bio-process\">~a</span>" str)
      ""))

(defun other-named-string (str)
  (if str
      (format nil "<span class=\"other-named\">~a</span>" str)
      ""))

(defun split-sentence-string-on-loc-heads ()
  (let ((rem-sent-string (current-sentence))
        (loc-heads (sort-loc-heads))
        items)
    (loop for head in loc-heads
          do
            (push (subseq rem-sent-string 0 (search (second head) rem-sent-string)) items)
            (push (colorize head) items)
            (setq rem-sent-string (subseq rem-sent-string (+ (search (second head) rem-sent-string) (length (second head))))))
    (push rem-sent-string items)
    (let ((result ""))
      (loop for (normal colored-string) on (reverse items) by #'cddr
            do (setq result (format nil "~a~a~a" result normal (or colored-string ""))))
      result)))


;;;------------------------
;;; saving surface strings
;;;------------------------

(defun save-surface-string (edge)
  (note-surface-string edge))

(defparameter *surface-strings* (make-hash-table :size 10000)
  "Used by note-surface-string as the place to cache the text
   string that corresponds to an edge. Key is the referent
   of the edge.")

(defparameter *referent-surface-strings* (make-hash-table :size 10000)
  "Used by note-surface-string as the place to cache all of the unique text
   strings that corresponds to referent. Key is the referent
   of the edge.")

(defparameter *record-all-surface-strings* nil)

(defun note-surface-string (edge)
  ;; Called on every edge from complete-edge/hugin
  ;; Record the information about the surface string from the span dictated 
  ;; by the edge.
  (declare (special category::residue-on-protein))
  (let ((referent (edge-referent edge)))
    (when t ;; (and referent (individual-p referent))
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

        (if (not (and start-index end-index))
            ;; need both indices to extract the string
          (setf (gethash referent *surface-strings*) "")
          
          (let ((str (extract-string-from-char-buffers start-index end-index)))
            (setf (gethash edge *surface-strings*) str)
            (setq str (trim-whitespace str))
            (setf (gethash referent *surface-strings*) str)

            (when (current-script :biology)            
              (maybe-record-localization-interesting-heads edge referent)
              (when (or (and  (member (edge-right-daughter edge)
                                      '(:single-term :long-span))
                              ;; :long-span for polywords ;ic "cyclin D1"
                              (individual-p referent))
                        (itypep (edge-referent edge) category::residue-on-protein))
                (maybe-record-bio-chemical-entity-strings str referent)
                (setq referent (maybe-insert-raw-text-variable referent edge)))            
              (maybe-record-all-referent-surface-strings referent str)
              (maybe-record-bio-entity-heads referent edge)
              (maybe-record-bio-chemical-heads referent edge))))))))



(defun maybe-record-bio-chemical-entity-strings (string referent)
  (when (and *bce-ht* (itypep referent 'bio-chemical-entity))
    (pushnew string (gethash referent *bce-ht*) :test #'equal)))

(defun maybe-record-localization-interesting-heads (edge referent)
  (when (and *localization-interesting-heads-in-sentence*
             (loop for st-class in *save-surface-text-classes*
                   thereis (itypep referent st-class))
             (not (eq (cat-name (edge-category edge)) 'lambda-expression))
             (or (and  (eq (edge-right-daughter edge) :SINGLE-TERM) (individual-p referent))
                 (is-basic-collection? referent)))                         
    (push (list edge (head-string edge)) *localization-interesting-heads-in-sentence*)))

(defun maybe-insert-raw-text-variable (referent edge)
  "HMS wanted to have the raw text for items of interest, so record it 
   as a variable in the referent"
  (or
   (when (and *save-surface-text-as-variable*
              (not (member (form-cat-name edge)
                           '(lambda-form)))
              (loop for st-class in *save-surface-text-classes*
                    thereis (itypep referent st-class)))
     (when (null (value-of 'raw-text referent))
       ;; do this after the code above, so that the *bce-ht*
       ;;  is keyed on the individual without the text
       ;; (format t "set raw-text of ~s to ~s~%" edge (head-string edge))
       (setq referent (bind-dli-variable 'raw-text (head-string edge) referent))
       (set-edge-referent edge referent)))
   referent))

(defun maybe-record-all-referent-surface-strings (ref string)
  (when *record-all-surface-strings*
    ;;(lsp-break "saving string ~s for referent ~s~%" string ref)
    (pushnew string (gethash ref *referent-surface-strings*) :test #'equal)))

(defun maybe-record-bio-entity-heads (referent edge)
  (declare (special referent edge))
  (when (and *bio-entity-heads*
             (eq (itype-of referent) (category-named 'bio-entity))
             (not (eq (edge-rule edge) 'REIFY-NS-NAME-AS-BIO-ENTITY)))
    #+ignore
    (when (equal (head-string edge) "ankyrin")
      (lsp-break "maybe-record-bio-entity-heads"))
    (setf (gethash (head-string edge) *bio-entity-heads*) t)))

(defun maybe-record-bio-chemical-heads (referent edge)
  (when (and *bio-chemical-heads*
             (itypep referent 'bio-chemical-entity)
             (not (itypep referent 'collection)))
    (incf (gethash
           (list (cat-name (itype-of referent))
                 (value-of 'uid referent)
                 (head-string edge))
           *bio-chemical-heads*
           0))))



(defun all-surface-strings (i)
  (gethash i *referent-surface-strings*))

(defun retrieve-surface-string (i)
  (gethash i *surface-strings*))

(defun get-surface-string-for-individual (i)
  ;; Most all entities should have gotten their surface string
  ;; recorded when their edge passed through complete. 
  ;; This provides a minimal value for the others.
  (let ((name (and (individual-p i) (value-of 'name i))))
    (if name
      (pname name)
      (format nil "~s" i))))

(defun get-string-from-edge-word (item)
  "Given either an edge or word, retrieves the surface string.
   If neither, just returns the item"
  (cond ((edge-p item)
         (string-right-trim " " (retrieve-surface-string item)))
        ((word-p item)
         (string-right-trim " " (pname item)))
        (t
         item)))


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

(defun all-entities (&optional (trees (tts-semantics)))
  (loop for st in trees
     append (entities-in st)))

(defun entities-in (tree)
  (let ( entities )
    (when (consp tree)
      (if (and (not (consp (car tree)))
               (entity-p (car tree)))
        (push (car tree) entities))
      (loop for binding in (cdr tree)
         do (setq entities 
              (append (entities-in (second binding))
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
    (loop for rel in (relations-in st)
      when (cdr rel)
      collect rel)))

(defun extend-relations (relations)
  (let ((alist1
        (loop for r in relations 
          when (is-bio-entity? r)
          collect (cons (second (second r)) (second (third r)))))
       (alist2
        (loop for r in relations 
          when (is-bio-entity? r)
          collect (cons (second (third r)) (second (second r))))))
    
    (remove-duplicates
     (append relations
             (sublis alist1
                     (loop for r in relations unless (is-bio-entity? r) collect r ))
             (sublis alist2
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
      (when (not (consp (car tree)))
        (if (not (entity-p (car tree)))
         (lsp-break "(car tree) is not an entity in ~s" (current-string))
         (push (extract-relation tree) relations))))
    (loop for binding in (cdr tree)
       do
         (setq relations
               (append 
                (relations-in (second binding))
                relations)))
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
   (not (find-subject-vars e))
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


;;;-----------------
;;; Spire <-> Krisp
;;;-----------------

(defun krisp->sexpr (item)
  "Approved standard way to serialize Krisp objects as sexp.
   The call to semtree becomes call to collect-model-description
   which creates the sexp. Note value for *with-uids* and that
   the *sentence-results-stream* has been set to nil and *for-spire*
   is t. These three flags control the details of what goes into
   the sexp we create."
  (let ((*sentence-results-stream* nil))
    (declare (special *sentence-results-stream*))
    (let ((*for-spire* t)
          (*with-uids* :no))
      (declare (special *for-spire* *with-uids*))
      (semtree item))))

(defun to-krisp (sexpr)
  "Correct way to recover Krisp objects from an sexp created
   by krisp->sexpr"
  (etypecase sexpr
    (symbol (to-krisp (list sexpr)))
    (string sexpr)
    (number sexpr)
    (cons
     (case (car sexpr)
       (category (category-named (second sexpr)))
       (wd (resolve (second sexpr)))
       (t
        (let* ((cat-name (case (car sexpr)
                           (you 'pronoun/second)
                           (i 'pronoun/first/singular)
                           (t (car sexpr))))
               (indiv 
                (find-or-make-lattice-description-for-ref-category
                 (category-named cat-name)))
               (args (if (symbolp (second sexpr))
                         (loop for pair on (cdr sexpr) by #'cddr
                               as key = (car pair)
                               collect (list (if (assoc key *subcat-aliases*)
                                                 (cdr (assoc key *subcat-aliases*))
                                                 key)
                                             (second pair)))
                         (cdr sexpr))))
          (loop for pair in (reverse args)
                do
                  (let* ((*pair* pair)
                         (val (case (car pair)
                                (items (loop for desc in (second pair)
                                             collect (to-krisp desc)))
                                (t (to-krisp (second pair)))))
                         (var/name
                          (if (find-variable-for-category (car pair) indiv)
                              (car pair)
                              (subcategorized-variable indiv (car pair) val))))
                    (declare (special *pair* val var/name))
                    (if (null var/name)
                        (lsp-break "can't find variable corresponding to triple (~s ~s ~s)~%"
                                   indiv var/name val)
                        (setq indiv (bind-dli-variable var/name val indiv)))))
          indiv))))))


(defmacro -?krisp (sexpr)
  (to-krisp sexpr))

;;;----------------------------------------------------------------------------
;;; drivers of semtree binding special variables for collect-model-description
;;;----------------------------------------------------------------------------

(defun spire-tree (item &optional (with-ids nil))
  (declare (special  *sentence-results-stream*))
  (let ((*sentence-results-stream*
         (unless with-ids *sentence-results-stream*)))
    (declare (special *sentence-results-stream*))
    (let ((*for-spire* t)
          (*with-uids* with-ids))
      (declare (special *for-spire* *with-uids*))
      (semtree item))))
#| As of 8/1/17 spire-tree is called 
in object/doc/save-doc-semantics.lisp by write-sem-tree and
  the method write-combined-sentence-results
in cwc-integ/spire/interface/sparser.lisp
  by spire::sparser-indiv->all-exprs
|#

(defun tts-semantics (&key (for-spire nil)(with-ids nil))
  (let ((*for-spire* for-spire)
        (*with-uids* with-ids))
    (declare (special *for-spire* *with-uids*))
    (loop for s in (all-current-sentences)
          append
            (let ((start-pos (starts-at-pos s))
                  (end-pos (ends-at-pos s)))
              (loop for edge in (all-tts start-pos end-pos)
                    when (and (edge-p edge) (not (word-p (edge-referent edge))))
                    collect (semtree (edge-referent edge)))))))

(defun tts-edge-semantics ()
  (loop for edge in (all-tts)
    when (and (edge-p edge) 
              (not (word-p (edge-referent edge))))
    collect (list edge
                  (semtree (edge-referent edge)))))


;;;-----------------
;;; semtree methods
;;;-----------------

(defparameter *semtree-seen-individuals* (make-hash-table)
  "Cleared and used by semtree to avoid walking through the
  same individual twice and getting into a loop.")

(defgeneric semtree (item)
  (:documentation "Returns the Krisp interpretation of the item
 as an sexpression. Overloaded by global parameters that modify
 the content and pattern of what is in the sexp."))

(defmethod semtree ((x null))
  nil)

(defmethod semtree ((w word))
  nil)

(defmethod semtree ((n number))
  (if (> n 1000)
      (semtree (i# n))
      (semtree (e# n))))

(defmethod semtree ((e edge))
  (semtree (edge-referent e)))

(defmethod semtree ((i individual))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i))

(defmethod semtree ((i referential-category))
  (clrhash *semtree-seen-individuals*)
  (collect-model-description i))


(defgeneric csemtree (item) ;; "Contextual-semtree"
  (:documentation "Returns an sexp of the item's Krisp 
   interpretationlike semtree. But operates on the mention 
   associated with an edge")
  (:method ((n number))
    (if (> n 1000)
      (semtree (i# n))
      (csemtree (e# n))))
  (:method ((e edge))
    (semtree (contextual-interpretation (edge-mention e)))))


;;;-----------------------------------
;;; collect-model-description methods
;;;-----------------------------------

(defmethod collect-model-description ((cat category))
  (declare (special *for-spire* *sentence-results-stream*))
  (if (or *for-spire* *sentence-results-stream*)
      `(category ,(cat-name cat))
      cat))

(defmethod collect-model-description ((str string))
  str)

(defmethod collect-model-description ((sym symbol))
  sym)

(defmethod collect-model-description ((w word))
  (declare (special *for-spire* *sentence-results-stream*))
  (cond (*sentence-results-stream* (pname w))
        (*for-spire* `(wd ,(pname w))) ;; "wd" reversed by to-krisp w/ resolve
        (t (pname w))))

(defmethod collect-model-description ((w polyword))
  (declare (special *for-spire*  *sentence-results-stream*))
  (cond (*sentence-results-stream* (pname w))
        (*for-spire* `(wd ,(pname w)))
        (t (pname w))))

(defmethod collect-model-description ((cal cons))
  `(collection :members 
               (,@(loop for l in cal 
                     collect (collect-model-description l)))))

(defmethod collect-model-description ((v lambda-variable))
  ;;/// needs sentence-results and for-spire variants.
  (var-name v))


(defun indiv-or-type (i)
  (declare (special *for-spire* *sentence-results-stream* *with-uids*))
  (cond
    (*sentence-results-stream*
     `(,(cat-name (itype-of i))))
    (*for-spire*
     (case *with-uids*
       (:no `(,(cat-name (itype-of i))))
       (t
        `((,(cat-name (itype-of i))
            ,(indiv-uid i))))))
    (t `(,i))))

(defmethod collect-model-description ((i individual))
  (declare (special script category::number category::ordinal
                    *for-spire* *sentence-results-stream*
                    category::protein-family
                    category::prepositional-phrase))
  (cond
    ((gethash i *semtree-seen-individuals*)
     (if (or *for-spire* *sentence-results-stream*)
       (indiv-or-type i)
       (if (and (individual-p i)
                (null (cdr (indiv-old-binds i))))
         `(,i) ;; suppress "!recursion!" for very simple items
         `(("!recursion!" ,i)))))
    
    ((and (itypep i category::number)
          (not (value-of 'quantifier i)) ; "all three" should not return "3"
          (not (itypep i category::ordinal))
          (not *print-sem-tree*)
          (not (or *for-spire* *sentence-results-stream*)))
     (if (collection-p i)
         (value-of 'items i)
         (or (value-of 'value i)
             (indiv-or-type i))))
   	
    ((and (eq script :biology)
          (itypep i category::protein-family) ;; get rid of bio-family -- misnamed...
          (not (collection-p i)))
     (let ((bindings (indiv-binds i))
           (desc (indiv-or-type i)))
       (declare (special bindings desc))
       (append
        desc
        (loop for b in bindings
              as value = (binding-value b)
              unless (or (null value) ;; sometimes we get null values for raw-text field
                         (and (not (or *for-spire* *sentence-results-stream*))
                              (member (var-name (binding-variable b))
                                      '(members count ras2-model))))
           collect
             (list (var-name (binding-variable b))
                   (if (or (numberp value)
                           (symbolp value)
                           (stringp value))
                       value
                       (collect-model-description value)))))))
    
    ((collection-p i)
     (setf (gethash i *semtree-seen-individuals*) t)
     (collect-model-description-for-collection i))
    
    (t  
     (let ((desc (indiv-or-type i)))
       (setf (gethash i *semtree-seen-individuals*) t)
       ;; Had been restricting the recursion to types with
       ;; a subject variable: (subject-variable type), 
       ;; but that's missing interesting noun phrase referents.
       (loop for b in  (indiv-binds i)
          as var = (binding-variable b)
          as var-name = (var-name var)
          as restriction = (var-value-restriction var)
          as value = (binding-value b)
          do
            (unless (or (cond (*sentence-results-stream*
                               (or (memq var-name '(trailing-parenthetical category
                                                    ras2-model))
                                   (and (itypep i 'determiner)
                                        (memq var-name '(word)))))
                              ((not *for-spire*)
                               (memq var-name '(trailing-parenthetical category
                                                ras2-model))))
                        (typep value 'mixin-category) ;; has-determiner
                        (fixed-value var))
              (if (or (numberp value)
                      (symbolp value)
                      (stringp value))
                (push (list var-name value) desc)
                ;; // if b is fixed value print value but don't recurse //
                (typecase value
                  (individual 
                   (if (and (not (or *for-spire* *sentence-results-stream*))
                            (itypep value category::prepositional-phrase))
                     (push (list var-name
                                 (collect-model-description
                                  (value-of 'pobj value)))
                           desc)
                     (push (list var-name
                                 (collect-model-description value))
                           desc)))
                  ((or word polyword category)
                   (push `(,var-name ,(collect-model-description value)) desc))
                  (cons
                   (unless (equal restriction '(:primitive list))
                     (error "The value of the variable ~a is a cons but its ~
                             restriction, ~a, doesn't permit it.~%value = ~a"
                            var-name restriction value))
                   (push `(,var-name
                           ,(loop for item in value
                                collect (collect-model-description item)))
                         desc))
                  (rule-set) ;; the word "anti" presently does this
                  ;; because the fix to bio-pair isn't in yet (ddm 6/9/15)
                  (lambda-variable
                   (push `(,var-name ,(format nil "~a" value))
                         desc))
                  (otherwise
                   (format t "~&~%Collect model: ~
                            Unexpected type of value of a binding: ~a~%" value))))))
       (reverse desc)))))


(defun collect-model-description-for-collection (i)
  (declare (special category::prepositional-phrase))
  (let ((desc (indiv-or-type i)))
    (loop for b in  (indiv-binds i)
       as var = (binding-variable b)
       as var-name = (var-name var)
       as value = (binding-value b)
       as vv-pair = `(,var-name
                      ,(if (and (or *for-spire* *sentence-results-stream*)
                                (category-p value))
                         `(category ,(cat-name value))
                         value))
       do
         (unless (or (memq var-name '(trailing-parenthetical category ras2-model))
                     (typep value 'mixin-category) ;; has-determiner
                     (fixed-value var))
           (case var-name
             (type
              ;;(when (or *for-spire* *sentence-results-stream*)
              (push vv-pair desc)) ;;)
             (number
              ;; for some reason, sometimes have an individual and not a number
              (push (list (car vv-pair)
                          (if (individual-p (second vv-pair))
                              (value-of 'value (second vv-pair))
                              (second vv-pair)))
                    desc))
             (items
              (let ((member-descs (mapcar #'collect-model-description value)))
                (push (if (or *for-spire* *sentence-results-stream*)
                        `(items ,member-descs)
                        `(,var-name (collection (:members (,@ member-descs)))))
                      desc)))
             (t
              (if (or (numberp value) (symbolp value) (stringp value))
                (push vv-pair desc)
                (typecase value
                  (individual
                   ;;//// fixed-value check
                   (push (list var-name
                               (collect-model-description
                                (if (and (not (or *for-spire* *sentence-results-stream*))
                                         (itypep value category::prepositional-phrase))
                                  (value-of 'pobj value)
                                  value)))
                         desc))
                  ((or word polyword)
                   (when *show-words-and-polywords* (push vv-pair desc)))
                  (category
                   (push `(,var-name ,(collect-model-description value)) desc))
                  (cons (lsp-break "how did we get a CONS ~s as a value for variable ~s~%"
                                   value var-name))
                  (rule-set) ;; the word "anti" presently does this
                  ;; because the fix to bio-pair isn't in yet (ddm 6/9/15)
                  (otherwise
                   (format t "~&~%Collect model: ~
                            Unexpected type of value of a binding in a collection: ~a~%~%" value))))))))
    (reverse desc)))

;;;--------------------
;;; save the sentences
;;;--------------------

(defparameter *print-sentences* nil)

(defun possibly-print-sentence ()
  (declare (special *print-sentences*))
  (when (numberp *print-sentences*)
    (format t "~&~&*** (p ~s) ;; ~s" 
            (current-string) 
            (incf *print-sentences*))))


;;;-------------------------
;;; semantic tree traversal
;;;-------------------------

(defgeneric traverse-sem (sem fn)
  (:documentation "Map the function 'fn' recursively through
    the indicated semantic structures. Function must run for
    side-effects as there is no collection"))

(defmethod traverse-sem ((s sentence) fn)
  ;(traverse-sem (previous s) fn)
  (funcall fn s)
  (loop for tt in (all-tts (starts-at-pos s) (ends-at-pos s))
        do (when (edge-p tt) (traverse-sem (edge-mention tt) fn))))

(defmethod traverse-sem ((m discourse-mention) fn)
  (funcall fn m)
  (if (and (collection-or-sequence-p (base-description m))
           ;; how the Erk and p90RSK pathway phosphorylates and inactivates GSK-3beta.
           ;; the HOWCOMP acts (erroneously) as a basic-collection
           (value-of 'items (base-description m)))
      (loop for dep-pair in (dependencies m)
              ;; happens in "Why  the NH 2 -terminal sequence can substitute for the β-catenin binding site is not clear, but this could be related to its  ability to bind to APC or its influence on the intracellular  localization of Axin."
            unless (eq (dependency-pair-value dep-pair)
                       m)
            do (if (eq 'items (pname (dependency-pair-variable dep-pair)))
                   (loop for v in (dependency-pair-value dep-pair)
                         do (traverse-sem v fn))
                   (traverse-sem (dependency-pair-value dep-pair) fn)))
      (loop for dep-pair in (dependencies m)
            do (traverse-sem (dependency-pair-value dep-pair) fn))))

(defmethod traverse-sem ((i individual) fn)
  (declare (special i))
  (funcall fn i)
  (cond ((simple-number? i)
         (funcall fn (value-of 'value i)))
        ((is-basic-collection? i)
         (loop for b in (indiv-old-binds i)
            do (if (eq (pname (binding-variable b)) 'items)
                 (loop for item in (binding-value b)
                    do (traverse-sem item fn))
                 (traverse-sem b fn))))
        (t ;;//// if fixed-value, then apply to value but don't recurse
         (loop for b in (indiv-old-binds i)
            do (traverse-sem b fn)))))


(defmethod traverse-sem ((w string) fn)
  (funcall fn w))

(defmethod traverse-sem ((w word) fn)
  (funcall fn w))
(defmethod traverse-sem ((w polyword) fn)
  (funcall fn w))
(defmethod traverse-sem ((w symbol) fn)
  (funcall fn w))

(defmethod traverse-sem ((w number) fn)
  (funcall fn w))

(defmethod traverse-sem ((val cons) fn)
  (funcall fn val))

(defmethod traverse-sem ((c referential-category) fn)
  (funcall fn c))

(defmethod traverse-sem ((binding binding) fn)
  (if (fixed-value binding) ;; don't recurse
    (funcall fn (binding-value binding))
    (traverse-sem (binding-value binding) fn)))

(defmethod traverse-sem ((v lambda-variable) fn)
  nil)

(defun traverse-edges-below (e fn)
  (when (edge-p e)
    (funcall fn e)
    (loop for ee in (edges-under e)
          do (traverse-edges-below ee fn))))


(defun mentions-in-sentence-edges (s)
  (let ((*mentions* nil))
    (declare (special *mentions*))
    (loop for tt in (all-tts (starts-at-pos s) (ends-at-pos s))
          when (and (edge-p tt)
                    (not (eq (cat-name (edge-category tt)) 'bio-entity)))
          do
            (traverse-edges-below
             tt
             #'(lambda (e)
                 (when (and (edge-p e)
                            (typep (edge-mention e) 'discourse-mention)
                            (or
                             (not (itypep (edge-mention e) 'collection))
                             (loop for dep in (dependencies (edge-mention e))
                                   thereis (not (member (var-name (car dep))
                                                        '(raw-text items type number))))))
                   (push (edge-mention e) *mentions*)))))
    *mentions*))

(defun remove-collection-item-mentions (mentions)
  (let ((item-refs nil))
    (declare (special item-refs))
    (loop for m in mentions when (is-basic-collection? (edge-referent (mention-source m)))
          do
            (loop for item in (value-of 'items (edge-referent (mention-source m)))
                  do (push item item-refs)))
    ;;(lsp-break "foo")
    (loop for m in mentions unless (member (edge-referent (mention-source m)) item-refs)
            collect m)))
          

;; a useful example -- traversal functions to be used with traverse-sem
(defmethod find-biochemical-entities ((s sentence))
  (traverse-sem s #'find-bce)
  (all-bces))

(defparameter *found-bces* nil)
(defmethod find-bce ((s sentence))
  (setq *found-bces* nil))

(defmethod find-bce ((c referential-category))
  (if (itypep c 'bio-chemical-entity)
      (record-bce c)))

(defmethod find-bce ((i individual))
  (when (itypep i 'bio-chemical-entity)
    (record-bce i)
    (visit-indiv-generalizations i (itype-of i) #'record-bce)))

(defun record-bce (i)
  (push i *found-bces*))

(defun all-bces ()
  *found-bces*)

(defun visit-indiv-generalizations (i cat fn)
  (loop for pair in (indiv-uplinks i)
        do
          (let ((key (car pair))
                (parent (cdr pair)))
            (when (eq (itype-of parent) cat)
              (funcall fn parent)
              (visit-indiv-generalizations parent cat fn)))))
    
;; another useful example

(defmethod find-reach-processes ((s sentence))
  (traverse-sem s #'find-bps)
  (all-bps))

(defmethod find-bps (x)
  "do nothing")

(defparameter *found-bps* nil)

(defun reach-process-p (cat-or-indiv)
  (itypep cat-or-indiv
          '(:or bio-control post-translational-modification binding
            interact ;; not sure this constitues a cardable entity, but I think REACH thinks so
            )))

(defmethod find-bps ((s sentence))
  (setq *found-bps* nil))

(defmethod find-bps ((c referential-category))
  (if (reach-process-p c)
      (record-bp c)))

(defmethod find-bps ((l cons))
  (loop for item in l do (find-bps item)))

(defmethod find-bps ((i individual))
  (when (reach-process-p i)
    (record-bp i)))

(defmethod find-bps ((m discourse-mention))
  (when (find-bps (base-description m)) (record-bp m)))

(defun record-bp (i)
  (push i *found-bps*))

(defun all-bps ()
  *found-bps*)
    
                
(defmethod find-bp (x)
  "do nothing")


;; another useful example

(defmethod find-all-mentions ((s sentence))
  (traverse-sem s #'find-mentions)
  (all-mentions))

(defmethod find-mentions (x)
  "do nothing")

(defparameter *found-mentions* nil)

(defmethod find-mentions ((s sentence))
  (setq *found-mentions* nil))

(defmethod find-mentions ((l cons))
  (loop for item in l do (find-bps item)))

(defmethod find-mentions ((m discourse-mention))
  (push m *found-mentions*))

(defun all-mentions ()
  *found-mentions*)


;;;; get the head edge for an edge, based on the fact that the head edge has the same category as the edge-referent, and is a lexical edge
(defun find-head-edge (edge)
  (if (typep (edge-mention edge) 'discourse-mention)
      (mention-head (edge-mention edge))
      (let ((category (itype-of (edge-referent edge)))
            (start-pos (pos-edge-starts-at edge))
            (end-pos (pos-edge-ends-at edge)))
        (find-lexical-edge-with-cat category start-pos end-pos))))

(defun find-lexical-edge-with-cat (category start-pos end-pos)
  (if (or (eq (cat-name category) 'collection)
          (>= (pos-token-index start-pos) (pos-token-index end-pos)))
      nil
      (let ((lex-edge (lexical-edge-at start-pos)))
        (when lex-edge
          (if (itypep (edge-referent lex-edge) category)
              lex-edge
              (find-lexical-edge-with-cat category (pos-edge-ends-at lex-edge) end-pos))))))      


           
        

(defmethod head-string ((edge edge))
  (when edge 
    (let ((found-head (find-head-edge edge)))
      (when found-head
        (trim-whitespace (extract-string-spanned-by-edge found-head))))))


(defmethod head-string ((i individual))
  (head-string (mention-source (best-recent-mention i))))

(defmethod head-string (x)
  nil)

(defun all-current-sentences (&optional (s (sentence)))
  (when s
    (append (all-current-sentences (previous s))
            (when (not (equal (sentence-string s) ""))
              (list s)))))

(defmethod top-edges-for-proteins ()
  (let ((slist (all-current-sentences)))
    (loop for s in slist
          append
            (top-edges-for-interps-in-s
             (find-biochemical-entities s)
             s))))


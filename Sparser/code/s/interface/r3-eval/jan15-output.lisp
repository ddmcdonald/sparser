(in-package "SPARSER")
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; code for  Jan dry run (deep reading)

(defparameter *good-sents*
  '(42 
    40
    39
    38
    37
    31
    29
    25
    21
    18
    15
    14
    4
    ))

;;; results are (passage-id relation model-link english-descrip model-rep source-text)

(defvar *results* nil)

;;; it turned out this was the incorrect format anyway. They want article# sentence#
(defun just-good-sentences (&optional (nums *good-sents*) (sentences *jan-sents*))
  (declare (special  *jan-sents* *good-sents*))
  (loop for  i in nums
      for (art# para sent# sentence) = (nth (1- i) sentences)
      for ref = (format nil "~a-~a-~a" art# para sent#)
                collect (list ref sentence)))

(defun jan-deep-tst ()
  (deep-tst :ss (just-good-sentences)))


(defun deep-tst (&key ss  (to-file t)) 
  (let ((results
         (loop for (s# sentence) in ss
           for ignore = (print (list 'analyzing s# sentence))
             for (trees entities relations) = (jtest-results-from-sentence sentence)
           do (setf entities (remove nil entities))
           do (pprint (cons 'trees trees))
           do (pprint (cons 'entities entities))
           do (pprint (cons 'relations relations))
;             for model-ref = (find-relation-to-model tree)
             collecting (list s# 
                              :new-relationship 
                              entities ; (mapcar #'indiv-name entities)
                              nil 
                              relations 
                               (remove-separators sentence)))))
    (setf *results* results)
    (if to-file (write-jan-csv-output results))
    results))
  
  
(defun remove-separators (string)
  (let ((newstr (copy-seq string)))
    (loop for i from 0 to (1- (length string))
      for char = (elt newstr i)
      do
      (cond
       ((member char '(#\, #\.))
        (setf (elt newstr i) #\;))
       ((member char '(#\Newline))
        (setf (elt newstr i) #\space))))
    newstr
    ))


(defun unique-ent-names (entities)
  (let ((names nil) (seen nil))
    (loop for ent in entities 
      for ent-name = (ent-pname ent)
      do (when (and ent ent-name (not (member ent seen)))
           (push ent seen)
           (push ent-name names)))
    names))

(defun write-jan-csv-output (&optional (results *results*)(file "~/sparser/jan-out.csv"))
  (with-open-file (stream file :direction :output :if-exists :supersede)
    (format stream "PassID, Relationship, ModelLink, Descrip., Representation, SourceText~%" )
    (loop for (pasg new ents descrip rep sent) in results 
      for entities = (unique-ent-names ents)
      do 
      (format stream "~a, ~a, ~a, ~a, ~a, ~s~%" pasg new entities descrip rep sent))))

;; (write-jan-csv-output)

;;; (identify-relations *sentence*) returns (values relations entities)

; (trace jtest-results-from-sentence parse-to-tree p)

;;; needs to return (tree entities relations)
(defun jtest-results-from-sentence (sentence)
;  (print (list 'jtst-analyzing sentence))
  (p sentence)
  (let* ((trees (tts-semantics))
         (entities (loop for e in (all-entities trees) when (and (entity-p e)(individual-p e)(itypep e 'biological)) collect e))
         (relations (loop for rel in (all-relations trees) when (r3-relation rel) collect rel)))
    (list (tts-semantics) entities relations)))

(defun parse-to-tree (sentence)
  (declare (special *readout-relations* *relations))
  ;;(setf *readout-relations* t)
  (p sentence)
  (format t "~&~%Relations:~%")
  (loop for r in (all-tts)
      for sexp = (semtree r)
      do (pprint sexp)
      collect sexp into s-expressions
      finally (terpri) (return s-expressions)))

#+ignore
(defun extract-entities (tree &optional (res nil))
  (if (consp tree)
             (let ((hd (car tree))
                   (rest (cdr tree))
                   (results res))
;               (print (list 'cons hd rest))
               (if (and (typep hd 'individual) (itypep hd 'bio-entity))
                   (pushnew hd results))
               (loop for (prop value) in rest
                 do 
                 (if (eq prop :list)
                     (dolist (elt value) (setf results (extract-entities elt results)))
                     (setf results (extract-entities value results))))
;               (print (list 'cons-res results))
               results) ; 
      (when (and (typep tree 'individual) (itypep tree 'bio-entity))
;        (print (list 'notcons tree))
        (pushnew tree res)
        res)))

#+ignore
(defun extract-relations (tree )
  (if (consp tree)
      (let ((hd (car tree))
            (rest (cdr tree))
            )
        (if (typep hd 'individual)
            (if (null rest) 
                (indiv-name hd)
                (cons (itype-name hd) 
                      (loop for (prop value) in rest
                        for vrels = (if (and prop value) (extract-relations value))
                        when (and prop vrels)
                        append (list prop vrels))))
            (list hd rest)))
      (if (typep tree 'individual) 
          ;        (print (list 'notcons tree))
          (indiv-name tree)
          tree)))


                           

(defun indiv-name (item)
  (let* ((name (name-of-individual item))
         (pname (when name (typecase name
                             (word (word-pname name))
                             (polyword (pw-pname name))
                             (otherwise nil)))))
    pname))



;; other cases?
(defun wd-pname (wd)
  (case (type-of wd)
    (polyword (pw-pname wd))
    (word (word-pname wd))
    (t (error "unknown word type for pname"))
    )
  )

(defun ent-pname (ent)
  (let ((nm (i-prop ent 'name)))
    (if nm (wd-pname nm) 
      nil)))


(defun i-uid (ind)
  (getf (unit-plist ind) :uid))

(defun bdg-varname (b)
  (var-name (binding-variable b)))

(defun entity-name (ind)
  (ent-pname ind))

(defun super-types (ref-cat)
  (getf (unit-plist ref-cat) :super-categories))

(defun some-sub-type (evtyp super-names)
  (let ((supers (super-types evtyp)))
    (some #'(lambda (st) (member (cat-symbol st) super-names)) supers)))
    
(defun itype-name (ind)
  (intern (string (cat-symbol (itype-of ind))) :sparser))



;;; for some reason protein is a Relation??

#|
(defun is-event-p (ind)
  (let ((evtype (car (indiv-type ind))))
    (some-sub-type evtype '(category::EVENT ))))

(defparameter *subj-props*
    '(actor
      agent 
      activator
      deactivator
      binder
      blocker
      catalyst
      creator
      encoder))

(defparameter *obj-props*
    '(; object ;; not used in verbs1
      patient 
      activated 
      deactivated 
      bindee 
      blocked
      process
      creation
      encoded))
  

;;; explicit case so we can add other properties as variants of these slots if necess. 
(defun act-rel (action prop)
  (case prop 
    (:agent (some-i-prop action *subj-props*))
    (:patient (some-i-prop action *obj-props*))))
    
;; if ent-position t then show the name of the action, else ref the 
(defun entity-string (ent &optional (ent-position nil))
  (cond ((null ent) nil)
        ;; not sure ref-category should be a subject, but...
        ((typep ent 'referential-category)
         (format nil "cat:~a" (cat-symbol ent)))
        ((is-event-p ent)
         (if ent-position 
             (format nil "~a" (itype-name ent))
           (format nil "(~d) ~a" (i-uid ent) (itype-name ent))))
        ((itypep ent 'collection)
         (format nil "<collection ~{~A~^ ~}>" 
                 (mapcar #'entity-string (value-of 'items ent))))
         
        (t ;; entity 
         (format nil "~a~@[:~a~]" (itype-name ent) (ent-pname ent)))))


;;; Sent # , Event #, Arg1, Predicate, Arg2, Site,  Context (optional)  Sentence
;;; Site is for protein modifications, Context is optional,
;;; Sentence is the original text (or text span?)

(defun call-or-map (fn lst)
  (cond ((null lst) nil)
        ((consp lst) (mapcar fn lst))
        (t (funcall fn lst))))
|#
;; for now replace . and , with ;
(defun remove-separators (string)
  (let ((newstr (copy-seq string)))
    (loop for i from 0 to (1- (length string))
      for char = (elt newstr i)
      when (member char '(#\, #\.))
      do (setf (elt newstr i) #\;))
    newstr
    ))

#+ignore
(defun output-relation (event sent-num sent)
  (declare (special *ev-map*))
  (let* ((evno (i-uid event))
         (subj (act-rel event :agent))
         (pat (act-rel event :patient))
         (ev-string (entity-string event t))
         (subj-strings (call-or-map #'entity-string subj))
         (obj-strings (call-or-map #'entity-string pat))
         )
    (format t "~%Relation: ~a subj: ~a obj ~a" event subj pat)
    (push (cons evno event) *ev-map*)
    (list sent-num evno subj-strings ev-string obj-strings nil nil 
          (remove-separators sent))))

(defun reset-rows ()
  (declare (special *output-rows* *event-index* *ev-map*))
  (setq *output-rows* nil *event-index* 0 *ev-map* nil))

;;; vars are *relations* *entities* and *events*



;; output relations for one sentence
#+ignore
(defun output-relations (&optional (sent-num 0) sent (stream t))
  (declare (special *dec-tests* *relations*))
  (format t "~%Relations for sent ~d: ~s~%~a~%" sent-num sent *relations*)
  (let ((rows 
         (loop for rel in *relations*
             collecting (output-relation rel sent-num sent))))
    (push (list sent-num rows) *output-rows*)
    (if (eq stream t)
        (format t "~2%~d: ~a~:{~%~d, ~d, ~s, ~s, ~s~}" sent-num sent rows)
      (format stream "~:{~d, ~d, ~s, ~s, ~s, ~s, ~s, ~s~%~}" rows))
    *output-rows*))



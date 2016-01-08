
(in-package "SPARSER")

(defparameter *output-rows* nil)
(defparameter *event-index* 0)
(defparameter *ev-map* nil)

(defparameter *ignored-sentences* '(30 38 39))

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
    (if nm (wd-pname nm) nil)))


(defun i-uid (ind)
  (getf (unit-plist ind) :uid))

(defun bdg-varname (b)
  (var-name (binding-variable b)))

(defun i-prop (ind prop)
  (let* ((bdgs (indiv-binds ind))
         (bnd (find prop bdgs :key #'bdg-varname)))
    (when bnd 
      (or (binding-value bnd)
          (caar (var-instances bnd))))))

(defun some-i-prop (ind props)
  (let* ((bdgs (indiv-binds ind))
         (bnd (loop for b in bdgs
                  when (member (bdg-varname b) props)
                  return b)))
    (when bnd 
      (or (binding-value bnd)
          (caar (var-instances bnd))))))

(defun entity-name (ind)
  (let* ((name-obj (i-prop ind 'name)) ;; polyword
         (pname (and name-obj (i-prop name-obj 'pname))))
    pname))

(defun super-types (ref-cat)
  (getf (unit-plist ref-cat) :super-categories))

(defun some-sub-type (evtyp super-names)
  (let ((supers (super-types evtyp)))
    (some #'(lambda (st) (member (cat-symbol st) super-names)) supers)))
    
(defun type-name (ind)
  (cat-symbol (itype-of ind)))

;;; for some reason protein is a Relation??

(defun is-event-p (ind)
  (let ((evtype (car (indiv-type ind))))
    (some-sub-type evtype '(category::EVENT ))))

(defparameter *subj-props*
    '(actor
      agent 
      activator
      binder
      blocker
      catalyst
      creator
      deactivator
      encoder
      entity ;; from is-bio-entity
      molecule ;; is active
      subject
      ))

(defparameter *obj-props*
    '(object ;; not used in verbs1
      activated 
      bindee 
      blocked
      cause
      creation
      deactivated 
      encoded
      modifier ;; BOGUS, but gets the ERK in "ERK activation"
      patient 
      predication ;; from is-bio-entity
      process
      result
))
      

;;; explicit case so we can add other properties as variants of these slots if necess. 
(defun act-rel (action prop)
  (let
      ((obj
        (case prop 
          (:agent (some-i-prop action *subj-props*))
          (:object (some-i-prop action *obj-props*)))))
    (if
     (and
      (individual-p obj)
      (itypep obj 'prepositional-phrase))
     (setq obj (value-of 'pobj obj)))
    obj))

(defun i-prop (ind prop)
  (if 
   (consp ind)
   (let* ((bdgs (cdr ind))
          (bnd (find prop bdgs :key #'car)))
     (when bnd (second bnd)))
   (let* ((bdgs (indiv-binds ind))
          (bnd (find prop bdgs :key #'bdg-varname)))
     (when bnd 
       (or (binding-value bnd)
           (caar (var-instances bnd)))))))

(defun some-i-prop (ind props)
  (if
   (consp ind)
   (let* ((bdgs (cdr ind))
          (bnd (loop for b in bdgs
                 when (member (car b) props)
                 return b)))
     (when bnd (second bnd)))
   (let* ((bdgs (indiv-binds ind))
          (bnd (loop for b in bdgs
                 when (member (bdg-varname b) props)
                 return b)))
     (when bnd 
       (or (binding-value bnd)
           (caar (var-instances bnd)))))))
    
;; if ent-position t then show the name of the action, else ref the 
(defun entity-string (ent &optional (ent-position nil))
  (cond ((null ent) "")
        ;; not sure ref-category should be a subject, but...
        ((typep ent 'referential-category)
         (format nil "cat:~a" (cat-symbol ent)))
        ((is-event-p ent)
         (if ent-position 
             (format nil "~a" (type-name ent))
             (format nil "(~d) ~a" (i-uid ent) (type-name ent))))
        ((itypep ent 'collection)
         (format nil "<collection ~{~A~^ ~}>"
                 (mapcar #'entity-string (value-of 'items ent))))
        ((symbolp ent)
         (format nil "~A" ent))        
        (t ;; entity 
         (indiv-printstring ent))))

(defun indiv-printstring (ent)
  (if
   (and
    (individual-p ent)
    (value-of 'modifier ent))
   (if
    (individual-p (value-of 'modifier ent))
    (let*
        ((mod (value-of 'modifier ent))
         (mod-name 
          (or
           (ent-pname mod)
           (type-name mod))))
      (declare (special mod))
      ;;(break "mod")
      (if 
       (value-of 'modifier mod)
       (setq mod-name (indiv-printstring mod)))
      (format nil "<~a ~a>"   mod-name 
              (cond
               ((ent-pname ent))
               ((type-name ent)))))
    (format nil "~a~@[:~a~]" (type-name ent) (ent-pname ent)))
   (format nil "~a~@[:~a~]" (type-name ent) (ent-pname ent))))


;;; Sent # , Event #, Arg1, Predicate, Arg2, Site,  Context (optional)	Sentence
;;; Site is for protein modifications, Context is optional,
;;; Sentence is the original text (or text span?)

(defun call-or-map (fn lst)
  (cond ((null lst) nil)
        ((consp lst) (mapcar fn lst))
        (t (funcall fn lst))))

;; for now replace . and , with ;
(defun remove-separators (string)
  (let ((newstr (copy-seq string)))
    (loop for i from 0 to (1- (length string))
      for char = (elt newstr i)
      when (member char '(#\, #\.))
      do (setf (elt newstr i) #\;))
    newstr
    ))

(defun expand-output-relation (event &optional (sent-num -1)(sent "Dummy sentence"))
  (declare (special *ev-map* event sent-num sent))
  
  (let* ((ind-event (if (consp event) (car event) event))
         (evno (i-uid ind-event))
         (subj (act-rel event :agent))
         (pat (act-rel event :object))
         (ev-string 
          (let
              ((evs (format nil (name-rewrite (format nil "~a" (type-name ind-event))))))
          (if
           (value-of 'negation ind-event)
           (format nil "NOT ~A" evs)
           evs)))           
         (subj-strings (arg-strings subj))
         (obj-strings (arg-strings pat))
         (neg (value-of 'negation ind-event)))
    (declare (special ind-event evno subj pat ev-string sub-strings obj-strings))
    (format t "~%Relation: ~a subj: ~a obj ~a" ind-event subj pat)
    ;;(push (cons evno event) *ev-map*)
    (append
     (if
      (and
       (individual-p subj)
       (itypep subj 'collection))
      (let
          ((items (value-of 'items subj)))
        (declare (special items))
        (loop for item in items 
          collect
          (list sent-num evno (arg-strings item) ev-string obj-strings nil neg 
                (remove-separators sent)))))
     
     (if
      (and
       (individual-p pat)
       (itypep pat 'collection))
      (let
          ((items (value-of 'items pat)))
        (declare (special items))
        (loop for item in items 
          collect
          (list sent-num evno subj-strings ev-string (arg-strings item) nil nil 
                (remove-separators sent)))))
     
     (list
      (list sent-num evno subj-strings ev-string obj-strings nil nil 
            (remove-separators sent))))))
 
   

(defun arg-strings (arg)
  (cond
   ((null arg)
    "")
   ((and
     (individual-p arg)
     (entity-p arg))
    (name-rewrite (call-or-map #'entity-string arg)))
   ((category-p arg)
    (name-rewrite (call-or-map #'entity-string arg)))
   (t
    (format nil "EVENT-~S" (i-uid arg)))))

(defun reset-rows ()
  (setq *output-rows* nil *event-index* 0 *ev-map* nil))

;;; vars are *relations* *entities* and *events*


(defparameter *rel-name-rewrite*
  '(("IS-BIO-ENTITY" "BE")
    ("PRONOUN/FIRST/PLURAL" "WE")))

(defun name-rewrite (rel-name)
  (cond
   ((assoc rel-name *rel-name-rewrite* :test #'equalp)
    (second (assoc rel-name *rel-name-rewrite* :test #'equalp)))
   ((and (stringp rel-name)
         (eql 0 (search "BIO-" rel-name)))
    (subseq rel-name (+ 4 (search "BIO-" rel-name))))
   (t
    rel-name)))

;; output relations for one sentence
(defun output-relations (&optional (sent-num 0) sent (stream t))
  (format t "~%Relations for sent ~d: ~s~%~a~%" sent-num sent (all-relations))
  (print-relations sent-num sent stream)
  *output-rows*)

(defun print-relations (&optional (sent-num 0) sent (stream t))
  (let ((rows 
         (loop for rel in (all-relations)
           when (r3-relation rel)
           appending 
           (expand-output-relation rel sent-num sent))))
    (push (list sent-num rows) *output-rows*)
    (if (eq stream t)
        (format t "~2%~d: ~a~:{~%~d, ~d, ~s, ~s, ~s~}" sent-num sent rows)
        (format stream "~:{~d, ~d, ~a, ~a, ~a, ~s, ~s, ~s~%~}" rows))))

(defun r3-relation (rel)
  (declare (special rel))
  (and
   (individual-p (car rel))
   (not (equalp "WE" (name-rewrite (entity-string (act-rel (car rel) :agent)))))
   (not (search "ENTITY-NIL" (name-rewrite (entity-string (act-rel (car rel) :object)))))
   (not (search "EVENT-NIL" (name-rewrite (entity-string (act-rel (car rel) :object)))))
   (or
    ;; don't output empty relatiosn
    (act-rel (car rel) :agent)
    (act-rel (car rel) :object)))
  )

;(setf *known-breaks* '(1))
(defun dtst (&optional n to-file)
  (declare (special  *dec-tests*))
  (if (numberp n)
      (let ((tst  (nth (- n 1) *dec-tests*)))
        (dtst1 n tst t))
    (progn 
      (reset-rows)
      (if to-file
          (write-dec-csv-output)
        (dolist (tst *dec-tests*) (dtst1 n tst t))
        )
      nil)))

(defun dtst1 (n test stream)
  (declare (special *known-breaks*))
    (print (list n test))
    (cond ((member n *ignored-sentences*) (format t "~%Skipping sentence ~d because of known problems" n))
          (t 
           (let ((*readout-relations* t))
             (declare (special *readout-relations*))
             (eval test)
             (output-relations n (second test) stream)
           ))))

(defun rdtst (n)
  (setq *output-rows* nil)
  (run-test n)
  (output-relations n (nth (- n 1) *sentences*) t)
  nil)
;;; (identify-relations *sentence*) returns (values relations entities)

(defun now-string ()
    (multiple-value-bind (second minute hour date month year ) ;day-of-week dst-p tz
                         (get-decoded-time)
      (declare (ignore second))
      (format nil "~2,'0d-~2,'0d-~2,'0d-~2,'0d~2,'0d" month date (mod year 100) hour minute)))

(defun test-file-with-time (&optional (name "dec-out") (ext "csv"))
  (declare (special cl-user::*nlp-home*))
  (merge-pathnames (format nil "Sparser/code/s/interface/R3-eval/~a-~a.~a" name (now-string) ext)
                   cl-user::*nlp-home*))


(defun write-dec-csv-output (&optional (file (test-file-with-time "dec-out" "csv")))
  (format t "~2%Writing result to ~a" file)
  (with-open-file (s file :direction :output :if-exists :supersede)

    (let ((res nil))
      (format s "~%Sent#, Event#, Subject, Event, Object, Site(s), Context, Sentence~&")
      (setq res (loop for tst in *dec-tests* for n from 1 collect (dtst1 n tst s)))
      (format t "~%wrote file ~a" file)
      res)
  ))








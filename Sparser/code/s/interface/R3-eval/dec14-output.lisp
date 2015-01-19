
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
      deactivator
      binder
      blocker
      catalyst
      creator
      encoder))

(defparameter *obj-props*
    '(object ;; not used in verbs1
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
    (:object (some-i-prop action *obj-props*))))
    
;; if ent-position t then show the name of the action, else ref the 
(defun entity-string (ent &optional (ent-position nil))
  (cond ((null ent) nil)
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
         
        (t ;; entity 
         (format nil "~a~@[:~a~]" (type-name ent) (ent-pname ent)))))


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

(defun output-relation (event sent-num sent)
  (declare (special *ev-map*))
  (let* ((evno (i-uid event))
         (subj (act-rel event :agent))
         (pat (act-rel event :object))
         (ev-string (entity-string event t))
         (subj-strings (call-or-map #'entity-string subj))
         (obj-strings (call-or-map #'entity-string pat))
         )
    (format t "~%Relation: ~a subj: ~a obj ~a" event subj pat)
    (push (cons evno event) *ev-map*)
    (list sent-num evno subj-strings ev-string obj-strings nil nil 
          (remove-separators sent))))

(defun reset-rows ()
  (setq *output-rows* nil *event-index* 0 *ev-map* nil))

;;; vars are *relations* *entities* and *events*



;; output relations for one sentence
(defun output-relations (&optional (sent-num 0) sent (stream t))
  (declare (special *dec-tests* *relations*))
  (format t "~%Relations for sent ~d: ~s~%~a~%" sent-num sent *relations*)
  (let ((rows 
         (loop for rel in (all-relations) ;; *relations*
           when (individual-p (car rel))
             collecting (output-relation (car rel) sent-num sent))))
    (push (list sent-num rows) *output-rows*)
    (if (eq stream t)
        (format t "~2%~d: ~a~:{~%~d, ~d, ~s, ~s, ~s~}" sent-num sent rows)
      (format stream "~:{~d, ~d, ~s, ~s, ~s, ~s, ~s, ~s~%~}" rows))
    *output-rows*))


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
        ))))

(defun dtst1 (n test stream)
  (declare (special *known-breaks*))
    (print (list n test))
    (cond ((member n *ignored-sentences*) (format t "~%Skipping sentence ~d because of known problems" n))
          (t 
           (let ((tested nil)
                 (*readout-relations* t))
             (declare (special *readout-relations*))
             (eval test)
             (output-relations n (second test) stream)
           ))))

;;; (identify-relations *sentence*) returns (values relations entities)

(defun now-string ()
    (multiple-value-bind (second minute hour date month year ) ;day-of-week dst-p tz
      (get-decoded-time)
      (format nil "~2,'0d-~2,'0d-~2,'0d-~2,'0d~2,'0d" month date (mod year 100) hour minute)))

(defun test-file-with-time (&optional (name "dec-out") (ext "csv"))
  (declare (special cl-user::*nlp-home*))
  (merge-pathnames (format nil "Sparser/code/s/interface/R3-eval/~a-~a.~a" name (now-string) ext)
                   cl-user::*nlp-home*))


(defun write-dec-csv-output (&optional (file (test-file-with-time "dec-out" "csv")))
  (format t "~2%Writing result to ~a" file)
  (with-open-file (s file :direction :output :if-exists :supersede)
    (format s "~%Sent#, Event#, Subject, Event, Object, Site(s), Context, Sentence")
    (loop for tst in *dec-tests* for n from 1 do (dtst1 n tst s))))







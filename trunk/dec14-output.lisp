
(in-package "SPARSER")

(defparameter *output-rows* nil)
(defparameter *event-index* 0)
(defparameter *ev-map* nil)

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
        ((is-event-p ent)
         (if ent-position 
             (format nil "~a" (type-name ent))
           (format nil "(~d) ~a" (i-uid ent) (type-name ent))))
        ((itypep ent 'collection)
         (format nil "<collection ~{~A~^, ~}>" 
                 (mapcar #'entity-string (value-of 'items en))))
         
        (t ;; entity 
         (format nil "~a~@[:~a~]" (type-name ent) (ent-pname ent)))))


;;; Sent # , Event #, Arg1, Predicate, Arg2, Site,  Context (optional)	Sentence
;;; Site is for protein modifications, Context is optional,
;;; Sentence is the original text (or text span?)

(defun call-or-map (fn lst)
  (cond ((null lst) nil)
        ((consp lst) (mapcar fn lst))
        (t (funcall fn lst))))

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
    (list sent-num evno subj-strings ev-string obj-strings nil nil sent)))

(defun reset-rows ()
  (setq *output-rows* nil *event-index* 0 *ev-map* nil))

;; output relations for one sentence
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


;(setf *known-breaks* '(1))
(defun dtst (&optional n to-file)
  (declare (special *known-breaks* *dec-tests*))
  (if (numberp n)
      (let ((tst  (nth (- n 1) *dec-tests*)))
        (dtst1 n tst t))
    (progn 
      (reset-rows)
      (if to-file
          (write-csv-output)
        (dolist (tst *dec-tests*) (dtst1 n tst t))
        ))))

(defun dtst1 (n test stream)
  (declare (special *known-breaks*))
    (print (list n test))
    (cond ((member n *known-breaks*) (format t "~%Skipping sentence ~d because of known problems" n))
          (t 
           (let ((tested nil))
;             (handler-case 
                 (progn (eval test)
                   (setq tested t))
;               (condition (condition) (values nil condition))
;                )
             (if tested (output-relations n (second test) stream)
                 (format t "~%Sentence ~d caused an error" n))
           ))))


(defun write-csv-output (&optional (file "dec-out.csv"))
  (with-open-file (s file :direction :output :if-exists :supercede)
    (loop for tst in *dec-tests* for n from 1 do (dtst1 n tst s))))


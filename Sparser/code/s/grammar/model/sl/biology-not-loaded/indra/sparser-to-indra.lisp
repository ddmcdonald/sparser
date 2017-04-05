(in-package :sparser)

(defun indra-json->sexp (&optional (input "statements-with-r3-sparser-extended")
                           (output "sexp-statements-with-r3-sparser-extended"))
  (with-open-file (in
                   (concatenate 'string "sparser:bio-not-loaded;" 
                                 "statements-with-r3-sparser-extended.json")
                      :direction :input 
                      :external-format :UTF-8)
    (with-open-file (out (concatenate 'string "sparser:bio-not-loaded;" 
                                      output ".lisp")
                         :direction :output :if-exists :supersede 
                         :if-does-not-exist :create
                         :external-format :UTF-8)
      (format out "(in-package :sparser)~%~%")
      (pprint `(defparameter *json-sexp-statements* ',(cl-json::decode-json in)) out)))
  output)

;(defparameter *json-type-ht* (make-hash-table :size 100 :test #'equal))
(defparameter *json-sexp-statements* nil)
(defun collect-unique-json-elts (&optional (json-list *json-sexp-statements*))
  (simplify-json-list json-list))

(defun simplify-json-struct (js-struct)
  (if (consp js-struct)
      (sort (loop for de in js-struct
              collect (simplify-json-de de))
            #'string< :key #'car)
      (simplify-json-atom js-struct)))

(defun simplify-json-atom (js-atom)
  (if (stringp js-atom)
      (simplify-js-string js-atom)
      js-atom))


(defun simplify-json-de (de)
  (let ((key (car de))
        (value (cdr de)))
    (cons key 
          (case key
            ((:RESIDUE :POSITION :IS--MODIFIED :IS--ACTIVE :ID :SUPPORTED--BY :SOURCE--ID :PMID :DB--REFS :TEXT :LOCATION :NAME :FOUND--BY :SPECIES :CELL--TYPE :ORGAN :TISSUE :TO--LOCATION :FROM--LOCATION :CELL--LINE :DIRECT :SECTION--TYPE :SOURCE--API :RESIDUE--FROM :RESIDUE--TO)
             nil)
            (t
             (if (json-list-p value)
                 (simplify-json-list value)
                 (simplify-json-struct value)))))))

(defun json-list-p (val)
  (and (consp val)
       (json-struct-p (car val))))
             
(defun json-struct-p (elt)
  (or (not (consp elt))
      (json-de-p (car elt))))

(defun json-de-p (elt)
  (and (consp elt)
       (symbolp (car elt)))) ;; anything that starts with a symbol *should* be a de

(defun simplify-js-string (string)
  (cond ((eq 0 (search "http" string))
         "http")
        (t
         string)))
        

(defun simplify-json-list (js-list)
  (remove-duplicates (loop for js-struct in js-list
                           collect (simplify-json-struct js-struct))
                     :test #'equal))

(defun simplified-json-sexp->file (&optional (file "simplified-json-sexps") 
                                   (json-sexp *json-sexp-statements*))
  (with-open-file (out (concatenate 'string "sparser:bio-not-loaded;" 
                                      file ".lisp")
                         :direction :output :if-exists :supersede 
                         :if-does-not-exist :create
                         :external-format :UTF-8)
    (print (collect-unique-json-elts json-sexp) out))
  file)


(defun json-dict-entries (j label)
  (loop for de in j when (eq (car de) label)
          collect de))

(defun json-texts (j)
  (remove-duplicates
   (loop for de in (json-dict-entries j :evidence)
         append
           (loop for ev in (cdr de)
                 append
                   (mapcar #'cdr (json-dict-entries ev :text))))
   :test #'equal))


(defun json-parsable-texts (j)
  (remove-duplicates
   (loop for de in (json-dict-entries j :evidence)
         append
           (loop for ev in (cdr de)
                   append
                   (when (member (cdr (assoc :SOURCE--API ev))
                         '("trips" "reach" "sparser") :test #'equal)
                     (mapcar #'cdr (json-dict-entries ev :text)))))
   :test #'equal))


(defun missed-indra ()
  (declare (special *missed-indra*))
  (length
   (setq *missed-indra*
         (loop for j in *json-sexp-statements*
               append 
                 (unless
                     (member (cdr (assoc :type j))
                             '("IncreaseAmount"
                               "DecreaseAmount"
                               "Translocation")
                             :test #'equal)
                               
                   (let ((ps (json-parsable-texts j)))
                     (when
                         (and ps
                              (loop for s in ps
                               never (has-indra-data s)))
                       (list j))))))))


(defun has-indra-data (s)
  (let ((*indra-post-process* (list t)))
    (declare (special *indra-post-process*))
    (with-total-quiet (eval `(pp ,s)))
    (reverse (cdr (reverse *indra-post-process*) ))))



(in-package :sparser)

(defun indra-json->sexp (&optional (input "statements-with-r3-sparser-extended") (output "sexp-statements-with-r3-sparser-extended"))
  (with-open-file (in "~/projects/cwc-integ/sparser/Sparser/code/s/grammar/model/sl/biology-not-loaded/indra/statements_with_r3_sparser_extended.json"
                      ;(concatenate 'string "sparser:bio-not-loaded;" input ".json")
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
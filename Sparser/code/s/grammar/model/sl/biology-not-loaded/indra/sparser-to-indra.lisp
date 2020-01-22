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
(defvar *json-sexp-statements* nil)
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
            ((:RESIDUE :POSITION :IS--MODIFIED :IS--ACTIVE :ID :SUPPORTED--BY :SOURCE--ID :PMID :DB--REFS :TEXT :LOCATION :NAME :FOUND--BY :SPECIES :CELL--TYPE :ORGAN :TISSUE :TO--LOCATION :FROM--LOCATION :CELL--LINE :DIRECT :SECTION--TYPE :SOURCE--API :RESIDUE--FROM :RESIDUE--TO :EVIDENCE)
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

(defparameter *missed-indra-sentences* nil)

(defun missed-indra-sentences ()
  (declare (special *missed-indra* *missed-indra-sentences*))
  (length
   (setq *missed-indra-sentences*
         (loop for j in *json-sexp-statements*
               as i from 1 by 1
               append 
                 (unless
                     (member (cdr (assoc :type j))
                             '("IncreaseAmount"
                               "DecreaseAmount"
                               "Translocation")
                             :test #'equal)
                   (let ((missed-sents
                          (let ((ps (json-parsable-texts j)))
                            (loop for s in ps unless (has-indra-data s)
                                  collect s))))
                     (when missed-sents
                       `((,i ,missed-sents)))))))))


(defun has-indra-data (s)
  (let ((*indra-post-process* (list t)))
    (declare (special *indra-post-process*))
    (with-total-quiet (eval `(pp ,s)))
    (reverse (cdr (reverse *indra-post-process*) ))))


(defun indra-field-filter (field type &key (return-fn #'identity) (data *json-sexp-statements*))
  "Given a field and the type for that field, and an optional return field, find examples of that type"
  (let ((grouped (group-by data #'(lambda(j) (assoc field j)) 
                           return-fn))
        (field-pair (cons field type)))
    ;(print (car grouped))
    (remove-duplicates (cdr (assoc field-pair grouped :test #'equal))
                       :test #'equal)))

(defun get-source-api-assoc (x)
   (remove-duplicates (loop for item in (cdr (assoc :evidence x))
          collect (assoc :source--api item))
                      :test #'equal))
    
(defun find-indra-forms (s &optional pmid)
  "Given a sentence, look at the has-indra-data for the sentence and
pass the result to the appropriate indra generator"
  (let ((forms (has-indra-data s)))
    (loop for f in forms
            collect (cond ((eq 'bio-activate (car (second f)))
                           (make-indra-activation s (when pmid pmid))

)))))

(defun make-item-form (type item-content &key activation mods)
  "Given an indra type (agent, obj, sub, or subj dependent on indra
form) and the item return an indra form for that item"
  (let ((uid (second (assoc 'UID item-content)))
         (name (second (assoc 'NAME item-content))))
  `(,type (:DB--REFS ,(uid->db--ref uid)) (:NAME ,name) 
          ,.(when activation (list activation)) ,.(when mods (list mods)))))

(defun uid->db--ref (uid)
  "Given a UID field, turn it into the indra form for that field"
  (let* ((colon (search ":" uid))
         (prefix (subseq uid 0 colon))
         (id (subseq uid (+ 1 colon))))
    (cons (intern (concatenate 'string ":+" prefix "+"))
          id)))

(defun make-item-activation (indra-data)
  "Given indra-data, make the :ACTIVATION section"
  `(:ACTIVATION ,(cons :ACTIVITY--TYPE "active") 
;; note: may want to modify activity--type to catch the rare "kinase"
;; case, but there's only one example in the evidence so probably not
;; worth it
                ,(cons :IS--ACTIVE T)))

(defun make-indra-activation (indra-data &optional pmid)
  "Given the indra data from has-indra-data for a sentence with an
  activation, generate and indra form for that sentence" 
  
)

(defun make-indra-autophosphorylation (indra-data &optional pmid)
"Given the indra data from has-indra-data for a sentence with an
autophosphorylation, generate and indra form for that sentence"
)

(defun make-indra-phosphorylation (indra-data &optional pmid)
  (let* ((phos-content (cdr (assoc 'PHOSPHORYLATE (cdr indra-data))))
         (substrate (cdr (assoc 'SUBSTRATE phos-content)))
         (substrate-col? (item-collection-p substrate))
         (substrate-form (get-item-forms :sub substrate substrate-col?))
         (text (cdr (assoc 'TEXT (cdr indra-data))))
         (evidence-form (make-evidence-form text (when pmid pmid))))
    (if substrate-col?
        (loop for subf in substrate-form
                append (make-indra-phos-with-sub subf evidence-form phos-content))
        (make-indra-phos-with-sub substrate-form evidence-form phos-content))))

(defun make-indra-phos-with-sub (substrate-form evidence-form phos-content)
  (let* ((agent (cdr (assoc 'AGENT phos-content)))
         (agent-col? (when agent (item-collection-p agent)))
         (agent-form (when agent (get-item-forms :enz agent agent-col?))))   
    (if agent-col?
        (loop for agentf in agent-form
              append (make-indra-phos-with-agent substrate-form evidence-form phos-content agentf))
        (make-indra-phos-with-agent substrate-form evidence-form phos-content agent-form))))

(defun make-indra-phos-with-agent (substrate-form evidence-form phos-content &optional agent-form)
 (let* ((residue (cdr (assoc 'SITE phos-content)))
         (residue-col? (when residue (item-collection-p residue)))
         (residue-form (when residue (get-residue-forms residue residue-col?))))
   (declare (special residue residue-col? residue-form))
 ;  (lsp-break)
   (if residue-col?
       (loop for resf in residue-form
             collect (make-indra-phos-with-res substrate-form evidence-form resf agent-form))
       (list (make-indra-phos-with-res substrate-form evidence-form residue-form agent-form)))))

(defun make-indra-phos-with-res (substrate-form evidence-form
                                 &optional residue-form agent-form)
  `(,substrate-form 
    ,evidence-form
    ,.(when residue-form residue-form) ;; no list needed because they two parts of it should be top-level for phos
    ,.(when agent-form (list agent-form))))


(defun item-collection-p (item)
  "Given an item form, determines if it's a base collection or a
family collection and if so returns the set of items (proteins) -- if
it's a singular protein returns nil -- may want to check if everything
is a protein..."
  (case (caar item)
    (collection 
     (collection-items item))
    ((human-protein-family protein-family)
     (collection-items  (cdr (assoc 'FAMILY-MEMBERS (cdr (car item))))))
    ((protein RESIDUE-ON-PROTEIN)
     nil)))

(defun collection-items (form)
  (cdr (assoc 'SET (cdr (assoc 'ITEMS (cdr (assoc 'COLLECTION form)))))))

(defun make-indra-per-item-phos (substrate-form evidence-form &key agent-form residue-form )
  `(,(when agent-form agent-form) ,substrate-form ,(when residue-form residue-form) 
                ,evidence-form))

(defun get-item-forms (type form col &key mods activation)
  (if col
      (loop for item in col
              collect (make-item-form type (cdr item) 
                                      :mods mods 
                                      :activation activation))
      (make-item-form type form :mods mods 
                      :activation activation)))

(defun make-evidence-form (text &optional pmid)
  `(:EVIDENCE ((:SOURCE--API "sparser") (:TEXT ,text) (:PMID ,pmid))))

(defun get-protein-content (item)
  (cdr (assoc 'PROTEIN item)))  

(defun get-residue-forms (resform col)
  (if col
      (loop for res in col
              collect (make-single-residue-form (cdr res)))
      (make-single-residue-form (cdr resform))))

(defun make-single-residue-form (residue)
  (let* ((pos (write-to-string (second (assoc 'POSITION residue))))
        (aa (second (assoc 'NAME (cdr (assoc 'AMINO-ACID (cdr (assoc 'AMINO-ACID residue)))))))
        (aa-abbrev (get-tag :one-letter-code 
                            (find-or-make-individual 'amino-acid :name (string-downcase aa)))))
  `(,(cons :POSITION pos)
     ,(cons :RESIDUE aa-abbrev))))


;;;
;;;;; code for comparing new Sparser indra output to results of old sparser core image

(defun read-indra-json (pmcid &optional (source :hms) &aux js-file)
  (unless (or (search "~/" pmcid)
              (search "/users/" pmcid))
    (setq js-file
          (make-pathname :name 
                         (format nil "~a~a-semantics"
                                 (case source
                                   (:hms "hms-json/")
                                   (:sift "sift-json/"))
                                 pmcid
                                 )
                         :type "json"
                         :defaults
                         (asdf:system-relative-pathname
                          :r3
                          "../corpus/hms-update/"))))
  (with-open-file (in js-file :direction :input)
    (cl-json::decode-json in)))



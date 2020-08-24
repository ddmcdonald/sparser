(in-package :sparser)
;;;;;!!!
(declaim (sb-ext:muffle-conditions sb-ext:compiler-note))
(declaim (optimize (debug 3)(speed 2)))

;;;;;!!!


(defvar *json-sexp-statements* nil)
(defparameter *noisy-failure-in-indra* nil) ;; jturn on to get warnings
(defparameter *comparable-indra* nil) ;; use when trying to produce simple output for comparison to REACH

;; utilities
(defun a-get (key item)
  (cdr (assoc key item)))

(defun a-get-item (key item)
  (car (a-get key item)))

;;;;;;;;

(defun reach-comparison-mode? ()
  (and *comparable-indra*
       (not (and (boundp '*semantic-output-format*)
                 (eq *semantic-output-format* :hms-json)))))

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

(defun collect-unique-json-elts (&optional (json-list (get-json-sexp-statements)))
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

(defun get-json-sexp-statements ()
  (unless (and (boundp '*json-sexp-statements*)
               *json-sexp-statements*)
    (load "~/projects/r3/code/indra/sexp-statements-with-r3-sparser-extended.lisp"))
  *json-sexp-statements*)

(defparameter *found-indra* nil)
(defun missed-indra ()
  (declare (special *missed-indra*))

  (length
   (setq *missed-indra*
         (loop for j in (get-json-sexp-statements)
               append 
                 (unless
                     (member (cdr (assoc :type j))
                             '("IncreaseAmount" "DecreaseAmount")
                             :test #'equal)
                               
                   (let ((ps (json-parsable-texts j)))
                     (if
                      (and ps
                           (loop for s in ps
                                 never (has-indra-data s)))
                      `(, j)
                      (progn (push j *found-indra*) nil))))))))

(defparameter *missed-indra-sentences* nil)
(defparameter *missed-indra-sentences-rd* nil)
(defparameter *indra-data-sents* nil)
(defun missed-indra-sentences ()
  (declare (special *missed-indra* *missed-indra-sentences* *missed-indra-sentences-rd* *indra-data-sents*))
  (length
   (setq *missed-indra-sentences*
         (loop for j in   (get-json-sexp-statements)
               as i from 1 by 1
               append 
                 (unless
                     (member (cdr (assoc :type j))
                             '("IncreaseAmount" "DecreaseAmount")
                             :test #'equal)
                   (let ((missed-sents
                          (let ((ps (json-parsable-texts j)))
                            (loop for s in ps unless (has-indra-data s)
                                  collect s))))
                     (when missed-sents
                       `((,i ,missed-sents))))))))
  (length (setq *missed-indra-sentences-rd*
                (remove-duplicates
                 (loop for ss in *missed-indra-sentences* append (second ss))
                 :test #'equal)))
  (length (setq *indra-data-sents*
                (remove-duplicates
                 (loop for ss in (get-json-sexp-statements)
                       append
                         (loop for s in (json-parsable-texts ss)
                               unless (member s *missed-indra-sentences-rd* :test #'equal)
                               collect s))
                 :test #'equal)))
  (format t "*missed-indra-sentences-rd* has ~s sentences" (length *missed-indra-sentences-rd*)))


;; code to clear out regions of sentences which are normally xml items in articles read by Sparser, but which come through as strings from HMS
(defun clear-out-xrefs (s &aux (ss s))
  (loop for str in '("XREF_BIBR"
                     "XREF_FIG"
                     "XREF_SUPPLEMENTARY"
                     "XREF_TABLE")
        do (setq ss (cl-ppcre::regex-replace-all str ss "")))
  ss)


(defun has-indra-data (s &optional break-on-errors)
  (let ((*indra-post-process* (list t)))
    (declare (special *indra-post-process*))
    (setq s (clear-out-xrefs s))
    (if break-on-errors
        (qpp s)
        (safe-parse s))
    (reverse (cdr (reverse *indra-post-process*)))))

(defun indra-data (s &optional break-on-errors) (has-indra-data s break-on-errors))
(defun indra-forms (s &optional break-on-errors) (find-indra-forms s 'dummy-pmc break-on-errors))
(defun find-indra-forms (s &optional pmid break-on-errors &aux (*indra-sentence* s))
  "Given a sentence, look at the has-indra-data for the sentence and
pass the result to the appropriate indra generator"
  (declare (special *indra-sentence*))
  (indra-sexps->json-sexps (has-indra-data s break-on-errors) pmid))



(defun indra-field-filter (field type &key (return-fn #'identity) (data (get-json-sexp-statements)))
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
    
(defvar *indra-sentence*)

(defun indra-sexps->json-sexps (forms &optional pmid &key check-form)
  (remove nil ;; some forms will return nil -- will be on the
          ;; *missing-indra-object* and/or
          ;; *indra-lambda-var-statements* list
          (loop for js
                in
                  (loop for f in forms
                        append (indra-form-for-sexpr f pmid check-form))
                collect (essential-indra js))))

(defvar *top-indra-form*)

(defun safe-category-named (item-desc)
  (cond ((consp item-desc)
         (cond
           ((symbolp (car item-desc))
            (cond ((eq (car item-desc) :name)
                   (let ((string-name
                          (getf (getf item-desc :DB--REFS) :+type+)))
                     (category-named
                      (if (stringp string-name)
                          (read-from-string string-name)
                          string-name))))
                  (t (category-named (car item-desc)))))
           ((and (consp (car item-desc))
                 (eq (caar item-desc) :type))
            ;; e.g. (:TYPE . "IncreaseAmount")
            (category-named (read-from-string (cdar item-desc))))
           (t (break "bad category-name in ~s" item-desc)
              (category-named (car item-desc)))))
        ((symbolp item-desc)
         (category-named item-desc))))
        

(defun indra-form-for-sexpr (f pmid &optional check-form)
  (when (and (consp f)
             ;; fails for f= ("10 " 10 (sparser::text "Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold")bbbb)
             (consp (second f)))
    (let ((cat? (if check-form check-form (car (second f))))
          (*top-indra-form* f)
          result)
      (declare (special *top-indra-form*))
      (setq result
            (case cat?
              (collection
               (let ((elements (get-set-elements (second f))))
                 ;;         (lsp-break "indra-form-for-sexpr with collection")
                 (when (loop for item in elements
                             thereis (itypep (car item) 'bio-process))
                   (indra-forms-for-items
                    (loop for item in (distribute-args-to-items (collection-args (second f)) elements)
                          collect
                            `(,(car f) ,item
                               ;; not sure why this was there -- it caused the text of the conjunction
                               ;; to be added to the text of the individual item
                               ;;,(assoc 'text (cdr f))
                               ))
                    pmid))))
              (level (make-indra-level f cat? pmid)) 
              ((translocation export recruit)
               (make-indra-translocation f 'translocation (when pmid pmid)))
              (bio-activate 
               (make-indra-act-or-express f cat? pmid))
              (inhibit 
               (make-indra-act-or-express f cat? pmid))
              (decrease 
               (make-indra-act-or-express f cat? pmid))
              (bio-inactivate 
               (make-indra-act-or-express f cat? pmid))
              ((gene-transcript-express gene-transcript-over-express
                                        gene-transcript-under-express
                                        transcribe
                                        gene-transcript-co-express
                                        gene-transcript-co-over-express)
               (make-indra-act-or-express f 'gene-transcript-express pmid))
              (auto-phosphorylate
               (make-indra-autophosphorylation f cat? pmid))
              ((phosphorylate hyperphosphorylate hypophosphorylate dephosphorylate
                              residue-on-protein
                              diphosphorylation)
               (make-indra-post-trans-mod f cat? pmid))
              (site
               (let* ((site (second f))
                      (process (assoc 'process (cdr site)))
                      (new-site (remove process site :test #'equal))
                      (new-f
                       (cond ((not (consp (second process)))
                              (warn "~%bad process in site, indra-form-for-sexpr,  ~s~%"
                                    f)
                              nil)
                             (t (when (itypep (car (second process)) 'post-trans-mod)
                                  (subst `(,@(second process) (site ,new-site))
                                         site
                                         f))))))
                 (declare (special site process new-site new-f))
                 (when new-f
                   (make-indra-post-trans-mod new-f (car (second process)) pmid))))
              (t (when (and cat? (category-named cat?))
                   (cond
                     ((itypep cat? 'post-translational-modification)
                      (make-indra-post-trans-mod f cat? pmid))
                     ((or (itypep cat? 'bio-control)
                          (itypep cat? 'transcribe))
                      (make-indra-bio-control f cat? pmid))
                     ((loop for superc
                            in '(affinity binding ;bio-activity
                                 bio-associate bio-complex cooperate dimerize
                                 bio-form heterodimerize interact ligate
                                 oligomerize recruit)
                            thereis (itypep cat? superc))
                      (make-indra-binding f cat? pmid))
                     ((and (boundp 'cl-user::*sparser-to-indra*)
                           (symbol-value 'cl-user::*sparser-to-indra*)
                           (itypep cat? 'bio-entity))
                      (list (make-cwc-indra-bio-entity cat? f))))))))
      (if (get-indra-for-cwc?)
          (sublis '(("GeneTranscriptExpress" . "IncreaseAmount"))
                  result
                  :test #'equal)
          result))))
  

(defun make-cwc-indra-bio-entity (cat f)
  (let* ((prot-item (car (prot-item->indra-list (second f) nil)))
         (db-refs (assoc :db--refs prot-item))
         (res
          (sublis
           `(((:db--refs
               (:+type+ ,.(if (eq (symbol-package  cat) (find-package :sp))
                              (intern (pname cat) (find-package :ont))
                              (symbol-name cat)))
               ,.(cdr db-refs))
              ,.db-refs)
             ( :+FA+ . :+NXPFA+))
           prot-item)))
    (when (assoc :+text+ res)
      (setq res (remove (assoc :+text+ res) res)))
    res))

;; example from biosense
#|
(TYPE Activation SUBJ
            (NAME KRAS DB--REFS
             (+TYPE+ ONT::GENE-PROTEIN +TEXT+ KRAS +HGNC+ 6407 +UP+ P01116 +NCIT+ C52546))
            OBJ
            (NAME RAF DB--REFS (+TYPE+ ONT::PROTEIN-FAMILY +TEXT+ RAF +FPLX+ RAF +NXPFA+ 03114))
            OBJ--ACTIVITY activity BELIEF 1 EVIDENCE
            ((SOURCE--API trips SOURCE--HASH -1613118243458052451)) ID
            acc5b40a-2b87-424d-bd01-ce849605130f MATCHES--HASH 19343107104138835)
|#



(defun complex-protein-json (prot)
  (prot-item->indra-list prot nil))
  
#+ignore
(((:NAME . "DCT")
  (:DB--REFS (:+TEXT+ . "DT") (:+UP+ . "P40126") (:+HGNC+ . "2709")))
 ((:NAME . "HBEGF")
  (:DB--REFS (:+TEXT+ . "DTR") (:+UP+ . "Q99075") (:+HGNC+ . "3059"))))

(defparameter *indra-binding* nil)
(defun make-indra-binding (f cat? pmid)
  (cond ((get-indra-for-cwc?)
         (let* ((binding-sexpr (second f))
                (binder (if (assoc 'sp::component (cdr binding-sexpr))
                            (second (assoc 'sp::component (cdr binding-sexpr)))
                            (second (assoc 'sp::binder (cdr binding-sexpr)))))
                (bindee (if (assoc 'sp::component (cdr binding-sexpr))
                            (second
                             (assoc 'sp::component
                                    ;; get the second component binding
                                    (cdr (member
                                          (assoc 'sp::component (cdr binding-sexpr))
                                          (cdr binding-sexpr)
                                          ))))
                            (second (assoc 'sparser::direct-bindee (cdr binding-sexpr)))))
                (result
                 `(((:type . "Complex")
                    ;;(:members ,binder ,bindee)
                    (:members ,binder ,bindee)))))
           (when (and (consp bindee)(not (keywordp (car bindee))))
             (lsp-break "direct-bindee"))
           ;;(break "make-indra-binding ~%result=~%~s~%" result)
           result))
        (t
         (let ((complex 
                (case (car (second f))
                  (bio-associate
                   (create-complex-json-from-associate
                    (second f) pmid (second (assoc 'text (cdr f))) (car f)))
                  (t (create-complex-json
                      (second f) pmid (second (assoc 'text (cdr f))) (car f))))))
           (when complex
             (push (list cat? f pmid) *indra-binding*))
           complex))))

#|
F=
("MEK binds ERK"
   (SPARSER::BINDING
    (SPARSER::BINDER
     (:NAME "MEK" :DB--REFS
      (:+TEXT+ "MEK" :+FPLX+ "MEK" :+TYPE+ "ONT::PROTEIN-FAMILY"
       :+SPARSER+ SPARSER::MV6)))
    (SPARSER::DIRECT-BINDEE
     (:NAME "ERK" :DB--REFS
      (:+TEXT+ "ERK" :+NCIT+ "C26360" :+FPLX+ "ERK" :+TYPE+
       "ONT::PROTEIN-FAMILY" :+SPARSER+ SPARSER::MV8)))
    (SPARSER::PRESENT #<ref-category PRESENT>)
    (SPARSER::RAW-TEXT "binds")))
|#

#|
To MRA:
(REQUEST 
 :CONTENT 
 (BUILD-MODEL 
  :DESCRIPTION 
  ((:TYPE "Complex" 
          :MEMBERS 
          ((:NAME "ERK" 
                  :DB--REFS (:+TYPE+ "ONT::PROTEIN-FAMILY" :+TEXT+ "ERK" :+FPLX+ "ERK" :+NCIT+ "C26360"))
           (:NAME "MEK" 
                  :DB--REFS (:+TYPE+ "ONT::PROTEIN-FAMILY" :+TEXT+ "MEK" :+FPLX+ "MEK"))) 
          :BELIEF 1 
          :EVIDENCE ((:SOURCE--API "trips" :SOURCE--HASH -1613118243458052451)) :ID "f667053b-a79a-4948-8c7e-badcaf68b238" :MATCHES--HASH "2790195940312003"))) :TO MRA :REPLY-WITH ECI-GOAL217 :sender BA)|#

(defparameter *bio-assoc-args* nil)

(defun create-complex-json-from-associate (complex-expr &optional pmid sentence trigger (head (car complex-expr)))
  (let ((members
         (remove-duplicates
          (create-protein-indra-list
           (loop for arg in (cdr complex-expr)
                 when (and (consp arg) ;; "the association of one or more ..."
                           (member (car arg) '(participant object))
                           (consp (second arg))
                           (or (itypep (car (second arg)) 'protein)
                               (when (eq (car (second arg)) 'collection)
                                 (loop for type
                                       in (second (assoc 'type (cdr (second arg))))
                                       thereis (itypep type 'protein)))))
                collect (second arg)))
          :test #'equal)))
    (when (cdr members)
      (push (list sentence members) *bio-assoc-args*)
      `(((:TYPE . "Complex")
         (:MEMBERS ,@members)
         ;;,(evidence xxx)
         (:EVIDENCE
          ((:SOURCE--API . "sparser") (:PMID ,. pmid)
           (:TEXT ,. sentence)
           (:TRIGGER ,.trigger)
           (:ANNOTATIONS (:FOUND--BY ., (pname head)))))
         (:SBO . "http://identifiers.org/sbo/SBO:0000526"))))))

(defun create-protein-indra-list (prots)
  (loop for prot in prots
        append
          (if
           (or (itypep (car prot) 'human-protein-family)
               (itypep (car prot) 'protein-family))
           (single-protein->indra-list prot nil)
           (complex-protein-json prot))))


(defparameter *protein-args-for-complex* nil)
(defparameter *multiple-protein-complex* nil)
(defparameter *single-protein-complex* nil)
(defparameter *show-no-remaining-proteins* nil)


(defun create-complex-json (complex-expr &optional pmid sentence trigger (head (car complex-expr)))
  (let ((members (remove-duplicates
                  (create-protein-indra-list
                   (loop for branch in (cdr complex-expr)
                         when (member (car branch)
                                      '(COMPONENT DIRECT-BINDEE BINDEE BINDER
                                        MODIFIER DOMAIN
                                        INTERACTOR PARTICIPANT AGENT
                                        OBJECT
                                        USING ;; interaction with ...
                                        APPOSITIVE-DESCRIPTION))
                         append
                           (let ((proteins-in
                                  (type-expressions-in (second branch) 'protein))
                                 filtered)
                             (setq filtered
                                   (loop for p in proteins-in
                                         when (is-in-p 'name p)
                                         collect p))
                             (unless (or (null proteins-in) filtered
                                         (null *show-no-remaining-proteins*))
                               (format t "~%no remaining proteins out of ~s in ~s~%"
                                       proteins-in trigger))
                             (setq proteins-in filtered)
                               
                             (when (and (cdr proteins-in)
                                        (not (member (car branch) '(participant))))
                               (pushnew `(,sentence
                                          ,trigger
                                          ,(car branch)
                                          ,proteins-in)
                                        *multiple-protein-complex*
                                        :test #'equal))
                             ;;(break)
                             proteins-in)))
                   :test #'equal)))
    ;; don't create a complex if you can;t find its members
    (cond
      ((cdr members)
       (push (list (current-string) complex-expr members)
             *protein-args-for-complex*)
       `(((:TYPE . "Complex")
          (:MEMBERS ,@members)
          ;;,(evidence xxx)
          (:EVIDENCE
           ((:SOURCE--API . "sparser") (:PMID ,. pmid)
            (:TEXT ,. sentence)
            (:TRIGGER ,.trigger)
            (:ANNOTATIONS (:FOUND--BY ., (pname head))
                         
                          )))
          (:SBO . "http://identifiers.org/sbo/SBO:0000526"))))
      (members
       (push `(,(current-string)
                ,trigger
                ,members)
             *single-protein-complex*)
       nil)
      (t
         nil))))


(defun collection-args (f)
  "find the semantic arguments (modifiers and post-modifiers) that apply to all items in the collection"
  (loop for a in (cdr f)
        unless (member (car a) '(items number type raw-text))
        collect a))
         
(defun distribute-args-to-items (args all-elements)
  (loop for item in all-elements
        collect `(,(car item) ,@args ,@(cdr item))))

(defun indra-forms-for-items (items pmid)
  (loop for item in items
        append
          (indra-form-for-sexpr item pmid)))


(defparameter *missing-indra-object* nil)
(defparameter *object-missing-uid* nil)
(defparameter *indra-lambda-var-statements* nil)



(defun add-role-and-aux-to-indra-item (role item-form &key frame activity)
  (declare (special role item-form frame))
  (when item-form
    (cond ((reach-comparison-mode?)
           (comparable-add-role-and-aux-to-indra-item role item-form frame activity))
          ((or (stringp  item-form) (symbolp (car item-form)))
           `(,role . ,item-form))
          (t `(,role ,@(if (reach-comparison-mode?)
                           (reach-item item-form)
                           item-form) ,@ activity)))))

(defun comparable-add-role-and-aux-to-indra-item (role item-form frame activity)
  (setq role (reach-role role frame))
  (cond ((or (stringp  item-form) (symbolp (car item-form)))
         `(,role ,item-form ,@ activity))
        (t `(,role ,@(reach-item item-form) ,@ activity))))

;; THIS IS THE CODE THAT CONVERTS TO THE SIMPLIFIED  FORM (STRINGS) FOR COMPARISON TO REACH
(defun reach-item (item-form)
  (let* ((raw-text
          (or
           (cdr (assoc :+TEXT+ item-form))
           (cdr (assoc :+TEXT+ (cdr (assoc :db--refs item-form))))))
         (proteins
          (loop for p in (cdr (assoc 'proteins item-form)) append (reach-item p)))
         (modifiers
          (loop for p in (cdr (assoc 'modifiers item-form)) append (reach-item p))))
    (cond ((and raw-text proteins) (list (format nil "~{~a~^ ~} ~a" proteins raw-text)))
          (raw-text (list raw-text))
          (t item-form))))


(defparameter *sparser-indra-roles* nil)

(defun reach-role (role form)
  (declare (special role form))
  (pushnew (list role (car form)) *sparser-indra-roles* :test #'equal)
  (case (car form)
    ((bio-activate bio-inactivate inhibit)
     (case role
       (:obj  "controlled")
       (:subj "controller")
       (:sub (lsp-break ":sub") "controller")
       (t (lsp-break "activ"))))
    ((translocation recruit export)
     (case role
       ((:subj :agent) "theme")
       (:orig "origin")
       (:dest "destination")
       (t (lsp-break "translocation"))))
    ((gene-transcript-express
      gene-transcript-over-express gene-transcript-under-express
      gene-transcript-co-over-express
      transcribe gene-transcript-co-express)
     (case role
       ((:obj) "theme")
       ;; "that de-repression of IGF-1 transcription by BRCA1-KD"
       ;;  transcription should have no subject...
       (:subj "agent")))
    ((acetylation alkylation auto-phosphorylate auto-ubiquitinate biotinylation
                  de-acetylation de-methylation de-ubiquitination deneddylation dephosphorylate
                  desumoylation diphosphorylate farnesylation glycosylation hydroxylation
                  hyper-acetylation hypo-acetylation hyper-methylation hyperphosphorylate
                  residue-on-protein
                  hypo-methylation
                  hypophosphorylate isoprenylation
                  methylation myristoylation
                  monoubiquitination neddylation nitrosylation
                  oxidation palmitoylation phosphorylate poly-adenylation poly-ubiquitination
                  post-translational-modification ribosylation
                  s-nitrosylation sumoylation transphosphorylate ubiquitination unphosphorylate)
     (case role
       (:SUB "substrate")
       (:ENZ "enzyme")))
    (level
     (case role (:measured-item "theme")))
    ((methylation)
     (case role
       (:SUB "substrate")))
    (t (cond ((itypep (car form) 'bio-control)
              (case role
                (:agent "controller")
                (:affected-process "controlled")
                (t (lsp-break "missed-reach-role for bio-control  ~s for ~s~%"
                              role form)
                   nil)))
             (t
              (lsp-break "missed-reach-role ~s for ~s~%"
                         role form)
              nil)))))



(defun indra-obj-forms (indra-data &optional (vars '(object))
                        &aux (act-content (cdr (second indra-data))))
  (let ((objs (find-named-args (second indra-data) vars)))
    (declare (special objs))
    (cond ((and (consp objs)
                (consp (car objs))
                (eq :name (caar objs)))
           ;; already been translated
           objs)
          ((and (consp (car objs))
                (safe-category-named (car objs))
                (itypep (safe-category-named (car objs)) 'process))
           `(,(car (a-get 'raw-text (cdar objs)))))
          ((and (consp (car objs))
                (safe-category-named (car objs))
                (itypep (safe-category-named (car objs)) 'pathway))
           (prot-items->indra-list
            (or objs (find-substrates act-content))
            indra-data))
          (t
           (prot-items->indra-list
            (or objs (find-substrates act-content))
            indra-data)))))

(defun make-indra-act-or-express (indra-data type &optional pmid)
  "Given the indra data from has-indra-data for a sentence and its
type 'BIO-ACTIVATE or 'BIO-INACTIVATE or GENE-TRANSCRIPT-EXPRESS GENE-TRANSCRIPT-OVER-EXPRESS
generate and indra form for that sentence"
  (let ((obj-forms (indra-obj-forms indra-data '(object affected-process modifier))))
    ;; it is possible to activate a process -- this is what REACH reports
    (if (null obj-forms)
        (then (push indra-data *missing-indra-object*) nil)
        (loop for objf in obj-forms
                unless (stringp objf)
              append
                (make-indra-act-or-express-with-obj
                 objf
                 (cdr (second indra-data))
                 indra-data type pmid)))))

(defun make-indra-act-or-express-with-obj (obj-form act-content indra-data type pmid)
  (let* ((agent (get-agent-from-form act-content))
         (agent-forms
          (when agent
            (if (and (consp agent) (eq (car agent) :name))
                (list agent)
                (prot-item->indra-list agent indra-data)))))
    (loop for agentf in (or agent-forms (list nil)) ;; want result even if no enzyme
          collect (make-indra-act-or-express-with-agent obj-form indra-data type pmid agentf))))

(defun get-agent-from-form (form)
  ;; protein-agent is the closest (in the string) to the verb
  ;;  "the tumor-suppressor p53 modulates" --
  (let ((agent?
         (or (a-get-item 'PROTEIN-AGENT form)
             (a-get-item 'AGENT form)
             (a-get-item 'BY-MEANS-OF-OR-AGENT form)
             (a-get-item 'BY-MEANS-OF-OR-AGENT-OR-CAUSE form) ;;"can be activated by proline motifs"
             (a-get-item 'KINASE form) ;;"lower concentrations of p53 and OKL38 induced more efficient cytochrome c release "
             (a-get-item 'CAUSE form)
             (let ((pred (a-get-item 'predication form)))
               (cond ((not (consp pred)) nil)
                     ((and (eq (car pred) 'depend)
                           (or (a-get-item 'theme (cdr pred))
                               (a-get-item 'patient (cdr pred))))
                      (or (a-get-item 'theme (cdr pred))
                               (a-get-item 'patient (cdr pred))))
                     ((and (eq (car pred) 'induce)
                           (a-get-item 'agent (cdr pred)))
                      (a-get-item 'agent (cdr pred))))))))
    (when (consp agent?)
      agent?)))


(defun make-indra-act-or-express-with-agent (obj-form indra-data type pmid &optional agent-form)
  (let ((text (a-get-item 'TEXT (cdr indra-data))))
    `(,(make-type-form-with-text indra-data type)
       ,(add-role-and-aux-to-indra-item :obj obj-form :frame (second indra-data))
       ,.(make-indra-obj-activity)
       ,@(when agent-form `(,(add-role-and-aux-to-indra-item :subj agent-form :frame (second indra-data))))
       ,@(make-evidence-form text pmid)
       )))

(defparameter *sparser-types-without-indra* nil)
(defvar *raw-text* nil) ;; used to carry information about raw-text for collecting *sparser-types-without-indra*

(defun sparser->indra-type (type-mod)
  (declare (special *raw-text*))
  (case type-mod
    ((bio-inactivate inhibit) "Inhibition")
    (acetylation "Acetylation")
    (auto-phosphorylate "Autophosphorylation")
    (bio-activate "Activation")
    (decrease "DecreaseAmount")
    (deacetylation "Deacetylation")
    (debiquitination "Debiquitination")
    (defarnesylation "Defarnesylation")
    (degeranylgeranylation "Degeranylgeranylation")
    (deglycosylation "Deglycosylation")
    (dehydroxylation "Dehydroxylation")
    (demethylation "Demethylation")
    (demyristoylation "Demyristoylation")
    (depalmitoylation "Depalmitoylation")
    (dephosphorylate "Dephosphorylation")
    (deribosylation "Deribosylation")
    (desumoylation "Desumoylation")
    (farnesylation "Farnesylation")
    (geranylgeranylation "Geranylgeranylation")
    (glycosylation "Glycosylation")
    (hydroxylation "Hydroxylation")
    (hyperphosphorylate "Phosphorylation")
    (increase "IncreaseAmount")
    (methylation "Methylation")
    (myristoylation "Myristoylation")
    (palmitoylation "Palmitoylation")
    (phosphorylate "Phosphorylation")
    (ribosylation "Ribosylation")
    (sumoylation "Sumoylation")
    (translocation "Translocation")
    (ubiquitination "Ubiquitination")
    (gene-transcript-express "GeneTranscriptExpress")
    (t (pushnew (list type-mod *raw-text*)
                *sparser-types-without-indra*
                :test #'equal)
       nil)
    ))

(defun make-type-form (type-mod)
  `(:TYPE ., (sparser->indra-type type-mod)))




;; note: may want to modify activity--type to catch the rare "kinase"
;; case, but there's only one example in the evidence so probably not
;; worth it
(defun make-item-activation ()
  "Given indra-data, make the :ACTIVITY section"
  '((:ACTIVITY (:ACTIVITY--TYPE . "activity")
     ;; confusingly, this is marked as T even in inactivations/inhibitions - I guess to mark it was active?
     (:IS--ACTIVE . T))))

(defun make-indra-obj-activity ()
  (unless (reach-comparison-mode?)
    (list `(:OBJ--ACTIVITY . "activity")))) ;; similar to above - may want to deal with kinase case

(defun make-evidence-form (text &optional pmid annotation-form)
  (cond ((reach-comparison-mode?)
         `(("text" ,text)))
        ((get-indra-for-cwc?)
         `((:EVIDENCE (:SOURCE--API "sparser"))))
        (t
         `((:EVIDENCE ((:SOURCE--API ."sparser") (:TEXT .,text) (:PMID .,pmid)
                       ,@(when annotation-form `(, annotation-form))))))))

(defparameter *substrate-vars* '(SUBSTRATE AGENT-OR-SUBSTRATE SUBSTRATE-OR-SITE
                    KINASE-OR-SUBSTRATE))

(defun find-named-args (a-list vars)
  (loop for v in vars
        ;; get the items in the (priority) order specified by the list of vars
        ;;  e.g. (OBJECT AFFECTED-PROCESS MODIFIER)
        ;; MODIFIER comes last
        append
          (loop for a in a-list when (and (consp a) (eq (car a) v))
                collect (second a))))

(defun find-immediate-substrates (a-list &optional (vars *substrate-vars*))
  "Checks for any of 'SUBSTRATE 'AGENT-OR-SUBSTRATE or 'KINASE-OR-SUBSTRATE"
  (find-named-args a-list vars))
                  
(defun find-substrates (alist &optional (vars *substrate-vars*))
  "Checks both the top level and any 'SITE level items for substrate type proteins"
  (or (find-immediate-substrates alist vars)
      (when (eq vars *substrate-vars*)
        (substrates-from-sites alist))))


(defun substrates-from-sites (alist)
  (when (assoc 'SITE alist) 
    (loop for alist-entry in alist
          when (eq (car alist-entry) 'site)
          append
            (let ((site-entry  (second alist-entry)))
              (declare (special site-entry))
              (if (consp site-entry)
                  (case (car site-entry)
                    ((SITE RESIDUE-ON-PROTEIN ACTIVATION-LOOP
                           PROTEIN-DOMAIN LINKER-REGION C-TERMINAL n-terminal)
                     (find-immediate-substrates (cdr site-entry)))
                    (collection
                     (let ((elements (get-set-elements site-entry)))
                       (loop for item in  
                               (if (and (consp site-entry)
                                        (collection-args site-entry))
                                   (then
                                     ;;(lsp-break "substrates-from-sites with collection args")
                                     (distribute-args-to-items (collection-args site-entry) elements))
                                   elements)
                             when (consp item)
                             ;; have seen
                               #+ignore
                               ((RESIDUE-ON-PROTEIN (RAW-TEXT "serines 276") (POSITION 276)
                                                    (AMINO-ACID (AMINO-ACID (RAW-TEXT "serines") (NAME "serine"))))
                                536)
                             ;; from "serines 276 and 536"
                             append (find-substrates (cdr item)))))
                    (region-of-molecule
                     #+ignore
                     (warn "substrates-from-sites region-of-molecule in ~s~%"
                           (sentence-string *sentence-in-core*))
                     nil)
                    (t
                     (when (loop for substrate in
                                   (all-starts-with
                                    '(substrate agent-or-substrate substrate-or-site
                                      kinase-or-substrate)
                                    site-entry)
                                 thereis
                                   (not (member (car (second substrate)) '(pronoun pronoun/inanimate))))
                       (when *noisy-failure-in-indra*
                         (warn "find-substrate fails on ~s from ~s" alist (sentence-string *sentence-in-core*))))
                     nil))
                  (else
                    (when *noisy-failure-in-indra*
                      (warn "non-list site-entry in find-substrate in ~s for sentence ~s~%"
                            alist (sentence-string *sentence-in-core*)))
                    nil))))))


(defun agent-from-sites (alist)
  (when (assoc 'SITE alist) 
    (loop for alist-entry in alist
          when (eq (car alist-entry) 'site)
          do
            (let ((site-entry  (second alist-entry)))
              (if (consp site-entry)
                  (case (car site-entry)
                    (SITE
                     (let ((agent (or (assoc 'agent (cdr site-entry))
                                      (assoc 'kinase (cdr site-entry)))))
                       (when agent (return-from agent-from-sites
                                     (second agent)))))))))))

(defun make-indra-autophosphorylation (indra-data mod &optional pmid)
  "Given the indra data from has-indra-data for a sentence with an
autophosphorylation, generate and indra form for that sentence"
  (let* ((phos-content (cdr (second indra-data)))
         (agents-or-substrates
          (find-substrates phos-content '(agent substrate)))
         (enz-forms
          (loop for enzyme in agents-or-substrates
                append (prot-item->indra-list enzyme indra-data))))
    (declare (special phos-content enz enz-forms))
    (if (null enz-forms)
        (then (push indra-data *missing-indra-object*)
              nil)
        (loop for enzf in enz-forms
              append (make-indra-post-trans-mod-with-sub
                      enzf
                      phos-content
                      indra-data mod pmid)))))
              ;; note: enz-form is functioning as the substrate-form from the normal
;; post-trans-mod pipeline because that's the only required element there

(defparameter *warn-new-substrate* nil)
(defun make-indra-post-trans-mod (indra-data mod &optional pmid)
  "Given the indra data from has-indra-data for a sentence with a
post-translational modification and its type ('PHOSPHORYLATE or
'DEPHOSPHORYLATE), generate and indra form for that sentence"
  (declare (special indra-data))
  (let* ((phos-content (cdr (second indra-data))) 
         (substrates (find-substrates phos-content)) 
         (substrate-forms
          (loop for substrate in substrates
                when (consp substrate) ;; block *lambda-var* in "the phosphorylated and unphosphorylated STAT3"
                append
                  (or
                   (prot-item->indra-list substrate indra-data)
                   (list (maybe-make-indra-item-desc substrate)))))
         (new-substrate-forms (new-substrate-forms indra-data)))
    (declare (special phos-content substrates substrate-forms new-substrate-forms))

    (when (and *warn-new-substrate*
               *noisy-failure-in-indra*
               (not (equal (remove-duplicates substrate-forms :test #'equal)
                           (remove-duplicates new-substrate-forms :test #'equal))))
      (warn "new-substrate-forms ~%~s~% is not equal to substrate-forms~%~s~%in ~s~%"
            new-substrate-forms
            substrate-forms
            (assoc 'text (cdr indra-data))))
    (if (and (null substrate-forms)
             (null (a-get 'site phos-content)))
        (then (push indra-data *missing-indra-object*) nil)
        (loop for subf in (or substrate-forms (list nil))
              append
                (make-indra-post-trans-mod-with-sub subf phos-content indra-data mod pmid)))))

(defun new-substrate-forms (indra-data)
  (loop for substrate
        in (all-starts-with
            '(SUBSTRATE AGENT-OR-SUBSTRATE SUBSTRATE-OR-SITE KINASE-OR-SUBSTRATE)
            indra-data)
        ;; substrate is a list which starts with a marker relation for SUBSTRATE
        append
          (prot-item->indra-list (second substrate) indra-data)))

(defun make-indra-post-trans-mod-with-sub (substrate-form phos-content indra-data mod pmid)
  (let* ((agent (or (get-agent-from-form phos-content)
                    (agent-from-sites phos-content)))
         (agent-forms (or (when (and (consp agent) (eq (car agent) :name))
                            `((,agent)))
                          (prot-item->indra-list agent indra-data)
                          (list nil))))
    (loop for agentf in agent-forms
          append
            (make-indra-post-trans-mod-with-agent substrate-form phos-content indra-data mod pmid agentf))))

(defun make-indra-post-trans-mod-with-agent (substrate-form phos-content indra-data mod pmid &optional agent-form)
  (let* ((full-residue-exp (and (a-get-item 'AMINO-ACID phos-content)
                                (a-get-item 'position phos-content)))
         (residue (if full-residue-exp
                      `(residue-on-protein ,@phos-content)
                      (or (a-get-item 'SITE phos-content)
                          (a-get-item 'AMINO-ACID phos-content))))
         (residue-forms (if full-residue-exp
                            (make-residue-forms residue indra-data)
                            (or (res-item->indra-list residue indra-data)
                                (list nil)))))
    (loop for resf in residue-forms
          collect
            (progn
              (when (equal resf '(nil nil))
                (when *noisy-failure-in-indra*
                  (warn "make-indra-post-trans-mod-with-agent")))
              (make-indra-post-trans-mod-with-res substrate-form indra-data mod pmid resf agent-form)))))

(defun make-indra-post-trans-mod-with-res (substrate-form indra-data postmod pmid
                                           &optional residue-form agent-form)
  (declare (special substrate-form indra-data postmod pmid residue-form agent-form))
  (let* ((subs-type #+ignore
           (if (eq postmod 'auto-phosphorylate)
               ;; autophosphorylate has one item which we're
               ;; getting in the substrate position but they call
               ;; it the enz
               :enz
               :sub)
           :sub)
         (text (a-get-item 'TEXT (cdr indra-data)))
         (args        
          `(,@(when substrate-form ;; can have a substrate like "that site"
                    (list (add-role-and-aux-to-indra-item subs-type substrate-form :frame (second indra-data))))
              ,@(when agent-form
                      (list (add-role-and-aux-to-indra-item :enz agent-form :frame (second indra-data))))
              ,@(when (and (eq postmod 'auto-phosphorylate) substrate-form)
                      (list (add-role-and-aux-to-indra-item
                             :enz substrate-form :frame (second indra-data))))
              ,@residue-form
              )))
    (declare (special subs-type text raw-text))
    `(,(make-type-form-with-text indra-data postmod)
       ,. (if (reach-comparison-mode?)
              (sort args #'string< :key #'car)
              args)
       ,.(make-evidence-form text pmid)
       )))



(defun make-type-form-with-text (indra-data postmod)
  (let ((*raw-text* (a-get-item 'RAW-TEXT (cdar (cdr indra-data)))))
    (declare (special *raw-text*))
    (if (and (reach-comparison-mode?) *raw-text*)
        *raw-text*
        (make-type-form postmod))))

(defun make-indra-level (indra-data indra-type  &optional pmid)
  (declare (special indra-data indra-type pmid))
  ;;(lsp-break "make-indra-level")
  (let* ((text (a-get-item 'TEXT (cdr indra-data)))
         (frame (second indra-data))
         (level-items
          (let ((item-desc (a-get-item 'measured-item (cdr frame))))
            (if (or (itypep (safe-category-named item-desc) 'bio-chemical-entity)
                    (and (eq (car item-desc) 'collection)
                         (loop for item in (get-set-elements item-desc)
                               thereis
                                 (itypep (safe-category-named item) 'bio-chemical-entity))))
                (prot-item->indra-list item-desc indra-data)
                (list (maybe-make-indra-item-desc item-desc))))))
    (loop for item in level-items
          collect
            `(,(make-type-form-with-text indra-data indra-type)
               ,(add-role-and-aux-to-indra-item :measured-item item :frame frame)
               ,.(make-evidence-form text pmid)
               ))))

(defparameter *missing-agents* nil)

(defun is-lambda-var? (var)
"check for value which is produced by lambda binding in Sparser"
  (or (equalp var  "*LAMBDA-VAR*") ;; why does this happen?
      (eq var '*lambda-var*)))

(defun make-indra-bio-control (Indra-data indra-type &optional pmid &aux (frame (second indra-data)))
  (declare (special indra-data indra-type pmid frame)
           (optimize (debug 3)(safety 3)(speed 1)))
  (cond ((and (itypep (category-named indra-type) 'positive-bio-control)
              (get-agent-from-form (cdr frame))
              (consp (a-get-item 'affected-process (cdr frame)))
              (itypep
               (safe-category-named (a-get-item 'affected-process (cdr frame)))
               'post-translational-modification))
         (make-indra-post-trans-mod
          `(, (car indra-data)
              (,(car (a-get-item 'affected-process (cdr frame)))
                ,@(when (get-agent-from-form (cdr frame))
                    `((agent , (get-agent-from-form (cdr frame)))))
                ,@(cdr (a-get-item 'affected-process (cdr frame))))
              ,(assoc 'text (cdr indra-data)))
          (car (a-get-item 'affected-process (cdr frame)))))
        (t
         (let ((agent-desc (get-agent-from-form (cdr frame)))
               (controlled-desc (or (a-get-item 'affected-process (cdr frame))
                                    (a-get-item 'object (cdr frame)))))

           (when
               (and (or (null controlled-desc) (consp controlled-desc))
                    (not (is-lambda-var? agent-desc))
                    (not (numberp agent-desc)))
             ;; could be '*lambda-var* or a number
             (let* ((text (a-get-item 'TEXT (cdr indra-data)))
                    (agents
                     (cond ((and (consp agent-desc)
                                 (eq (car agent-desc) :name))
                            (list agent-desc))
                           ((and (consp agent-desc)
                                 (consp (car agent-desc))
                                 (eq (caar agent-desc) :name))
                            ;; list of items as agents
                            ;; as in "What genes are regulated by elk1 and srf"
                            agent-desc)
                           ((or (and (consp agent-desc)
                                     (eq (car agent-desc) :name)
                                     (getf (getf agent-desc :DB--REFS)
                                           :+type+))
                                (itypep (safe-category-named agent-desc)
                                        'bio-chemical-entity)
                                (and (eq (car agent-desc) 'collection)
                                     (loop for agent in (get-set-elements agent-desc)
                                           thereis
                                             (itypep (safe-category-named agent) 'bio-chemical-entity))))
                            (prot-item->indra-list agent-desc indra-data))
                           (t
                            (list (maybe-make-indra-item-desc
                                   agent-desc
                                   #+ignore ;; not sure why this was here
                                   (when (eq (car agent-desc) 'functionality)
                                     (assoc 'modifier (cdr agent-desc))))))))
                    (controlled (get-controlled indra-data))
                    (results
                     (loop for item in controlled
                           append
                             (loop for agent in (or agents (list nil))
                                   collect
                                     `(,(make-type-form-with-text indra-data indra-type)
                                        ,.(when agent (list (add-role-and-aux-to-indra-item :agent agent :frame frame)))
                                        ,(add-role-and-aux-to-indra-item :affected-process item :frame frame)
                                        ,.(make-evidence-form text pmid)
                                        )))))
               (declare (special agents controlled))
               (when (and (boundp '*indra-sentence*) (not (consp agent-desc)))
                 (pushnew (list *indra-sentence* results) *missing-agents* :test #'equal)
                 (return-from make-indra-bio-control nil))
               results))))))

(defun get-controlled (indra-data &aux (frame (second indra-data)))
  (let ((item-desc (or (a-get-item 'affected-process (cdr frame))
                       (a-get-item 'object (cdr frame)))))
    (when (consp item-desc)
      (if (or (itypep (safe-category-named item-desc) 'bio-chemical-entity)
              (and (eq (car item-desc) 'collection)
                   (loop for item in (get-set-elements item-desc)
                         thereis
                           (and (consp item) ;; can sometimes have a number, like 9 in
                                ;;"To further investigate the mechanism
                                ;;by which cytosolic BRCA1 mediates IR induced apoptosis,
                                ;; cleavage of caspase 8 and 9 following IR was examined"
                                (itypep (safe-category-named item) 'bio-chemical-entity)))))
          (prot-item->indra-list item-desc indra-data)
          (list (maybe-make-indra-item-desc item-desc ))))))


(defun make-indra-translocation (indra-data type &optional pmid)
  "Given the indra data from has-indra-data for a sentence and its
type 'TRANSLOCATE, generate and indra form for
that sentence"
  (let* ((trans-content (cdr (second indra-data)))
         (agent (or (a-get-item 'moving-object trans-content)
                    ;;in conjunctions with a phosphorylate, the object becomes a substrate
                    (a-get-item 'agent trans-content)))
         (agents (if agent
                     (list agent)
                     (find-substrates trans-content)))
         (agent-forms (prot-items->indra-list agents indra-data)))
    (declare (special trans-content agent agent-forms))
    (if (null agent-forms)
        (then (push indra-data *missing-indra-object*)
              nil)
        (loop for agtf in agent-forms
              append (make-indra-trans-with-agt agtf trans-content indra-data type pmid)))))

(defun make-indra-trans-with-agt (agent-form trans-content indra-data type pmid)
  (let* ((dest (a-get-item 'destination trans-content))
         (dest-forms (or (loc-item->indra-list dest 'category indra-data)
                         (list nil)))) ;;
    (loop for destf in dest-forms
          append (make-indra-trans-with-dest agent-form destf trans-content indra-data type pmid))))

(defun make-indra-trans-with-dest (agent-form dest-form trans-content indra-data type pmid)
  (let* ((origin (a-get-item 'origin trans-content))
         (origin-forms (or (loc-item->indra-list origin 'category indra-data)
                           (list nil))))
    (loop for origf in origin-forms
          append (make-indra-trans-with-origin agent-form dest-form origf 
                                               trans-content indra-data type pmid))))

(defun make-indra-trans-with-origin (agent-form dest-form origin-form trans-content indra-data type pmid)
  (let* ((cell-type (a-get-item 'cell-type (cdr (second (assoc 'destination trans-content)))))
         (cell-type-forms (or (loc-item->indra-list cell-type 'individual indra-data)
                              (list nil))))
    (loop for ct-form in cell-type-forms
          collect (make-indra-trans-with-cell-type agent-form dest-form origin-form ct-form
                                                   trans-content indra-data type pmid))))

(defun make-indra-trans-with-cell-type (agent-form dest-form orig-form cell-type 
                                        trans-content indra-data type pmid)
  (let* ((text (a-get-item 'TEXT (cdr indra-data))))
    `( ,(make-type-form-with-text indra-data type)
        ,(add-role-and-aux-to-indra-item :agent agent-form :frame (second indra-data))
        ,@(make-indra-orig-dest-loc (if (reach-comparison-mode?) :DEST :TO--LOCATION) dest-form)
        ,@(make-indra-orig-dest-loc (if (reach-comparison-mode?) :ORIG :FROM--LOCATION) orig-form)
        ,.(make-evidence-form text pmid (make-indra-annotation-form trans-content indra-data dest-form cell-type))
        )))

(defun get-cat-id (cat) 
  (value-of 'uid (category-named cat)))

(defun loc-item->indra-list (loc-item type indra-data)
  (when loc-item
    (when (is-lambda-var? loc-item)
      (push indra-data *indra-lambda-var-statements*)
      (return-from loc-item->indra-list nil))
    (let ((loc-fn (if (eq type 'category)
                      #'single-loc-cat->indra-list
                      #'single-loc-indiv->indra-list)))
      (case (car loc-item)
        (collection
         (indra-items-from-collection (get-set-elements loc-item)
                                      #'loc-item->indra-list
                                      indra-data type))
        (t
         (funcall loc-fn loc-item indra-data))))))

(defun single-loc-cat->indra-list (loc-item indra-data)
  (assert (consp loc-item))
  (if (reach-comparison-mode?)
      `(,(assoc 'raw-text (cdr loc-item)))
      `((, (car loc-item) ,(get-cat-id (car loc-item))))))

(defun single-loc-indiv->indra-list (loc-item indra-data)
  (assert (consp loc-item))
  (let ((name (a-get-item 'name (cdr loc-item)))
        (uid (a-get-item 'uid (cdr loc-item))))
    `((,name ,uid))))
  
(defun make-indra-orig-dest-loc (loc-type loc-form)
  (when loc-form
    (if (reach-comparison-mode?)
        `((,(reach-role loc-type '(translocation))
            ,(if (stringp loc-form)
                 loc-form
                 (second loc-form))))

        `((,loc-type .,(if (stringp loc-form)
                           loc-form
                           (second loc-form)))))))

(defparameter *new-trans-conjunctions* nil)
(defun make-indra-annotation-form (trans-content indra-data dest-form &optional cell-type-form)
  (unless (reach-comparison-mode?)
    (let* ((dest-id (second dest-form))
           (ct-id (when cell-type-form (second cell-type-form)))
           (cell-type (when cell-type-form (a-get-item 'cell-type (cdr (second (assoc 'destination trans-content))))))
           (cell-line (a-get-item 'cell-line (cdr (second (assoc 'destination trans-content)))))
           (cell-line-forms (loc-item->indra-list cell-line 'individual indra-data))
           (species (a-get-item 'organism (or (cdr (second (assoc 'destination trans-content)))
                                              cell-type
                                              cell-line)))
           (species-forms (loc-item->indra-list species 'category indra-data))
           (organ (a-get-item 'non-cellular-location (or (cdr (second (assoc 'destination trans-content)))
                                                         cell-type
                                                         cell-line)))
           (organ-forms (loc-item->indra-list species 'category indra-data)))
                                        ;(declare (special cell-line-forms species-forms organ-forms))
                                        ;(lsp-break)
      (when (loop for type in (list cell-line-forms species-forms organ-forms)
                  thereis (< 1 (length type)))
        (push indra-data *new-trans-conjunctions*)
        (print "unhandled conjunction in translocation form"))
      (let ((ann `(
                   ,@(when dest-id `((:LOCATION .,dest-id)))
                   ,@(when cell-type `((:CELL--TYPE ., ct-id)))
                   ,@(when cell-line `((:CELL--LINE .,(second (car cell-line-forms)))))
                   ,@(when species `((:SPECIES ., (second (car species-forms)))))
                   ,@(when organ `((:ORGAN ., (second (car organ-forms))))))))
        (when ann
          `(:ANNOTATIONS ,@ann))))))

(defun indra-items-from-collection (list fn indra-data type)
  (loop for item in list
        collect (funcall fn item type indra-data)))

(defparameter *indra-bio-entities* nil) 
;; to catch items defined as bio-entities since if they're in an indra
;; statement, we really want to get the protein def for them if
;; possible

(defun only-raw-left? (item)
  "Given an a-list determines if there is only one remaining item with
  the assoc 'RAW-TEXT -- used to test if things like kinase are being
  used as the generic 'kinases' versus as a category which might have
  actual proteins as content in further layers"
  (and (eq (length item) 1)
       (assoc 'RAW-TEXT item)))

(defparameter *get-protein-error* nil) ;; flag -- set to true to get
                                       ;; errors, otherwise all
                                       ;; uncaught edge-cases give nil
                                       
(defun collection-protein? (collection)
  "Given a collection, see if the type is protein [not currently used but probably should be]"
  (let ((type (cdr (assoc 'TYPE (cdr (assoc 'COLLECTION collection))))))
    (or (assoc 'PROTEIN type)
        (assoc 'HUMAN-PROTEIN-FAMILY type)
        (assoc 'PROTEIN-FAMILY type)))) ;; could add more, but not sure how likely we are to get them

(defun protein-items-from-collection (prot-list form)
  (loop for item in prot-list
        append (prot-item->indra-list item form)))

(defun get-set-elements (coll)
  (let ((items (a-get-item 'items (cdr coll))))
    (cond ((eq (car items) 'set)
           (setq items (cdr items))))
          
    (loop for item in items          
          when (not (numberp item)) ;; ignore numbers!!
          collect item)))

(defun protein-items-from-complex (prot-item form)
  (protein-items-from-collection
   (loop for a in (cdr prot-item)
         when (eq (car a) 'component)
         append
           (case (car (second a))
             (collection
              (get-set-elements (second a)))
             (t
              (list (second a)))))
   form))

(defun prot-items->indra-list (prot-items form)
  (loop for prot-item in prot-items
        append
          (prot-item->indra-list prot-item form)))

(defun prot-item->indra-list (prot-item form)
  ;; don't have a way to handle
  #| '(MOTIF (MODIFIER (AMINO-ACID (RAW-TEXT "proline") 
                       (NAME "proline"))) 
             (RAW-TEXT "motifs") (IS-PLURAL "t"))
|#
  (declare (special prot-item form *orig-sent-string*))
  (when prot-item
    (when (is-lambda-var? prot-item)
      (push form *indra-lambda-var-statements*)
      (return-from prot-item->indra-list nil))
    (when (not (consp prot-item))
      (when *noisy-failure-in-indra*
        (warn "prot-item->indra-list received non-list ~s in ~s in sentence: ~s~%"
              prot-item
              (a-get :text (cdr form))
              *orig-sent-string*))
      (return-from prot-item->indra-list nil))
    (case (car prot-item)
      (examples (prot-item->indra-list (second prot-item) form))
      ((collection pair-with-protein)
       (let ((items (protein-items-from-collection (get-set-elements prot-item) form)))
         (loop for i in items collect
                 (append i (when nil
                             ;; not sure why this was there -- it caused the text of the conjunction
                             ;; to be added to the text of the individual item
                             ;; (a-get-item 'raw-text (cdr prot-item))
                             `((:+TEXT+ ,.(a-get-item 'raw-text (cdr prot-item)))))))))
      (bio-complex (protein-items-from-complex prot-item form))
      (mutant (single-protein->indra-list prot-item form))
      (gene (prot-item->indra-list (a-get-item 'expresses (cdr prot-item)) form))
      ;; this next handles "membrane fraction of AKT was phosphorylated at Ser473"
      ;; as if all AKT was phosphoylated
      ;; -- not really right, but what HMS wants for now
      (component (prot-item->indra-list (a-get-item 'molecule-type (cdr prot-item)) form))
      ((human-protein-family protein-family)       
       (or
        ;; maybe no items in the set?
        ;; e.g. (HUMAN-PROTEIN-FAMILY (RAW-TEXT "PI-3K") (NAME "PI3-KINASE"))
        (unless (or (reach-comparison-mode?)
                    (assoc 'uid (cdr prot-item))
                    ;;(assoc 'name (cdr prot-item))
                    )
          (let ((items
                 (protein-items-from-collection
                  (get-set-elements (a-get-item 'FAMILY-MEMBERS (cdr prot-item)))
                  form))
                new-items)

            (setq new-items
                  (loop for i in items collect
                          (if (assoc :db--refs i)
                              (subst
                               (append (assoc :db--refs i)
                                       (when (a-get :name i)
                                         (list (cons `:+text+
                                                     (a-get-item 'raw-text (cdr prot-item))
                                                     ;;(a-get :name i)
                                                     ))))
                               (assoc :db--refs i)
                               i)
                              i)))
            ;;(break "protein-family, new-items= ~s~%" new-items)
            new-items))
        (single-protein->indra-list prot-item form)))
      (t
       (single-protein->indra-list prot-item form)))))

(defun get-var-value (item var-name)
  (a-get-item var-name (cdr item)))

(defun mod-blocker? (mod)
  "Check if the modifier is of a type that means the rest of the
modifiers should be dropped currently only occurs for 'target-protein
e.g. 'The reduced AKT activation in MCF-7PIK3CAWT cells in turn caused
greatly reduced phosphorylation of known AKT target proteins,
including PRAS40, FOXO 1/3, and AS160'"
  (and (consp mod) ;; fails in "As a result of these analyses, 332 phosphorylated peptides from 175 proteins were identified, including 289 singly (tyrosine) phosphorylated peptides, 42 doubly phosphorylated peptides (21 tyrosine/tyrosine, 18 serine/tyrosine, and three threonine/tyrosine), and one triply phosphorylated peptide (tyrosine/tyrosine/tyrosine) (full data set is available in xref )."
       (eq 'target-protein (car mod))))

(defun protein-from-modifiers-or-appositives (vv-list form)
  (unless (loop for vv in vv-list
                thereis (and (member (car vv)
                                     '(appositive-description modifier))
                             (mod-blocker? (second vv))))
    (loop for vv in vv-list
          when (member (car vv)
                       '(appositive-description modifier))
          append (prot-item->indra-list (second vv) form))))

(defparameter *indra-pronouns* nil)


(defun single-protein->indra-list (prot-item form)
  (assert (consp prot-item))
  (case (car prot-item)
    ((protein protein-family human-protein-family fragment molecule peptide) ;; protein-family human-protein-family for cases when there are no explicit members
     (when (only-raw-left? (cdr prot-item)) ;; happens when "proteins" is used as a generic term ex: "RAS recruits proteins to the membrane"
       (return-from single-protein->indra-list nil))
     (item->indra-list prot-item form))
    ((mutant)
     (loop for aa in (cdr prot-item)
           with temp = nil
           when (and (eq (car aa) 'basis)
                     (setq temp
                           (prot-item->indra-list (second aa) form)))
           do (return temp)))
    ((promoter)
     (when (get-var-value prot-item 'modifier)
       (prot-item->indra-list (get-var-value prot-item 'modifier) form)))
    ((enzyme)
     (when (get-var-value prot-item 'enzyme)
       (prot-item->indra-list (get-var-value prot-item 'enzyme) form)))
    ((inhibitor)
     (when (get-var-value prot-item 'protein)
       (prot-item->indra-list (get-var-value prot-item 'protein) form)))
    ((kinase phosphatase gtpase)
     (when (get-var-value prot-item 'enzyme)
       (prot-item->indra-list (get-var-value prot-item 'enzyme) form)))
    (pathway (list (make-pathway-desc (cdr prot-item))))
    (bio-complex
     (loop for vv in (cdr prot-item)
           when (eq (car vv) 'modifier)
           do
             (let ((prot (prot-item->indra-list (second vv) form)))
               (when prot (return prot)))))
    ((substrate receptor bio-mechanism effector)
     ;; this is a case like "p38 substrate" and we don't know what
     ;;  the actual protein is
     nil)
    ((gene rna micro-rna)
     ;; can get in "activating the PLK1 gene"
     ;;  where this is not an activation
     ;;  but we may have another meaning

     ;; can also get this in methylation of <gene>
     (item->indra-list prot-item form))
    (gene-transcript-over-express
     ;; ex: "c-Myc overexpression activated the wildtype, but not the mutant, hTERT promoter,"
     )
    (bio-entity
     (push form *indra-bio-entities*)
     nil)
    (pronoun/inanimate
     (push form *indra-pronouns*)
     nil)
    (raw-text nil)
     
    #|
           ;; items whose syntax can have proteins as premodifiers ; ; ; ; ; ;
    '(enzyme pathway bio-activate
    mitogen signal molecule-type ))
  |#           
    (t
     (if (or (itypep (car prot-item) 'protein)
             (itypep (car prot-item) 'peptide))
         (item->indra-list prot-item form)
         (when *get-protein-error* ;; flag to determine whether to just default return nil or give errors
           (lsp-break "prot-item->indra-list unknown type error"))))))

(defun item->indra-list (prot-item form)
  (cond ((already-indra-item-desc? prot-item)
         prot-item)
        ((or (assoc 'name (cdr prot-item))(assoc 'uid (cdr prot-item)))
         (list (make-indra-item-desc (cdr prot-item))))
        ((or (assoc 'MODIFIER (cdr prot-item))
             (assoc 'APPOSITIVE-DESCRIPTION (cdr prot-item)))
         ;; ex: "STAT proteins" gives us a top protein but STAT is buried under a modifier layer
         (protein-from-modifiers-or-appositives (cdr prot-item) form))
        (t
         ;; figure out if anythiing needs to be done here
         nil)))

(defun make-pathway-desc (item-content)
  (if (and (assoc 'modifier item-content)
           (safe-category-named (second (assoc 'modifier item-content)))
           (itypep (safe-category-named (second (assoc 'modifier item-content)))
                   'protein))
      (cons `(,(if (reach-comparison-mode?)
                   'proteins
                   :proteins)
               ,@(item->indra-list (second (assoc 'modifier item-content))nil))
            (make-indra-item-desc item-content))
      (make-indra-item-desc item-content)))

(defun already-indra-item-desc? (item-content)
  (and (consp item-content)
       (eq (car item-content) :name)))

(defun maybe-make-indra-item-desc (item-content)
  (if (already-indra-item-desc? item-content)
      item-content
      (make-indra-item-desc (cdr item-content))))

(defun make-indra-item-desc (item-content)
  "Given an indra type (agent, obj, sub, or subj dependent on indra
form) and the item return an indra form for that item"
  (let* ((uid (a-get-item 'UID item-content))
         (uid-form (when (and uid (or
                                   (search ":" uid)
                                   (search "mima" uid :test #'equalp)))
                     (uid->db--ref uid)))
         (text (a-get-item 'RAW-TEXT item-content))
         (text-form (when text `((:+TEXT+ ., text))))
         (db-ref (when (or uid-form text)
                   (if (get-indra-for-cwc?)
                       (sublis `((:+FA+ . :+NXPFA+))
                               `((:DB--REFS ,@uid-form ,@text-form)))
                       `((:DB--REFS ,@uid-form ,@text-form)))))
         (name (a-get-item 'NAME item-content))
         (name-form (when (or name uid) `((:NAME .,(or name uid)))))
         (pred-forms (when (assoc 'predication item-content)
                       (create-pred-forms item-content))))
    (declare (special uid  uid-form name name-form text text-form db-ref))
    (when (and (null uid)
               (null name)
               (null text))
      (return-from make-indra-item-desc nil))
    ;;(lsp-break "xx")
    `(,@name-form ,@db-ref ;;,@(when (not (get-indra-for-cwc?)) text-form)
                  ,@pred-forms)))

(defun create-pred-forms (item-content)
  (loop for aa in item-content when
          (and
           (eq (car aa) 'predication)
           (consp (second aa)))
        append (convert-pred-form (second aa))))

(defun convert-pred-form (pred-form)
  (case (car pred-form)
    (phosphorylate
     (list
      `(:mod--conditions (:mod--type . "phosphorylation")
                         (:is--modified . "true"))))))

(defun uid->db--ref (uid)
  "Given a UID field, turn it into the indra form for that field"
  (let* ((colon (search ":" uid))
         (prefix (subseq uid 0 colon))
         (id (when colon ;; sometimes "uids" aren't really UIDs, and thus don't have a :
               (subseq uid (+ 1 colon)))))
    (if colon
      `((,(intern (format nil "+~a+" prefix) (find-package :keyword))
          .,id))
      (if (find-package :spg)
          (let ((mdbr (funcall (intern "MAKE-DB-REFS" :spg) (list uid))))
            (when mdbr
              (list (cons (car mdbr)(second mdbr)))))))))


(defun find-residue-in-res-item (res-item &aux (residue (cdr res-item)))
  (cond ((and (eq (car res-item) 'site)
              (assoc 'residue residue))
         (cdr (a-get-item 'residue residue)))
        ((and (eq (car res-item) 'residue-on-protein)
              (assoc 'amino-acid residue))
         residue)
        ((loop for a in residue
               when (and (eq (car a) 'modifier)
                         (contains-atom 'amino-acid a))
               return
                 (case (car (second a))
                   (amino-acid `((amino-acid ,(second a))))
                   (residue-on-protein
                    (cdr a)))))
        (t residue)))


(defun make-residue-forms (res-item form &aux (residue (find-residue-in-res-item res-item)))
  "Given indra-data for a residue or phosphorylation site, get the
  position and amino acid -- in some cases a site is referenced
  without the specifics being mentioned (or we may fail to put them
  together e.g. the mTOR autophosphorylation site, Ser2481 in which
  case this should return an empty list"
  (declare (special res-item form))

  (let* ((pos (second (assoc 'POSITION residue)))
         (aa (if (eq (car res-item) 'amino-acid) ;; happens with premofifiers
                 res-item
                 (or (a-get-item 'AMINO-ACID residue)
                     (a-get-item 'AMINO-ACID
                                 (a-get 'modifier residue)))))
         (pos-strings
          (if (and (consp pos) (eq (car pos) 'collection))
              (mapcar #'write-to-string (get-set-elements pos))
              (when pos (list (write-to-string pos)))))
         (amino-acids
          (if (consp aa) 
              (if (eq (car aa) 'collection)
                  (mapcar #'get-amino-rep (get-set-elements aa))
                  (list (get-amino-rep aa)))
              (list (get-amino-rep aa)))))
         
    (declare (special pos pos-strings aa))
    (when (and (contains-atom 'amino-acid res-item)
               (null amino-acids)) ;; there is an amino acid, we are just not getting it
      (when *noisy-failure-in-indra*
        (warn "can't extract amino acid from ~s in sentence: ~% ~s"
              res-item (car form)))
      (return-from make-residue-forms nil))
      
    (loop for pos in (or pos-strings (list nil))
          append
            (loop for amino-acid in (or amino-acids (list nil))
                  collect
                    (cond ((and (reach-comparison-mode?) (null pos) (null amino-acid))
                           `(("site" ,(second (assoc 'raw-text residue)))))
                          ((or pos amino-acid)
                           (if (reach-comparison-mode?)
                               ;(lsp-break)
                              
                               `(("site" 
                                  ,(if pos
                                       (if amino-acid
                                           (a-get-item 'raw-text residue)
                                           ;;(format nil "~a ~a" amino-acid pos)
                                           pos)
                                       amino-acid)))
                               `(,@(when pos `((:POSITION . ,pos)))
                                   ,@(when aa `((:RESIDUE . ,amino-acid)))))))))))

(defun get-amino-rep (aa)
  (if (reach-comparison-mode?)
      (if (not (consp aa))
          aa
          (or
           (a-get-item 'raw-text (cdr aa))
           (a-get-item 'name (cdr  aa))))
      (get-amino-letter aa)))

(defun get-amino-letter (aa &aux (name? (if (stringp aa)
                                            aa
                                            (a-get-item 'name (cdr  aa)))))
  (if (stringp aa)
      aa
      (when (stringp name?)
        (setq name? (string-downcase name?))
        (get-tag :one-letter-code 
                 (find-or-make-individual 'amino-acid :name name?)))))



(defun res-item->indra-list (res-item form &aux (res-tail (and (consp res-item) (cdr res-item))))
  (declare (special res-item form))
  (when (eq res-item '*lambda-var*)
    (when *noisy-failure-in-indra*
      (warn  "res-item is '*lambda-var* in ~s~%"
             (second (assoc 'text (cdr *top-indra-form*)))))
    (return-from res-item->indra-list nil))
  (when res-item
    (when (is-lambda-var? res-item)
      (push form *indra-lambda-var-statements*)
      (return-from res-item->indra-list nil))
    (when (not (consp res-item))
      (when *noisy-failure-in-indra*
        (warn "res-item not a cons, ~s in ~s~%"
              res-item (sentence-string *sentence-in-core*)))
      (return-from res-item->indra-list nil))
    (case (car res-item)
      (collection
       (res-items-from-collection  (get-set-elements res-item) form))
      (amino-acid
       (make-residue-forms
        `(amino-acid
          (RAW-TEXT ,(a-get-item 'raw-text res-tail))
          (AMINO-ACID ,res-item))
        form))
      (residue-on-protein
       (if  (and (assoc 'modifier res-tail)
                 (contains-atom 'amino-acid (assoc 'modifier res-tail)))
            (res-item->indra-list (a-get-item 'modifier res-tail) form)
            (make-residue-forms res-item form)))
      (site
       (cond ((and (assoc 'modifier res-tail)
                   (contains-atom 'amino-acid (assoc 'modifier res-tail)))
              (res-item->indra-list (a-get-item 'modifier res-tail) form))
             ((and (assoc 'appositive-description res-tail)
                   (contains-atom 'amino-acid (assoc 'appositive-description res-tail)))
              (res-item->indra-list (a-get-item 'appositive-description res-tail) form))
             ((assoc 'residue res-tail)
              (make-residue-forms (a-get-item 'residue res-tail) form))             
             (t
              (make-residue-forms res-item form))))
      (t
       (when *get-protein-error* ;; flag to determine whether to just default return nil or give errors
         (lsp-break "res-item->indra-list unknown type error"))))))

(defun res-items-from-collection (res-list form)
  (loop for item in res-list
        unless (not (consp item)) ;; happens in cases like "hypophosphorylation of pRB at serines 780 and 795"
        append (res-item->indra-list item form)))


(defun essential-indra (indra-alist)
  (if (reach-comparison-mode?)
      indra-alist
      (nconc (when (assoc :type indra-alist) (list (assoc :type indra-alist)))
             (when (assoc :obj--activity indra-alist) (list (assoc :obj--activity indra-alist)))
             (loop for pair in indra-alist
                   unless (member (car pair)
                                  '(:type :obj--activity
                                    :evidence :id :source--id :supported--by))
                   collect pair))))


(defparameter *sents-to-indra* (make-hash-table :size 1000 :test #'equal))

(defun assoc-hms-indra-with-sents ()
  (clrhash *sents-to-indra*)
  (loop for ss in (get-json-sexp-statements)
        do
          (loop for s in (json-parsable-texts ss)
                do
                  (pushnew (essential-indra ss)
                           (gethash (clear-out-xrefs s) *sents-to-indra*)
                           :test #'equal)))
  *sents-to-indra*)

(defun get-sents-indra ()
  (if (< (hash-table-count *sents-to-indra*) 1)
      (assoc-hms-indra-with-sents)
      *sents-to-indra*))
  
(defparameter *mis-match* nil)
(defun compare-sent-indra-to-hms-indra  (s &optional
                                             (hms-indra-exps
                                              (gethash (clear-out-xrefs s)
                                                       (get-sents-indra))))
  (let ((sent-indra (find-indra-forms s)))
    (list (clear-out-xrefs s)
          (loop for h in hms-indra-exps
                collect
                  (let ((matches
                         (loop for si in sent-indra
                               when (or
                                     ;;(and (equal "xxx" (assoc :type si)) (equal "xxx" (assoc :type si)))
                                     (equal (assoc :type si) (assoc :type h)))
                               collect si)))
                    (list (cond (matches
                                 `(*matched* , matches))
                                (t (push (list s h) *mis-match*)
                                   '(*missing*)))
                          `(*indra* ,h)))))))

(defun show-both-indras (s &optional
                             (hms-indra-exps
                              (gethash (clear-out-xrefs s)
                                       (get-sents-indra))))
  (let ((sent-indra (find-indra-forms s)))
    (print hms-indra-exps)
    (print sent-indra)))
   
(defparameter *matched-with-obj* nil)
(defparameter *indra-match-cross-product* nil)
(defun compare-sent-indra-to-hms-indra-with-objs  ()
  (setq *indra-match-cross-product* nil)
  (loop for h in (get-json-sexp-statements)
        do                              ;(lsp-break)
          (loop for s in (json-parsable-texts h)
                do                      ;(print s)
                  (loop for si in (find-indra-forms s)
                        when (equal (assoc :type si) (assoc :type h))
                        do (push (list (test-indra-bindings-by-type (cdr (assoc :type si)) si h)
                                       (essential-indra h) si s)
                                 *indra-match-cross-product*))))
  (length *indra-match-cross-product*))
    #+ignore(list (cond (matches
                         `(*matched* , matches))
                        (t (push (list s h) *mis-matched-with-obj*)
                           '(*missing* )))
                  `(*indra* ,h))
;; change essential-indra to include evidence for translocate annotations
;;how many of each sentence how many of the h's its associated with get full vs partial matches
;;(sent %m %pm %nm (for nm only count when there are no m or pm)

(defparameter *grouped-by-sentence-indra-match-cross-product* nil)
(defparameter *sent-match-percentages* nil)
(defun sent-match-percentages (&key partials-only)
  "Return list whose items are of the form (sentence :m # :pm # :nm #)
where :m is the proportion of indra statements from the sentence for
which we fully match on type and primary protein, and :pm are the
proportion of partial matches (proteins where we have the same text
but a different UID -- possibly different ontologies), and :nm are the
proportion of non-matches where our protein doesn't match on either
the text or ontology"
  (unless *indra-match-cross-product*
    (compare-sent-indra-to-hms-indra-with-objs))
  (unless *grouped-by-sentence-indra-match-cross-product*
    (setq *grouped-by-sentence-indra-match-cross-product* (group-by *indra-match-cross-product* #'fourth)))
  (setq *sent-match-percentages* 
        (loop for sent in *grouped-by-sentence-indra-match-cross-product*
              as matched-per-sent = (matched-h-per-sent sent)
              as h-num = (length matched-per-sent)
                                        ; do (print matched-per-sent)
              collect (cons (car sent)
                            (if partials-only
                                (loop for h in matched-per-sent
                                      when (eq (car h) 'partial-matches)
                                      collect h into partial-matches
                                      end
                                      when (eq (car h) 'no-matches)
                                      collect h into no-matches
                                      finally (return (list partial-matches  
                                                            no-matches)))
                                (loop for h in matched-per-sent
                                      counting (eq (car h) 'matches) into matches
                                      counting (eq (car h) 'partial-matches) into partial-matches
                                      counting (eq (car h) 'no-matches) into no-matches
                                      finally (return (list :m (/ matches h-num) 
                                                            :pm (/ partial-matches h-num) 
                                                            :nm (/ no-matches h-num)))))))))
                             
                        

(defun matched-h-per-sent (sent)
  (loop for h in (group-by (second sent) #'second)
        collect (loop for pair in (second h)
                      with partial-matches and no-matches
                      counting (eq (caar pair) 'matched) into matches
                      do (case (caar pair)
                           (partial-match 
                            (push (car pair) partial-matches))
                           (no-match
                            (push (car pair) no-matches)))
                      finally (return (cond ((and (> matches 0) 
                                                  (> (length partial-matches) 0))
                                             (lsp-break "has matches and partial-matches: ~s"
                                                        (second h)))
                                            ((> matches 0)
                                             (list 'matches matches))
                                            ((> (length partial-matches) 0)
                                             (list 'partial-matches partial-matches))
                                            (t
                                             (list 'no-matches no-matches)))))))
                                                 
#| counting (eq (caar pair) 'matched) into matches
  and
  when (eq (caar pair) 'partial-match) 
  collect pair into partial-matches
  end
  and
  when (eq (caar pair) 'no-match)
  collect pair into no-matches
  end
  |#


 ;; final form (match? hms-indra sparser-indra sentence) where match? [match, partial-match, no-match]
(defun test-indra-bindings-by-type (type sent-indra hms-indra)
  (let* ((req-obj-type (cond ((or (equal type "Activation")
                                  (equal type "Inhibition"))
                              :obj)
                             ((equal type "Autophosphorylation")
                              :enz)
                             ((or (equal type "Phosphorylation")
                                  (equal type "Dephosphorylation"))
                              :sub)
                             ((equal type "Translocation")
                              :agent)
                             (t
                              (lsp-break "unknown type"))))
         (hms-obj (cdr (assoc req-obj-type hms-indra)))
         (sent-obj (cdr (assoc req-obj-type sent-indra)))
         (compared-obj (compare-indra-db-refs sent-obj hms-obj)))
    (case compared-obj 
      (uid-matched
       '(matched))
      ((uid-mismatch-text-match text-match-no-uid)
       `(partial-match ,compared-obj :hms ,hms-obj :sparser ,sent-obj))
      ((uid-and-text-mismatch no-uid-or-text-match uid-mismatch-no-text)
       `(no-match ,compared-obj :hms ,hms-obj :sparser ,sent-obj)))
    ))
  
#+ignore(defun check-indra-bindings-act-with-obj (sent-indra hms-indra compared-obj)
          (hms-subj (cdr (assoc :subj hms-indra)))
          (sent-subj (cdr (assoc :subj sent-indra)))
          (compared-subj (compare-indra-db-refs sent-subj hms-subj)))


#+ignore(defun push-matches-to-list (essent? matched? item sent-indra hms-indra))

(defun compare-indra-db-refs (sent-prot hms-prot)
  (when (and (null sent-prot) (null hms-prot))
    (return-from compare-indra-db-refs 'uid-matched))
  (let* ((sent-db-refs (cdr (assoc :DB--REFS sent-prot)))
         (norm-sent-text (normalize-prot-text-string 
                          (cdr (assoc :+TEXT+ sent-db-refs))))
         (hms-db-refs (cdr (assoc :DB--REFS hms-prot)))
         (norm-hms-text (normalize-prot-text-string 
                         (cdr (assoc :+TEXT+ hms-db-refs)))))
    (cond ((and (assoc :+UP+ sent-db-refs)
                (assoc :+UP+ hms-db-refs))
           (match-db-refs :+UP+ sent-db-refs hms-db-refs norm-sent-text norm-hms-text))
          ((and (assoc :+NCIT+ sent-db-refs)
                (assoc :+NCIT+ hms-db-refs))
           (match-db-refs :+NCIT+ sent-db-refs hms-db-refs norm-sent-text norm-hms-text))
          ((and (assoc :+HGNC+ sent-db-refs)
                (assoc :+HGNC+ hms-db-refs))
           (match-db-refs :+HGNC+ sent-db-refs hms-db-refs norm-sent-text norm-hms-text))
          ((and (assoc :+FA+ sent-db-refs)
                (assoc :+FA+ hms-db-refs))
           (match-db-refs :+FA+ sent-db-refs hms-db-refs norm-sent-text norm-hms-text))  
          ((and (assoc :+GO+ sent-db-refs)
                (assoc :+GO+ hms-db-refs))
           (match-db-refs :+GO+ sent-db-refs hms-db-refs norm-sent-text norm-hms-text))  
          ((and (assoc :+XFAM+ sent-db-refs)
                (assoc :+XFAM+ hms-db-refs))
           (match-db-refs :+XFAM+ sent-db-refs hms-db-refs norm-sent-text norm-hms-text))  
          ((equal norm-sent-text "nil") ;; need to catch these first
           'uid-mismatch-no-text)
          ((equal norm-sent-text norm-hms-text)
           'text-match-no-uid)
          (t
           'no-uid-or-text-match))))

(defun normalize-prot-text-string (prot-text)
  "Given a protein name from the :+TEXT+ part of an indra def, remove
hyphens, spaces and capitalization to create maximal comparison so we
can still match things like CHK1 and CHK-1"
  (string-downcase (cl-ppcre::regex-replace-all "[- ]" prot-text "")))

(defun match-db-refs (db-type sent-db-refs hms-db-refs norm-sent-text norm-hms-text)
  (declare (special db-type sent-db-refs hms-db-refs norm-sent-text norm-hms-text))
                                        ; (lsp-break)
  (cond ((equal (assoc db-type sent-db-refs)
                (assoc db-type hms-db-refs))
         'uid-matched)
        ((equal norm-sent-text "nil") ;; need to catch these first
         'uid-mismatch-no-text)
        ((equal norm-sent-text norm-hms-text)
         'uid-mismatch-text-match)
        (t
         'uid-and-text-mismatch)))



(defvar *comps* nil)
(defun compare-all-sent-indra-to-hms-indra ()
  (assoc-hms-indra-with-sents)
  (length
   (setq *comps*
         (loop for pair in (hal *sents-to-indra*)
               collect (compare-sent-indra-to-hms-indra (car pair)(cdr pair))))))
    

(defun get-indra-type (s)
  (cdr (assoc :type (second (second (car (second s)))))))

(defvar *missing-comps* nil)
(defvar *missing-comps-types* nil)
(defvar *missing-phos* nil)
(defvar *missing-transloc* nil)
(defvar *missing-non-phos-types* nil)
(defvar *missing-non-phos* nil)
(defvar *mp-id* nil)
(defvar *mp-hard* nil)

(defun missing-phos ()
  (unless *comps* (compare-all-sent-indra-to-hms-indra))
  (setq *missing-comps* (loop for s in *comps* when (eq '*missing* (caaar (second s))) collect s))
  (setq *missing-comps-types*
        (loop for s in *comps* when (eq '*missing* (caaar (second s)))
              collect (get-indra-type s)))
  (length (setq *missing-phos* (loop for s in *missing-comps* when (equal "Phosphorylation" (get-indra-type s)) collect s)))
  (length (setq *missing-non-phos* (loop for s in *missing-comps* unless (equal "Phosphorylation" (get-indra-type s)) collect s)))
  (setq *missing-non-phos-types* (loop for s in *missing-non-phos* collect (get-indra-type s)))
  (length (setq *mp-id* (loop for s in *missing-phos* collect (list s (has-indra-data (car s))))))
  (length (setq *mp-hard*
                (loop for zz in
                        (loop for m in *mp-id* when (second m)
                              collect
                                (list (car m)
                                      (loop for xx in (second m) when
                                              (and (eq (car (second xx)) 'phosphorylate)
                                                   (not (assoc 'agent-or-substrate (cdr (second xx))))
                                                   (not (assoc 'site (cdr (second xx)))))
                                            collect xx)))
                      when (second zz) collect (second zz)))))

(defun indra-sentence-by-type (type &optional list)
  (let ((list-to-check (or list 
                           *comps* 
                           (compare-all-sent-indra-to-hms-indra))))
    (loop for item in list
          when (equal type (get-indra-type item)) 
          collect (car item))))

(defun get-nm-mismatch-pair (nm) 
  (let ((nmspec (car (second (car (third nm))))))
    (list :hms  (getf nmspec :hms)
          :sparser (getf nmspec :sparser))))

(defun get-pm-mismatch-pair (nm) 
  (let ((nmspec (car (second (car (second nm))))))
    (list :hms  (getf nmspec :hms)
          :sparser (getf nmspec :sparser))))


(defun collect-json-indra (&optional
                             (dir "~/projects/r3/corpus/phase3_nxml/results"))
  (loop for f in
          (directory (concatenate 'string dir "/*.json"))
        collect
          (read-json-indra-file f)))


(defun read-json-indra-file (file)
  (with-open-file (in file :direction :input)
    (cl-json::decode-json in)))


;;; code to extract parts of a structure -- from anywhere

(defun all-starts-with (start-keys list-struct)
  (cond ((not (consp list-struct))
         nil)
        ((member (car list-struct) start-keys :test #'equal)
         (list list-struct))
        (t
         (loop for item in list-struct
               as found = (all-starts-with start-keys item)
               when found
               append found))))



(defun save-bob-sparser-indra-forms ()
  (declare (optimize (debug 1)(speed 3)(safety 0)))
  (when (and (boundp '*indra-mention-var-ht*)
             (symbol-value '*indra-mention-var-ht*))
    (loop for mention-indra in (hal *indra-mention-var-ht*)
          do
            (save-bob-sparser-indra-form (car mention-indra)
                                         (cdr mention-indra)))))


(defun save-bob-sparser-indra-form (sp-var-symbol form)
  (declare (optimize (debug 1)(speed 3)(safety 0)))
  (setf (get (intern (symbol-name sp-var-symbol) :kb)
             :sparser-indra-rep)
        (convert-to-biosense
         form
         (symbol-name sp-var-symbol))))


;; utility-function, not called in code
(defun cl-user::bob-sparser-to-indra-forms ()
  (loop for mention-indra in (hal *indra-mention-var-ht*)
        collect
          (list (intern (symbol-name (car mention-indra)) :kb)
                (convert-to-biosense
                 (cdr mention-indra)
                 (symbol-name (car mention-indra))))))



#+ignore
(defun cl-user::biosense-for-sparser-output (&optional var)
  (when var (setq var (intern (symbol-name var) :sp)))
  (if var
      (convert-to-biosense (gethash var *indra-mention-var-ht*))
      (or
       (loop for mention-indra in (hal *indra-mention-var-ht*)
             when
               (assoc :evidence (second mention-indra))
             collect
               (list (car mention-indra)
                     (convert-to-biosense (second mention-indra))))
       (loop for mention-indra in (hal *indra-mention-var-ht*)
             unless
               (assoc :evidence (second mention-indra))
             collect
               (list (car mention-indra)
                     (convert-to-biosense (second mention-indra))))
       )))


(defun convert-to-biosense (indra-form &optional variable)
  (if (symbolp (car indra-form)) ;; already converted?
      ;;as in (sp->try-pragmatic-interp "The receptor tyrosine kinase EGFR binds the growth factor ligand EGF.")
      (if (eq (car indra-form) :collection-members)
          (mapcar #'convert-to-biosense (cdr indra-form))
          indra-form)
      (loop for pair in indra-form
            append
              (list (car pair)
                    (cond ((eq (car pair) :evidence)
                           (cdr pair))
                          ((eq (car pair) :members)
                           (cdr pair)
                           ;;(second pair)
                           )
                          ((not (consp (cdr pair)))
                           (cdr pair))
                          ((consp (second pair))
                           (convert-to-biosense (second pair)))
                          (t (cdr pair)))))))


;; example from biosense
#|
(TYPE Activation SUBJ
            (NAME KRAS DB--REFS
             (+TYPE+ ONT::GENE-PROTEIN +TEXT+ KRAS +HGNC+ 6407 +UP+ P01116 +NCIT+ C52546))
            OBJ
            (NAME RAF DB--REFS (+TYPE+ ONT::PROTEIN-FAMILY +TEXT+ RAF +FPLX+ RAF +NXPFA+ 03114))
            OBJ--ACTIVITY activity BELIEF 1 EVIDENCE
            ((SOURCE--API trips SOURCE--HASH -1613118243458052451)) ID
            acc5b40a-2b87-424d-bd01-ce849605130f MATCHES--HASH 19343107104138835)
|#



;;;
;;;;; code for comparing new Sparser indra output to results of old sparser core image


(defparameter *pmc-indra-json-ht* (make-hash-table :test #'equal))
(defparameter *use-phase3-hms-files* t)
(defun use-phase3 (&optional (yes? t))
  (setq *use-phase3-hms-files* yes?))

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
                          (if *use-phase3-hms-files*
                              "../corpus/phase3_nxml/"
                              "../corpus/hms-update/")))))
  (when (probe-file js-file)
    (with-open-file (in js-file :direction :input)
      (when (> (file-length in) 0)
        (cl-json::decode-json in)))))



(defun remove-conjunction-text (indra)
  (loop for clause in indra
        collect
          (cond ((and (consp clause)(keywordp (car clause)))
                 (cons (car clause)
                       (if (consp (cdr clause))
                           (loop for item in (cdr clause)
                                 unless (and (consp item)
                                             (stringp (cdr item))
                                             (search " and " (cdr item)))
                                 collect item)
                           (cdr clause))))
                (t clause))))
          

(defun remove-indra-evidence (indra)
  (loop for item in indra
        unless (eq (car item) :evidence)
        collect item))

(defun remove-excess+texts (json-list)
  (loop for json-exp in json-list
        collect
          (if (consp (cdr json-exp))
              (remove-excess+texts1 json-exp)
              json-exp)))

(defun remove-excess+texts1 (json-exp)
  `(,(car json-exp)         
     ,@(loop for json in (cdr json-exp)
             unless (and (consp json)(eq (car json) :+text+))
             collect
               (if (and (consp json) (keywordp (car json)))
                   `(,(car json)
                      ,@(case (car json)
                          ((:members :proteins)
                           (remove-excess+texts (cdr json)))
                          (:db--refs (cdr json))
                          (t
                           (if (consp (cdr json))
                               (loop for item in (cdr json)
                                     append
                                       (case (and (consp item)
                                                  (keywordp (car item))
                                                  (car item))
                                         (:proteins
                                          (list
                                           (cons (car item)
                                                (remove-excess+texts
                                                 (cdr item)))))                                                
                                         (:+text+ nil)
                                         (t (list item))))
                               (cdr json)))))
                   json))))

(defun normalize-sent-indras (sent-indra-list hms-or-json?)
  (loop for sent-indra in sent-indra-list
        collect (normalize-sent-indra sent-indra hms-or-json?)))

(defun normalize-sent-indra (sent-indra hms-or-json?)
  `(,(car sent-indra) ;;sentence
     ,(loop for indra
            in
              (remove-duplicates 
               (mapcar #'remove-indra-evidence (second sent-indra))
               :test #'equal)
            collect
              (if (eq hms-or-json? :hms)
                  (normalize-hms-indra indra)
                  indra))))

(defparameter *do-hms-normalization* t)

(defun normalize-hms-indra (indra)
  (if *do-hms-normalization*
      (map-hms-to-sift-proteins
       (remove-excess+texts1
        (remove-conjunction-text
         (sublis '((:+BE+ . :+FPLX+)) indra))))
      indra))

(defun normalize-pmc-indras-by-sents (pmc hms-or-json?)
  (normalize-sent-indras
   (group-by (read-indra-json pmc hms-or-json?) #'indra-evidence-text)
   hms-or-json?))

(defun read-sift-indras (&optional (pmcs (hms-indra-pmcs)))
  (loop for pmc in pmcs
        collect
          (read-indra-json pmc :sift)))

(defun get-sentence-indras (sentence hms-or-sift-list)
  (second
   (assoc sentence hms-or-sift-list :test #'equal)))


(defun pmc-indra-compare (pmc &optional (all? nil))
  (let* ((hms-indra-by-sents (normalize-pmc-indras-by-sents pmc :hms))
         (sift-indra-by-sents (normalize-pmc-indras-by-sents pmc :sift))
         (sents (sort (remove-duplicates
                       (append
                        (mapcar #'car hms-indra-by-sents)
                        (mapcar #'car sift-indra-by-sents))
                       :TEST #'equal)
                      #'string<))
         (compared
          (loop for s in sents
                append
                  (let* ((hms (get-sentence-indras s hms-indra-by-sents))
                         (sift (get-sentence-indras s sift-indra-by-sents))
                         (ex-or (set-exclusive-or hms sift :test #'equal)))
                    (cond (ex-or ;; (equal hms sift)
                           #+ignore
                           (format t "in ~s :hms ~s :sift ~s ~%ex-or=~s~%"
                                   s hms sift ex-or)
                           `((,s :hms ,(loop for js in hms
                                             unless (uninteresting-json? js sift)
                                             collect js)
                                 :sift ,(loop for js in sift
                                              unless (uninteresting-json? js hms)
                                              collect js))))
                          (all? `((,s (:equal ,hms)))))))))
    (when (or all? compared)
      (setf
       (gethash (intern pmc :sp) *pmc-indra-json-ht*)
       (if all?
           `(:compared ,compared :hms ,hms-indra-by-sents :sift ,sift-indra-by-sents)
           `(:compared ,compared))))))

(defun pmc-indras (&optional (all? nil))
  (loop for pmc in (hms-indra-pmcs)
        do (pmc-indra-compare pmc all?))
  (hal *pmc-indra-json-ht*))


(defparameter *complexes-json* :yes)
(defun uninteresting-json? (js uninteresting &optional (complexes? *complexes-json*))
  (or (member js uninteresting :test #'equal)
      (case complexes?
        (:no (is-in-p "Complex" js :test #'equal))
        (:yes nil)
        (:only (not (is-in-p "Complex" js :test #'equal))))
      ;; get rid of GFP complexes
      (and (equal (assoc :type js) '(:TYPE . "Complex"))
           (or (and (assoc :members js)
                    (null (cddr (assoc :members js))))
               (loop for m in (cdr (assoc :members js))
                     thereis
                       (equal (assoc :name m) '(:NAME . "GFP_AEQVI")))))
      (and (equal (assoc :type js) '(:TYPE . "Phosphorylation"))
           (or (fplx-protein? (cdr (assoc :sub js)))
               (fplx-protein? (cdr (assoc :enz js)))))
      (and (member (assoc :type js)
                   '((:TYPE . "GeneTranscriptExpress")
                     (:TYPE . "Inhibition")
                     (:TYPE . "Activation"))
                   :test #'equal)
           (fplx-protein? (cdr (assoc :obj js)))
           ))
  )

(defun fplx-protein? (prot)
  (when (consp prot)
    (let ((text (cdr (assoc :+TEXT+ prot)))
          (name (cdr (assoc :name prot))))
      (or
       (member text '( "AKT"  "AKT"  "Activin"  "Akt"  "Arp2/3"  "CAMs"  "CD8"  "CDK"
                      "GPCRs"  "GST"  "HSP90"  "IFN"  "JNK1/2"  "MAPK"  "MAPKs"  "NF-ÎºB"
                      "NFÎºB"  "PI(3K"  "PI3K"  "Rac"  "Rho"  "SOD"  "TGF-Î²"  "TnC"  "TnI"
                      "Wnt"  "actin"  "adenylate cyclase"  "adenylyl cyclase"  "calcineurin"
                      "calpain"  "caspase"  "caspases"  "cholinesterase"  "dynamin"
                      "estrogen receptor"  "JNK1/2" "mitogen-activated protein kinases"  "p38 MAPK"
                      "phospholipase C"  "proteases"  "transforming growth factor beta"
                      "troponin"  "troponins"  "tubulin") :test #'equal)

       (member name '( "AKT" "Arp2/3" "CD8" "CDK" "cholinesterase"
                      "dynamin" "GPCR" "Glutathione S-transferase" "HSP90"
                      "Jnk" "NF-kappaB" "PI3-kinase" "PPP3" "Phospholipase C"
                      "Rac" "Rho" "SOD" "TGF-beta" "TNC" "Wnt"
                      "actin" "activin" "calmodulin" "calpain" "caspase"
                      "dynamin" "interferon" "protease" "troponin I" "troponin" "tubulin") :test #'equal)))
    ))



(defun hms-indra-pmcs ()
  (loop for pathname in (hms-indra-files)
        collect
          (let ((pname (pathname-name pathname)))
            (subseq pname 0
                    (search "-" pname)))))

(defun hms-indra-files ()
  (directory
   (format nil "~a*semantics.json"
           (namestring 
            (asdf:system-relative-pathname
             :r3
             (if *use-phase3-hms-files*
                 "../corpus/phase3_nxml/hms-json/"
                 "../corpus/hms-update/hms-json/"))))))

(defun hms-indra-nxml-pmcs ()
  (loop for pathname in (hms-update-xml-files)
        collect
          (let ((pname (pathname-name pathname)))
            (subseq pname 0
                    (search "." pname)))))


(defun hms-update-xml-files ()
  (directory
   (format nil "~a*.nxml"
           (namestring 
            (asdf:system-relative-pathname
             :r3
             "../corpus/hms-update/")))))

(defun sift-indra-files ()
  (directory
   (format nil "~a*semantics.json"
           (namestring 
            (asdf:system-relative-pathname
             :r3
             (if *use-phase3-hms-files*
                 "../corpus/phase3_nxml/sift-json/"
                 "../corpus/hms-update/sift-json/"))))))

(defun indra-evidence-text (indra)
  (cdr (assoc :text (second (assoc :evidence indra)))))


(defun safe-prop (key list)
  "Works like getf on plists, but also handles cases where there is an extra item at the beginning of the list"
  (cond ((null key) nil)
        ((symbolp key)
         (when (consp list)
           (second (member key list))))
        ((consp key)
         (let ((first-one (safe-prop (car key) list)))
           (if (and first-one (cdr key) (cadr key))
               (safe-prop (cdr key) first-one)
               first-one
               )
           ))))

(defun get-named-items (json-sexpr-list)
  (loop for json-sexp in json-sexpr-list 
        append
          (let ((sexpr-type (car json-sexp))
                (args (when (consp (cdr json-sexp))
                        (cdr json-sexp))))
          (loop for arg in args
                when
                  (and (consp arg)
                       (symbolp (car arg))
                       (consp (cdr arg)))
                  ;; like ((:type ...) (arg ...)
                append
                  (case (car arg)
                    (:members (cdr arg))
                    (t (when (assoc :name (cdr arg))
                         (list (member (assoc :name (cdr arg)) (cdr arg))))))))))
                  
(defparameter *hms-names* nil)
(defparameter *sift-names* nil)
(defun indra-comparisons ()
  (declare (special *indras*))
  (loop for ii in *indras* 
        when (loop for ss in (safe-prop :compared ii) when (and (safe-prop :hms ss) (safe-prop :sift ss)) collect (safe-prop :hms ss))
        collect
          (list (car ii)
                (loop for ss in (safe-prop :compared ii)
                      when (and (safe-prop :hms ss)(safe-prop :sift ss))
                      collect
                        (list (car ss)
                              :hms
                              (remove-excess+texts
                               (loop for hm in (safe-prop :hms ss)
                                     unless (member hm (safe-prop :sift ss)
                                                    :test #'equal)
                                     collect hm))
                              :sift
                               (loop for sift in (safe-prop :sift ss)
                                     unless (member sift (safe-prop :hms ss) :test #'equal)
                                     collect sift))))))
(defun collect-sift-hms-names ()
  (loop for pmc in (indra-comparisons) do 
          (loop for sent in (second pmc) 
                do (loop for hms in (get-named-items (safe-prop :hms sent))
                         do (pushnew hms
                                     *hms-names* :test #'equal))
                  (loop for sift in (get-named-items (safe-prop :sift sent))
                        do (pushnew sift
                                    *sift-names* :test #'equal)))
          )
  (let ((hms-defs (group-by *hms-names* #'db-ref-text))
        (sift-defs (group-by *sift-names* #'db-ref-text)))
    (loop for ii in
            (loop for h in hms-defs
                  collect
                    (list (car h)
                          (second h)
                          (second (assoc (car h) sift-defs :test #'equal))))
          when (and (third ii)
                    (not (equal (second ii)
                                (third ii))))
                        
          collect ii)))
    
(defun map-hms-to-sift-proteins (hms)
  (sublis
   '(((:+GO+ . "0004016"):+FPLX+ . "ADCY")
     ((:+PR+ . "000000019"):+FPLX+ . "MAPK")
     ((:+UP+ . "O15169"):+FPLX+ . "AXIN")
     (((:NAME . "AXIN1_HUMAN") (:DB--REFS (:+UP+ . "O15169") (:+TEXT+ . "Axin")))
      ((:NAME . "AXIN") (:DB--REFS (:+FPLX+ . "AXIN") (:+TEXT+ . "Axin"))))
     ((((:NAME . "PCID:9999") (:DB--REFS (:+PCID+ . "9999") (:+TEXT+ . "cyanogen"))))
      ((:NAME . "cyanogen") (:DB--REFS (:+PUBCHEM+ . "9999") (:+TEXT+ . "cyanogen"))))
     ((((:NAME . "FMN1_HUMAN") (:DB--REFS (:+UP+ . "Q68DA7") (:+TEXT+ . "LD"))))
      ((:NAME . "EPM2A glucan phosphatase, laforin") (:DB--REFS (:+HGNC+ . "3413") (:+TEXT+ . "LD"))))
     ((((:NAME . "PCID:5484352") (:DB--REFS (:+PCID+ . "5484352") (:+TEXT+ . "aa"))))
      ((:NAME . "aa") (:DB--REFS (:+PUBCHEM+ . "5484352") (:+TEXT+ . "aa"))))
     ((((:NAME . "UP:P03406") (:DB--REFS (:+UP+ . "P03406") (:+TEXT+ . "Nef")))
       ((:NAME . "Negative Regulatory Factor") (:DB--REFS (:+XFAM+ . "PF00469") (:+TEXT+ . "Nef"))))
      ((:NAME . "UP:P03406") (:DB--REFS (:+UP+ . "P03406") (:+TEXT+ . "Nef"))))
     ((((:NAME . "PI3-kinase") (:DB--REFS (:+XFAM+ . "PF00454") (:+TEXT+ . "PI 3-kinase"))))
      ((:NAME . "PI3-kinase") (:DB--REFS (:+FPLX+ . "PI3K") (:+TEXT+ . "PI 3-kinase"))))
     ((((:NAME . "p85α") (:DB--REFS (:+TEXT+ . "p85α"))))
      ((:NAME . "P85A_HUMAN") (:DB--REFS (:+UP+ . "P27986") (:+TEXT+ . "p85α"))))
     ((((:NAME . "PCID:97054") (:DB--REFS (:+PCID+ . "97054") (:+TEXT+ . "Wg"))))
      ((:NAME . "wg") (:DB--REFS (:+PUBCHEM+ . "97054") (:+TEXT+ . "Wg"))))
     ((((:NAME . "PCID:97054") (:DB--REFS (:+PCID+ . "97054") (:+TEXT+ . "wg"))))
      ((:NAME . "wg") (:DB--REFS (:+PUBCHEM+ . "97054") (:+TEXT+ . "wg"))))
     ((((:NAME . "Cyclins") (:DB--REFS (:+FA+ . "00815") (:+TEXT+ . "Cyclin"))))
      ((:NAME . "Cyclin") (:DB--REFS (:+FPLX+ . "Cyclin") (:+TEXT+ . "Cyclin"))))
     ((((:NAME . "IFN-γ") (:DB--REFS (:+TEXT+ . "IFN-γ"))))
      ((:NAME . "IFNG_HUMAN") (:DB--REFS (:+UP+ . "P01579") (:+TEXT+ . "IFN-γ"))))
     ((((:NAME . "PDGR") (:DB--REFS (:+NCIT+ . "C17322") (:+TEXT+ . "PDGFRs"))))
      ((:NAME . "PDGFR") (:DB--REFS (:+FPLX+ . "PDGFR") (:+TEXT+ . "PDGFRs"))))
     ((((:NAME . "PCID:5780") (:DB--REFS (:+PCID+ . "5780") (:+TEXT+ . "sorbitol"))))
      ((:NAME . "sorbitol") (:DB--REFS (:+PUBCHEM+ . "5780") (:+TEXT+ . "sorbitol"))))
     ((((:NAME . "GAP") (:DB--REFS (:+XFAM+ . "PF00616") (:+TEXT+ . "GAP"))))
      ((:NAME . "RASA1_HUMAN") (:DB--REFS (:+UP+ . "P20936") (:+TEXT+ . "GAP"))))
     ((((:NAME . "PI3-kinase") (:DB--REFS (:+XFAM+ . "PF00454") (:+TEXT+ . "PI(3)K"))))
      ((:NAME . "PI3-kinase") (:DB--REFS (:+FPLX+ . "PI3K") (:+TEXT+ . "PI(3)K"))))
     ((((:NAME . "MEK") (:DB--REFS (:+FPLX+ . "MEK") (:+TEXT+ . "MAP kinase kinase"))))
      ((:NAME . "MAP2K") (:DB--REFS (:+FPLX+ . "MAP2K") (:+TEXT+ . "MAP kinase kinase"))))
     ((((:NAME . "tubulin") (:DB--REFS (:+PR+ . "000028799") (:+TEXT+ . "Tubulin"))))
      ((:NAME . "tubulin") (:DB--REFS (:+FPLX+ . "Tubulin") (:+TEXT+ . "Tubulin"))))
     ((((:NAME . "lamin") (:DB--REFS (:+NCIT+ . "C17307") (:+TEXT+ . "lamin"))))
      ((:NAME . "LMNB1_HUMAN") (:DB--REFS (:+UP+ . "P20700") (:+TEXT+ . "lamin"))))
     ((((:NAME . "PCID:11966311") (:DB--REFS (:+PCID+ . "11966311") (:+TEXT+ . "Sepharose"))))
      ((:NAME . "sepharose") (:DB--REFS (:+PUBCHEM+ . "11966311") (:+TEXT+ . "Sepharose"))))
     ((((:NAME . "GRP1_HUMAN") (:DB--REFS (:+UP+ . "O95267") (:+TEXT+ . "RasGRP"))))
      ((:NAME . "RASGRP") (:DB--REFS (:+FPLX+ . "RASGRP") (:+TEXT+ . "RasGRP"))))
     ((((:NAME . "ROS1_HUMAN") (:DB--REFS (:+UP+ . "P08922") (:+TEXT+ . "Ros"))))
      ((:NAME . "Reactive Oxygen Species") (:DB--REFS (:+MESH+ . "D017382") (:+TEXT+ . "Ros")))
      ((:NAME . "ROS1_HUMAN") (:DB--REFS (:+UP+ . "P08922") (:+TEXT+ . "Ros"))))
     ((((:NAME . "Sos") (:DB--REFS (:+FPLX+ . "SOS") (:+TEXT+ . "Sos"))))
      ((:NAME . "son of sevenless") (:DB--REFS (:+FPLX+ . "SOS") (:+TEXT+ . "Sos"))))
     ((((:NAME . "CK2") (:DB--REFS (:+FA+ . "03101") (:+TEXT+ . "casein kinase 2"))))
      ((:NAME . "CK2") (:DB--REFS (:+FPLX+ . "CK2") (:+TEXT+ . "casein kinase 2"))))
     ((((:NAME . "CDK") (:DB--REFS (:+NCIT+ . "C17767") (:+TEXT+ . "Cdk"))))
      ((:NAME . "CDK") (:DB--REFS (:+FPLX+ . "CDK") (:+TEXT+ . "Cdk"))))
     ((((:NAME . "ARG28_HUMAN") (:DB--REFS (:+UP+ . "Q8N1W1") (:+TEXT+ . "RhoGEF"))))
      ((:NAME . "rho guanyl-nucleotide exchange factor activity")
       (:DB--REFS (:+GO+ . "0005089") (:+TEXT+ . "RhoGEF"))))
     ((((:NAME . "SOS_DROME") (:DB--REFS (:+UP+ . "P26675") (:+TEXT+ . "SOS"))))
      ((:NAME . "son of sevenless") (:DB--REFS (:+FPLX+ . "SOS") (:+TEXT+ . "SOS"))))
     ((((:NAME . "CDN2A_HUMAN") (:DB--REFS (:+UP+ . "P42771") (:+TEXT+ . "p14Arf"))))
      ((:NAME . "ARF_HUMAN") (:DB--REFS (:+UP+ . "Q8N726") (:+TEXT+ . "p14Arf"))))
     ((((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF-LEF") (:+TEXT+ . "Tcf"))))
      ((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF_LEF") (:+TEXT+ . "Tcf"))))
     ((((:NAME . "AXIN1_HUMAN") (:DB--REFS (:+UP+ . "O15169") (:+TEXT+ . "axin"))))
      ((:NAME . "AXIN") (:DB--REFS (:+FPLX+ . "AXIN") (:+TEXT+ . "axin"))))
     ((((:NAME . "RBP1_HUMAN") (:DB--REFS (:+UP+ . "Q15311") (:+TEXT+ . "doxorubicin"))))
      ((:NAME . "doxorubicin") (:DB--REFS (:+CHEBI+ . "28748") (:+TEXT+ . "doxorubicin"))))
     ((((:NAME . "Rac") (:DB--REFS (:+FA+ . "03066") (:+TEXT+ . "PKB"))))
      ((:NAME . "AKT") (:DB--REFS (:+FPLX+ . "AKT") (:+TEXT+ . "PKB"))))
     ((((:NAME . "PCID:31193") (:DB--REFS (:+PCID+ . "31193") (:+TEXT+ . "CD"))))
      ((:NAME . "cd") (:DB--REFS (:+PUBCHEM+ . "31193") (:+TEXT+ . "CD"))))
     ((((:NAME . "SHC1_HUMAN") (:DB--REFS (:+UP+ . "P29353") (:+TEXT+ . "SHC"))))
      ((:NAME . "SHC") (:DB--REFS (:+FPLX+ . "SHC") (:+TEXT+ . "SHC"))))
     ((((:NAME . "OPSD_HUMAN") (:DB--REFS (:+UP+ . "P08100") (:+TEXT+ . "Rho family"))))
      ((:NAME . "Rho") (:DB--REFS (:+FPLX+ . "RHO") (:+TEXT+ . "Rho family"))))
     ((((:NAME . "CHKA_HUMAN") (:DB--REFS (:+UP+ . "P35790") (:+TEXT+ . "CKIs"))))
      ((:NAME . "cyclin-dependent kinase inhibitor")
       (:DB--REFS (:+FPLX+ . "CDKN") (:+TEXT+ . "CKIs"))))
     ((((:NAME . "CDN2A_HUMAN") (:DB--REFS (:+UP+ . "P42771") (:+TEXT+ . "P14ARF"))))
      ((:NAME . "ARF_HUMAN") (:DB--REFS (:+UP+ . "Q8N726") (:+TEXT+ . "P14ARF"))))
     ((((:NAME . "RGD1_YEAST") (:DB--REFS (:+UP+ . "P38339") (:+TEXT+ . "Rho-GAP"))))
      ((:NAME . "RhoGAP") (:DB--REFS (:+TEXT+ . "Rho-GAP"))))
     ((((:NAME . "RGRF1_HUMAN") (:DB--REFS (:+UP+ . "Q13972") (:+TEXT+ . "Cdc25"))))
      ((:NAME . "CDC25") (:DB--REFS (:+FPLX+ . "CDC25") (:+TEXT+ . "Cdc25"))))
     ((((:NAME . "CHKA_HUMAN") (:DB--REFS (:+UP+ . "P35790") (:+TEXT+ . "CKI"))))
      ((:NAME . "cyclin-dependent kinase inhibitor") (:DB--REFS (:+FPLX+ . "CDKN") (:+TEXT+ . "CKI"))))
     ((((:NAME . "ubiquitin conjugating enzyme")
        (:DB--REFS (:+XFAM+ . "PF00179") (:+TEXT+ . "ubiquitin-conjugating enzymes"))))
      ((:NAME . "UBE2") (:DB--REFS (:+FPLX+ . "UBE2") (:+TEXT+ . "ubiquitin-conjugating enzymes"))))
     ((((:NAME . "PI3K1_DICDI") (:DB--REFS (:+UP+ . "P54673") (:+TEXT+ . "PI3Ks"))))
      ((:NAME . "PI3-kinase") (:DB--REFS (:+FPLX+ . "PI3K") (:+TEXT+ . "PI3Ks"))))
     ((((:NAME . "JAK2_HUMAN") (:DB--REFS (:+UP+ . "O60674") (:+TEXT+ . "JAK"))))
      ((:NAME . "JAK") (:DB--REFS (:+FPLX+ . "JAK") (:+TEXT+ . "JAK"))))
     ((((:NAME . "Jun") (:DB--REFS (:+FA+ . "00409") (:+TEXT+ . "jun"))))
      ((:NAME . "JUN") (:DB--REFS (:+FPLX+ . "JUN_family") (:+TEXT+ . "jun"))))
     ((((:NAME . "MMP1_HUMAN") (:DB--REFS (:+UP+ . "P03956") (:+TEXT+ . "MMPs"))))
      ((:NAME . "MMP") (:DB--REFS (:+FPLX+ . "MMP") (:+TEXT+ . "MMPs"))))
     ((((:NAME . "PCID:5757") (:DB--REFS (:+PCID+ . "5757") (:+TEXT+ . "E2"))))
      ((:NAME . "UP:P27958") (:DB--REFS (:+UP+ . "P27958") (:+TEXT+ . "E2"))))
     ((((:NAME . "ubiquitin conjugating enzyme")
        (:DB--REFS (:+XFAM+ . "PF00179") (:+TEXT+ . "ubiquitin conjugating enzyme"))))
      ((:NAME . "UBE2") (:DB--REFS (:+FPLX+ . "UBE2") (:+TEXT+ . "ubiquitin conjugating enzyme"))))
     ((((:NAME . "ADA12_HUMAN") (:DB--REFS (:+UP+ . "O43184") (:+TEXT+ . "syndecans"))))
      ((:NAME . "syndecans") (:DB--REFS (:+NCIT+ . "C17335") (:+TEXT+ . "syndecans"))))
     ((((:NAME . "CD8A_HUMAN") (:DB--REFS (:+UP+ . "P01732") (:+TEXT+ . "CD8"))))
      ((:NAME . "CD8") (:DB--REFS (:+FPLX+ . "CD8") (:+TEXT+ . "CD8"))))
     ((((:NAME . "GDIR1_HUMAN") (:DB--REFS (:+UP+ . "P52565") (:+TEXT+ . "Rho-GDI"))))
      ((:NAME . "RhoGDI") (:DB--REFS (:+FPLX+ . "RhoGDI") (:+TEXT+ . "Rho-GDI"))))
     ((((:NAME . "caspase") (:DB--REFS (:+NCIT+ . "C18153") (:+TEXT+ . "caspase"))))
      ((:NAME . "caspase") (:DB--REFS (:+FPLX+ . "Caspase") (:+TEXT+ . "caspase"))))
     ((((:NAME . "transfectant") (:DB--REFS (:+TEXT+ . "transfectants"))))
      ((:NAME . "FUT4_HUMAN") (:DB--REFS (:+UP+ . "P22083") (:+TEXT+ . "transfectants"))))
     ((((:NAME . "SIR3_YEAST") (:DB--REFS (:+UP+ . "P06701") (:+TEXT+ . "SIR3"))))
      ((:NAME . "organosilyl group") (:DB--REFS (:+CHEBI+ . "33478") (:+TEXT+ . "SIR3"))))
     ((((:NAME . "CDK") (:DB--REFS (:+NCIT+ . "C17767") (:+TEXT+ . "CDKs"))))
      ((:NAME . "CDK") (:DB--REFS (:+FPLX+ . "CDK") (:+TEXT+ . "CDKs"))))
     ((((:NAME . "CD3") (:DB--REFS (:+NCIT+ . "C38897") (:+TEXT+ . "CD3"))))
      ((:NAME . "CD3") (:DB--REFS (:+FPLX+ . "CD3") (:+TEXT+ . "CD3"))))
     ((((:NAME . "ESR1_HUMAN") (:DB--REFS (:+UP+ . "P03372") (:+TEXT+ . "estrogen receptors"))))
      ((:NAME . "estrogen receptor") (:DB--REFS (:+FPLX+ . "ESR") (:+TEXT+ . "estrogen receptors"))))
     ((((:NAME . "Fibroblast growth factor receptor")
        (:DB--REFS (:+NCIT+ . "C17297") (:+TEXT+ . "FGFR"))))
      ((:NAME . "Fibroblast growth factor receptor")
       (:DB--REFS (:+FPLX+ . "FGFR") (:+TEXT+ . "FGFR"))))
     ((((:NAME . "VAV_HUMAN") (:DB--REFS (:+UP+ . "P15498") (:+TEXT+ . "Vav"))))
      ((:NAME . "VAV") (:DB--REFS (:+FPLX+ . "VAV") (:+TEXT+ . "Vav"))))
     ((((:NAME . "KSYK_HUMAN") (:DB--REFS (:+UP+ . "P43405") (:+TEXT+ . "Syk"))
        (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true")))
       ((:NAME . "KSYK_HUMAN") (:DB--REFS (:+UP+ . "P43405") (:+TEXT+ . "Syk"))))
      ((:NAME . "KSYK_HUMAN") (:DB--REFS (:+UP+ . "P43405") (:+TEXT+ . "Syk")))
      ((:NAME . "KSYK_HUMAN") (:DB--REFS (:+UP+ . "P43405") (:+TEXT+ . "Syk"))
       (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
     ((((:NAME . "PI3K1_DICDI") (:DB--REFS (:+UP+ . "P54673") (:+TEXT+ . "PI3-K"))))
      ((:NAME . "PI3-kinase") (:DB--REFS (:+FPLX+ . "PI3K") (:+TEXT+ . "PI3-K"))))
     ((((:NAME . "RB_HUMAN") (:DB--REFS (:+UP+ . "P06400") (:+TEXT+ . "pRb")))
       ((:NAME . "RB_HUMAN") (:DB--REFS (:+UP+ . "P06400") (:+TEXT+ . "pRb"))
        (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
      ((:NAME . "RB_HUMAN") (:DB--REFS (:+UP+ . "P06400") (:+TEXT+ . "pRb"))
       (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true")))
      ((:NAME . "RB_HUMAN") (:DB--REFS (:+UP+ . "P06400") (:+TEXT+ . "pRb"))
       (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))
       (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
     ((((:NAME . "SOAT1_HUMAN") (:DB--REFS (:+UP+ . "P35610") (:+TEXT+ . "STATs"))))
      ((:NAME . "STAT") (:DB--REFS (:+FPLX+ . "STAT") (:+TEXT+ . "STATs"))))
     ((((:NAME . "PCID:128837") (:DB--REFS (:+PCID+ . "128837") (:+TEXT+ . "KK"))))
      ((:NAME . "kk") (:DB--REFS (:+PUBCHEM+ . "128837") (:+TEXT+ . "KK"))))
     ((((:NAME . "RB_HUMAN") (:DB--REFS (:+UP+ . "P06400") (:+TEXT+ . "pRB"))))
      ((:NAME . "RB_HUMAN") (:DB--REFS (:+UP+ . "P06400") (:+TEXT+ . "pRB"))
       (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
     ((((:NAME . "NPY6R_HUMAN") (:DB--REFS (:+UP+ . "Q99463") (:+TEXT+ . "PP2"))))
      ((:NAME . "protein phosphatase 2") (:DB--REFS (:+FPLX+ . "PPP2") (:+TEXT+ . "PP2"))))
     ((((:NAME . "SRC_HUMAN") (:DB--REFS (:+UP+ . "P12931") (:+TEXT+ . "c-Src")))
       ((:NAME . "SRC_HUMAN") (:DB--REFS (:+UP+ . "P12931") (:+TEXT+ . "c-Src"))
        (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
      ((:NAME . "SRC_HUMAN") (:DB--REFS (:+UP+ . "P12931") (:+TEXT+ . "c-Src"))))
     ((((:NAME . "Eph receptor")
        (:DB--REFS (:+FPLX+ . "Ephrin_receptor") (:+TEXT+ . "Eph receptors"))))
      ((:NAME . "ephrin receptor")
       (:DB--REFS (:+FPLX+ . "Ephrin_receptor") (:+TEXT+ . "Eph receptors"))))
     ((((:NAME . "dishevelled") (:DB--REFS (:+XFAM+ . "PF02377.13") (:+TEXT+ . "Dishevelled"))))
      ((:NAME . "dishevelled") (:DB--REFS (:+FPLX+ . "DVL") (:+TEXT+ . "Dishevelled"))))
     ((((:NAME . "TRCB_XENLA") (:DB--REFS (:+UP+ . "Q91854") (:+TEXT+ . "β-TrCP"))))
      ((:NAME . "FBW1A_HUMAN") (:DB--REFS (:+UP+ . "Q9Y297") (:+TEXT+ . "β-TrCP"))))
     ((((:NAME . "KCC2G_HUMAN") (:DB--REFS (:+UP+ . "Q13555") (:+TEXT+ . "CaMKII"))))
      ((:NAME . "CAMKII") (:DB--REFS (:+FPLX+ . "CAMK2_family") (:+TEXT+ . "CaMKII"))))
     ((((:NAME . "bone morphogenetic protein") (:DB--REFS (:+NCIT+ . "C17274") (:+TEXT+ . "BMP"))))
      ((:NAME . "bone morphogenetic protein") (:DB--REFS (:+FPLX+ . "BMP") (:+TEXT+ . "BMP"))))
     ((((:NAME . "AMPKalpha") (:DB--REFS (:+NCIT+ . "C116019") (:+TEXT+ . "AMPKα"))))
      ((:NAME . "AMPKalpha") (:DB--REFS (:+FPLX+ . "AMPK_alpha") (:+TEXT+ . "AMPKα"))))
     ((((:NAME . "PDPK1_HUMAN") (:DB--REFS (:+UP+ . "O15530") (:+TEXT+ . "PDK1"))))
      ((:NAME . "PDK1_HUMAN") (:DB--REFS (:+UP+ . "Q15118") (:+TEXT+ . "PDK1"))))
     ((((:NAME . "TRCB_XENLA") (:DB--REFS (:+UP+ . "Q91854") (:+TEXT+ . "TrCP"))))
      ((:NAME . "FBW1A_HUMAN") (:DB--REFS (:+UP+ . "Q9Y297") (:+TEXT+ . "TrCP"))))
     ((((:NAME . "PIP") (:DB--REFS (:+TEXT+ . "PIP"))))
      ((:NAME . "PIP_HUMAN") (:DB--REFS (:+UP+ . "P12273") (:+TEXT+ . "PIP"))))
     ((((:NAME . "Fibroblast growth factor receptor")
        (:DB--REFS (:+NCIT+ . "C17297") (:+TEXT+ . "FGFRs"))))
      ((:NAME . "Fibroblast growth factor receptor")
       (:DB--REFS (:+FPLX+ . "FGFR") (:+TEXT+ . "FGFRs"))))
     ((((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF-LEF") (:+TEXT+ . "Tcf-Lef"))))
      ((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF_LEF") (:+TEXT+ . "Tcf-Lef"))))
     ((((:NAME . "dishevelled") (:DB--REFS (:+XFAM+ . "PF02377.13") (:+TEXT+ . "dishevelled"))))
      ((:NAME . "dishevelled") (:DB--REFS (:+FPLX+ . "DVL") (:+TEXT+ . "dishevelled"))))
     ((((:NAME . "AXIN1_HUMAN") (:DB--REFS (:+UP+ . "O15169") (:+TEXT+ . "Axin"))))
      ((:NAME . "AXIN") (:DB--REFS (:+FPLX+ . "AXIN") (:+TEXT+ . "Axin"))))
     ((((:NAME . "SYRC_HUMAN") (:DB--REFS (:+UP+ . "P54136") (:+TEXT+ . "RARs"))))
      ((:NAME . "RAR") (:DB--REFS (:+FPLX+ . "RAR") (:+TEXT+ . "RARs"))))
     ((((:NAME . "RXR_BIOGL") (:DB--REFS (:+UP+ . "Q8T5C6") (:+TEXT+ . "RXR"))))
      ((:NAME . "RXRA_HUMAN") (:DB--REFS (:+UP+ . "P19793") (:+TEXT+ . "RXR"))))
     ((((:NAME . "SYRC_HUMAN") (:DB--REFS (:+UP+ . "P54136") (:+TEXT+ . "RAR"))))
      ((:NAME . "RAR") (:DB--REFS (:+FPLX+ . "RAR") (:+TEXT+ . "RAR"))))
     ((((:NAME . "PGFRA_HUMAN") (:DB--REFS (:+UP+ . "P16234") (:+TEXT+ . "PDGF receptors"))))
      ((:NAME . "PDGFR") (:DB--REFS (:+FPLX+ . "PDGFR") (:+TEXT+ . "PDGF receptors"))))
     ((((:NAME . "KS6B1_HUMAN") (:DB--REFS (:+UP+ . "P23443") (:+TEXT+ . "p70S6K"))))
      ((:NAME . "P70RSK") (:DB--REFS (:+FPLX+ . "P70S6K") (:+TEXT+ . "p70S6K"))))
     ((((:NAME . "PI3-kinase")
        (:DB--REFS (:+XFAM+ . "PF00454") (:+TEXT+ . "phosphatidylinositol 3-kinase"))))
      ((:NAME . "PI3-kinase")
       (:DB--REFS (:+FPLX+ . "PI3K") (:+TEXT+ . "phosphatidylinositol 3-kinase"))))
     ((((:NAME . "RAB") (:DB--REFS (:+FA+ . "03661") (:+TEXT+ . "Rab"))))
      ((:NAME . "RAB") (:DB--REFS (:+FPLX+ . "RAB") (:+TEXT+ . "Rab"))))
     ((((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF-LEF") (:+TEXT+ . "TCFs"))))
      ((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF_LEF") (:+TEXT+ . "TCFs"))))
     ((((:NAME . "FOXO3_HUMAN") (:DB--REFS (:+UP+ . "O43524") (:+TEXT+ . "FoxO"))))
      ((:NAME . "FOXO family") (:DB--REFS (:+FPLX+ . "FOXO") (:+TEXT+ . "FoxO"))))
     ((((:NAME . "FOXO family") (:DB--REFS (:+NCIT+ . "C118892") (:+TEXT+ . "FoxOs"))))
      ((:NAME . "FOXO family") (:DB--REFS (:+FPLX+ . "FOXO") (:+TEXT+ . "FoxOs"))))
     ((((:NAME . "PI3-kinase") (:DB--REFS (:+XFAM+ . "PF00454") (:+TEXT+ . "PI3K"))))
      ((:NAME . "PI3-kinase") (:DB--REFS (:+FPLX+ . "PI3K") (:+TEXT+ . "PI3K"))))
     ((((:NAME . "PCID:6857385") (:DB--REFS (:+PCID+ . "6857385") (:+TEXT+ . "T antigen"))))
      ((:NAME . "t antigen") (:DB--REFS (:+PUBCHEM+ . "6857385") (:+TEXT+ . "T antigen"))))
     ((((:NAME . "caspase") (:DB--REFS (:+NCIT+ . "C18153") (:+TEXT+ . "Caspases"))))
      ((:NAME . "caspase") (:DB--REFS (:+FPLX+ . "Caspase") (:+TEXT+ . "Caspases"))))
     ((((:NAME . "BBC3B_HUMAN") (:DB--REFS (:+UP+ . "Q96PG8") (:+TEXT+ . "Puma"))))
      ((:NAME . "BCL2 binding component 3") (:DB--REFS (:+HGNC+ . "17868") (:+TEXT+ . "Puma"))))
     ((((:NAME . "SCF") (:DB--REFS (:+FA+ . "03513") (:+TEXT+ . "SCF"))))
      ((:NAME . "SCF_HUMAN") (:DB--REFS (:+UP+ . "P21583") (:+TEXT+ . "SCF"))))
     ((((:NAME . "PLCD1_HUMAN") (:DB--REFS (:+UP+ . "P51178") (:+TEXT+ . "phospholipase C"))))
      ((:NAME . "Phospholipase C") (:DB--REFS (:+FPLX+ . "PLC") (:+TEXT+ . "phospholipase C"))))
     ((((:NAME . "CDK") (:DB--REFS (:+NCIT+ . "C17767") (:+TEXT+ . "cdks"))))
      ((:NAME . "CDK") (:DB--REFS (:+FPLX+ . "CDK") (:+TEXT+ . "cdks"))))
     ((((:NAME . "cyclin D") (:DB--REFS (:+TEXT+ . "cyclin D"))))
      ((:NAME . "cyclin D") (:DB--REFS (:+FPLX+ . "Cyclin_D") (:+TEXT+ . "cyclin D"))))
     ((((:NAME . "CAV3_HUMAN") (:DB--REFS (:+UP+ . "P56539") (:+TEXT+ . "caveolin"))))
      ((:NAME . "CAV") (:DB--REFS (:+FPLX+ . "CAV") (:+TEXT+ . "caveolin"))))
     ((((:NAME . "PCID:247304") (:DB--REFS (:+PCID+ . "247304") (:+TEXT+ . "ECs"))))
      ((:NAME . "ecs") (:DB--REFS (:+PUBCHEM+ . "247304") (:+TEXT+ . "ECs"))))
     ((((:NAME . "E3 ligase") (:DB--REFS (:+XFAM+ . "PF12483") (:+TEXT+ . "ubiquitin ligase"))))
      ((:NAME . "E3 ligase") (:DB--REFS (:+FPLX+ . "E3_Ub_ligase") (:+TEXT+ . "ubiquitin ligase"))))
     ((((:NAME . "cyclin E") (:DB--REFS (:+TEXT+ . "cyclin E"))))
      ((:NAME . "cyclin E") (:DB--REFS (:+FPLX+ . "Cyclin_E") (:+TEXT+ . "cyclin E"))))
     ((((:NAME . "PCID:2051") (:DB--REFS (:+PCID+ . "2051") (:+TEXT+ . "AG1478"))))
      ((:NAME . "ag 1478") (:DB--REFS (:+PUBCHEM+ . "2051") (:+TEXT+ . "AG1478"))))
     ((((:NAME . "KRT_CEREL") (:DB--REFS (:+UP+ . "P86498") (:+TEXT+ . "keratin"))))
      ((:NAME . "keratin") (:DB--REFS (:+TEXT+ . "keratin"))))
     ((((:NAME . "Jun") (:DB--REFS (:+FA+ . "00409") (:+TEXT+ . "Jun"))))
      ((:NAME . "JUN") (:DB--REFS (:+FPLX+ . "JUN_family") (:+TEXT+ . "Jun"))))
     ((((:NAME . "ESR1_HUMAN") (:DB--REFS (:+UP+ . "P03372") (:+TEXT+ . "estrogen receptor"))))
      ((:NAME . "estrogen receptor") (:DB--REFS (:+FPLX+ . "ESR") (:+TEXT+ . "estrogen receptor"))))
     ((((:NAME . "SOAT1_HUMAN") (:DB--REFS (:+UP+ . "P35610") (:+TEXT+ . "STAT"))))
      ((:NAME . "STAT") (:DB--REFS (:+FPLX+ . "STAT") (:+TEXT+ . "STAT"))))
     ((((:NAME . "α-catenin") (:DB--REFS (:+TEXT+ . "α-catenin"))))
      ((:NAME . "α-catenin") (:DB--REFS (:+FPLX+ . "CTNNA") (:+TEXT+ . "α-catenin"))))
     ((((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF-LEF") (:+TEXT+ . "TCF"))))
      ((:NAME . "TCF-LEF") (:DB--REFS (:+FPLX+ . "TCF_LEF") (:+TEXT+ . "TCF"))))
     ((((:NAME . "BBC3B_HUMAN") (:DB--REFS (:+UP+ . "Q96PG8") (:+TEXT+ . "PUMA"))))
      ((:NAME . "BCL2 binding component 3") (:DB--REFS (:+HGNC+ . "17868") (:+TEXT+ . "PUMA"))))
     ((((:NAME . "CCNA2_HUMAN") (:DB--REFS (:+UP+ . "P20248") (:+TEXT+ . "cyclin A"))))
      ((:NAME . "cyclinA") (:DB--REFS (:+FPLX+ . "Cyclin_A") (:+TEXT+ . "cyclin A"))))
     ((((:NAME . "EGFR_HUMAN") (:DB--REFS (:+UP+ . "P00533") (:+TEXT+ . "ErbB"))))
      ((:NAME . "ERBB") (:DB--REFS (:+FPLX+ . "ERBB") (:+TEXT+ . "ErbB"))))
     ((((:NAME . "GSK3B_HUMAN") (:DB--REFS (:+UP+ . "P49841") (:+TEXT+ . "GSK-3α"))))
      ((:NAME . "GSK3A_HUMAN") (:DB--REFS (:+UP+ . "P49840") (:+TEXT+ . "GSK-3α"))))
     ((((:NAME . "E3 ligase") (:DB--REFS (:+XFAM+ . "PF12483") (:+TEXT+ . "E3 ligase"))))
      ((:NAME . "E3 ligase") (:DB--REFS (:+FPLX+ . "E3_Ub_ligase") (:+TEXT+ . "E3 ligase"))))
     ((((:NAME . "Rac") (:DB--REFS (:+FA+ . "03066") (:+TEXT+ . "Rac"))))
      ((:NAME . "Rac") (:DB--REFS (:+FPLX+ . "RAC") (:+TEXT+ . "Rac"))))
     ((((:NAME . "Fibroblast growth factor receptor")
        (:DB--REFS (:+NCIT+ . "C17297") (:+TEXT+ . "FGF receptors"))))
      ((:NAME . "Fibroblast growth factor receptor")
       (:DB--REFS (:+FPLX+ . "FGFR") (:+TEXT+ . "FGF receptors"))))
     ((((:NAME . "Cyclins") (:DB--REFS (:+FA+ . "00815") (:+TEXT+ . "cyclin"))))
      ((:NAME . "Cyclin") (:DB--REFS (:+FPLX+ . "Cyclin") (:+TEXT+ . "cyclin"))))
     ((((:NAME . "Rho") (:DB--REFS (:+FA+ . "03668") (:+TEXT+ . "Rho"))))
      ((:NAME . "Rho") (:DB--REFS (:+FPLX+ . "RHO") (:+TEXT+ . "Rho"))))
     ((((:NAME . "ATM_HUMAN") (:DB--REFS (:+UP+ . "Q13315") (:+TEXT+ . "ATM"))))
      ((:NAME . "ATM_HUMAN") (:DB--REFS (:+UP+ . "Q13315") (:+TEXT+ . "ATM")))
      ((:NAME . "ATM_HUMAN") (:DB--REFS (:+UP+ . "Q13315") (:+TEXT+ . "ATM"))
       (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
     ((((:NAME . "ETS") (:DB--REFS (:+FA+ . "01142") (:+TEXT+ . "Ets"))))
      ((:NAME . "ETS") (:DB--REFS (:+FPLX+ . "ETS") (:+TEXT+ . "Ets"))))
     ((((:NAME . "SHC1_HUMAN") (:DB--REFS (:+UP+ . "P29353") (:+TEXT+ . "Shc"))))
      ((:NAME . "SHC") (:DB--REFS (:+FPLX+ . "SHC") (:+TEXT+ . "Shc"))))
     ((((:NAME . "HDAC") (:DB--REFS (:+NCIT+ . "C16682") (:+TEXT+ . "HDACs"))))
      ((:NAME . "HDAC") (:DB--REFS (:+FPLX+ . "HDAC") (:+TEXT+ . "HDACs"))))
     ((((:NAME . "RGRF1_HUMAN") (:DB--REFS (:+UP+ . "Q13972") (:+TEXT+ . "cdc25"))))
      ((:NAME . "CDC25") (:DB--REFS (:+FPLX+ . "CDC25") (:+TEXT+ . "cdc25"))))
     ((((:NAME . "CIPA_CLOTH") (:DB--REFS (:+UP+ . "Q06851") (:+TEXT+ . "cohesin"))))
      ((:NAME . "cohesin") (:DB--REFS (:+FPLX+ . "Cohesin") (:+TEXT+ . "cohesin"))))
     ((((:NAME . "SMC1A_HUMAN") (:DB--REFS (:+UP+ . "Q14683") (:+TEXT+ . "Smc1"))))
      ((:NAME . "SMC1") (:DB--REFS (:+FPLX+ . "SMC1") (:+TEXT+ . "Smc1"))))
     ((((:NAME . "ATC1_YEAST") (:DB--REFS (:+UP+ . "P13586") (:+TEXT+ . "Scc1"))))
      ((:NAME . "RAD21_HUMAN") (:DB--REFS (:+UP+ . "O60216") (:+TEXT+ . "Scc1"))))
     ((((:NAME . "HDAC") (:DB--REFS (:+NCIT+ . "C16682") (:+TEXT+ . "HDAC"))))
      ((:NAME . "HDAC") (:DB--REFS (:+FPLX+ . "HDAC") (:+TEXT+ . "HDAC"))))
     ((((:NAME . "CaMK") (:DB--REFS (:+FA+ . "03072") (:+TEXT+ . "CaMKs"))))
      ((:NAME . "CaMK") (:DB--REFS (:+FPLX+ . "CAMK") (:+TEXT+ . "CaMKs"))))
     ((((:NAME . "SRC_HUMAN") (:DB--REFS (:+UP+ . "P12931") (:+TEXT+ . "Src")))
       ((:NAME . "SRC_HUMAN") (:DB--REFS (:+UP+ . "P12931") (:+TEXT+ . "Src"))
        (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
      ((:NAME . "SRC_HUMAN") (:DB--REFS (:+UP+ . "P12931") (:+TEXT+ . "Src"))))
     ((((:NAME . "P53_HUMAN") (:DB--REFS (:+UP+ . "P04637") (:+TEXT+ . "p53"))))
      ((:NAME . "P53_HUMAN") (:DB--REFS (:+UP+ . "P04637") (:+TEXT+ . "p53")))
      ((:NAME . "P53_HUMAN") (:DB--REFS (:+UP+ . "P04637") (:+TEXT+ . "p53"))
       (:MOD--CONDITIONS (:MOD--TYPE . "phosphorylation") (:IS--MODIFIED . "true"))))
     ((((:NAME . "PDGF") (:DB--REFS (:+FPLX+ . "PDGF") (:+TEXT+ . "PDGF"))))
      ((:NAME . "PDGFA_HUMAN") (:DB--REFS (:+UP+ . "P04085") (:+TEXT+ . "PDGF"))))
     ((((:NAME . "Cyclins") (:DB--REFS (:+FA+ . "00815") (:+TEXT+ . "cyclins"))))
      ((:NAME . "Cyclin") (:DB--REFS (:+FPLX+ . "Cyclin") (:+TEXT+ . "cyclins"))))
     ((((:NAME . "CHEBI:73965") (:DB--REFS (:+CHEBI+ . "73965") (:+TEXT+ . "PGE 2"))))
      ((:NAME . "pge 2") (:DB--REFS (:+CHEBI+ . "73965") (:+TEXT+ . "PGE 2"))))
     
     (((:NAME . "WNT5B_DANRE") (:DB--REFS (:+UP+ . "Q92050") (:+TEXT+ . "Wnt-5"))) (:NAME . "WNT-5")
      (:DB--REFS (:+TEXT+ . "Wnt-5")))
     (((:NAME . "PCID:6993105") (:DB--REFS (:+PCID+ . "6993105") (:+TEXT+ . "hh"))) (:NAME . "hh")
      (:DB--REFS (:+PUBCHEM+ . "6993105") (:+TEXT+ . "hh")))
     (((:NAME . "PCID:313") (:DB--REFS (:+PCID+ . "313") (:+TEXT+ . "Cl"))) (:NAME . "Chlorine atom")
      (:DB--REFS (:+CHEBI+ . "23116") (:+TEXT+ . "Cl")))
     (((:NAME . "HDAC") (:DB--REFS (:+NCIT+ . "C16682") (:+TEXT+ . "histone deacetylase")))
      (:NAME . "HDAC") (:DB--REFS (:+FPLX+ . "HDAC") (:+TEXT+ . "histone deacetylase")))
     (((:NAME . "IFNG_HUMAN") (:DB--REFS (:+UP+ . "P01579"))) (:NAME . "ES1_HUMAN")
      (:DB--REFS (:+UP+ . "P30042")))
     (((:NAME . "ARC1B_HUMAN") (:DB--REFS (:+UP+ . "O15143") (:+TEXT+ . "Arp2/3"))) (:NAME . "Arp2/3")
      (:DB--REFS (:+FPLX+ . "Arp2_3_protein") (:+TEXT+ . "Arp2/3")))
     (((:NAME . "PCID:6995653") (:DB--REFS (:+PCID+ . "6995653") (:+TEXT+ . "ES"))) (:NAME . "es")
      (:DB--REFS (:+PUBCHEM+ . "6995653") (:+TEXT+ . "ES")))
     (((:NAME . "PCID:104810") (:DB--REFS (:+PCID+ . "104810") (:+TEXT+ . "BA"))) (:NAME . "barium")
      (:DB--REFS (:+PUBCHEM+ . "104810") (:+TEXT+ . "BA")))
     (((:NAME . "PCID:7019993") (:DB--REFS (:+PCID+ . "7019993") (:+TEXT+ . "NVs"))) (:NAME . "nv")
      (:DB--REFS (:+PUBCHEM+ . "7019993") (:+TEXT+ . "NVs")))
     (((:NAME . "ADA17_HUMAN") (:DB--REFS (:+UP+ . "P78536") (:+TEXT+ . "TNF-α")))
      (:NAME . "TNFA_HUMAN") (:DB--REFS (:+UP+ . "P01375") (:+TEXT+ . "TNF-α")))
     (((:NAME . "CDK") (:DB--REFS (:+NCIT+ . "C17767") (:+TEXT+ . "CDK"))) (:NAME . "CDK")
      (:DB--REFS (:+FPLX+ . "CDK") (:+TEXT+ . "CDK")))
     (((:NAME . "PCID:9858135") (:DB--REFS (:+PCID+ . "9858135") (:+TEXT+ . "LVs"))) (:NAME . "lv")
      (:DB--REFS (:+PUBCHEM+ . "6993116") (:+TEXT+ . "LVs")))
     (((:NAME . "TSPO_HUMAN") (:DB--REFS (:+UP+ . "P30536") (:+TEXT+ . "benzodiazepine receptor")))
      (:NAME . "translocator protein")
      (:DB--REFS (:+HGNC+ . "1158") (:+TEXT+ . "benzodiazepine receptor")))
     (((:NAME . "PCID:3019") (:DB--REFS (:+PCID+ . "3019") (:+TEXT+ . "diazoxide")))
      (:NAME . "diazoxide") (:DB--REFS (:+PUBCHEM+ . "3019") (:+TEXT+ . "diazoxide")))
     (((:NAME . "NOS_ANOST") (:DB--REFS (:+UP+ . "O61608") (:+TEXT+ . "nitric oxide synthase")))
      (:NAME . "NOS") (:DB--REFS (:+FPLX+ . "NOS") (:+TEXT+ . "nitric oxide synthase")))
     (((:NAME . "tubulin") (:DB--REFS (:+PR+ . "000028799") (:+TEXT+ . "tubulin"))) (:NAME . "tubulin")
      (:DB--REFS (:+FPLX+ . "Tubulin") (:+TEXT+ . "tubulin")))
     (((:NAME . "PCID:145068") (:DB--REFS (:+PCID+ . "145068") (:+TEXT+ . "nitric oxide")))
      (:NAME . "nitroxyl") (:DB--REFS (:+PUBCHEM+ . "145068") (:+TEXT+ . "nitric oxide")))
     (((:NAME . "Glutathione S-transferase") (:DB--REFS (:+GO+ . "0004364") (:+TEXT+ . "GST")))
      (:NAME . "Glutathione S-transferase") (:DB--REFS (:+FPLX+ . "GST") (:+TEXT+ . "GST")))
     (((:NAME . "cyclin E") (:DB--REFS (:+TEXT+ . "Cyclin E"))) (:NAME . "Cyclin E")
      (:DB--REFS (:+TEXT+ . "Cyclin E")))
     (((:NAME . "PCID:7019108") (:DB--REFS (:+PCID+ . "7019108") (:+TEXT+ . "WD"))) (:NAME . "wd")
      (:DB--REFS (:+PUBCHEM+ . "7019108") (:+TEXT+ . "WD")))
     (((:NAME . "CHEBI:72564") (:DB--REFS (:+CHEBI+ . "72564") (:+TEXT+ . "TMZ"))) (:NAME . "tmz")
      (:DB--REFS (:+CHEBI+ . "72564") (:+TEXT+ . "TMZ")))
     (((:NAME . "caspase") (:DB--REFS (:+NCIT+ . "C18153") (:+TEXT+ . "caspases"))) (:NAME . "caspase")
      (:DB--REFS (:+FPLX+ . "Caspase") (:+TEXT+ . "caspases")))
     (((:NAME . "TGF-beta") (:DB--REFS (:+FA+ . "03989") (:+TEXT+ . "TGF-β"))) (:NAME . "TGF-beta")
      (:DB--REFS (:+FPLX+ . "TGFB") (:+TEXT+ . "TGF-β")))
     (((:NAME . "Rac") (:DB--REFS (:+FA+ . "03066") (:+TEXT+ . "AKT"))) (:NAME . "AKT")
      (:DB--REFS (:+FPLX+ . "AKT") (:+TEXT+ . "AKT")))
     (((:NAME . "heat shock protein 70") (:DB--REFS (:+TEXT+ . "heat shock protein 70")))
      (:NAME . "HSP70") (:DB--REFS (:+NCIT+ . "C17765") (:+TEXT+ . "heat shock protein 70")))
     (((:NAME . "TNNT_CAEEL") (:DB--REFS (:+UP+ . "Q27371") (:+TEXT+ . "troponin")))
      (:NAME . "troponin") (:DB--REFS (:+FPLX+ . "Troponin") (:+TEXT+ . "troponin")))
     (((:NAME . "NOS_ANOST") (:DB--REFS (:+UP+ . "O61608") (:+TEXT+ . "NOS"))) (:NAME . "NOS")
      (:DB--REFS (:+FPLX+ . "NOS") (:+TEXT+ . "NOS")))
     (((:NAME . "mitogen activated protein kinase")
       (:DB--REFS (:+PR+ . "000000019") (:+TEXT+ . "MAPK")))
      (:NAME . "mitogen activated protein kinase") (:DB--REFS (:+FPLX+ . "MAPK") (:+TEXT+ . "MAPK")))
     (((:NAME . "mitogen activated protein kinase")
       (:DB--REFS (:+PR+ . "000000019") (:+TEXT+ . "MAPKs")))
      (:NAME . "mitogen activated protein kinase") (:DB--REFS (:+FPLX+ . "MAPK") (:+TEXT+ . "MAPKs"))))
   hms :test #'equal))

(defun db-ref-text (sexpr)
  (cdr (assoc :+text+
         (cdr (assoc :db--refs sexpr)))))


(defun normalized-hms-sift-diffs (indras)
  (loop for ii in indras
        when (loop for ss in (safe-prop :compared ii)
                   when (and (safe-prop :hms ss) (safe-prop :sift ss)) collect (safe-prop :hms ss))
        append 
          (let ((pmc-result
                 (list (car ii)
                       (loop for ss in (safe-prop :compared ii)
                             when (and (safe-prop :hms ss)(safe-prop :sift ss))
                             append
                               (let ((result
                                      (list (car ss)
                                            :hms 
                                            (remove-duplicates
                                             (remove-excess+texts
                                              (loop for hm in (safe-prop :hms ss)
                                                    unless (member hm (safe-prop :sift ss) :test #'equal)
                                                    collect hm))
                                             :test #'equal)
                                            :sift            
                                            (remove-duplicates
                                 
                                             (loop for sift in (safe-prop :sift ss)
                                                   unless (member sift (safe-prop :hms ss) :test #'equal)
                                                   collect sift)
                                             :test #'equal))))
                                 (when (or (second (member :hms result))(second (member :sift result)))
                                   (list result)))))))
            (when (second pmc-result)
              (list pmc-result))))
  )

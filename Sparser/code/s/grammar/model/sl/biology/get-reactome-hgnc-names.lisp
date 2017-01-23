(in-package :sparser)

;;;;;; get HGNC and Reactome protein names


(defparameter *hgnc-big-ht* (make-hash-table :size 1000000 :test #'equal)
  "hgnc name-strings -> HGNC id-pairs")
(defparameter *hgnc-ids* nil
  "defined in hgnc-with-ids-2.lisp")
(defparameter *hgnc-ids->names* (make-hash-table :size 40000 :test #'equal)
  "map hgnc id -> all hgnc names for that id") 
(defparameter *hgnc-mults* nil) ;;which hgnc name strings are ambiguous wrt hgnc identifiers

(defparameter *protein-expansions* nil)
(defparameter *protein-names* nil)
(defparameter *reactome-names* nil)
(defparameter *reactome-hgnc-normalized-ht* (make-hash-table :size 50000 :test #'equal)
  "map reactome ids to zero or more HGNC id pairs")
(defparameter *reactome-protein-ht* (make-hash-table :size 40000 :test #'equal))
(defparameter *reactome-proteins* nil)

(defparameter *ambig-protein-names* nil)
(defparameter *known-proteins* nil)
(defparameter *unknown-proteins* nil)
(defparameter *all-prots* (make-hash-table :size 200000 :test #'equalp))

(defparameter *voc-ht* (make-hash-table :size 30000 :test #'equal))

;; HGNC engtries have the following fields
;; ("Approved Symbol" "HGNC ID" ("Approved Name") ("Previous Symbols") ("Previous Name") ("Synonyms") ("Name Synonyms") ("Pubmed IDs") ("UniProt ID(supplied by UniProt)"))
(defun hgnc-approved-symbol (g) (first g))
(defun hgnc-id (g) (second g))
(defun hgnc-approved-name (g) (third g))
(defun hgnc-previous-symbols (g) (fourth g))
(defun hgnc-previous-name (g) (fifth g))
(defun hgnc-synonyms (g) (sixth g))
(defun hgnc-name-synonyms (g) (seventh g))
(defun hgnc-pubmed-ids (g) (eighth g))
(defun hgnc-uniprot-id (g) (ninth g))

(defmacro lsetq (var val)
  `(length (setq ,var ,val)))

(defun define-reactome-hgnc-proteins ()
  (loop for dd in (setq *rhgnc-defs* (merge-hgnc-equivalents))
        do
          (unless (or (resolve (string-downcase (car dd)))
                      (resolve (car dd)))
            (let ((def
                   `(,(car dd)
                      ,.(loop for w in (cdr dd)
                              ;; don't redefine existing words like "was"
                              append
                                (if (or (resolve w) (resolve (string-downcase w)))
                                    nil
                                    (list w))))))
              (eval `(define-singular-protein ,(car def) ,def))))))

(defparameter *non-hgnc-reactome-proteins* nil)

(defun merge-hgnc-equivalents (&optional voc-lists)
  (clrhash *voc-ht*)
  (unless voc-lists
    (get-reactome-proteins)
    (lsetq voc-lists (mapcar #'all-protein-names *reactome-proteins*)))
  (loop for voc in voc-lists
        do
          (when (not (gethash (car voc) *hgnc-ids->names*))
              (setq voc (make-reactome-voc-item voc)))
          (setf (gethash (car voc) *voc-ht*)
                (merge-voc-lists voc (gethash (car voc) *voc-ht*))))
  (let ((def-items
         (sort
          (loop for key being the hash-keys of *voc-ht*
                collect (gethash key *voc-ht*))
          #'string<
          :key #'car)))
    (setq *non-hgnc-reactome-proteins*
          (loop for di in def-items
                unless (gethash (car di) *hgnc-ids->names*)
                collect (remove nil di)))    
    (setq def-items
          (remove nil
                  (loop for di in def-items
                        ;;when (gethash (car di) *hgnc-ids->names*)
                        collect (remove nil di))))
    (loop for d in def-items
          do (loop for dw in d do
                     (setf (gethash dw *all-prots*)
                           (car d))))
    def-items))

(defun make-reactome-voc-item (voc)
  (setq voc (mapcar #'pname voc))
  (append (loop for v in voc when (eq 0 (search "PROTEIN" v)) collect v)
          (loop for v in voc unless (eq 0 (search "PROTEIN" v)) collect v)))

(defun merge-voc-lists (voc-list existing)
  (let (reactome-ids others)
    (loop for item in
            (remove-duplicates
             (append (cddr voc-list)
                     (cddr existing))
             :test #'equal)
          do (if (search "PROTEIN" item)
                 (push item reactome-ids)
                 (push item others)))
    `(,(car voc-list)
       ,(second voc-list)
       ,@(sort others #'string<)
       ,@reactome-ids)))




(defun save-hgnc-ids ()
  "load all human gene protein vocabulary from HGNC"
  (unless (> (hash-table-count *hgnc-big-ht*) 0)
    (load "~/projects/cwc-integ/sparser/sparser/code/s/grammar/model/sl/biology/not-loaded/hgnc/hgnc-with-ids-2.lisp")
    (loop for hgnc in (cdr *hgnc-ids*) do (save-names hgnc))
    ;; find out which hgnc name strings are ambiguous wrt hgnc identifiers
    (hgnc-mults (hal *hgnc-big-ht*))))

(defun save-names (hgnc)
  "Loop through all the name elements in the HGNC name list for a protein/gene and link each of them to the list"
  (let ((hgnc-ids (list (car hgnc) (caar (last hgnc))))
        (names (hgnc-names hgnc)))
    (loop for name in names do (add-hgnc-ids name hgnc-ids)) ;; sets up *hgnc-big-ht*
    (loop for name in hgnc-ids
          do (setf (gethash name *hgnc-ids->names*) (copy-list names)))))


;; ("Approved Symbol" "HGNC ID" ("Approved Name") ("Previous Symbols") ("Previous Name") ("Synonyms") ("Name Synonyms") ("Pubmed IDs") ("UniProt ID(supplied by UniProt)"))

(defun hgnc-names (g)
  (remove nil
          `(,(hgnc-approved-symbol g)
             ,(hgnc-id g)
             ,@(hgnc-approved-name g)
             ,@(hgnc-previous-symbols g)
             ,@(hgnc-previous-name g)
             ,@(hgnc-synonyms g)
             ,@(hgnc-name-synonyms g)
             ,@(hgnc-uniprot-id g))))

(defun add-hgnc-ids (name hgnc-ids)
  (pushnew hgnc-ids (gethash name *hgnc-big-ht*) :test #'equal))
  
(defun hgnc-mults (hgnc-list)
  "find out which hgnc name strings are ambiguous wrt hgnc identifiers"
  (lsetq *hgnc-mults* (loop for x in hgnc-list when (cddr x) collect x))
  (lsetq *hgnc-mults* (sort *hgnc-mults* #'string< :key #'car)))

(defun get-reactome-proteins ()
  (save-hgnc-ids)
  (lsetq *reactome-names*
         (get-forms-from-file
          "~/projects/cwc-integ/sparser/sparser/code/s/grammar/model/sl/biology/not-loaded/reactome/homo-sapiens/all-names.lisp"))

  (loop for x in *reactome-names*
        when (search "PROTEIN" (pname (second x)))
        do (loop for name-elt in (reactome-name-elts (third x))
                 do (pushnew name-elt (gethash (second x) *reactome-protein-ht*) :test #'equal)))

  (lsetq *reactome-proteins* (mapcar #'car (hal *reactome-protein-ht*)))
  (lsetq *protein-names* (hal *reactome-protein-ht*))
  (lsetq *protein-expansions* (reactome-hgnc-normalize-proteins *protein-names*))
  
  (loop for p in *PROTEIN-EXPANSIONS*
        do (cond ((null (cdr p)) (push p *unknown-proteins*))
                 ((cddr p) (push p *ambig-protein-names*))
                 ((cdr p) (push p *known-proteins*))))
  (lsetq *ambig-protein-names* (sort *ambig-protein-names* #'string< :key #'car)))

(defun reactome-name-elts (item)
  (when (stringp item)
    (if (and (search "UniProt:" item) (search " " item))
        ;; this is a composite name in reactome, with uniprot ID and a name
        (list item
              (get-uniprot-name-from-reactome item)
              (get-non-uniprot-name-from-reactome item))
        (list item))))

(defun get-uniprot-name-from-reactome (item)
  (subseq item 8 (search " " item)))

(defun get-non-uniprot-name-from-reactome (item)
  (subseq item (+ 1 (search " " item))))

(defun reactome-names-for (reactome-id)
  (gethash reactome-id *reactome-protein-ht*))

(defun get-reactome-names (reactome-id)
  (gethash reactome-id *reactome-protein-ht*))
  

(defun reactome-hgnc-normalize-proteins (*protein-names*)
  (loop for pn in *protein-names*
        collect (cons (car pn) (reactome-hgnc-normalize-protein-name pn))))

(defun reactome-hgnc-normalize-protein-name (pn)
  (or
   (gethash (car pn) *reactome-hgnc-normalized-ht*)
   (setf (gethash (car pn) *reactome-hgnc-normalized-ht*)
         (unique-hgnc-ids pn))))

(defun unique-hgnc-ids (reactome-names)
  (remove-duplicates
   (loop for n in (cdr reactome-names)
          as hgnc-val = (gethash n *hgnc-big-ht*)
          when (consp hgnc-val)
         append hgnc-val)
   :test #'equal))

(defun all-protein-names (reactome-id)
  (if (cddr (gethash reactome-id *reactome-hgnc-normalized-ht*))
      `(,reactome-id *ambiguous*)
      (let (hgnc-ids)
        (loop for h in (gethash reactome-id *reactome-hgnc-normalized-ht*)
              do (pushnew h hgnc-ids :test #'equal))
        (when (null (cdr hgnc-ids))
          ;; unambiguous case
          (setq hgnc-ids (car hgnc-ids))
          (let ((names (sort
                        (remove-duplicates
                         (append (get-reactome-names reactome-id)
                                 (loop for h in hgnc-ids append (gethash h *hgnc-ids->names*)))
                         :test #'equal)
                        #'string<)))
            `(,@hgnc-ids
              ,@ (remove (car hgnc-ids)
                         (remove (second hgnc-ids)
                                 names))
              ,(pname reactome-id)))))))
         

(defun run-reactome-comments ()
  (let ((ct 0))
    (for-forms-in-file
     "/Users/rusty/projects/r3/corpus/text-from-biopax/homo-sapiens/all-comments.lisp"
     #'(lambda (c-trip)
         (print (list (second c-trip) (incf ct)))
         (safe-parse (third c-trip))))))

;;; ------- Useful utility functions
(defun get-forms-from-file (filename)
  (with-open-file (stream filename)
    (loop for form = (read stream nil)
          while form
          collect form)))

(defun for-forms-in-file (filename fn)
  (with-open-file (stream filename)
    (loop for form = (read stream nil)
          while form
          do (funcall fn form))))

;;; ---------
(defun not-protein? (g)
  (or
   #+ignore ;; knocked out some real proteins
   (and (null (hgnc-previous-symbols g))
        (null (hgnc-previous-name g))
        (null (hgnc-previous-symbols g))
        (null (hgnc-name-synonyms g)))
   (loop for name in (hgnc-names g) thereis
           (or (equal "RNA" name)
               (loop for str in
                       '(
                         "alpha joining"
                         "alpha locus"
                         "alpha variable"
                         "antisense"
                         "beta joining"
                         "beta locus"
                         "beta variable"
                         "delta joining"
                         "delta locus"
                         "delta variable"
                         "duplicated region"
                         "gamma joining"
                         "gamma locus"
                         "gamma variable"
                         "host gene"
                         "kappa joining"
                         "kappa variable"
                         "lambda joining"
                         "lambda variable"
                         ;;"lncRNA"
                         "microRNA"
                         "mitochondrially encoded"
                         ;;"non-protein coding RNA"
                         ;;"pseudogene"
                         "small ILF3/NF90-associated RNA"
                         "small nucleolar RNA"
                         ;;"tRNA"
                         "transcription factor binding site"
                         ;;"transfer RNA"
                         )
                     thereis (search str name))))))

(defparameter *reactome-display-names-ht* (make-hash-table :test #'equal))
(defparameter *reactome-comments-ht* (make-hash-table :test #'equal))
(defparameter *active-entity-display-names* nil)
(defparameter *active-entity-comments* nil)

(defun get-reactome-active ()
  (load "~/projects/cwc-integ/sparser/sparser/code/s/grammar/model/sl/biology/not-loaded/reactome/homo-sapiens/active-mentions.lisp")
  (for-forms-in-file
   "~/projects/cwc-integ/sparser/sparser/code/s/grammar/model/sl/biology/not-loaded/reactome/homo-sapiens/all-display-names.lisp"
   #'(lambda (trip) (push (third trip) (gethash (second trip) *reactome-display-names-ht*))))
  (for-forms-in-file
   "~/projects/cwc-integ/sparser/sparser/code/s/grammar/model/sl/biology/not-loaded/reactome/homo-sapiens/all-comments.lisp"
   #'(lambda (trip) (push (third trip) (gethash (second trip) *reactome-comments-ht*))))
  (lsetq *active-entity-display-names*
         (loop for e in (append *active-entities* *active-parts*  *activation-reactions* *transcription-activation-reactions*)
               collect `(,e ,(gethash e *reactome-display-names-ht*))))
  (lsetq *active-entity-comments*
         (loop for e in (append *active-entities* *active-parts*  *activation-reactions* *transcription-activation-reactions*)
               collect `(,e ,(gethash e *reactome-comments-ht*))))
  
  )

;; (define-reactome-hgnc-proteins)(setq *collect-ns-examples* (list nil))(get-reactome-active)(loop for x in *active-entity-display-names* do (p (car (second x))))

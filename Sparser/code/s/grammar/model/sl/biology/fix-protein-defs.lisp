(in-package :sparser)

(defparameter *non-upa-upm* nil
  "Will be filled with any proteins whose current ID isn't a UPA or UPM ID")

(defparameter *new-protein-defs* nil)
(defvar *upa-key-upm-val*)
(defvar *upm-key-upa-val*)
(defvar *hgnc-up-ht*)

(defparameter *protein-family-ht* (make-hash-table :size 100000 :test #'equal))
(defun get-protein-family-ht (defs)
  (clrhash *protein-family-ht*)
  (loop for def in defs do (record-protein-id-for-synonyms def))
  *protein-family-ht*)

(defun record-protein-id-for-synonyms (form &aux (def (car form))(id (second form)))
  (when (eq def 'define-protein)
    (loop for wd in (cons id (third form))
          do
         (pushnew id (gethash wd *protein-family-ht*) :test #'equal))))


(defun read-and-replace-protein-defs (&key (protein-file "standardized-protein-defs-complete.lisp") 
                                        upa-ht 
                                        upm-ht
                                        (output-file "standardized-protein-defs-new.lisp")
                                        (non-upa-file "non-upa-upm-proteins-new.lisp"))

  "Taking an input list of the existing proteins and hash tables using
UPA ID (Uniprot Accession number) as keys and UPM ID (Uniprot
Mnemonic) as keys, output a file that has all proteins whose IDs are
in the hash table changed to have \"UP:$UPA\" as their ID and the UPA
and UPM in their alternate names field -- if the ID isn't a UPA or UPM
it outputs it to the non-upa-file"
  (unless (and upa-ht upm-ht)
    (unless (boundp '*upa-key-upm-val*)
      (load
       (concatenate 'string "sparser:bio;"
                    "uniprot-accession-id-mnemonic.lisp")))
    (setq upa-ht (or upa-ht *upa-key-upm-val*))
    (setq upm-ht (or upa-ht *upm-key-upa-val*)))

  (unless (boundp '*hgnc-up-ht*)
    (load (concatenate 'string "sparser:bio-not-loaded;"
                       "hgnc;hgnc-with-ids-2.lisp")))

  (let* ((new-defs (read-and-normalize-protein-defs :protein-file protein-file
                                                    :upa-ht upa-ht
                                                    :upm-ht upm-ht)))
    (setq *new-protein-defs* (merge-duplicates-and-separate-families new-defs))
    
    (unless (and (eq output-file t)
                 (eq non-upa-file t))
      ;; the two files must be opened and superseded at the top of the loop
      ;;  so that we can re-run the code and generate new files
      ;;  without items from old files hanging around
      (output-protein-defs-to-files *new-protein-defs* output-file non-upa-file)
      output-file)))

(defparameter *duplicate-protein-ht* (make-hash-table :size 30000 :test #'equal))

(defun merge-duplicates-and-separate-families (defs)
  (let (non-standard-defs merged-defs protein-family-ht)
    (loop for def in defs
          do
            (case (car def)
              (define-protein
               (setf (gethash (second def) *duplicate-protein-ht*)
                     (merge-protein-defs
                      def
                      (gethash (second def) *duplicate-protein-ht*))))
              (t (push def non-standard-defs))))
    (setq merged-defs (sort (mapcar #'(lambda (x)
                                        (strip-explicit-ids-and-downcase (cdr x)))
                                    (hal *duplicate-protein-ht*)) #'string< :key #'second))
    (setq protein-family-ht (get-protein-family-ht merged-defs))
    (setq merged-defs
          (append
           (loop for def in merged-defs
                 collect (remove-family-names def protein-family-ht))
           (loop for def in non-standard-defs
                 collect (remove-family-names def protein-family-ht))))
    (append merged-defs
            (sort
             (merge-family-defs
              (loop for fam in (hal protein-family-ht)
                   when (cddr fam)
                   collect `(def-family ,(car fam) :members ,(sort (cdr fam) #'string<))))
             #'string< :key #'car))))

(defun merge-family-defs (fam-defs)
  (let ((fam-ht (make-hash-table :size 500 :test #'equal)))
    (loop for def in fam-defs
          do
            (push (second def) (gethash (fourth def) fam-ht)))
    (loop for fd in (hal fam-ht)
          collect
            `(def-family
                 ,(cadr fd)
                 :members
               ,(car fd)
               ,.(and (cddr fd)
                      `(:synonyms ,(cddr fd)))))))
               

(defun strip-explicit-ids-and-downcase (def)
  `(,(car def) ,(second def)
     ,(put-reactome-ids-at-end
       (remove-duplicates
        (loop for alt in (third def)
              unless
                (or (null alt) (search ":" alt))
              collect
                (if (equal (subseq alt 1 nil) (subseq (string-downcase alt) 1 nil))
                    ;; drop initial caps
                    (string-downcase alt)
                    alt))
        :test #'equal))))

(defun put-reactome-ids-at-end (wds)
  (nconc (loop for wd in wds unless (eq 0 (search "PROTEIN" wd)) collect wd)
         (loop for wd in wds when (eq 0 (search "PROTEIN" wd)) collect wd)))
  

(defun remove-family-names (def ht)
  `(,(car def) ,(second def)
     ,(loop for alt in (third def)
            unless
              (or (cdr (gethash alt ht))
                  (search ":" alt))
            collect alt)))

(defun merge-protein-defs (def1 def2)
  (if (null def2)
      def1
      `(,(car def1) ,(second def1)
         ,(sort (remove-duplicates (append (third def1) (third def2))
                                   :test #'equal)
                #'string<))))

(defun output-protein-defs-to-files (new-defs output-file-name non-upa-file-name)
  (with-open-file (stream (concatenate 'string "sparser:bio;" output-file-name)
                          :direction :output :if-exists :supersede 
                          :if-does-not-exist :create
                          :external-format :UTF-8)
    (with-open-file (non-upa-stream (concatenate 'string "sparser:bio;" non-upa-file-name)
                                    :direction :output :if-exists :supersede
                                    :if-does-not-exist :create
                                    :external-format :UTF-8)
      (format non-upa-stream "(in-package :sparser)~%~%")
      (format stream "(in-package :sparser)~%~%")
      ;; REMEMBER-- sort is a destructive operation -- you can't safely sort the same variable twice
      (setq new-defs (sort new-defs #'string< :key #'second))
      (loop for def in new-defs
            do
              (case (car def)
                (define-protein (lc-one-line-print def stream))
                (def-family nil)
                (t (lc-one-line-print `(define-protein ,.(cdr def)) non-upa-stream))))
      (loop for def in new-defs
            do
              (case (car def)
                (def-family (lc-one-line-print def stream))
                (t nil))))))


(defun read-and-normalize-protein-defs (&key (protein-file "standardized-protein-defs-complete.lisp") 
                                          (upa-ht *upa-key-upm-val*)
                                          (upm-ht *upm-key-upa-val*))
  "Taking an input list of the existing proteins and hash tables using
UPA ID (Uniprot Accession number) as keys and UPM ID (Uniprot
Mnemonic) as keys, output a list that has all proteins whose IDs are
in the hash table changed to have \"UP:$UPA\" as their ID and the UPA
and UPM in their alternate names field -- if the ID isn't a UPA or UPM
it leaves the entry as is and and adds it to the list *non-upa-upm* to sort out later"
  (let ((input (open (concatenate 'string "sparser:bio;" protein-file)
                     :if-does-not-exist nil)))
    (when input
      (loop for prot = (read input nil)
            while prot
            when (and (stringp (second prot)) (consp (third prot)))
            collect (revise-protein-def prot
                                        :upa-ht *upa-key-upm-val*
                                        :upm-ht *upm-key-upa-val*)))))

(defun revise-protein-def (def
                           &key
                             (upa-ht *upa-key-upm-val*)
                             (upm-ht *upm-key-upa-val*)
                           &aux
                             (prot (second def))
                             (syns (third def)))
  (cond ((eq 0 (search "UP:" prot))
         (non-redundant-def def))
        ((gethash prot upa-ht)
         (rewrite-protein def prot (gethash prot upa-ht)))
        ((gethash prot upm-ht)
         (rewrite-protein def (gethash prot upm-ht) prot))
        ((check-alts-for-UP (cons prot syns))
         (rewrite-protein def (check-alts-for-UP (cons prot syns)) prot))
        (t
         ;; mark this as a definition with a non-standard primary-key
         `(non-standard-define-protein ,.(cdr (non-redundant-def (use-standard-id def)))))))


(defun get-upa-from-symbol (sym)
  (cond ((gethash sym *upa-key-upm-val*) sym)
        ((gethash sym *upm-key-upa-val*))
        ((gethash sym *hgnc-up-ht*))))

(defun use-standard-id (prot)
  (let ((standard
         (or
          (loop for item in (third prot)
                when (eq 0 (search "NCIT:" item))
                do (return item))
          (loop for item in (third prot)
                when (and (search ":" item)
                          (not (search " " item))
                          (not (search "-" item)))
                do (return item))
          (loop for item in (third prot)
                when (eq 0 (search "PROTEIN" item))
                do (return item)))))
    
    `(,(car prot) ,(or standard (second prot))
       ,(loop for item in (third prot)
              collect
                (if (equal item standard)
                    (second prot)
                    item)))))                

(defun rewrite-protein (prot upa upm)
  "Given an existing protein definition, its UPA, UPM and an output
file, prints a new protein definition to that file with the ID as
UP:UPA and adds the UPA and UPM to the alternate names"
  (let* ((orig-alt-names (third prot))
         (alt-names-with-upm (if (member upm orig-alt-names :test #'equal)
                                 orig-alt-names
                                 (push upm orig-alt-names)))
         (defprot (car prot))
         (id (concatenate 'string "UP:" upa))
         (alt-names (if (member upa alt-names-with-upm :test #'equal)
                        alt-names-with-upm
                        (push upa alt-names-with-upm))))
    (setq alt-names (sort (remove-duplicates alt-names :test #'equal)
                          #'string<))
    `(,defprot ,id ,alt-names)))

(defun lc-one-line-print (x stream)
  (let* ((*print-pretty* nil)
         (*print-case* :DOWNCASE))
    (print x stream)))

    
(defun non-redundant-def (prot)
  (setq prot `(,(car prot) ,(second prot)
                ,(sort (remove-duplicates (third prot) :test #'equal) #'string<))))

(defun check-alts-for-UP (alt-names)
  (let (up-names)
    (loop for name in alt-names
          when (or (eq 0 (search "UniProt:" name)) (eq 0 (search "PR:" name)))
          do
            (let ((up-name? (subseq name (+ 1 (search ":" name)) (search " " name))))
              (when (gethash up-name? *upa-key-upm-val*)
                (pushnew up-name? up-names :test #'equal)))
          when (eq 0 (search "UP:" name))
          do
            (let* ((up? (gethash (string-upcase (subseq name 3)) *upa-key-upm-val*)))
              (when up?
                (pushnew  (string-upcase (subseq name 3)) up-names :test #'equal)))
          when (gethash (string-upcase name) *upa-key-upm-val*)
          do
            (pushnew  (string-upcase name) up-names :test #'equal)
          when (and (eq 0 (search "HGNC" name)) (gethash name *hgnc-up-ht*))
          do
            (pushnew (gethash name *hgnc-up-ht*) up-names :test #'equal))
    (when (and up-names (null (cdr up-names)))
      (car up-names))))

(defparameter *filt-trips-defs-ht* (make-hash-table :size 20000 :test #'equal))
(defparameter *filt-trips-defs* nil)
(defparameter *dropped-trips-defs* nil)
(defparameter *2-letter-trips-defs* nil)

(defun too-short-term-p (x)
  (if (or (< (length x) 3)
            (and (eq 3 (length x))
                 (or (eq 1 (or (search "-" x)
                               (search "–" x)
                               (search "‑" x)))
                     (and (eq 2 (search "s" x)) 
                          (upper-case-p (char x 1)))))) 
      t 
      nil))
      
(defparameter *trips-packages* 
  (mapcar #'find-package 
          '(:ont :w :hgnc :up :fa :chebi :lexicon-data :xfam :up :f :ncit :efo :go :cvcl :mesh :bto :co :orphanet :uo :hp :be))) ;list of packages defined in r3/code/package.lisp that are defined in TRIPS, but not Sparser

(defun trips-package-to-string (symbol)
  "Checks if a symbol is from one of the TRIPS only packages defined above, and if so, changes the symbol from PACKAGE::SYMBOL to a string of PACKAGE:SYMBOL, otherwise it just returns the symbol"
  (if (member (symbol-package symbol) *trips-packages*)
    (concatenate 'string (package-name (symbol-package symbol)) ":" (symbol-name symbol))
    symbol))

(defun filter-trips-def (term)
  (cond ((gethash (string-downcase (car term)) *filt-trips-defs-ht*)
         (push term *dropped-trips-defs*))
        ((too-short-term-p (car term))
         (push term *2-letter-trips-defs*))
        ((stringp (fourth term))
         (setf (gethash (string-downcase (car term)) *filt-trips-defs-ht*)
               term)
         (push term *filt-trips-defs*))
        (t (setf (gethash (string-downcase (car term)) *filt-trips-defs-ht*)
                 term)
           (push (append (subseq term 0 3) (list (trips-package-to-string (fourth term)))
                       (subseq term 4 6)) *filt-trips-defs*))))

(defun consol-remove-dups (file1 file2 out)
  (with-open-file (stream1 (concatenate 'string "sparser:bio-not-loaded;" file1 ".lisp")
                          :direction :input 
                          :external-format :UTF-8)
    (with-open-file (stream2 (concatenate 'string "sparser:bio-not-loaded;" file2 ".lisp")
                          :direction :input 
                          :external-format :UTF-8)
      (with-open-file (out-stream (concatenate 'string "sparser:bio-not-loaded;" 
                                              out ".lisp")
                                 :direction :output :if-exists :supersede 
                                 :if-does-not-exist :create
                                 :external-format :UTF-8)
      (loop for term = (read stream1 nil)
              while term
              do (filter-trips-def term))
      (loop for term = (read stream2 nil)
              while term
              do (filter-trips-def term))
      
      (loop for term in (sort (copy-list *filt-trips-defs*) #'string< :key #'second)
             do (lc-one-line-print term out-stream))))))
      
(defun fix-cell-loc (file out)
  (setq *suppress-redefinitions* t)
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;" file ".lisp")
                          :direction :input 
                          :external-format :UTF-8)
      (with-open-file (out-stream (concatenate 'string "sparser:bio-not-loaded;" 
                                              out ".lisp")
                                 :direction :output :if-exists :supersede 
                                 :if-does-not-exist :create
                                 :external-format :UTF-8)
      (loop for term = (read stream nil)
              while term
            do (when (and term (equal (second term) "ONT:CELL-PART"))
                 ;(print term)
                 (let ((def-form  (trips/reach-term->def-bio term)))
                  ; (print def-form)
                   (when def-form
                     (lc-one-line-print def-form out-stream))))))))
              
              

(defun trips-defs->protein-defs (file &optional (suppress-redef nil))
  (setq *suppress-redefinitions* suppress-redef)
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;" file ".lisp")
                          :direction :input 
                          :external-format :UTF-8)
    (with-open-file (prot-stream (concatenate 'string "sparser:bio-not-loaded;" 
                                              file "-proteins.lisp")
                                 :direction :output :if-exists :supersede 
                                 :if-does-not-exist :create
                                 :external-format :UTF-8)
      (with-open-file (non-prot-stream (concatenate 'string "sparser:bio-not-loaded;" 
                                                    file "-non-proteins.lisp")
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
        (loop for term = (read stream nil)
              while term
             
              do (when term
                   (when (> (length (car term)) 2)
                   (let ((def-form  (trips/reach-term->def-bio term)))
                     (when def-form
                       (lc-one-line-print def-form 
                                          (if (eq (car def-form) 'define-protein)
                                              prot-stream
                                              non-prot-stream)))))))))))
                                        


(defun find-ambiguous-protein-names (&optional
                                             (file (merge-pathnames
                                              "s/grammar/model/sl/biology/standardized-protein-defs.lisp"
                                              *sparser-code-directory*)))
  (clrhash *protein-family-ht*)
  (for-forms-in-file file #'merge-protein-name))



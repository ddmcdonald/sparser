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
            unless (search ":" wd :test #'equal)
          do
         (pushnew id (gethash wd *protein-family-ht*) :test #'equal))))

(defun load-protein-id-hash-tables ()
  (declare (special *ncit->up-ht*))
  (unless (boundp '*upa-key-upm-val*)
    (load "sparser:bio;uniprot-accession-id-mnemonic.lisp"))

  (unless (boundp '*hgnc-up-ht*)
    (load "sparser:bio-not-loaded;hgnc;hgnc-with-ids-2.lisp"))
  (unless (boundp '*ncit->up-ht*)
    (load "sparser:bio;up-ncit-hgnc-map.lisp"))

  (unless (boundp '*ncit-mapping-ht*)
    (load "sparser:bio;ncit-mapping.lisp")))

(defun read-and-replace-protein-defs (&key (protein-file "standardized-protein-defs-complete.lisp") 
                                        (output-file "standardized-protein-defs-new.lisp")
                                        (non-upa-file "non-upa-upm-proteins-new.lisp"))

  "Taking an input list of the existing proteins and hash tables using
UPA ID (Uniprot Accession number) as keys and UPM ID (Uniprot
Mnemonic) as keys, output a file that has all proteins whose IDs are
in the hash table changed to have \"UP:$UPA\" as their ID and the UPA
and UPM in their alternate names field -- if the ID isn't a UPA or UPM
it outputs it to the non-upa-file"
  (unless (boundp '*upa-key-upm-val*)
    (load
     (concatenate 'string "sparser:bio;"
                  "uniprot-accession-id-mnemonic.lisp")))

  (unless (boundp '*hgnc-up-ht*)
    (load (concatenate 'string "sparser:bio-not-loaded;"
                       "hgnc;hgnc-with-ids-2.lisp")))

  (let* ((new-defs (read-and-normalize-protein-defs :protein-file protein-file))
         (validated-fries-defs (read-and-normalize-protein-defs :protein-file "validated-fries-proteins.lisp")))
    (setq *new-protein-defs*
          (merge-duplicates-and-separate-families
           (append new-defs
                   validated-fries-defs)))
    
    (unless (and (eq output-file t)
                 (eq non-upa-file t))
      ;; the two files must be opened and superseded at the top of the loop
      ;;  so that we can re-run the code and generate new files
      ;;  without items from old files hanging around
      (output-protein-defs-to-files *new-protein-defs* output-file non-upa-file)
      output-file)))

(defparameter *duplicate-protein-ht* (make-hash-table :size 30000 :test #'equal))

(defparameter *minimal-families* nil)
(defun merge-duplicate-protein-defs (defs)
  (clrhash *duplicate-protein-ht*)
  (loop for def in defs
        do
          (case (car def)
            (define-protein
             (setf (gethash (second def) *duplicate-protein-ht*)
                   (merge-protein-defs
                    def
                    (gethash (second def) *duplicate-protein-ht*))))))
  *duplicate-protein-ht*)


(defun merge-duplicates-and-separate-families (defs)
  (declare (special defs))

  (let (non-standard-defs merged-defs protein-family-ht)
    (declare (special non-standard-defs merged-defs protein-family-ht))
    (setq *duplicate-protein-ht* (merge-duplicate-protein-defs defs))
    (setq non-standard-defs
          (loop for d in defs unless (eq (car d) 'define-protein)
                  collect d))

    (setq merged-defs (sort (mapcar #'(lambda (x)
                                        (strip-explicit-ids-and-downcase (cdr x)))
                                    (hal *duplicate-protein-ht*)) #'string< :key #'second))

    (setq protein-family-ht (get-protein-family-ht merged-defs))
    (setq *minimal-families* nil)
    (loop for possible-family in (hal protein-family-ht)
          when (eq (length possible-family) 3)
               
          do
            (cond ((or (and (not (search "UP:" (second possible-family)))
                            (search "UP:" (third possible-family)))
                       (and (not (search "UP:" (third possible-family)))
                            (search "UP:" (second possible-family))))
                   (push possible-family *minimal-families*)
                   (remhash (car possible-family) protein-family-ht))
                  ((and (search "NCIT:" (second possible-family))
                        (search "NCIT:" (third possible-family))
                        (or (eq (1+ (read-from-string (subseq (second possible-family) 6)))
                                (read-from-string (subseq (third possible-family) 6)))
                            (eq (1+ (read-from-string (subseq (third possible-family) 6)))
                                (read-from-string (subseq (second possible-family) 6)))))
                   (push possible-family *minimal-families*)
                   (remhash (car possible-family) protein-family-ht))
                  (t (push possible-family *minimal-families*)
                     (remhash (car possible-family) protein-family-ht))))
    (setq merged-defs
          (append
           (loop for def in merged-defs
                 collect (remove-family-names def protein-family-ht))
           (loop for def in non-standard-defs
                 collect (remove-family-names def protein-family-ht))))
    ;;(lsp-break "merge-duplicates-and-separate-families")
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
                (t (unless (or (search "PROTEIN" (second def))
                               (search ">" (second def))
                               (search "phosphorylated" (second def) :test #'equalp)
                               (search "del" (second def)))
                     (lc-one-line-print `(define-protein ,.(cdr def)) non-upa-stream)))))
      (loop for def in new-defs
            do
              (case (car def)
                (def-family (lc-one-line-print def stream))
                (t nil))))))


(defun read-and-normalize-protein-defs (&key (protein-file "standardized-protein-defs-complete.lisp") )
  "Taking an input list of the existing proteins and hash tables using
UPA ID (Uniprot Accession number) as keys and UPM ID (Uniprot
Mnemonic) as keys, output a list that has all proteins whose IDs are
in the hash table changed to have \"UP:$UPA\" as their ID and the UPA
and UPM in their alternate names field -- if the ID isn't a UPA or UPM
it leaves the entry as is and and adds it to the list *non-upa-upm* to sort out later"
  (declare (special *ncit->up-ht*))
  (let ((input (open (concatenate 'string "sparser:bio;" protein-file)
                     
                     :if-does-not-exist nil)))
    (unless (boundp '*ncit->up-ht*)
      (load (concatenate 'string "sparser:bio;" "up-ncit-hgnc-map.lisp")))
    (when input
      (loop for prot = (read input nil)
            while prot
            when (and (stringp (second prot)) (consp (third prot)))
            collect (revise-protein-def prot )))))

(defun revise-protein-def (def
                           &aux
                             (prot (second def))
                             (syns (cons prot (third def)))
                             (standard-id (use-standard-id def))
                             (id (get-best-protein-id def))
                             (name (get-best-protein-name id syns))
                             (simp-syns (simplify-protein-names syns)))
  (declare (special def))
  (if (search ":" id)
      `(,(car def) ,id ,(remove id simp-syns :test #'equal))
      `(non-standard-define-protein ,(or id (car syns)) ,(remove (or id (car syns)) simp-syns :test #'equal))))

(defun get-best-protein-id (def &aux (syns (cons (second def) (third def))))
  (or (find-upa-entry syns)
      (loop for item in syns
            when (and (search "NCIT:" item)
                      (not (search " " item))
                      (not (search "-" item)))
            return item)
      (loop for item in syns
            when (and (search ":" item)
                      (not (search " " item))
                      (not (search "-" item)))
            return item)
      (loop for item in syns
            when (eq 0 (search "IPR" item))
            return item)
            (loop for item in syns
            when (search "_" item)
            return item)))

(defun get-best-protein-name (id syns)
  (if (search ":" id)
      (case (intern (subseq id (1+ (search ":" id))) :sparser)
        (UP (gethash (subseq id (1+ (search ":" id))) *upa-key-upm-val*))
        (ncit (loop for item in syns when (not (search "NCIT:" item)) return item))
        (|Reactome| (loop for item in syns when (not (search "Reactome:" item)) return item))
        (t (car syns)))
      (car syns)))
  
(defun find-upa-entry (syns)
  (declare (special *ncit->up-ht* *ncit-mapping-ht*))
  (let ((up-item
         (loop for item in syns
               when (and (eq 0 (search "UP:" item :test #'equal))
                         (gethash (subseq item 3)  *upa-key-upm-val*))
               return (get-upa-string item)

               when (and (eq 0 (search "Uniprot:" item :test #'equalp))
                         (gethash (subseq item 7)  *upa-key-upm-val*))
               return (subseq item 7)

               when (gethash item *upa-key-upm-val*)
               return item

               when (gethash item *upm-key-upa-val*)
               return (gethash item *upm-key-upa-val*)
                 
               when (and (eq 0 (search "NCIT:" item)) (ncit->upa? item))
               return (or (car (gethash  item *ncit->up-ht*))
                          (let ((ncit-map (second (gethash  item *ncit-mapping-ht*))))
                            (cond ((eq 0 (search "UP:" ncit-map)) (get-upa-string ncit-map))
                                  ((eq 0 (search "HGNC:" ncit-map)) (gethash ncit-map *hgnc-up-ht*)))))

               when (and (eq 0 (search "HGNC:" item :test #'equal))
                         (gethash item *hgnc-up-ht*))
               return (gethash item *hgnc-up-ht*)
                 )))
    (when up-item
      (format nil "UP:~a" up-item))))

(defun find-multiple-upa-entries (syns)
  (declare (special *ncit->up-ht*))
  (let ((entries nil))
    (loop for item in syns
          when (and (eq 0 (search "UP:" item :test #'equal))
                    (gethash (subseq item 3)  *upa-key-upm-val*))
          do (pushnew (get-upa-string item) entries :test #'equal)

          when (and (eq 0 (search "Uniprot:" item :test #'equalp))
                    (gethash (subseq item 7)  *upa-key-upm-val*))
          do (pushnew (subseq item 7) entries :test #'equal)
          when (and (eq 0 (search "NCIT:" item)) (ncit->upa? item))
          do (pushnew (car (gethash  item *ncit->up-ht*)) entries :test #'equal)

          when (gethash item *upa-key-upm-val*)
          do (pushnew item entries  :test #'equal) 

          when (gethash item *upm-key-upa-val*)
          return (pushnew (gethash item *upm-key-upa-val*) entries :test #'equal) 

          when (and (eq 0 (search "HGNC:" item :test #'equal))
                    (gethash item *hgnc-up-ht*))
          return (pushnew (gethash item *hgnc-up-ht*) entries :test #'equal) )
    (setq entries (remove nil entries))
    (when (cdr entries) entries)))

(defun ncit->upa? (item)
  (when (eq 0 (search "NCIT:" item :test #'equalp))
    nil))

(defun get-standard-id (items)
  (declare (special *ncit->up-ht*))
  (or
   (loop for item in items
         when (eq 0 (search "NCIT:" item))
         do (return (gethash item *ncit->up-ht*)))
   (loop for item in items
         when (and (search ":" item)
                   (not (search " " item))
                   (not (search "-" item)))
         do (return item))
   #+ignore
   (loop for item in items
         when (eq 0 (search "PROTEIN" item))
         do (return item))))

(defun use-standard-id (prot)
  (declare (special *ncit->up-ht*))
  (let ((standard (get-standard-id (third prot))))
    `(,(car prot) ,(or standard (second prot))
       ,(loop for item in (third prot)
              collect
                (if (equal item standard)
                    (second prot)
                    item)))))

(defun simplify-protein-names (names)
  (sort (loop for item in
                (remove-duplicates names :test #'equal)
              unless (or (null item)
                         (eq 0 (search "PROTEIN" item)))
              collect item)
        #'string<))

(defun lc-one-line-print (x stream)
  (let* ((*print-pretty* nil)
         (*print-case* :DOWNCASE))
    (print x stream)))

    
(defun non-redundant-def (prot)
  (setq prot `(,(car prot) ,(second prot)
                ,(sort (remove-duplicates (third prot) :test #'equal) #'string<))))

(defparameter *multiple-upas* nil)

(defun check-alts-for-UP (alt-names &optional (check-against-upa-upm-ht nil))
  "check if there is a unique UPA implied by one or more of the alt-names -- use translation
from NCIT, HGNC, etc. and also cut off compound UPA ids (with - or space -- get examples)"
  (declare (special alt-names *ncit->up-ht* *ncit-mapping-ht*))
  (let (up-names)
    (declare (special up-names))
    (loop for name in alt-names        
          when (eq 0 (search "NCIT:" name))
          do (pushnew (or (car (gethash name *ncit->up-ht*))
                          (let ((ncit-map (gethash name *ncit-mapping-ht*)))
                            (cond ((eq 0 (search "UP:" ncit-map)) (get-upa-string ncit-map))
                                  ((eq 0 (search "HGNC:" ncit-map)) (gethash ncit-map *hgnc-up-ht*)))))
                      up-names :test #'equal)
            
          when (or (eq 0 (search "UniProt:" name)) (eq 0 (search "PR:" name)))
          do
            (let ((up-name? (subseq name (+ 1 (search ":" name)) (search " " name))))
              (when (gethash up-name? *upa-key-upm-val*)
                (pushnew up-name? up-names :test #'equal)))
          
          when (get-upa-string name)
          do
            (let* ((up? (or (null check-against-upa-upm-ht)
                            (gethash (string-upcase (get-upa-string name 3)) *upa-key-upm-val*))))
              (when up?
                (pushnew  (get-upa-string name) up-names :test #'equal)))
            
          when (gethash (string-upcase name) *upa-key-upm-val*)
          do
            (pushnew  (string-upcase name) up-names :test #'equal)
            
          when (and (eq 0 (search "HGNC:" name)) (gethash name *hgnc-up-ht*))
          do
            (pushnew (gethash name *hgnc-up-ht*) up-names :test #'equal))
    (when (cddr up-names)
      (push alt-names *multiple-upas*))
    (cond ((and up-names (null (cdr up-names)))
           (car up-names))
          ((and (boundp '*fries-prot-ht*)
                (fboundp 'fries-match))
           (unique-fries-upa-for? alt-names)))))
             
;; handle cases with items after the UP:
;; like "UP:Q5NV91" "UP:Q5NV91 IGLV3-27"
(defun get-upa-string (item)
  (when (eq 0 (search "UP:" item))
    (cond ((search "-" item) ;; can have both a - and a space -- the - comes first?
           (subseq item 3
                   (if (and (search " " item)
                            (< (search " " item)
                               (search "-" item)))
                       (search " " item)
                       (search "-" item))))
          ((search " " item)
           (subseq item 3 (search " " item)))
          (t (subseq item 3)))))

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


;; new
(defun pd-to-up-ncit (pd)
  (loop for x in (cons (second pd)(third pd))
        when (or (search "UP:" x)(search "NCIT:" x))
        collect x))


(defun add-upas-to-def (def)
  (declare (special *up-ncit-ht*))
  `(,(car def)
     ,(second def)
     ,(simplify-protein-names
       (loop for x in
               (cons (second def)
                     (third def))
             append
               (if (gethash x *up-ncit-ht*) (list  (gethash x *up-ncit-ht*))
                   (list x))))))

;;check on "UP:protein" if it's still there
;; check (define-protein "XFAM:PF03169.13" ("OPT" "opt" "opted"
;; "opts")) -- "opted" does not actually seem to be a synonym...

(defparameter *all-std-prot-comp-names* nil)
(defun collect-all-std-prot-comp-names (&optional (file "sparser:bio;standardized-protein-defs-complete.lisp"))
  (for-forms-in-file file #'collect-id-and-synonyms)
  (with-open-file (str "sparser:bio-not-loaded;all-protein-wds.lisp" :direction :output :if-exists :supersede)
    (pprint `(in-package :sparser) str)
    (pprint
     `(defparameter *all-std-prot-comp-names*
        ',(sort (remove-duplicates *all-std-prot-comp-names* :test #'equal) #'string<)) str)))

(defun collect-id-and-synonyms (form &aux (def (car form))(id (second form)))
  (when (eq def 'define-protein)
    (loop for wd in (cons id (third form))
         do (push wd *all-std-prot-comp-names*))))

(defparameter *lost-std-prot-defs* nil)
(defun find-undef-std-prot-comp ()
  (loop for wd in *all-std-prot-comp-names*
        unless (or (resolve wd)
                   (resolve (string-downcase wd))
                   (search ":" wd))
          do (push wd *lost-std-prot-defs*)))
                    

(defparameter *fries-prot-defs* nil)
(defparameter *fries-prot-ht* nil)

(defun load-fries-protein-ht ()
  (unless *fries-prot-ht*
    (setq *fries-prot-defs*
          (cdr (get-forms-from-file  "sparser:bio;big-reach-defs.lisp") ))

    (setq *fries-prot-ht* (make-hash-table :size 100000 :test #'equal))
    (loop for fd in *fries-prot-defs*
          do
            (loop for wd in (third fd) do (push fd (gethash wd *fries-prot-ht*))))))

(defun fries-match (sp-def)
  (load-fries-protein-ht)
  (remove-duplicates
   (loop for wd in (third sp-def) append (gethash  wd *fries-prot-ht*))
   :test #'equal))

(defun fries-match-wd (sp-def)
  (load-fries-protein-ht)
  (loop for wd in (third sp-def) when (gethash  wd *fries-prot-ht*)
        collect (list wd (gethash  wd *fries-prot-ht*))))

(defun unique-fries-upa-for? (alt-names)
  (let ((fm (fries-match `(define-protein ,(car alt-names) ,alt-names))))
    (when (and fm (null (cdr fm)))
      (second (car fm)))))

(defparameter *prot-fam-name-syns-ht* (make-hash-table :size 100000 :test #'equal))


(defun set-up-prot-fam-name-syns-ht (prot-fam)
  (declare (special *prot-fam-name-syns-ht*))
  (let* ((word (second prot-fam))
         (long (getf prot-fam :long))
         (synonyms (getf prot-fam :synonyms))
         (all-names (append `(,word ,long) synonyms)))
    (loop for name in all-names
          do (setf (gethash name *prot-fam-name-syns-ht*) prot-fam))))


(defun remove-family-names-from-protein-defs     (&key (nofams-file "standardized-protein-defs-no-fams.lisp") )
    ;(&key (family-file "protein-families-mod.lisp") )
  (declare (special *prot-fam-name-syns-ht*))
  #+ignore(let ((input (open (concatenate 'string "sparser:bio;" family-file)
                                          :if-does-not-exist nil)))
    (when input
      (loop for prot-fam = (read input nil)
            while prot-fam
            when (stringp (second prot-fam))
            do (let* ((word (second prot-fam))
                      (long (getf prot-fam :long))
                      (synonyms (getf prot-fam :synonyms))
                      (all-names (append `(,word ,long) synonyms)))
                 (loop for name in all-names
                       do (setf (gethash name *prot-fam-name-syns-ht*) prot-fam))))))
  (with-open-file (std-prot-no-fam (concatenate 'string "sparser:bio;" nofams-file)
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
    (format std-prot-no-fam "(in-package :sparser)~%~%")
    (let ((std-prot-input (open "sparser:bio;standardized-protein-defs.lisp"
                                :if-does-not-exist nil)))
      (when std-prot-input
        (loop for prot-def = (read std-prot-input nil)
              while prot-def
            when (stringp (second prot-def))
              do (let ((id (second prot-def))
                       (syns (third prot-def)))
                   (lc-one-line-print `(define-protein ,id ,(remove-fams-from-prot prot-def))
                                      std-prot-no-fam)))))))

(defparameter *potential-fam-ids* nil)
(defparameter *prot-missing-from-fam* nil)
(defparameter *human-prot-missing-from-fam* nil)
(defparameter *problematic-prot-fams-ht* (make-hash-table :size 300 :test #'equal))

(defun remove-fams-from-prot (prot-def)
  (declare (special *prot-fam-name-syns-ht* *potential-fam-ids* *prot-missing-from-fam* *upa-key-upm-val* *human-prot-missing-from-fam*))
  (unless (boundp '*upa-key-upm-val*)
    (load "sparser:bio;uniprot-accession-id-mnemonic.lisp"))
  (let* ((id (second prot-def))
        (syns (third prot-def))
        (human-protein? (human-mnemonic? (gethash (string-trim "UP:" id) *upa-key-upm-val*))))
    (loop for syn in syns
            as syn-def = (gethash syn *prot-fam-name-syns-ht*)
        if (null syn-def)
        collect syn into good-syns
        else
          when (not (eq 0 (search "UP:" id)))
            do (push prot-def *potential-fam-ids*)
          end
            and 
          unless (or (member id (getf syn-def :members)
                           :test #'equal)
                     (equal id (getf syn-def :identifier)))
             if human-protein?
                do (push (list syn-def prot-def) *human-prot-missing-from-fam*)
                   (setf (gethash (second syn-def) *problematic-prot-fams-ht*)
                         syn-def)
                and collect syn into good-syns
            else 
                do (push (list syn-def prot-def) *prot-missing-from-fam*)
            end
        finally (return good-syns))))


(defparameter *prot-fam-names-ht* (make-hash-table :size 10000 :test #'equal))
(defparameter *prot-fam-members-ht* (make-hash-table :size 10000 :test #'equal))
(defparameter *post-merge-prot-fam-names-ht* (make-hash-table :size 10000 :test #'equal))

(defun read-and-normalize-protein-fam-defs (&key (family-file "protein-families-mod.lisp") )
  "Taking all the family definitions in protein-families and filtering
them into those with identifiers and not -- identifiers get output to
new file to append to new-prot-fam, those without get filtered to "
  (declare (special *prot-fam-names-ht* *prot-fam-members-ht* *post-merge-prot-fam-names-ht*))
  (let ((input (open (concatenate 'string "sparser:bio;" family-file)
                     :if-does-not-exist nil)))
    (when input
      (loop for prot-fam = (read input nil)
            while prot-fam
            when (stringp (second prot-fam))
            do (set-up-prot-fam-name-ht prot-fam))))
  (loop for prot-fam-name being the hash-keys in *prot-fam-names-ht* using (hash-value prot-fam-def)
          as members = (getf prot-fam-def :members)
        do (cond ((and members
                       (gethash members *prot-fam-members-ht*))
                  (merge-fam-defs prot-fam-def "members" members))
                 (members
                  (setf (gethash members *prot-fam-members-ht*)
                        prot-fam-def))
                 (t ; for protein families with no members, we need to add to the post-merge list
                  (setf (gethash prot-fam-name *post-merge-prot-fam-names-ht*)
                        prot-fam-def))))
  (loop for mem-prot-fam being the hash-keys in *prot-fam-members-ht*
        using (hash-value prot-fam-def)
        do (setf (gethash (second prot-fam-def) *post-merge-prot-fam-names-ht*)
                 prot-fam-def))
  (loop for prot-fam-def being the hash-values of *post-merge-prot-fam-names-ht*
        do (set-up-prot-fam-name-syns-ht prot-fam-def))

  (remove-family-names-from-protein-defs)
  (output-new-prot-fam-files))

(defun set-up-prot-fam-name-ht (prot-fam)
  (declare (special *prot-fam-names-ht*))
  (let* ((prot-fam-name (second prot-fam))
         (id (getf prot-fam :identifier))
         (init-members (getf prot-fam :members))
         (sorted-members (when init-members
                           (remove-duplicates (sort init-members #'string<)
                                              :test #'equal)))
        (synonyms (getf prot-fam :synonyms))
        (long (getf prot-fam :long)))
    (if (gethash prot-fam-name *prot-fam-names-ht*)
        (merge-fam-defs prot-fam "name" sorted-members)
        (setf (gethash prot-fam-name *prot-fam-names-ht*)
              `(def-family ,prot-fam-name
                   ,.(when id `(:identifier ,id))
                   ,.(when long `(:long ,long))
                   ,.(when synonyms `(:synonyms ,synonyms))
                   ,.(when sorted-members `(:members ,sorted-members)))))))

(defun merge-fam-defs (prot-fam merge-type &optional sorted-members)
  ;; note: this protects against merging families that both have
  ;; different ids from the same ontology, however families where one
  ;; has an id and the other has members may be problematic if the id
  ;; doesn't really go with those members, and merging families with
  ;; the same members may be problematic when one is a super family
  ;; where we just haven't filled in the extra members, but there's
  ;; enough problematic duplication in the current file that this was
  ;; judged to be more likely to improve things relative to the
  ;; issues. may want to reconsider later.
  (declare (special *prot-fam-names-ht* *prot-fam-members-ht* *post-merge-prot-fam-names-ht*))
  (unless (or (equal merge-type "name")
              (equal merge-type "members"))
    (lsp-break "unknown family merge-type ~s" merge-type))
  (let* ((prot-fam-name (second prot-fam))
         (id (getf prot-fam :identifier))
         (synonyms (getf prot-fam :synonyms))
         (long (getf prot-fam :long))
         (alt-def (if (equal merge-type "name")
                      (gethash prot-fam-name *prot-fam-names-ht*)
                      (gethash sorted-members *prot-fam-members-ht*)))
         (alt-def-id (getf alt-def :identifier))
         (alt-def-syns (getf alt-def :synonyms))
         (alt-def-long (getf alt-def :long))
         (alt-def-members (getf alt-def :members alt-def))
         (ids-match (equal id alt-def-id))
         (longs-match (equal long alt-def-long))
         (new-id (if (and (not ids-match)
                          (equal (subseq id 0 (search ":" id))
                                 (subseq alt-def-id 0 (search ":" alt-def-id))))
                     (lsp-break "incompatible IDs for ~%~s~% and ~%~s~%"
                                (cdr prot-fam) alt-def)
                     (or id alt-def-id)))
         (alt-syns-with-id (if ids-match
                               alt-def-syns
                               (append `(,alt-def-id) alt-def-syns)))
         (alt-syns-with-long (if longs-match
                                 alt-syns-with-id
                                 (append `(,alt-def-long) alt-syns-with-id)))
         (alt-syns-with-name (if (equal merge-type "name")
                                 alt-syns-with-long
                                 (append `(,(second alt-def)) alt-syns-with-long)))
         (new-syns (union synonyms alt-syns-with-name :test #'equal))
         (new-long (or long alt-def-long))
         (union-members (union sorted-members alt-def-members
                                       :test #'equal))
         (new-members (if (and (equal merge-type "name")
                               sorted-members)
                          ;(lsp-break "union-members: ~%~s ~%sorted-members:~%~s ~%alt-def-members:~%~s~%" union-members sorted-members alt-def-members)
                          (sort union-members #'string<)
                          alt-def-members))
         (new-def `(def-family ,prot-fam-name
                       ,.(when new-id `(:identifier ,new-id))
                       ,.(when new-long `(:long ,new-long))
                       ,.(when new-syns `(:synonyms ,new-syns))
                       ,.(when new-members `(:members ,new-members)))))
    (if (equal merge-type "name")
        (setf (gethash prot-fam-name *prot-fam-names-ht*)
              new-def)
        (setf (gethash alt-def-members *prot-fam-members-ht*)
              new-def))))

(defun output-new-prot-fam-files ()
  (declare (special *post-merge-prot-fam-names-ht*))
  (with-open-file (prot-fam-with-id (concatenate 'string "sparser:bio;" 
                                                     "protein-fam-with-id.lisp")
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
    (with-open-file (prot-fam-no-id (concatenate 'string "sparser:bio;" 
                                                     "protein-fam-no-id.lisp")
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
          (with-open-file (problematic-prot-fam (concatenate 'string "sparser:bio;" 
                                                     "problematic-protein-fams.lisp")
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
      (loop for prot-fam being the hash-keys in *post-merge-prot-fam-names-ht*
            using (hash-value prot-fam-def)
            do (let ((id (getf prot-fam-def :identifier))
                     (long (getf prot-fam-def :long))
                     (synonyms (getf prot-fam-def :synonyms))
                     (members (getf prot-fam-def :members)))
                                        ; these are families that are potentially missing
                                        ; their human members but we want to make sure
                                        ; before we fold them in
                 (cond ((gethash prot-fam *problematic-prot-fams-ht*)
                        (lc-one-line-print prot-fam-def problematic-prot-fam))
                       (id
                        (lc-one-line-print
                         `(def-family-with-id ,prot-fam ,id ,.(when long `(:name ,long))
                                              ,.(when synonyms `(:synonyms ,synonyms))
                                              ,.(when members `(:members ,members)))
                         prot-fam-with-id))
                       ((and (parse-integer (subseq prot-fam 0 1) :junk-allowed t)
                             (equal "." (subseq prot-fam 1 2)))
                        ;; things with names like "1.1.1.239" are actually EC
                        ;; (enzyme) IDs, so we should treat them as such -- ECs
                        ;; can only start with 1-6 so there should always be a
                        ;; period as the second digit. 
                        (lc-one-line-print
                         `(def-family-with-id ,prot-fam ,(concatenate 'string "EC:" prot-fam)
                            ,.(if long `(:name ,long) `(:name ,prot-fam))
                            ,.(when synonyms `(:synonyms ,synonyms))
                            ,.(when members `(:members ,members)))
                         prot-fam-with-id))
                       (t
                        (lc-one-line-print prot-fam-def prot-fam-no-id)
                        ))))))))

      #+ignore(defun resolve-same-prot-fam-name (prot-fam &optional sorted-members)
  (declare (special *prot-fam-names-ht*))
  (let* ((prot-fam-name (second prot-fam))
         (id (second (assoc :identifier prot-fam)))
         (synonyms (second (assoc :synonyms prot-fam)))
         (long (second (assoc :long prot-fam)))
         (alt-def (gethash prot-fam-name *prot-fam-names-ht*))
         (alt-def-id (second (assoc :identifier alt-def)))
         (alt-def-syns (second (assoc :synonyms alt-def)))
         (alt-def-long (second (assoc :long alt-def)))
         (ids-match (equal id alt-def-id))
         (longs-match (equal long alt-def-long))
         (new-id (cond ((and (not ids-match)
                           (equal (subseq id 0 (search ":" id))
                                  (subseq alt-def-id 0 (search ":" alt-def-id))))
                           (lsp-break "incompatible IDs for ~%~s~% and ~%~s~%"
                                      (cdr prot-fam) alt-def)
                        (id
                         id)
                        (alt-def-id
                         alt-def-id)
                        (t nil))))
         (alt-syns-with-id (if ids-match
                               alt-def-syns
                               (append `(,alt-def-id) alt-def-syns)))
         (alt-syns-with-long (if longs-match
                                 alt-syns-with-id
                                 (append `(,alt-def-long) alt-syns-with-id)))
         (new-syns (union synonyms alt-syns-with-long :test #'equal))
         (new-long (if long
                       long
                       alt-def-long))
         (new-members (sort (union sorted-members (second (assoc :members alt-def))
                                   :test #'equal)
                            #'string<)))
    
    (setf (gethash prot-fam-name *prot-fam-names-ht*)
          `(def-family prot-fam-name ,.(when new-id `(:identifier new-id))
                              ,.(when new-long `(:long new-long))
                              ,.(when new-syns `(:synonyms ',new-syns))
                              ,.(when new-members `(:members ',new-members))))))

;;;;;;;; normalization for standardized-protein-defs-complete.lisp
#|
(load-protein-id-hash-tables)
(length (setq *sparser-prot-defs* (cdr (GET-FORMS-FROM-FILE "sparser:bio;standardized-protein-defs-complete.lisp"))))

;; normalize the individual defs from standardized-protein-defs-complete.lisp
(length (setq *new-sparser-prot-defs* 
              (remove-duplicates
               (loop for d in *sparser-prot-defs* collect
                       `(,(car d) 
                          ,(second d);;(or (check-alts-for-up (cons (second d) (third d))) (second d)) 
                          ,(simplify-protein-names (cons (second d)(third d)))))
               :test #'equal)))

;; find defs that have a retrievable UniProt accession number
(setq *duplicate-protein-ht* (merge-duplicate-protein-defs *new-sparser-prot-defs*))
(length (setq *new-sparser-prot-defs*
              (append 
               (sort (mapcar #'cdr (hal *duplicate-protein-ht*)) #'string< :key #'car)
               (loop for d in *new-sparser-prot-defs* unless (eq (car d) 'define-protein)
                     collect d))))

(length (setq *with-upa* (loop for d in *new-sparser-prot-defs* when (check-alts-for-up (third d)) collect d)))


(length (setq *with-family* (loop for d in *new-sparser-prot-defs* 
                                  when (or (eq 0 (search "FA:" (second d)))
                                           (eq 0 (search "XFAM:" (second d))))
                                  collect d)))

(length (setq *without-upa* (loop for d in *new-sparser-prot-defs* 
                                  unless (or 
                                          (or (eq 0 (search "FA:" (second d)))
                                              (eq 0 (search "XFAM:" (second d))))
                                          (check-alts-for-up (third d))
                                          (eq 0 (search "PROTEIN" (second d))))
                                  collect d)))

(length (setq *upa-defs* (loop for d in *with-upa* collect 
                                     (let ((upa (check-alts-for-up (third d))))
                                       `(,(car d) 
                                          ,(format nil "UP:~a" upa)
                                          ,(simplify-protein-names (cons (format nil "UP:~a" upa) (cons (second d) (third d)))))))))

(length (setq *pdefs* (append *with-family* *upa-defs* *without-upa*)))
(length (setq *rpdefs* (mapcar #'revise-protein-def *pdefs*)))
(with-open-file (str "sparser:bio;standardized-protein-defs-revised.lisp"
                     :direction :output :if-does-not-exist :create :if-exists :supersede)
  (loop for d in *rpdefs* do (lc-one-line-print d str)))


(length (setq *ncit-mods* 
              (loop for d in *new-sparser-prot-defs*
                    when (and (eq 0 (search "NCIT:" (second d))) 
                              (let ((fm (fries-match d)))(and fm (null (cdr fm))))) collect d)))


;; find the cases where REACH/fries disagrees with the identifier for a protein
(length (setq *ques* 
              (loop for d in *new-sparser-prot-defs* 
                    when (and (unique-fries-upa-for? d)
                              (eq 0 (search "UP:" (second d)))
                              (not (equal (format nil "UP:~a" (second (car fm))) (second d))))
                    collect (cons d (fries-match d)))))

;; find the cases where REACH/fries agrees with the identifier for a protein
(length (setq *good*
              (loop for d in *new-sparser-prot-defs*
                    when (let ((fm (fries-match d)))(and fm (null (cdr fm)) (eq 0 (search "UP:" (second d)))  (equal (format nil "UP:~a" (second (car fm))) (second d))))
                    collect (cons d (fries-match d)))))

|#


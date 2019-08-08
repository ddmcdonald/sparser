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

(defparameter *likely-phospho-issues* nil)
(defparameter *protein-paren-issues* nil)
(defparameter *new-prot-defs* nil)

(defun remove-phospho-defs-and-merge-stranded-parens (&key (prot-file "standardized-protein-defs")
                                                        (new-prot-file "standardized-protein-defs-nophos")
                                                        (issues-file "protein-phospho-and-paren-issues"))
    (with-open-file (input-stream (concatenate 'string "sparser:bio;" prot-file ".lisp")
                          :direction :input 
                          :external-format :UTF-8)
      )
   (with-open-file (new-prot-stream (concatenate 'string "sparser:bio;" new-prot-file)
                               :direction :output :if-exists :supersede 
                               :if-does-not-exist :create
                               :external-format :UTF-8)
     )
    (with-open-file (issues-stream (concatenate 'string "sparser:bio-not-loaded;" issues-file)
                                    :direction :output :if-exists :supersede
                                    :if-does-not-exist :create
                                    :external-format :UTF-8)
      ))

(defun phospho-prefix-matches-other-def (syn syns)
  (loop for prefix in '("p" "p-" "phospho" "phospho-" "phosphorylated ")
        thereis (and (eq 0 (search prefix syn :test #'equalp))
                     (member (string-left-trim prefix syn) syns :test #'equalp))))
(defun merge-stranded-parens-remove-phospho-defs (def)
  (declare (special *likely-phospho-issues* *protein-paren-issues* *new-prot-defs*))
  (let ((syns (third def)))
    (loop for syn in syns
          when (phospho-prefix-matches-other-def syn syns)
          do (push `(,syn def) *likely-phospho-issues*)
            (setq def (remove-syn-from-prot-def def syn))
          end
            ;and
          when (and (search "(" syn)
                    (not (search ")" syn)))
          collect syn into open-paren-defs
          end
          ;and
            when (and (search ")" syn)
                    (not (search "(" syn)))
          collect syn into close-paren-defs
          end
          finally (return (cond ((and (eq 1 (length open-paren-defs))
                                      (eq 1 (length close-paren-defs)))
                                 (let* ((inc-def1 (remove-syn-from-prot-def def (car open-paren-defs)))
                                        (inc-def2 (remove-syn-from-prot-def inc-def1 (car close-paren-defs)))
                                        (new-syn (concatenate 'string (car open-paren-defs) " "
                                                              (car close-paren-defs))))
                                   (push (add-syn-to-prot-def inc-def2 new-syn) *new-prot-defs*)))
                                ((and (null open-paren-defs)
                                      (null close-paren-defs))
                                 (push def *new-prot-defs*))
                                (t
                                 (push (list open-paren-defs close-paren-defs def) *protein-paren-issues*)
                                 (push def *new-prot-defs*)))))))

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

(defun read-and-replace-protein-defs-with-rev-defs (&key (protein-file "standardized-protein-defs-complete.lisp") 
                                                      (output-file "standardized-protein-defs-new.lisp")
                                                      (non-upa-file "non-upa-upm-proteins-new2.lisp")
                                                      (prot-fam-file "new-protein-fam-no-id3.lisp")
                                                      (minimal-prot-fam "minimal-protein-families4.lisp"))

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
         #+ignore(prot-rev (read-and-normalize-protein-defs :protein-file "proteins-revised-def-proteins.lisp" :missing-up t))
         #+ignore(reach-prot (read-and-normalize-protein-defs :protein-file "new-defs;reach-additional-proteins.lisp" :missing-up t))
         (hms-reach-prots ;(read-and-normalize-protein-defs :protein-file "new-prot-defs-from-reach.lisp" :missing-up t)
          nil))
    
    (multiple-value-bind (prot-defs fam-defs)
          (merge-duplicates-and-separate-families-with-rev-defs (append new-defs hms-reach-prots)); prot-rev reach-prot))
    
    (unless (and (eq output-file t)
                 (eq non-upa-file t))
      ;; the two files must be opened and superseded at the top of the loop
      ;;  so that we can re-run the code and generate new files
      ;;  without items from old files hanging around
      (output-protein-and-fam-defs-to-files prot-defs fam-defs output-file
                                            non-upa-file prot-fam-file minimal-prot-fam)
      output-file))))

(defparameter *duplicate-protein-ht* (make-hash-table :size 30000 :test #'equal))

(defparameter *minimal-families* nil)
(defparameter *non-human-alt-defs* nil)
(defparameter *non-hms-alt-defs* nil)
(defparameter *hms-for-minimal-fam* nil)
(defparameter *one-human-minimal-fam* nil)

(defun remove-uniprot-prefix (str)
  (remove-prefix str "UP:"))
  
(defun merge-duplicates-and-separate-families-with-rev-defs (defs)
  (declare (special defs *duplicate-protein-ht* *non-human-alt-defs* *hms-grounding-ht*))
  (unless (boundp '*hms-grounding-ht*)
    (load "sparser:bio-not-loaded;hms-grounding-map.lisp"))
  (unless (boundp '*upa-key-upm-val*)
    (load "sparser:bio;uniprot-accession-id-mnemonic.lisp"))
  (let (non-standard-defs merged-defs protein-family-ht)
    (declare (special non-standard-defs merged-defs protein-family-ht))
    (setq *duplicate-protein-ht* (merge-duplicate-protein-defs defs)) 
    (setq non-standard-defs
          (loop for d in defs unless (eq (car d) 'define-protein)
                  collect d))

    ;; not downcasing alt-defs because it affects whether phosphorylation gets applied appropriately
    #+ignore(setq merged-defs (sort (mapcar #'(lambda (x)
                                        (strip-explicit-ids-and-downcase (cdr x)))
                                    (hal *duplicate-protein-ht*)) #'string< :key #'second))
    (setq merged-defs (sort (mapcar #'(lambda(x) (let ((def (cdr x)))
                                                   `(,(car def) ,(second def)
                                                      ,(remove-duplicates (third def) :test #'equal))))
                                    (hal *duplicate-protein-ht*)) #'string< :key #'second))
    (setq protein-family-ht (get-protein-family-ht merged-defs))
;    (lsp-break "post-fam-ht")
    (setq *minimal-families* nil)
    (loop for possible-family in (hal protein-family-ht)
            
          when (eq (length possible-family) 3)
          do (let* ((fam-word (first possible-family))
                    (1st-id (second possible-family))
                    (2nd-id (third possible-family))
                    (1st-id-def (gethash 1st-id *duplicate-protein-ht*))
                    (2nd-id-def (gethash 2nd-id *duplicate-protein-ht*))
                    (1st-up? (search "UP:" 1st-id :test #'equal))
                    (2nd-up? (search "UP:" 2nd-id :test #'equal))
                    (1st-human? (human-mnemonic? (gethash (remove-uniprot-prefix 1st-id)
                                                         *upa-key-upm-val*)))
                    (2nd-human? (human-mnemonic? (gethash (remove-uniprot-prefix 1st-id)
                                                          *upa-key-upm-val*)))
                    (hms-mapping (gethash fam-word *hms-grounding-ht*)))
              ; (declare (special possible-family fam-word 1st-id 2nd-id))
              ; (lsp-break "minimal family defs") 
                    (cond ((and 1st-up? 2nd-up?)
                           (cond ((and 1st-human?
                                       (not 2nd-human?))
                                  (push `(,2nd-id ,possible-family) *non-human-alt-defs*)
                                  (setf (gethash 2nd-id *duplicate-protein-ht*)
                                        (remove-syn-from-prot-def 2nd-id-def fam-word))
                                  (remhash fam-word protein-family-ht))
                                 ((and 2nd-human?
                                       (not 1st-human?))
                                  (push `(,1st-id ,possible-family) *non-human-alt-defs*)
                                  (setf (gethash 1st-id *duplicate-protein-ht*)
                                        (remove-syn-from-prot-def 1st-id-def fam-word))
                                  (remhash fam-word protein-family-ht))
                                 (t
                                  t)))
                          ((equal hms-mapping 1st-id)
                           (push `(,2nd-id ,possible-family) *non-hms-alt-defs*)
                           (setf (gethash 2nd-id *duplicate-protein-ht*)
                                 (remove-syn-from-prot-def 2nd-id-def fam-word))
                           (remhash fam-word protein-family-ht))
                          ((equal hms-mapping 2nd-id)
                           (push `(,1st-id ,possible-family) *non-hms-alt-defs*)
                           (setf (gethash 1st-id *duplicate-protein-ht*)
                                 (remove-syn-from-prot-def 1st-id-def fam-word))
                           (remhash fam-word protein-family-ht))
                          (hms-mapping
                           (push `(,hms-mapping ,possible-family) *hms-for-minimal-fam*)
                           (remhash fam-word protein-family-ht))
                          ((or 1st-human? 2nd-human?)
                           (push possible-family *one-human-minimal-fam*)
                           (remhash fam-word protein-family-ht))
                          (t
                           (push possible-family *minimal-families*)
                           (remhash fam-word protein-family-ht))
                         )))
    (setq merged-defs (sort (mapcar #'(lambda (x) (remove-dup-alt-defs (cdr x)))
                                    (hal *duplicate-protein-ht*)) #'string< :key #'second))
    (setq merged-defs
          (append
           (loop for def in merged-defs
                 collect (remove-family-names def protein-family-ht t))
           (loop for def in non-standard-defs
                 collect (remove-family-names def protein-family-ht t))))
    ;;(lsp-break "merge-duplicates-and-separate-families")
    (values merged-defs
            (sort
             (merge-family-defs
              (loop for fam in (hal protein-family-ht)
                    when (cddr fam)
                    collect `(def-family ,(car fam) :members ,(sort (cdr fam) #'string<))))
             #'string< :key #'car))))

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
               

(defun remove-dup-alt-defs (def)
  `(,(car def) ,(second def)
     ,(put-reactome-ids-at-end
       (remove-duplicates (third def)))))

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
  

(defun remove-family-names (def ht &optional keep-uids)
  `(,(car def) ,(second def)
     ,(loop for alt in (third def)
            unless (if keep-uids
                       (cdr (gethash alt ht))
                       (or (cdr (gethash alt ht))
                           (search ":" alt)))
            collect alt)))

(defun remove-syn-from-prot-def (def syn)
  `(,(car def) ,(second def)
     ,(loop for alt in (third def)
            unless (equal syn alt)
            collect alt)))

(defun add-syn-to-prot-def (def syn)
  `(,(car def) ,(second def)
     ,(append `(,syn) (third def))))

(defun merge-protein-defs (def1 def2)
  (if (null def2)
      def1
      `(,(car def1) ,(second def1)
         ,(sort (remove-duplicates (append (third def1) (third def2))
                                   :test #'equal)
                #'string<))))

(defparameter *min-fam-etc* '(*minimal-families*  *non-human-alt-defs*  *non-hms-alt-defs*
                              *hms-for-minimal-fam*  *one-human-minimal-fam*))
(defun output-protein-and-fam-defs-to-files (prot-defs fam-defs output-file-name
                                             non-upa-file-name prot-fam-file minimal-prot-fam)
  (declare (special *min-fam-etc*))
  (with-open-file (prot-stream (concatenate 'string "sparser:bio;" output-file-name)
                               :direction :output :if-exists :supersede 
                               :if-does-not-exist :create
                               :external-format :UTF-8)
    (with-open-file (non-upa-stream (concatenate 'string "sparser:bio;" non-upa-file-name)
                                    :direction :output :if-exists :supersede
                                    :if-does-not-exist :create
                                    :external-format :UTF-8)
      (with-open-file (fam-stream (concatenate 'string "sparser:bio;" prot-fam-file)
                                  :direction :output :if-exists :supersede 
                                  :if-does-not-exist :create
                                  :external-format :UTF-8)
        (with-open-file (minimal-fam-stream (concatenate 'string "sparser:bio;" minimal-prot-fam)
                                            :direction :output :if-exists :supersede
                                            :if-does-not-exist :create
                                            :external-format :UTF-8)
          (format non-upa-stream "(in-package :sparser)~%~%")
          (format prot-stream "(in-package :sparser)~%~%")
          (format fam-stream "(in-package :sparser)~%~%")
          (format minimal-fam-stream "(in-package :sparser)~%~%")
          ;; REMEMBER-- sort is a destructive operation -- you can't safely sort the same variable twice
          (setq prot-defs (sort prot-defs #'string< :key #'second))
          (loop for def in prot-defs
                do
                  (case (car def)
                    (define-protein (lc-one-line-print def prot-stream))
                    (t (unless (or (search "PROTEIN" (second def))
                                   (search ">" (second def))
                                   (search "phosphorylated" (second def) :test #'equalp)
                                   (search "del" (second def)))
                         (lc-one-line-print `(define-protein ,.(cdr def)) non-upa-stream)))))
          (setq fam-defs (sort fam-defs #'string< :key #'second))
          (loop for def in fam-defs
                do
                  (case (car def)
                    (def-family (lc-one-line-print def fam-stream))
                    (t nil)))
           (loop for min-fam  in *min-fam-etc*
                 do (format minimal-fam-stream "(defparameter ~s ~%'~s)~%~%" min-fam (symbol-value min-fam)))
           #+ignore(loop for def in *minimal-families*
                do (lc-one-line-print def minimal-fam-stream)))))))


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


(defun read-and-normalize-protein-defs  (&key (protein-file "standardized-protein-defs-complete.lisp") missing-up)
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
            collect (revise-protein-def prot :missing-up missing-up)))))

(defun revise-protein-def (def &key missing-up
                           &aux
                             (prot (second def))
                             (syns (cons prot (third def)))
                             (standard-id (use-standard-id def))
                             (id (get-best-protein-id def))
                             (name (get-best-protein-name id syns))
                             (simp-syns (simplify-protein-names syns)))
  (declare (special def))
  (if (and missing-up
           (not (search "UP:" id)))
      `(,(car def) ,(concatenate 'string "UP:" id) ,(remove id simp-syns :test #'equal))
      (if (search ":" id)
          `(,(car def) ,id ,(remove id simp-syns :test #'equal))
          `(non-standard-define-protein ,(or id (car syns)) ,(remove (or id (car syns)) simp-syns :test #'equal)))))

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

(defun one-line-print (x stream)
  (let* ((*print-pretty* nil))
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
         (human-protein? (human-mnemonic? (gethash (remove-uniprot-prefix id) *upa-key-upm-val*))))
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
    (format prot-fam-with-id "(in-package :sparser)~%~%")
    (with-open-file (prot-fam-no-id (concatenate 'string "sparser:bio;" 
                                                     "protein-fam-no-id.lisp")
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
      (format prot-fam-no-id "(in-package :sparser)~%~%")
          (with-open-file (problematic-prot-fam (concatenate 'string "sparser:bio;" 
                                                     "problematic-protein-fams.lisp")
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
            (format problematic-prot-fam "(in-package :sparser)~%~%")
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

(defparameter *sp-undefined-hms-grounded-words* nil)
(defparameter *sp-no-uid-hms-grounded-words* nil)
(defparameter *sp-uid-mismatch-hms-grounding* nil)
(defparameter *sp-uid-matches-hms-grounding* nil)
(defun check-hms-groundings (&key (grounding-file "sparser:bio-not-loaded;hms-grounding;hms-grounding-map-072019.lisp") (sp-hms-matching-file "sp-hms-matching-file.lisp"))
  (declare (special *hms-grounding*))
  (load grounding-file)
  (setq *sp-undefined-hms-grounded-words* nil
        *sp-no-uid-hms-grounded-words* nil
        *sp-uid-mismatch-hms-grounding* nil
        *sp-uid-matches-hms-grounding* nil)
  (loop for mapping in *hms-grounding*
        do (let* ((word (car mapping))
                  (rword (or 
                          ;; if it's just a capitalized version, we do have it
                          ;; and need it first in case of confounds like "Cyclin"
                             (resolve (concatenate 'string
                                                   (string-downcase (subseq word 0 1))
                                                   (subseq word 1)))
                             (resolve word)
                             (and (eq (search " protein"  word) ;because "x protein" is x
                                      (- (length word) 8))
                                  (resolve (subseq word 0 (- (length word) 8))))
                             (and (eq (search " proteins"  word) ;because "x protein" is x
                                      (- (length word) 9))
                                  (resolve (subseq word 0 (- (length word) 9))))))
                                 
                  (rword-string (pname rword))
                  ;; if using the uncapped version, need to use that
                  (str-word (or (single-term-rewrite? rword-string :no-warn t)
                                (single-term-rewrite? word :no-warn t)))
                  (word-category (when str-word
                                   (cat-name (itype-of (cfr-referent (car str-word))))))
                  (rword-uid (word-has-uid-p rword-string))
                  (word-uid (if (equal "can't get rule" rword-uid)
                                 (word-has-uid-p word)
                                 rword-uid))                                 
                  ;(word-file (when rword (getf (unit-plist rword) :FILE-LOCATION)))
                  (groundings (cdr mapping))
                  (primary-grounding (car groundings)))
             (cond ((or (null rword)
                        (equal "can't get rule" word-uid))
                    (push (list word groundings) *sp-undefined-hms-grounded-words*))
                   ((null word-uid)
                    (push (list (namestring (loc word-category))
                                word-category word groundings)
                          *sp-no-uid-hms-grounded-words*))
                   ((not (member word-uid groundings :test #'equal))
                    (push (list word-category word word-uid groundings)
                          *sp-uid-mismatch-hms-grounding*))
                   (t
                    (push word *sp-uid-matches-hms-grounding*)))))
  (with-open-file (sp-hms-matching
                   (concatenate 'string "sparser:bio-not-loaded;hms-grounding;"
                                sp-hms-matching-file)
                   :direction :output :if-exists :supersede 
                   :if-does-not-exist :create
                   :external-format :UTF-8)
    (format sp-hms-matching "(in-package :sparser)~%~%")
    (format sp-hms-matching "(defparameter *sp-undefined-hms-grounded-words*~%'~s)~%~%"
            *sp-undefined-hms-grounded-words*)
    (format sp-hms-matching "(defparameter *sp-no-uid-hms-grounded-words* ~%'~s)~%~%"
            (sort *sp-no-uid-hms-grounded-words* #'string< :key #'car))
    (format sp-hms-matching "(defparameter *sp-uid-mismatch-hms-grounding* ~%'~s)~%~%"
            (sort *sp-uid-mismatch-hms-grounding* #'string< :key #'car))
    (format sp-hms-matching "(defparameter *sp-uid-matches-hms-grounding* ~%'~s)~%~%"
            *sp-uid-matches-hms-grounding*)))


;; (ql:quickload :cl-csv)
;; (defparameter *fplx-equivalences* nil)
;; (setq *fplx-equivalences* (cl-csv:read-csv #P"/Users/laurel/projects/cwc-integ/hms/indra/indra/resources/famplex/equivalences.csv"))

;; if car = IP, second = IPR#; GO, second = GO:#
;; if car = ECCODE, second = # which is EC: for us
;; if car = PF, second = PF# which is XFAM:PF# for us
;; if car = MESH, second = # which is MESH:# for us; NCIT same
;; if car = NXP, second = FA:# which is FA# for us
;; no known BEL, MEDSCAN (has urn:agi-complex or agi-protfc or agi-aopfc), RE (reactome - has R-HSA appended), SIGNOR (already has SIGNOR appended), HGNC_GROUP, COMPLEXPORTAL, GFAM, 

;; (ql:quickload :cl-csv)
;; (defparameter *grounding_map* nil)
;; (setq *grounding_map* (cl-csv:read-csv #P"/Users/laurel/projects/cwc-integ/hms/indra/indra/resources/famplex/grounding_map.csv"))

(defun collapse-groundings (item)
  `(,(car item) ,.(hms-groundings->sp-onts (cdr item))))

#|
(with-open-file (stream "sparser:bio-not-loaded;hms-grounding;hms-grounding-map-072019.lisp"
                            :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
      (format stream "(in-package :sparser)~%~%")
      (format stream "(defparameter *hms-grounding* ~%'~s~%)" (mapcar #'collapse-groundings *grounding_map*)))
|#

(defun hms-groundings->sp-onts (groundings)
  (let ((grnd-i 0)
        good-groundings)
    (loop
      (when (>= grnd-i (- (length groundings) 1))
        (return (nreverse good-groundings)))
      (let ((grounding (nth grnd-i groundings)))
        (cond ((equal grounding "")
               (setq grnd-i (length groundings)))
              ((search ":" grounding)
               (push grounding  good-groundings)
               (setq grnd-i (+ grnd-i 1)))
              ;; "PUBCHEM" "702"
              #+ignore((equal "PUBCHEM" grounding)
               (push (concatenate 'string "PCID:" (nth (+ grnd-i 1) groundings))
                     good-groundings)
               (setq grnd-i (+ grnd-i 2)))
              ;; "GO" "GO:0006915" "IP" "IPR015503"
              ((member grounding '("GO" "IP" "HMDB" "CHEBI") :test #'equal)
               (push (nth (+ grnd-i 1) groundings) good-groundings)
               (setq grnd-i (+ grnd-i 2)))
              ;; "HMDB" "HMDB00108"  "MESH" "D017209" instead of "MESH:D017209" "NONCODE" "NONHSAT028507.2" "LINCS" "10023-103"  "CHEMBL" "CHEMBL98"
              ((equal grounding "CHEMBL") ;; sometime included, sometimes not
               (if (equal 0 (search "CHEMBL" (nth (+ grnd-i 1) groundings)))
                   (then (push (nth (+ grnd-i 1) groundings) good-groundings)
                         (setq grnd-i (+ grnd-i 2)))
                   (else (push (concatenate 'string
                                            grounding ":"
                                            (nth (+ grnd-i 1) groundings))
                               good-groundings)
                         (setq grnd-i (+ grnd-i 2)))))
              (t
               (push (concatenate 'string grounding ":" (nth (+ grnd-i 1) groundings))
                     good-groundings)
               (setq grnd-i (+ grnd-i 2))))))))
  
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


(defparameter *new-reach-prot-defs* nil)
(defparameter *new-reach-prot-fam-defs* nil)
(defparameter *new-reach-other-defs* nil)
(defparameter *potential-other-reach-defs* nil) ; things where we can't determine a category based on the ontology
(defparameter *reach-sparser-mismatch-defs* nil)

(defun protein-or-nucleotide-p (string)
  (let* ((word (resolve string))
         (rule-list (when word (single-term-rewrite? word :no-warn t)))
         (word-cat (when rule-list
                     (category-of (get-head-ref-from-rule (car rule-list))))))
    (or (eq word-cat (category-named 'protein))
        (eq word-cat (category-named 'protein-family))
        (eq word-cat (category-named 'nucleotide)))))

(defun new-reach-defs->krisp (&key (good-reach-defs-file "~/projects/cwc-integ/sparser/Sparser/code/s/grammar/model/sl/biology-not-loaded/hms-grounding/vetted-reach-defs3r.lisp") (new-prot-def-file "new-prot-defs-from-reach.lisp") (new-prot-fam-file "new-prot-fam-from-reach.lisp") (other-defs-file "other-defs-from-reach.lisp") (potential-defs-file "potential-other-defs-from-reach.lisp")(mismatch-defs-file "sparser-reach-mismatch-defs.lisp"))
  (with-open-file (new-defs good-reach-defs-file :direction :input 
                            :external-format :UTF-8)
    (when new-defs
      (loop for def  = (read new-defs nil)
            while def
            do (when (stringp (first def))
                 (let* ((item (first def))
                        (reach-uids (second def))
                        (reach-up-uid (loop for uid in reach-uids
                                            when (search "UP:" uid)
                                            return uid))
                        (word (or (and (single-term-rewrite? item :no-warn t)
                                       (resolve item))
                                  ;; only want to get words with single-term-rewrites
                                  (and (single-term-rewrite? (string-downcase item) :no-warn t)
                                       (resolve (string-downcase item)))))
                        (str-word (when word (single-term-rewrite? word :no-warn t)))
                        (word-uid (when word (word-has-uid-p word)))
                        (item-hyphen (search "-" item)))
                   (cond ((and word-uid
                               (not (single-term-rewrite? item :no-warn t)) ; have only lowercase version
                               (member word-uid reach-uids :test #'equal))
                          (push def *reach-sparser-mismatch-defs*))
                         ((and item-hyphen
                               (not reach-up-uid) ;; up definitions have been vetted against uniprots synonyms, and sometimes real protein names are hyphenated words where the two haves also name other protein names/families, e.g., "p41-Arc"
                               (or (protein-or-nucleotide-p (subseq item 0 item-hyphen))
                                   (protein-or-nucleotide-p (string-downcase (subseq item 0 item-hyphen))))
                               (or (protein-or-nucleotide-p (subseq item (+ 1 item-hyphen)))
                                   (protein-or-nucleotide-p (string-downcase (subseq item (+ 1 item-hyphen))))))
                          ;;should also add check for residue on protein, but don't have an easy way
                          (push `("complex" ,def) *reach-sparser-mismatch-defs*))
                         (str-word
                          (push `("uid-mismatch" ,word-uid ,def) *reach-sparser-mismatch-defs*))
                         (t
                          (new-reach-def->krisp-def def)))))))
    (print-defs-to-file *new-reach-prot-defs* new-prot-def-file)
    (print-defs-to-file *new-reach-prot-fam-defs* new-prot-fam-file)
    (print-defs-to-file *new-reach-other-defs* other-defs-file)
    (print-defs-to-file *potential-other-reach-defs* potential-defs-file)
    (print-defs-to-file *reach-sparser-mismatch-defs* mismatch-defs-file)))

(defparameter *redundant-reach-prots* nil)
(defun reach-vetted-up-defs->krisp (&key (good-reach-defs-file "~/projects/cwc-integ/sparser/Sparser/code/s/grammar/model/sl/biology-not-loaded/mar2018-reach-uniprot/vetted-reach-defs4.lisp") (new-prot-def-file "new-prot-defs-from-reach1.lisp")(mismatch-defs-file "sparser-reach-mismatch-defs1.lisp"))
 (with-open-file (new-defs good-reach-defs-file :direction :input 
                            :external-format :UTF-8)
    (when new-defs
      (loop for def  = (read new-defs nil)
            while def
            do (when (stringp (first def))
                 (let* ((item (first def))
                        (reach-uids (second def))
                        (reach-up-uid (loop for uid in reach-uids
                                            when (search "UP:" uid)
                                            return uid))
                        (up-syns (when reach-up-uid
                                   (get-bio-synonyms reach-up-uid)))
                        (word (and (single-term-rewrite? item :no-warn t)
                                       (resolve item)))
                                  ;; only want to get words with single-term-rewrites
                        (word-uid (when word (word-has-uid-p word))))
                   (cond ((and up-syns
                               (member item up-syns :test #'equal))
                          (push def *redundant-reach-prots*))
                         ((and word-uid
                               (not (equal reach-up-uid word-uid))) ; should be redundant with above
                          (push `("uid-mismatch" ,word-uid ,def) *reach-sparser-mismatch-defs*))
                         (word
                          (push `("non-uid-word-mismatch" ,def) *reach-sparser-mismatch-defs*))
                         (t
                          (push `(define-protein ,reach-up-uid (,item)) *new-reach-prot-defs*))))))
      (print-defs-to-file *new-reach-prot-defs* new-prot-def-file)
      (print-defs-to-file *reach-sparser-mismatch-defs* mismatch-defs-file))))

               

(defun print-defs-to-file (def-list file)
   (with-open-file (stream (concatenate 'string "sparser:bio;" file)
                                       :direction :output :if-exists :supersede 
                                       :if-does-not-exist :create
                                       :external-format :UTF-8)
     (format stream "(in-package :sparser)~%~%")
      (loop for def in def-list
            do (lc-one-line-print def stream))))
     
(defun uid-is-family? (uid)
  (or (search "BE:" uid)
      (search "IPR" uid)
      (search "XFAM:" uid)))

(defun uid-is-molecule? (uid)
  (or (search "PCID:" uid)
      (search "CHEBI:" uid)
      (search "HMDB" uid))) ;; human metabolome db == small molecules

(defun uid-is-drug? (uid)
  (search "CHEMBL" uid)) ;; db of molecules with drug-like properties

(defun new-reach-def->krisp-def (reach-def)
  (let* ((word (first reach-def))
         (uids (second reach-def))
         (first-uid (first uids))
         (up-uid (if (search "UP:" first-uid)
                     first-uid
                     ;; if there's a up def, it's either first, or one of two with the HGNC id
                     (when (and (< 1 (length uids))
                                (search "UP:" (second uids)))
                       (second uids))))
         (alt-uid-for-mesh (when (and (< 1 (length uids))
                                      (search "MESH:" first-uid))
                             ;; mesh isn't diagnostic of category, but if it has an alt like CHEBI, we can use that
                             (second uids)))
         (preferred-uid (or up-uid alt-uid-for-mesh first-uid))
         (uid-indiv (or (gethash preferred-uid *uid-to-individual*)
                        ;; in case we have the mesh uid instead of the alt uid
                        (gethash first-uid *uid-to-individual*)))
         (uid-indiv-cat (when uid-indiv (cat-name (category-of uid-indiv)))))
    (cond (up-uid ;; there's no way to check if the uid is already defined
            (push `(define-protein ,up-uid (,word)) *new-reach-prot-defs*))
           ((or (uid-is-family? preferred-uid)
                (eq uid-indiv-cat 'protein-family))
                                        ; def-family-with-id uses
                                        ; def-individual-with-id, so
                                        ; if the uid exists it
                                        ; automatically makes synonyms
                                        ; instead of overwriting def
            (push `(def-family-with-id ,word ,preferred-uid) *new-reach-prot-fam-defs*))
           (uid-indiv
            ;; this will create a synonym
            (push `(def-indiv-with-id ,uid-indiv-cat ,word ,preferred-uid) *new-reach-other-defs*))
           ((uid-is-molecule? preferred-uid)
            (push `(def-indiv-with-id molecule ,word ,preferred-uid) *new-reach-other-defs*))
           ((uid-is-drug? preferred-uid)
            (push `(def-indiv-with-id drug ,word ,preferred-uid) *new-reach-other-defs*))
           (t
            ;; the uid isn't diagnostic of category (e.g., mesh and go
            ;; can be lots of things) so we can't create a definition
            (push reach-def *potential-other-reach-defs*)))))
            
            

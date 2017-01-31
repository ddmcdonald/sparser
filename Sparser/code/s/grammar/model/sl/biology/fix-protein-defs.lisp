(in-package :sparser)

(unless (boundp '*upa-key-upm-val*)
  (load "~/projects/cwc-integ/sparser/Sparser/code/s/grammar/model/sl/biology/uniprot-accession-id-mnemonic.lisp"))

(unless (boundp '*hgnc-up-ht*)
  (load "~/projects/cwc-integ/sparser/Sparser/code/s/grammar/model/sl/biology-not-loaded/hgnc/hgnc-with-ids-2.lisp"))

(defparameter *non-upa-upm* nil
"Will be filled with any proteins whose current ID isn't a UPA or UPM ID")

(defun read-and-replace-protein-defs (&key (protein-file "standardized-protein-defs.lisp") 
                                        (upa-ht *upa-key-upm-val*)
                                        (upm-ht *upm-key-upa-val*)
                                        (output-file "standardized-protein-defs-new.lisp"))
  "Taking an input list of the existing proteins and hash tables using
UPA ID (Uniprot Accession number) as keys and UPM ID (Uniprot
Mnemonic) as keys, output a file that has all proteins whose IDs are
in the hash table changed to have \"UP:$UPA\" as their ID and the UPA
and UPM in their alternate names field -- if the ID isn't a UPA or UPM
it leaves the entry as is and and adds it to the list *non-upa-upm* to sort out later"
  (let ((input (open (concatenate 'string "sparser:bio;" protein-file)
                     :if-does-not-exist nil)))
    (if (eq output-file t)
        (replace-proteins-stream-stream input t)
        ;; the two files must be opened and superseded at the top of the loop
        ;;  so that we can re-run the code and generate new files
        ;;  without items from old files hanging around
        (with-open-file (stream (concatenate 'string "sparser:bio;" output-file)
                                :direction :output :if-exists :supersede 
                                :if-does-not-exist :create
                                :external-format :UTF-8)
          (with-open-file (non-upa-stream (concatenate 'string "sparser:bio;" "non-upa-upm-proteins.lisp")
                                          :direction :output :if-exists :supersede
                                          :if-does-not-exist :create
                                          :external-format :UTF-8)
            (replace-proteins-stream-stream input stream non-upa-stream))))
    output-file))

(defun replace-proteins-stream-stream (input output-stream non-upa-stream)
  (when input
    (loop for prot = (read input nil)
          while prot
          when (and (stringp (second prot)) (consp (third prot)))
          do (replace-protein-def prot
                                  :upa-ht *upa-key-upm-val*
                                  :upm-ht *upm-key-upa-val*
                                  :output-stream output-stream
                                  :non-upa-stream non-upa-stream))))

(defun revise-prot-def (prot)
  (replace-protein-def prot :output-stream t))

(defun replace-protein-def (prot 
                            &key
                              output-stream
                              non-upa-stream
                              (upa-ht *upa-key-upm-val*)
                              (upm-ht *upm-key-upa-val*))
  (cond ((eq 0 (search "UP:" (second prot)))
         (write-upa-protein prot :output-stream output-stream))
        ((gethash (second prot) upa-ht)
         (rewrite-protein prot (second prot) 
                          (gethash (second prot) upa-ht)
                          output-stream))
        ((gethash (second prot) upm-ht)
         (rewrite-protein prot (gethash (second prot) upm-ht)
                          (second prot)
                          output-stream))
        ((check-alts-for-UP (cons (second prot) (third prot)))
         (rewrite-protein prot
                          (check-alts-for-UP (cons (second prot) (third prot)))
                          (second prot)
                          output-stream))
        (t
         (pushnew prot *non-upa-upm*)
         (write-non-upa-protein prot non-upa-stream))))


(defun get-upa-from-symbol (sym)
  (cond ((gethash sym *upa-key-upm-val*) sym)
        ((gethash sym *upm-key-upa-val*))
        ((gethash sym *hgnc-up-ht*))))
                        
(defun rewrite-protein (prot upa upm output-stream)
  "Given an existing protein definition, its UPA, UPM and an output
file, prints a new protein definition to that file with the ID as
UP:UPA and adds the UPA and UPM to the alternate names"
  (let* ((*print-pretty* nil)
         (*print-case* :DOWNCASE)
         (orig-alt-names (third prot))
         (alt-names-with-upm (if (member upm orig-alt-names :test #'equal)
                                 orig-alt-names
                                 (push upm orig-alt-names)))
         (defprot (car prot))
         (id (concatenate 'string "UP:" upa))
         (alt-names (if (member upa alt-names-with-upm :test #'equal)
                        alt-names-with-upm
                        (push upa alt-names-with-upm))))
    (if (eq output-stream t)
        `(,defprot ,id ,alt-names)
        (print `(,defprot ,id ,alt-names) output-stream))))

(defun write-upa-protein (prot output-stream)
  "Just writes the existing protein definition to the file with all
the other ones without modifying it"
  (let* ((*print-pretty* nil)
         (*print-case* :DOWNCASE))
    (print prot output-stream)))

(defun write-non-upa-protein (prot non-upa-stream)
  "Just writes the existing protein definition to the file with all
the other ones without modifying it"
  (let* ((*print-pretty* nil)
         (*print-case* :DOWNCASE))
    (print prot non-upa-stream)))


(defun check-alts-for-UP (alt-names)
  (let (up-names)
    (declare (special up-names))
    (loop for name in alt-names
          when (or (eq 0 (search "UniProt:" name)) (eq 0 (search "PR:" name)))
          do
            (let ((up-name? (subseq name (+ 1 (search ":" name)) (search " " name))))
              (when (gethash up-name? *upa-key-upm-val*)
                (pushnew up-name? up-names :test #'equal)))
          when (gethash (string-upcase name) *upa-key-upm-val*)
          do
            (pushnew  (string-upcase name) up-names :test #'equal)
          when (and (eq 0 (search "HGNC" name)) (gethash name *hgnc-up-ht*))
          do
            (let ((hgnc name))
              (declare (special hgnc))
              (lsp-break "hgnc")
              (pushnew (gethash name *hgnc-up-ht*) up-names :test #'equal)))

    (when (and up-names (null (cdr up-names)))
      (car up-names))))

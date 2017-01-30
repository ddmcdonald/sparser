(in-package :sparser)


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
    (when input
      (loop for prot = (read input nil)
            while prot
            when (and (stringp (second prot))
                        (consp (third prot)))
              do (cond ((equal "UP:" (subseq (second prot) 0 3))
                       (write-upa-protein prot :output-file output-file))
                       ((gethash (second prot) upa-ht)
                        (rewrite-protein prot (second prot) 
                                         (gethash (second prot) upa-ht)
                                        :output-file output-file))
                       ((gethash (second prot) upm-ht)
                        (rewrite-protein prot (gethash (second prot) upm-ht)
                                         (second prot)
                                         :output-file output-file))
                       ((check-alts-for-UP (third prot))
                        (rewrite-protein prot (check-alts-for-UP (third prot))
                                         (second prot)
                                         :output-file output-file))
                       (t
                        (pushnew prot *non-upa-upm*)
                        (write-non-upa-protein prot))))))
  output-file)

                        
(defun rewrite-protein (prot upa upm &key (output-file "standardized-protein-defs-new.lisp"))
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
    (with-open-file (stream (concatenate 'string "sparser:bio;" output-file)
                            :direction :output :if-exists :append 
                            :if-does-not-exist :create
                            :external-format :UTF-8)
      (print `(,defprot ,id ,alt-names)
             stream))))

(defun write-upa-protein (prot &key (output-file "standardized-protein-defs-new.lisp"))
  "Just writes the existing protein definition to the file with all
the other ones without modifying it"
   (let* ((*print-pretty* nil)
        (*print-case* :DOWNCASE))
     (with-open-file (stream (concatenate 'string "sparser:bio;" output-file)
                            :direction :output :if-exists :append
                            :if-does-not-exist :create
                            :external-format :UTF-8)
     (print prot stream))))

(defun write-non-upa-protein (prot &key (output-file "non-upa-upm-proteins.lisp"))
  "Just writes the existing protein definition to the file with all
the other ones without modifying it"
   (let* ((*print-pretty* nil)
        (*print-case* :DOWNCASE))
     (with-open-file (stream (concatenate 'string "sparser:bio;" output-file)
                            :direction :output :if-exists :append
                            :if-does-not-exist :create
                            :external-format :UTF-8)
     (print prot stream))))


(defun check-alts-for-UP (alt-names)
  (let ((up-names (loop for name in alt-names
                        when (or (eq 0 (search "UniProt:" name))
                                 (eq 0 (search "PR:" name)))
                        collect (subseq (if (search " " name)
                                            (subseq name 0 (search " " name))
                                            name)
                                        (+ 1 (search ":" name))))))
    (when (eq 1 (length up-names))
      (car up-names))))

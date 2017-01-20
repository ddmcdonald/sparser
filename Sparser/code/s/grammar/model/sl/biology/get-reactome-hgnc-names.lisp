(in-package :sparser)

;;;;;; get HGNC and Reactome protein names


(defparameter *hgnc-big-ht* (make-hash-table :size 1000000 :test #'equal))
(defparameter *reactome-prot-ht* (make-hash-table :size 40000))

(defun save-names (h)
    (loop for h in hgnc
        do
            (cond
            ((consp h) (loop for hh in h do (pushnew hgnc (gethash hh *hgnc-big-ht*) :test #'equal)))
            (h (pushnew hgnc (gethash h *hgnc-big-ht*) :test #'equal)))))


(defun save-hgnc-ids ()
  (load "~/projects/cwc-integ/sparser/sparser/code/s/grammar/model/sl/biology/not-loaded/hgnc/hgnc-with-ids-2.lisp")
  (loop for hgnc in (cdr *hgnc-ids*) do (save-names hgnc)))

(defun hgnc-mults ()
  (length (setq *hgnc-mults* (loop for x in hgnc-list when (cddr x) collect x))))

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

(defun expand-proteins ()
  (length (setq *prot-expansions*
                (loop for pn in *prot-names* collect (cons pn (remove-duplicates (remove nil (loop for n in (cdr pn) collect (gethash n *hgnc-big-ht*) ) :test #'equal))))))
  )

(defun get-reactome-proteins ()
  (setq *reactome-names*
        (get-forms-from-file "~/projects/r3/corpus/text-from-biopax/homo-sapiens/all-names.lisp"))

  (loop for x in *reactome-names*
        when (search "PROTEIN" (pname (second x)))
        do
          (pushnew (third x)(gethash (second x) *reactome-prot-ht*) :test #'equal))

  (length (setq *reactome-proteins* (mapcar #'car (hal *reactome-prot-ht*))))
  (car (setq *prot-names* (hal *reactome-prot-ht*)))
  (expand-proteins)
  (length (setq *unk* (loop for p in *PROT-EXPANSIONS* when (null (cdr p)) collect p)))
  (length (setq *known* (loop for p in *PROT-EXPANSIONS* when (cdr p) collect p)))
  (length (setq *ambig* (loop for p in *PROT-EXPANSIONS* when (cddr p) collect p)))
  )


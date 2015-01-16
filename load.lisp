
(defvar script :biology)
(defvar *sparser-trunk-dir* 
      (make-pathname :directory (pathname-directory *load-pathname*)
                     :device (pathname-device *load-pathname*)))

(defvar *s-dir* 
      (make-pathname :directory 
                     (append (pathname-directory *load-pathname*)
                             '("Sparser" "code" "s"))
                     :device (pathname-device *load-pathname*)))

(defun sparser-path (file)
  (merge-pathnames file *sparser-trunk-dir*))

(defun s-path (file)
    (merge-pathnames file *s-dir*))


(defun s-load (file &optional (dir *s-dir*))
  (load (merge-pathnames file dir)))

(s-load "load-nlp" *sparser-trunk-dir*)
(sparser::setup-bio)
(setq *note-text-relations* nil)
;  (trace-lexicon-unpacking)
;  (trace-morphology)
;  (incorporate-obo-terms)
;  (sparser-load "./Sparser/code/s/grammar/model/sl/biology/cureRAS/January Dry Run passages.lisp")
  (s-load "interface/R3-eval/jan-sents.lisp")
  (s-load "interface/R3-eval/jan15-output.lisp")
  (setf *readout-relations* t)

(ccl::cd (s-path "interface/R3-eval/"))

(setf *package* (find-package :sparser))

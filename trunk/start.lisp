(in-package :sparser)
(defun startup ()
  (setup-bio)
  (setq *note-text-relations* nil)
;  (trace-lexicon-unpacking)
;  (trace-morphology)
;  (incorporate-obo-terms)
  (load "~/sparser/Sparser/code/s/grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
  (load "~/sparser/dec14-output.lisp")
  )

(startup)
(setf *readout-relations* t)

;; a sample entry in list *dec-tests*
;;     (p "It is the least-selective drug that we used.")

;(cd "~/sparser")

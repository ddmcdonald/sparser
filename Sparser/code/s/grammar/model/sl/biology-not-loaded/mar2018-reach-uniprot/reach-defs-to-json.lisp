(in-package :sparser)

;;(load "~/projects/r3/code/vocabulary-discovery/python-uniprot-utilities/03-2018_prot-candidates.lisp")
#|
(with-open-file (stream "~/projects/r3/code/vocabulary-discovery/python-uniprot-utilities/Mar2018-reach-prot-cands3.json"
                        :direction :output :if-exists :supersede
                        :if-does-not-exist :create
                        :external-format :UTF-8)
  (format stream "{~%")
  (loop for prot in sparser::*new-reach-prot-cands*
        do (let ((text (cdr (assoc :+TEXT+ prot)))
                 (up (cdr (assoc :+UP+ prot))))
             (format stream " ~s: {~% \"UP\": ~s~% },~%"
                     text up)))
  (format stream "}"))
       
;; remember to remove last , from file

;(load "~/projects/cwc-integ/sparser/Sparser/code/s/grammar/model/sl/biology-not-loaded/mar2018-reach-uniprot/prots-not-in-uniprot-def.lisp")

#|
(with-open-file (stream "~/projects/r3/code/vocabulary-discovery/python-uniprot-utilities/Mar2018-reach-redo2-prot-cands.json"
                        :direction :output :if-exists :supersede
                        :if-does-not-exist :create
                        :external-format :UTF-8)
  (format stream "{~%")
  (loop for prot in *no-in-up-double-check*
        do (let ((text (car prot))
                 (up (subseq (car (second prot)) 3)))
             (format stream " ~s: {~% \"UP\": ~s~% },~%"
                     text up)))
  (format stream "}"))

;; REMEMBER to remove last , from file

|#

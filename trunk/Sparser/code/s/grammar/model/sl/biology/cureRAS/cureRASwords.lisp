(in-package :sparser)
(defun ends-with (string substr)
  (and (>= (length string) (length substr))
       (equal (subseq string (- (length string) (length substr)))
		substr)))
(defun pos-filter (l pos)
  (loop for c in l when (ends-with (symbol-name (car c)) pos) collect c))
(defun npfile (l filename)
  (with-open-file
    (stream filename :direction :output) 
  (loop for s in l do (print s stream))))

(load "~/sparser/Sparser/code/s/grammar/model/sl/biology/cureRAS/BAWElempos.lisp")
(load "~/sparser/Sparser/code/s/grammar/model/sl/biology/cureRAS/cureRASlempos.lisp")
(defparameter *wht* (make-hash-table))
(loop for wl in BAWE do (setf (gethash (car wl) *wht*) wl))
(setq comps (loop for wl in cureRAS when (or (null (gethash (car wl) *wht*))
                                             (> (/ (cadr wl) 5000000)
                                                (* 1.2 
                                                   (cadr (gethash (car wl) *wht*)))))
              collect (append wl (cdr (gethash (car wl) *wht*)))))
(setq comps (sort comps #'> :key #'cadr))
(defun cureRASwordLists ()
  (npfile (pos-filter comps "-N") 
        "~/sparser/Sparser/code/s/grammar/model/sl/biology/cureRAS/cureRASnouns.lisp")
  (npfile (pos-filter comps "-V") 
        "~/sparser/Sparser/code/s/grammar/model/sl/biology/cureRAS/cureRASverbs.lisp")
  (npfile (pos-filter comps "-J") 
        "~/sparser/Sparser/code/s/grammar/model/sl/biology/cureRAS/cureRASadjs.lisp")
 )




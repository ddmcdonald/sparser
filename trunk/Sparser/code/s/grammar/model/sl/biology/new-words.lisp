;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  Robert J. Bobrow  -- all rights reserved
;;; 
;;;     File:  "new-words"
;;;   Module:  "biology"
;;;  Version:  1.0 June 2015

(in-package :sparser)

(defun form-of (word)
  (declare (special word))
  (let*
      ((rs (word-rule-set word)))
    (declare (special rs))
    (when rs
      (let*
          ((rules (rs-single-term-rewrites rs))
           (first-rule (car rules))
           (form (cfr-form first-rule)))
        (declare (special rules first-rule form))
        form))))

(defparameter *pos-ht* (make-hash-table :size 100))

(defun record-new-word-forms ()
  (clrhash *pos-ht*)
  (loop for w in *newly-found-unknown-words* do (push w (gethash (form-of w) *pos-ht*))))


(defun save-new-word-list ()
  (declare (special *new-word-strings*))
  (length (setq *new-word-strings* 
                (sort (mapcar #'word-pname *newly-found-unknown-words*) #'string<)))
  
  (with-open-file
      (s "~/sparser/Sparser/code/s/grammar/model/sl/biology/new-word-list.lisp"
         :direction :output :if-exists :overwrite :if-does-not-exist :create)
    (format s
            ";;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015  Robert J. Bobrow  -- all rights reserved
;;; 
;;;     File:  \"new-word-list\"
;;;  Version:  1.0 June 2015

(in-package :sparser) ~& (defparameter  *new-words* ~& '(~&")
    (loop for w in *new-word-strings* do (print w s))
    (format s
            "~& ))~&")
    (record-new-word-forms)
    (format s
            "~& (defparameter  *new-word-forms* ~& '(~&")
    (maphash #'(lambda (pos l)
                 (declare (special pos))
                 (cond
                  ((null pos)
                   (print (list "unknown POS" l) s))
                  (t
                   (terpri s)
                   (pprint
                    (list (cat-symbol pos)
                          (sort (mapcar #'word-pname l) #'string<))
                    s))))
             *pos-ht*)
    (format s "~&))~&")))
      

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "make-definitions"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Broken out of comlex-verb-explorations 8/23/21

(in-package :sparser)

;;;---------------------------
;;; POS-specific constructors
;;;---------------------------
#| These are very similar to the forms that are used in shortcuts
(they should share changes in convention), but rather than evaluate
the define-category expression we return it.
|#

(defun make-category-form-for-a-noun (word name super mixins plural)
  (when plural ;; (:plural "oxen")
    (setq plural (cadr plural)))
  (let ((form
         `(define-category ,name
              :specializes ,super
              :instantiates :self
              :mixins ,mixins
              :realization ,(if plural
                              `(:common-noun (,word :plural ,plural))
                              `(:common-noun ,word))) ))
    form))


(defun make-category-form-for-a-verb (word name super mixins irreg)
  "Choice of mixin is determined by a call to verb-subcat-frame"
  (let ((form
         `(define-category ,name
              :specializes ,super
              :instantiates :self
              :mixins ,mixins
              :realization ,(if irreg
                              `(:verb (,word ,@irreg))
                              `(:verb ,word))) ))
    form))
  
(defun make-category-form-for-simple-adjective (word category-name super-category)
  (let ((form
         `(define-adjective ,(pname word)
              :cat ',category-name
              :super-category ',super-category)))
    form))

(defun make-category-form-for-graded-adjective (word category-name super-category er-est)                                               
  (let ((form
         `(define-adjective ,(pname word)
              :cat ',category-name
              :super-category ',super-category
              :er-est ',er-est)))
    form))

(defun make-category-form-for-an-adverb (word name super)
  (let ((form
         `(define-category ,name
              :specializes ,super
              :realization (:adverb ,word))))
    form))



(defun make-verb-particle-forms (base-verb)
  "Called from make-category-form on verbs that have particles.
   The verb will already have a category definition emitted to
   the outfile, so all we have to do is create a specialized
   category name and a verb+prep definition."
  (loop for prt in (verb-particles base-verb)
     collect (make-verb-particle-form base-verb prt)))

(defun make-verb-particle-form (verb particle)  
  (let ((cat-name (intern (string-append  verb "-" particle) (find-package :sp)))
        (superc (cat-name (super-category-for-POS :verb))) ; safe choice
        (mixins (list (verb-subcat-frame verb)))) ; Comlex subcat could improve this
    (let ((form
           `(define-category ,cat-name
                :specializes ,superc
                :instantiates :self
                :mixins ,mixins
                :realization (:verb (,verb :prep ,particle)))))
      form)))




;;----------------- originals -----------------

#| The call that write-comlex-verb-defs iterates over is
       (pprint-def-cl (def-cl-verb-form v) stream)
|#

;;--- unpacking the 'def' parameter

(defun pprint-def-cl (def stream)
  (format stream "~%(define-category ~a :specializes ~a"
          (string-downcase (second def))
          (string-downcase (pname (second (member :specializes def)))))
  (when (member :mixins def)
    (princ (string-downcase (format nil "~%     :mixins ~s" (second (member :mixins def))))
           stream))
  (when (member :binds def)
    (format stream "~%     :binds")
    (let ((bindings (second (member :binds def))))
      (format stream "~%      ((~s ~a)"
              (car (car bindings))
              (string-downcase (second (car bindings))))
      (when (cdr bindings)
        (loop for item in  (cdr bindings)
              do (format stream "~%       (~s ~a)"
                         (car item)
                         (string-downcase (second item)))))
      (format stream ")")))
  (format stream "~%     :realization ")
  (let ((realizations (second (member :realization def))))
    (push-debug `(,realizations))
    (format stream "(:~a " (string-downcase (car realizations)))
    (cond ((consp (second realizations))
           (format stream "( ")
           (cond ((stringp (car (second realizations)))
                  (format stream "~s " (car (second realizations))))
                 ((getf  (second realizations) :infinitive)
                  (format stream "~s " (second (member :infinitive (second realizations))))))
           (loop for (key val) on (if (stringp (car (second realizations)))
                                      (cdr (second realizations))
                                      (second realizations))
                 by #'cddr
                 unless (or (equal key :infinitive)
                            (equal val '*none*))
                   do (format stream " ~s ~s" key val))
           (format stream ")~%"))
          (t
           (format stream " ~s" (string-downcase (second realizations)))))
    (loop for (key val) on  (cddr realizations) by #'cddr
          do
             (if (search " " (string-downcase key))
                 (format stream " ~s ~s"
                         (intern (string-upcase key) :keyword)
                         (intern (string-upcase val)))
                 (format stream " :~a ~a"
                     (string-downcase key) val)))
    (format stream ")"))
  (format stream ")~%"))
    

;;--- make def forms



(defun def-cl-verb-form (word)
  "Collects the data that goes into a define-category form as in
   score-verbs.lisp"
  (let* ((subcat (subcat-from-word word))
	 (preps (prep-complements subcat))
	 (not-trans? (not-transitive-p subcat))
	 (realizations
          (loop for prep in preps
             unless (equalp prep "P-DIR")
             collect (list
                      (intern (string-upcase prep)
                              (find-package :keyword))
                      (intern (string-upcase prep)
                              (find-package :sp)))))
         (p-dir (member "p-dir" preps :test #'equal)))
	       
    `(define-category ,(cond
                         ((category-named (intern (string-upcase word)))
                          (format t  "~%;;; found existing category ~s in ~s~%"
                                  (intern (string-upcase word))
                                  (loc (category-named (intern (string-upcase word)))))
                          (intern (format nil "~a-CL-VERB" (string-upcase word))))
                         (t
                          (intern (string-upcase word))))
       :specializes comlex-verb
       ,@(when p-dir `(:mixins (with-p-dir)))
       ,@(when (remove "p-dir" preps  :test #'equal)
           `(:binds ,(mapcar (lambda (x) `(,(intern (string-upcase x))
                                           top))
                             (remove "p-dir" preps  :test #'equal))))
       :realization
       (:verb ,(verb-inflections-from-word word)
        :s subject
        ,@(unless not-trans? nil '(:o object))
        ,@(flatten realizations)))))



(defun def-cl-noun-form (word)
  (let* ((subcat (noun-subcat-from-entry word))
	 (preps (prep-complements subcat))
	 (not-trans? (not-transitive-p subcat))
	 (realizations
           (loop for prep in preps
                 unless (equalp prep "P-DIR")
                   collect
                   (list
                    (intern (string-upcase prep)
                            (find-package :keyword))
                    (intern (string-upcase prep)
                            (find-package :sp)))))
         (p-dir (member "p-dir" preps :test #'equal)))
	       
    `(define-category ,(intern (format nil "~a-CL-NOUN" (string-upcase word)))
       #+ignore(cond
                 ((category-named (intern (string-upcase word)))
                  #+ignore
                  (format t  "~%;;; found existing category ~s in ~s~%"
                          (intern (string-upcase word))
                          (loc (category-named (intern (string-upcase word)))))
                  (intern (format nil "~a-CL-NOUN" (string-upcase word))))
                 (t
                  (intern (string-upcase word))))
       :specializes comlex-noun
       ,@(when p-dir `(:mixins (with-p-dir)))
       ,@(when (remove "p-dir" preps  :test #'equal)
           `(:binds ,(mapcar (lambda (x) `(,(intern (string-upcase x))
                                           top))
                             (remove "p-dir" preps  :test #'equal))))
       :realization
       (:noun ,(noun-inflections-from-word word)
              ,@(flatten realizations)))))





(defun def-cat-form (word)
  (let* ((subcat (subcat-from-word word))
	 (preps (prep-complements subcat))
	 (not-trans? (not-transitive-p subcat))
	 (realizations
	  (mapcar #'list
		  (loop for prep in preps
		     collect (intern (concatenate 'string ":" prep)))
		  preps)))
	       
    `(define-category ,(intern word) :specializes bio-predication
		      :binds ((subject biological)
			      ,(mapcar (lambda (x) `(,(intern x) biological))
				       preps))
		      :realization
		      ,(flatten (append
				 '(:s subject)
				 (if not-trans? nil '(:o object))
				 realizations)))))




(defun ppdef (def s) 
  (format s "(define-category ~a :specializes ~a~&   :binds"
	  (string-downcase (symbol-name (second def)))
	  (string-downcase (symbol-name (fourth def))))
  (loop for b in (sixth def) 
     do (format s "~&(~a ~a)"
                (string-downcase (symbol-name (car b)))
                (string-downcase (symbol-name (second b)))))
  (format s ")~&    :realization~&    (:verb ~s"
	  (string-downcase (symbol-name (second def))))
  (loop for case on (eighth def) by #'cddr
     do (format s "~&      :~a ~a" 
		(string-upcase (symbol-name (car case)))
                (string-upcase (second case))))
  (format s "))~&~&"))


(in-package :sparser)


;;;------------
;;; the object
;;;------------

(define-category greek-letter
  :instantiates self
  :specializes  name
  :binds ((letter :primitive word))  

  :index (:key letter  :permanent))

;;;--------------
;;; instantiator
;;;--------------

(defun define-greek-letter (string)
  (let* ((word (define-word/expr string))
         new?
         (individual
          (or (find-individual 'greek-letter
                               :letter word)
              (progn
                (setq new? t)
                (define-individual 'greek-letter
                                   :letter word)))))
    (if new?
      (let ((rule
             (define-cfr category::greek-letter
                         `( ,word )
               :form category::proper-noun
               :referent individual)))
        (add-rule rule individual))
      individual)))

;;;-------
;;; cases
;;;-------

(loop for i from 913 to 937
      do (define-greek-letter (format nil "~a" (code-char i))))
(define-greek-letter (format nil "~a" (code-char 940)))
(loop for i from 945 to 961
      do (define-greek-letter (format nil "~a" (code-char i))))
(loop for i from 963 to 969
      do (define-greek-letter (format nil "~a" (code-char i))))
(define-greek-letter (format nil "~a" (code-char 981)))

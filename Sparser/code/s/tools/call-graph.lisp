(in-package :sparser)

;;; -----------------------
;;; code to display call trees
;;; -----------------------

#-sbcl(defparameter *sparser-fn-ht* (make-hash-table))
#-sbcl(do-symbols (v (find-package :sparser) *sparser-fn-ht*)
  (when (fboundp v) (setf (gethash (symbol-function v)*sparser-fn-ht*) v)))
(defparameter *seen-fns* (make-hash-table))
(defparameter *sp-package* (find-package :sparser))

(defun get-fn-name (fn)
  (cond ((symbolp fn) fn)
        ((sb-kernel::simple-fun-p fn)
         #-sbcl (gethash fn *sparser-fn-ht*)
         #+sbcl (sb-impl::%fun-name fn))
        (t nil)))

(defun sparser-call-tree (fn &optional (start t)(n 4)(stream t))
  (when start (clrhash *seen-fns*))
  (let* ((fn (if (functionp fn) fn (eval `(function ,fn))))
         (tree 
          (when (and
                 (sb-kernel::simple-fun-p fn)
                 (eq *sp-package* (symbol-package (get-fn-name fn))))
            (cond ((gethash fn *seen-fns*)
                   (list (get-fn-name fn) '*seen*))
                  (t
                   (when (> n 0)
                     (cons (progn
                             (setf (gethash fn *seen-fns*) t)
                             (get-fn-name fn))
                           (loop for f in
                                   (sb-introspect::find-function-callees fn)
                                 nconc
                                   (let ((ct (sparser-call-tree f nil (- n 1))))
                                     (when ct (list ct)))))))))))
    (if start
        (progn
          (initialize-indentation)
          (lc-print-tree tree))
        tree)))


(defun lc-print-tree (tree &optional (stream t))
  (cond ((consp tree)
         (emit-line stream "(~a" (string-downcase (car tree)))
         (with-indentation 2
           (loop for item in (cdr tree) do (lc-print-tree item stream)))
         (emit-line-continue stream ")"))
        (t (emit-line-continue stream " ~a" (string-downcase tree)))))


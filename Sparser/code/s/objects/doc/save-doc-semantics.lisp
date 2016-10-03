;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2012-2015  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "save-doc-semantics"
;;;   Module:  "objects;doc:"
;;;  Version:  0.1 1-Oct-2016

;; initiated 10/2016
;; Initial definition of mechanism to output semantics of each sentence in an article


(in-package :sparser)

(defparameter *article-semantics-directory* nil
  "turns on saving of article semantics")

(defparameter *sentence-results-stream* nil)


(defparameter *default-article-semantics-path*
  (when (find-package :r3)
    (probe-file (asdf:system-relative-pathname :r3 "../corpus/Articles_for_CURE/"))))



(defun save-article-semantics (&optional
                                 (dir
                                  (or *default-article-semantics-path*
                                      (when (find-package :r3)
                                        (probe-file (asdf:system-relative-pathname
                                                     :r3 "../corpus/Articles_for_CURE/"))))))
  (setq *article-semantics-directory* dir))

(defun dont-save-article-semantics ()
  (setq *article-semantics-directory* nil))

(defun initialize-article-semantic-file-if-needed (article)
  (declare (special article))
  
  (if (symbolp *article-semantics-directory*)
      (setq *sentence-results-stream* *article-semantics-directory*) ;; either T or NIL
      (let* ((title (title article))
             (file-path (make-semantics-filename article)))
        (declare (special file-path))
        (setq *sentence-results-stream*
              (open file-path
                    :direction :output
                    :if-exists :overwrite
                    :if-does-not-exist :create)))))


(defun close-article-semantic-file-if-needed (article)
  (when (and *article-semantics-directory*
             (streamp *sentence-results-stream*))
    (close *sentence-results-stream*))
  (setq *sentence-results-stream* nil))

(defun make-semantics-filename (article)
  (merge-pathnames  *article-semantics-directory*
                    (format nil "~a-semantics.lisp" (name article))))


(defparameter *one-expression-per-sentence* t)

(defmethod write-semantics ((sent sentence) s)
  (declare (special sent))
  (when (actually-reading)
    (if *one-expression-per-sentence*
        (write-combined-sentence-results sent s)
        (write-sentence-results sent s))))





(defmethod write-sentence-results ((s sentence) stream)
  (declare (special *show-syn-tree*))
  ;; we assume that this is called immediately after the sentence is parsed
  (loop for edge in (all-tts (starts-at-pos s)(ends-at-pos s))
     do 
       (let*
	   ((*no-edge-info* t)
	    ;;(*suppress-indiv-uids* t)
	    (ref (if (and
                      (edge-p edge)
                      (edge-mention edge))
                     (edge-referent edge)
                     ;; was (contextual-description (edge-mention edge)),
                     ;; but this seems to be wrong for conjunctions --
                     ;; need to look at conjunction distribution
                     edge)))
	 (declare (special ref *no-edge-info* *suppress-indiv-uids*))
         (format stream "~% --- ~s~%"
                 (if (edge-p edge)
                     (extract-string-spanned-by-edge edge)
                     edge))         
	 (if (word-p ref)
	     (format stream "  ~s" ref)
	     (write-sem-tree ref stream))
         (terpri stream)
         (terpri stream))))


(defparameter *direct-from-sem* t)

(defun write-sem-tree (ref stream)
  (setq ddm-util::*indentation* 0) ;; make sure indentation is restarted
  (if *direct-from-sem*
      (write-sem ref stream)
      (print-sem-tree (spire-tree ref) stream)))

(defmethod write-combined-sentence-results ((s sentence) stream)
  (declare (special *show-syn-tree*))
  ;; we assume that this is called immediately after the sentence is parsed
  (format stream "~%___________________~% ~s~%~%"
          (sentence-string s))
  (if *direct-from-sem*
      (write-sem s stream)
      (write-sem-tree
       `(interpretation
         ,.
         (loop for edge in (all-tts (starts-at-pos s)(ends-at-pos s))
            collect 
              (let*
                  ((*no-edge-info* t)
                   (*suppress-indiv-uids* t)
                   (mention (and
                             (edge-p edge)
                             (edge-mention edge)))
                   (ref (if mention
                            (base-description (edge-mention edge))
                            edge)))            (declare (special ref *no-edge-info* *suppress-indiv-uids*))
                            `(element
                              ,(if (word-p ref)
                                   `(wd ,(pname ref))
                                   (spire-tree ref))))))
       stream))
  (terpri stream))

(defmethod write-sem ((s sentence) stream)
  (setq ddm-util::*indentation* 0) ;; make sure indentation is restarted
  (emit-list-start "interpretation" stream)
  (loop for tt in (all-tts (starts-at-pos s)(ends-at-pos s))
     do
       (push-indentation)
       (emit-list-start "element" stream)
       (if (and (edge-p tt)
                (not (small-binding-list (edge-referent tt))))
           (push-indentation))
       (write-sem (if (edge-p tt)
                      (edge-referent tt)
                      tt)
                  stream)
       (emit-line-continue stream ")")
       (if (and (edge-p tt)
                (not (small-binding-list (edge-referent tt))))
           (pop-indentation))
       (pop-indentation))
  (emit-line-continue stream ")"))


(defmethod write-sem ((i individual) stream)
  (cond ((simple-number? i)
         (space-prin1 (value-of 'value i) stream))
        ((small-binding-list (indiv-old-binds i))
         (emit-list-start-continue (cat-string (car (indiv-type i))) stream)
         (let ((bl (filter-bl (indiv-old-binds i))))
           (when bl
             (emit-list-start-continue (string-downcase (var-name (binding-variable (car bl)))) stream)
             (write-sem (binding-value (car bl)) stream)
             (emit-line-continue stream ")")))
         (emit-line-continue stream ")"))
        (t
         (emit-list-start (cat-string (car (indiv-type i))) stream)
         (print-binding-list (indiv-old-binds i) stream)
         (emit-line-continue stream ")"))))

(defmethod write-sem ((w string) stream)
  (space-prin1 (pname w) stream))
(defmethod write-sem ((w word) stream)
  (space-prin1 (pname w) stream))
(defmethod write-sem ((w polyword) stream)
  (space-prin1 (pname w) stream))
(defmethod write-sem ((w symbol) stream)
  (lcase-space-prin1 (pname w) stream))
(defmethod write-sem ((w number) stream)
  (lcase-space-prin1 w stream))
(defmethod write-sem ((val cons) stream)
  (emit-list-start "" stream)
  (loop for element in val
     do
       (write-sem element stream))
  (format stream ")"))


(defmethod write-sem ((c referential-category) stream)
  (lcase-space-prin1 (cat-symbol c) stream))

(defmethod small-binding-list ((bl symbol)) (null bl))
(defmethod small-binding-list ((x word)) t)
(defmethod small-binding-list ((x polyword)) t)
(defmethod small-binding-list ((x number)) t)
(defmethod small-binding-list ((x string)) t)
(defmethod small-binding-list ((x referential-category)) t)
(defmethod small-binding-list ((bl cons))
  (setq bl (filter-bl bl))
  (when (binding-p (car bl)) ;; can be passed the value of the ITEMS variable, which is a list
    (and (null (cdr bl))
         (typecase (binding-value (car bl))
           ((or category string number symbol word polyword) t)
           (t nil)))))

(defmethod small-binding-list ((i individual))
  (let ((bl (indiv-binds i)))
    (and (null (cdr bl))
         (binding-p (car bl))
         (typecase (binding-value (car bl))
           ((or category string number symbol word polyword) t)
           (t nil)))))

(defun filter-bl (bl)
  (loop for b in bl
     when (meaningful-binding? b)
       collect b))

       
(defun meaningful-binding? (b)
  (and (binding-p b)
       (not (member (var-name (binding-variable b)) '(ras2-model has-determiner)))))

(defun print-binding-list (bindings stream)
  (push-indentation)
  (loop for binding in (filter-bl bindings)
     as var = (binding-variable binding)
     do
       (emit-list-start (string-downcase (var-name var)) stream)
       (if (small-binding-list (binding-value binding))
           (write-sem (binding-value binding) stream)
           (else
             (push-indentation)
             (write-sem (binding-value binding) stream)
             (pop-indentation)))
       (format stream ")"))
  (pop-indentation))
      

(defmethod print-sem-tree ((i individual) &optional stream)
  (print-sem-tree (semtree i) stream))

(defmethod print-sem-tree ((s string) &optional stream)
  (space-prin1 s stream))

(defun simple-number? (i)
  (and (individual-p i)
       (itypep i 'number)
       (not (collection-p i))))

(defmethod print-sem-tree ((sem-tree cons) &optional (stream *standard-output*))
  (declare (special *for-spire* *sentence-results-stream*))
  (let ((*suppress-indiv-uids* t))
    (declare (special *suppress-indiv-uids*))
    (cond 
      ((simple-number? (car sem-tree))       
       (space-prin1 (value-of 'value (car sem-tree)) stream))
      ((short-vvs (cdr sem-tree))
       (lcase-emit sem-tree stream))
      (t
       (emit-list-start (cat-string (car sem-tree)) stream)
       (print-var-vals
        (if (eq (car sem-tree) 'items) ;; simplify printout of the ITEMS in a collection
            ;; temproary to simplify comparisons
            (second (second (second sem-tree)))
            (cdr sem-tree))
        stream)
       (emit-line-continue stream ")")))))

(defmethod print-sem-tree (sem-tree &optional (stream *standard-output*))
  (space-prin1 sem-tree stream))

(defun lcase-emit (s stream)
  (emit-line stream  (string-downcase (format nil "~s" s))))

(defun lcase-prin1 (s stream)
  (format stream  "~a" (string-downcase (format nil "~s" s))))

(defun lcase-space-prin1 (s stream)
  (format stream  " ~a" (string-downcase (format nil "~s" s))))

(defun emit-list-start (item stream)
  (emit-line stream (concatenate 'string "(" item)))


(defun emit-list-start-continue (item stream)
  (emit-line-continue stream (concatenate 'string " (" item)))

(defun space-prin1 (item stream)
  (format stream " ~s" item))

(defun short-vvs (vvs)
  (and (null (cdr vvs))
       (or (not (consp (car vvs)))
           (not (consp (second (car vvs)))))))

(defun print-var-vals (vvs stream)
  (declare (special *for-spire*))
  (push-indentation)
  (loop for item in vvs
     unless (and (not *for-spire*) (consp item)
                 (member (car item) '(name uid)))
     do
       (if (consp item)
           (then
             (emit-list-start (string-downcase (format nil "~a" (car item))) stream)
             (push-indentation)
             (if
              (eq (car item) :members)
              (loop for element in (cdr item)
                 do
                   (print-sem-tree element stream))
              (print-sem-tree (second  item) stream))
             (format stream ")")
             (pop-indentation))
           (lcase-space-prin1 item stream)))
  (pop-indentation))

(defun cat-string (cat? &optional with-name)
  (cond ((individual-p cat?)
         (let* ((cat-str (string-downcase (cat-symbol (itype-of cat?))))
                (name (when with-name (value-of 'name cat?))))
           (if name
               (format nil "<~a ~a>" cat-str (pname name))
               cat-str)))
	((category-p cat?)
	 (string-downcase (cat-symbol cat?)))
	((symbolp cat?) (string-downcase cat?))
        ((consp cat?) (cat-string (car cat?)))
	(t cat?)))

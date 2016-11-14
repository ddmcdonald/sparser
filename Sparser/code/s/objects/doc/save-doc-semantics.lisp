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

(defparameter *use-xml* nil
  "produces XML output for the article")

(defparameter *default-article-semantics-path*
  (when (find-package :r3)
    (probe-file (asdf:system-relative-pathname :r3 "../corpus/Articles_for_CURE/"))))

(defun save-article-semantics (&optional                                 
                                 (write-xml-file? *use-xml*)
                                 (dir
                                  (or *default-article-semantics-path*
                                      (when (find-package :r3)
                                        (probe-file (asdf:system-relative-pathname
                                                     :r3 "../corpus/Articles_for_CURE/"))))))
  (setq *use-xml* write-xml-file?)
  (setq *article-semantics-directory* dir))

(defun dont-save-article-semantics ()
  (setq *article-semantics-directory* nil))

(defun initialize-article-semantic-file-if-needed (article)
  (declare (special article))
  (cond ((and *article-semantics-directory*
              (symbolp *article-semantics-directory*))
         (setq *sentence-results-stream* *article-semantics-directory*)) ;; either T or NIL
        (t
         (let* ((file-path (make-semantics-filename article)))
           (setq *sentence-results-stream*
                 (open file-path
                       :direction :output
                       :if-exists :supersede
                       :if-does-not-exist :create))
           (when *use-xml*
             (format *sentence-results-stream*
                     "<?xml version=\"1.0\" encoding=\"~a\"?>~%<article>~%"
                     (stream-external-format *sentence-results-stream*)))
           *sentence-results-stream*))))

(defparameter *show-semantics-output-name* nil)
(defun close-article-semantic-file-if-needed ()
  (when (and *article-semantics-directory*
             (streamp *sentence-results-stream*)
             (open-stream-p *sentence-results-stream*))
    (when *use-xml*
      (format *sentence-results-stream* "</article>~%"))
    (when *show-semantics-output-name*
      (format t "Semantics written to ~s.~%" (pathname *sentence-results-stream*)))
    (close *sentence-results-stream*))
  (setq *sentence-results-stream* nil))

(defun make-semantics-filename (article)
  (make-pathname :name (concatenate 'string
                                    (typecase article
                                      (string article)
                                      (pathname (pathname-name article))
                                      (t (string (name article))))
                                    "-semantics")
                 :type (if *use-xml* "xml" "lisp")
                 :defaults
                 (or *article-semantics-directory*
                     "~/projects/r3/corpus/Reach-sentences/results/")))

(defparameter *saved-bio-processes* nil)
(defparameter *blank-sents* nil)


;; this is executed when *save-bio-processes* is T
(defun save-bio-processes (*sent*)
  (declare (special *sent*))
  (let ((sems (find-sem-type-instances (sent-sem))))
    (if sems
        (push (list (sentence-string *sent*) sems) *saved-bio-processes*)
        (push (sentence-string *sent*) *blank-sents*))))


(defparameter *one-expression-per-sentence* t)

(defmethod write-semantics ((sent sentence) &optional (stream t))
  (declare (special sent))
  (when (actually-reading)
    (if *one-expression-per-sentence*
        (write-combined-sentence-results sent stream)
        (write-sentence-results sent stream))))

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

         (format stream "~%--- ~s~%"
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
  (if *direct-from-sem*
      (write-sem s stream)
      (write-sem-tree
       `(interpretation
         (sentence-text ,(sentence-string s))
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
                            edge)))
                (declare (special ref *no-edge-info* *suppress-indiv-uids*))
                `(element
                  ,(if (word-p ref)
                       `(wd ,(pname ref))
                       (spire-tree ref))))))
       stream))
  (terpri stream))

(defun prin-escaped (string stream &aux (string (string string)))
  (if (find-package :xmls)
    (uiop:symbol-call :xmls :write-escaped string stream)
    (write-string string stream)))

(defun sent-sem (&optional sent)
  ;; produces an s-expression which is the item that write-sem would produce
  ;; on the stream
  (when sent (p sent))
  (values
   (read-from-string
    (with-output-to-string (s)
      (write-sem (previous (sentence)) s)))))

(defun find-sem-type-instances (s &optional (types
                                             '(:or bio-control post-translational-modification binding
                                               interact ;; not sure this constitues a cardable entity, but I think REACH thinks so
                                               )))
  (when (consp s)
    (if (and (category-named (car s) nil)
             (itypep (car s) types))
        (list s)
        (loop for ss in s when (consp ss)
           append
             (find-sem-type-instances ss)))))


(defmethod write-sem ((s sentence) stream &optional (newline t))
  (declare (ignore newline))
  (setq ddm-util::*indentation* 0) ;; make sure indentation is restarted
  (start-element "interpretation" stream)
  (push-indentation)
  (start-element "sentence-text" stream)
  (if *use-xml*
      (write-sem (sentence-string s) stream)
      (format stream " ~s" (sentence-string s)))
  (finish-element "sentence-text" stream nil)
  (pop-indentation)
  (loop for tt in (all-tts (starts-at-pos s) (ends-at-pos s))
        as small = (and (edge-p tt) (small-binding-list (edge-referent tt)))
        do (push-indentation)
           (start-element "sem" stream)
           (unless small (push-indentation))
           (write-sem (if (edge-p tt) (edge-referent tt) tt) stream)
           (unless small (pop-indentation))
           (finish-element "sem" stream (not small))
           (pop-indentation))
  (finish-element "interpretation" stream))

(defmethod write-sem ((i individual) stream &optional (newline t))
  (cond ((simple-number? i)
         (space-prin1 (value-of 'value i) stream))
        ((and *use-xml*
              (itypep i 'protein)
              (= (length (filter-bl i)) 2)
              (value-of 'name i)
              (value-of 'uid i))
         (write-protein-xml i stream))
        ((or (small-binding-list i) (null newline))
         (start-cat i stream nil)
         (print-binding-list i stream nil)
         (finish-cat stream nil))
        (t
         (start-cat i stream newline)
         (print-binding-list i stream newline)
         (finish-cat stream newline))))

(defun write-protein-xml (protein stream)
  (start-cat protein stream nil nil)
  (write-attribute 'name (value-of 'name protein) stream)
  (write-attribute 'uid (value-of 'uid protein) stream)
  (emit-line-continue stream "/>"))

(defun write-attribute (att-name item stream)
  (format stream " ~a=\"" (string-downcase att-name))
  (prin-escaped (pname item) stream)
  (format stream "\""))

(defmethod write-sem ((w string) stream &optional (newline t))
  (declare (ignore newline))
  (if *use-xml*
      (format stream "~a"
              (with-output-to-string (s-stream) (prin-escaped w s-stream)))
    (format stream " ~s" w)))

(defmethod write-sem ((w word) stream &optional (newline t))
  (write-sem (pname w) stream newline))
(defmethod write-sem ((w polyword) stream &optional (newline t))
  (write-sem (pname w) stream newline))
(defmethod write-sem ((w symbol) stream &optional (newline t))
  (cond (*use-xml*
         (prin-escaped (string-downcase (pname w)) stream))
        ((search " " (pname w))
         (format stream " ~s" w))
        (t (format stream " ~s" (string-downcase (pname w))))))
(defmethod write-sem ((w number) stream &optional (newline t))
  (declare (ignore newline))
  (format stream " ~a" w))
(defmethod write-sem ((val cons) stream &optional (newline t))
  (declare (ignore newline))
  (start-cat "set" stream)
  (loop initially (push-indentation)
        for element in val
        do (write-sem element stream)
        finally (pop-indentation))
  (finish-cat stream))
(defmethod write-sem ((c referential-category) stream &optional (newline t))
  (declare (ignore newline))
  (start-cat c stream nil)
  (finish-cat stream nil))

(defun write-lambda-binding (binding stream &optional newline)
  (if *use-xml*
      (let ((name (string-downcase (pname (binding-variable binding)))))
        (start-lambda-var "var" name stream newline)
        (write-attribute 'lambda-variable "true" stream)
        (finish-lambda-var "var" name stream newline))
      (else
        (start-var (binding-variable binding) stream newline)
        (format stream " *lambda-var*")
        (finish-var stream newline))))

(defun start-lambda-var (element name stream &optional (newline t)
                         &aux (name (if (symbolp name)
                                        name
                                        (string-downcase name))))
  (cond (*use-xml*
         (emit-line-continue stream
                             (format nil "<~a name=\"" element))
         (prin-escaped name stream)
         (emit-line-continue stream "\""))
        (newline
         (if (symbolp name)
             (emit-line stream (format nil " (~s" name))
             (emit-line stream (concatenate 'string " (" name))))
        (t
         (if (symbolp name)
             (emit-line-continue stream (format nil " (~s" name))
             (emit-line-continue stream (concatenate 'string " (" name))))))

(defun print-binding-list (i stream &optional (newline t))
  (when newline (push-indentation))
  (loop for binding in (filter-bl i)
     do (write-sem binding stream newline))
  (when newline (pop-indentation)))

(defmethod write-sem ((binding binding) stream &optional (newline t))
  (let ((var (binding-variable binding))
        (small (small-binding-list (binding-value binding))))
    (declare (special small))
    (if
     (eq (binding-value binding) '*lambda-var*)
     (write-lambda-binding binding stream)
     (else (start-var var stream newline)
           (if small
               (then
                 (write-sem (binding-value binding) stream nil))
               (else
                 (push-indentation)
                 (write-sem (binding-value binding) stream newline)
                 (pop-indentation)))
           (finish-var stream (not small))))))


(defun start-element (element stream &optional (newline t))
  (let ((start (format nil "~:[(~a~;<~a>~]" *use-xml* element)))
    (if newline
      (emit-line stream start)
      (emit-line-continue stream start))))

(defun finish-element (element stream &optional (newline t))
  (let ((finish (format nil "~:[~*)~;</~a>~]" *use-xml* element)))
    (if (and newline *use-xml*)
      (emit-line stream finish)
      (emit-line-continue stream finish))))

(defun start-named-element (element att-name name stream &optional (newline t) (close t)
                            &aux (name (if (symbolp name)
                                           name
                                           (string-downcase name))))
  (if *use-xml*
      (let ((start (format nil "<~a ~a=\"" element att-name)))
        (if newline
            (emit-line stream start)
            (emit-line-continue stream start))
        (prin-escaped (string-downcase name) stream)
        (write-string (if close "\">" "\"") stream))
      (if newline
          (if (symbolp name)
              (emit-line stream (format nil " (~s" name))
              (emit-line stream (concatenate 'string " (" name)))
          (if (symbolp name)
              (emit-line-continue stream (format nil " (~s" name))
              (emit-line-continue stream (concatenate 'string " (" name))))))



(defun finish-lambda-var (element name stream &optional (newline t)
                          &aux (name (if (symbolp name)
                                         name
                                         (string-downcase name))))
  (cond (*use-xml*
         (emit-line-continue stream (format nil "/>" element)))
        (t
         (emit-line-continue stream (format nil ")" element)))))

(defmethod start-cat ((item symbol) stream &optional (newline t) (close t))
  (if (search " " (pname item))
      (start-named-element "ref"
                           "category"
                           (intern (symbol-name  item) :sparser)
                           stream
                           newline
                           close)
      (start-cat (pname item) str newline close)))

(defmethod start-cat ((item referential-category) stream &optional (newline t) (close t))
  (start-cat (cat-symbol item) stream newline close))

(defmethod start-cat ((item individual) stream &optional (newline t) (close t))
  (start-cat (itype-of item) stream newline close))

(defmethod start-cat ((item string) stream &optional (newline t) (close t))
  (start-named-element "ref" "category" item stream newline close))

(defmethod start-var ((item lambda-variable) stream &optional (newline t))
  (start-var (pname item) stream newline))

(defmethod start-var ((item symbol) stream &optional (newline t))
  (start-var (pname item) stream newline))

(defmethod start-var ((item string) stream &optional (newline t))
  (start-named-element "var" "name" item stream newline))

(defun finish-cat (stream &optional (newline t))
  (finish-element "ref" stream newline))

(defun finish-var (stream &optional (newline t))
  (finish-element "var" stream newline))

(defmethod small-binding-list ((bl symbol)) (null bl))
(defmethod small-binding-list ((x word)) t)
(defmethod small-binding-list ((x polyword)) t)
(defmethod small-binding-list ((x number)) t)
(defmethod small-binding-list ((x string)) t)
(defmethod small-binding-list ((x referential-category)) t)

(defmethod small-binding-list ((i individual))
  (let ((bl (filter-bl i)))
    (and (null (cdr bl))
         (or (not (binding-p (car bl)))
             (typecase (binding-value (car bl))
               ((or category string number symbol word polyword)
                (not (eq (binding-value (car bl)) '*lambda-var*)))
               (t nil))))))

(defmethod small-binding-list ((c cons))
  nil)

(defun filter-bl (i)
  (when (individual-p i)
    (loop for b in (indiv-old-binds i)
       when (meaningful-binding? b i)
       collect b)))

       
(defun meaningful-binding? (b i)
  (and (binding-p b)
       (not (member (var-name (binding-variable b)) '(ras2-model has-determiner)))))


;;;;;;;;;;;;;;
      

(defmethod print-sem-tree ((i individual) &optional stream)
  (print-sem-tree (semtree i) stream))

(defmethod print-sem-tree ((s string) &optional stream)
  (space-prin1 s stream))

(defun simple-number? (i)
  (and (individual-p i)
       (itypep i 'number)
       (not (itype i 'multiplier))
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
  (emit-line stream (string-downcase (format nil "~s" s))))

(defun lcase-prin1 (s stream)
  (format stream "~a" (string-downcase (format nil "~s" s))))

(defun lcase-space-prin1 (s stream)
  (format stream " ~a" (string-downcase (format nil "~s" s))))

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

(defmethod cat-string ((cat individual) &optional with-name)
  (let* ((cat-str (string-downcase (cat-symbol (itype-of cat))))
         (name (when with-name (value-of 'name cat))))
    (if name
        (format nil "<~a ~a>" cat-str (pname name))
        cat-str)))

(defmethod cat-string ((cat referential-category) &optional with-name)
  (declare (ignore with-name))
  (string-downcase (cat-symbol cat)))

(defmethod cat-string ((cat symbol) &optional with-name)
  (declare (ignore with-name))
  (string-downcase cat))

(defmethod cat-string ((cat cons) &optional with-name)
  (declare (ignore with-name))
  (cat-string (car cat)))

(defmethod cat-string (cat &optional with-name)
  (declare (ignore with-name))
  cat)

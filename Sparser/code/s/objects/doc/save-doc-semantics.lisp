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

(defmethod write-semantics ((sent sentence) &optional (strm t)) ;; strm is the stream
  (declare (special sent))
  (when (actually-reading)
    (if *one-expression-per-sentence*
        (write-combined-sentence-results sent strm)
        (write-sentence-results sent strm))))

(defmethod write-sentence-results ((s sentence) strm)
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

         (format strm "~%--- ~s~%"
                 (if (edge-p edge)
                     (extract-string-spanned-by-edge edge)
                     edge))         
	 (if (word-p ref)
	     (format strm "  ~s" ref)
	     (write-sem-tree ref strm))
         (terpri strm)
         (terpri strm))))


(defparameter *direct-from-sem* t)

(defun write-sem-tree (ref strm)
  (setq ddm-util::*indentation* 0) ;; make sure indentation is restarted
  (if *direct-from-sem*
      (write-sem ref strm)
      (print-sem-tree (spire-tree ref) strm)))

(defmethod write-combined-sentence-results ((s sentence) strm)
  (declare (special *show-syn-tree*))
  ;; we assume that this is called immediately after the sentence is parsed
  (if *direct-from-sem*
      (write-sem s strm)
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
       strm))
  (terpri strm))

(defun prin-escaped (string strm &aux (string (string string)))
  (if (find-package :xmls)
    (uiop:symbol-call :xmls :write-escaped string strm)
    (write-string string strm)))

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


(defmethod write-sem ((s sentence) strm &optional (newline t))
  (declare (ignore newline))
  (setq ddm-util::*indentation* 0) ;; make sure indentation is restarted
  (start-element "interpretation" strm)
  (push-indentation)
  (start-element "sentence-text" strm)
  (if *use-xml*
      (write-sem (sentence-string s) strm)
      (format strm " ~s" (sentence-string s)))
  (finish-element "sentence-text" strm nil)
  (pop-indentation)
  (loop for tt in (all-tts (starts-at-pos s) (ends-at-pos s))
        as small = (and (edge-p tt) (small-binding-list (edge-referent tt)))
        do (push-indentation)
           (start-element "sem" strm)
           (unless small (push-indentation))
           (write-sem (if (edge-p tt) (edge-referent tt) tt) strm)
           (unless small (pop-indentation))
           (finish-element "sem" strm (not small))
           (pop-indentation))
  (finish-element "interpretation" strm))

(defmethod write-sem ((i individual) strm &optional (newline t))
  (cond ((simple-number? i)
         (space-prin1 (value-of 'value i) strm))
        ((and *use-xml*
              (itypep i 'protein)
              (= (length (filter-bl i)) 2)
              (value-of 'name i)
              (value-of 'uid i))
         (write-protein-xml i strm))
        ((or (small-binding-list i) (null newline))
         (start-cat i strm nil)
         (print-binding-list i strm nil)
         (finish-cat strm nil))
        (t
         (start-cat i strm newline)
         (print-binding-list i strm newline)
         (finish-cat strm newline))))

(defun write-protein-xml (protein strm)
  (start-cat protein strm nil nil)
  (write-attribute 'name (value-of 'name protein) strm)
  (write-attribute 'uid (value-of 'uid protein) strm)
  (emit-line-continue strm (format nil "/>")))

(defun write-attribute (att-name item strm)
  (format strm " ~a=\"" (string-downcase att-name))
  (prin-escaped (pname item) strm)
  (format strm "\" "))

(defmethod write-sem ((w string) strm &optional (newline t))
  (declare (ignore newline))
  (if *use-xml*
      (format strm "~a"
              (with-output-to-string (s-strm) (prin-escaped w s-strm)))
    (format strm " ~s" w)))

(defmethod write-sem ((w word) strm &optional (newline t))
  (write-sem (pname w) strm newline))
(defmethod write-sem ((w polyword) strm &optional (newline t))
  (write-sem (pname w) strm newline))
(defmethod write-sem ((w symbol) strm &optional (newline t))
  (cond (*use-xml*
         (prin-escaped (string-downcase (pname w)) strm))
        ((search " " (pname w))
         (format strm " ~s" w))
        (t (format strm " ~s" (string-downcase (pname w))))))
(defmethod write-sem ((w number) strm &optional (newline t))
  (declare (ignore newline))
  (format strm " ~a" w))
(defmethod write-sem ((val cons) strm &optional (newline t))
  (declare (ignore newline))
  (start-cat "set" strm)
  (loop initially (push-indentation)
        for element in val
        do (write-sem element strm)
        finally (pop-indentation))
  (finish-cat strm))
(defmethod write-sem ((c referential-category) strm &optional (newline t))
  (declare (ignore newline))
  (start-cat c strm nil)
  (finish-cat strm nil))

(defun write-lambda-binding (binding strm &optional newline)
  (if *use-xml*
      (let ((name (string-downcase (pname (binding-variable binding)))))
        (start-lambda-var "var" name strm newline)
        (write-attribute 'lambda-variable "true" strm)
        (finish-lambda-var "var" name strm newline))
      (else
        (start-var (binding-variable binding) strm newline)
        (format strm " *lambda-var*")
        (finish-var strm newline))))

(defun start-lambda-var (element name strm &optional (newline t)
                         &aux (name (if (symbolp name)
                                        name
                                        (string-downcase name))))
  (cond (*use-xml*
         (emit-line-continue strm
                             (format nil "<~a name=\"" element))
         (prin-escaped name strm)
         (emit-line-continue strm "\""))
        (newline
         (if (symbolp name)
             (emit-line strm (format nil " (~s" name))
             (emit-line strm (concatenate 'string " (" name))))
        (t
         (if (symbolp name)
             (emit-line-continue strm (format nil " (~s" name))
             (emit-line-continue strm (concatenate 'string " (" name))))))

(defun print-binding-list (i strm &optional (newline t))
  (when newline (push-indentation))
  (loop for binding in (filter-bl i)
     do (write-sem binding strm newline))
  (when newline (pop-indentation)))

(defmethod write-sem ((binding binding) strm &optional (newline t))
  (let ((var (binding-variable binding))
        (small (small-binding-list (binding-value binding))))
    (declare (special small))
    (if
     (eq (binding-value binding) '*lambda-var*)
     (write-lambda-binding binding strm)
     (else (start-var var strm newline)
           (if small
               (then
                 (write-sem (binding-value binding) strm nil))
               (else
                 (push-indentation)
                 (write-sem (binding-value binding) strm newline)
                 (pop-indentation)))
           (finish-var strm (not small))))))


(defun start-element (element strm &optional (newline t))
  (let ((start (format nil "~:[(~a~;<~a>~]" *use-xml* element)))
    (if newline
      (emit-line strm start)
      (emit-line-continue strm start))))

(defun finish-element (element strm &optional (newline t))
  (let ((finish (format nil "~:[~*)~;</~a>~]" *use-xml* element)))
    (if (and newline *use-xml*)
      (emit-line strm finish)
      (emit-line-continue strm finish))))

(defun start-named-element (element att-name name strm &optional (newline t)(close t)
                            &aux (name (if (symbolp name)
                                           name
                                           (string-downcase name))))
  (if *use-xml*
      (let ((start (format nil "<~a ~a\"" element att-name)))
        (if newline
            (emit-line strm start)
            (emit-line-continue strm start))
        (prin-escaped (string-downcase name) strm)
        (write-string (if close "\">" " ") strm))
      (if newline
          (if (symbolp name)
              (emit-line strm (format nil " (~s" name))
              (emit-line strm (concatenate 'string " (" name)))
          (if (symbolp name)
              (emit-line-continue strm (format nil " (~s" name))
              (emit-line-continue strm (concatenate 'string " (" name))))))



(defun finish-lambda-var (element name strm &optional (newline t)
                          &aux (name (if (symbolp name)
                                         name
                                         (string-downcase name))))
  (cond (*use-xml*
         (emit-line-continue strm (format nil "/>" element)))
        (t
         (emit-line-continue strm (format nil ")" element)))))

(defmethod start-cat ((item symbol) str &optional (newline t)(close t))
  (if (search " " (pname item))
      (start-named-element "ref"
                           "category"
                           (intern (symbol-name  item) :sparser)
                           str
                           newline
                           close)
      (start-cat (pname item) str newline close)))

(defmethod start-cat ((item referential-category) str &optional (newline t)(close t))
  (start-cat (cat-symbol item) str newline))

(defmethod start-cat ((item individual) str &optional (newline t)(close t))
  (start-cat (itype-of item) str newline))

(defmethod start-cat ((item string) str &optional (newline t)(close t))
  (start-named-element "ref" "category" item str newline close))

(defmethod start-var ((item lambda-variable) str &optional (newline t))
  (start-var (pname item) str newline))

(defmethod start-var ((item symbol) str &optional (newline t))
  (start-var (pname item) str newline))

(defmethod start-var ((item string) str &optional (newline t))
  (start-named-element "var" "name" item str newline))

(defun finish-cat (strm &optional (newline t))
  (finish-element "ref" strm newline))

(defun finish-var (strm &optional (newline t))
  (finish-element "var" strm newline))

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
      

(defmethod print-sem-tree ((i individual) &optional strm)
  (print-sem-tree (semtree i) strm))

(defmethod print-sem-tree ((s string) &optional strm)
  (space-prin1 s strm))

(defun simple-number? (i)
  (and (individual-p i)
       (itypep i 'number)
       (not (itype i 'multiplier))
       (not (collection-p i))))

(defmethod print-sem-tree ((sem-tree cons) &optional (strm *standard-output*))
  (declare (special *for-spire* *sentence-results-strm*))
  (let ((*suppress-indiv-uids* t))
    (declare (special *suppress-indiv-uids*))
    (cond 
      ((simple-number? (car sem-tree))       
       (space-prin1 (value-of 'value (car sem-tree)) strm))
      ((short-vvs (cdr sem-tree))
       (lcase-emit sem-tree strm))
      (t
       (emit-list-start (cat-string (car sem-tree)) strm)
       (print-var-vals
        (if (eq (car sem-tree) 'items) ;; simplify printout of the ITEMS in a collection
            ;; temproary to simplify comparisons
            (second (second (second sem-tree)))
            (cdr sem-tree))
        strm)
       (emit-line-continue strm ")")))))

(defmethod print-sem-tree (sem-tree &optional (strm *standard-output*))
  (space-prin1 sem-tree strm))

(defun lcase-emit (s strm)
  (emit-line strm  (string-downcase (format nil "~s" s))))

(defun lcase-prin1 (s strm)
  (format strm  "~a" (string-downcase (format nil "~s" s))))

(defun lcase-space-prin1 (s strm)
  (format strm  " ~a" (string-downcase (format nil "~s" s))))

(defun emit-list-start (item strm)
  (emit-line strm (concatenate 'string "(" item)))


(defun emit-list-start-continue (item strm)
  (emit-line-continue strm (concatenate 'string " (" item)))

(defun space-prin1 (item strm)
  (format strm " ~s" item))

(defun short-vvs (vvs)
  (and (null (cdr vvs))
       (or (not (consp (car vvs)))
           (not (consp (second (car vvs)))))))

(defun print-var-vals (vvs strm)
  (declare (special *for-spire*))
  (push-indentation)
  (loop for item in vvs
     unless (and (not *for-spire*) (consp item)
                 (member (car item) '(name uid)))
     do
       (if (consp item)
           (then
             (emit-list-start (string-downcase (format nil "~a" (car item))) strm)
             (push-indentation)
             (if
              (eq (car item) :members)
              (loop for element in (cdr item)
                 do
                   (print-sem-tree element strm))
              (print-sem-tree (second  item) strm))
             (format strm ")")
             (pop-indentation))
           (lcase-space-prin1 item strm)))
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

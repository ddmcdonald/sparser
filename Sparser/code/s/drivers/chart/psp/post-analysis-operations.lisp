;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "pos-analysis-operations"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  1.0 March 2016

;; all code for post-processing of sentences 


(in-package :sparser)


;;;----------------------------------------------------
;;; operations after the regular analysis has finished
;;;----------------------------------------------------

(defun post-analysis-operations (sentence)
  (when *scan-for-unsaturated-individuals*
    (sweep-for-unsaturated-individuals sentence))
  (identify-salient-text-structure sentence)
  (when *do-anaphora*
    (handle-any-anaphora sentence))
  (when (and *readout-relations* *index-cards*)
    (push `(,(sentence-string sentence) 
            ,(all-individuals-in-tts sentence)
            ,@(when *current-article*
                `(,*current-article*
                  ,*universal-time-start*
                  ,*universal-time-end*))
            ,(assess-relevance sentence))
          *all-sentences*))

  (save-missing-subcats)

  ;; We always retrieve the entities and relations to store
  ;; with the sentence and accumulate at higher levels
  (multiple-value-bind (relations entities tt-count)
      (identify-relations sentence)
    ;; (format t "sentence: ~a~%  ~a treetops" sentence tt-count)
    (set-entities sentence entities)
    (set-relations sentence relations)
    (set-tt-count sentence tt-count))

  (when *do-discourse-relations*
    (establish-discourse-relations sentence)))



;;;------------------------------------------------------------
;;; final operations on sentence before moving to the next one
;;;------------------------------------------------------------

(defun end-of-sentence-processing-cleanup (sentence)
  (declare (special sentence))
  (set-discourse-history sentence (cleanup-lifo-instance-list))
  (when *current-article*
    (save-article-sentence *current-article* sentence))
  ;;(lsp-break "end of sentence")
  ;; we could do a tts 
  #+ignore(when *readout-segments-inline-with-text* ;; be quiet when others are
    (format t "~&--------------------------~%~%")))



;;;---------------------------------------------------------------------
(defun create-sexpr-parse-tree (edge)
  (when
      (edge-p edge) ;; drop out word edges like "by
    (cond
      ((edge-p (edge-left-daughter edge))
       `(,edge
	 ,(create-sexpr-parse-tree (edge-left-daughter edge))
	 ,(create-sexpr-parse-tree (edge-right-daughter edge))))
      ((edge-p (edge-right-daughter edge))
       `(,edge
	 ,(create-sexpr-parse-tree (edge-left-daughter edge))
	 ,(create-sexpr-parse-tree (edge-right-daughter edge))))
      ((edge-constituents edge)
       `(,edge
	 ,@(mapcar #'create-sexpr-parse-tree
		   (edge-constituents edge))))
      (t (list edge)))))

(defun align-dependency-and-edges (edge &optional dependents)
  (unless dependents (setq dependents (list(edge-referent edge))))
  (cond
    ((eq edge :long-span)
     (lsp-break "long-span"))
    ((not (edge-p edge)) nil)
    ((and (not (edge-p (edge-left-daughter edge)))
	  (null (edge-constituents edge))
	  (null (edge-mention edge)))
     nil)
    ((member (edge-referent edge) dependents)
     (dep-and-edges edge
		    (when (eq
			   (mention-source (edge-mention edge))
			   edge)
		      (list (edge-mention edge)))
		    (find-dependents edge)))
    (dependents
     (dep-and-edges edge nil dependents))))

(defun edge-daughters (edge)
  (loop for d in
       (or (edge-constituents edge)
	   (list (edge-left-daughter edge)
		 (edge-right-daughter edge)))
     when
       (and
	(edge-p d)
	(not (eq (cat-name (edge-form d)) 'det)))
     collect
       (cond
	 ((eq (cat-name (edge-form d)) 'pp)
	  (edge-right-daughter d))
	 (t d))))

(defun dep-and-edges (edge result dependencies)
  (let (new-dependencies)
    (loop for daughter in (edge-daughters edge)
       when (edge-p daughter)
       do
	 (when (eq (cat-name (edge-form daughter)) 'pp)
	   (setq daughter (edge-right-daughter daughter)))
	 (let ((tree (align-dependency-and-edges daughter dependencies)))
	   (setq new-dependencies (find-dependent-individuals tree))
	   (setq dependencies (set-difference dependencies new-dependencies))
	   (when tree
	     (if (consp (car tree))
		 (setq result `(,@result ,@tree))
		 (setq result `(,@result ,tree))))))
    result))

(defmethod find-dependents ((e edge))
  (find-dependents (edge-referent e)))

(defmethod find-dependents ((i individual))
  (loop for b in (indiv-binds i)
     nconc
       (cond
	 ((eq (var-name(binding-variable b)) 'predication)
	  (list (cdar (hal (indiv-uplinks (binding-value b))))))
	 ((eq (var-name(binding-variable b)) 'under-determined)
	  (list (getf (binding-value b) :value)))
	 ((eq (var-name(binding-variable b)) 'items)
	  (copy-list (binding-value b)))
	 ((individual-p (binding-value b))
	  (list (binding-value b))))))

(defmethod find-dependents ((x t))
  (declare (ignore x))
  nil)


(defun find-dependent-individuals (tree)
  (cond
    ((typep tree 'discourse-mention)
     (list (mention-source tree)))
    ((consp tree)
     (loop for tr in tree nconc (find-dependent-individuals tr)))))

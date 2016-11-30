;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: MUMBLE; -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.
;;;
;;;     File: "krisp-mapping"
;;;   Module: "interface;mumble;"
;;;  Version: April 2016

;;; Krisp category / lexical head to annotated phrase

(in-package :mumble)

(defparameter *mappings-for-category-linked-phrase*
  (make-hash-table :test 'equal))

(defmethod record-krisp-mapping ((word word) (clp category-linked-phrase))
  "We need to be able to get to the CLP from both the Sparser and
   the Mumble words, and from the Krisp category (hidden in the CLP
   to simplify the signature). Doing string mapping of the words too."
  (let ((category (linked-category clp))
        (pname (pname word))
        (s-word (sparser::get-sparser-word-for-mumble-word word)))
    (setf (gethash category *mappings-for-category-linked-phrase*) clp)
    (setf (gethash word *mappings-for-category-linked-phrase*) clp)
    (setf (gethash s-word *mappings-for-category-linked-phrase*) clp)
    (setf (gethash pname *mappings-for-category-linked-phrase*) clp)))

(defmethod krisp-mapping ((i sp::individual))
  (krisp-mapping (sp::itype-of i)))

(defmethod krisp-mapping ((c sp::category))
  (gethash c *mappings-for-category-linked-phrase*))

(defmethod krisp-mapping ((w word))
  (gethash w *mappings-for-category-linked-phrase*))

(defmethod krisp-mapping ((w sp::word))
  (gethash w *mappings-for-category-linked-phrase*))

(defmethod krisp-mapping ((pname string))
  (gethash pname *mappings-for-category-linked-phrase*))


(defgeneric variable-for-parameter (parameter source)
  (:method ((p parameter) (mapping list))
    (variable-for-parameter
     p (find p mapping :key #'corresponding-parameter :test #'eq)))
  (:method ((p parameter) (pair parameter-variable-pair))
    (declare (ignore p))
    (corresponding-variable pair)))


(defgeneric apply-category-linked-phrase (individual)
  ;;(:documentation "")
  (:method ((i sp::individual))
    (let* (;;(clp (krisp-mapping i))
           ;;/// modify apply-mumble-phrase-data to call record-krisp-mapping
           ;; once it clear what to do when the 'word' isn't a verb
           (clp (realizing-resource i)))
      (when clp
        (apply-CLP-to-individual i clp)))))

(defun apply-CLP-to-individual (i clp)
  (let* ((phrase (linked-phrase clp))
         (map (parameter-variable-map clp))
         (dtn (make-dtn :referent i
                        :resource phrase)))
    (loop for pair in map
       as parameter = (corresponding-parameter pair)
       as variable = (corresponding-variable pair)
       as value = (sp::value-of variable i)
       do (make-complement-node parameter value dtn))
    dtn))


(defgeneric realizing-resource (item)
  (:documentation "Look up the resource(s) that will be used
   to realize the item.")
  (:method (null) nil)
  (:method ((i sp::individual))
    (or (realizing-resource (sp::itype-of i)) ;; get it from the category
        (word-for i 'noun))) ;; 'noun' presumes too much
  (:method ((c sp::referential-category))
    (sp::get-tag :mumble c)))

(defgeneric realizing-label (resource)
  (:documentation "Return the label of the resource,
    which will be a node-label if the resource is based on
    a phrase, or else a word-label.")
  (:method (null) nil)
  (:method ((clp category-linked-phrase))
    (realizing-label (linked-phrase clp)))
  (:method ((lp lexicalized-phrase))
    (realizing-label (phrase lp)))
  (:method ((p phrase))
    (car (car (definition p))))
  (:method ((w word))
    (car (word-labels w))))

;; have considered that a symbol might be easier in some cases
  #+ignore(:method ((n node-label))
    (name n))


    
;;;------------------------------------
;;; helpers for the incremental parser
;;;------------------------------------

(defun sp::incorporate-lexicalizations-into-predicted-path (lp)
  "Walk the position path until we encounter of the the parameters
   that's bound by the lexicalized phrase at which point we
   substitute the lp's value for that parameter. 
   Operates distructively in place."  
  (let* ((pairs (bound lp)) ;; parameter - value pairs
         (path (sp::predicted-path (sp::current-incremental-state))))
    (assert path) ;; should already be in place    
    (let ( modified )
      (loop for pvp in pairs
        do (setq modified
                 (subst (value pvp) (phrase-parameter pvp) path)))
      modified)))

(defvar *trace-popping-predicted-path* nil
  "Ad-hoc trace for pp1")

(defun ppp-1 (head-word path)
  ;;/// position would find the word if it worked on trees
  (let ((item (pop path)))
    (loop
      (when *trace-popping-predicted-path*
        (format t "~&item = ~a~%" item))
      (etypecase item
        (node-label) ;;///
        (keyword ;; :set-state (:aux-state mumble::initial)
         (pop path))
        (slot-label) ;;/// attachment points if dominates
        (parameter) ;; irrelevant on a word search
        (cons
         (ppp-1 head-word item))
        (word
         ;; We're assuming we've succeeded.
         ;; And that we could be a few levels down in the
         ;; node recursion, so we need to stash our
         ;; results and throw
         ;; Simplified (?) assumption that there will
         ;; only be one word
         (assert (eq head-word ;; sparser word
                     (sp::get-sparser-word-for-mumble-word item)))
         (setf (sp::predicted-path (sp::current-incremental-state))
               path)
         (throw :found-lexical-head t)))
      (setq item (pop path))
      (unless item
        (error "we've exhausted the path")))))

(defun sp::pop-path-to-next-slot (path state)
  "As called from walk-path-over-this-argument we have just
  completed the constituent that goes with the slot-label etc
  that is presently at the top of the path. Now pop that
  off. The question will be whether there is anything left
  on the path after we do this."
  ;; Caller has checked that the car of the path is correct
  (let ((item (pop path)))
    (loop
      (when *trace-popping-predicted-path*
        (format t "~&item = ~a~%" item))
      (etypecase item
        (parameter )
        (keyword ;; :additional-labels
         (pop path)) ;; get its argument
        (slot-label
         ;; we're done because we've found the
         ;; next slot in the path
         (setf (sp::predicted-path state) path)
         (throw :finished-path-walk :found-slot)))
      (setq item (pop path))
      (when (null item)
        (throw :finished-path-walk :path-exhausted)))))



;; not going to be used, but keep around a while for parts
(defun merge-lp-clp-parameter-specs (lexicalized-phrase catgory-linked-phrase)
  "Both arguments dictate how phrase parameters map to values."
  (let ((pvps (bound lexicalized-phrase)) ;; parameter-value-pair's
        (map (parameter-variable-map catgory-linked-phrase))
        alist )
    (loop for pvp in pvps
      do (push `(,(phrase-parameter pvp)
                 . ,(value pvp))
               alist))
    (loop for pair in map
      do (push `(,(corresponding-parameter pair)
                 . ,(corresponding-variable pair))
               alist))
    alist))



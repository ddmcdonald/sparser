;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "index instances"
;;;   Module:  "objects;model:categories:"
;;;  version:  August 1994

;; initiated 8/9/94 v2.3 from pieces of other files

(in-package :sparser)

;;;---------------------------------------------------
;;; decoding the index field of a category definition
;;;---------------------------------------------------

(defun decode-index-field (category op-object index-field)
  ;; the field is a list of keywords possibly followed by arguments.
  ;; We dispatch from the most discriminating to the least, finally
  ;; getting down to the names of the functions to be used.
  (multiple-value-bind (find-fn index-fn reclaim-fn)
                       (decode-index-field-aux category index-field)

    (setf (cat-ops-find op-object) find-fn)
    (setf (cat-ops-index op-object) index-fn)
    (setf (cat-ops-reclaim op-object) reclaim-fn)
    op-object ))


;;----- decode temporary vs. permanent

(defun decode-index-field-aux (category index-field)
  (cond ((member :temporary index-field)
         ;; The individuals will all be temporary and should be all flushed
         ;; when the model is reclaimed
         (decode-rest-of-index-field/temporary category index-field))

        ((member :permanent index-field)
         ;; All the individuals are permanent (pre-defined). None are
         ;; ever reclaimed
         (decode-rest-of-index-field/permanent category index-field))

        ((member :special-case index-field)
         (values (cadr (member :find index-field))
                 (cadr (member :index index-field))
                 (cadr (member :reclaim index-field))))

        (t ;; Both -- some predefined and some to be reclaimed
         (decode-rest-of-index-field/both category index-field))))



(defun decode-rest-of-index-field/temporary (category index-field)
  (multiple-value-bind (find-fn index-fn delete-fn)
                       (decode-for-find-&-index category index-field)
    (values find-fn
            index-fn
            delete-fn)))


(defun decode-rest-of-index-field/permanent (category index-field)
  (multiple-value-bind (find-fn index-fn delete-fn)
                       (decode-for-find-&-index category index-field)
    (values find-fn
            index-fn
            delete-fn)))



(defvar *both-permanent-and-temporary-individuals* nil
  "A flag that's set when setting up the operations for categories
   for which this is true.")

(defun both-version (ops-fn-data)
  ;; rename the function
  (if (consp ops-fn-data)
    (list (intern (concatenate 'string
                               (symbol-name (car ops-fn-data))
                               "/BOTH")
                  (find-package :sparser))
          (cadr ops-fn-data))
    (intern (concatenate 'string (car ops-fn-data) "/BOTH")
            (find-package :sparser))))

(defun decode-rest-of-index-field/both (category index-field)
  (let ((*both-permanent-and-temporary-individuals* t))
    (multiple-value-bind (find-fn index-fn delete-fn)
                         (decode-for-find-&-index category index-field)
      (values (both-version find-fn)
              index-fn
              delete-fn))))



;;;---------------------
;;; substantive decoder
;;;---------------------

(defun decode-for-find-&-index (category index-field)

  ;; initialize the instances field of the category and return the
  ;; functions that make sense for this index field

  (cond ((member :list index-field)
         (when *both-permanent-and-temporary-individuals*
           (setf (cat-instances category)
                 `(nil :permanent)))
         (values 'find/simple-list
                 'ii/simple-list
                 'delete/simple-list))

        ((member :key index-field)
         (let ((var (find-variable-in-category/named
                     (cadr (member :key index-field)) category)))
           (if *both-permanent-and-temporary-individuals*
             (setf (cat-instances category)
                   (cons (make-hash-table :test #'eql)
                         (make-hash-table :test #'eql)))
             (setf (cat-instances category)
                   (make-hash-table :test #'eql)))

           (values `(find/individual/key/hash ,var)
                   `(index/individual/key/hash ,var))))

        ((member :sequential-keys index-field)
         (let ((field-sequence
                (cdr (member :sequential-keys index-field)))
               var-sequence )
           (dolist (symbol field-sequence)
             (push (find-variable-in-category/named
                        symbol category)
                   var-sequence))
           (setq var-sequence (nreverse var-sequence))

           ;; index field will be an alist of alists, so we don't
           ;; initialize it.

           (values `(find/individual/seq-keys ,var-sequence)
                   `(index/individual/seq-keys ,var-sequence))))


        (t (error "No data in index field, ~A~
                   ~%from which to establish operations"
                  index-field))))


;;;-------
;;; Cases 
;;;-------

;; "ii" for "index/individual"

(defun ii/simple-list (individual category bindings)
  (declare (ignore bindings))
  (let ((field (cat-instances category)))
    (if (eq (cadr field) :permanent)
      (then
        (if *index-under-permanent-instances*
          (rplacd (cddr field)
                  (kcons individual (cddr field)))
          (rplaca (car field)
                  (kcons individual (car field)))))
      (else
        (setf (cat-instances category)
              (kcons individual (cat-instances category)))))
    individual ))



(defun index/individual/key/hash (variable
                                  individual category bindings)
  (declare (ignore bindings))

  (let* ((field (cat-instances category))
         (table
          (if (consp field)
            ;; it distinguishes between permanent and temporary
            (if *index-under-permanent-instances*
              (car field)
              (cdr field))
            field ))
         (value (value-of variable individual)))

    (push individual
          (gethash value table))))




(defun index/individual/seq-keys (key-sequence
                                  individual category bindings)
  (let ((instances (cat-instances category)))
    (if instances
      (let* ((first-key (car key-sequence))
             (value (value/var first-key individual))
             (entry (assoc value instances)))
        (if entry
          (i/i/sk-below-top entry (cdr key-sequence)
                            individual category bindings)

          (setf (cat-instances category)
                (append (i/i/sk key-sequence individual
                                category bindings)
                        instances))))

      (setf (cat-instances category)
            (i/i/sk key-sequence individual
                              category bindings)))))


(defun i/i/sk (keys indiv cat bindings)
  ;; there is no entry for this set of keys on down, so we can
  ;; build the nested alist without worrying about knitting into
  ;; existing lists
  (let* ((variable (first keys))
         (value (value/var variable indiv)))

    (if (rest keys)
      `((,value . ,(i/i/sk (rest keys) indiv cat bindings)))
      `((,value . ,indiv)) )))


(defun i/i/sk-below-top (entry remaining-keys
                         individual category bindings)

  ;; we're within an entry, so we keep going down until we've run out
  ;; of keys or we get a case where this particular key-value isn't
  ;; in the table, whereupon we rplacd in the rest of the levels.
  (declare (ignore bindings category))

  (let* ((next-key (car remaining-keys))
         (value (value/var next-key individual))
         (sub-entry (assoc value (cdr entry))))

    (if sub-entry
      (break "If there is more than one remaining-key, extend the~
              code, otherwise debug this.")
      (rplacd entry
              `((,value . ,individual)
                ,@(cdr entry))  ))))

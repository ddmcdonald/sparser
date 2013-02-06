;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996,2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "index instances"
;;;   Module:  "objects;model:categories:"
;;;  version:  2.0 February 2013

;; initiated 8/9/94 v2.3 from pieces of other files. Tweeking ...8/19
;; (4/20/95) added subr and predicate for permanent objects.
;; 1.1 (1/9/96) augmented Index/individual/key/hash to deal with individuals
;;      that get some of their bindings raised before they're indexed
;; 2.0 (10/9/09) There something weird going on with the key/hash case
;;      apparently related to the new treatment of variables for psi
;;     (2/4/13) Improved error message for missing key in hash case

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
  ;; a category's instances will be considered temporary unless
  ;; there is an explicit tag to indicate that they are permanent
  (cond ((member :temporary index-field))
        ((member :permanent index-field)
         (note-permanence-of-categorys-individuals category)))
  (decode-rest-of-index-field category index-field))



;;------ check for special cases

(defun decode-rest-of-index-field (category index-field)
  (cond
   ((member :special-case index-field)
    (values (cadr (member :find index-field))
            (cadr (member :index index-field))
            (cadr (member :reclaim index-field))))
   (index-field
    (multiple-value-bind (find-fn index-fn delete-fn)
                         (decode-for-find-&-index category index-field)
      (values find-fn
              index-fn
              delete-fn)))
   ((only-slot-is-word category)
    (let ((word-var (first (cat-slots category))))
      (values `(find/individual/key/hash ,word-var)
              `(index/individual/key/hash ,word-var)
              `(delete/individual/key/hash ,word-var))))
   (t (values 'find/simple-list
              'ii/simple-list
              'delete/simple-list))))



;;;---------------------
;;; substantive decoder
;;;---------------------

(defun decode-for-find-&-index (category index-field)

  ;; initialize the instances field of the category and return the
  ;; functions that make sense for this index field

  (cond ((member :list index-field)
         (values 'find/simple-list
                 'ii/simple-list
                 'delete/simple-list))

        ((member :key index-field)
         (let ((var (find-variable-in-category/named
                     (cadr (member :key index-field)) category)))
           (setf (cat-instances category)
                 (make-hash-table :test #'eql))
           (values `(find/individual/key/hash ,var)
                   `(index/individual/key/hash ,var)
                   `(delete/individual/key/hash ,var))))

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
                   `(index/individual/seq-keys ,var-sequence)
                   `(delete/individual/seq-keys ,var-sequence))))


        (t (error "No data in index field, ~A~
                   ~%from which to establish operations"
                  index-field))))


;;;-------
;;; Cases 
;;;-------

;; "ii" for "index/individual"

(defun ii/simple-list (individual category bindings)
  (declare (ignore bindings))
  (setf (cat-instances category)
        (kcons individual (cat-instances category)))
  individual )





(defun index/individual/key/hash (variable individual category bindings)
  (let* ((table (cat-instances category)))
    (unless table
      (setq table
            (setf (cat-instances category) (make-hash-table :test #'eql))))
    (unless (hash-table-p table)
      (error "Initialization bug: instances field of ~A~
              ~%is not a hash table" category))
    (let ((value (value-of variable individual)))
      (when (null value)
        (push-debug `(,variable ,individual ,category ,bindings))
        (error "Cannot index the individual ~a~
              ~%against the value of its ~a variable~
              ~%because the value is nil"
	       individual variable))
      (let ((earlier-value
             (probably-the-result-of-type-raising variable individual)))
        (let ((entry (gethash value table)))
          (if entry
            (unless (eq entry individual) ;; same individual again
	      (push-debug `(:index ,category ,value ,individual ,entry))
              (break "Attempting to index more than one individual ~
                      to a category~%that has only one key:~
                      ~% ~A~% key ~A~% rejected new value ~A~
                      ~% established value ~A"
                     category value individual entry))
            (else 
            ;(break "hashing")
            (if earlier-value
              (setf (gethash earlier-value table) individual)
              (setf (gethash value table) individual)))))))))



(defun index/individual/seq-keys (key-sequence
                                  individual category bindings)
 ;(break "before instance check")
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
                    category bindings)))
    ;(break "end")
    ))


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
      ;(break "Stub: If there is more than one remaining-key,~%extend the ~
      ;        code otherwise this needs debugging")
      (rplacd sub-entry
              (cons individual (cdr sub-entry)))
      (rplacd entry
              `((,value . ,individual)
                ,@(cdr entry))  ))))



;;;----------------------------------
;;; marker for permanent individuals
;;;----------------------------------

(defun note-permanence-of-categorys-individuals (category)
  (push-onto-plist category
                   t
                   :instances-are-permanent))


(defun individuals-of-this-category-are-permanent (category)
  ;; called by Define-individual to set the value of the flag
  ;; *index-under-permanent-instances* which that function binds.
  (get-tag-for :instances-are-permanent
               category))



;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:names:"
;;;  version:  0.1 July 2013

;; initiated 5/28/93 v2.3. Broke name word routines out to their own file 4/20/95. 
;; 0.1 (5/2) added an explicit name-creator to hack "and".   5/12 remodularized
;;  the Find routine
;;  (9/13) added sort routine
;;  (2/4/05) Swapping in the new, psi-oriented, sequence functions. (3/14/05) let
;;  the simple version of Make/uncategorized-name go through. (7/5/07) removed a 
;;  break statement.
;;  (2/8/13) Added names built from no-space pattern. 2/13/13 Added a class
;;   for named-object. Could have been in upper-model, but didn't want
;;   a complication with the restriction of the name variable to name.
;;  (7/4/131) Marked named-object permanent. Put traces in its find/make functions

(in-package :sparser)


;;;-----------------------------------------------------
;;; the root in the lattice for all names -- no content
;;;-----------------------------------------------------

(define-category  name
  :instantiates self
  :specializes nil )    ;; never instantiated, just a common
                        ;; root for this part of the lattice


;;;-----------------------------------------------
;;; common super-class for things that have names
;;;-----------------------------------------------

;; In Praxis, the NamedObject inherits from Thing (equivalent of
;; top here), and these have a Name (or several of them) which
;; inherits from Designator, which inherits from Information
;;   This is a mix-in class in my regular code
(define-category  named-object
  :instantiates :self
  ;; for people and companies and uncategorized-names the
  ;; name is based on a sequence. See core/names/object.lisp
  :binds ((name . name))
  :index (:permanent :key name)) ;; instances field is now a table


(defun find/named-object-with-name (name)
  (let* ((table (cat-instances (category-named 'named-object)))
         (object (gethash name table)))
    ;; place for tests
    (if object
      (tr :found-named-obj-with-name name object)
      (tr :id-not-find-named-object-for-name name))
    object))

(defun make/named-object-with-name (name)
  (let ((i (define-individual 'named-object :name name)))
    (tr :made-named-object-with-name i name)
    i))
  

;;;-----------------------------------
;;; making names from diverse sources
;;;-----------------------------------

(defparameter *break-on-new-name-converter-cases* nil
  "Flag that makes convert-to-canonical-name-form always
   return something even in new cases it doesn't understand.")

(defun convert-to-canonical-name-form (raw-name)
  "Because they have different sources, a referent of an edge
 that denotes a name migh be a real type of name, or it might
 be one of the constituents of a name such as a name word or more.
 This code tracks those cases and takes them all to
 an uncategorized-name object. ///Might want another argument
 to be more specific about the name's type and organization."
  ;; problem with ignoring the new cases is that it could blow
  ;; updownstream when the slot is bound and the type is wrong.
  (typecase raw-name
    (referential-category
     (when *break-on-new-name-converter-cases*
       (push-debug `(,raw-name))
       (break "Got a category rather than an individual"))
     raw-name)
    (individual
     (let ((category (itype-of raw-name)))
       (case (cat-symbol category)
         (category::uncategorized-name 
          raw-name) ;; already came in corrently
         (category::name-word
          (make-uncategorized-name-from-items `(,raw-name)))
         (otherwise
          (format t "~%~%New case for convert-to-canonical-~
                     name-form: ~a" raw-name)
          (when *break-on-new-name-converter-cases*
            (push-debug `(,raw-name))
            (break "new type of name"))
          raw-name))))
    (word
     (push-debug `(,raw-name))
     (break "raw-name is a word"))
    (cons
     (push-debug `(,raw-name))
     (break "raw-name is a cons"))
    (otherwise
     (push-debug `(,raw-name))
     (break "raw-name is of an unexpected type: ~a"
            (type-of raw-name)))))
     



;;;--------------
;;; sort routine
;;;--------------

(defun sort-individuals-by-their-name (i1 i2)
  (let ((name1 (value-of 'name i1))
        (name2 (value-of 'name i2)))

    (unless (and name1 name2)
      ;; the caller, Sort-individuals-alphabetically, has tested
      ;; that i1 has a name, so these both can't come up nil
      (return-from sort-individuals-by-their-name
        (cond (name1 t)
              (name2 nil))))

    (when (eq name1 name2)
      ;; wouldn't expect this to happen, but if we don't check for it
      ;; then the later stages will be harder to guarentee
      (return-from sort-individuals-by-their-name t))

    (cond
     ((and (individual-p name1) (individual-p name2))
      (if (and (itype name1 'name) (itype name2 'name))
        (let ((sequence1 (value-of 'sequence name1))
              (sequence2 (value-of 'sequence name2)))
          
          (unless (and sequence1 sequence2)
            (return-from sort-individuals-by-their-name
              (cond (sequence1 t)
                    (sequence2 nil)
                    (t nil))))
          
          (when (eq sequence1 sequence2)
            (return-from sort-individuals-by-their-name t))
          
          (let ((length1 (value-of 'number sequence1))
                (length2 (value-of 'number sequence2)))
            
            (cond
             ((> length1 length2) t)
             ((< length1 length2) nil)
             
             (t (let ((item-list1 (value-of 'items sequence1))
                      (item-list2 (value-of 'items sequence1)))
                  
                  (sort-lists-of-name-items item-list1
                                            item-list2))))))

        (sort-individuals-alphabetically name1 name2)))

     ;; two name-fields that aren't individuals
     ((and (word-p name1) (word-p name2))
      (string> (word-pname name1) (word-pname name2)))

     (t t))))
         



;;;--------------------------------------------------------
;;; unclassified names -- context should enrich them later
;;;--------------------------------------------------------

(define-category  uncategorized-name
  :instantiates name
  :specializes name
  :binds ((name/s sequence))
  :index (:special-case))
           #| This category is not supposed to be instantiated 
              by hand in a dossier, only from the Proper Name
              facility.   Hence it's never going to be called or
              checked for via Find-individual or the equivalent
              and these routines do not have the structure that
              those routines need.  |#



;;--- the call from 'Examine'

(defun make-uncategorized-name-from-items (items
                                           &key and )
  ;; Called from Categorize-and-form-name when there isn't enough
  ;; internal evidence to make any judgement about the category.
  ;; It returns the name object that it creates.

  (if and
    (make-collection-of-uncategorized-names items and)
    (or (find/uncategorized-name items)
        (make/uncategorized-name items))))



;;--- Capitalized sequences divided by "and"

(defun make-collection-of-uncategorized-names (items and-index)
  ;; The 'and' argument records the value of the item 'count'
  ;; at the point in the sequence when "and" was seen.
  ;; We split the items there and make two name objects, then
  ;; we package them into a collection and return it.
  (let* ((2d-half (copy-list (nthcdr and-index items)))
         (1st-half (nreverse
                    (nthcdr (1+ (length 2d-half))
                            (nreverse items)))))
    (let ((1st-name
           (or (find/uncategorized-name 1st-half)
               (make/uncategorized-name 1st-half)))
          (2d-name
           (or (find/uncategorized-name 2d-half)
               (make/uncategorized-name 2d-half))))

       (if (comma-just-before-position? *pnf-scan-starts-here*)
         (pnf/check-if-conjunction-is-a-list
          1st-name 2d-name (category-named 'uncategorized-name))
        
         (let ((collection
                (define-individual 'collection
                  :items (list 1st-name 2d-name)
                  :number 2
                  :type (category-named 'uncategorized-name))))
           collection )))))


(defun convert-collection-of-names-to-single-name (compound-name)
  ;; This name was build by Make-collection-of-uncategorized-names
  ;; and now somebody has a rationale for seeing it as a single name.
  ;;   We remake it as an uncategorized name based on a sequence.

  (let ( all-items  item-sets  sequence )
    (dolist (element (reverse (value-of 'items compound-name)))
      (case (cat-symbol (itype-of element))

        (category::uncategorized-name
         (setq sequence (value-of 'name/s element))
         (push (value-of 'items sequence)
               item-sets))

        (otherwise
         (break "New case of the type of elements in a name based ~
               ~%on a collection.~
               ~%  element: ~A~
               ~%     name: ~A~%" element compound-name))))

    (if (= 2 (length item-sets))
      (then
        (setq all-items
              (append (first item-sets)
                      (cons (name-word-for-word word::|and|)
                            (second item-sets)))))
      (break "New case: converting a collection with more than 2 ~
              elements"))

    (make/uncategorized-name all-items)))
      



;;;---------------------------------------------
;;; indexing operations for uncategorized names
;;;---------------------------------------------

(defun make/uncategorized-name (list-of-name-words)
  (let ((sequence (define-sequence list-of-name-words))
        (obj (make-unindexed-individual category::uncategorized-name)))
    ;; The name doesn't have to be indexed because we recover it from
    ;; the sequence it's comprised of.  If/when we find out what sort of name
    ;; it really is we would index that.
    (bind-variable :name/s sequence obj)
    (tr :make-uncategorized-name obj sequence)
    obj ))

    
(defun index/uncategorized-name (name-obj name-word-sequence)
  ;; it's a no-op since we can recover the name object directly
  ;; from the name-word-sequence since the sequence is bound-in
  ;; the name/s variable of the name object --> all the work
  ;; can be done in find/uncategorized-name.
  (declare (ignore name-obj name-word-sequence))
  :no-op )


(defun find/uncategorized-name (list-of-name-words)
  ;; called from a name-creator. The sequence of name words
  ;; has to exist, and then it has to have been bound as the
  ;; name/s of some uncategorized-name
  (let ((sequence (find-sequence list-of-name-words)))
    (if sequence
      (let ((i (name-based-on-sequence/uncategorized sequence)))
        (if i
          (tr :found-uncategoried-cname i sequence)
          (tr :no-uncategoried-cname-for sequence))
        i)
      (else
       (tr :no-sequence-for-nws list-of-name-words)
       nil))))

(defun name-based-on-sequence/uncategorized (seq)
  (let ((links-to-name-objects
         (all-bindings-such-that
          (indiv-bound-in seq)
          :variable-is (variable/category 'name/s
                                          'uncategorized-name))))
    (when links-to-name-objects
      (if (null (cdr links-to-name-objects))
        (let ((name (binding-body (car links-to-name-objects))))
          name )
        (break "The sequence ~A~%is part of more than one ~
                uncategorized name:~%~A"
               seq links-to-name-objects)))))



;;;-----------------------------------------------------
;;; Uncategorized names created from no-space sequences
;;;-----------------------------------------------------
#|
   These are for names that are read-out letter (number) by letter
when you say them. In other respects they are normal, sequence-based
names. Protypical examples are H5N1 (virus) or M1A1 (Abrams tank).
Those do not have corresponding spelled out forms, as compared with
a reasonable subtype of this category -- Acronyms -- such as ACLU or
WHO. 
|#

;; Use-case in analysers/psp/patterns/uniform-scan.lisp
;; for e.g. H5N1
(define-category spelled-name
  :instantiates name
  :specializes uncategorized-name
  :binds ((name/s sequence))
  :index (:special-case))


(defun reify-spelled-name (words)
  ;; This part is take from make/uncategorized-name
  ;; Return value designed to feed edge creation in 
  ;; reify-ns-name-and-make-edge
  (let ((sequence (define-sequence words))
        (name (make-unindexed-individual category::spelled-name)))
    (bind-variable :name/s sequence name category::spelled-name)

    ;; This code is frightfully low-level in its choice of operations.
    ;; //// We need to find other uses for this pattern. 
    (let* ((words-string (apply #'string-append (mapcar #'word-pname words)))
           (polyword (define-polyword words-string))
           (concatenated-name
            (intern words-string *category-package*))
           (category (find-or-make-category-object
                      concatenated-name :referential))
           (rule (define-cfr category `(,polyword)
                   :form category::proper-name
                   :referent name
                   ;; If we include a :source we can assign it
                   ;; to a particular grammar module, but default
                   ;; is ok.
                   :schema (get-schematic-word-rule :proper-noun))))
      (values category rule name))))




      











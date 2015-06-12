;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright 2014-2015 SIFT LLC., all rights reserved
;;;
;;;     File: "obo-reader"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  June 2015

;; initiated 11/25/14 to read in entries created by translate-obo-files 
;; that are stashed in a designated file. 6/8/15 Added superc sweep
;; to the setup function. 

;; The format of a OBO file is spelled out in 
;; http://oboformat.googlecode.com/svn/trunk/doc/GO.format.obo-1_2.html

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defvar *obo-terms-incorporated* nil
  "Provides a flag to inform other processes that the
   obo terms have / have not been loaded and processed.")


(defun incorporate-obo-terms (hard-filename)
  (unless (probe-file hard-filename)
    (error "Trying to incorporate the OBO terms but the file ~a ~
            does not exist" hard-filename))
  (read-obo-term-file hard-filename)
  (extract-obo-table-to-list)
  (record-obo-names)
  (sweep-obo-terms-to-collect-synonyms)
  ;;(sweep-obo-terms-for-supercs)
  ;; 6/12/15 Its FYI message about a term not having a superc link
  ;; does because of a bug in the OBO-term printer for (at least)
  ;; that case. 
  (setq *obo-terms-incorporated* t))



;;;-----------
;;; mechanics
;;;-----------

;; (read-obo-term-file "/Users/ddm/ws/R3/ws/obo-terms.lisp")
(defun read-obo-term-file (filename)
  (with-open-file (stream filename
                   :direction :input
                   :if-does-not-exist :error)
    (let ((count 0)
          exp  )
      (loop
        (setq exp (read stream))
        (when (eq exp :finished)
          (return))
        (when (eq (car exp) 'def-obo-term)
          (incf count)
          (eval exp)))
      count)))

(defmacro def-obo-term (id &body properties)
  (unless (stringp id)
    (error "Somehow we have a non-string obo id: ~a" id)) ; 
  `(def-obo-term/expr ,id ',properties))

(defun def-obo-term/expr (id-string property-value-pairs)
  (unless (get-obo-by-id id-string)
    (let ((term (make-obo-term id-string)))
      (apply #'decode-obo-properties term property-value-pairs)
      term)))

(defparameter *ids-to-obo-terms* (make-hash-table :test #'equal
                                                  :size 150000)
  "Maps from URI qname ids to instances of obo-term")

(defun get-obo-by-id (id-string)
  (gethash id-string *ids-to-obo-terms*))


(defparameter *names-to-obo-terms* (make-hash-table :test #'equal
                                                  :size 150000)
  "Maps from the strings in the name field to instances of obo-term")

(defun get-obo (name-string)
  (gethash name-string *names-to-obo-terms*))


(defun make-obo-term (id-string)
  ;; Not a find or make because this operation is done once
  ;; as we read-in the obo-terms file.
  ;;/// is a string-based lookup ok? 
  ;; duplicates should have been checked during uptake
  ;;//////////// we -are- getting duplicates
  (let ((term (make-instance 'obo-term :id id-string)))
    (setf (gethash id-string *ids-to-obo-terms*) term)
    term))


;;;-------
;;; class
;;;-------

(defclass obo-term ()
  ((id :initarg :id  :type string :accessor obo-id)
   (ns-prefix :accessor obo-ns-prefix
    :documentation "The symbol before the colon in 
      the identifier that indicates an XML namespace.
      Doesn't seem to be tightly related to the
      namespace value.")
   (name :accessor obo-name)
   (definition :accessor obo-definition)
   (comment :accessor obo-comment
    :documentation "an expository text that may give
      examples or meta-remarks like 'obsolete'.")
   (synonyms :accessor obo-synonyms
    :documentation "a string or list of strings that are
      said to be alternative ways to express the term.")
   (namespace :accessor obo-namespace)
   (uplinks :initform nil :accessor obo-uplinks
    :documentation "In the first pass just the ids of the
      superc's. After an second pass actual terms")
   (downlinks :initform nil :accessor obo-downlinks
    :documentation "Set to terms for the subconcepts
      in the second pass."))
  (:documentation "Organizes the information we have on a given
     term in the Open Biological Ontologies"))

(defmethod print-object ((ot obo-term) stream)
  (print-unreadable-object (ot stream :type t)
    (if (obo-name ot)
      (format stream "~a" (obo-name ot))
      (format stream "~a" (obo-id ot)))))


;;;---------
;;; decoder
;;;---------
#| The keyword parameters are the empirical equivalent
of pulling out all the properties listed in the documentation
but actually was done by eye and by blowing up on missing
cases. 
|#
(defun decode-obo-properties (term
                              &key name is_a def namespace
                                   synonym
                                   relationship property_value
                                   creation_date created_by
                                   intersection_of union_of 
                                   disjoint_from is_transitive
                                   is_symmetric is_functional
                                   transitive_over inverse_of
                                   domain range holds_over_chain
                                   comment xref 
                                   is_metadata_tag is_class_level
                                   subset alt_id expand_expression_to
                                   expand_assertion_to
                                   is_obsolete replaced_by consider )
  (declare (ignore relationship property_value
                   creation_date created_by
                   intersection_of union_of 
                   disjoint_from is_transitive
                   is_symmetric is_functional
                   transitive_over inverse_of
                   domain range holds_over_chain
                   subset alt_id xref 
                   is_metadata_tag is_class_level
                   expand_expression_to expand_assertion_to
                   is_obsolete replaced_by consider))

  ;; obsolete check goes here

  (flet ((collect (value)
           (typecase value
             (cons (loop for item in value collect item))
             (string value)
             (otherwise 
              (break "Unexpected type: ~a:~%  ~a"
                     (type-of is_a) is_a) ))))
    (when name
      (unless (stringp name)
        (if (consp name) ;; :name ("adjacent to" "adjacent_to")
          (setq name (car name))
          (break "name is ~a rather than a string:%   ~a"
                 (type-of name) name)))
      (setf (obo-name term) name))
    (when def
      (setf (obo-definition term) def))
    (when namespace
      (setf (obo-namespace term) namespace))
    (when is_a
      (setf (obo-uplinks term)
            (collect is_a)))
    (when synonym
      (setf (obo-synonyms term)
            (collect synonym)))
    (when comment
      (setf (obo-comment term) comment))
    term))


;;--- Get a list to iterate over

(defvar *obo-term-list* nil
  "a list extracted from the hashtable for iterating over")

(defun extract-obo-table-to-list ()
  (declare (special *obo-term-list*))
  (maphash #'(lambda (k v)
               (declare (ignore k))
               (push v *obo-term-list*))
           *ids-to-obo-terms*)
  (length *obo-term-list*))


;;--- index all the names

#| There are elements that appear in names, e.g., "transport"
that are indicative of terms that are irrelevant for us
and could be dropped from the active set we do lookup from
|#
(defun record-obo-names ()
  (let ( name-string )
    (dolist (obo *obo-term-list*)
      (when (slot-boundp obo 'name) ;; there's at least one
        (setq name-string (obo-name obo))
        (when name-string ;;// take note?
          (setf (gethash name-string *names-to-obo-terms*)
                obo))))))


;;--- track all simple synonyms for lookup

(defparameter *synonyms-to-obo-terms* (make-hash-table :test #'equal
                                                       :size 150000)
  "Maps from a simple OBO synonym to instances of obo-term")

(defun sweep-obo-terms-to-collect-synonyms ()
  (let (  ambiguities  synonyms  )
    (flet ((do-synonym (string obo)
             (unless (position #\space string) ;; "simple synonyms"
               (let ((entry (gethash string *synonyms-to-obo-terms*)))
                 (when entry 
                   (push `(,string ,obo) ambiguities))
                 (setf (gethash string *synonyms-to-obo-terms*)
                       (if entry (list obo entry) obo))))))
      (dolist (obo *obo-term-list*)
        ;; lots of terms do no list any synonyms
        (when (slot-boundp obo 'synonyms)
          (setq synonyms (obo-synonyms obo))
          (etypecase synonyms
            (cons (loop for syn in synonyms
                    do (do-synonym syn obo)))
            (string
             (do-synonym synonyms obo)))))
      (format nil "~a ambiguous simple synonyms"
              (length ambiguities)))))
;; on 12/2/14 set, we get 105,038 abiguities
;; though the hash table only has 99,218 entries

; "protein sur-8 homolog"

(defun suitable-for-and-in-OBO (word)
  ;; called from make-word/all-properties/or-primed when the
  ;; big-mechanism flag is up. First checks the pname of the
  ;; word for capitalization then looks up the word based on
  ;; that string
  (when (memq (word-capitalization word)
              '(:initial-letter-capitalized 
                :all-caps
                :mixed-case))
    (corresponding-obo (word-pname word))))
                 
(defun corresponding-obo (string)
  (when *obo-terms-incorporated*
    (gethash string *synonyms-to-obo-terms*)))

(defun setup-word-denoting-an-OBO (word)
  ;; called from make-word/all-properties/or-primed if we've
  ;; already established that there is an obo for the pname
  ;; of this word. 
  (add-new-word-to-catalog word :obo)
  (let ((obo (corresponding-obo (word-pname word))))
    (tr :word-corresponds-to-obo word obo)
    (assemble-category-rule-and-referent-for-an-obo obo word)))
    

(defun assemble-category-rule-and-referent-for-an-obo (obo word)
  ;; called from reify-ns-name-as-bio-entity which itself
  ;; is called by reify-ns-name-and-make-edge with the task
  ;; of returning as multiple-values the category, rule,
  ;; and referent to be used in the edge being constructed.
  ;; (The form is assumed to always be proper-name.)
  ;;/// should also do the whole setup, which is probably
  ;; some sort of call to def-bio -- see reify-bio-entity
  (push-debug `(,obo ,word)) ;;(break "stub: obo setup")  
  (let* ((kind 'protein) ;;/// get from OBO somehow
         (i (define-bio word kind))
         (cfr (retrieve-single-rule-from-individual i)))
    (values (category-named kind :break-if-not-defined)
            cfr
            i)))






;;--- superc operations
#| If it turns out that we can lop off entire portions of
the set of OBO terms as irrelevant then our real searches
with be that much faster / more space efficient
|#
(defun sweep-obo-terms-for-supercs ()
  (let ( no-superc  isa-string  )
    (dolist (term *obo-term-list*)
      (setq isa-string (obo-uplinks term))
      (if (null isa-string)
        (push term no-superc)
        (let ((decoded-superc/s 
               (decode-obo-isa-field isa-string)))
          (setf (obo-uplinks term) decoded-superc/s)

          ;; set the downlinks of these superc's
          ;; back to the term with the ISA link
          (etypecase decoded-superc/s
            (cons
             (loop for obo in decoded-superc/s
               do (pushnew term (obo-downlinks obo))))
            (obo-term
             (pushnew term (obo-downlinks decoded-superc/s)))))))
    (format nil "~a obo terms did not have a superc" no-superc)))


(defun decode-obo-isa-field (isa-string)
  (etypecase isa-string
    (cons (loop for item in isa-string
            collect (decode-obo-isa-field item)))
    (string ;; "PR:000000001 ! protein"
     (let* ((index-of-space (position #\space isa-string))
            (id-string
             (if (null index-of-space)
               isa-string
               (subseq isa-string 0 index-of-space))))
       (let ((obo (get-obo-by-id id-string)))
         (unless obo
           (error "There appears to be no recorded OBO ~
                   with index ~s" id-string))
         obo)))))
         

          


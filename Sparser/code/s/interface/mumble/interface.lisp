;;; -*- Mode: lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2010-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interface"
;;;   Module:  "interface;mumble;"
;;;  Version:  May 2017

;; initiated 11/12/10. Elaborated through ..12/9 Picked up again 3/16/11.
;; Refactored to use realization-history for the crawling around 3/20.
;; 11/21/11 Added sanity check that we're annotating realizations. 10/12/12
;; added methods that start with edges. 
;; 0.1 (11/18/13) Removed all rnode/psi centric code  out to rnode-centric
;;      to clear the decks for working more directly with Krisp objects
;;      and improvising. 1/5/16 kill ad-hoc-1 to quiet compiler

(in-package :mumble)

;;;-----------------------------------------------
;;; Mumble methods specialized on Sparser classes
;;;-----------------------------------------------

(defmethod say ((object string))
  "Parse the string and generate from the semantics."
  (sp::qepp object) ; parse quietly
  (say (first (sp::semtree (first (sp::all-tts))))))

(defmethod say :around ((object string))
  "If the parse or generation from semantics fails, just return the string."
  (handler-case (call-next-method)
    (error () object)))


(defmethod realize ((c sp::referential-category))
  "Realize a category as its head word."
  (multiple-value-bind (head pos) (sp::rdata-head-word c t)
    (sp::get-mumble-word-for-sparser-word
     (typecase head
       ((or sp::word sp::polyword) head)
       (t (sp::resolve (string-downcase (sp::cat-name c)))))
     pos)))

(defmethod realize ((w sp::word))
  (find-or-make-word (sp::pname w)))

(defmethod realize ((w sp::polyword))
  (find-or-make-word (sp::pname w)))


;;--- linking/accessing lexicalized-phrases
;; see Mumble/derivation-trees/make.lisp

(defmethod record-lexicalized-phrase ((category sp::category)
                                      (lp lexicalized-resource))
  "Called from sp:make-resource-from-sparser-word along the usual path
   from sp::make-corresponding-resource in the initialization of the
   rdata for a category. This goes to a table from strings to lp."
  (record-lexicalized-phrase (symbol-name (sp::cat-symbol category)) lp))

(defparameter *individuals-to-lexicalized-phrases* (make-hash-table)
  "Special index serving the same function as *strings-to-lexicalized-phrases*
   but for direct linking to individuals")

(defmethod record-lexicalized-phrase ((i sp::individual)
                                      (lp lexicalized-resource))
  "Deliberately associating the lp with the individual rather than
   the usual link to the category. Needed with the category is too
   general as with attributes (size, color, etc.)."
  (setf (gethash i *individuals-to-lexicalized-phrases*) lp))

(defmethod get-lexicalized-phrase ((category sp::category))
  (get-lexicalized-phrase (symbol-name (sp::cat-symbol category))))

(defmethod get-lexicalized-phrase ((i sp::individual))
  (or (gethash i *individuals-to-lexicalized-phrases*)
      (get-lexicalized-phrase (sp::itype-of i))))



(defmethod discourse-unit  ((i sp::individual))
  (mumble::make-discourse-unit-dtn i i))

(defmethod ensure-is-a-sentence  ((i sp::individual))
  (mumble::make-discourse-unit-dtn i i))


(defmethod grammatical-number ((subj sp::individual))
  (if (sp::itypep subj 'collection) 'plural 'singular))


;;--- other pp-dtn methods in Mumble/derivation-trees/printers.lisp

(defparameter *how-to-dtn-pprint-individuals* :pointer
  "Controls the form that's produced when we're pretty-printing
   a dtn and we have an individual. 
   Possible values are :pointer (the default), and :type which
   tries to approximate what Spire versions of semtree do.")

(defmethod pp-dtn ((i sp::individual))
  (declare (special *how-to-dtn-pprint-individuals*))
  (ecase *how-to-dtn-pprint-individuals*
    (:pointer i)
    (:type
     (let ((category (sp::itype-of i)))
       `( ,(sp::cat-symbol category) )
       ))))


;;------- print methods for derivation types refering categories

(defmethod print-object ((clp category-linked-phrase) stream)
  (print-unreadable-object (clp stream)
    (let ((category (linked-category clp))
          (lp (linked-phrase clp)))
      (format stream "clp: ~a ~a" (sp::pname category) lp))))

(defmethod print-object ((md mumble-rdata) stream)
  (print-unreadable-object (md stream)
    (let* ((category (linked-category md))
           (vars (variables-consumed md))
           (lp (linked-phrase md)))
      (if (null lp)
        (format stream "mdata: ~a"
                       (sp::pname category))
        (let* ((phrase (phrase lp))
               (bound (bound lp))
               (pvp (car bound)))
          (format stream "mdata: ~a, ~a ~a=~a ~a"
                  (sp::pname category)
                  (phrase-name-for-printing phrase)
                  (name (phrase-parameter pvp))
                  (pprint-value (value pvp))
                  vars))))))

;;--- other print methods

(defmethod pprint-value ((c sp::category))
  (format nil "~a" (sp::cat-symbol c)))

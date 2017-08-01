;;; -*- Mode: lisp; Syntax: Common-Lisp; Package: SPARSER -*-
;;; Copyright (c) 2010-2017 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "interface"
;;;   Module:  "interface;mumble;"
;;;  Version:  July 2017

;; File for Mumble methods specialized on Sparser classes

;; initiated 11/12/10. Elaborated through ..12/9 Picked up again 3/16/11.
;; Refactored to use realization-history for the crawling around 3/20.
;; 11/21/11 Added sanity check that we're annotating realizations. 10/12/12
;; added methods that start with edges. 
;; 0.1 (11/18/13) Removed all rnode/psi centric code  out to rnode-centric
;;      to clear the decks for working more directly with Krisp objects
;;      and improvising. 1/5/16 kill ad-hoc-1 to quiet compiler

(in-package :mumble)

;;;---------------
;;; say & realize 
;;;---------------

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


;;;-------------------------------------------
;;; recording & accessing lexicalized-phrases
;;;-------------------------------------------
;; see Mumble/derivation-trees/make.lisp

;;--- categories

(defparameter *categories-to-lexicalized-phrases*
  (make-hash-table
   :size 6000
   :test 'equal)
  "It doesn't make particular sense to use a word as the lp key for 
   a category, but a category may have realizations in mulitple parts of
   speech so we need to record a cons of (category . pos)")
;; 7/13/17 CwC count was 1,042, R3 2,441

(defmethod record-lexicalized-phrase ((category sp::category)
                                      (lp lexicalized-resource)
                                      (pos symbol))
  "Called from sp:make-resource-from-sparser-word along the usual path
   from sp::make-corresponding-resource in the initialization of the
   rdata for a category. This goes to a table from strings to lp."
  ;;(record-lexicalized-phrase (symbol-name (sp::cat-symbol category)) lp)
  (setf (gethash (cons category pos) *categories-to-lexicalized-phrases*)
        lp))

(defmethod get-lexicalized-phrase ((category sp::category) (pos symbol))
  ;;(get-lexicalized-phrase (symbol-name (sp::cat-symbol category)))
  (gethash (cons category pos) *categories-to-lexicalized-phrases*))


(defvar *pos-lp-keys* nil
  "Record of all keys used for lp linked to categories")

;;/// collect the keys for exaustive lookup (but what's the point then)
;;/// do slot/grammatical-characteristic pos constraint and
;;  make the exaustive list the fall back

(defgeneric find-category-lp (category)
  (:documentation "Until we expand the surface structure and encounter
    objects (individuals) embedded in particular slots during the
    traversal we don't have a reliable way to determine the germane
    part of speech to pick out the intended reading of a lexically-
    realized category. In lieu of that we adopt the weak approach of
    trying all parts of speech.")
  (:method ((c sp::category))
    (or (get-lexicalized-phrase c 'noun)
        (get-lexicalized-phrase c 'verb)
        (get-lexicalized-phrase c 'adjective)
        (get-lexicalized-phrase c 'adverb)
        (get-lexicalized-phrase c 'preposition))))
             


;;--- individuals

(defparameter *individuals-to-lexicalized-phrases*
  (make-hash-table
   :size 90000
   :test 'eq)
  "Special index serving the same function as *words-to-lexicalized-phrases*
   but for direct linking to individuals")
;; 7/13/17 CwC count was 404, R3 was 65,670

(defmethod record-lexicalized-phrase ((i sp::individual)
                                      (lp lexicalized-resource)
                                      (pos symbol))
  "Deliberately associating the lp with the individual rather than
   the usual link to the category. Needed with the category is too
   general such as attributes (size, color, etc.)."
  (declare (ignore pos)) ;;/// can we get away with this?
  (setf (gethash i *individuals-to-lexicalized-phrases*) lp))


(defgeneric find-lexicalized-phrase (i)
  (:documentation "Look in the places where a lexicalized phrase
   might be. Basically an ''or' of the other methods, but this
   packaging makes their tight coordination more obvious.
   The fall-through to the type is needed for cases like 'block'.")
  (:method ((i sp::individual))
    (or (get-recorded-lexicalized-phrase i)
        (unwind-to-i-with-lp i)
        (find-category-lp (sp::itype-of i)))))

(defgeneric get-recorded-lexicalized-phrase (i)
  (:documentation "Just looks on the hashtable. Does not fall
    through to look on the type if that fails")
  (:method ((i sp::individual))
    (gethash i *individuals-to-lexicalized-phrases*)))

(defmethod get-lexicalized-phrase ((i sp::individual) (pos symbol))
  "Falls through to look for an lp on the type if it's 
   not specific to the individual"
  (or (gethash i *individuals-to-lexicalized-phrases*)
      (get-lexicalized-phrase (sp::itype-of i) pos)))

(defun unwind-to-i-with-lp (i)
  "When we're using the description lattice, the individual that
   the lp was defined on may have been 'buried' under derived
   individuals as it participated in bindings."
  (let* ((uplinks (sp::uplinks-of i))
         (k (loop for link in uplinks
               as j = (sp::uplink-indiv link)
               when (get-recorded-lexicalized-phrase j)
               return j)))
    (when k (get-recorded-lexicalized-phrase k))))


;;;------------------------------------------------------------
;;; methods where timing can mean we're looking at individuals
;;;------------------------------------------------------------

(defmethod discourse-unit  ((i sp::individual))
  (mumble::make-discourse-unit-dtn i i))

(defmethod ensure-is-a-sentence  ((i sp::individual))
  (mumble::make-discourse-unit-dtn i i))


(defmethod grammatical-number ((i sp::individual))
  (if (sp::itypep i 'collection) 'plural 'singular))

(defmethod grammatical-person ((i sp::individual)) 'third)


;;;---------------
;;; print methods
;;;---------------
;; Mumble/derivation-trees/printers.lisp

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

(defmethod pp-dtn ((c sp::category)) (sp::pname c))


;;--- print methods for derivation types refering categories

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
      (cond
        ((null lp)
         (format stream "mdata: ~a" (sp::pname category)))
        ((typep lp 'phrase)
         (format stream "mdata: ~a ~a"
                 (sp::pname category)  lp))
        ((typep lp 'lexicalized-phrase)
         (let* ((phrase (phrase lp))
                (bound (bound lp))
                (pvp (car bound)))
           (format stream "mdata: ~a, ~a ~a=~a ~a"
                   (sp::pname category)
                   (phrase-name-for-printing phrase)
                   (name (phrase-parameter pvp))
                   (pprint-value (value pvp))
                   vars)))))))

;;--- other print methods

(defmethod pprint-value ((c sp::category))
  (format nil "~a" (sp::cat-symbol c)))

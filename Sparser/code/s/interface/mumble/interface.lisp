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
;; see also Mumble/derivation-trees/make.lisp

;;--- categories

(defparameter *categories-to-lexicalized-phrases*
  (make-hash-table :size 20000 :test 'eq)
  "Map categories to their lexicalized phrases. Lp are stored in
 an alist according to their part of speech.")
;; 7/13/17 CwC count was 1,042, R3 2,441

(defvar *count-of-calls-to-record-lexicalized-phrase* 0)
;; r3 == 4,217  8/4/17

(defmethod record-lexicalized-phrase ((category sp::category)
                                      (lp lexicalized-resource)
                                      (pos symbol))
  "Called from sp:make-resource-from-sparser-word along the usual path
   from sp::make-corresponding-resource in the initialization of the
   rdata for a category. This goes to a table from strings to lp."
  (incf *count-of-calls-to-record-lexicalized-phrase*)
  (let ((entry (gethash category  *categories-to-lexicalized-phrases*)))
    (if entry
      (let ((subentry (assq pos entry)))
        (unless subentry
          ;;/// got here on "color" as a noun on the category color
          ;; so something is repeating the recording step
          (push `(,pos . ,lp) (cdr entry))))
      (setf (gethash category  *categories-to-lexicalized-phrases*)
            `((,pos . ,lp))) )))

(defmethod get-lexicalized-phrase ((category sp::category) (pos symbol))
  (let ((entry (gethash category  *categories-to-lexicalized-phrases*)))
    (when entry
      (cdr (assq pos entry)))))




;;--- individuals

(defparameter *individuals-to-lexicalized-phrases*
  (make-hash-table
   :size 200000
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

(defmethod get-lexicalized-phrase ((i sp::individual) (pos symbol))
  "Falls through to look for an lp on the type if it's 
   not specific to the individual"
  (or (gethash i *individuals-to-lexicalized-phrases*)
      (get-lexicalized-phrase (sp::itype-of i) pos)))


(defgeneric find-lexicalized-phrase (i &optional pos)
  (:documentation "Look in the places where a lexicalized phrase
   might be. Basically an 'or' of the other methods, but this
   packaging makes their tight coordination more obvious.
   When we know the target pos we can use the pos-specific
   record. Othewise we fall-through to the type and pick
   a pos according to an arbitrary order.")
  (:method ((i sp::individual) &optional pos)
    (or (get-recorded-lexicalized-phrase i)
        (unwind-to-i-with-lp i)
        (get-lexicalized-phrase (sp::itype-of i) pos)
        (find-category-lp (sp::itype-of i)))))

(defgeneric get-recorded-lexicalized-phrase (i)
  (:documentation "Just looks on the hashtable")
  (:method ((i sp::individual))
    (gethash i *individuals-to-lexicalized-phrases*)))

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


;;;------------------------------------------------------------
;;; methods where timing can mean we're looking at individuals
;;;------------------------------------------------------------

(defmethod discourse-unit  ((i sp::individual))
  (mumble::make-discourse-unit-dtn i i))

(defmethod ensure-is-a-sentence  ((i sp::individual))
  (mumble::make-discourse-unit-dtn i i))


(defmethod grammatical-number ((i sp::individual))
  ;; called from grammar/morphology.lisp - number-of-current-subject
  (cond
    ((sp::itypep i 'sp::plural) 'plural)
    ((sp::value-of 'sp::is-plural i) 'plural)
    (t 'singular)))

(defmethod grammatical-person ((i sp::individual)) 'third)


(defmethod syntax-driven-sources ((i sp::individual)) nil)
(defmethod syntax-driven-sources ((c sp::category)) nil)


(defun value-is-lambda (v)
  "Sugar to hide the sparser package from an early loading file"
  (sp::is-lambda-var v))


;;--- DTN access

(defmethod get-dtn ((number integer))
  (get-dtn (sp::individual-object# number)))

(defmethod get-dtn ((i sp::individual))
  (declare (special *referents-to-dtns*))
  (gethash i *referents-to-dtns*))

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
       `( ,(sp::cat-symbol category) ) ))))

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
         (format stream "m-mdata: ~a" (sp::pname category)))
        ((typep lp 'phrase)
         (format stream "m-mdata: ~a ~a"
                 (sp::pname category)  lp))
        ((typep lp 'lexicalized-phrase)
         (let* ((phrase (phrase lp))
                (bound (bound lp))
                (pvp (car bound)))
           (format stream "m-rdata: ~a, ~a ~a=~a ~a"
                   (sp::pname category)
                   (phrase-name-for-printing phrase)
                   (name (phrase-parameter pvp))
                   (pprint-value (value pvp))
                   vars)))))))

(defmethod print-object ((msd multi-subcat-mdata) stream)
  (print-unreadable-object (msd stream)
    (format stream "multi-subcat-mdata ")))
#|
(defun pprint-msm (msm &optional (stream standard-output))
  (let* ((pairs (mdata-pairs msm))
         
           (embedded-mdata (loop for p in pairs collect (mpair-mdata p)))
           (embedded-lp (loop for e in embedded-mdata collect (linked-phrase e)))
           (phrases (loop for l in embedded-lp collect (phrase l))) ;; wrong for abstract
           (phrase-names (loop for p in phrases collect (name p)))
           (phrase (car phrases))
           (word (when (typep phrase 'partially-saturated-lexicalized-phrase)
                   (value (car (bound phrase))))))
      (if word
        (format stream "multi-subcat-mdata ~s ~a" (pname word) phrase-names)
        (format stream "multi-subcat-mdata ~a" phrase-names)))) |#
           


;;--- other print methods

(defmethod pprint-value ((c sp::category))
  (format nil "~a" (sp::cat-symbol c)))

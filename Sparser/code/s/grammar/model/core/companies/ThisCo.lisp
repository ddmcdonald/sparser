;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "ThisCo"
;;;   Module:  "model;core:names:companies"
;;;  version:  1.3  April 1991

;; initiated January 1991
;; 1.1  (3/25 v1.8.1) Added ["the" cat-of-co] case
;; 1.2  (3/26) Added define-category-of-company-modifier, setup a one word
;;      lookahead to block dereferencing when the defCo phrase is likely
;;      to only be the head of a larger (CA-based) phrase.
;; 1.3  (4/2) Updated the CA routine to use The-topic-company instead of
;;      the raw global

(in-package :CTI-source)

;;;---------------
;;; underpinnings
;;;---------------            #| hyper-rapid prototyping |#

(defstruct anaphor)

(define-category company-anaphor)

(defstruct (company-anaphor 
            (:include anaphor)
            (:print-function print-company-anaphor-structure))
  name ;;a symbol
  )

(defun print-company-anaphor-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<company-anaphor " stream)
  (princ (company-anaphor-name obj) stream)
  (write-string ">" stream))


;;;--------
;;; object
;;;--------

;;--- "this/the (...) company"

(def-category this-company :lattice-position :non-terminal)
(defparameter *this-Co* (make-company-anaphor
                         :name :this-Company))

;;;------------
;;; categories
;;;------------

(def-category  ThisCo :lattice-position :non-terminal)

(define-word "this")
(define-category pronoun)


;;;---------------------------------------
;;; determiners on the head word directly
;;;---------------------------------------

(define-cfr category::ThisCo
           `( ,word::|this| ,category::company-head )
  :referent *this-co*)


(define-cfr category::ThisCo
           `( ,word::|the| ,category::company-head )
  :referent *this-co*)

(def-cfr ThisCo
         ( "the" coc-bar )
  :referent (:dereference-expression
             deref-defCo right-edge))

(def-cfr coc-bar
         ( location company-head )
  :referent (:composite Cat-of-Co+location
                        right-edge left-edge))



(define-cfr category::ThisCo
           `( ,category::pronoun ,category::company-head )
  :referent *this-co*)


;;--- company-head/er

(define-cfr category::ThisCo
           `( ,word::|this| ,category::company-head/er )
  :referent *this-co*)

(define-cfr category::ThisCo
           `( ,word::|the| ,category::company-head/er )
  :referent *this-co*)

(define-cfr category::ThisCo
           `( ,category::pronoun ,category::company-head/er )
  :referent *this-co*)


;;--- company-head/s

(define-cfr category::ThisCo
           `( ,word::|the| ,category::company-head/s )
  :referent *this-co*)

(define-cfr category::ThisCo
           `( ,category::pronoun ,category::company-head/s )
  :referent *this-co*)



;;;------------------------------------
;;; from modified N-bar up to full NPs
;;;------------------------------------

(def-category ThisCo-bar :lattice-position :non-terminal)

(defun determiner-for-ThisCo (string)
  (let ((word (or (resolve-string-to-word string)
                  (define-word string))))

    (define-cfr category::ThisCo `(,word ,category::ThisCo-bar)
      :referent *this-co )
    ))


;;;-------------------------------------
;;; modifiers on the head word directly
;;;-------------------------------------

(define-cfr category::ThisCo-bar
           `( ,category::location ,category::company-head/er )
  :referent *this-co*)

(define-cfr category::ThisCo-bar
           `( ,category::location ,category::company-head/s )
  :referent *this-co*)


;;;-------------------------------------------
;;; setup for composition into larger phrases
;;;-------------------------------------------

(def-cfr  at-ThisCo ("at" ThisCo)
  :referent (:daughter right-edge))

(def-cfr for-ThisCo ("for" ThisCo)
  :referent (:daughter right-edge))

(def-cfr of-ThisCo ("of" ThisCo)
  :referent (:daughter right-edge))

(def-cfr to-ThisCo ("to" ThisCo)
  :referent (:daughter right-edge))

(def-cfr with-ThisCo ("with" ThisCo)
  :referent (:daughter right-edge))

(def-cfr comma-ThisCo ("," ThisCo)
  :referent (:daughter right-edge))


(def-cfr company-possessive (ThisCo apostrophe-s)
  :referent (:daughter left-edge))


;;;-------------------------------
;;; composition into larger units
;;;-------------------------------

;;----- job-events

(def-cfr job-event/pers!__
         ( job-event/pers!__!co ThisCo )
  :referent (:composite job-event+company
                        left-edge right-edge))


(def-cfr job-event (ThisCo job-event/co!__)
  :referent (:composite job-event+company
                        right-edge left-edge))


(def-cfr job-event (job-event to-ThisCo)
  :referent (:composite job-event+company
                        left-edge right-edge))

(def-cfr job-event (job-event at-ThisCo)
  :referent (:composite job-event+company
                        left-edge right-edge))


;;------ companies

(def-cfr company (ThisCo of-company)
  :referent (:daughter right-edge))

;; (pnc) "at this bank holding company"
;;   separates after "bank"
(def-cfr company (ThisCo company-head)
  :referent (:daughter left-edge))



;;------ titles

(def-cfr title (title for-ThisCo)
  :referent (:composite title+company
                        left-edge right-edge))

(def-cfr title (title of-ThisCo)
  :referent (:composite title+company
                        left-edge right-edge))

(def-cfr title (title to-ThisCo)
  :referent (:composite title+company
                        left-edge right-edge))



;;;-----------
;;; modifiers
;;;-----------

(defun define-company-head-modifier (string)
  (let ((word (resolve/make string)))
    (define-cfr category::company-head
                `(,word ,category::company-head)
      :referent *this-co*)))

(define-company-head-modifier "law")


;;;-------------------------
;;; dereferencing functions
;;;-------------------------

(defun deref-defCo (edge)
  ;; The edge should have a composite of some sort as its referent,
  ;; recording what modifiers have occurred between the determiner
  ;; and the head category-of-company word.
  ;;   // right now this is just a hook from which we'll deal out
  ;; the modifiers as attributed properties of the referent.

  (let* ((parent-edge (edge-used-in edge)) ;; guarenteed to have a value?
         (referent
          (look-for-coreferent/this-co parent-edge)))
    referent))


;;;-----------
;;; CA action
;;;-----------

(set-Completion-action/edge/referent *this-Co*
                                     'Look-for-coreferent/this-co)

(defun look-for-coreferent/this-co (this-co-edge)
  ;; There's a standard problem with this construction that locally one
  ;; can't be sure whether it is truely a definite reference or whether
  ;; it is just the head of a larger phrase that has a real referent.
  ;; /// The right sort of fix for this is a shift in the parsing algorithm
  ;; so that the lookahead could be better organized, but for the moment
  ;; we do a heuristic one word lookahead.   If we see a word that signals
  ;; a continuation we don't dereference this phrase and leave it to get
  ;; its referent from a later operation
  ;;
  (let ((next-word (pos-terminal (pos-edge-ends-at this-co-edge))))
    (case (word-symbol next-word)

      (word::|of|
       ;;check for exceptions
       (if (eq category::company-head/er
               (edge-category (head-of-phrase this-co-edge)))
         (when *topic-company*
           (setf (edge-referent this-co-edge) (the-topic-company)))
         nil))

      (word::|that| )

      (otherwise
       (if *topic-company*
         (setf (edge-referent this-co-edge) (the-topic-company))
         :unresolved-company-anaphor)))))


(defun head-of-phrase (edge)
  (edge-right-daughter edge))


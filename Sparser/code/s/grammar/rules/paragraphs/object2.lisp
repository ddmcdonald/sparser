;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2010-2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "object"
;;;   Module:  "grammar;rules:paragraphs:"
;;;  Version:  2.3 October 2013

;; 1.1 (10/25/93 v2.0) [-> "1"]  New design for section markers
;; 1.2 (1/5/94 v2.3) fleshing out the object now that it's being used
;; 1.3 (1/14) wrote a nicer print routine
;;     (5/2) added Print-paragraph-#
;; 2.0 (8/17) converted to section-objects.
;; 2.1 (3/16/10) Converted them back to avoid PSI hassles. Added next-paragraph.
;; 2.2 (12/5/10) Renamed the struct to avoid clash with the CLOS class backing the
;;      form category named paragraph. Calling it paragraph-structure, which
;;      isn't all that unnatural. Propagated changes through this file. 
;;      4/1/12 Couple of incorrect accessors.
;; 2.3 (10/3/13) Propagated -structure through the rest of the resource
;;      to distinguish them from what's in objects/doc/object1 in lieu of
;;      looking around and replacing this entirely. 

(in-package :sparser)

;;;----------
;;; globals
;;;----------

;; Move the definition to objects/doc/object1.lisp 10/2/13
;(defvar *current-paragraph* nil
;  "points to the paragraph whose text is being analyzed")

(defvar *next-paragraph* nil
  "points to the paragraph that is about to start. Serves as a global
   across the update functions that wire them together, see 
   finish-ongoing-paragraph. ")

(defvar *number-of-paragraphs-so-far* 0
  "a count of the total number of paragraphs seen in the
   article up to and including the current one")

(defvar *paragraphs-in-the-article* nil
  "a push list of all the paragraphs seen so far, with the
   current one on the front")


(defun initialize-paragraph-state ()
  (setq *current-paragraph* nil
        *paragraphs-in-the-article* nil
        *number-of-paragraphs-so-far* 0)
  (reinitialize-the-paragraph-resource))


;;;--------
;;; object
;;;--------

(defstruct (paragraph-structure
            (:print-function print-paragraph-structure))

  number  ;; an integer starting at 1 giving the order in which the
          ;; paragraph appeared in the article
  start   ;; position of the first word in the paragraph
  end     ;; position just after the last word
  before  ;; the previous paragraph (if any)
  after   ;; the next paragraph (if any)
  )


(defun print-paragraph-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<paragraph " stream)
  (princ (paragraph-structure-number obj) stream)
  (when (paragraph-structure-start obj)
    (format stream " p~A - "
            (pos-token-index (paragraph-structure-start obj))))
  (when (paragraph-structure-end obj)
    (format stream "p~A "
            (pos-token-index (paragraph-structure-end obj))))
  (write-string ">" stream))


(defun print-paragraph-# (p)
  ;; convenient as a minimal trace by putting it on an After-
  ;; paragraph-action
  (unless (paragraph-structure-p p)
    (break "Object passed in as a paragraph isn't.~%~A" p))
  (let ((*print-short* t))
    (format t "~&~%~A ended~%~%" p)))


;;;------------------------
;;; resource of paragraphs
;;;------------------------

(or (boundp '*number-of-paragraphs-to-make-in-advance*)
    (defparameter *number-of-paragraphs-to-make-in-advance*
                  10))

(defparameter *paragraph-structure-resource* nil)

(defun pre-allocate-paragraphs (&aux para)
  ;; called at launch time as an initialization along with
  ;; the initialization of the chart and edge resources
  (dotimes (i *number-of-paragraphs-to-make-in-advance*)
    (setq para (make-paragraph-structure))
    (push para *paragraph-resource*)))

(defun allocate-more-paragraphs ( &aux para )
  ;; called from allocate-paragraph whenever the list goes to nil
  (dotimes (i *number-of-paragraphs-to-make-in-advance*)
    (setq para (make-paragraph-structure))
    (push para *paragraph-resource*)))

(defun reinitialize-the-paragraph-resource ()
  (dolist (p *paragraphs-in-the-article*)
    (deallocate-paragraph-structure p)))


(defun allocate-paragraph-structure ()
  (if *paragraph-structure-resource*
    (pop *paragraph-structure-resource*)
    (else
      (allocate-more-paragraphs)
      (pop *paragraph-structure-resource*))))


(defun deallocate-paragraph-structure (p)
  (setf (paragraph-structure-number p) nil
        (paragraph-structure-start p) nil
        (paragraph-structure-end p) nil)
  (push p *paragraph-structure-resource*)
  p )


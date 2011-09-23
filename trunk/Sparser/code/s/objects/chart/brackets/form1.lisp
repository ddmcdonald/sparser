;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1997 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "form"
;;;   Module:  "objects;brackets:"
;;;  Version:  1.4 March 2007

;; first version done in October 1990
;; 1.1 (4/25/91 v1.8.4)  Reworked to separate the indexing of the brackets
;;      from their assignment to particular words.
;; 1.2 (7/19/94) added case of referential-category
;; 1.3 (1/24/95) added rank argument
;;     (6/16/97) added a gate.
;; 1.4 (3/5/07) Appears that Allegro is mucking with the hashtable that's used to
;;      handle rank, so switching to a field

(in-package :sparser)

;;;----------
;;; def-form
;;;----------

(defmacro define-bracket (start/end before/after word/type
                          &optional rank )
  `(define-bracket/expr ',start/end ',before/after ',word/type
                        ',rank ))


(defun define-bracket/expr (start/end
                            before/after
                            word/type
                            &optional rank )
  (let ((the-bracket
         (or (find-bracket start/end before/after word/type)
             (let ((bracket
                    (multiple-value-bind (direction-symbol
                                          placement-keyword
                                          word
                                          category)
                                         
                                         (resolve-bracket-components
                                          start/end before/after word/type)
                      
                      (make-bracket
                       :direction  direction-symbol
                       :placement  placement-keyword
                       :word       word
                       :category   category
		       :rank       rank))))
               
               (intern-bracket bracket)))))

    the-bracket ))




;;;-----------------------------
;;; canonicalizing the notation
;;;-----------------------------

(defun resolve-bracket-components (start/end before/after word/type)
  (let ((direction-symbol
         (ecase start/end
           (:end-phrase   :] )
           (:start-phrase :[ )
           (:begin-phrase :[ )
           (:begin :[ )
           (:start :[ )
           (:end   :] )
           (:starts :[ )
           (:ends   :] )
           (:]  :] )
           (:[  :[ )))
        (placement-keyword
         (ecase before/after
           (:before  :before)
           (:after   :after)))
        (w/t-object
         (resolve/make word/type)))

    (values direction-symbol
            placement-keyword
            (when (or (typep w/t-object 'word)
                      (typep w/t-object 'polyword))
              w/t-object)
            (when (or (category-p w/t-object)
                      (when *include-model-facilities*
                        (referential-category-p w/t-object)))
              w/t-object))))


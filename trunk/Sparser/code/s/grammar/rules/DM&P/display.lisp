;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "display"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  February 1995

;; initiated 5/24/94 v2.3.  7/25 Folded in version from [standard operations]
;; 8/5 added pair-term  8/23 added verb-object.  9/28 moved in the list printer
;; 10/24 added name-word and subject-verb.  11/16 fixed bug in 'sequence'
;; 12/1 added adverb-verb.   2/1/95 added dm&p-category-p and its annotations.
;; 2/16 added general strategy in Princ-dm&p-obj to look for name or word, and
;; added a general 'length' routine.

(in-package :sparser)


;;;-----------------------------------
;;; marking dm&p object types as such
;;;-----------------------------------

(defparameter *category-to-dm&p-type-p* (make-hash-table))

(defun mark-category-as-a-dm&p-type (c)
  (setf (gethash c *category-to-dm&p-type-p*)
        t))

(defun dm&p-Category-p (c)
  (gethash c *category-to-dm&p-type-p*))

(mapcar #'(lambda (symbol)
            (let ((category (category-named symbol)))
              (unless category
                (break "symbol misspelled -- it should name a dm&p category:~
                        ~%  ~A" symbol))
              (mark-category-as-a-dm&p-type category)))
        '(segment
          term
          pair-term
          subject-verb
          verb-object
          infinitive-relation
          you-do
          genitive
          unanalyzed-compound
          ))
          





;;;--------------------------------
;;; print routines for the objects
;;;--------------------------------

(define-special-printing-routine-for-category   segment
  :short
    ((let ((terms (value-of 'terms obj))
           (id (indiv-id obj)))
       (format stream "#< ~A ~A>"
               (princ-term-list/no-parens/string terms) id)))
  :full
    ((let ((terms (value-of 'terms obj))
           (id (indiv-id obj)))
       (format stream "#<segment ~A ~A>"
               (princ-term-list/no-parens/string terms) id)))
  :string
    ((let ((terms (value-of 'terms obj)))
       (princ-term-list/no-parens/string terms))))




(define-special-printing-routine-for-category   term
  :short ((if (deallocated-individual? obj)
            (format stream "#<deallocated individual>")
            (format stream "#<\"~A\" ~A>"
                    (let ((w/pw (value-of 'word obj)))
                      (etypecase w/pw
                        (word (word-pname w/pw))
                        (polyword (pw-pname w/pw))))
                    (indiv-id obj))))
  
  :full ((if (deallocated-individual? obj)
           (format stream "#<deallocated individual>")
           (format stream "#<term~A \"~A\">"
                   (indiv-id obj)
                   (let ((w/pw (value-of 'word obj)))
                     (etypecase w/pw
                       (word (word-pname w/pw))
                       (polyword (pw-pname w/pw)))))))

  :string (;(format nil "~A"
           (if (deallocated-individual? obj)
            (format stream "#<deallocated individual>")
            (let ((w/pw (value-of 'word obj)))
                     (etypecase w/pw
                       (word (word-pname w/pw))
                       (polyword (pw-pname w/pw)))))))   ;)



(define-special-printing-routine-for-category    pair-term
  :short ((format stream "#<~A.~A ~A>"
                  (princ-dm&p-obj (value-of 'other obj))
                  (princ-dm&p-obj (value-of 'head obj))
                  (indiv-id obj)))
                    
  :full ((format stream "#<pair-term~A ~A.~A >"
                 (indiv-id obj)
                 (princ-dm&p-obj (value-of 'other obj))
                 (princ-dm&p-obj (value-of 'head obj))
                 ))

  :string  ((format nil "~A.~A"
                    (princ-dm&p-obj (value-of 'other obj))
                    (princ-dm&p-obj (value-of 'head obj)))))
                    



(define-special-printing-routine-for-category   subject-verb
  :short ((format stream "#<~A--~A ~A>"
                 (princ-dm&p-obj (value-of 'subject obj))
                 (princ-dm&p-obj (value-of 'verb obj))
                 (indiv-id obj)))

  :full ((format stream "#<subject-verb ~A--~A ~A>"
                 (princ-dm&p-obj (value-of 'subject obj))
                 (princ-dm&p-obj (value-of 'verb obj))
                 (indiv-id obj)))

  :string ( "<subject-verb string>"
            ;(format stream "~A--~A"
            ;        (value-of 'subject obj)
            ;        (value-of 'verb obj))
            ))



(define-special-printing-routine-for-category   you-do
  :short ((format stream "#<you--~A ~A>"
                  (princ-dm&p-obj (value-of 'action obj))
                  (indiv-id obj)))
  :full ((format stream "#<you-do you--~A ~A>"
                 (princ-dm&p-obj (value-of 'action obj))
                 (indiv-id obj))))
                    

(define-special-printing-routine-for-category   genitive
  :short ((format stream "#<~A : ~A  ~A>"
                 (princ-dm&p-obj (value-of 'owner obj))
                 (princ-dm&p-obj (value-of 'owned obj))
                 (indiv-id obj)))

  :full ((format stream "#<genitive ~A : ~A  ~A>"
                 (princ-dm&p-obj (value-of 'owner obj))
                 (princ-dm&p-obj (value-of 'owned obj))
                 (indiv-id obj)))

  :string ( "<genitive>" ) )





(define-special-printing-routine-for-category    verb-object
  :short ((format stream "#<~A--~A ~A>"
                 (princ-dm&p-obj (value-of 'verb obj))
                 (princ-dm&p-obj (value-of 'object obj))
                 (indiv-id obj)))

  :full ((format stream "#<verb-object ~A--~A ~A>"
                 (princ-dm&p-obj (value-of 'verb obj))
                 (princ-dm&p-obj (value-of 'object obj))
                 (indiv-id obj)))

  :string ((format stream "~A--~A"
                    (value-of 'verb obj)
                    (value-of 'object obj))))



(define-special-printing-routine-for-category    adverb-verb
  :short ((format stream "#<~A--~A ~A>"
                 (princ-dm&p-obj (value-of 'adverb obj))
                 (princ-dm&p-obj (value-of 'verb obj))
                 (indiv-id obj)))

  :full ((format stream "#<verb-object ~A--~A ~A>"
                 (princ-dm&p-obj (value-of 'adverb obj))
                 (princ-dm&p-obj (value-of 'verb obj))
                 (indiv-id obj))))




(define-special-printing-routine-for-category    infinitive-relation
  :short ((format stream "#<'to ~A'  ~A>"
                  (princ-dm&p-obj (value-of 'verb obj))
                  (indiv-id obj)))

  :full ((format stream "#<infinitive 'to ~A'  ~A>"
                 (princ-dm&p-obj (value-of 'verb obj))
                 (indiv-id obj)))

  :string ((format stream "to ~A"
                   (princ-dm&p-obj (value-of 'verb obj))
                   (indiv-id obj))))




(define-special-printing-routine-for-category    unanalyzed-compound
  :short ((format stream "#<~A  ~A>"
                  (princ-dm&p-obj (value-of 'terms obj))
                  (indiv-id obj)))

  :full ((format stream "#<unanalyzed-compound ~A  ~A>"
                 (princ-dm&p-obj (value-of 'terms obj))
                 (indiv-id obj)))

  :string ((format stream "~A"
                   (princ-dm&p-obj (value-of 'terms obj))
                   (indiv-id obj))))



;;;-------------
;;; subroutines
;;;-------------

(defvar *dm&p-unprintable-individual* nil
  "bound to any individual whose type isn't listed in the typecase
   below to help in figuring out what to do to add it.")


(defun princ-dm&p-obj (obj)
  (typecase obj
    (individual
     (case (cat-symbol (i-type-of obj))

       ;;--- dm&p categories

       (category::segment
        "segment" )

       (category::term
        (let ((w/pw (value-of 'word obj)))
          (etypecase w/pw
            (word (word-pname w/pw))
            (polyword (pw-pname w/pw)))))

       (category::pair-term
        (concatenate
         'string
         (princ-dm&p-obj (value-of 'other obj))
         "."
         (princ-dm&p-obj (value-of 'head obj))))

       (category::subject-verb
        (concatenate
         'string
         (princ-dm&p-obj (value-of 'subject obj))
         "."
         (princ-dm&p-obj (value-of 'verb obj))))

       (category::verb-object
        (concatenate
         'string
         (princ-dm&p-obj (value-of 'verb obj))
         "."
         (princ-dm&p-obj (value-of 'object obj))))

       (category::adverb-verb
        (concatenate
         'string
         (princ-dm&p-obj (value-of 'adverb obj))
         "."
         (princ-dm&p-obj (value-of 'verb obj))))

       (category::genitive
        (concatenate 
         'string
         (princ-dm&p-obj (value-of 'owned obj))
         ".of."
         (princ-dm&p-obj (value-of 'owner obj))))

       (category::unanalyzed-compound
        (princ-dm&p-obj (value-of 'terms obj)))


       ;;--- core categories

       (category::pronoun/inanimate
        (word-pname (value-of 'word obj)))
       (category::pronoun/second
        (word-pname (value-of 'word obj)))
       (category::pronoun/plural
        (word-pname (value-of 'word obj)))

       (category::name-word
        (word-pname (value-of 'name obj)))

       (category::be
        "be" )
       (category::have
        "have" )
       (category::anonymous-agentive-action
        (let ((subtypes (cdr (indiv-type obj))))
          (concatenate
           'string
           "do"
           (dolist (category subtypes "")
             (concatenate 'string
                          "."
                          (symbol-name (cat-symbol category)))))))

       (category::number
        (format nil "~A" (value-of 'value obj)))
       (category::single-capitalized-letter
        (word-pname (value-of 'letter obj)))

       (category::sequence
        (let* ((items (reverse (value-of 'items obj)))
               (strings (list (princ-dm&p-obj (first items)))))
          (dolist (item (rest items))
            (push "." strings)
            (push (princ-dm&p-obj item) strings))
          (apply #'concatenate 'string strings)))

       (otherwise
        (general-dm&p-object-printing-strategies obj))))

    (referential-category
     (symbol-name (cat-symbol obj)))

    (otherwise
     "<new type>")))




(defun general-dm&p-object-printing-strategies (obj)
  (let ((name (value-of 'name obj))
        (word (value-of 'word obj)))
    (cond
     (name
      (etypecase name
        (word (word-pname name))
        (polyword (pw-pname name))))
     (word
      (word-pname word))
     (t
      (dm&p-printing/new-type obj)))))


(defun dm&p-printing/new-type (obj)
  (format t "~&Princ-dm&p-obj -- New type of individual: ~A~%"
          (i-type-of obj))
  (setq *dm&p-unprintable-individual* obj)
  "<new individual>")




;;;----------------
;;; printing lists
;;;----------------

(defun valid-segment-term-list (list)
  (let ( one-isnt? )
    (dolist (item list)
      (typecase item
        (symbol (setq one-isnt? t))
        (word )
        (referential-category )
        (individual )
        (otherwise
         (setq one-isnt? t))))
    (not one-isnt?)))

(defun princ-term-list (term-list stream)
  (write-string (princ-term-list/string term-list)
                stream))

(defun princ-term-list/string (term-list)
  ;; This version renders the terms as the equivalent words.
  ;; It's useful in printing the terms field of a segment in
  ;; the structure-printer for segments
  (concatenate 'string
               "( "
               (princ-term-list/no-parens/string term-list)
               ")" ))


(defun princ-term-list/no-parens/string (term-list)
  (let ((string ""))
    (dolist (item term-list)
      (setq
       string
       (concatenate
        'string
        string
        (etypecase item
          (word (word-pname item))
          
          (polyword (pw-pname item))
          
          (individual
           (if (deallocated-individual? item)
             "deallocated"
             (if (or (indiv-typep item 'term)
                     (indiv-typep item 'pair-term)
                     (indiv-typep item 'paragraph)
                     (indiv-typep item 'section-object)
                     (indiv-typep item 'number)
                     (indiv-typep item 'have)
                     (indiv-typep item 'frequency-of-event))
               
               (cond
                ((indiv-typep item 'have)
                 "have" )
                
                ((indiv-typep item 'pair-term)
                 (let ((cfr (value-of 'rewrite-rule item)))
                   (if cfr
                     (symbol-name (cat-symbol (cfr-category cfr)))
                     "a pair-term" )))
                
                ((indiv-typep item 'paragraph)
                 (format nil "paragraph ~A" (value-of 'count item)))
                ((indiv-typep item 'section-object)
                 (format nil "sect.obj.~A" (value-of 'count item)))
                
                ((indiv-typep item 'frequency-of-event)
                 (word-pname (value-of 'name item)))
                
                ((indiv-typep item 'number)
                 ;(word-pname
                 ; (cadr (member :digit-sequence (unit-plist item))))
                 (format nil "~A" (value-of 'value item))
                 )
                
                (t
                 (let ((w/pw (terms-word item)))
                   (etypecase w/pw
                     (word (word-pname w/pw))
                     (polyword (pw-pname w/pw))))))
               (else
                 #|(format
                       t "~&~%~%>>> Princ-term-list/no-parens/string ~
                          ~%  Word/Term list contains a non-term:~
                          ~%    ~A of type ~A" item (indiv-type item))
                      "???" |#
                 (format nil "~A.~A"
                         (symbol-name (cat-symbol (itype-of item)))
                         (indiv-id item))
                 ))))
          
          ((or referential-category
               category
               mixin-category)
           (string-downcase
            (symbol-name (cat-symbol item)))))
        
        " ")))
    string ))



;;;----------------------------------------------------
;;; Determining the 'length' of an object in terminals
;;;----------------------------------------------------

(defun number-of-terminals-in-dm&p-object (obj)
  (declare (ignore obj))
  1 )


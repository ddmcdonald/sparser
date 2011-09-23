;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "sort"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  0.1 April 1995

;; broken out from [analyzers;DM&P:measure] 11/21/94.  
;; Added/removed cases ...12/1
;; 0.1 (2/16/95) added an 'otherwise' clause to the moby routine
;;     (4/3) moved to [interface;grammar:] to satify workbench dependency

(in-package :sparser)

;;;--------------------------------------
;;; binding for Linguistic object window
;;;--------------------------------------

(defparameter *instance-sorting-routine*
               'sort-discourse-entries-by-frequency
               ;; 'sort-discourse-entries-alphabetically
  "Read by button on aux-view independent window. Controls
   sort used in List-category-instances-from-discourse-history." )



;;;---------------------------------------
;;; master routines for discourse entries
;;;---------------------------------------

(defun sort-discourse-entries-by-frequency  (dht1 dht2)
  (let ((length1 (length dht1))
        (length2 (length dht2)))
    (cond ((> length1 length2)
           t )
          ((< length1 length2)
           nil )
          (t (sort-units-alphabetically (first dht1)
                                        (first dht2))))))


(defun sort-discourse-entries-alphabetically  (dht1 dht2)
  (sort-units-alphabetically (first dht1)
                             (first dht2)))



;;;--------------------------
;;; master routine for units
;;;--------------------------

(defun sort-units-alphabetically (unit1 unit2)
  (let ((type1 (type-of unit1))
        (type2 (type-of unit2)))
    (unless (member type1 '(individual referential-category))
      (break "new object type: ~A" type1))
    (unless (member type2 '(individual referential-category))
      (break "new object type: ~A" type2))

    (cond ((and (eq type1 'referential-category)
                (eq type2 'referential-category))
           (sort-categories-alphabetically unit1 unit2))
          ((and (eq type1 'individual)
                (eq type2 'individual))
           (sort-individuals-alphabetically unit1 unit2))
          (t (cond
              ;; individuals before categories
              ((eq type1 'individual)
               t)
              ((eq type2 'individual)
               nil)
              (t (break "shouldn't have gotten here:~
                         Neither type1 or type2 is an individual")))))))


;;--- categories

(defun sort-categories-alphabetically (c1 c2)
  (let ((cname1 (symbol-name (cat-symbol c1)))
        (cname2 (symbol-name (cat-symbol c2))))
    (string< cname1 cname2)))



;;;-------------------------------
;;; type-dispatch for individuals
;;;-------------------------------

(defun sort-individuals-alphabetically (i1 i2)
  (cond
   ((and (not (individual-p i1))
         (not (individual-p i2)))
    (sort-units-alphabetically i1 i2))
   ((not (individual-p i1))
    nil )
   ((not (individual-p i2))
    t )
   (t
    (let ((itype1 (itype-of i1))
          (itype2 (itype-of i2)))
      (if (eq itype1 itype2)
        (case (cat-symbol itype1)
          
          (category::directive
           (sort-directives-alphabetically i1 i2))
          
          (category::genitive
           (sort-genitive-alphabetically i1 i2))
          (category::infinitive-relation
           (sort-infinitive-relation-alphabetically i1 i2))
          (category::number
           (sort-numbers-by-value i1 i2))
          (category::pair-term
           (sort-pair-terms-alphabetically i1 i2))
          (category::subject-verb
           (sort-subject-verb-alphabetically i1 i2))
          (category::verb-object
           (sort-verb-object-alphabetically i1 i2))
          (category::adverb-verb
           (sort-adverb-verb i1 i2))
          (category::you-do
           (sort-you-do-alphabetically i1 i2))
          (category::term
           (sort-terms-alphabetically i1 i2))
          
          (category::segment
           (sort-segment-by-end-position i1 i2))
          
          (category::be
           nil )
          (category::anonymous-agentive-action ;; do
           nil )
          (category::have
           nil )
          
          (category::pronoun
           (sort-pronoun-alphabetically i1 i2))
          (category::pronoun/first/singular
           (sort-pronoun-alphabetically i1 i2))
          (category::pronoun/first/plural
           (sort-pronoun-alphabetically i1 i2))
          (category::pronoun/second
           (sort-pronoun-alphabetically i1 i2))
          (category::pronoun/male
           (sort-pronoun-alphabetically i1 i2))
          (category::pronoun/female
           (sort-pronoun-alphabetically i1 i2))
          (category::pronoun/inanimate
           (sort-pronoun-alphabetically i1 i2))
          (category::pronoun/plural
           (sort-pronoun-alphabetically i1 i2))
          
          (category::frequency-of-event
           (sort-frequency-of-event-alphabetically i1 i2))
          (category::modifier
           (sort-modifier-alphabetically i1 i2))
          (category::quantity
           (sort-quantity-alphabetically i1 i2))
          (category::single-capitalized-letter
           (sort-single-capitalized-letter-alphabetically i1 i2))
          
          (category::amount-of-time
           (sort-amounts-of-time i1 i2))
          (category::time-unit
           (sort-time-units i1 i2))
          (category::deictic-time
           (sort-deictic-time-alphabetically i1 i2))
          
          (category::paragraph
           (sort-section-objects i1 i2))
          (category::section-object
           (sort-section-objects i1 i2))
          
          (otherwise
           (format t "Sort-individuals-alphabetically -- no sort ~
                      routine for the category~%~A~%" itype1)
           i1 ))

        (order-unlike-individuals i1 i2))))))


;;;-------
;;; cases
;;;-------

(defun sort-directives-alphabetically (i1 i2)
  (let ((action1 (value-of 'action i1))
        (action2 (value-of 'action i2)))
    (sort-individuals-alphabetically action1 action2)))



(defun sort-time-units (i1 i2)
  (alphabetize-words (value-of 'name i1)
                     (value-of 'name i2)))


(defun sort-amounts-of-time (i1 i2)
  (let ((unit1 (value-of 'units i1))
        (unit2 (value-of 'units i2)))
    (if (eq unit1 unit2)
      (sort-individuals-alphabetically
       (value-of 'quantity i1) (value-of 'quantity i2))
      (sort-individuals-alphabetically unit1 unit2))))



(defun sort-segment-by-end-position (i1 i2)
  (let ((e1 (value-of 'ends-at i1))
        (e2 (value-of 'ends-at i2)))
    (< e1 e2)))


(defun sort-deictic-time-alphabetically (i1 i2)
  (let ((n1 (value-of 'name i1))
        (n2 (value-of 'name i2)))
    (alphabetize-words n1 n2)))

(defun sort-quantity-alphabetically (i1 i2)
  (let ((n1 (value-of 'name i1))
        (n2 (value-of 'name i2)))
    (string< n1 n2)))


(defun sort-frequency-of-event-alphabetically (i1 i2)
  (let ((n1 (value-of 'name i1))
        (n2 (value-of 'name i2)))
    (alphabetize-words n1 n2)))


(defun sort-modifier-alphabetically (i1 i2)
  (let ((n1 (value-of 'name i1))
        (n2 (value-of 'name i2)))
    (string< n1 n2)))


(defun sort-single-capitalized-letter-alphabetically (i1 i2)
  (let ((l1 (word-pname (value-of 'letter i1)))
        (l2 (word-pname (value-of 'letter i2))))
    (string< l1 l2)))


(defun sort-pronoun-alphabetically (i1 i2)
  (let ((word1 (value-of 'word i1))
        (word2 (value-of 'word i2)))
    (alphabetize-words word1 word2)))


(defun sort-genitive-alphabetically (i1 i2)
  (let ((ed1 (value-of 'owned i1))
        (ed2 (value-of 'owned i2)))
    (if (eq ed1 ed2)
      (let ((er1 (value-of 'owner i1))
            (er2 (value-of 'owner i2)))
        (sort-individuals-alphabetically er1 er2))
      (sort-individuals-alphabetically ed1 ed2))))


(defun sort-infinitive-relation-alphabetically (i1 i2)
  (let ((v1 (value-of 'verb i1))
        (v2 (value-of 'verb i2)))
    (sort-individuals-alphabetically v1 v2)))


(defun sort-subject-verb-alphabetically (i1 i2)
  (let ((v1 (value-of 'verb i1))
        (v2 (value-of 'verb i2)))
    (if (eq v1 v2)
      (let ((s1 (value-of 'subject i1))
            (s2 (value-of 'subject i2)))
        (sort-individuals-alphabetically s1 s2))
      (sort-individuals-alphabetically v1 v2))))

(defun sort-you-do-alphabetically (i1 i2)
  (let ((a1 (value-of 'action i1))
        (a2 (value-of 'action i2)))
    (sort-individuals-alphabetically a1 a2)))


(defun sort-verb-object-alphabetically (i1 i2)
  (let ((v1 (value-of 'verb i1))
        (v2 (value-of 'verb i2)))
    (if (eq v1 v2)
      (let ((o1 (value-of 'object i1))
            (o2 (value-of 'object i2)))
        (sort-individuals-alphabetically o1 o2))
      (sort-individuals-alphabetically v1 v2))))
        

(defun sort-numbers-by-value (n1 n2)
  (let ((v1 (value-of 'value n1))
        (v2 (value-of 'value n2)))
    (< v1 v2)))







(defun order-unlike-individuals (i1 i2)
  ;; ///(likely to be) shorter goes first. If the case hasn't been
  ;; anticipated, sort by category name. ///the best thing would
  ;; probably be sorting by the head or first words involved,
  ;; but that requires computing that for each type, which seems
  ;; like an otherwise unused and costly.
  (let ((cat-name1 (symbol-name (cat-symbol (itype-of i1))))
        (cat-name2 (symbol-name (cat-symbol (itype-of i2)))))
    (string< cat-name1 cat-name2)))


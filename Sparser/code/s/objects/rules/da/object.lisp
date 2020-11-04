;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "object"
;;;   Module:  "objects;rules:DA:"
;;;  Version:  May 1995

;; initiated 5/5/95

(in-package :sparser)


;;; object

(defstruct (da-rule
            (:include unit)  ;; plist
            (:conc-name #:da-)
            (:print-function print-da-rule-structure))

  name                 ;; a symbol -- the basis of its indexing
  pattern-description  ;; the original given with the definition
  action-description   ;; ditto
  action-fn            ;; what executes at runtime
  )


(defun print-da-rule-structure (obj stream depth)
  (declare (ignore depth))
  (format stream "#<DA ~a>" (da-name obj)))


;;; interning

(defparameter *debris-analysis-rules* (make-hash-table :test #'eq))

(defun list-da-actions ()
  (maphash #'(lambda (key value)
	       (format t "~&key: ~a  value: ~a" key value))
	   *debris-analysis-rules*))

(defun da-rule-named (symbol)
  (gethash symbol *debris-analysis-rules*))

(defun intern-da-rule (rule)
  (let ((symbol (da-name rule)))
    (setf (gethash symbol *debris-analysis-rules*) rule)))

#| Notes for re-doing the pattern sorter by following out from the heads

(da-trie-data-table-of-first-labels (da-trie)) == only 30 heads
sp> (all-hash-keys *)
(#<ref-category NUMBER> #<ref-category QUANTIFIER> #<ref-category INTERJECTION>
 #<ref-category WH-PRONOUN> #<ref-category QUESTION-MARKER>
 #<ref-category PREPOSED-AUXILIARY> #<ref-category BE> #<ref-category VG+ING>
 #<ref-category WHERE-RELATIVE-CLAUSE> #<ref-category WHEN-RELATIVE-CLAUSE>
 #<ref-category QUESTION> #<ref-category WHETHERCOMP> #<ref-category IFCOMP>
 #<ref-category ADVERB> #<word COMMA> #<ref-category ADJP>
 #<ref-category PROPER-NOUN> #<ref-category NP> #<ref-category VP+PAST>
 #<ref-category VP+ED> #<ref-category VP+ING> #<ref-category SUBORDINATE-S>
 #<ref-category SUBORDINATE-CLAUSE> #<ref-category VP>
 #<ref-category TRANSITIVE-CLAUSE-WITHOUT-OBJECT> #<ref-category PP>
 #<ref-category TO-COMP> #<ref-category S> #<ref-category FREQUENCY-OF-EVENT>
 #<ref-category HAVE>)

sp> (d v)
#<vertex wh-pronoun/1>
  plist                 = nil
  reference-item        = #<ref-category WH-PRONOUN>
  count                 = 1
  rightward-extensions  = (#<arc wh-pronoun/1 wh-pronoun wh-pronoun/2>)

sp> (vertex-rightward-extensions v)
(#<arc wh-pronoun/1 wh-pronoun wh-pronoun/2>)
sp> (d (car *))
#<arc wh-pronoun/1 wh-pronoun wh-pronoun/2>
  plist         = nil
  left-vertex   = #<vertex wh-pronoun/1>
  right-vertex  = #<vertex wh-pronoun/2>
  label         = #<ref-category WH-PRONOUN>
sp> (defvar arc *)  make-arc-for-pattern-item
sp> (type-of arc)
form-arc

|#

;;; item printers

(defun pattern-item-as-string (item)
  (etypecase item
    ((or category referential-category mixin-category)
     (string-downcase (symbol-name (cat-symbol item))))
    (pattern-item
     (string-for-pattern-item item))
    (word
     (word-pname item))
    (polyword
     (pw-pname item))))


;;; sorting

(defvar *da-rules* nil
  "Ordered list of the names of the DA rules")

(defun populate-DA-data ()
  "Pour the rules into the accumulator,
   then sort according to their patterns"
  (let ((rule-names (all-hash-keys *debris-analysis-rules*)))
    (setq *da-rules*
          (sort rule-names #'da-pattern-less-than))
    (length *da-rules*)))

(defun da-pattern-less-than (name1 name2) ;;pat1 pat2)
  (flet ((same-pat-element (e1 e2)
           (when (eq (type-of e1) (type-of e2))
             (etypecase e1
               (symbol (eq e1 e2))
               (cons (equal e1 e2))
               (string (string= e1 e2)))))
         (different-element-types (e1 e2)
           ;; (not (eq (type-of e1) (type-of e2)))
           ;;   let two strings get through
           (etypecase e1
             (symbol (not (symbolp e2)))
             (string (not (stringp e2)))
             (cons (not (consp e2))))))
    
    (let* ((rule1 (da-rule-named name1))
           (rule2 (da-rule-named name2))
           (pat1 (da-pattern-description rule1))
           (pat2 (da-pattern-description rule2)))
      (loop for e1 in pat1
         as e2 in pat2
         do (cond
              ((null e1) ;; pat1 is shorter
               (return-from da-pattern-less-than t))
              ((null e2) ;; pat2 is shorter
               (return-from da-pattern-less-than nil))
              
              ((different-element-types e1 e2)
               (cond
                 ((and (symbolp e1) (stringp e2))
                  (return-from da-pattern-less-than t))
                 ((and (stringp e1) (symbolp e2))
                  (return-from da-pattern-less-than nil))
                 
                 ((and (symbolp e1) (consp e2))
                  (return-from da-pattern-less-than t))
                 ((and (consp e1) (symbolp e2))
                  (return-from da-pattern-less-than nil))

                 ((and (stringp e1) (consp e2))
                  (return-from da-pattern-less-than t))
                 ((and (consp e1) (stringp e2))
                  (return-from da-pattern-less-than nil))

                 (t (break "different types fell through
                      ~%  pat1: ~a~%  pat2: ~a~
                      ~%  e1 is a ~a~%  e2: ~a"
                           pat1 pat2 (type-of e1) (type-of e2)))))

              (;;(eq (type-of e1) (type-of e2))
               (not (different-element-types e1 e2))
               (cond
                 ((same-pat-element e1 e2)) ;; look at next element
                 (t
                  (alphabetize e1 e2))))

              (t ;; shouldn't get here
               (break "Fell through~%  pat1: ~a~%  pat2: ~a~
                ~%  e1: ~a~%  e2: ~a" pat1 pat2 e1 e2)))))))

(defun all-da-patterns ()
  (unless *da-rules* (populate-DA-data))
  (loop for rule-name in *da-rules*
     as rule = (da-rule-named rule-name)
     as pat = (da-pattern-description rule)
     do (print pat)))
                

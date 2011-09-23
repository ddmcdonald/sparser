;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1999 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rdata"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  0.4 January 1999  

;; initiated 8/4/92 v2.3, fleshed out 8/10, added more cases 8/31
;; 0.1 (5/25/93) changed what got stored, keeping around a dereferenced
;;      version of the rdata so that individuals could prompt rule definition
;; 0.2 (10/25) Allowed mappings to multiple categories
;;     (1/17/94) added :adjective as a option for heads. 5/24 added 'time-deictic'
;;     5/26 aded 'adverb'  10/6 added option for a label to be a word
;; 0.3 (10/20) rewrote 'time-deictic' as 'standalone-word'
;; 0.4 (11/1) hacked Setup-rdata to have rules be written even when the head word
;;      specifies a variable rather than a word.
;;     (1/23/99) pulled out an inner loop in Decode-rdata-mapping to handle
;;      reworked treatment of the realization of percent.

(in-package :sparser)


;;;----------------------------
;;; 1st pass -- check spelling
;;;----------------------------

(defun setup-rdata (category rdata)
  ;; called from Decode-category-parameter-list as part of defining
  ;; a category This routine is responsible for decoding the rdata field,
  ;; the routines in [driver] are the ones that actually create the rules
  
  ;; 1st check for spelling errors in the keywords
  (do ((key (car rdata) (car rest))
       (rest (cddr rdata) (cddr rest)))
      ((null key))

    (unless (keywordp key)
      (error "Realization data for ~A includes ~A~
              ~%    which is in a keyword position but isn't a keyword"
             category key))

    (unless (member key
                    '(:tree-family :mapping
                      :main-verb :common-noun :proper-noun :adjective
                      :adverb :word :standalone-word
                      :special-case-head
                      :additional-rules )

                    :test #'eq)
      (error "In the realization data for ~A~
              ~%there is the key ~A~
              ~%which isn't one of the defined keys.~
              ~%Check the spelling."
             category key)))

  ;; now dereference the symbols
  (multiple-value-bind (head-word etf mapping local-cases schematic?)
                       (apply #'dereference-rdata category rdata)
    
    (setf (cat-realization category)
          `(:schema (,head-word
                     ,etf
                     ,mapping
                     ,local-cases)))
 (setq schematic? nil)
    (unless schematic?
      (make-rules-for-realization-data
       category head-word etf mapping local-cases))))


;;;------------------------------------------------
;;; the real driver: symbols -> objects by keyword
;;;------------------------------------------------

(defvar *schematic?* nil
  "A device to communicate between Deref-rdata-word, where the fact
   that a head-word has been given as the name of a variable rather
   than a string defines the rdata as being schematic, and the
   function below, where I want to pass that fact back to its caller.")

(defun dereference-rdata (category
                          &key ((:tree-family tf-name))
                               mapping
                               ((:main-verb    mvb-name))
                               ((:common-noun  cn-name))
                               ((:proper-noun  pn-name))
                               standalone-word
                               adjective
                               adverb
                               word
                               ((:special-case-head  no-head))
                               ((:additional-rules cases)))
  
  ;; called from Setup-rdata using 'apply'

  (setq *schematic?* nil)  ;; initialize the flag
  (let ((head-word
         ;; Since we're not going to instantiate the rules for these
         ;; right here, and since the next layer isn't keyword driven,
         ;; we have to encode the part-of-speech information here.
         (cond (mvb-name
                (cons :verb
                      (deref-rdata-word mvb-name category)))
               (cn-name
                (cons :common-noun
                      (deref-rdata-word cn-name category)))
               (adjective
                (cons :adjective
                      (deref-rdata-word adjective category)))
               (adverb
                (cons :adverb
                      (deref-rdata-word adverb category)))
               (standalone-word
                (cons :standalone-word
                      (deref-rdata-word standalone-word category)))
               (word
                (cons :word
                      (deref-rdata-word word category)))
               (pn-name
                (cons :proper-noun
                      (deref-rdata-word pn-name category)))
               (no-head )
               (t ;(break "No head word included with the rdata for ~A~
                  ;        ~%Continue if that's ok" category)
                  nil )))
        
        (tf (exploded-tree-family-named tf-name))
        decoded-mapping  decoded-cases )

    (when tf-name
      (unless tf
        (error "There is no tree family named ~A~
                ~% category = ~A" tf-name category))
      (setq decoded-mapping
            (decode-rdata-mapping mapping category tf)))

    (when cases
      (setq decoded-cases (decode-cases cases)))

    (values (if no-head
              nil
              head-word)
            tf
            decoded-mapping
            decoded-cases
            *schematic?* )))



(defun deref-rdata-word (string-or-symbol category)
  (etypecase string-or-symbol
    (list
     ;; its either multiple (synomymous) words or the specification
     ;; of special cases in the morphology or both
     (cond ((listp (first string-or-symbol))
            ;; its both
            (mapcar #'(lambda (string)
                        (deref-rdata-word string category))
                    string-or-symbol))
           ((some #'keywordp string-or-symbol)
            ;; its a specificiation
            (deref-rdata-word-with-morph string-or-symbol))
           (t  ;; multiple words
            (mapcar #'(lambda (string)
                        (deref-rdata-word string category))
                    string-or-symbol))))

    (symbol
     (if string-or-symbol
       (let ((var (find string-or-symbol (cat-slots category)
                        :key #'var-name)))
         (unless var
           (error "Rdata word field contains a symbol indicating it ~
                   denotes a variable~%but the symbol ~A does not ~
                   correspond to any of the ~%variables of ~A"
                  string-or-symbol category))
         (setq *schematic?*  ;; flag in the caller
               `t)
         var )
       (else
         (break "null string-or-symbol passed in")
         :foo )))

    (string
     (resolve-string-to-word/make string-or-symbol))))



(defun deref-rdata-word-with-morph (specification)
  ;; we pass back a list where the strings have been replaced
  ;; with words.
  (let ( dereffed )
    (dolist (term specification)
      (push (etypecase term
              (keyword term)
              (string (resolve-string-to-word/make term)))
            dereffed))
    (nreverse dereffed)))



(defun decode-cases (cases)
  ;; Additional cases don't use mappings. They use the names of
  ;; categories, words, or variables directly.  Given the way the
  ;; rest of the modularity has worked out, all we have to do is
  ;; look for strings and replace them since everything else will
  ;; have been handled by replace-from-mapping even though it's
  ;; really superfluous.
  (let ( relation rule lhs  rhs  referent  decoded-cases )
    (dolist (case cases)
      (setq relation (first case)
            rule (cadr case))
      (setq lhs (first rule)
            rhs (second rule)
            referent (cddr rule))

      (when (some #'stringp rhs)
        (let ( acc )
          (dolist (term rhs)
            (push (if (stringp term)
                    (resolve-string-to-word/make term)
                    term)
                  acc))
          (setq rhs (nreverse acc))))

      (push `(,relation (,lhs ,rhs
                              ,@referent ))
            decoded-cases))

    (nreverse decoded-cases)))




(defun decode-rdata-mapping (mapping category tf)

  ;; semantic parameters are decoded as variables
  ;; syntactic labels are decoded as categories

  (let ((parameters (etf-parameters tf))
        (labels (etf-labels tf))
        (variables (cat-slots category))
        term value var cat new-list )

    (dolist (pair mapping)
      (setq term (car pair)
            value (cdr pair))

      (when (listp value)
        ;; either there's a notation error and they've left off the dot
        ;; or there are several categories that are to be mapped to.
        ;; We check here for the notation error.
        (when (null (cadr value))
          (setq value (car value))
          (format t "~%Mapping values should be dotted pairs.~
                     ~%The ~A pair of ~A isn't.~
                     ~%Continuing anyway." pair category)))
      (cond
       ((member term parameters :test #'eq)
        (setq var (find value variables :key #'var-name))
        (unless var
          (error "There is no variable named ~A in ~A,~
                  ~%as used in its rdata." term category))
        (push (cons term var)
              new-list))

       ((member term labels :test #'eq)
        (setq cat (decode-value-of-rdata-mapping
                   value category))
        (push (cons term cat)
              new-list))

       (t (error "The term ~A in the rdata mapping for ~A~
                  ~%isn't defined for the exploded tree family ~A"
                 term category tf))))

    (nreverse new-list)))


(defun decode-value-of-rdata-mapping (value category)
  (cond ((eq value :self)
         category)
        ((stringp value)
         (resolve-string-to-word/make value))
        ((listp value)
         (let ( acc )
           (dolist (c value)
             (push (decode-value-of-rdata-mapping c category)
                   acc))
           (nreverse acc)))
        (t (find-or-make-category-object
            value :def-category))))


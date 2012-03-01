;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1994,2012 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "polywords"
;;;   Module:  "objects;chart:words:"
;;;  Version:  3.3 March 2012

;; 1.1 (1/18/91 v1.8)  Added a proper Display-polyword that didn't use
;;      bracketing double quotes -- Princ-polyword does that.
;; 1.2 (10/31 v2.0) Flushed the polyword package - shifted the constant
;;      to use the word package.
;; 2.3 (9/6/92 v2.3) Added not-all-same-character-type as the better
;;      check for a string being a polyword than the recursive call to
;;      the tokenizer (sort of a poor-man's tokenizer that get's the
;;      semantics without the deliniation).  9/21 fleshed out the definition.
;; 3.0 (7/16/93) updated field name inside words
;; 3.1 (12/7) updated what has to be removed when deleting a pw
;; 3.2 (4/27/94) changed the return value of princ-polyword to mulify pretty-print-individual
;;     (12/19) added multi-word check and string constructor
;; 3.3 (6/2/08) Fan-out for *force-case-shift* ("United States")
;;     (4/14/09) added hyphenated-string-for-pw
;;     (2/10/12) Moved in pw-specific access code from object3 because (?)
;;       Clozure didn't know about it when it compiled that file and so
;;       couldn't access it. 3/1/12 Fixed caps bug and quieted compiler

(in-package :sparser)


(defstruct  (polyword
             (:conc-name #:pw-)
             (:print-function print-polyword-structure))
  symbol
  pname
  rules
  words
  fsa
  plist )


;;;----------
;;; printing
;;;----------

(defun print-polyword-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<polyword \"" stream)
  (write-string (pw-pname obj) stream)
  (write-string "\" >" stream)
  obj)

(defun princ-polyword (pw stream)
  (write-string "\"" stream)
  (write-string (pw-pname pw) stream)
  (write-string "\"" stream)
  pw )

(defun display-polyword (pw stream)
  (write-string (pw-pname pw) stream))

(defun hyphenated-string-for-pw (pw)
  (let ((word-strings (mapcar #'(lambda (w) (word-pname w)) 
			      (pw-words pw))))
    (let ((reversed (reverse word-strings))
	  with-hyphens )
      (do ((s (car reversed) (car rest))
	   (rest (cdr reversed) (cdr rest)))
	  ((null s))
	(push s with-hyphens) ;; gets them back in order
	(when rest
	  (push "-" with-hyphens)))
      (apply #'concatenate 'string with-hyphens))))

    


;;;------------
;;; cataloging
;;;------------

(or (boundp '*polyword-package*)
    (defconstant *polyword-package*
      (or (find-package :word)
          (break "The :words package should have been defined ~
                  by this point in the load"))))


(defvar *polywords-defined* nil
  "Accumulates all polyword objects.  Managed by Catalog and
   un-Catalog /polyword")


(defun catalog/polyword (polyword symbol)
  (push polyword *polywords-defined*)
  (set symbol polyword)
  (proclaim `(special ,symbol))
  symbol )


(defun un-catalog/polyword (polyword symbol)
  (setq *polywords-defined*
        (delete polyword *polywords-defined*))
  (makunbound symbol)
  (unintern symbol *polyword-package*)
  polyword )


;;;----------
;;; deletion
;;;----------

(defun delete-polyword (multi-word-string)
  ;; external form intended for use at toplevel
  (let* ((symbol (find-symbol multi-word-string *polyword-package*)))
    (unless symbol
      (error "There is no polyword with the string ~s" multi-word-string))
    (let ((polyword
           (if (boundp symbol)
             (symbol-value symbol)
             (error "The string ~S has been defined as a symbol,~
                     ~%       but it is not linked to a polyword"
                    multi-word-string))))

    (delete/polyword polyword))))


(defun delete/polyword (pw)
  (let* ((trigger-word
          (first (pw-words pw)))
         (triggers-rule-set (word-rules trigger-word))
         (cfr (pw-fsa pw)))

    (setf (rs-fsa triggers-rule-set)
          (delete cfr (rs-fsa triggers-rule-set)))

    (when cfr
      (delete/cfr cfr))

    (un-catalog/polyword pw (pw-symbol pw))
    pw ))


;;;-----------------
;;; lookup routines
;;;-----------------

(defun polyword-named (multi-word-string)
  (when *force-case-shift*
    (setq multi-word-string (force-case-of-word-string multi-word-string)))
  (let* ((symbol (find-symbol multi-word-string *polyword-package*)))
    (when symbol
      (when (boundp symbol)
        (symbol-value symbol)))))

(defun lookup-polyword (multi-word-string)
  (declare (ignore multi-word-string))
  (break "Calls to Lookup-polyword should be replaced by called to Polyword-named"))


(defun polyword-named/list-of-words (list-of-words)
  (let ((string-equivalent
         (polyword-multiword-string-for-list-of-words list-of-words)))
    (polyword-named string-equivalent)))


(defun polyword-multiword-string-for-list-of-words (list-of-words)
  (let ((s ""))
    (dolist (w list-of-words)
      (setq s (concatenate 'string
                           s " " (word-pname w))))
    (subseq s 1 (length s))))



;;;--------------------------------------------
;;; checking whether a string names a polyword
;;;--------------------------------------------

(defun multi-word-string (string)
  (declare (ignore string))
  (break "Multi-word-string called -- if this is interning a polyword,~
          ~%    use not-all-same-character-type instead"))



(defun not-all-same-character-type (string)

  ;; Called from, e.g., resolve-string-to-word as part of defining
  ;; a word to determine whether the string should be treated like
  ;; a polyword.  Uses the data structures in the tokenizer so that
  ;; the criteria will be the same as runtime -- i.e. if the string
  ;; includes characters of more than one type then it will be
  ;; tokenized as more than one word.

  (let* ((char-list (coerce string 'list))
         (first-category (car (tokenizer-entry (first char-list)))))

    (dolist (char (rest char-list))
      (unless (eq first-category
                  (car (tokenizer-entry char)))
        (return-from not-all-same-character-type t)))

    nil ))
    
    

;;;-----------------
;;; syntactic sugar
;;;-----------------

(defun put-property-on-pw (tag value word)
  (unless (symbolp tag)
    (error "The tag used to label a property on a word must ~
            be a symbol:~%~A" tag))
  (let ((established-cons (member tag (pw-plist word))))
    (if established-cons
      (unless (equal (cadr established-cons) value)
        (rplacd established-cons
                `(,value ,@(cddr established-cons))))
      (setf (pw-plist word)
            `(,tag ,value ,@(pw-plist word))))
    (pw-plist word)))

(defun property-of-polyword (tag pw)
  (unless (symbolp tag)
    (error "The tag used to access a property on a word must ~
            be a symbol:~%~A" tag))
  (cadr (member tag (pw-plist pw))))




;;;----------------------------------------------------------
;;; code for when the polywords are handled in the tokenizer
;;;----------------------------------------------------------

(defun index-polyword-fsa-under-trigger (list-of-words
                                         polyword)
  (let* ((first-word (first list-of-words))
         (rule-set (or (word-rule-set first-word)
                       (setf (word-rule-set first-word)
                             (make-rule-set
                              :backpointer first-word)))))

    (when (typep rule-set 'word)
      ;; an implicit, pass-through definition of an otherwise unknown
      ;; word, now to be replaced.  The definition will only exist
      ;; if this word had been scanned while parsing during this run.
      (setf (word-rule-set first-word)
            (setq rule-set (make-rule-set
                            :backpointer first-word))))
    (if (rs-fsa rule-set)
      (then
        (setf (rs-fsa rule-set)
              (sort (push polyword
                          (rs-fsa rule-set))
                    #'(lambda (one two)
                        (>= (length (pw-words one))
                            (length (pw-words two)))))))

      ;; this code had order-sensitive bugs where it would make circular
      ;; lists
      ;(add-another-polyword-to-the-list rule-set
      ;                                  list-of-words
      ;                                  polyword)
      (else
        (setf (rs-fsa rule-set)
              (list polyword))))))


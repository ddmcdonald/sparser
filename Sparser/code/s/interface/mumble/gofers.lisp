;;; -*- Mode: Lisp; Syntax: Common-Lisp; Package: SPARSER; -*-
;;; Copyright (c) 2013-2017,2023 David D. McDonald. All Rights Reserved.
;;;
;;;     File: "gofers"
;;;   Module: "interface;mumble;"
;;;  Version: August 2023

;; Initated 1/7/16 to consolidate usable gofer-type code from files
;; that for various reasons (OBE mostly) are not being loaded.

(in-package :sparser)

;;;-----------------------------------------------
;;; mumble words for sparser words and vice-versa
;;;-----------------------------------------------

;;--- words

(defgeneric get-mumble-word-for-sparser-word (s-word pos &optional irregulars)
  (:documentation "The types that represent words are different in Mumble
   and Sparser -- for no good reason but merging them would entail a good
   deal of labor for uncertain gain. Given a Sparser word object return the 
   corresponding Mumble word object. On the Mumble side, retrieving the
   correct word object requires us to specify the part of speech.
   If the Mumble-side word does not exist then we create it.")
  
  (:method ((i individual) pos &optional irregulars)
    (get-mumble-word-for-sparser-word (or (value-of 'word i)
                                          (category-of i))
                                      pos irregulars))
  (:method ((c category) pos &optional irregulars)
    (get-mumble-word-for-sparser-word (or (value-of 'word c)
                                          (rdata-head-word c pos)
                                          (lemma c pos)
                                          (string-downcase (pname c)))
                                      pos irregulars))
  
  (:method ((v lambda-variable) (pos T) &optional irregulars)
    "This will happen if we're walking over an rdata head word 
     field and it has an option for a variable to use with individuals"
    nil)
  
  (:method ((s-word word) pos &optional irregulars)
    (get-mumble-word-for-sparser-word (pname s-word) pos irregulars))
  
  (:method ((s-word polyword) pos &optional irregulars)
    (get-mumble-word-for-sparser-word (pname s-word) pos irregulars))
  
  (:method ((pname string) (pos null) &optional irregulars)
    (let ((word (resolve pname)))
      (assert word (pname)
       "Can only get mumble-words for known sparser words. ~s is unknown." pname)
      (get-mumble-word-for-sparser-word word nil irregulars)))

  (:method ((s-word word) (pos null)  &optional irregulars)
    "Get the part of speech from the rules on the word"
    (setq pos (part-of-speech-given-word s-word))
    (get-mumble-word-for-sparser-word (pname s-word) pos irregulars))

  (:method ((s-word-data cons) pos &optional irregulars)
    (let ((s-word (car s-word-data)) ;; #<word "find">
          (local-irregulars (cdr s-word-data))) ;; (:past-tense #<word "found">)
      (get-mumble-word-for-sparser-word
       s-word pos (or local-irregulars irregulars))))

  (:method ((pname string) pos &optional irregulars)
    "If the mumble word doesn't exist (or not for this part of speech)
     then create it."
    (assert (symbolp pos))
    (let ((mpos (if (eq (symbol-package pos) (find-package :mumble))
                  pos
                  (mumble-pos pos)))
          (m-irregulars (when irregulars
                          (convert-sparser-to-mumble-irregulars irregulars))))
      (or (mumble::find-word pname mpos)
          (if m-irregulars
            (apply #'mumble::define-word/expr pname (list mpos) m-irregulars)
            (mumble::define-word/expr pname (list mpos)))))))


(defun get-sparser-word-for-mumble-word (m-word)
  (word-named (mumble::pname m-word)))

(defun make-irreg-mword (word pos case irregular)
  "Add a case for an irregular to a mumble word of this part of speech (pos).
   Depending on the pathway by which we get here, m-word may not exist yet.
   N.b. on the Mumble side irregulars are just strings since they're not
   deployed until we're sending the word to the output stream."
  ;; for checking the pathway and what it's sending
  (assert (or (word-p word) (polyword-p word)))
  (assert (keywordp pos))
  (assert (keywordp case))
  (assert (or (stringp irregular) (listp irregular)
              (word-p irregular) (polyword-p irregular)))
  (let* ((m-pos (mumble-pos pos))
         (m-word (mumble::find-word (pname word) m-pos)))
    (if m-word
      (mumble::add-irregular-to-word m-word
                                     m-pos
                                     (mumble-equivalent-irreg-key case)
                                     (pname irregular))
      (get-mumble-word-for-sparser-word word pos `(,case ,irregular)))))

(defun convert-sparser-to-mumble-irregulars (plist)
  "Return a new plist where Sparser's keywords for irregulars
   are replaced by Mumble's tags for irregulars"
  (loop for (keyword word) on plist by #'cddr
     as tag = (mumble-equivalent-irreg-key keyword)
     as string = (etypecase word
                   (cons (loop for w in word collect (pname w)))
                   (word (pname word))
                   (polyword (pname word))
                   (string word))
     append `(,tag ,string)))

(defun mumble-equivalent-irreg-key (keyword)
  (case keyword
    (:plural 'm::plural)
    (:past-tense 'm::ed-form)
    (:present-participle 'm::ing-form)
    (:past-participle 'm::en-form)
    ;; Other Mumble tags
    ;; present-1st-singular present-2=nd-singular present-3rd-singular
    ;; present-plural past-{1st,2nd,3rd}-singular
    (otherwise "Missing Mumble equivalent of ~a" keyword)))


;;;-----------------------
;;; cross-package symbols
;;;-----------------------

(defgeneric mumble-symbol (symbol)
  (:method ((s symbol)) (mumble-symbol (symbol-name s)))
  (:method ((name string)) (intern name :mumble)))

(defgeneric sparser-symbol (symbol)
  (:method ((s symbol)) (sparser-symbol (symbol-name s)))
  (:method ((name string)) (intern name :sparser)))

(defgeneric word-string-for-sparser-word (term)
  (:documentation "May be overly specific and want refactoring.
 written to handle Sparer words that are implemented as categories,
 such as its prepositions and quantifiers. Return a string we can
 feed into get-lexicalize-phrase")
  (:method ((cat category))
    (let* ((name (cat-symbol cat))
           (string (symbol-name name)))
      (string-downcase string))))

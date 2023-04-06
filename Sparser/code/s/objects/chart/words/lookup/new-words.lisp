;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1995,2011-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "new words"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:  September 2021

;; 4.0 (9/28/92 v2.3) accomodates changes to tokenizer
;; 4.1 (7/16/93) updated field name
;; 4.2 (1/27/94) added Unknown-word?
;;     (12/12) added simplest case of make-word routine
;; 4.3 (1/9/95) added hook for introducing brackets
;; 4.4 (7/29/11) added new option that looks for primed knowledge
;;      about the word. 8/1 broke out make-word-from-lookup-buffer
;;     (3/1/12) quiet compiler
;; 4.5 (7/10/14) Added hook to affix-checker inside make-word/all-properties
;; 4.6 (10/7/14) moved the call to catalog before the operations
;;      that can set up all the other words that go with, e.g. a verb.
;;      That fixed bug where the new forms didn't see the original oblique
;;      form of the lemma and build a new one. 
;;     (10/14/14) added make-word/all-properties/or-primed
;;     (6/9/15) Added another case to it.

(in-package :sparser)

;;;----------------------------------------
;;; programmatic word-to-category creation
;;;----------------------------------------

(defvar *words-added-by-create-category* nil
  "Accumulator that can be passed through write-word-definitions-to-file")

(defun create-category-from-word (word &key pos)
  "Invoke the morphology and Comlex information to setup a category
   for this word just as though we were going through one of the
   standard routines for establishing unknown words but already
   have the word to hand. This is called frm create-new-category
   and handle-prep-if-necessary where we need to expand the vocabulary
   on the fly."
  (declare (special *introduce-brackets-for-unknown-words-from-their-suffixes*
                    *edge-for-unknown-words* *source-of-unknown-words-definition*
                    *comlex-words-primed*))
  (unless (and *introduce-brackets-for-unknown-words-from-their-suffixes*
               *edge-for-unknown-words*)
    (error "Category-creating machinery is deliberately turned off"))
  (unless *comlex-words-primed*
    (error "Comlex is not loaded"))

  (let ((*complain-about-words-missing-from-comlex* t)
        (*source-of-unknown-words-definition* :computed)
        (*incrementally-save-comlex-categories* t)
        (*comlex-form-output-stream* *standard-output*))
    (declare (special *complain-about-words-missing-from-comlex*
                      *source-of-unknown-words-definition*
                      *incrementally-save-comlex-categories*
                      *comlex-form-output-stream*))
    (setq *word-to-be-defined?* word)
    (unless pos (setq pos 'noun))
    (pushnew word *words-added-by-create-category*)
    (let ((comlex-clause (comlex-subcategorization word pos)))
      (if comlex-clause
        (case pos
          (noun (setup-common-noun word comlex-clause nil))
          (verb (setup-word-based-verb-category word comlex-clause))
          (otherwise
           (break "pos = ~a  Not set up yet to handle it" pos)))
        (let ((morph-keyword (word-morphology word)))
          (unless morph-keyword ;; move earlier in the chain
            (setf (word-morphology word) (affix-checker (word-pname word))))                                 
          (assign-morph-brackets-to-unknown-word word morph-keyword))))))

(defun setup-word-based-verb-category (word comlex-verb-entry)
  "Given that this feeds handle-prep-if-necessary, we have to return the
   verb, which will now have a minimal, capital-letter-semantics style
   category backing it. Uses the same amount of comlex information as
   unambiguous-comlex-primed-decoder does."
  ;;/// Next: get transitivity information from the entry
  (let ((category (setup-verb word comlex-verb-entry)))
    (tr :required-verb word category)
    word))



;;;-----------------------------------------
;;; Cases for what-to-do-with-unknown-words
;;;-----------------------------------------

(defvar *word-to-be-defined?* nil
  "Provides a pointer for recording routines to notice")

(defparameter *show-word-defs* nil
  "Controls whether we announce when a word goes through make-word
   routine. Only unknown words do that, so it can be a useful trace")



;; (what-to-do-with-unknown-words :capitalization-digits-&-morphology/or-primed)

(defun make-word/all-properties/or-primed (character-type 
                                           &optional existing-word)
  "Motivated by biomedical text. When dealing with unknown words,
   morphologically-derived word are preferred over extraction from Comlex
   because they don't have its predilection for POS ambiguity. However
   some definition is much preferred to none. Also includes special
   handling when we're in *big-mechanism*."
  (declare (special *capitalization-of-current-token* *exact-pname-of-token*
                    *primed-words* ;; Comlex table
                    *word-to-be-defined?* *show-word-defs*
                    *big-mechanism*
                    *introduce-brackets-for-unknown-words-from-their-suffixes*))

  (let* ((symbol (make-word-symbol))
         (word (or existing-word
                   ;; The caller is find-word, which needs to ensure
                   ;; that when *edge-for-unknown-words* is up that
                   ;; there is a category and edge for every word
                   ;; however trivial it might be.
                   (make-word :symbol symbol
                              :pname (symbol-name symbol)))))

    (setq *word-to-be-defined?* word)
    (when *show-word-defs*
      (format t "~&*** defining new word ~s~&" word))

    (catalog/word word symbol)
 
    (ecase character-type
      (:number
       (establish-properties-of-new-digit-sequence word))
      
      (:alphabetical
       (setf (word-capitalization word) *capitalization-of-current-token*)
       (let ((morph-keyword (or (when existing-word
                                  (word-morphology existing-word))
                                (calculate-morphology-of-word/in-buffer)))
             (entry (gethash (symbol-name symbol) *primed-words*)))
         (unless morph-keyword ;; n.b. returns a list of the affix and its POS
           (setq morph-keyword (affix-checker (word-pname word))))
         (setf (word-morphology word) morph-keyword)

         (tr :make-word/entry-and-properties morph-keyword entry)

         (if *introduce-brackets-for-unknown-words-from-their-suffixes*
           (cond
            ((and *big-mechanism*
                  (suitable-for-and-in-OBO word))
             (setup-word-denoting-an-OBO word))
            ((and *big-mechanism*
                  (eq *capitalization-of-current-token* :mixed-case)
                  (eql #\p (aref *exact-pname-of-token* 0))) ;; "pERK"
             (little-p-hack word))
            ((and *big-mechanism*
                  (eq *capitalization-of-current-token*
                      :all-caps)) ;; potential acronym
             ;; and don't swallow regular words unnecessarily
             (store-word-and-handle-it-later word))
            (morph-keyword
             (assign-morph-brackets-to-unknown-word
              word morph-keyword entry))
            (entry
             (unpack-primed-word word symbol entry))
            (*big-mechanism*
             (store-word-and-handle-it-later word))
            (t
             (setup-unknown-word-by-default word))) ;; noun

           (else
             (if entry
               (unpack-primed-word word symbol entry)
               (setup-unknown-word-by-default word))))))
      
      (:greek
       ;; Get here when there are two (or more) Greek characteris in a row.
       ;; They're almost certainly a suffix on a protein that will be
       ;; picked up by the no-space routine later. This call makes a noun
       ;; and also gives them a category. But it's better than falling
       ;; through the ecase and we can do something more tailored later.
       (setup-unknown-word-by-default word))
      (:hiragana
       ;; Get here when there are two (or more) hiragana characteris in a row.
       ;; This call makes a noun and also gives them a category.
       (setup-unknown-word-by-default word))
      (:katakana
       ;; Get here when there are two (or more) katakana characteris in a row.
       (setup-unknown-word-by-default word)))
      
    word ))



;; (what-to-do-with-unknown-words :check-for-primed)
(defun look-for-primed-word-else-all-properties (character-type
                                                 &optional existing-word)
  "Stronger than make-word/all-properties because it looks for an entry
   in Comlex before doing the 'all-properties' default."
  (declare (special *capitalization-of-current-token* 
                    *primed-words* *show-word-defs* *pnf-routine*))
  
  (let* ((symbol (make-word-symbol))  ;;reads out the lookup buffer
         (word (or existing-word ;; see find-word
                   (make-word :symbol symbol
                              :pname  (symbol-name symbol)))))
    (when *show-word-defs*
      (format t "~&*** defining new word ~s~&" word))

    (catalog/word word symbol)

    (ecase character-type
      (:number
       (establish-properties-of-new-digit-sequence word))
      (:alphabetical
       (setf (word-capitalization word) *capitalization-of-current-token*)
       (let ((entry (comlex-entry/full word))) ; had been open coded
         (cond
           ((and (capitalized word) *pnf-routine*)
            (store-word-and-handle-it-later word))
           (entry
            (tr :make-word/entry entry)
            (unpack-primed-word word symbol entry))
           (t
            (make-word/all-properties character-type word))))))
    word))



;; (what-to-do-with-unknown-words :capitalization-digits-&-morphology)
(defun make-word/all-properties (character-type &optional existing-word)
  "Called from Find-word as one of the  possible values for the function
   Establish-unknown-word, or from look-for-primed-word-else-all-properties
   if the word didn't have a Comlex entry.
     Uses the mophological properties of the word to determine what to do
   for it. 
     Can be called as the choice of what-to-do-with-unknown-words or as
   a supplement to another entry point in which case 'existing-word' will
   have that word."
  (declare (special *capitalization-of-current-token* *show-word-defs*
                    *introduce-brackets-for-unknown-words-from-their-suffixes*))
  (let* ((symbol (make-word-symbol))
         (word (or existing-word
                   (make-word :symbol symbol
                              :pname (symbol-name symbol)))))
    (unless existing-word
      (when *show-word-defs*
        (format t "~&*** defining new word ~s~&" word)))

    (catalog/word word symbol)

    (ecase character-type
      (:number (establish-properties-of-new-digit-sequence word))
      (:alphabetical
       (setf (word-capitalization word)
             *capitalization-of-current-token*)
       (let ((morph-keyword (or (when existing-word
                                  (word-morphology existing-word))
                                (calculate-morphology-of-word/in-buffer))))
         (unless morph-keyword ;;  more precise check of POS-indicating affixes
           (setq morph-keyword (affix-checker (word-pname word))))
         (setf (word-morphology word) morph-keyword)

         (tr ::make-word/properties morph-keyword)

         (when *introduce-brackets-for-unknown-words-from-their-suffixes*
           (if morph-keyword
             (assign-morph-brackets-to-unknown-word
              word morph-keyword)
             (setup-unknown-word-by-default word))))))
    word ))



;;(what-to-do-with-unknown-words :capitalization-&-digits)
(defun make-word/capitalization-&-digits (character-type &optional existing-word)
  ;; just like the all-properties version except that it does not
  ;; consider morphology
  (declare (special *capitalization-of-current-token*))
  (let* ((symbol (make-word-symbol))  ;;reads out the lookup buffer
         (word (or existing-word
                   (make-word :symbol symbol
                              :pname (symbol-name symbol)))))
    (catalog/word word symbol)

    (ecase character-type
      (:number (establish-properties-of-new-digit-sequence word))
      (:alphabetical 
       (setf (word-capitalization word)
             *capitalization-of-current-token*)))

    word ))



;;(what-to-do-with-unknown-words :make-word/no-properties)
(defun make-word/no-properties (character-type &optional existing-word)
  ;; just sets up the word, doesn't calculate any of its properties
  (declare (ignore character-type))
  (let* ((symbol (make-word-symbol))
         (word (or existing-word
                   (make-word :symbol symbol 
                              :pname  (symbol-name symbol)))))
    (catalog/word word symbol)
    word ))




;;;--------------------
;;; spaces and digits
;;;--------------------

(defun establish-properties-of-new-number-of-spaces (word)
  (setf (word-morphology word) :space)
  (setf (get-tag :number-of-spaces word) (length (word-pname word)))
  word )


(defun establish-properties-of-new-digit-sequence (word)
  (setf (word-morphology word) :digit)
  (setf (get-tag :numerical-value word) (parse-integer (word-pname word)))
  word )

(defun word-consists-of-only-digits (word)
  (eq (word-morphology word) :digit))


;;;------------------------------------------------
;;;  lowercase / capitalized version equivalences
;;;------------------------------------------------

(defun establish-equivalence-to-known-lowercase-word (word)
  (modify-word-buffer-to-lowercase (capitalized word))
  (let ((symbol-for-lowercase-equivalent
         (lookup-word-symbol)))
    (when symbol-for-lowercase-equivalent
      (let ((known-lowercase-word
             (symbol-value symbol-for-lowercase-equivalent)))
        (when known-lowercase-word
          (setf (word-rule-set word) known-lowercase-word)
          known-lowercase-word )))))


(defun modify-word-buffer-to-lowercase (type-of-capitalization)
  (ecase type-of-capitalization
    (:initial-letter-capitalized
     (downcase-first-letter/word-buffer))
    (:all-caps
     (downcase-entire-word/word-buffer))
    (:mixed-case
     (downcase-uppercase-letters/word-buffer))
    (:single-capitalized-letter
     (downcase-first-letter/word-buffer))))


(defun downcase-first-letter/word-buffer ()
  (setf (elt *word-lookup-buffer* 0)
        (lowercase-equivalent-letter (elt *word-lookup-buffer* 0))))

(defun downcase-entire-word/word-buffer ()
  (dotimes (i (fill-pointer *word-lookup-buffer*))
    (downcase-letter/word-buffer i)))

(defun downcase-uppercase-letters/word-buffer ( &aux letter )
  (dotimes (i (fill-pointer *word-lookup-buffer*))
    (setq letter (elt *word-lookup-buffer* i))
    (when (capital-letter letter)
      (downcase-letter/word-buffer i))))


(defun downcase-letter/word-buffer (index)
  (setf (elt *word-lookup-buffer* index)
        (lowercase-equivalent-letter
         (elt *word-lookup-buffer* index))))


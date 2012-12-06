;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2012 David D. McDonald
;;;
;;;     File: "comlex"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  December 2012

;; initiated 8/16/10. 11/3 cleaned up the loader. Added vivifying code.
;; 7/10/11 started finishing it. 7/28 Decided to use priming system
;; instead where we wait for the word to be seen before we expand it.
;; 3/1/12 fixed C&S eror. 10/15/12 Hooked up prime-comlex to the local
;; file. 10/30/12 added a flag to indicate that priming has been done.
;; Continued tweaks through 11/30. 12/3/12 Recognized that we're not 
;; merging spelling forms across entries, so hooked that up. Moved out
;; the priming and bracket judgments to separate files, leaving just
;; the part that really is one-off.

(in-package :sparser)

;;;--------
;;; Comlex
;;;--------

#| Given the full Comlex file from the LDC, read it in and stash
 its contents into tables by the POS type that Comlex assigned.
 See read-comlex-hash-words below.
|#

(defvar *comlex-words* (make-hash-table))
(defvar *comlex-nouns* (make-hash-table))
(defvar *comlex-verbs* (make-hash-table))
(defvar *comlex-adjectives* (make-hash-table))
(defvar *comlex-adverbs* (make-hash-table))
(defvar *comlex-advparts* (make-hash-table))
(defvar *comlex-prepositions* (make-hash-table))
(defvar *comlex-cardinals* (make-hash-table))
(defvar *comlex-ordinals* (make-hash-table))
(defvar *comlex-titles* (make-hash-table))
(defvar *comlex-scopes* (make-hash-table))
(defvar *comlex-pronouns* (make-hash-table))
(defvar *comlex-coordinate-conjunctions* (make-hash-table))
(defvar *comlex-subodinate-conjunctions* (make-hash-table))
(defvar *comlex-quantifiers* (make-hash-table))
(defvar *comlex-determiners* (make-hash-table))
(defvar *comlex-auxilaries* (make-hash-table))
(defvar *comlex-non-words* (make-hash-table))
#|
all-words 35060
nouns 21932
verbs 5665
adjectives 8193
adverbs 3120
advparts 21
prepositions 185
cardinals 105
ordinals 99
titles 19
scopes 3
pronouns 45
coordinate-conjunctions 5
subodinate-conjunctions 49
quantifiers 14
determiners 22
auxilaries 28
non-words 26
|#
(defparameter *comlex-hash-tables*
  `((,*comlex-words* all-words)
    (,*comlex-nouns* nouns)
    (,*comlex-verbs* verbs) 
    (,*comlex-adjectives* adjectives)
    (,*comlex-adverbs* adverbs)
    (,*comlex-advparts* advparts)
    (,*comlex-prepositions* prepositions)
    (,*comlex-cardinals* cardinals)
    (,*comlex-ordinals* ordinals)
    (,*comlex-titles* titles)
    (,*comlex-scopes* scopes)
    (,*comlex-pronouns* pronouns)
    (,*comlex-coordinate-conjunctions* coordinate-conjunctions)
    (,*comlex-subodinate-conjunctions* subodinate-conjunctions)
    (,*comlex-quantifiers* quantifiers)
    (,*comlex-determiners* determiners)
    (,*comlex-auxilaries* auxilaries)
    (,*comlex-non-words* non-words)))



(defun get-orth (entry) ;; adapted from comlex-util.lisp
  (getf (cdr entry) :ORTH))

;(time (read-comlex-hash-words "/Users/ddm/Library/ ddm/comlex_synt_3.1/COMLEX-SYNTAX-3.1"))
(defun read-comlex-hash-words (full-filename)
  (with-open-file (stream full-filename
			       :direction :input
                   :if-does-not-exist :error)
    (do ((entry (read stream nil :eof)
                (read stream nil :eof)))
        ((eq entry :eof))
      (let* ((pos (car entry))
             (string (get-orth entry))
             (symbol (intern string (find-package :sparser))))
        (setf (gethash symbol *comlex-words*) entry)
        (case pos
          (NOUN (setf (gethash symbol *comlex-nouns*) entry))
          (VERB (setf (gethash symbol *comlex-verbs*) entry))
          (ADJECTIVE (setf (gethash symbol *comlex-adjectives*) entry))
          (ADVERB (setf (gethash symbol *comlex-adverbs*) entry))
          (ADVPART (setf (gethash symbol *comlex-advparts*) entry))
          (PREP (setf (gethash symbol *comlex-prepositions*) entry))
          (CARDINAL (setf (gethash symbol *comlex-cardinals*) entry))
          (ORDINAL (setf (gethash symbol *comlex-ordinals*) entry))
          (TITLE (setf (gethash symbol *comlex-titles*) entry))
          (SCOPE (setf (gethash symbol *comlex-scopes*) entry))
          (PRONOUN (setf (gethash symbol *comlex-pronouns*) entry))
          (CCONJ (setf (gethash symbol *comlex-coordinate-conjunctions*) entry))
          (SCONJ (setf (gethash symbol *comlex-subodinate-conjunctions*) entry))
          (QUANT (setf (gethash symbol *comlex-quantifiers*) entry))
          (DET (setf (gethash symbol *comlex-determiners*) entry))
          (AUX (setf (gethash symbol *comlex-auxilaries*) entry))
          (WORD (setf (gethash symbol *comlex-non-words*) entry))
          (otherwise
           (push-debug `(,pos ,symbol ,entry))
           (break "Unexpected part of speech: ~a" pos)))))
    *comlex-words*))

(defun report-comlex-list-lengths ()
  (loop for entry in *comlex-hash-tables*
        for table hash-table = (car entry)
        for name symbol = (cadr entry)
       do (format t "~&~a ~a" name (hash-table-count table))))

(defun extract-table-entries (table)
  (loop for key being the hash-key in table
       collect key))

(defun alphabetize-table-entries (table)
  (let ((symbols (extract-table-entries table)))
    (sort symbols #'alphabetize)))

;; (write-complex-table-entries *comlex-adverbs* "adverbs")
(defun write-complex-table-entries (table file-final-part)
  (let ((filename (string-append "/Users/ddm/ws/Vulcan/ws/frequencies/"
                                 "comlex-" file-final-part ".txt")))
    (with-open-file (stream filename
			        :direction :output
                    :if-does-not-exist :create
                    :if-exists :overwrite)
      (format stream "~&;; Extracted from Comlex 3.1~%")
      (format stream "~&;; ~a ~a~%~%" (hash-table-count table) file-final-part)
      (let ((word-symbols (alphabetize-table-entries table)))
        (write word-symbols :stream stream))
      :done)))



;;;---------------------------
;;; diff'ing the major tables
;;;---------------------------

(defvar unambiguous-verbs (make-hash-table))
(defvar unambiguous-nouns (make-hash-table))
(defvar unambiguous-adjectives (make-hash-table))
(defvar unambiguous-adverbs (make-hash-table))

(defvar noun-verb-ambiguous-words (make-hash-table))
(defvar noun-adj-ambiguous-words (make-hash-table))
(defvar verb-adj-ambiguous-words (make-hash-table))

(defun comlex-noun-verb-ambiguous-words () ;; 2,879
  (loop for key being the hash-key in *is-a-verb-in-comlex*
     when (gethash key *is-a-noun-in-comlex*)
       do (setf (gethash key noun-verb-ambiguous-words) t)))

(defun comlex-noun-adjective-ambiguous-words () ;; 1,008
  (loop for key being the hash-key in *is-an-adjective-in-comlex*
     when (gethash key *is-a-noun-in-comlex*)
     do (setf (gethash key noun-adj-ambiguous-words) t)))

(defun comlex-verb-adjective-ambiguous-words () ;; 275
  (loop for key being the hash-key in *is-an-adjective-in-comlex*
     when (gethash key *is-a-verb-in-comlex*)
       do (setf (gethash key verb-adj-ambiguous-words) t)))

(defun diff-the-comlex-word-lists ()
  (loop for s in *comlex-verbs-list* ;; 5,665
       when (not (or (gethash s *is-a-noun-in-comlex*)
                     (gethash s *is-an-adjective-in-comlex*)))
		     ;; The adverbs don't intersect with any other
		     ;; class of words.
       do (setf (gethash s unambiguous-verbs) t))
  (loop for s in *comlex-nouns-list* ;; 21,932
       when (not (or (gethash s *is-a-verb-in-comlex*)
                     (gethash s *is-an-adjective-in-comlex*)))
       do (setf (gethash s unambiguous-nouns) t))
  (loop for s in *comlex-adjectives-list* ;; 8,193
       when (not (or (gethash s *is-a-verb-in-comlex*)
		     (gethash s *is-a-noun-in-comlex*)))
       do (setf (gethash s unambiguous-adjectives) t))
  (format t "~&~a unambiguous verbs~
             ~%~a unambiguous nouns~
             ~%~a unambiguous adjectives~%"
	  (hash-table-count unambiguous-verbs) ;; 2,683
	  (hash-table-count unambiguous-nouns) ;; 18,217
	  (hash-table-count unambiguous-adjectives)))  ;; 7,082




;;;-------------------
;;; Comlex word lists
;;;-------------------

#| Once the original file has been loaded and the word-lists written
 out, then we can work just from those files to have all the lemmas
 we want to have defined. Note that there's been no expansion of their
 morphological variants yet.
|#

(defvar *comlex-word-lists-loaded* nil
  "Provides a flag to gate operations that reference these lists")

(defun load-comlex ()
  "Pupulate the hashtables used by is-in-comlex?"
  ;; The word files are a part of the standard Sparser load
  ;; Just having loaded the files gives us defvar's pointing
  ;; to each of the major word lists. 
  (populate-comlex-adjectives)
  (populate-comlex-adverbs)
  (populate-comlex-nouns)
  (populate-comlex-verbs)
  (populate-comlex-function-words)
  (setq *comlex-word-lists-loaded* t))

(defmethod is-in-comlex? ((w word))
  (is-in-comlex? (word-pname w)))

(defmethod is-in-comlex? ((s string))
  (is-in-comlex? (intern s (find-package :sparser))))
		   
(defmethod is-in-comlex? ((s symbol))
  ;; interesting words will fit many parts of speech, 
  ;; which we could note here with a cond-every or some such.
  (or (gethash s *is-a-noun-in-comlex*)
      (gethash s *is-a-verb-in-comlex*)
      (gethash s *is-an-adjective-in-comlex*)
      (gethash s *is-an-adverb-in-comlex*)
      (gethash s *is-a-function-word-in-comlex*)))


;;;---------------------------------------------
;;; Making the vocabulary active inside Sparser
;;;---------------------------------------------
#|
 The lists in the various tables (e.g *is-a-function-word-in-comlex*)
or the simple lists themselves (*comlex-verbs-list*) contain symbols,
sometimes multiword symbols (e.g. |in case of|). They can be converted
to words and given bracketing assignments. When working on generic
texts this is most important for verbs.

  If we wanted to instantiate the words as, e.g. /dossiers/semantics-
free-verbs, and especially if we knew their subcategorization pattern,
then we could use forms like "svo" (/rules/tree-families/shortcuts),
but the last time we did that it took eons to load everything because
of the hashtable manipulation in the machinery for handling individuals.
Better to leave them uninstantiated until we know something about them
e.g. via DM&P or Fire. 
|#

(defmethod define-new-word ((s symbol) brackets form-category)
  ;; This is open-coding define-function-word since we're using the
  ;; brackets many times and need to
  (let* ((pname (symbol-name s))
         (known? (word-named pname)))
    (unless known? ;; in which case we probably know a lot more than
      ;; we're going to provide here. 
      (let ((word (resolve-string-to-word/make pname)))
        (typecase word
          (word 
           (setf (label-plist word)
                 `(:function-word ,form-category ,@(label-plist word))))
          (polyword
           (setf (pw-plist word)
                 `(:function-word ,form-category ,@(pw-plist word))))
          (otherwise
           (push-debug `(,word ,s ,form-category ,brackets))
           (error "Unexpected type for the word corresponding to ~
                   the symbol ~a: ~a" symbol (type-of word))))

        (establish-rule-set-for word)
        (loop for b in brackets ;;//// unless those are bracket objects won't work
           do (assign-bracket/expr word b))
        word))))

#+ignore ;; going with direct calls into Sparser's morphology
  ;; machinery. But this is a model of what to do with other POS.
(defmethod define-list-of-symbols-as-verbs ((list-of-symbols cons))
  ;;/// Write it out too?
  (let* ((verb-bracket-symbols '( ].verb  .[verb  mvb].  mvb.[))
	 ;; see  assign-brackets-as-a-main-verb for this list
	 (brackets (mapcar #'eval verb-bracket-symbols))
	 (category (category-named 'verb)))
    (loop for symbol in list-of-symbols
	 ;; Oops! have to expand the verb to it's other forms.
	 do (define-new-word symbol brackets category))))

(defmethod define-list-of-symbols-as-verbs ((list-of-symbols cons))
  (dolist (verb-symbol list-of-symbols)
    (unless (word-named (symbol-name verb-symbol))
      ;; don't overwrite known words
      (define-main-verb verb-symbol ;; becomes the category
          :infinitive (string-downcase (symbol-name verb-symbol))))))

(defmethod define-list-of-symbols-as-verbs ((table hash-table))
  (let ((verbs (loop for s being the hash-key in table
                  collect s)))
    (define-list-of-symbols-as-verbs verbs)))


;;;---------------
;;; Runtime setup
;;;---------------

;; This sets up wordlists. Takes a while to load even if just
;; has the unambiguous verbs. To be replaced by priming.
;; This function is in the load-the-grammar gated by the global
;; *incorporate-generic-lexicon* defined in everything.
;; /// Want to either root that out or adapt it to priming

(defun setup-comlex ()
  (format t "~&Setting up Comlex~%")
  (load-comlex) ;; populate the tables from word files
  (let ((nv-ambig (comlex-noun-verb-ambiguous-words))
        (na-ambig (comlex-noun-adjective-ambiguous-words))
        (va-ambig (comlex-verb-adjective-ambiguous-words)))
    ;; Ignore until a bracket algebra is designed for them. 
    (declare (ignore nv-ambig na-ambig va-ambig))
    (diff-the-comlex-word-lists) ;; populates unambig. tables
    (define-list-of-symbols-as-verbs unambiguous-verbs)
))

; (define-list-of-symbols-as-verbs '(engage fire wait arrive gain))

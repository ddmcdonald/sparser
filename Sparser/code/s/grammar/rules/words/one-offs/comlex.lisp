;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2012 David D. McDonald
;;;
;;;     File: "comlex"
;;;   Module: "grammar;rules:words:one-offs:"
;;;  Version:  November 2012

;; initiated 8/16/10. 11/3 cleaned up the loader. Added vivifying code.
;; 7/10/11 started finishing it. 7/28 Decided to use priming system
;; instead where we wait for the word to be seen before we expand it.
;; 3/1/12 fixed C&S eror. 10/15/12 Hooked up prime-comlex to the local
;; file. 10/30/12 added a flag to indicate that priming has been done.
;; Continued tweaks through 11/8. 

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

;;;-----------------------
;;; Priming all of Comlex
;;;-----------------------

(defvar *comlex-words-primed* nil
  "Flag that indicates that the priming has been done")

(defparameter *primed-words* (make-hash-table :size 56000 ;; 56k
                                              :rehash-size 5000
                                              :test #'equal)
  ;; After first full run came to 52,745
  "Holds priming data for all the words we know something about
   but don't want to load as part of the regular system.")

;;///// Deal with "go" (defined in /sl/checkpoint/vocabulary/ and
;; other instances of cases where there's a :3psing feature in the
;; Comlex verb data.   As part of that, figure out what happens if
;; we've already expanded the word (e.g. via /dossiers/irregular-verbs)
;; when we want to fold it into the realization of a category.
(defun prime-comlex ()
  ;; called from load-the-grammar, gated by *incorporate-generic-lexicon*
  (establish-version-of-def-word :comlex)
  (let ((filename (string-append 
                   cl-user::location-of-sparser-directory
                   "code/s/grammar/rules/words/one-offs/"
                   "comlex-def-forms.lisp")))
    (prime-all-comlex-words filename)
    (setq *comlex-words-primed* t)))

(defun prime-all-comlex-words (full-filename)
  (with-open-file (stream full-filename
                   :direction :input
                   :if-does-not-exist :error)
    (let ((*package* (find-package :sparser)))
      (declare (special *package*))
      (do ((entry (read stream nil :eof)
                  (read stream nil :eof)))
          ((eq entry :eof))
        (unless (eq (car entry) 'def-word)
          (error "Comlex entry based on something other than ~
                def-word:~%  ~a" entry))
        (eval entry)))))

(defun prime-word-from-comlex (string entries)
  ;; This is an expansion for the def-word macro
  (let ((known? (word-named string)))
    (unless known?
      (unless (null (cdr entries))
        (push-debug `(,string ,entries))
        (error "Expected just one item in an entry"))
      (let ((entry (car entries)))
        (unless (eq (car entry) :comlex)
          (error "Entry doesn't begin with :comlex~%  ~a" entry))
        (setq entry `(:comlex ,string ;; lemma form
                              ,@(cdr entry)))
        (let* ((variants (collect-strings-from-comlex-entry string entry))
               (all-words (pushnew string variants :test #'string-equal)))
          (dolist (string all-words)
            ;;(format t "~&priming \"~a\"~%" string)
            (setf (gethash string *primed-words*) entry))
          all-words)))))
;; This is the expansion of a macro, so any change to it requires an
;; update of its integration site
;;   (establish-version-of-def-word :comlex)

;;--- aux

(defun collect-strings-from-comlex-entry (lemma entry) ;; lemma is a string
  (let ( strings )
    (dolist (clause (cddr entry))
      (ecase (car clause) 
        (noun
         (let ((plurals (extract-plurals-from-comlex-entry lemma clause)))
           (when plurals
             (dolist (plural plurals)
               (pushnew plural strings :test #'string-equal)))))
        (verb
         ;; if a variant isn't given then we have to make it.
         (let* ((plist (cadr clause))
                (i  (cadr (memq :infinitive plist)))
                (ts (cadr (memq :tensed/singular plist)))
                (p  (cadr (memq :past-tense plist)))
                (pp (cadr (memq :present-participle plist))))
           (if i
             (pushnew i strings :test #'string-equal)
             (pushnew lemma strings :test #'string-equal))

           (if ts
             (pushnew ts strings :test #'string-equal)
             (pushnew (s-form-of-verb lemma) strings
                      :test #'string-equal))

           (if p
             (if (consp p) ;; multiple past tense forms
               (dolist (form p)
                 (pushnew form strings :test #'string-equal))
               (pushnew p strings :test #'string-equal))
             (pushnew (ed-form-of-verb lemma) strings
                      :test #'string-equal))
           (if pp 
             (if (consp pp)
               (dolist (form pp)
                 (pushnew form strings :test #'string-equal))
               (pushnew pp strings :test #'string-equal))
             (pushnew (ing-form-of-verb lemma) strings
                      :test #'string-equal))))

        (adjective)
        (adverb)
        ;; These below should mostly be lifted from comlex-function-words
        ;; and integrated carefully so they'll be 'known' when we upload
        ;; the def-word file
        (prep)
        (det) ;; determiner
        (pronoun) ;; "anybody"
        (cardinal)
        (ordinal)
        (scope) ;; "either"
        (quant) ;; "enough"
        (cconj) ;; "nor"
        (advpart) ;; "across"
        (word)  ;; "whatever"
        (title) ;; e.g. "Cpl."
        (sconj) ;; "according as"
        (aux))) ;; for "d" and "ll" -- ignore them? 
    strings))

(defmethod extract-plurals-from-comlex-entry ((lemma word) clause)
  (let ((plural-strings 
         (extract-plurals-from-comlex-entry (word-pname lemma) clause)))
    (when plural-strings 
      (mapcar #'define-word/expr plural-strings))))

(defmethod extract-plurals-from-comlex-entry ((lemma string) clause)
  (let ((plural-entry (cadr (assoc :plural (cdr clause)))))
    (cond
      ((eq plural-entry '*none*)
       nil)
      (plural-entry
       (typecase plural-entry
         (cons plural-entry)
         (string `(,plural-entry))
         (otherwise
          (push-debug `(,plural-entry ,clause))
          (error "Unexpected plural clause: ~a" plural-entry))))
      (t ;; Nothing unusual, so use the built-in machinery
       (let ((plural (plural-version lemma)))
         `(,plural))))))
           


;;;---------------------------------------------
;;; 'Activating' the primed words at parse-time
;;;---------------------------------------------

;; This is where we get when what-to-do-with-unknown-words
;; (in objects/chart/words/lookup/switch-new1) is set to
;; :check-for-primed (vs. e.g. :ignore). That function switch
;; sets the function establish-unknown-word to the function
;; look-for-primed-word-else-all-properties (in objects/chart/
;; words/lookup/new-words4).

(defun unpack-primed-word (symbol entry)
  ;; Called from this version of establish-unknown-word.
  ;; Has to return a suitably annotated word.
  (unless (and (listp entry) (eq (car entry) :comlex))
    (push-debug `(,symbol ,entry))
    (error "Ill-formed entry:~%  ~a" entry))
  ;; All of the morphological variants of the lemma get the
  ;; same entry. If we see any one of them we fire up the
  ;; entire set (simpler that way). The 'instance' is what
  ;; we've just seen, and the 'lemma' is the head word of
  ;; the entry.
  (let* ((instance-word (make-word-from-lookup-buffer))
         (instance-string (word-pname instance-word))
         (lemma-string (cadr entry))
         (lemma-word (if (string= (word-pname instance-word)
                                  lemma-string)
                       instance-word
                       (resolve-string-to-word/make lemma-string)))
         (clauses (cddr entry)))
    (tr :unpacking instance-word)
    (cond
      ((= (length clauses) 1)
       (unambiguous-comlex-primed-decoder lemma-word (car clauses)))
      ((string-equal lemma-string instance-string)
       (ambiguous-comlex-primed-decoder lemma-word clauses))
      (t ;; maybe there's a quicker disambiguation based on
       ;; this irregular form /// or maybe not
       ;;(or (look-for-and-decode-comlex-irregular instance-string clauses)
       (ambiguous-comlex-primed-decoder lemma-word clauses)))
    instance-word ))

;; N.b. Comlex has a 'gradable' feature on adjectives, with a flag for er-est

(defmethod unambiguous-comlex-primed-decoder ((lemma word) clause)
  "Identify any inflected forms and define words for them. Assign brackets
   to all the words. ////For the moement anyway, not creating any edges
   but just looking at the resulting segmentation of the text."
  (tr :unpacking-unambiguous (car clause))
  (let ((pos-marker (car clause))
        (properties (cdr clause)))
    (case pos-marker
      (noun 
       (plural-words-given-CL-clause lemma clause)
       ;; from make-cn-rules
       (assign-brackets-as-a-common-noun lemma))
      (adjective ;; open-codes define-adjective
       (assign-brackets-as-an-adjective lemma)
       (make-minimal-word-form-rule lemma 'adjective))
      (adverb ;
       ;; The morphology rule for adverbs also assigns .[adverb
       ;; but the adverb file is careful, so we'll be conservative
       ;; and see what happens -- most of these will be ordinary
       ;; "ly" adverbs
       ;; Note that this write a rule spanning with anonymous-adverb
       (define-adverb lemma)) ;; assigns ].adverb
      (verb
       (decode-and-instantiate-primed-verb lemma clause))
      (prep
       (define-preposition (word-pname lemma)))
      (otherwise
       (push-debug `(,lemma ,clause))
       (error "Unexpected POS marker: '~a'" pos-marker)))
    (put-property-on-word :comlex properties lemma)))

;; (defun look-for-and-decode-comlex-irregular (instance-string clauses)
;;   (dolist (clause clauses)
;;     (case (car clause) 
;;       (verb
;;        (unless (eq (caar clause) :subc) ;; subcategorization
;;          (let ((cases (cadr clause)))
;;            (when (member instance-string cases :test #'string-equal)
             
(defmethod assign-brackets-as-an-adjective ((lemma word))
  (assign-brackets-to-word lemma '( ].phrase .[np )))
           
(defmethod assign-noun-verb-brackets ((lemma word) clauses)
  ;; only a few of the forms are ambiguous
  (let* ((noun-clause (assoc 'noun clauses))
         (verb-clause (assoc 'verb clauses))
         (plurals (plural-words-given-CL-clause lemma noun-clause))
         (noun-forms (cons lemma plurals)))
    (decode-and-instantiate-primed-verb lemma verb-clause)
    ;; That runs for side-effects, and assigns main-verb brackets
    (let* ((verb-inflections (verb-forms-of lemma))
           (verb-forms (pushnew lemma verb-inflections)))
      ;; We only put the special np-vp brackets on the words
      ;; that are shared b/w noun and verb, e.g. "fire" and "fires"
      ;; but not "fired" or "firing", which keep their original
      ;; verb-only brackets
      (let ((ambigous
             (loop for verb in verb-forms
                when (memq verb noun-forms)
                collect verb)))
        (dolist (w ambigous)
          (assign-brackets-to-word
           ;; completely parallels the set for verbs.
           w '( .[np-vp  ].np-vp  np-vp]. np-vp.[  )))))))

(defmethod ambiguous-comlex-primed-decoder ((lemma word) clauses)
  (let ((combinations (sort (copy-list (mapcar #'car clauses))
                            #'alphabetize)))
    (tr ::unpacking-ambiguous combinations)
    (cond
      ((equal combinations '(adjective noun))
       ;; This is the same as unambiguous adjectives
       ;; except for the edge-creating form rule.
       (assign-brackets-as-an-adjective lemma))

      ((equal combinations '(adjective adverb))
       (assign-brackets-to-word lemma (list ].adj-adv .[np-vp )))

      ((equal combinations '(adjective verb))
       (assign-brackets-to-word lemma (list ].adj-verb .[adj-verb)))

      ((equal combinations '(noun verb))
       (assign-noun-verb-brackets lemma clauses))

      ((equal combinations '(adjective noun verb))
       ;;/// what else do we need? Will the NP cases soak up
       ;; the adjective as well?
       (assign-noun-verb-brackets lemma clauses))

      ((equal combinations '(adjective noun sconj prep verb)) ;; "like"
       ;; strand it and let something else do the compositions
       (assign-brackets-to-word lemma '( ].phrase phrase.[ )))

      ;; "firm" is four-ways ambiguous

      (t (push-debug `(,lemma ,combinations ,clauses))
         (error "Comlex -- new POS combination for \"~a\:: ~a"
                lemma combinations)))))


;;--- aux

(defmethod plural-words-given-CL-clause ((lemma word) clause)
  "If the Comlex clause stipulates one or more plurals then use them,
   otherwise construct the default plural. Give them brackets as
   a common noun."
  (let ((plural/s ;; includes the default if necessary
         (extract-plurals-from-comlex-entry lemma clause)))
    (when plural/s
      (let ( clause-plural/s )
        (dolist (p-word plural/s)
          (push p-word clause-plural/s)
          (assign-brackets-as-a-common-noun p-word)
          (record-lemma p-word lemma :noun))
        (record-inflections clause-plural/s lemma :noun)
        clause-plural/s))))

(defmethod decode-and-instantiate-primed-verb ((lemma word) clause)
  (let ((special-case-plist (lift-special-case-form-from-comlex-clause clause))
        (category (new-category-specializing-event lemma)))
    (apply #'define-main-verb nil ;; symbol-for-category
           :category category :referent category
           :infinitive (word-pname lemma) special-case-plist)))

(defun lift-special-case-form-from-comlex-clause (clause)
  (unless (eq 'verb (car clause))
    (error "Expected a verb clause and didn't get one"))
  (let ((2d-expr (cadr clause)))
    (case (car 2d-expr)
      ((or :infinitive :tensed/singular :past-tense :present-participle)
       2d-expr)
      (:subc nil)
      (:features nil)
      (otherwise
       (push-debug `(,2d-expr ,clause))
       (error "New case in what's 2d in a verb clause")))))

;;;--------
;;; traces        
;;;--------

(defvar *trace-lexicon-unpacking* nil)

(defun trace-lexicon-unpacking ()
  (setq *trace-lexicon-unpacking* t))

(defun untrace-lexicon-unpacking ()
  (setq *trace-lexicon-unpacking* nil))

(deftrace :unpacking (instance-word)
  ;; Called from unpack-primed-word
  (when *trace-lexicon-unpacking*
    (trace-msg "Unpacking ~a" instance-word)))

(deftrace :unpacking-unambiguous (tag)
  ;; called from unambiguous-comlex-primed-decoder
  (when *trace-lexicon-unpacking*
    (trace-msg "  it is an unambiguous ~a" tag)))

(deftrace :unpacking-ambiguous (combination)
  ;; called from unambiguous-comlex-primed-decoder
  (when *trace-lexicon-unpacking*
    (trace-msg "  it is ambiguous between ~a" combination)))





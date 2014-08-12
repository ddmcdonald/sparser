;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2014 David D. McDonald
;;;
;;;     File: "comlex-unpacking"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  0.2 August 2014

;; Extracted from one-offs/comlex 12/3/12.
;; 0.1 (8/12/13) Wrapped the eval of the def-word expression in an
;;      ignore-errors because the mlisp load in my ACL 8.2 was choking
;;      on unicode characters in French words.
;; 0.2 (8/7/14) Rewrote prime-word-from-comlex to do away with the
;;      original notion that we did not prime a word if (word-named string)
;;      wasn't nil. That's already stronger than the check in unknown-word? 
;;      which looks for a rule set. Now we want the subcategorization
;;      information for all the words, 'known' or not, so we need to prime
;;      them all even though we will often not be using that scheme in
;;      the word lookup and object creation. 

(in-package :sparser)

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

(defun prime-all-comlex-words (full-filename) ;;(break "top of prime-all")
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
        (ignore-errors 
         (eval entry))))))



;; This is the expansion of a macro, so any change to it requires an
;; update of its integration site
;;   (establish-version-of-def-word :comlex)
;;
(defun prime-word-from-comlex (string entries)
  ;; This is an expansion for the def-word macro. There's a complication
  ;; that the same spelling form can be part of muliple Comlex entries,
  ;; usually with quite different parts of speech. We have to merge them
  ;; as we see them. 

  ;; Data checks
  (unless (null (cdr entries))
    (push-debug `(,string ,entries))
    (error "Expected just one item in an entry"))
  (let ((entry (car entries)))
    (unless (eq (car entry) :comlex)
      (error "Entry doesn't begin with :comlex~%  ~a" entry))

    (let* ((clauses (cdr entry))
           (variants (collect-strings-from-comlex-entry string clauses))
           (all-words (pushnew string variants :test #'string-equal)))

      ;;(break "check for verb variants")
      (let* ((prior-entry ;;/// only ever one? Need to test for this !
              (gethash string *primed-words*))
             (entry-to-store
              (if prior-entry
                (merge-comlex-entries prior-entry clauses)
                `(:comlex ,string ;; lemma form
                          ,@(cdr entry)))))
        (dolist (string all-words)
          ;;(format t "~&priming \"~a\"~%" string)
          (setf (gethash string *primed-words*) entry-to-store))
        all-words))))

(defun merge-comlex-entries (prior-entry current-clauses)
  (let* ((pname (cadr prior-entry))
         (earlier-clauses (cddr prior-entry))
         (final-clauses earlier-clauses))
    (dolist (clause current-clauses)
      (let* ((label (car clause))
             (matching-clause (assq label earlier-clauses)))
        (unless matching-clause
          (push clause final-clauses))
        ;;/// really ought to check and merge the matching ones
        ;; but I'm putting that off 12/3/12 ddm.
        ))
    `(:comlex ,pname ,@final-clauses)))
      

;;--- aux

(defun collect-strings-from-comlex-entry (lemma clauses) ;; lemma is a string
  (let ( strings )
    (dolist (clause clauses)
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
           (if i ;; infinitive
             (pushnew i strings :test #'string-equal)
             (pushnew lemma strings :test #'string-equal))

           (if ts ;; singular, tensed
             (pushnew ts strings :test #'string-equal)
             (pushnew (s-form-of-verb lemma) strings
                      :test #'string-equal))

           (if p ;; past
             (if (consp p) ;; multiple past tense forms
               (dolist (form p)
                 (pushnew form strings :test #'string-equal))
               (pushnew p strings :test #'string-equal))
             (pushnew (ed-form-of-verb lemma) strings
                      :test #'string-equal))
           (if pp ;; present participle
             (if (consp pp)
               (dolist (form pp)
                 (pushnew form strings :test #'string-equal))
               (pushnew pp strings :test #'string-equal))
             (pushnew (ing-form-of-verb lemma) strings
                      :test #'string-equal))))

        (adjective) ;; just the lemma, so the caller handled it
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
          (error "Unexpected plural clause: ~a" plural-entry))))
      (t ;; Nothing unusual, so use the built-in machinery
       (let ((plural (plural-version lemma)))
         `(,plural))))))



;;;-------------------------------
;;; subcategorization information
;;;-------------------------------
#|
(:comlex "common" 
  (noun (:features ((countable :pval ("in")))))
  (adjective 
    (:subc ((adj-pp :pval ("for" "to"))
            (extrap-adj-for-to-inf))
     :features ((gradable))))) |#

(defun add-specific-subcategorization-facts (category word pos)
  ;; Called from define-function-term, where 'pos' is :adjective
  ;; and we're looking for bound prepositions for, e.g. "common"
  (when *comlex-words-primed*
    (let ((entry (gethash (word-pname word) *primed-words*)))
      (when entry
        (let* ((pos-alist (cddr entry))
               (pos-entry (assq pos pos-alist)))
          (when pos-entry
            ;; this part of speech specific entry can have many
            ;; subentries, as described in the Comlex manual.
            ;; Here we're just looking a subcategorization
            (let ((subcat (cadr (assq :subc (cdr pos-entry)))))
              (when subcat
                (apply-subcat-info category word subcat)))))))))

(defun apply-subcat-info (category word subcat)
  (push-debug `(,category ,word ,subcat)) (break "apply"))


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





;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2010-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File: "comlex-unpacking"
;;;   Module: "grammar;rules:brackets:"
;;;  Version:  October 2016

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
;;     (9/11/14) moved out the subcategorization stub. 
;; 8.3 (10/20/14) removed the ignore-errors that was wrapped around
;;      the eval's of the def-word forms. 

(in-package :sparser)

;;;-----------------------
;;; Priming all of Comlex
;;;-----------------------

(defvar *comlex-words-primed* nil
  "Flag that indicates that the priming has been done")

(defparameter *primed-words* (make-hash-table :size 70000 ;; 56k
                                              :rehash-size 5000
                                              :test #'equal)
  ;; After first full run came to 65,713
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
  (prime-all-comlex-words "sparser:one-offs;comlex-def-forms.lisp")
  (setq *comlex-words-primed* t))

(defun prime-all-comlex-words (full-filename) ;;(break "top of prime-all")
  (with-open-file (stream full-filename
                   :direction :input
                   :if-does-not-exist :error)
    (let ((*package* (find-package :sparser)))
      (do ((entry (read stream nil :eof)
                  (read stream nil :eof)))
          ((eq entry :eof))
        (unless (eq (car entry) 'def-word)
          (error "Comlex entry based on something other than ~
                def-word:~%  ~a" entry))
        ;;(ignore-errors 
        ;; We need to detect any problems within the Comlex
        ;; forms. Problems with accent characters have blocked
        ;; large swaths of the entries from loading.
        (eval entry)))))



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
           (variants-and-parts-of-speech
            (unless (string-equal string "be")
              (collect-strings-from-comlex-entry string clauses)))
           (variants
            (if (stringp (car variants-and-parts-of-speech))
                variants-and-parts-of-speech
                (loop for alt in variants-and-parts-of-speech
                      when (consp alt)
                        append alt)))
           (all-words (pushnew string variants :test #'string-equal)))
      (when (and (consp variants-and-parts-of-speech)
                 (member (car variants-and-parts-of-speech)
                         '(:comparative :superlative)))
        (setq entries
              (merge-variants-and-parts-of-speech-into-entry
               string
               clauses
               variants-and-parts-of-speech))
        )
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
          #+ignore
          (when (is-in-p 'gradable entries)
            (format t "comlex for adjectiv ~s~%"
                    entry-to-store))
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


(defun merge-variants-and-parts-of-speech-into-entry (lemma entries pos-variants)
  (let ((adjective (assoc 'adjective entries)))
    (when adjective
      (setf (second adjective)
            (append pos-variants (second adjective)))
      #+ignore
      (format t "~%merge-variants-and-parts-of-speech-into-entry ~% entry: ~s entries ~s~% pos-variants ~s~%====> ~s%"
              lemma entries pos-variants
              entries))
    entries))
    

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

        (adjective
         (let* ((plist (cadr clause))
                (features (cadr (memq :features plist)))
                (comparative (cadr (memq :comparative plist)))
                (superlative (cadr (memq :superlative plist)))
                (gradable (assoc 'gradable features))
                (er-est (or (memq :er-est gradable)
                            (memq :both gradable)))
                (more-most (not (memq :er-est gradable)))
                (adj-entry
                 (when gradable
                   (append
                    (unless
                        comparative
                      `(:comparative
                        ,
                        (append (when er-est (make-er-comparatives lemma))
                                (when more-most (make-more-comparatives lemma)))))
                    (unless superlative
                      `(:superlative
                        ,(append
                          (when er-est (make-est-superlatives lemma))
                          (when more-most (make-most-superlatives lemma)))))))))
           (when adj-entry
             (setq strings adj-entry)
             ))) ;; just the lemma, so the caller handled it
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
    ;;(format t "~%collect-strings-from-comlex-entry ~s ~s" lemma strings )
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

(defun make-er-comparatives (lemma)
  (setq lemma (maybe-replace-final-y-by-i lemma))
  (when (equal "e" (subseq lemma (1- (length lemma))))
    (setq lemma (subseq lemma 0 (1- (length lemma)))))
  (list (format nil "~aer" lemma)))

(defun make-more-comparatives (lemma)
  (list (format nil "more ~a" lemma)))

(defun make-est-superlatives (lemma)
  (setq lemma (maybe-replace-final-y-by-i lemma))
  (when (equal "e" (subseq lemma (1- (length lemma))))
    (setq lemma (subseq lemma 0 (1- (length lemma)))))
  (list (format nil "~aest" lemma)))

(defun make-most-superlatives (lemma)
  (list (format nil "most ~a" lemma (maybe-replace-final-y-by-i lemma))))

(defun maybe-replace-final-y-by-i (lemma)
  (if (equal "y" (subseq lemma (1- (length lemma))))
      (format nil "~ai" (subseq lemma 0 (1- (length lemma))))
      lemma))

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





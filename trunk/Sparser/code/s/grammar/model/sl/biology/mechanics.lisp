;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "mechanics"
;;;  Module: "grammar/model/sl/biology/
;;; version: March 2014

;; Initiated 3/2/14.

(in-package :sparser)

(define-category has-UID
  :binds ((uid)))

(define-category bio-entity ;; an endurant, though actually a prototype
  :mixins (has-UID has-name)
  :binds ((long-form :primitive polyword))
  :index (:permanent :key name))

(define-category molecule  ;; CHEBI:36357
  ;; makes for sense for ATP than H20, but not worrying about whether
  ;; we're doing organic or inorganic chemistry.
  :specializes bio-entity
  :instantiates :self
  :index (:permanent :key name)
  :realization (:common-noun "molecule"))

(define-category amino-acid
  :specializes molecule
  :instantiates :self
  :index (:permanent :key name)
  :realization (:common-noun "amino acid")) ;; need hypenated version

(define-category protein
  :specializes molecule
  :instantiates :self
  :rule-label bio-entity
  :index (:permanent :key name)
  :realization (:common-noun "protein"))
  

(define-category kinase  ;; GO:0016301
  :specializes protein
  :instantiates :self
  :rule-label bio-entity
  :index (:permanent :key name)
  :realization (:common-noun "kinase"))


(defun def-bio (short long kind &key greek identifier)
  ;; short = "NIK", long = "NF-κB-inducing kinase"
  ;; kind = kinase, greek = "alpha"
  ;; Makes individuals (particulars), that are instances of 
  ;; a specific kind. Staying vague about what they might denote.
  (unless (and kind (symbolp kind))
    (error "A symbol giving kind (category) of ~a is required." short))
  (let* ((name (resolve/make short))
         (category (category-named kind :break-if-undefined))
         (label (or (override-label category) category))
         (form (category-named 'common-noun)) ;;/// presumably
         (i (find-or-make-individual category :name name))
         rules  )
    ;; The find-or-make call will set up a rule for the short form
    ;; as a common noun that has this individual as its referent.
    ;;///// Except that it isn't because it doesn't know what
    ;; variable goes into the word-position in, e.g.
    ;; (:schema ((:common-noun . #<word "protein">) nil nil nil)
    ;; So we'll do it by hand
    ;;//////////////// brackets???
    ;;???? identical to head-noun  ????
    (let ((hack-rule
           (define-cfr label `(,name)
             :form category::common-noun
             :referent i)))
      (push hack-rule rules))

    (when identifier
      (bind-variable 'uid identifier i))

    ;; Now we do that by-hand for the long-form. If the long form needs
    ;; to have a variant with a greek letter in it we'll make two rules.
    (when long
      (let* ((pw (resolve/make long)) ;; pw = polyword = multiword
             (cfr (define-cfr label `(,pw)
                    :form form
                    :referent i)))
        (push cfr rules)))

    (when greek
      (let ((additional-rules
             (rules-with-greek-chars-substituted
              short long greek label form i)))
        (setq rules (nconc additional-rules rules))))

    (push-onto-plist i rules :rules)
    i))

(defun rules-with-greek-chars-substituted (short long greek-words label form i)
  (unless *greek-character-map*
    (populate-greek-character-map))
  (push-debug `(,long ,greek-words ,i ,short ,form))
  (etypecase greek-words
    (string (setq greek-words (list greek-words)))
    (cons ))
  (let* ((word-char-pairs
          (loop for greek-word in greek-words ;; "alpha"
            as greek-char = (greek-character-for greek-word)
            collect (cons greek-word greek-char)))
         (word-list ;; hook for long list of aliases
          (cond ((and long short) (list long short))
                (long (list long))
                (short (list short))
                (t (error "both long and short are nil ?????"))))
         rhs-strings  rules  )

    (dolist (pname word-list)
      (dolist (pair word-char-pairs)
        (let* ((full (car pair)) ;; "alpha"
               (char (cdr pair)) ;; "a" -- the greek character
               (length (length full)) ;; 5
               (index (search full pname)))
          (when index
            (let* ((prefix (subseq pname 0 index))
                   (suffix (subseq pname (+ index length)))
                   (revised (concatenate 'string prefix char suffix)))
              ;;(break "revised = \"~a\"" revised)
              (push revised rhs-strings))))))
    
    (dolist (rhs rhs-strings)
      (let* ((word (resolve/make rhs))
             (rule (define-cfr label `(,word)
                     :form form
                     :referent i)))
        (push rule rules)))

    rules))





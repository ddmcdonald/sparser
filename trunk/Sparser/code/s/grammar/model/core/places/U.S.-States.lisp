;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996,2011  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "U.S. States"
;;;   Module:  "model;core:places:"
;;;  version:  0.2 July 2011

;; initiated 3/10/94 v2.3
;; 0.1 (4/23) added provision for name-words. 10/6 added string-for fn
;;     (5/3/95) added sort function.  1/16/96 fixed string printer for pws.
;; 0.2 (7/13/11) Writes rules for abbreviations as well. 

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  US-state
  :instantiates  self
  :specializes   location
  :binds ((name :primitive word)
          (adjective-form :primitive word)
          (abbreviations  :primitive list)
          (aliases :primitive list))
  :index (:permanent :key name)
  :realization (:proper-noun name))


(defun string/US-state (s)
  (let ((w/pw (value-of 'name s)))
    (typecase w/pw
      (word (word-pname w/pw))
      (polyword (pw-pname w/pw))
      (otherwise
       (format t "~&String/US-State -- new case: ~A" (itype-of s))
       ""))))


#+ccl(define-sort-function 'us-state 'sort-us-states)

(defun sort-us-states (s1 s2)
  (let ((n1 (value-of 'name s1))
        (n2 (value-of 'name s2)))
    (sort-words/polywords n1 n2)))


;;;----------
;;; def form
;;;----------

;; we only need this because we're using a different syntactic category
;; for the adjectival form than the noun, and because we're including
;; a provision for aliases

(defun define-us-state (name-string &key adjective
                                         abbreviations
                                         aliases)
  (let ((US-state (category-named 'US-state))
        (obj (or (find-individual 'US-state :name name-string)
                 (define-individual 'US-state :name name-string)))
        (state-word (define-word name-string))
        adj-word  abbrev-word  abbrev-words  alias-word  alias-words  rules )

    ;;(make-name-word-for/silent state-word)
    ;;;;  make it use the state 4/19/95
    ;; this is so we can use the name of the state, qua name, when
    ;; making names for things that reference it, e.g. "University of Iowa"

    (when adjective
      (setq adj-word (resolve-string-to-word/make adjective))
      (bind-variable 'adjective-form adj-word obj)
      (push (define-cfr US-state `(,adj-word)
              :form category::proper-adjective
              :referent obj)
            rules))

    (when abbreviations
      (dolist (string abbreviations)
        (setq abbrev-word (resolve-string-to-word/make string))
        (push abbrev-word abbrev-words)
        (push (define-cfr US-state `(,abbrev-word)
                :form (if (polyword-p abbrev-word)
                        category::n-bar
                        category::np-head)
                :referent obj)
              rules))
      (bind-variable 'abbreviations (nreverse abbrev-words) obj
                     US-state))   
     
    (when aliases
      (dolist (string aliases)
        (setq alias-word (resolve-string-to-word/make string))
        (push alias-word alias-words)
        (push (define-cfr US-state `(,alias-word)
                :form (if (polyword-p alias-word)
                        category::n-bar
                        category::np-head)
                :referent obj)
              rules))
      (bind-variable 'aliases alias-words obj))


    ;;/// put the rules somewhere that they can be deleted
    obj ))



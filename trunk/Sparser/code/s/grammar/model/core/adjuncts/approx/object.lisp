;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:adjuncts:approx:"
;;;  version:  0.2 September 1995

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/7/92 v2.3) redone in the new semantics. 9/21/93 moved to [adjuncts]
;;     (5/27) added rdata
;; 0.2 (11/17) distinguishing between adverbs and determiners
;;     (9/12) tweeked the autodef

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category approximator
  :instantiates  modifier
  :binds ((name :primitive word))
  :index (:key name :permanent)
  :realization (:word name))


(define-autodef-data 'approximator
  :module *approximators*
  :display-string "approximators"
  :not-instantiable t
  :description "a word that says that something is not exact"
  :examples "\"about\" \"fairly\" \"only\"" )


;;;----------------
;;; defining forms
;;;----------------

#| To get the brackets right we have to distinguish determiners
   from adverbs. |#

(define-category approximator/determiner)
(define-category approximator/adverbial)


(defun define-approximator/determiner (string)

  ;; we wouldn't need this if the point was just to make the rule
  ;; for the word since that will happen as a side-effect of
  ;; creating the individual.  However we also want a [np bracket
  ;; on the word, and don't at the moment have a scheme for doing
  ;; that as part of the TAG

  (let* ((obj (define-individual 'approximator
                :name string))
         (word (resolve-string-to-word string)))

    (assign-bracket/expr word ].phrase )
    (assign-bracket/expr word .[np )

    (let ((cfr (car (get-tag-for :rules obj))))
      (unless (cfr-p cfr)
        (break "expected the rule for this approximator to be ~
                on the plist:~%~A~%" obj))
      (setf (cfr-form cfr) category::det)
      
      obj )))

(define-autodef-data  'approximator/determiner
  :display-string "determiners"
  :form 'define-approximator/determiner
  :dossier "dossiers;approximations"
  :module *approximators*
  :description "an approximator that can begin a noun phrase"
  :examples "\"about\" \"around\"" )




(defun define-approximator/adverbial (string)
  (let* ((obj (define-individual 'approximator
                :name string))
         (word (resolve-string-to-word string)))

    (assign-bracket/expr word ].adverb )
    (assign-bracket/expr word .[adverb )
    (assign-bracket/expr word adverb.[ )

    (let ((cfr (car (get-tag-for :rules obj))))
      (unless (cfr-p cfr)
        (break "expected the rule for this approximator to be ~
                on the plist:~%~A~%" obj))
      (setf (cfr-form cfr) category::adverb)
      
      obj )))


(define-autodef-data  'approximator/adverbial
  :display-string "adverbs"
  :form 'define-approximator/adverbial
  :dossier "dossiers;approximations"
  :module *approximators*
  :description "an approximator that can modify a verb or other types of phrases"
  :examples "\"fairly\" \"only\"" )


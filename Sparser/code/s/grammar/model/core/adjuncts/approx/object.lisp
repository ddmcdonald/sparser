;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1995,2011 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:adjuncts:approx:"
;;;  version:  0.3 September 2011

;; initiated 4/9/91 v1.8.2
;; 0.1 (12/7/92 v2.3) redone in the new semantics. 9/21/93 moved to [adjuncts]
;;     (5/27) added rdata
;; 0.2 (11/17) distinguishing between adverbs and determiners
;;     (9/12) tweeked the autodef
;; 0.3 (9/23/11) Reworked adverbial to use define-adverb. Reworked
;;      the category a little. Reworked determiner case as quantifiers

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category approximator
  :specializes modifier
  :instantiates  :self
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


(defun define-approximator/determiner (string &key rules)
  (unless rules
    (setq rules '(det)))
  (define-quantifier string
    :brackets '( ].phrase .[np )
      :rules rules))
#|  original
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
      obj ))  |#

(define-autodef-data  'approximator/determiner
  :display-string "determiners"
  :form 'define-approximator/determiner
  :dossier "dossiers;approximations"
  :module *approximators*
  :description "an approximator that can begin a noun phrase"
  :examples "\"about\" \"around\"" )




(defun define-approximator/adverbial (string)
  (define-adverb string
    :brackets '( ].adverb .[adverb adverb.[ )
    :super-category 'approximator))

#|  original
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
      
      obj ))  |#


(define-autodef-data  'approximator/adverbial
  :display-string "adverbs"
  :form 'define-approximator/adverbial
  :dossier "dossiers;approximations"
  :module *approximators*
  :description "an approximator that can modify a verb or other types of phrases"
  :examples "\"fairly\" \"only\"" )


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1997,2013-2021 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "others"
;;;    Module:  "grammar;model:core:adjuncts:"
;;;   version:  February 2021

;; initiated 1/18/13. Goes with the modifiers file in dossiers in that it
;; provides def-forms for all the other sorts of standard modifiers that
;; weren't handled on independently back in the day.

(in-package :sparser)

;;;--------------------------------------------
;;; intensifying something "very" "absolutely"
;;;--------------------------------------------

(define-category intensifier
  :specializes adverbial)

(defun define-intensifier (string &rest args
                           &key (super-category 'intensifier))
  (apply #'define-adverb string :super-category super-category args))


(def-k-method compose ((adv category::intensifier)
                       (adj category::qualifiable))
  ;; Called from interpret-adverb+adjective, where the adjective
  ;; is the head. Canonical example is "quite certain"
  (setq adj (bind-variable 'qualifier adv adj))
  adj)


;;;------------
;;; enablement
;;;------------
;; These are subordinating conjunctions. The state that the term
;; to their left makes possible the term to their right. Both terms



;;;-----------------------
;;; Position in a process
;;;-----------------------

;; Like the sequencers ("next", "subsequent") but always modifies
;; a verb. Imposes a reading on the verb's event that it denotes 
;; a process.

(defun define-position-in-process (string &key
                                            ((:adj string-for-adjective))
                                            form
                                            super-category documentation)
  "If there is both a adverb and an adjective, drop out of the function-term
   machinery and do it by hand. ///If we do a lot of this sort of thing
   we should adapt the mechinery to accomodate it."
  (if (null string-for-adjective)
    (define-adverb string 
        :form (or form 'adverb)
        :super-category (or super-category 'sequencer)
        :documentation documentation)

    (let* ((category-name (merged-adj-adv-cat-name string-for-adjective))
           (superc (or super-category 'modifier))
           (form `(define-category ,category-name
                     :specializes ,superc
                     :instantiates :self
                     :realization (:adj ,string-for-adjective
                                   :adv ,string)))
           (category (eval form)))
      ;; That creates rules for both forms, with the constructed
      ;; category as their referents. It doesn't create tailored individuals
      ;; to use as the rule referents.
      ;;    (break "look around: ~a" category)
      category)))

(defun merged-adj-adv-cat-name (adj-string)
  (intern (string-append (string-upcase adj-string) ':-ness)
          (find-package :sparser)))

      

;;;---------------
;;; reflection on 
;;;---------------
;; <A happened> despite <proposition P>
;;  Binds to a clause to its right creating an adjunct to the clause
;;  to its left in the same style as a purpose clause. 
;;  Functionally is a subordinating conjunction
;;  Takes nominalized clauses/participials


;; These actually take nomimals, not only nominalized clauses
;;  they are normalyy defined (and rightly so) as prepostions
;; they are like 

(defun define-reflection-on (string)
  (define-function-term string 'preposition ;;subordinate-conjunction
    ;; If we had a "starts clause" bracket that might help
    :brackets '( ].adverb .[np )
    ;; This isn't the right ETF, but it sort of patterns right
    :tree-families '(sentence-adverb)))


;;;-----------
;;; subjuncts
;;;-----------
; These are interesting semantically in the discourse relationships
; they create/evoke, but it's subtle so when we understand it we can
; handle it in the modified method. The different functions mostly
; follow Quirk. 
;//// Cries out for a few categories (specializing modifies) to
; carry at least a weak meaning. 

;; Letting it all flow thru adverb is laziness since there are
;; patterns that don't always apply
(defun define-focusing-adverb (string)
  (define-adverb string))
  

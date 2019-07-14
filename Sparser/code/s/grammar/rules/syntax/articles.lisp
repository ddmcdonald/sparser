;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005,2012-2019  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "articles"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  March 2019

;; initiated 10/25/92 w/ mixin.  Given some content 5/17/95.  Added np cases
;; 4/1/05. Added common-noun 4/12/09. 10/14/12 Removed the 'that' rules 
;; because they preempt relative clause interpretation. 1/30/13 Added 
;; the+proper-name. 8/7/14 Added the other definite determiners, don't
;; remember what the problem might hae been. Added defNP dereference to
;; "these". 3/2/15 Converted 'this' cases to defNP.
;; 0.1 6/28/15 Pulled all the literal "the" form rules in favor of
;;  their equivalents that were make with define-determner.
;;  Need to do the same with the indefinites and the others.
;; February 2006: Commented out form rules in favor of a uniform
;;  syntactic rule. Made variants of the predicates for other type.

(in-package :sparser)

;;;----------
;;; category
;;;----------

;; The categories indefinite, definite, and possessive are defined
;; as mixin's in /rules/tree-families/NP.lisp because that file
;; loads before this one.


;;----- Possible semantic relations

(defun mark-instance-indefinite (arg)
  ;; See hack in record-any-determiner
  (push-debug `(,arg)) (break "indefinite stub"))

;; too fine grained?
(define-lambda-variable 'definite nil category::definite)
(define-lambda-variable 'indefinite nil category::indefinite)


;;---- Predicates

;; See pattern in rules/syntax/category-predicates.lisp
;; and consumer in record-any-determiner

(defvar *indefinite-determiners* nil
  "Holds list of all the indefinite article words")
(defvar *definite-determiners* nil
  "Holds list of all the definite article words")
(defvar *wh-determiners* nil
  "Holds list of all the wh-pronouns that can act as determiners")

(defun populate-in/definite-articles ()
  (setq *indefinite-determiners*
        (mapcar #'word-named '("a" "A" "an")))
  (setq *definite-determiners*
        ;;/// Can we tell when "that" is being used as
        ;; a determiner vs. as a relative conjunction ?
        (mapcar #'word-named '("the" "this" "that" "these" "those"))))

(defun populate-wh-determiners ()
  (setq *wh-determiners*
        (mapcar #'word-named '("what" "which" "whichever"
                               "whose"))))


(defgeneric np-specifier? (item)
  (:documentation "Is the item the sort of thing that can act as
    the specifier of an np. Referent point is Jackendoff's 1977 book onn
    X-bar Syntax.")
  (:method ((triple list))
    (assert (= 3 (length triple)) (triple)
            "The list that was passed to np-specifier? was not a triple")
    (np-specifier? (triple-rule triple)))
  (:method ((rule cfr))
    (np-specifier? (cfr-form rule)))
  (:method ((c category))
    (or (determiner? c)
        (memq (cat-name c) ;; what else?
              '(number quantifier)))))


(defgeneric determiner? (label)
  (:documentation "Is the label a determiner?
    Notes that label is the super type of both words
    and categories.")
  (:method ((w word))
    (declare (special category::det))
    (eq (get-tag :function-word w) category::det))
  (:method ((e edge))
    (cond ((edge-form e) (determiner? (edge-form e)))
          ((polyword-p (edge-category e)) nil)
          (t ;;(format t "~&Determiner? new cases of an edge: ~a~%" e)
             nil ))) ;; e.g. an edge over a hyphen
  (:method ((c category))
    (or (definite-determiner? c)
        (indefinite-determiner? c)
        (wh-determiner? c))))

(defgeneric indefinite-determiner? (item)
  (:documentation "Does this item on the list of indefinite determiners?")
  (:method ((word word))
    (unless *indefinite-determiners* (populate-in/definite-articles))
    (memq word *indefinite-determiners*))
  (:method ((pw polyword)) nil)
  (:method ((i individual))
    (indefinite-determiner? (cat-name (itype-of i))))
  (:method ((c category))
    (indefinite-determiner? (cat-name c)))
  (:method ((name symbol))
    (memq name '(a an most some any)))
  (:method ((e edge))
    ;; it's a polyword like "at least", which is an approximator.
    ;; These are determiners, not one of the standard set
    nil))

(defgeneric definite-determiner? (item)
  (:documentation "Does this item on the list of definite determiners?")
  (:method ((word word))
    (unless *indefinite-determiners* (populate-in/definite-articles))
    (memq word *definite-determiners*))
  (:method ((pw polyword)) nil)
  (:method ((i individual))
    (definite-determiner? (cat-name (itype-of i))))
  (:method ((c category))
    (definite-determiner? (cat-name c)))
  (:method ((name symbol))
    (memq name '(the this that these those)))
  (:method ((e edge))
    ;; it's a polyword like "at least", which is an approximator.
    nil))

(defgeneric wh-determiner? (item)
  (:documentation "Is this one of the listed wh words that can
     function like an article.")
  (:method ((word word))
    (unless *wh-determiners* (populate-wh-determiners))
    (memq word *wh-determiners*))
  (:method ((pw polyword)) nil)
  (:method ((e edge))
    ;; observed det-edge = #<36 an 38> and det-word = edge over hyphen
    ;; in "- an observation" chunk of dec-test #49
    (wh-determiner? (edge-category e)))
  (:method ((i individual))
    (wh-determiner? (cat-name (itype-of i))))
  (:method ((c category))
    (wh-determiner? (cat-name c)))
  (:method ((name symbol))
    (memq name '(what which whichever whose))))

                              
(defmethod definite-np? ((e edge))
  (or ;;(definite-np? (edge-mention e))
   ;; not being reset? ERROR -- FIX THIS
   (and (individual-p (edge-referent e))
        (value-of 'has-determiner (edge-referent e))
        (definite-determiner? (value-of 'has-determiner (edge-referent e))))))

(defmethod definite-np? ((m discourse-mention))
   (definite-np? (mention-source m)))


(defmethod indefinite-np? ((e edge))
  (or (and (individual-p (edge-referent e))
           (value-of 'has-determiner (edge-referent e))
           (indefinite-determiner? (value-of 'has-determiner (edge-referent e))))))

(defmethod indefinite-np? ((m discourse-mention))
   (indefinite-np? (mention-source m)))


                     

;;;------------
;;; form rules
;;;------------

(when (or (current-script :default)
          (current-script :grok))
  ;; These configurations do not use syntactic rules except under
  ;; very controlled circumstances so these explicit rules
  ;; are required.
  (progn
;;--- a/an

(def-form-rule (A common-noun)
    :form np
    :referent (:daughter right-edge
			 :bind (has-determiner left-edge) ;; fn not going into referent
			 ;;    :function (mark-instance-indefinite right-edge))
			 ))

(def-form-rule (AN common-noun)
    :form np
    :referent (:daughter right-edge
	       :bind (has-determiner left-edge)))

(def-form-rule (A np-head)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (AN np-head)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (A n-bar)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (AN n-bar)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (A np)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (AN np)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))


;;--- the (as a referential category, not a literal)

(def-form-rule (the common-noun)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (the common-noun/plural)
  :form np
  :referent (:daughter right-edge
	      :bind (has-determiner left-edge)))

(def-form-rule (the np-head)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (the n-bar)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (the np)
  :form np
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))

(def-form-rule (the proper-noun)
  :form proper-name
  :referent (:daughter right-edge
	     :bind (has-determiner left-edge)))


;;--- this

(def-form-rule ("this" common-noun)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))

(def-form-rule ("this" np-head)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))

(def-form-rule ("this" n-bar)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))

(def-form-rule ("this" np)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))

;;--- "these"

(def-form-rule ("these" common-noun/plural)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))

(def-form-rule ("these" np-head)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))

(def-form-rule ("these" n-bar)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))

(def-form-rule ("these" np)
  :form np
  :referent (:head right-edge
             :function dereference-DefNP right-edge))



;;--- that

 (def-form-rule ("that" common-noun)
   :form np
   :referent (:daughter right-edge
              :bind (has-determiner left-edge)))

 (def-form-rule ("that" np-head)
     :form np
     :referent (:daughter right-edge
		:bind (has-determiner left-edge)))

 (def-form-rule ("that" n-bar)
     :form np
     :referent (:daughter right-edge
	        :bind (has-determiner left-edge)))

 (def-form-rule ("that" np)
     :form np
     :referent (:daughter right-edge
	        :bind (has-determiner left-edge)))

    )) ;; when, progn

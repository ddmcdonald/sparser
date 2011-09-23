;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995, 2010  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "new individuals"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  1.4 February 2007

;; initiated 3/28/94 v2.3
;; 1.0 (8/4) Redesigning the category structure for terms
;;     (8/8) added Term-named.  9/28 modified it to take words too
;; 1.1 (10/20) defined a case for capitalized function words
;; 1.2 (11/21) added optional morphology arg. to verb case
;;     (11/26) wrote define-individual-for-term/verb/span
;; 1.3 (1/3/95) Backed out of decision to make a cfr for the stem as well as
;;      for the word. Added accessors into the discourse history. Wrote Verb-term?
;;     (2/13) fixed bug in accessor
;; 1.4 (2/5/07) Revised handling of punctuation - ignoring it. (12/6/12) 'or' =>
;;      ':or' in v/r

(in-package :sparser)


;;;-------------------------------------------------------
;;; the category all the individuals will be instances of
;;;-------------------------------------------------------

(define-category  term
  :specializes nil
  :instantiates self
  :binds ((word  :primitive word)
          (rewrite-rule  :primitive cfr)
          (category  :primitive (:or category polyword))

          ;; these are relationships to other words within
          ;; the same segment
          (classifies . anything)
          (adjacent/precedes . anything)  ;; do we need both given
          (adjacent/follows . anything)   ;; their reflexiveness ?

          (instance . segment)
          )
  :index (:temporary :key word))



;;;------------
;;; predicates
;;;------------

(defun verb-term? (term)
  (if (individual-p term)
    (if (itypep term 'term)
      (verb? (terms-word term))
      (error "argument is not a term"))
    (error "argument is not an individual")))



;;;------------------
;;; access functions
;;;------------------

(defun term-named (string/word)
  (let ((word (etypecase string/word
                (string (resolve-string-to-word string/word))
                (word string/word))))
    (if word
      (gethash word (cat-instances category::term))
      nil )))


(defun terms-word (term)
  (unless (individual-p term)
    (break "Argument is not an individual: ~A" term))
  (let ((word (value-of 'word term)))
    (if word
      word
      (case (cat-symbol (first (indiv-type term)))
        (category::number 
         (let ((plist (unit-plist term)))
           (or (cadr (member :ones plist))
               (cadr (member :teens plist))
               (cadr (member :tens plist))
               (cadr (member :multiplicand plist))
               (break "Can't find the right plist field for the word ~
                       for a number~%  ~A~%  ~A" plist term))))
        (otherwise
         (break "Don't know how to find a print form for a ~
                 term of type~% ~A -- ~A~%"
                (first (indiv-type term)) term))))))



;;;-----------------------------------------
;;; creating the object and an edge over it
;;;-----------------------------------------

(defun define-individual-for-term/span (word pos-before pos-after
                                        &key form stem)
  ;; called from a mining routine

  (unless (punctuation? word)
    (multiple-value-bind (term cfr)
	(define-individual-for-term
	    word  :form form  :stem stem
	    :start-pos pos-before )
      (let ((edge
	     (make-chart-edge :starting-position pos-before
			      :ending-position pos-after
			      :left-daughter word
			      :right-daughter :single-term
			      :rule cfr
			      :referent term )))

        (values term edge)))))


;;;---------------------
;;; creating the object
;;;---------------------

(defun define-individual-for-term (word &key form
                                             stem
                                             specified-category
                                             start-pos )

  ;; ///called from a routine like scan-words-and-mine, where a segment
  ;; is being analyzed. We create an individual to represent this
  ;; word, a corresponding rule to use the next time this word occurs,
  ;; and we use the rule to put an edge over the word at the
  ;; indicated position. 
  
  (unless form
    (setq form category::content-word))

  (cond
   ((function-word? word)
    (adjudicate-term-for-function-word
     word start-pos
     form stem specified-category))
   
   ((punctuation? word))
    ;(if *break-on-pattern-outside-coverage?*
    ;  (break "punctuation passed in")
    ;  (throw :abort-segment-construction :aborted))

   (t
    (if (word-p word)
      (let* ((name (intern (word-pname (or stem word))
                           *category-package*))
             (category
              (or specified-category
                  (find-or-make-category-object name :dm&p))))
                    ;; a mundain category -- not referential
                  
        (let* ((term (define-individual 'term
                       :word (or stem word)))
               (cfr (define-cfr category `(,word)     ;;,(or stem word))
                      :form form
                      :referent term)))

          (bind-variable 'category category term)
          (bind-variable 'rewrite-rule cfr term)

        #|(when stem  ///1.3.95  Maybe we should impune the category
                         of the word to the stem ??
            ;; A stem is supplied when the caller knows enough about
            ;; the segment context to know what part of speech of stem
            ;; to construct.  When a stem is supplied, the rule we
            ;; just made will be for the category we constructed for
            ;; the stem word.  Here we make one for the original word
            ;; /// it could be a good place to note things like Plural.
            (let* ((word-name (intern (word-pname word)
                                      *category-package*))
                   (word-category
                    (or specified-category
                        (find-or-make-category-object word-name :dm&p))))
              (declare (ignore word-category))
              ;; //but to make pair terms, shouldn't we mush the
              ;; cases together ??

              (let ((cfr-word
                     (define-cfr category `(,word)
                       :form form
                       :referent term)))
                (bind-variable 'rewrite-rule cfr-word term))))|#
            
          (values term cfr)))


      (if (polyword-p word)
        ;; had tried making the rule that forms the pw do double duty
        ;; by loading on the term as the referent, but that ran into
        ;; substantial problems when reclaiming such terms (8/12).
        ;; Now making a new cfr as with single words -- keeping this
        ;; separate entry point in case there turn out to be other
        ;; things we need to do. 

        (let* ((term (define-individual 'term
                       :word word ))
               (pw-category
                (or specified-category
                    (find-or-make-category-object 
                     (pw-symbol word) :dm&p)))
               (cfr (define-cfr pw-category `( ,word )
                      :form form
                      :referent term)))

          (bind-variable 'category pw-category term)
          (bind-variable 'rewrite-rule cfr term)
          (values term cfr))

        (break "Threading bug: 'word' argument is neither a word ~
                or a polyword"))))))




;;/// move once debugged
(defun rule-executed-by-polyword (pw)
  (let* ((fsa-cfr (pw-fsa pw))
         (plist (cfr-plist fsa-cfr))
         (n-ary-field (cadr (member :n-ary plist :test #'eq))))
    (first (second n-ary-field))))




   
(defun define-individual-for-term/verb/span (word stem
                                             pos-before pos-after)

  ;; called from a mining routine when a verb is identified by context

  (multiple-value-bind (term cfr)
                       (define-individual-for-term/verb word stem)
    (let ((edge
           (make-chart-edge :starting-position pos-before
                            :ending-position pos-after
                            :left-daughter word
                            :right-daughter :single-term
                            :rule cfr
                            :referent term )))

        (values term edge))))
 


(defun define-individual-for-term/verb (word stem
                                        &optional morphology )

  ;; called from toplevel or out of line for a set of predefined verbs

  (when morphology
    (unless (referential-category-p morphology)
      (error "Wrong type: the 'morphology' argument must be a category.~
              ~%The object passed in was: ~A" morphology)))

  (let* ((stem-term (define-individual 'term
                      :word stem))
         (name (intern (word-pname stem)
                       *category-package*))
         (category (find-or-make-category-object name :dm&p))
         (form (or morphology
                   (if (word-morphology word)
                     (case (word-morphology word)
                       (:ends-in-s category::verb+s)
                       (:ends-in-ed category::verb+ed)
                       (:ends-in-ing category::verb+ing)
                       (:ends-in-ly category::verb)  ;; "rely"
		       (otherwise
			(break "Unexpected word morphology: ~a"
			       (word-morphology word))))
                     category::verb))))

    (assign-brackets-as-a-main-verb word)

    (let ((cfr (define-cfr category (list word)
                 :form form
                 :referent stem-term)))

      ;; not recording the category because don't see an easy
      ;; way to do it only once rather than with each variant

      (bind-variable 'rewrite-rule cfr stem-term)
      ;; this will add another binding for each call, which is fine
      ;; but has to be appreciated by the deletion routine now that
      ;; we're using just one term for all these surface-variant words

      (values stem-term
              cfr))))


;;;---------------
;;; special cases
;;;---------------

(defun adjudicate-term-for-function-word (word pos-before
                                          form stem specified-category)

  ;; In general, wanting to define a term for a function word is
  ;; an indicator of bad threading.  One exception is the case
  ;; when the word is capitalized and we want to think of it as
  ;; (part of) a name rather than a regular word
  (if *PNF-has-control*
    (let ((capitalized-version
           (make-capitalized-version word
                                     (pos-capitalization pos-before))))

      (when (function-word? capitalized-version)
        ;; could conceivable occur if the capitalized version was
        ;; already defined
        (when *break-on-pattern-outside-coverage?*
          (break "The word passed in to have a term created for it~
                  ~%is a function word and its capitalized variant~
                  ~%is as well:  ~A" capitalized-version))
        (throw :abort-segment-construction :aborted))

      (define-individual-for-term capitalized-version
        :form form  :stem stem  :specified-category specified-category))


    (else ;; complain or declare the segment bad
      (when *break-on-pattern-outside-coverage?*
        (break "function word passed in"))
      (throw :abort-segment-construction :aborted))))



;;;-------------------------------------------
;;; aggregations within the discourse history
;;;-------------------------------------------

(defun the-terms/dh ()
  (setq *terms/dh* (discourse-entry category::term)))

(defun the-terms ()
  (let ( bare-terms )
    (dolist (t/dh (the-terms/dh))
      (push (first t/dh) bare-terms))
    (nreverse bare-terms)))


(defun the-nominal-terms/dh ()
  (or *non-verbs/dh*
      (let ((the-terms (or *terms/dh* (the-terms/dh)))
            nominals/dh  verbs/dh )
        (dolist (term/dh the-terms)
          (if (verb? (value-of 'word (first term/dh)))
            (push term/dh verbs/dh)
            (push term/dh nominals/dh)))

        (setq *verbs/dh* (nreverse verbs/dh)
              *non-verbs/dh* (nreverse nominals/dh)))))

(defun the-verb-terms/dh ()
  (if *verbs/dh*
    *verbs/dh*
    (else (the-nominal-terms/dh)
          *verbs/dh*)))


(defun the-nominal-terms ()
  (let ( bare-terms )
    (dolist (t/dh (the-nominal-terms/dh))
      (push (first t/dh) bare-terms))
    (nreverse bare-terms)))

(defun the-verb-terms ()
  (let ( bare-terms )
    (dolist (t/dh (the-verb-terms/dh))
      (push (first t/dh) bare-terms))
    (nreverse bare-terms)))
      
    





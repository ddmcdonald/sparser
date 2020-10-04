;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2016,2020  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form"
;;;   Module:  "model;core:numbers:"
;;;  Version:  October 2020

;; 2.0  (7/20/92 v2.3) made over to use "real" categories
;; 2.1  (10/5) tweeked construct-temporary... to not make a polyword
;; 2.2  (11/23,24) adjusted the calls to find/make individuals to varied form
;; 2.3  (9/16/93) stopped memoizing compound digit sequences
;;      (7/19/94) added Digit? and Digit-sequence?
;; 2.4  (12/22/95) changed an access to a lambda var to make it unambig.
;; 2.5  (6/12/99) changed the code to instantiated multipliers as individuals
;;      (7/4) debugged it.
;; 2.6  (7/18) Did a substantial makeover on Construct-temporary-number so that
;;       it would retain the word that is there when it is called from an
;;       unknown digit sequence -- motivated by nlg.
;;      (9/25) added Find-number
;;      (3/17/00) Added a schema to all the rules for reversibility.
;;      (7/7) Added illions-distributions to construct-number so they'd
;;       slot into the generation specialist.
;; 2.7  (8/24) Drastically reworked the illions-distribution stuff for
;;       the multipliers and the others.
;;      (4/10/03) Getting problem with reclaimation of multi-element numbers 
;;        like "83.97". Added a notion of "temporary? to the various contructors
;;        that's only invoked when we're comming in from construct-temporary-number.
;;      (3/13/13) Gave digit and word numbers adjective brackets.
;; 3.0  (6/28/15) Reorganizing construct-number to define the individual before
;;       defing any of the rules that use it as a referent. 
;;      (7/2/15) Added reify-digit-word to make sure that digit sequences
;;       that weren't predefined are remembered. 
;; 3.1  (12/15/15) minor cleanup while reading through code


(in-package :sparser)

;;;-----------------------
;;; predicates over words
;;;-----------------------

(defun digit? (word)
  (when (eq :digits (word-capitalization word))
    (= 1 (length (word-pname word)))))

(defun digit-sequence? (word)
  (when (eq :digits (word-capitalization word))
    (> (length (word-pname word)) 1)))


;;;-----------------------
;;; predicates over edges
;;;-----------------------

(defgeneric edge-over-number-word? (edge)
  (:documentation "Single edges over digits ('20') and number words
   ('twenty') are identical with regards to category, form, and
   referent. But they do pattern differently in some contexts.
   This checks for the word case by looking at the capitalization
   information in the edge's start position. Returns nil if the
   edge spans more than one word.")
  (:method ((n integer))
    (edge-over-number-word? (edge# n)))
  (:method ((e edge))
    (when (one-word-long? e)
      (let* ((start-pos (pos-edge-starts-at e))
             (capitalization (pos-capitalization start-pos)))
        ;; They can be :lower-case, :all-caps, etc.
        (not (eq capitalization :digits))))))


(defgeneric numeric-label (edge)
  (:documentation "Return a keyword for use in word-numbers
    value computation")
  (:method ((n integer))
    (numeric-label (edge# n)))
  (:method ((e edge))
    (unless (edge-over-number-word? e)
      (error "Not a number-word edge: ~a" e))
    (ecase (edge-cat-name e)
      (ones-number :ones)
      (teens-number :teens)
      (tens-number :tens)
      (multiplier :multiplicand)
      (number ;; Happens in cases like "Twenty-five", where the
       ;; individual number finished before the hyphen was seen
       ;; in no-space operations and layered an edge over the
       ;; label we want. 
       (unless (eq :single-term (edge-right-daughter e))
         (break "Unexpected daughter for 'number': ~a" e))
       (numeric-label (edge-left-daughter e))))))
      

;;;------
;;; form
;;;------

(defun define-number (string
                      &key word-object-for-digits
                           ones teens tens multiplicand 
                           temporary? )

  ;; The string is a digit sequence like "20" or "1,437.2"
  ;; The word-object-for-digits is a #<word>, supplied if this call
  ;;   is coming from the processing of an unknown digit-sequence
  ;;   by the parser.
  ;; The ones, teens, tens, and multiplicand are mutually exclusive
  ;;   cases where the number has a simple name in the language.  
  ;;   This classifies them in a way that is informative for parsing
  ;;   them.  In particular, the multiplicand is a possible head
  ;;   of a number phrase, like  "dozen" or "hundred", but not
  ;;   "ten" (a 'tens') or "seventeen" (a 'teens').  This scheme
  ;;   is adapted from Christopher Longuet-Higgin's treatment.

  (let ((lisp-number (parse-integer string))
        number )

    (if (setq number (find-individual 'number
                                      :value lisp-number))
      number
      (construct-number string word-object-for-digits lisp-number
                        ones teens tens multiplicand temporary?))))


;; (define-number "12" :teens "twelve" :multiplicand "dozen")

(defun construct-number (string word-object-for-digits lisp-number
                         ones teens tens multiplicand temporary?)
  (declare (special category::digit-sequence))

  (unless word-object-for-digits
    (setq word-object-for-digits (define-word string)))
  (assign-brackets-to-adjective word-object-for-digits) ;; ].adjective .[np

  (let ((number (if temporary?
                  (make-temporary-individual 'number
                    :value lisp-number)
                  (define-individual 'number
                    :value lisp-number)))
        (schematic-rule (get-schematic-word-rule :number))
        rule rules )

    ;; First fleshout the individual
    (when ones ;; e.g. "three"
      (unless (typep ones 'word)
        (setq ones (define-word ones)))
      (assign-brackets-to-adjective ones)
      (set-number-ones number ones) ;; record on plist
      (set-illion-distribution 
       number number (find-individual 'multiplier :name "one")))
   (when teens
      (unless (typep teens 'word)
        (setq teens (define-word teens)))
      (assign-brackets-to-adjective teens)
      (set-number-teens number teens)
      (set-illion-distribution 
       number number (find-individual 'multiplier :name "one")))
    (when tens
      (unless (typep tens 'word)
        (setq tens (define-word tens)))
      (assign-brackets-to-adjective tens)
      (set-number-tens number tens)
      (set-illion-distribution 
       number number (find-individual 'multiplier :name "one")))

    ;; Then make the rules
    (unless temporary?
      (setq rule
            (define-cfr category::digit-sequence `(,word-object-for-digits)
	      :form (category-named 'number)
              :referent number))
      (setf (cfr-schema rule) schematic-rule)
      (push rule rules))
    (when ones ;; e.g. "three"
      (unless temporary?
        (setq rule (define-cfr category::ones-number `(,ones)
		     :form (category-named 'number)
                     :referent number))
        (setf (cfr-schema rule) schematic-rule)
        (push rule rules)
        (setq rule (define-cfr category::ones-number
                     `(,(define-word
                          (string-capitalize (word-pname ones))) )
		     :form (category-named 'number)
                     :referent number))
        (setf (cfr-schema rule) schematic-rule)
        (push rule rules)))
    (when teens
      (unless temporary?
        (setq rule (define-cfr category::teens-number `(,teens)
		     :form (category-named 'number)
                     :referent number))
        (setf (cfr-schema rule) schematic-rule)
        (push rule rules)
        (setq rule (define-cfr category::teens-number
                     `(,(define-word
                          (string-capitalize (word-pname teens))) )
		     :form (category-named 'number)
                     :referent number))
        (setf (cfr-schema rule) schematic-rule)
        (push rule rules)))
    (when tens
      (unless temporary?
        (setq rule (define-cfr category::tens-number `(,tens)
		     :form (category-named 'number)
                     :referent number))
        (setf (cfr-schema rule) schematic-rule)
        (push rule rules)

        (setq rule (define-cfr category::tens-number
                     `(,(define-word
                          (string-capitalize (word-pname tens))) )
		     :form (category-named 'number)
                     :referent number))
        (setf (cfr-schema rule) schematic-rule)
        (push rule rules)))



    ;; This case isn't vetted for the use of cfr-schema
    (when multiplicand
      (unless (typep multiplicand 'word)
        (setq multiplicand (define-word multiplicand)))
      (assign-brackets-to-adjective multiplicand)
      (set-number-multiplicand number multiplicand) ;; plist operation

      ;; This case is now doing double duty to define these words
      ;; as mutiplier objects. The earlier uses are kept since they
      ;; synch with the Longuet-Higgins model of number word formulation.
      (let* ((multiplier (category-named 'multiplier)) 
             (binding-instructions
              `((,(find-variable-for-category 'name multiplier)
                 ,multiplicand)
                (,(find-variable-for-category 'value multiplier)
                 ,number)))
             (m
              ;; N.b. Can only use this function because we've already
              ;; decode the binding instructions
              (find-or-make/individual multiplier binding-instructions))
             (plural-pname (plural-version multiplicand)))
        ;;(push-debug `(,binding-instructions ,m))
        ;;(break "look at m (~a)" m)
        
        ;; If we don't use define-individual we don't get the benefit
        ;; of its automatically generated rule
        (let ((rule (define-cfr multiplier
                                `(,multiplicand)
                      :form (category-named 'number)
                      :referent m))
              (p-rule (define-cfr multiplier `(,plural-pname)
                        :form (category-named 'number)
                        :referent m)))
          (setf (cfr-schema rule) schematic-rule)
          (setf (cfr-schema p-rule) schematic-rule)
          (push rule rules)
          (push p-rule rules))


        ;; 8/24/00 This scheme has been confused and I'm a bit befuddled
        ;; about what the original motivations might have been if it wasn't
        ;; simply a mistake. I found the illion-distribution setter above
        ;; the let, when the multiplier didn't yet exist and the relation
        ;; this is calling wants number objects all around when we were
        ;; calling it with a raw lisp number as the 'value' field, which is
        ;; contrary to what later calls do, as with the one from the digits-fsa.
        ;; It was also making unindexed temporary objects, which I flushed a
        ;; couple of days ago.
        (let ((the-number-one (find-individual 'number :value 1)))
          (unless the-number-one
            (break "loading assumption violated: expected the object for ~
                    the number '1' to have been defined by now."))
          (set-illion-distribution 
           number ;; the number whose distribution we are describing.
           the-number-one ;; its value for its illion
           m )))) ;; the illion
           

    (setf (get-rules number) rules
          (get-tag :digit-sequence number) word-object-for-digits)

    number ))


;; When called from Make-edge-over-unknown-digit-sequence, the word
;; and digit-sequence arguments are available. When called from 
;; Span-digits-number, the lisp number is available. In the case of
;; a minimal digit sequence we set it up just like one of the 
;; predefined numbers. In the span digits case we have a 'compound'
;; number and don't make that setup.

(defun construct-temporary-number (word digit-sequence lisp-number)
  (if lisp-number
    ;; arguably these are two different routines. Oh well.
    (then
      (unless (numberp lisp-number)
        (break "Threading bug: in this direction the 'lisp-number' argument ~
                should be a number:~%  ~a" lisp-number))
      (find-or-make-number lisp-number))
    (else
      (define-number digit-sequence 
        :word-object-for-digits word 
        :temporary? t))))

#| But if we only make a temporary number, and we're running in
a context that reclaims with every new sentence, then we get into
an odd situation where we have a rule-set for the digit but
no connection from there to the number. The rule-set makes the
digit now a 'known' word, so we have to have a rule there for
it to execute.
|#
(defun reify-digit-word (word edge)
  "Called by preterminals-for-unknown if the flags permit it."
  (declare (special *the-category-of-digit-sequences*))
  (let ((i (edge-referent edge)))
    ;; Defining the rule puts it on the word's rule set
    (define-cfr *the-category-of-digit-sequences*
                `(,word)
      :form (category-named 'number)
      :referent i
      :schema (get-schematic-word-rule :number))))
    
         

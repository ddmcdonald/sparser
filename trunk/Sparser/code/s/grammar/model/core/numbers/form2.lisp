;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2013  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "form"
;;;   Module:  "model;core:numbers:"
;;;  Version:  2.7 March 2013

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



(defun construct-number (string word-object-for-digits lisp-number
                         ones teens tens multiplicand temporary?)

  (unless word-object-for-digits
    (setq word-object-for-digits (define-word string)))

  (let ((number (if temporary?
                  (make-an-individual 'number
                    :value lisp-number)
                  (define-individual 'number
                    :value lisp-number)))
        (schematic-rule (get-schematic-word-rule :number))
        rule rules )

    (when (not temporary?)
      (setq rule
            (define-cfr category::digit-sequence `(,word-object-for-digits)
	      :form (category-named 'number)
              :referent number))
      (assign-brackets-to-adjective word-object-for-digits) ;; ].adjective .[np
      (setf (cfr-schema rule) schematic-rule)
      (push rule rules))

    (when ones
      (unless (typep ones 'word)
        (setq ones (define-word ones)))
      (assign-brackets-to-adjective ones)
      (set-number-ones number ones)
      (set-illion-distribution 
       number number (find-individual 'multiplier :name "one"))
      (when (not temporary?)
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
      (unless (typep teens 'word)
        (setq teens (define-word teens)))
      (assign-brackets-to-adjective teens)
      (set-number-teens number teens)
      (set-illion-distribution 
       number number (find-individual 'multiplier :name "one"))
      (when (not temporary?)
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
      (unless (typep tens 'word)
        (setq tens (define-word tens)))
      (assign-brackets-to-adjective tens)
      (set-number-tens number tens)
      (set-illion-distribution 
       number number (find-individual 'multiplier :name "one"))
      (when (not temporary?)
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
      (set-number-multiplicand number multiplicand)

      ;; This case is now doing double duty to define these words
      ;; as mutiplier objects. The earlier uses are kept since they
      ;; synch with the Longuet-Higgins model of number word formulation.
      (let* ((multiplier (category-named 'multiplier)) 
             (binding-instructions-plist
              `(,(find-variable-for-category 'name multiplier)
                ,multiplicand))
             #|(binding-instructions-alist
              `((,(find-variable-for-category 'name multiplier)
                 ,multiplicand)))|#
             (m
              (define-individual 'multiplier binding-instructions-plist)))
        (bind-variable 'value number m)

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
           

    (setf (unit-plist number)
          (append `(:rules ,rules)
                  (unit-plist number)))

    (setf (unit-plist number)
          (append `(:digit-sequence ,word-object-for-digits)
                  (unit-plist number)))

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


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "morphology"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  0.14 May 1998

;; initiated 8/31/92 v2.3, fleshing out verb rules 10/12
;; 0.1 (11/2) fixed how lists of rules formed with synonyms
;; 0.2 (5/25/93) added a parameter to the drivers to distinguish categories
;;      from referents to accomodate the case of rules specific to individuals
;;      and added rule for "y -> ies" plurals
;; 0.2 (6/6) added rule in ed and ing forms to drop final "e"
;; 0.3 (6/10) put in plurals for polywords
;; 0.4 (6/18) added ].verb brackets to the verbs
;; 0.5 (10/22) tweeked common-noun to not pluralize punctuation
;; 0.6 (10/25) modified verbs and common nouns to accept specialized morphology
;; 0.7 (5/26) added 'deictic time words' and adverbs
;; 0.8 (6/7) collected all the verb bracket assignment into one routine
;;     (7/12) piggybacked on that to define Verb?
;; 0.9 (10/19) switched from 'deictic-time' to 'standalong-word'
;;     (12/1) added some predicates.  1/9 added Word-stem as :ls-stem
;;     (1/23) added Adverb?
;; 0.10 (4/14) finished known cases of Form-stem/strip-ed. 4/19 fixed missing
;;       case in ed-form-of-word for "join" -> "joinned" bug.
;;      (5/14) fixed weak dispatch in Make-verb-rules
;;      (6/13) added plural-head?
;; 0.11 (12/8) added an override to Make-rules-for-word-w/o-morph to take its rule
;;       category from the 'instantiates' of the category if they're different.
;;       12/11 did it to common-noun as well. 12/12 Backed out of the w/o-morph
;;       version because it clobbered pronouns becase they depended on the specificity
;; 0.12 (1/2/96) added string-to-word conversions to Make-verb-rules/aux2
;; 0.13 (1/16) blocked the 'subtype' in Make-cn-rules/aux
;;      (7/22) added a check in Make-rules-for-word-w/o-morph for the case of the
;;       'word' coming in as a string rather than a word. The real problem is almost
;;       certainly with the caller though.  (8/4) found the real problem and fixed it.
;; 0.14 (5/5/98) added a binding of *schema-being-instantiated* to Make-verb-rules/aux2.

(in-package :sparser)

;;;-------
;;; verbs
;;;-------

(defun make-verb-rules (word category referent)
  ;; returns a list of rules to be passed back to Make-rules-for-rdata
  ;; All we need are rules over the verb since the rest of the verb
  ;; group will be handled by form rules.  If there were any special
  ;; meanings for some vg-level combinations they would be done with
  ;; local cases

  (etypecase word
    (word (make-verb-rules/aux word category referent))
    (list
     ;; its either multiple (synomymous) words or the specification
     ;; of special cases in the morphology or both
     (cond ((some #'consp word)    ;; (listp (first word)) ;; both
            (let ( rules )
              (dolist (w word)
                (setq rules (append (make-verb-rules w category referent)
                                    rules)))
              rules))
           ((not (some #'keywordp word))
            ;; not a spec, so its multiple
            (let ( rules )
              (dolist (w word)
                (setq rules (append (make-verb-rules/aux w category referent)
                                    rules)))
              rules))
           (t (make-verb-rules/aux (first word)
                                   category referent
                                   (rest word)))))))



(defun verb? (word)
  (let ((rs (word-rules word)))
    (when rs
      (let ((brackets (rs-phrase-boundary rs)))
        (when brackets
          (eq (ba-ends-after brackets)
              (find-bracket :end :after 'mvb)))))))

(defun noun/verb-ambiguous? (word)
  (let ((ambiguity
         (cadr (member :dis-multiple-pos
                       ;; this encoding comes from lingsoft data. ///make it generic
                       ;; regardless of the source
                       (word-plist word)  :test #'eq))))
    (when ambiguity
      (and (member (verb-category-name) ambiguity)
           (member (noun-category-name) ambiguity)))))


(defun adverb? (word)
  (let ((rs (word-rules word)))
    (when rs
      (let ((brackets (rs-phrase-boundary rs)))
        (when brackets
          (eq (ba-ends-before brackets)
              (find-bracket :end :before 'adverb)))))))



(defun determiner? (word)
  ;; ///need to revise their definitions in rules:words; so this
  ;; is easier to compute
  (or (let ((module (cadr (member :grammar-module
                                  (unit-plist word)))))
        (when module
          (eq (gmod-symbol module) '*determiners*)))
      (let* ((rs (label-rule-set word))
             (brackets (when rs (rs-phrase-boundary rs)))
             (.[ (when brackets (ba-begins-before brackets))))
        (eq .[ .[np))))





(defun make-verb-rules/aux (word category referent
                            &optional special-cases )

  ;; Called from Make-verb-rules. Returns a list of the rules made

  (let ((s-form (or (cadr (member :third-singular special-cases))
                    (s-form-of-verb word)))
        (ed-form (or (cadr (member :past-tense special-cases))
                     (ed-form-of-verb word)))
        (ing-form (or (cadr (member :present-participle special-cases))
                      (ing-form-of-verb word)))
        (third-plural (cadr (member :third-plural special-cases)))
        (past-participle (cadr (member :past-participle special-cases)))
        (nominalization (cadr (member :nominalization special-cases))))

    ;; we break it all out this far so that the second routine
    ;; can be an entry point by itself for when we're note going
    ;; via an rdata route
    (make-verb-rules/aux2 word category referent
                          :s-form  s-form
                          :ed-form  ed-form
                          :ing-form  ing-form
                          :past-tense  ed-form
                          :past-participle  past-participle
                          :present-participle  ing-form
                          :third-singular  s-form
                          :third-plural  third-plural
                          :nominalization  nominalization)))


(defun verbal-form? (edge)
  ;; a useful predicate when doing dm&p explorations
  (member (edge-form edge)
          (list category::verb
                category::verb+ed
                category::verb+s
                category::verb+ing
                category::infinitive
                category::verb+present
                category::verb+passive )
          :test #'eq ))

(defun adverbial-morphology? (word)
  (eq (word-morphology word)
      :ends-in-ly ))

(defun verb-form-corresponding-to-word-morph (word)
  (let ((keyword (word-morphology word)))
    (if keyword
      (ecase keyword
        (:ends-in-s   category::verb+s)
        (:ends-in-ed  category::verb+ed)
        (:ends-in-ing category::verb+ing))
      category::verb )))
  
             


(defun make-verb-rules/aux2 (word category referent
                             &key s-form
                                  ed-form
                                  ing-form
                                  past-tense past-participle
                                  present-participle
                                  third-singular third-plural
                                  nominalization )

    (assign-brackets-as-a-main-verb word)  ;; infinitive or 3d plural

    ;; This will be the case when this routine is called from a file
    (when s-form
      (when (stringp s-form)
        (setq s-form (define-word/expr s-form))))
    (when ed-form
      (when (stringp ed-form)
        (setq ed-form (define-word/expr ed-form))))
    (when ing-form
      (when (stringp ing-form)
        (setq ing-form (define-word/expr ing-form))))
    (when past-tense
      (when (stringp past-tense)
        (setq past-tense (define-word/expr past-tense))))
    (when past-participle
      (when (stringp past-participle)
        (setq past-participle (define-word/expr past-participle))))
    (when present-participle
      (when (stringp present-participle)
        (setq present-participle (define-word/expr present-participle))))
    (when third-singular
      (when (stringp third-singular)
        (setq third-singular (define-word/expr third-singular))))
    (when third-plural
      (when (stringp third-plural)
        (setq third-plural (define-word/expr third-plural))))
    (when nominalization
      (when (stringp nominalization)
        (setq nominalization (define-word/expr nominalization))))


    ;; make the rules
    (when (and category referent)
      (let* ((*schema-being-instantiated* word)
             (rules
              (list
               ;; infinitive, 1st, 2d, 3d person plural
               (define-cfr category (list word)
                 :form  category::verb
                 :referent  referent)
               
               ;; 3rd person singular
               (if third-singular
                 (define-cfr category (list third-singular)
                   :form  category::verb+present
                   :referent  referent)
                 (define-cfr category (list s-form)
                   :form  category::verb+present
                   :referent  referent))
               
               ;; past tense, past participle
               (when past-tense
                 (define-cfr category (list past-tense)
                   :form  category::verb+ed
                   :referent  referent))
               (when past-participle
                 (define-cfr category (list past-participle)
                   :form  category::verb+ed
                   :referent  referent))
               (unless past-tense
                 (define-cfr category (list ed-form)
                   :form  category::verb+ed
                   :referent  referent))
               
               ;; present participle
               (if present-participle
                 (define-cfr category (list present-participle)
                   :form  category::verb+ing
                   :referent  referent)
                 (define-cfr category (list ing-form)
                   :form  category::verb+ing
                   :referent  referent))
               
               (when third-plural
                 (define-cfr category (list third-plural)
                   :form  category::verb+present
                   :referent  referent))
               
               (when past-participle
                 (define-cfr category (list past-participle)
                   :form  category::verb+ed
                   :referent  referent))
               
               (when nominalization
                 (define-cfr category (list nominalization)
                   :form  category::np-head
                   :referent  referent)))))
        
        ;; flush the nils from the optional cases
        (let ( real-rules )
          (dolist (r rules)
            (when r (push r real-rules)))
          (nreverse real-rules)))))


;;;--------------------
;;; stripping suffixes
;;;--------------------

(defun word-stem (word)
  ;; /// change choice of tag to be more generic, or patch in a
  ;; domain-specific override capacity 
  (cadr (member :ls-stem (unit-plist word))))

(defun stem-form-of-verb (word)
  (let ((morphology (word-morphology word)))
    (if morphology
      (case morphology
        (:ends-in-s (form-stem/strip-s word))
        (:ends-in-ed (form-stem/strip-ed word))
        (:ends-in-ing (form-stem/strip-ing word))
	(otherwise
	 (break "Unexpected morphology for verb: ~a"
		morphology)))
      word)))


(defun form-stem/strip-s (word)
  ;; the word ends in 's'
  (let* ((pname (word-pname word))
         (length (length pname))
         (stem-pname (subseq pname 0 (1- length)))
         (char-before (elt pname (- length 2))))

    (when (eql char-before #\e)
      ;; check for 'i'
      (when (eql #\i (elt pname (- length 3)))
        (setq stem-pname (concatenate 'string
                                      (subseq pname 0 (- length 3))
                                      "y"))))
    (define-word/expr stem-pname)))

;(form-stem/strip-s (define-word "flies"))
;(form-stem/strip-s (define-word "describes"))


(defun form-stem/strip-ed (word)
  (let* ((pname (word-pname word))
         (length (length pname)))
    (if (< length 5)
      (form-stem/strip-ed/short-word pname length)

      (let ((char-minus-1 (elt pname (- length 3)))
            (char-minus-2 (elt pname (- length 4)))
            (char-minus-3 (elt pname (- length 5))))
        (declare (ignore char-minus-3))
        
        (cond
         ((doubled-consonants? char-minus-1 char-minus-2)
          ;; "..cced" -> "..c"
          (setq pname
                (subseq pname 0 (- length 3))))

         ((and (consonant? char-minus-1)
               (vowel? char-minus-2))
          ;; "..vced" -> "..vce"
          (setq pname
                (subseq pname 0 (- length 1))))

         ((eql #\i char-minus-1)
          ;; "..ied"  -> "..y"
          (setq pname (subseq pname 0 (- length 3))
                pname (concatenate 'string pname "y")))

         ((and (semi-vowel? char-minus-1)
               (consonant? char-minus-2))
          ;; "..csed" -> "..cse"  where 's' is a semi-vowel: "l" "r"
          ;;    e.g. "riddled with grief"
          (setq pname
                (subseq pname 0 (- length 1))))

         (t (setq pname
                  (subseq pname 0 (- length 2)))))

        (define-word/expr pname)))))

;(form-stem/strip-ed (define-word "expected")) ;; default
;(form-stem/strip-ed (define-word "named"))    ;; "..vced" -> "..vce"
;(form-stem/strip-ed (define-word "riddled"))  ;; "..csed" -> "..cse"  where 's' is a semi-vowel
;(form-stem/strip-ed (define-word "cried"))    ;; "..ied"  -> "..y"

(defun form-stem/strip-ed/short-word (stem-pname length)
  ;; 'short' is less than 5 characters
  ;; I haven't got any examples yet.
  (declare (ignore length))
  (define-word/expr stem-pname))




(defun form-stem/strip-ing (word)
  (let* ((pname (word-pname word))
         (length (length pname))
         (stem-pname (subseq pname 0 (- length 3)))
         (char-before (elt pname (- length 4))))

    (when (doubled-consonants? char-before
                               (elt pname (- length 5)))
      (setq stem-pname (subseq pname 0 (- length 4))))

    (define-word/expr stem-pname)))

;(form-stem/strip-ing (define-word "setting"))



;;;---------------------------------
;;; character examining subroutines
;;;---------------------------------

(defparameter *vowels* (list #\a #\e #\i #\o #\u))

(defun doubled-consonants? (c1 c2)
  (when (eql c1 c2)
    (unless (member c1 *vowels* :test #'eql)
      ;; this gets digits and punctuation too, but it works
      t)))

(defun consonant? (character)
  (not (member character *vowels* :test #'eql)))

(defun vowel? (character)
  (member character *vowels* :test #'eql))

(defun semi-vowel? (character)
  (or (eql character #\l)
      (eql character #\r)))

(defun one-syllable? (pname)
  ;; a c/v analysis would be better
  (>= 4 (length pname)))


(defun stem-with-final-consonant/s-stripped (pname)
  (if (= (length pname) 0)
      nil
      (if (consonant? (elt pname (1- (length pname))))
        (stem-with-final-consonant/s-stripped
         (subseq pname 0 (1- (length pname))))
        pname )))


(defun v-of-final-vc-is-two-vowels? (pname)
  ;; e.g. "join", used to stop the doubling of the final consonant
  ;; in ed-form-of-verb
  (let ((reduced-stem (stem-with-final-consonant/s-stripped pname)))
    (when reduced-stem
      ;; If there was any vowel in this pname then the reduction
      ;; will return a string
      (when (> (length reduced-stem) 1) ;; e.g. pname = "in"
        (vowel? (elt reduced-stem (1- (length reduced-stem))))))))

   


;;;-----------------
;;; adding suffixes
;;;-----------------

(defun s-form-of-verb (word)
  (let* ((pname (word-pname word))
         (last-letter (elt pname (1- (length pname)))))
    (declare (ignore last-letter))
    (let ((new-pname (concatenate 'string
                                  pname
                                  "s")))
      (let ((word
             (define-word/expr new-pname)))
        (assign-brackets-as-a-main-verb word)
        word ))))



(defun ed-form-of-verb (word)
  (let* ((pname (word-pname word))
         (last-letter (elt pname (1- (length pname)))))

    (case last-letter
      (#\e
       (setq pname (subseq pname 0 (1- (length pname))))))

    (when (consonant? last-letter)
      (when (one-syllable? pname)
        ;; double the final consonant -- in general it gets
        ;; doubled whenever the final syllable is stressed,
        ;; but that's a lot to deduce just from the spelling
        ;; of the stem.
        (unless (v-of-final-vc-is-two-vowels? pname)
          (setq pname
                (concatenate 'string
                             pname
                             (coerce (list last-letter) 'string))))))

    (let ((new-pname (concatenate 'string
                                  pname
                                  "ed")))
      (let ((word
             (define-word/expr new-pname)))
        (assign-brackets-as-a-main-verb word)
        word ))))

;(ed-form-of-verb (define-word "bat"))
;(ed-form-of-verb (define-word "join"))



(defun ing-form-of-verb (word)
  (let* ((pname (word-pname word))
         (last-letter (elt pname (1- (length pname)))))

    (case last-letter
      (#\e
       (setq pname (subseq pname 0 (1- (length pname))))))

    (when (consonant? last-letter)
      (when (one-syllable? pname)
        ;; double the final consonant -- in general it gets
        ;; doubled whenever the final syllable is stressed,
        ;; but that's a lot to deduce just from the spelling
        ;; of the stem
        (setq pname (concatenate 'string
                                 pname
                                 (coerce (list last-letter) 'string)))))

    (let ((new-pname (concatenate 'string
                                  pname
                                  "ing")))
      (let ((word
             (define-word/expr new-pname)))
        (assign-brackets-as-a-main-verb word)
        word ))))

;(ing-form-of-verb (define-word "describe"))
;(ing-form-of-verb (define-word "set"))
;(ing-form-of-verb (define-word "look"))



;;;--------------
;;; common nouns
;;;--------------

(defun make-cn-rules (word category referent)
  (etypecase word
    (word (make-cn-rules/aux word category referent))
    (polyword (make-cn-rules/aux word category referent))
    (list
     ;; its either multiple (synomymous) words or the specification
     ;; of special cases in the morphology or both
     (cond ((listp (first word)) ;; both
            (let ( rules )
              (dolist (w word)
                (setq rules (append (make-cn-rules w category referent)
                                    rules)))
              rules))
           ((not (some #'keywordp word))
            ;; not a spec, so its multiple
            (let ( rules )
              (dolist (w word)
                (setq rules (append (make-cn-rules/aux w category referent)
                                    rules)))
              rules))
           (t (make-cn-rules/aux (first word)
                                 category referent
                                 (rest word)))))))



(defun make-cn-rules/aux (word given-category referent
                          &optional special-cases)

  (let* ((instantiated-category (category-instantiates given-category))
        (category 
         (if instantiated-category
           ;; Normally we use the category that's passed in as the label on the
           ;; rule that we make, but if it category is marked as instantiating
           ;; something other than 'self' then we use that other category as 
           ;; the label
           (if (not (eq instantiated-category given-category)) ;; i.e. "self"
             instantiated-category
             given-category)
           given-category)))

  (let ((singular-rule
         (define-cfr category (list word)
           :form  category::common-noun
           :referent referent)))

    (if (member :punctuation (etypecase word
                               (word (word-plist word))
                               (polyword (pw-plist word))))
      ;; so we don't pluralize it
      (list singular-rule)

      (let ((plural (or (cadr (member :plural special-cases))
                        (etypecase word
                          (polyword (plural-version/pw word))
                          (word (plural-version word))))))
        (list singular-rule
              (define-cfr category (list plural)
                :form  category::common-noun/plural
                :referent (resolve-referent-expression
                           `(:head ,referent
                             ;;  :subtype collection
                             )))))))))



(defun plural-version (word)
  (let* ((pname (word-pname word))
         (last-letter (elt pname (1- (length pname))))
         new-pname )

    (setq new-pname
          (case last-letter
            (#\y
             (concatenate 'string
                          (subseq pname 0 (1- (length pname)))
                          "ies"))
            (otherwise
             (concatenate 'string pname "s"))))

    (define-word/expr new-pname)))


(defun plural-version/pw (pw)
  ;; /// won't do the right thing for irregulars -- "chairmen"
  (let* ((words (pw-words pw))
         (last-word (car (last words)))
         (last-word-plural (plural-version last-word)))

    ;; this approach seem awfully indirect, but it does package
    ;; up all the hard work of creating the needed cfr, and
    ;; unwinding the input pw would be too messy
    (let* ((strings
            (cons (word-pname (first words))
                  (mapcar #'(lambda (w)
                              (concatenate 'string
                                           " " (word-pname w)))
                          (nreverse
                           (cons last-word-plural
                                 (cddr (reverse (pw-words pw))))))))
           (pw-string (apply #'concatenate 'string strings)))

      (define-polyword/expr pw-string))))


;;--- predicate over plural things

(defun plural-head? (edge)
  ;; The caller has determined that this edge is the head of its phrase
  ;; and wants to know whether its head noun is plural. The test is
  ;; done off the morphology of the word rather than requiring anything
  ;; to have been predefined.
  (let* ((position (chart-position-before (pos-edge-ends-at edge)))
         (word (pos-terminal position)))
    (eq (word-morphology word)
        :ends-in-s)))





;;;---------------------------------
;;; unvaried words (e.g. inc-terms)
;;;---------------------------------

(defun make-rules-for-word-w/o-morph (word category referent)
  (if (listp word)
    (let ( rules )
      (dolist (w word)
        (setq rules (append (make-rules-for-word-w/o-morph
                             w category referent)
                            rules)))
      rules )
    (else
      #|(let ((instantiated-category (category-instantiates category))
            label-level-category )
        (when instantiated-category
          ;; Normally we use the category as the label on the rule
          ;; that we make, but if the category is marked as instantiating
          ;; something other than 'self' then we use that as the label
          (when (not (eq instantiated-category category)) ;; i.e. "self"
            (setq label-level-category instantiated-category)))

        (list (define-cfr (or label-level-category category)
                          (list word)
                :form nil
                :referent referent))) |#

      (unless (or (word-p word) (polyword-p word))
        (break "Data type error: expected a 'word',~
                ~%got ~A, which is a ~A.~
                ~%This could be caused by a mistake in the definition of the~
                ~%category. If the value restriction is 'word' or 'polyword',~
                ~%that should be given as '(<var> :primitive word)'.~%"
               word (type-of word)))

      (list (define-cfr category (list word)
                :form nil
                :referent referent)))))



;;;---------
;;; adverbs
;;;---------

(defun make-rules-for-adverbs (word category referent)
  (if (listp word)
    (let ( rules )
      (dolist (w word)
        (setq rules (append (make-rules-for-adverbs
                             w category referent)
                            rules)))
      rules )
    (else
      (assign-brackets/expr word (list ].adverb .[adverb ))
      (list (define-cfr category (list word)
              :form category::adverb
              :referent referent)))))


;;;--------------
;;; proper nouns
;;;--------------

(defun make-pn-rules (word category referent)
  (if (listp word)
    (let ( rules )
      (dolist (w word)
        (setq rules (append (make-pn-rules
                             w category referent)
                            rules)))
      rules )
    (else
      (list (define-cfr category (list word)
              :form category::proper-noun
              :referent referent )))))


;;;-------------------------------------------------------
;;; deictic time ("Wednesday", "immediately", "tomorrow")
;;;-------------------------------------------------------

(defun make-rules-for-standalone-word (word category referent)
  (if (listp word)
    (let ( rules )
      (dolist (w word)
        (setq rules (append (make-rules-for-standalone-word
                             w category referent)
                            rules)))
      rules )
    (else
      (assign-brackets/expr word (list ].phrase .[phrase ))
      (list (define-cfr category (list word)
              :form category::adjunct
              :referent referent )))))


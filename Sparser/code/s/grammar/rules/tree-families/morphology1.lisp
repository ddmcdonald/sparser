;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2010-2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2008-2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "morphology"
;;;   Module:  "grammar;rules:tree-families:"
;;;  version:  1.11 September 2013

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
;; 1.0  (10/10/99) Started adding references to schematic-rules when the concrete
;;       rules are created. Moved the dispatch into here from driver1.
;;      (11/25) Modified standalone-word to use a schematic format. (11/26) added the
;;       rest except for verbs since I'm pretty sure I don't remember all the
;;       context that went into their design. 
;;       Also left out common nouns because didn't want to do the proper design
;;       for plurals quite yet. (12/26) put schema reference into Make-cn-rules/aux
;;       so kinds would at least turn over if not have subtypes with open variables for
;;       the plurals.
;; 1.1  (3/18/00) Turned on the plural subtyping in Make-cn-rules/aux
;;      (7/11/00) Added quantifier
;; 1.2  (1/2/01) revised the plural subtyping in Make-cn-rules/aux to be simple.
;;      (2/18) fixed a typo in it.
;; 1.3  (3/31/05) Modified the call that makes the nominalized form of the verb in
;;       Make-verb-rules/aux2 to allow for it having the same pname as another case.
;;       If we didn't we wouldn't get the nominalized rule.
;;      (4/23/08) Added assign-brackets-as-a-common-noun for Make-cn-rules/aux.
;;      (4/14/09) Added *valid-keywords-for-irregular-word-forms*
;;      (7/23/09) Added interjection.
;; 1.4 (9/1/09) Modified plural rule for common nouns to just go to its referent rather
;;      than form a subtype of the referent. We're not doing subtypes right now, but it
;;      needs to be generalized when getting "external" referents as in the link to
;;      Poirot. Modified plural-version of common nouns to just as "s" to words ending
;;      in "y" when they satisfy one-syllable? -- "days". (9/6) Fixed the brackets on
;;      standalone-word.
;; 1.5 (10/13/09) Modified the w/o-morph case to not laydown any brackets and added
;;      explicit set (with brackets) for adjectives.
;; 1.6 (11/4/10) Earlier in October added vast amount to the stemming capabilities.
;;      Today resurecting define-main-verb entry point from 1993 JV work.
;; 1.7 (3/14/11) Decided I wanted more rope for hanging myself and decided that
;;      the :instantiates field of a category (which the ancient doc says, and it's
;;      true the last time I looked, governs the category an individual is indexed
;;      under in the discourse history) should now also govern the lhs of the
;;      rewrite rules. 7/11/11 Spruced up define-main-verb a bit. 7/12 fixed ing-
;;      form-of-verb for cases like "wait" or "gain".
;;      7/31 Added 'category' keyword to define-main-verb so can be used by primed verbs
;; 1.8 (8/1/11) Refactoring a bit so can operate on strings when priming a background
;;      lexicon. 8/2 added the code for recording inflections/lemmas.
;; 1.9 (9/6/11) Rationalized the 'rope' to split discourse history effects from
;;      lhs labeling with the function override-label, which originates in a new
;;      field, :rule-label, on categories. 
;; 1.10 (9/13/11) modified assign-brackets-as-a-common-noun to leave off the
;;      np]. bracket.  4/2/12 #ignored noun/verb-ambiguous?  11/25/12 1st case of
;;      lists of strings in the irregulars past in to define-main-verb. 12/3/12
;;      fixing bugs in the first treatment.
;; 1.11 (12/4/12) Moved out all the assignments to rules/brackets/assignments.
;;      (9/7/13) Put what may be a hack int make-cn-rules/aux to notice that a
;;       special case plural is still a string and not a word. 

(in-package :sparser)

;;;----------
;;; dispatch
;;;----------

(defun head-word-rule-construction-dispatch (head-word category referent)
  ;; called from make-rules-for-rdata. Keep etf for single-words in synch.
  (let* ((override-category (override-label category))
         (lhs-category (or (when override-category
                             (if (not (eq override-category category))
                              override-category
                               category))
                           category)))
    (ecase (car head-word)
      (:verb (make-verb-rules
              (cdr head-word) lhs-category referent))
      (:common-noun (make-cn-rules
                     (cdr head-word) lhs-category referent))
      (:proper-noun (make-pn-rules
                     (cdr head-word) lhs-category referent))
      (:adjective (make-rules-for-adjectives
                   (cdr head-word) lhs-category referent))
      (:quantifier (make-rules-for-word-w/o-morph
                    (cdr head-word) lhs-category referent))
      (:adverb (make-rules-for-adverbs
                (cdr head-word) lhs-category referent))
      (:interjection (make-interjection-rules
                      (cdr head-word) lhs-category referent))
      (:preposition (make-preposition-rules
                     (cdr head-word) lhs-category referent))
      (:word (make-rules-for-word-w/o-morph
              (cdr head-word) lhs-category referent))
      (:standalone-word (make-rules-for-standalone-word
                         (cdr head-word) lhs-category referent)))))


(defparameter *valid-keywords-for-irregular-word-forms*
  '(:third-singular :past-tense :present-participle :third-plural
    :past-participle :nominalization
    :plural))


;;;-------------------------------------------------------
;;; keeping track of lemma / inflected form relationships
;;;-------------------------------------------------------

;; Presently only applies to nouns and verbs, could be expanded to
;; other forms like comparative adjectives or even derivational
;; variants. Somewhat redundant with the bundling created by categories
;; but useful when working with a large latient vocabulary.

(defun record-inflections (inflections lemma type)
  (ecase type
    (:noun
     (put-property-on-word :noun-inflections inflections lemma)) ;; key, value, word
    (:verb
     (put-property-on-word :verb-inflections inflections lemma))))

(defun record-lemma (inflection lemma type)
  (ecase type
    (:noun
     (put-property-on-word :inflection-of-noun lemma inflection))
    (:verb
     (put-property-on-word :inflection-of-verb lemma inflection))))


(defun noun-forms-of (w)
  (let ((value (property-of-word :noun-inflections w)))
    (when value
      (pushnew w value))))

(defun verb-forms-of (w)
  (let ((value (property-of-word :verb-inflections w)))
    (when value
      (pushnew w value))))


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

#+ignore
(defun noun/verb-ambiguous? (word) ;; verb/noun-category-name undefined
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



(defun define-main-verb  (symbol-for-category
                          &key 
                          ((:category supplied-category))
                          referent 
                          infinitive ;; "to give"
                          tensed/singular    ;; "he gives"
                          tensed/plural      ;; "they give"
                          past-tense         ;; "they gave"
                          past-participle    ;; "they have given"
                          present-participle ;; "they are giving"
                          nominalization)
  "Standalone entry point developed in the early 1990s. Can be very lightweight
 because the referent can be trivial. Provides overrides to make-verb-rules/aux."
  (unless infinitive
    (error "Must supply at least the infinitive word form"))
  (let ((word (define-word/expr infinitive))
        (category (or supplied-category
                      (find-or-make-category symbol-for-category :define-category)))
        (ref (or referent
                 (category-named 'event))) ;; see /core/kinds/object -- should be eventuality
        special-cases )
    (when tensed/singular
      (push tensed/singular special-cases)
      (push :third-singular special-cases))
    (let ((t/p (or tensed/plural infinitive)))
      (push t/p special-cases)
      (push :third-plural special-cases))
    (when past-tense
      (push past-tense special-cases)
      (push :past-tense special-cases))
    (when past-participle 
      (push past-participle special-cases)
      (push :past-participle special-cases))
    (when present-participle ;; ing-form
      (push present-participle special-cases)
      (push :present-participle special-cases))
    (when nominalization
      (push nominalization special-cases)
      (push :nominalization special-cases))
    (let ((rules (make-verb-rules/aux word category ref special-cases)))
      (add-rules-to-category category rules)
      rules)))


(defun make-verb-rules/aux (word category referent
                            &optional special-cases )
  ;; Called from make-verb-rules. Returns a list of the rules made
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
    ;; can be an entry point by itself for when we're not going
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
  

(defun make-verb-rules/aux2 (word category referent
                             &key s-form
                                  ed-form
                                  ing-form
                                  past-tense past-participle
                                  present-participle
                                  third-singular third-plural
                                  nominalization )
  (let ( inflections )
    (flet ((convert-if-needed (raw)
             (typecase raw
               (word raw)
               (string (define-word/expr raw))
               (cons
                (loop for r in raw
                  when (stringp r) do (setq r (define-word/expr r))
                  collect r))
               (otherwise
                (break "Unexpected type: ~a~%  ~a" (type-of raw) raw))))
           (update-inflections (result)
             (typecase result
               (word (push result inflections))
               (cons (setq inflections (append-new result inflections)))
               (otherwise (break "Unexpected result type: ~a~%  ~a"
                                 (type-of result) result)))))
      (when s-form
        (update-inflections (setq s-form (convert-if-needed s-form))))
      (when ed-form
        (update-inflections (setq ed-form (convert-if-needed ed-form))))
      (when ing-form
        (update-inflections (setq ing-form (convert-if-needed ing-form))))
      (when past-tense
        (update-inflections (setq past-tense (convert-if-needed past-tense))))
      (when past-participle
        (update-inflections (setq past-participle (convert-if-needed past-participle))))
      (when present-participle
        (update-inflections (setq present-participle (convert-if-needed present-participle))))
      (when third-singular
        (update-inflections (setq third-singular (convert-if-needed third-singular))))
      (when third-plural
        (update-inflections (setq third-plural (convert-if-needed third-plural))))
      (when nominalization
        (setq nominalization (convert-if-needed nominalization)))

      (assign-brackets-as-a-main-verb word) ;; infinitive or 3d plural
      (record-inflections inflections word :verb)
      (dolist (w inflections)
        (assign-brackets-as-a-main-verb w)
        (record-lemma w word :verb))
      (when nominalization
        ;; Makes rules and a category as well.
        (assign-brackets-as-a-common-noun nominalization))

    ;; make the rules
    (when (and category referent)
      (let* ((*schema-being-instantiated* word)
             rules  )
        (labels ((make-rule (word form)
                   (let ((rule (define-cfr category (list word)
                                 :form form
                                 :referent  referent)))
                     (push rule rules)))
                 (rule-macro (word/s form)
                   (if (consp word/s)
                     (loop for word in word/s do
                       (make-rule word form))
                   (make-rule word/s form))))
          
          ;; infinitive, 1st, 2d, 3d person plural
          (rule-macro word category::verb)

          ;; 3rd person singular
          (if third-singular
            (rule-macro third-singular category::verb+present)
            (when s-form
              (rule-macro s-form category::verb+present)))
          
          ;; past tense, past participle          
          (when past-tense
            (rule-macro past-tense category::verb+ed))
          (when past-participle
            (rule-macro past-participle category::verb+ed))
          (unless past-tense
            (rule-macro ed-form category::verb+ed))
               
          ;; present participle
          (if present-participle
            (rule-macro present-participle category::verb+ing)
            (when ing-form
              (rule-macro ing-form category::verb+ing)))

          (when third-plural
            (rule-macro third-plural category::verb+present))

          (when past-participle
            (rule-macro past-participle category::verb+ed))

          (nreverse rules)))))))


;;;--------------------
;;; stripping suffixes
;;;--------------------

;; No users seen 8/8/10, but storing on the plist is a good idea
;(defun word-stem (word)
;  ;; /// change choice of tag to be more generic, or patch in a
;  ;; domain-specific override capacity 
;  (cadr (member :ls-stem (unit-plist word))))

(defmethod stem-form ((s symbol))
  (stem-form (symbol-name s)))
  
(defmethod stem-form ((s string))
  (let ((word (define-word/expr s)))
    (stem-form word)))

(defmethod stem-form ((word word))
  ;; Redundant with stem-form-of-verb but adds more cases and
  ;; will do a Comlex check. Stores the stem once it finds it.
  (or (cadr (member :stem (unit-plist word)))
      (let ((morphology (word-morphology word)))
	;; the word-morphology field of a word is filled at the
	;; time it is defined. 
	(if morphology
	  (let* ((putative-stem (construct-stem-form word morphology))
		 (stem (test-against-comlex-if-possible putative-stem)))
	    (setf (unit-plist word)
		  `(:stem ,stem ,@(unit-plist word)))
	    stem)	    
	  word))))


;;--- test harness

(defun test-stemmer (pname)
  (let ((word (word-named pname)))
    (if word
      (let* ((plist (unit-plist word))
	     (stem-sublist (member :stem plist)))
	(when stem-sublist
	  (if (eq (car plist) :stem)
	    (setf (unit-plist word) (cddr plist))
	    (break "stem marker is in the middle of the plist")))
	word)
      (setq word (define-word/expr pname)))
    (stem-form word)))


;;--- cases

(defun construct-stem-form (word morphology-keyword)
  ;; subroutine of stem-form and stem-form-of-word
  (case morphology-keyword
    (:ends-in-s (form-stem/strip-s word))
    (:ends-in-ed (form-stem/strip-ed word))
    (:ends-in-ing (form-stem/strip-ing word))
    (:ends-in-ly (form-stem/strip-ly word))
    (otherwise
     (push-debug `(,word ,morphology-keyword))
     (break "Unexpected morphology keyword ~a~%on ~a"
	    morphology-keyword word))))


(defun test-against-comlex-if-possible (putative-stem)
  (if *comlex-word-lists-loaded* ;; do (load-comlex)
    (or (and (is-in-comlex? putative-stem)
	     putative-stem)
	(let ((pname-with-an-e (pname-with-an-e putative-stem)))
	  (when (is-in-comlex? pname-with-an-e)
	    (define-word/expr pname-with-an-e)))
	(let ((pname-with-a-d (pname-with-a-d putative-stem)))
	  (when (is-in-comlex? pname-with-a-d)
	    (define-word/expr pname-with-a-d)))
	;; fall through -- really might not be in comlex
	putative-stem)
    putative-stem))

(defun pname-with-an-e (stem)
  (if (word-ends-in-e stem)
    stem
    (concatenate 'string (word-pname stem) "e")))
;; Should try to avoid these patches
(defun pname-with-a-d (stem)
  (if (word-ends-in-e stem)
    stem
    (concatenate 'string (word-pname stem) "d")))
      

;;--- A start at some abstractions

(defmethod last-letter ((w word))
  (last-letter (word-pname w)))
(defmethod last-letter ((s string))
  (elt s (1- (length s))))

(defun ends-in? (string suffix-string)
  (let ((string-length (length string))
	(suffix-length (length suffix-string)))
    (string-equal suffix-string
		  (subseq string (- string-length suffix-length)))))

(defmethod word-ends-in-e ((w word))
  (word-ends-in-e (word-pname w)))
(defmethod word-ends-in-e ((s string))
  (eql #\e (last-letter s)))

(defmethod word-ends-in-d ((w word))
  (word-ends-in-d (word-pname w)))
(defmethod word-ends-in-d ((s string))
  (eql #\d (last-letter s)))


;;--- Verbs ("s", "ed", "ing")

(defun stem-form-of-verb (word)
  ;; Called from introduce-morph-brackets-from-unknown-word, which (8/8/10) is
  ;; very conservative about what it tries to stem
  (let ((morphology (word-morphology word)))
    (if morphology ;;/// mistakenly stems "this",
      ;; and "species" => "specy", "during" => "dur"
      (construct-stem-form word morphology)
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


(defun form-stem/strip-ed (word) ;; "called" => "cal"
  (let* ((pname (word-pname word))
         (length (length pname)))
    (if (< length 5)
      (form-stem/strip-ed/short-word pname length)

      (let ((char-minus-1 (elt pname (- length 3)))
            (char-minus-2 (elt pname (- length 4)))
            (char-minus-3 (elt pname (- length 5))))
        
        (cond
         ((doubled-consonants? char-minus-1 char-minus-2)
          ;; "..cced" -> "..c"
          (setq pname
                (subseq pname 0 (- length 3))))

         ((and (consonant? char-minus-1)
               (vowel? char-minus-2) ;; "named" => "name"
	       (not (vowel? char-minus-3))) ;; "coiled" => "coil"
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

;(test-stemmer "coiled") -> "coile" /////
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
         (length (length pname)))
    (if (< length 6)
      (then ;; what's an example where we'd stem it?
	word)
      (let ((stem-pname (subseq pname 0 (- length 3))) ;; remove "ing"
	    (char-before (elt pname (- length 4))))
	(cond
	  ((ends-in? stem-pname "bl") ;; "assemble
	   (setq stem-pname (string-append stem-pname "e")))
	  ((and (doubled-consonants? char-before (elt pname (- length 5)))
		(> (length stem-pname) 3)) ;; "cell" "add"
	   (setq stem-pname (subseq pname 0 (- length 4)))))
	(define-word/expr stem-pname)))))


;(form-stem/strip-ing (define-word "setting"))
; BUT (stem-form (define-word/expr "assembling")) => "assembl"
; and adding => "ad"

(defun form-stem/strip-ly (word)
  ;; It's not obvious that we should do this since we'll be changing
  ;; part of speech from an adverb to (most of the time) an adjective.
  ;; This is a placeholder. 
  word)




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
  ;; a c/v analysis would be better, 
  ;; or just counting the number of vowels as a stand-in for syllables
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

(defmethod s-form-of-verb ((base word))
  (let* ((s-form-pname (s-form-of-verb (word-pname base)))
         (word (define-word/expr s-form-pname)))
    (assign-brackets-as-a-main-verb word)
    word ))

(defmethod s-form-of-verb ((pname string))
  ;; comlex-util uses the plural noun routine to generate
  ;; this form, so since the original version here just
  ;; added "s" why not try it.
  (plural-version pname))


(defmethod ed-form-of-verb ((word word))
  (let* ((ed-pname (ed-form-of-verb (word-pname word)))
         (word (define-word/expr ed-pname)))
    (assign-brackets-as-a-main-verb word)
    word ))

(defmethod ed-form-of-verb ((pname string))
  ;; adapted version from comlex-util with the consonant
  ;; doubling heuristic they cite.
  (let ((lastchar (subseq pname (- (length pname) 1)))
        (last2char (subseq pname (max (- (length pname) 2) 0)))
        (last3char (subseq pname (max (- (length pname) 3) 0))))
    (cond
      ((member last2char '("ay" "ey" "iy" "oy" "uy")
		       :test #'string-equal)
       (string-append pname "ed"))

      ((string-equal lastchar "y")
	   (string-append (subseq pname 0 (- (length pname) 1)) "ied"))

      ((string-equal lastchar "e")
       (concatenate 'string pname "d"))

      ((and (consonant? (char last3char 0))
            (vowel? (char last2char 0))
            (consonant? (char lastchar 0)))
       (string-append pname lastchar "ed"))

      (t (string-append pname "ed")))))


;(ed-form-of-verb (define-word "bat"))
;(ed-form-of-verb (define-word "join"))



(defmethod ing-form-of-verb ((word word))
  (let* ((ing-pname (ing-form-of-verb (word-pname word)))
         (word (define-word/expr ing-pname)))
    (assign-brackets-as-a-main-verb word)
    word ))
    

(defmethod ing-form-of-verb ((pname string))
  (let ((last-letter (elt pname (1- (length pname)))))

    (case last-letter
      (#\e
       (setq pname (subseq pname 0 (1- (length pname))))))

    (when (consonant? last-letter)
      (when (one-syllable? pname)
        ;; double the final consonant -- in general it gets
        ;; doubled whenever the final syllable is stressed,
        ;; but that's a lot to deduce just from the spelling
        ;; of the stem, though the two-vowel check helps.
        (unless (v-of-final-vc-is-two-vowels? pname)
          (setq pname (string-append
                       pname
                       (coerce (list last-letter) 'string))))))

    (string-append pname "ing")))


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

  (let* ((override-category (override-label given-category))
         (category 
          (if override-category
            ;; Normally we use the category that's passed in as the label on the
            ;; rule that we make, but if it category is marked as instantiating
            ;; something other than 'self' then we use that other category as 
            ;; the label
            (if (not (eq override-category given-category)) ;; i.e. "self"
              override-category
              given-category)
            given-category))
         (schematic-rule (get-schematic-word-rule :common-noun)))

    (let ((singular-rule
           (define-cfr category (list word)
             :form  category::common-noun
             :referent referent)))
      (setf (cfr-schema singular-rule) schematic-rule)
      (assign-brackets-as-a-common-noun word)
      
      (if (member :punctuation (etypecase word
                                 (word (word-plist word))
                                 (polyword (pw-plist word))))
        ;; so we don't pluralize it
        (list singular-rule)
        
        (let ((plural (or (cadr (member :plural special-cases))
                           (etypecase word
                             (polyword (plural-version/pw word))
                             (word (plural-version word))))))
          (when (stringp plural) ;; see note
            (setq plural (resolve/make plural)))
          (let ((plural-rule
;; This one is for categories where we expect sets: companies, people
;                (define-cfr category (list plural)
;                  :form  category::common-noun/plural
;                  :referent (resolve-referent-expression
;                             `(:head ,referent
;                               :subtype (:instantiate-individual collection
;                                           :with (type ,referent)))))
;; This is simple cases where the set would never be enumerated: share-of-stock
                 (define-cfr category (list plural)
                   :form  category::common-noun/plural
                   :referent 
                      (if *external-referents*
                        referent
                        (resolve-referent-expression
                         `(:head ,referent
                           :subtype ,(category-named 'collection)))))))

            (record-inflections `(,plural) word :noun)
            (record-lemma plural word :noun)
            
            (assign-brackets-as-a-common-noun plural)
            (setf (cfr-schema plural-rule) schematic-rule)
            (list singular-rule
                  plural-rule)))))))

;; Note -- the marked irregular plural can in as a string via this call
;;   (define-single-word-title '(:common-noun "gunman" :plural "gunmen"))
;; This involves decoding the 'word' primitive expression of the slot this
;; goes with. //// Look up the path used when irregulars are specified
;; in rspecs and merge them.



(defmethod plural-version ((w word))
  (let ((plural-pname (plural-version (word-pname w))))
    (define-word/expr plural-pname)))

(defmethod plural-version ((pname string))
  ;; Revised 8/1/11 to draw on Comlex utilties, which says these
  ;; are from the Oxford Advanced Learners Dictionary
  (let ((lastchar (subseq pname (- (length pname) 1)))
        (last2char (subseq pname (max (- (length pname) 2) 0)))
         new-pname )
    (cond
      ((or (member lastchar '("s" "z" "x") :test #'string-equal)
           (member last2char '("ch" "sh") :test #'string-equal))
       (string-append pname "es"))
      ((member last2char '("ay" "ey" "iy" "oy" "uy")
               :test #'string-equal)
       (string-append pname "s"))
      ((string-equal lastchar "y")
       (string-append (subseq pname 0 (- (length pname) 1)) "ies"))
      (t (string-append pname "s")))))



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
      (unless (or (word-p word) (polyword-p word))
        (break "Data type error: expected a 'word',~
                ~%got ~A, which is a ~A.~
                ~%This could be caused by a mistake in the definition of the~
                ~%category. If the value restriction is 'word' or 'polyword',~
                ~%that should be given as '(<var> :primitive word)'.~%"
               word (type-of word)))
      (let ((schematic-rule (get-schematic-word-rule :word)) ;; :standalone-word
            (cfr (define-cfr category (list word)           ;; see single-words etf
                   :form category::adjunct  ;; ??
                   :referent referent )))
        (setf (cfr-schema cfr) schematic-rule)
	;; no bracket assignment because we don't know enough to pick the
	;; right ones or even determine that there should be any 
	(list cfr)))))



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
      (let ((schematic-rule (get-schematic-word-rule :adverb))
            (cfr (define-cfr category (list word)
                   :form category::adverb
                   :referent referent)))
        (setf (cfr-schema cfr) schematic-rule)
        (assign-brackets-to-adverb word)
        (list cfr)))))


;;;------------
;;; adjectives
;;;------------

(defun make-rules-for-adjectives (word category referent)
  (if (listp word)
    (let ( rules )
        (dolist (w word)
        (setq rules (append (make-rules-for-adjectives
                             w category referent)
                            rules)))
      rules )
    (else
      (let ((schematic-rule (get-schematic-word-rule :adjective))
            (cfr (define-cfr category (list word)
                   :form category::adjective
                   :referent referent)))
        (setf (cfr-schema cfr) schematic-rule)
        (assign-brackets-to-adjective word)
        (list cfr)))))


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
      (let ((pn-schematic-rule (get-schematic-word-rule :proper-noun))
            (cfr  (define-cfr category (list word)
              :form category::proper-noun
              :referent referent )))
        (assign-brackets-to-proper-noun word)
        (setf (cfr-schema cfr) pn-schematic-rule)
        (list cfr)))))


;;;--------------
;;; interjections
;;;--------------

(defun make-interjection-rules (word category referent)
  (if (listp word)
    (let ( rules )
      (dolist (w word)
        (setq rules (append (make-interjection-rules
                            w category referent)
                           rules)))
      rules )
    (else
      (let ((intj-schematic-rule (get-schematic-word-rule :interjection))
            (cfr (define-cfr category (list word)
                   :form category::interjection
                   :referent referent )))
        (assign-brackets-to-interjection word)
        (setf (cfr-schema cfr) intj-schematic-rule)
        (list cfr)))))


;;;--------------
;;; prepositions
;;;--------------

(defun make-preposition-rules (word category referent)
  (if (listp word)
    (let ( rules )
      (dolist (w word)
        (setq rules (append (make-preposition-rules
                            w category referent)
                           rules)))
      rules )
    (else
      (let ((prep-schematic-rule (get-schematic-word-rule :preposition))
            (cfr (define-cfr category (list word)
                   :form category::preposition
                   :referent referent )))
        (assign-brackets-to-preposition word)
        (setf (cfr-schema cfr) prep-schematic-rule)
        (list cfr)))))


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
      (let ((schematic-rule (get-schematic-word-rule :word)) ;; :standalone-word
            (cfr (define-cfr category (list word)           ;; see single-words etf
                   :form category::adjunct  ;; ??
                   :referent referent )))
        (setf (cfr-schema cfr) schematic-rule)
        (assign-brackets-to-standalone-word word)
        (list cfr)))))

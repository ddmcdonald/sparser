;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2020-2021 SIFT LLC. All Rights Reserved
;;;
;;;    File: "comlex-verb-explorations"
;;;  Module: "grammar/model/sl/score/
;;; version: August 2021

;; Started 12/25/20 to collect verbs defined in COMLEX  that occur in
;; the SCORE articles that are not otherwise defined. Extended starting
;; in February to get more information out of the entries for more parts of speech.

(in-package :sparser)

#|
-- comlex-entry  returns the entire entry, all parts of speech

sp> (comlex-entry "fill")
((verb
  (:subc
   ((pp :pval ("with" "from"))
    (part-np-pp :pval ("on" "with") :adval ("out" "up" "in"))
    (part-pp :adval ("in") :pval ("for")) (part-np :adval ("in" "up" "out"))
    (part :adval ("up" "out" "in")) (np-pp :pval ("from" "to" "with")) (np)
    (np-np) (intrans))
   :features ((vveryving :prespart t))))
 (noun))

-- comlex-subcategorization  returns the portion of the entry for one part of speech

sp> (comlex-subcategorization "fill" 'verb)
(verb
 (:subc
  ((pp :pval ("with" "from")) ; pg.74
   (part-np-pp :pval ("on" "with") :adval ("out" "up" "in")) 'pg.101
   (part-pp :adval ("in") :pval ("for")) ;pg.99 prep as advP vs. prepP
   (part-np :adval ("in" "up" "out")) ;pg.95 particle can move 
   (part :adval ("up" "out" "in"))    ;pg.93 'particle'
   (np-pp :pval ("from" "to" "with")) ;pg.77
   (np) ;pg.72
   (np-np) ;pg.73
   (intrans)) ;pg.68
  :features ((vveryving :prespart t)))) ;pg.65

|#


#| Adverb
sp> (comlex-entry "underneath")
((adverb
  (:features ((loc&dir-adv))
   :modif ((pred-adv)
           (clausal-adv :final t :init t)))))

|#

#| Adjective
sp> (comlex-entry "traditional")
((adjective
  (:comparative ("more traditional") 
   :superlative ("most traditional")
   :subc ((extrap-adj-that-s)
          (extrap-adj-for-to-inf-np-omit))
  :features ((gradable)))))

extrap-adj-that-s -- pg.36 sentential complement corresponds to
  an extraposed sentential subject
  "It is traditional that he sells books"

extrap-adj-for-to-inf-np-omit -- pg.45  allows the logical object of the embeded clause
  to occupy subject position of the matrix
    extrap-adj-for-to-inf: "It is traditional for children to fill a box with fresh grass"

|#

(defun find-comlex-intrans () ;; 2,216
  (loop for word in *comlex-verbs-list*
     as entry = (comlex-entry word)
     as verb-section = (assq 'verb entry) ; (verb (...) (:subc ...))
     as top-sexp = (cdr verb-section)
     as subc-exps = (second (assq :subc top-sexp))
     when (assq 'intrans subc-exps)
     collect word))

(defun comlex-subc-forms (word)
  "Search all the pos entries and return the forms of the first one
   with a :subc entry."
  (let ((entry (comlex-entry word))) ;; a list of pos-forms
    (loop for pos-form in entry
       as pos = (car pos-form)
       as top-sexp = (cdr pos-form)
       as subc-exps = (second (assq :subc top-sexp))
       when subc-exps
       return (values pos subc-exps))))

(defun find-comlex-attribute (word attribute)
  "Look up the entry with a :subc, then from the forms return the one
   whose car is the attribute, given as a symbol, e.g. 'adj-pp, 'np"
  (multiple-value-bind (pos forms)
      (comlex-subc-forms word)
    (loop for form in forms
       when (eq (car form) attribute)
       return form)))
       
(defun find-simple-comlex-prepositions (word)
  "Returns a list of strings"
  ;; p-dir and other lists -- pg.54 of reference manual
  (let ((form (find-comlex-attribute word 'pp)))
    (when form ;; e.g. (pp :pval ("from" "on" "upon" "into" "off of"))
      (cadr (memq :pval form)))))


(defgeneric map-comlex-prep-to-mixin (string)
  (:documentation "Given a preposition extracted from comlex, look up
    and return what it should map to in order to be incorporated into the grammar")
  (:method ((pname string))
    (declare (special *prep-to-add-mixin-mapping*))
    (let ((word (resolve pname)))
      (unless word (error "the preposition ~s is not already defined" pname))
      (let ((keyword (intern (string-downcase pname) (find-package :keyword))))
        (unless (typep keyword 'subcat-slot-keyword)
          (error "Preposition ~a is not on the subcat-slot-keyword list" word)
          (let ((form (assq keyword *prep-to-add-mixin-mapping*)))
            (unless form "Need to add data for :~a to the mapping table" keyword)
            form))))))


(defparameter *prep-to-add-mixin-mapping*
  '((:from )
    (:with (with-var) (:with with-var))
    
    ))



;;;;;;;;;;; Code from R3/code/vocabulary-discovery/verb-comlex-subcats

;
;;; To check if a verb can be intransitive:
;;;    (has-intransitive-frame-p <verb>)


;; cadr is the entire entry -- (VERB (:SUBC ... ) ) or
;;                             (VERB (:TENSED ... (:SUBC ... ) ) )
;; cdadr is the list of lists beginning with keywords
(defun entry-body (entry)
  (cdadr entry))



(defmacro cls (v)
  "get comlex subcat for a given verb"
  `(comlex-subcategorization ,v 'verb))

(defun verb-entry-body (entry)
  (getf entry 'verb))

(defun noun-entry-body (entry)
  (getf entry 'noun))

(defun entry-subcat (pos-body)
  "Given the portion of the entry that is particular to a part of speech,
   return its subclause, including the tag: (:subc ...) "
  (cond ((null pos-body) nil)
	((and (consp (car pos-body))
              (eql (caar pos-body) :SUBC))
	 (car pos-body))
	(t (entry-subcat (cdr pos-body)))))

(defun prep-complements (subcat)
  "The argument is the list of clauses that follows :subc. This version
   doesn't pay attention to what verb subclass the prepositions (pval) are
   cited in, so it mixes up particles and multi-term forms (e.g. np-pp)."
  (loop for item in subcat
     appending (getf (cdr item) :pval) into prep-list
     finally (return (delete-duplicates prep-list :test #'equal))))


(defun verb-inflections-from-word (word)
  (let ((vsc (comlex-subcategorization (pname word) 'verb)))
    (if (and (consp (second vsc))
             (or (member :tensed/singular (second vsc))
                 (member :infinitive (second vsc))
                 (member :past-tense (second vsc))))
        (second vsc)
        (pname word))))
  
(defun noun-inflections-from-word (word)
  (let ((vsc (comlex-subcategorization (pname word) 'noun)))
    (if (and (consp (second vsc))
             (member :plural (second vsc)))
        (cons word (second vsc))
        (pname word))))


;; takes a list of words and returns a list of the
;; words and their comlex subcats, e.g.,
;; ("discontinues" (verb (:subc ((np-as-np) (np-pp :pval ("after" "of")) (np)))))
(defun make-subcat-list (word-list)
  (mapcar #'(lambda (x) (list x (cls x))) ; n.b. cls is wired to the verb entry
	  word-list))

;; takes an entry of the form
;;   ("exists" (VERB (:SUBC ((AS-NP) (INTRANS)))))
;; generated by make-subcat-list and returns the list
;; of subcategorization frames
(defmacro verb-subcat-from-entry (entry)
  `(getf
    (second
     (comlex-subcategorization
      ,entry
      'verb))
    :subc))

(defmacro noun-subcat-from-entry (entry)
  `(getf
    (second
     (comlex-subcategorization
      ,entry
      'noun))
    :FEATURES))


;; looks a word's comlex entry up and then grabs
;; the subcat
(defun subcat-from-word (word)
  (cadr (entry-subcat (cdr (cls word)))))



;; True if one of the verb's frames is INTRANS,
;; INTRANS-RECIP, or ITRANS-ELLIPSIS
(defun has-intrans-frame-p (subcat)
  (dolist (item subcat)
    (if (or (eql (car item) 'INTRANS)
	    (eql (car item) 'INTRANS-RECIP)
	    (eql (car item) 'INTRANS-ELLIPSIS))
	(return t)
	nil)))

      
(defun not-in-comlex (word-list)
  (loop for word in word-list
     if (null (comlex-entry word))
     collect word))

;; words in *word-list* that don't have comlex entries
;; many are not being recognized because of affixes
#+ignore(defparameter *not-in-comlex*
  (not-in-comlex *word-list*)) ; see list at bottom of file

(defparameter *transitive-frames*
  (list 'NP
        'NP-NP
        'NP-PP
        'NP-PP-PP
        'NP-NUNITP-TO-RANGE
	'NP-AT-NUNITP-PRED
        'NP-TO-NP
        'NP-FOR-NP
        'PART-NP
	'PART-ING-SC
        'PART-TO-INF-SC
        'PART-NP-PP
        'PART-THAT-S
	'NP-NP-PRED
        'NP-ADJP-PRED 'NP-ADVP-PRED 'NP-PP-PRED
	'NP-VEN-NP-OMIT 'NP-ADJP 'NP-ADVP 'NP-ADV-PP 'NP-PRED
	'NP-AS-NP 'NP-AS-NP-SC 'PART-NP-AS-NP 'NP-PP-AS-NP
	'NP-AS-ING 'NP-AS-ADJP 'NP-AS-IF-S-SUNJUNCT
	'NP-AS-VEN-NP-OMIT 'NP-ING 'NP-ING-OC 'NP-ING-SC
	'NP-P-ING 'NP-P-ING-OC 'NP-P-ING-SC 'NP-TOBE 'NP-INF
	'NP-INF-OC 'FOR-TO-INF 'NP-TO-INF 'NP-TO-INF-OC
	'NP-TO-INF-SC 'NP-TO-INF-VC 'EXTRAP-NP-S 'EXTRAP-TO-NP-S
	'S-SUBJ-S-OBJ 'S 'THAT-S 'S-SUBJUNCT 'NP-S 'NP-WH-S
	'NP-TO-INF-NP-OMIT))
  
(defun transitive-p (subcat)
  (dolist (item subcat)
    (if (member (car item) *transitive-frames*)
	(return t)
	nil)))

(defun not-transitive-p (subcat)
  (not (transitive-p subcat)))
  
(defun pprint-def-cl (def stream)
  (format stream "~%(define-category ~a :specializes ~a"
          (string-downcase (second def))
          (string-downcase (pname (second (member :specializes def)))))
  (when (member :mixins def)
    (princ (string-downcase (format nil "~%     :mixins ~s" (second (member :mixins def))))
           stream))
  (when (member :binds def)
    (format stream "~%     :binds")
    (let ((bindings (second (member :binds def))))
      (format stream "~%      ((~s ~a)"
              (car (car bindings))
              (string-downcase (second (car bindings))))
      (when (cdr bindings)
        (loop for item in  (cdr bindings)
              do (format stream "~%       (~s ~a)"
                         (car item)
                         (string-downcase (second item)))))
      (format stream ")")))
  (format stream "~%     :realization ")
  (let ((realizations (second (member :realization def))))
    (push-debug `(,realizations))
    (format stream "(:~a " (string-downcase (car realizations)))
    (cond ((consp (second realizations))
           (format stream "( ")
           (cond ((stringp (car (second realizations)))
                  (format stream "~s " (car (second realizations))))
                 ((getf  (second realizations) :infinitive)
                  (format stream "~s " (second (member :infinitive (second realizations))))))
           (loop for (key val) on (if (stringp (car (second realizations)))
                                      (cdr (second realizations))
                                      (second realizations))
                 by #'cddr
                 unless (or (equal key :infinitive)
                            (equal val '*none*))
                   do (format stream " ~s ~s" key val))
           (format stream ")~%"))
          (t
           (format stream " ~s" (string-downcase (second realizations)))))
    (loop for (key val) on  (cddr realizations) by #'cddr
          do
             (if (search " " (string-downcase key))
                 (format stream " ~s ~s"
                         (intern (string-upcase key) :keyword)
                         (intern (string-upcase val)))
                 (format stream " :~a ~a"
                     (string-downcase key) val)))
    (format stream ")"))
  (format stream ")~%"))
    



(defun def-cl-verb-form (word)
  "Collects the data that goes into a define-category form as in
   score-verbs.lisp"
  (let* ((subcat (subcat-from-word word))
	 (preps (prep-complements subcat))
	 (not-trans? (not-transitive-p subcat))
	 (realizations
           (loop for prep in preps
                 unless (equalp prep "P-DIR")
                   collect
                   (list
                    (intern (string-upcase prep)
                            (find-package :keyword))
                    (intern (string-upcase prep)
                            (find-package :sp)))))
         (p-dir (member "p-dir" preps :test #'equal)))
	       
    `(define-category ,(cond
                         ((category-named (intern (string-upcase word)))
                          (format t  "~%;;; found existing category ~s in ~s~%"
                                  (intern (string-upcase word))
                                  (loc (category-named (intern (string-upcase word)))))
                          (intern (format nil "~a-CL-VERB" (string-upcase word))))
                         (t
                          (intern (string-upcase word))))
       :specializes comlex-verb
       ,@(when p-dir `(:mixins (with-p-dir)))
       ,@(when (remove "p-dir" preps  :test #'equal)
           `(:binds ,(mapcar (lambda (x) `(,(intern (string-upcase x))
                                           top))
                             (remove "p-dir" preps  :test #'equal))))
       :realization
       (:verb ,(verb-inflections-from-word word)
        :s subject
        ,@(unless not-trans? nil '(:o object))
        ,@(flatten realizations)))))

(defun def-cl-noun-form (word)
  (let* ((subcat (noun-subcat-from-entry word))
	 (preps (prep-complements subcat))
	 (not-trans? (not-transitive-p subcat))
	 (realizations
           (loop for prep in preps
                 unless (equalp prep "P-DIR")
                   collect
                   (list
                    (intern (string-upcase prep)
                            (find-package :keyword))
                    (intern (string-upcase prep)
                            (find-package :sp)))))
         (p-dir (member "p-dir" preps :test #'equal)))
	       
    `(define-category ,(intern (format nil "~a-CL-NOUN" (string-upcase word)))
       #+ignore(cond
                 ((category-named (intern (string-upcase word)))
                  #+ignore
                  (format t  "~%;;; found existing category ~s in ~s~%"
                          (intern (string-upcase word))
                          (loc (category-named (intern (string-upcase word)))))
                  (intern (format nil "~a-CL-NOUN" (string-upcase word))))
                 (t
                  (intern (string-upcase word))))
       :specializes comlex-noun
       ,@(when p-dir `(:mixins (with-p-dir)))
       ,@(when (remove "p-dir" preps  :test #'equal)
           `(:binds ,(mapcar (lambda (x) `(,(intern (string-upcase x))
                                           top))
                             (remove "p-dir" preps  :test #'equal))))
       :realization
       (:noun ,(noun-inflections-from-word word)
              ,@(flatten realizations)))))

(defun write-category-defs-to-file (filename wordlist)
  (with-open-file (outfile filename
			   :direction :output
			   :if-exists :supersede)
    (dolist (w wordlist)
      (print (def-cat-form w) outfile))))


(defun def-cat-form (word)
  (let* ((subcat (subcat-from-word word))
	 (preps (prep-complements subcat))
	 (not-trans? (not-transitive-p subcat))
	 (realizations
	  (mapcar #'list
		  (loop for prep in preps
		     collect (intern (concatenate 'string ":" prep)))
		  preps)))
	       
    `(define-category ,(intern word) :specializes bio-predication
		      :binds ((subject biological)
			      ,(mapcar (lambda (x) `(,(intern x) biological))
				       preps))
		      :realization
		      ,(flatten (append
				 '(:s subject)
				 (if not-trans? nil '(:o object))
				 realizations)))))
			     			     
(defun flatten (l)
  (cond ((null l) nil)
        ((atom l) (list l))
        (t (loop for a in l appending (flatten a)))))


(defun ppdef (def s) 
  (format s "(define-category ~a :specializes ~a~&   :binds"
	  (string-downcase (symbol-name (second def)))
	  (string-downcase (symbol-name (fourth def))))
  (loop for b in (sixth def) 
     do
       (format s "~&(~a ~a)"
	       (string-downcase (symbol-name (car b)))
	       (string-downcase (symbol-name (second b)))))
  (format s ")~&    :realization~&    (:verb ~s"
	  (string-downcase (symbol-name (second def))))
  (loop for case on (eighth def) by #'cddr
     do (format s "~&      :~a ~a" 
		(string-upcase (symbol-name (car case)))(string-upcase (second case))))
  (format s "))~&~&"))


;;; The main utility function for creating definitions of all
;;; previously unknown verbs which have been looked up in COMLEX
(defun write-comlex-verb-defs (&optional (stream t))
  (declare (special *comlex-verbs* *morph-comlex-verbs*))
  (loop for v in (sort (remove-duplicates (append *comlex-verbs* *morph-comlex-verbs*)
                                          :test #'equal)
                       #'string<)
        do
           (pprint-def-cl (def-cl-verb-form v) stream)))

#|
"in favor of" -- "in-favor-of"
"off of" --> "off of"
"out of" --> "out-of"
"in terms of" --> "in terms of"
"ahead of" --> "ahead of"
"up to" --> "up-to"
"according to"
"as to"
|#



;;;;;;; utility functions to establish the defparameters used above
(defun find-comlex-and-morphological-definitions ()
  (defparameter *comlex-verbs*
    (loop for ss  
       in (group-by (sort
                     (mapcar
                      #'(lambda (x) (list (pname (car x)) (second x)))
                      (remove-duplicates
                       (loop for r in *context-free-rules-defined*
                          when (and (null (cdr (cfr-rhs r)))
                                    (member (car (cfr-rhs r)) *from-comlex*) 
                                    (eq 0 (search "VERB" (pname (cat-name (cfr-form r))))))
                          collect
                            (list (stem-form (pname (car (cfr-rhs r))))
                                  (cat-name (cfr-form r)))
                            ) :test #'equal))
                     #'string< :key #'car) ; end of sort call
                    #'car #'second) ; group-by
       when (not (gethash (subseq (car ss) 0 (1- (Length (car ss))))
                          *primed-words*))
       collect (car ss)))

  (defparameter *comlex-other*
    (loop for ss  
            in
            (group-by 
             (sort
              (mapcar
               #'(lambda (x)(list (pname (car x)) (second x)))
               (remove-duplicates
                (loop for r in *context-free-rules-defined*
                      when
                      (and (null (cdr (cfr-rhs r)))
                           (member (car (cfr-rhs r)) *from-comlex*)
                           (not (eq 0 (search "VERB" (pname (cat-name (cfr-form r)))))))
                      collect
                      (list (stem-form (pname (car (cfr-rhs r)))) (cat-name (cfr-form r)))
                      )
                :test #'equal)) 
              #'string< :key #'car)
             #'car #'second)
          when
          (not (gethash (subseq (car ss) 0 (1- (Length (car ss))))
                        *primed-words*))
          collect (car ss)))

  (defparameter *morph-comlex*
    (sort
     (remove-duplicates
      (loop for w in *show-morphs*
            when (or (gethash
                      (pname (stem-form (second w)))*primed-words*)
                     (gethash
                      (pname (second w)) *primed-words*))
              collect (if  (gethash (pname (stem-form (second w))) *primed-words*)
                           (pname (stem-form (second w)))
                           (pname (second w))))
      :test #'equal)                        
     #'string<))

  (defparameter *morph-non-comlex*
    (sort
     (loop for w in *show-morphs*
           unless
           (or (gethash  
                (pname (stem-form (second w))) *primed-words*)
               (gethash
                (pname (second w)) *primed-words*))
           collect (pname
                    (second w)))
     #'string<)))

;; given a list of words and a filename, writes the subcat entries
;; for the words to the specified file
(defun write-subcats-to-file (filename word-list)
  (let ((subcat-list (make-subcat-list word-list)))
    (with-open-file (outfile filename
			     :direction :output
			     :if-exists :supersede)
      (dolist (l subcat-list)
	(print l outfile))))) 


;;;------------------------------------------------------------------------
;;; working through the verbs to get the morphology correct for expansions
;;;------------------------------------------------------------------------

(DEFPARAMETER *COMLEX-VERBS*
  '("abate" "abound" "abuse" "accentuate" "accept" "access" "accommodate" "account" "ache"
    "acquire" "addict" "address" "administer" "admire" "adopt" "advertise" "advise" "advocate"
    "affirm" "afflict" "afford" "agree" "aid" "aim" "alert" "allocate" "alternate" "ameliorate"
    "anger" "angle" "ape" "appeal" "appreciate" "approximate" "arise" "arose" "arouse" "arrange"
    "ascertain" "assault" "assert" "attack" "attain" "aver" "avoid" "backfire" "bag" "balance"
    "ball" "ban" "battle" "bay" "beach" "beaches" "bear" "begin" "behave" "behoove" "being"
    "belittle" "bell" "belong" "benefit" "bespeak" "bespoke" "beware" "bias" "biases" "bill" "bin"
    "blame" "bleach" "blend" "blunt" "blur" "bolster" "bomb" "bottle" "bow" "box" "bracket" "brake"
    "branch" "bre" "break" "bridge" "brief" "bring" "brook" "brought" "bubble" "build" "bullshit"
    "burden" "burke" "bus" "butter" "button" "buy" "bypass" "cable" "calibrate" "call" "calm"
    "campaign" "cap" "career" "cartoon" "cash" "cast" "catch" "caught" "center" "centre"
    "certificate" "chain" "chair" "chase" "chat" "check" "checker" "cheer" "chew" "choose" "circle"
    "cite" "claim" "clam" "class" "classes" "clean" "clear" "clip" "close" "clot" "cloud" "club"
    "coach" "cohere" "coin" "coincide" "coke" "collapse" "comb" "come" "comfort" "comment" "commit"
    "compass" "compel" "comport" "compound" "comprehend" "con" "concert" "concur" "conflict"
    "confront" "conjecture" "connote" "conquer" "contact" "contend" "contour" "contradict"
    "converse" "copyright" "cord" "core" "correct" "corroborate" "cough" "count" "counteract"
    "couple" "course" "cox" "craft" "crash" "crew" "cross" "cruise" "crush" "cultivate" "curve"
    "dare" "daydream" "deal" "debate" "debug" "decay" "decelerate" "decline" "decompose" "decree"
    "deepen" "default" "defend" "deflect" "deliberate" "delineate" "deliver" "deluge" "depart"
    "depict" "deploy" "deserve" "design" "desire" "despair" "destroy" "deviate" "diagnose" "differ"
    "differentiate" "dip" "disagree" "disapprove" "discharge" "discipline" "disclose" "disconnect"
    "discount" "discourage" "discourse" "discover" "discredit" "disentangle" "disgust" "dislike"
    "dismiss" "disprove" "dispute" "disseminate" "distort" "distract" "distress" "distrust"
    "divine" "document" "dodge" "dose" "doubt" "dovetail" "downplay" "draw" "dread" "dream" "drink"
    "dry" "earth" "echo" "egg" "elbow" "embrace" "employ" "empty" "encompass" "encompasses"
    "encounter" "encourage" "endorse" "endure" "enforce" "engage" "enjoy" "enlighten" "enrich"
    "entail" "equal" "err" "escalate" "esteem" "estimate" "evade" "evaluate" "exact" "excel"
    "excuse" "execute" "exempt" "exercise" "expand" "explore" "factor" "fail" "fake" "fall"
    "fashion" "fatigue" "fault" "fear" "fee" "fell" "fence" "fight" "file" "filter" "finance"
    "finger" "flag" "flame" "flatten" "flavour" "flee" "flock" "flood" "floor" "flour" "flow"
    "focus" "fold" "follow" "foot" "force" "forgo" "format" "formulate" "foster" "fox" "fracture"
    "frank" "freelance" "front" "fuck" "fuel" "fulfil" "gad" "game" "garden" "gargle" "garland"
    "gather" "gauge" "gaze" "gesture" "gift" "ginger" "glance" "glimmer" "glimpse" "go" "gong"
    "grab" "grade" "graduate" "grasp" "grave" "gravitate" "greet" "grey" "group" "guarantee"
    "guess" "guide" "gun" "gut" "halve" "ham" "hamper" "hand" "handshake" "hang" "happen" "harden"
    "harm" "harries" "harry" "hazard" "headquarter" "heal" "hear" "heat" "hedge" "heighten" "held"
    "hinder" "hit" "hoax" "hold" "hole" "holiday" "honor" "host" "house" "hug" "hum" "humor"
    "humour" "hunch" "hunches" "hunt" "hurdle" "hurt" "illuminate" "image" "impose" "index"
    "inject" "input" "inspect" "inspire" "instance" "institute" "insult" "inter" "intercept"
    "interest" "interpret" "interview" "invalid" "invalidate" "inverse" "invoke" "irrigate" "jail"
    "jaw" "job" "join" "joke" "jot" "journey" "judge" "keen" "key" "kid" "kiss" "kisses" "kit"
    "knew" "knight" "knit" "know" "labor" "labour" "ladder" "land" "landscape" "last" "laugh"
    "layer" "lessen" "liberate" "license" "lie" "light" "live" "load" "lock" "lodge" "log" "lord"
    "lull" "lure" "machine" "madden" "magnifies" "magnify" "mail" "major" "manage" "mandate"
    "manifest" "manifold" "march" "market" "mask" "master" "maunder" "maximise" "mean" "meet"
    "merit" "message" "mill" "mind" "misconduct" "misread" "miss" "misses" "mistake" "mistrust"
    "mitigate" "moderate" "motivate" "mouth" "mute" "navigate" "necessitate" "neighbor" "neighbour"
    "net" "nettle" "nominate" "nose" "notice" "nuance" "occasion" "offer" "offset" "order"
    "outline" "overcome" "overflow" "overlaid" "overlay" "overload" "override" "package" "page"
    "paid" "pair" "panic" "paper" "parallel" "parcel" "partake" "pass" "pause" "pave" "pension"
    "people" "perceive" "permit" "pet" "peter" "phase" "phone" "pickle" "picture" "piece" "plague"
    "plan" "plot" "point" "police" "polish" "poll" "ponder" "port" "portray" "pose" "posture"
    "potter" "pout" "power" "practice" "prefer" "prejudice" "premise" "prep" "press" "pressure"
    "pretend" "prey" "price" "print" "prize" "proce" "profile" "profit" "program" "progress"
    "prohibit" "project" "prompt" "proposition" "prospect" "protest" "punish" "puzzle" "quarantine"
    "queen" "quest" "quiet" "quit" "quiz" "race" "racket" "raffle" "raft" "rallies" "rally" "rap"
    "reason" "rebel" "rebuke" "rebut" "recall" "receipt" "redefine" "refer" "refine" "reflect"
    "reform" "refuse" "register" "regress" "regresses" "reign" "reinforce" "reject" "relate"
    "remark" "remedies" "remedy" "remember" "remit" "render" "replace" "replies" "reply" "request"
    "rerun" "rescue" "research" "reset" "resonate" "respect" "rest" "restart" "restore" "retail"
    "review" "revolt" "revolve" "reward" "ridge" "right" "rim" "ripple" "rise" "risk" "rival"
    "room" "root" "rose" "rough" "round" "row" "rub" "rule" "ruminate" "rumor" "sacrifice" "saddle"
    "safeguard" "salute" "sandwich" "save" "savvy" "scan" "scatter" "scent" "schedule" "scheme"
    "school" "score" "screech" "search" "season" "secure" "segment" "sell" "send" "sense" "sent"
    "service" "settle" "sever" "sex" "shadow" "shake" "shallow" "shape" "shave" "shelter" "shelve"
    "shin" "ship" "shock" "shoe" "shop" "shore" "shorten" "shot" "shrink" "shut" "sift" "sign"
    "sin" "sip" "sit" "skew" "ski" "skyrocket" "sleep" "slight" "slur" "smart" "smell" "smoke"
    "smolder" "smooth" "snack" "snap" "sneeze" "snow" "snowball" "soap" "sole" "solicit" "solve"
    "sound" "source" "speak" "speculate" "spend" "spike" "spill" "spin" "split" "sport" "spot"
    "spread" "sprinkle" "squire" "stake" "stall" "stand" "staple" "star" "station" "steel" "steep"
    "stem" "stereotype" "stick" "stone" "store" "str" "strand" "strengthen" "stress" "strike"
    "strip" "struck" "stud" "stump" "style" "stymie" "sub" "submit" "subscribe" "subside" "suffer"
    "suffice" "sum" "sun" "sup" "supplies" "supply" "surge" "survey" "swab" "swear" "swing"
    "tackle" "take" "tan" "taste" "teach" "telephone" "thread" "threat" "throw" "thumb" "tide"
    "tolerate" "toll" "total" "towel" "tower" "trace" "track" "travel" "trend" "trip" "troll"
    "troop" "trouble" "trump" "turn" "twitter" "type" "uncover" "underestimate" "undermine"
    "underrate" "underscore" "undertake" "undervalue" "uniform" "unravel" "update" "uphold" "upset"
    "usher" "vary" "visit" "voice" "wait" "waive" "wake" "wall" "war" "wave" "weather" "weekend"
    "welcome" "wheel" "wild" "win" "wipe" "wish" "wishes" "wonder" "woo" "word" "worship" "wrap"
    "wrote" "zone"))

#+ignore  ;; For  use when assembling the list
(setq *comlex-verbs*
      (sort
       (remove-duplicates
        (loop for w in *COMLEX-VERBS*
              when (or (second (gethash w *primed-words*))
                       (second (gethash (stem-form w) *primed-words*)))
                collect
                (or (second (gethash w *primed-words*))
                    (second (gethash (stem-form w) *primed-words*))))
        :test #'equal)
       #'string<))

(defparameter *morph-comlex-verbs*
  '("abide" "absent" "absorb" "accessed" "accompany" "accomplish" "accord" "accuse" "achieve"
    "acknowledge" "adapt" "addressed" "adjust" "admit" "affiliate" "aged" "aggregate" "alarm" "align"
    "allay" "allege" "alleviate" "alter" "amaze" "amount" "annotate" "annoy" "anticipate" "appal"
    "appraise" "apprehend" "approach" "approve" "argue" "arm" "arrive" "ascend" "ascribe" "assign"
    "assist" "assure" "attacks" "attempt" "attend" "attest" "attract" "author" "automate" "average"
    "await" "award" "back" "be" "bereave" "bike" "blind" "bombard" "boost" "bound" "bowl" "brace"
    "bridges" "broadcast" "browse" "bud" "burgeon" "burn" "can" "cancel" "canceled" "capitalize"
    "capture" "categorize" "caution" "cease" "celebrate" "censor" "certify" "channel" "charge"
    "cherish" "circulate" "clarify" "classify" "cleanse" "click" "coat" "codify" "cohabit"
    "collaborate" "collar" "collect" "combat" "combine" "commence" "commission" "communicate"
    "commute" "compete" "complement" "complete" "complicate" "comprise" "compute" "conceal" "conceive"
    "concentrate" "conclude" "condense" "condition" "conform" "confuse" "congregate" "connect"
    "consent" "consist" "conspire" "constrain" "constrict" "construe" "consult" "consume"
    "contaminate" "contemplate" "converge" "convey" "coordinate" "cop" "counsel" "counter"
    "counterbalance" "crease" "cripple" "criticize" "crystallize" "cure" "curtail" "cut" "dash" "dawn"
    "debunk" "decide" "declare" "decry" "dedicate" "deem" "defect" "defer" "define" "defy" "delay"
    "delude" "demand" "denote" "deny" "depressed" "deprive" "designate" "destine" "devalue"
    "devastate" "devise" "devote" "dial" "dilute" "disable" "disappear" "discard" "discern"
    "discontent" "discriminate" "disengage" "disinfect" "dislocate" "dispense" "display" "dispose"
    "disregard" "dissatisfy" "dissent" "distance" "distribute" "disturb" "diverge" "diversify"
    "divorce" "donate" "down" "draft" "dun" "dupe" "dwarf" "dying" "ease" "eat" "educate" "elapse"
    "elect" "elicit" "elope" "emanate" "embed" "emerge" "emphasize" "enact" "end" "endanger"
    "endeavor" "engineer" "enrol" "ensure" "entertain" "entitle" "entrance" "envision" "equalize"
    "equip" "erase" "evacuate" "evidence" "evoke" "evolve" "exacerbate" "exaggerate" "exasperate"
    "exceed" "excite" "exclude" "exert" "exhaust" "exhibit" "expedite" "experience" "expire" "exploit"
    "expose" "extend" "externalize" "extract" "extrapolate" "fabricate" "face" "favor" "feed" "field"
    "fingers" "finish" "fix" "flash" "flourish" "fly" "forecast" "forego" "formalize" "found" "frame"
    "freeze" "frustrate" "fry" "fund" "gain" "gamble" "gear" "generalize" "govern" "grant" "ground"
    "guaranteed" "hail" "halt" "handle" "harnessing" "hatch" "head" "heed" "help" "hide" "hijack"
    "hire" "hoard" "hospitalize" "ignite" "ignore" "imagine" "imbue" "immerse" "immunize" "impend"
    "implement" "implore" "incite" "incline" "incur" "individualize" "infect" "infer" "inflate"
    "inhabit" "inoculate" "inquire" "instil" "institutionalize" "instruct" "integrate" "intensify"
    "intermix" "interrupt" "intersect" "intertwine" "intervene" "introduce" "introvert" "inundate"
    "invent" "invest" "invite" "issue" "jeopardize" "jog" "justify" "lag" "lament" "launch" "layers"
    "lean" "leave" "lend" "lift" "listen" "litter" "locate" "loosen" "love" "lying" "manipulate"
    "manufacture" "mark" "marry" "matter" "maximize" "memorize" "merge" "mine" "minimize" "mirror"
    "misbehave" "misguide" "mislead" "misrepresent" "missed" "misunderstand" "mix" "model" "modeled"
    "monitor" "mount" "multiply" "neglect" "nest" "normalize" "notify" "nudge" "nullify" "nurse"
    "nurture" "obey" "oblige" "obscure" "occupy" "omit" "open" "oppose" "opt" "organize" "orient"
    "outweigh" "overarch" "overburden" "overcrowd" "overestimate" "overlook" "overreact"
    "overshadowed" "overtax" "overwhelm" "own" "pacify" "pack" "paint" "patent" "patronize" "pay"
    "perfect" "perish" "perpetrate" "personalize" "persuade" "pertain" "phrase" "pick" "play" "poison"
    "polarize" "politicize" "pollute" "pool" "populate" "portion" "position" "post" "postpone" "pound"
    "practise" "praise" "preclude" "predispose" "preoccupy" "prescribe" "presume" "prevail" "proceed"
    "processed" "profiles" "promise" "pronounce" "provoke" "publicize" "publish" "punch" "purchase"
    "pursue" "qualify" "quantify" "quote" "rag" "rail" "ration" "rationalize" "realize" "reap"
    "reassessing" "reassure" "receive" "recommend" "reconcile" "reconstruct" "record" "recount"
    "recover" "rectify" "recycle" "redact" "refrain" "refund" "regain" "regard" "reinstate" "relax"
    "relay" "remind" "rename" "renewed" "reopen" "repeat" "reproduce" "reprogram" "repute" "resemble"
    "reserve" "reshape" "resolve" "restrain" "restrict" "rethink" "retire" "retract" "retrieve"
    "revise" "reword" "rid" "rinse" "rivet" "rush" "sanction" "satisfy" "saturate" "scale" "scare"
    "scrap" "scrutinize" "see" "seek" "separate" "shade" "share" "shield" "shift" "shout" "shower"
    "shun" "side" "signaled" "signify" "simplify" "simulate" "sink" "situate" "size" "skewed" "slide"
    "soak" "socialize" "sort" "span" "spare" "specialize" "specify" "speed" "spray" "square" "stagger"
    "standardize" "stay" "steer" "step" "stock" "stop" "strain" "strap" "stratify" "stream"
    "streamline" "strive" "structure" "struggle" "stun" "subtract" "succumb" "suit" "supervise"
    "supplement" "suppose" "surface" "surprise" "surround" "survive" "suspect" "suspend" "sweep"
    "tail" "tailor" "talk" "tally" "tap" "terrify" "theorize" "threaten" "thrilling" "thrive" "tickle"
    "tied" "tighten" "time" "tingle" "tint" "tire" "touch" "towers" "traffic" "trafficking" "train"
    "transmit" "trim" "trust" "try" "types" "underpin" "underwent" "unearth" "unfold" "unify" "unite"
    "unleash" "unpack" "unraveled" "urge" "vacation" "vaccinate" "vacillate" "value" "ventilate"
    "vest" "violate" "visualize" "volunteer" "vote" "walk" "wander" "warrant" "wash" "watch" "weaken"
    "wear" "weigh" "weight" "whip" "wire" "withdraw" "witnessed" "worry" "yawn" "yelled" "zones"))

#+ignore  ;; For  use when assembling the list
(setq *morph-comlex-verbs*
      (sort
       (remove-duplicates
        (loop for w in *morph-comlex-verbs*
              when (or (second (gethash w *primed-words*))
                       (second (gethash (stem-form w) *primed-words*)))
                collect
                (or (second (gethash w *primed-words*))
                    (second (gethash (stem-form w) *primed-words*))))
        :test #'equal)
       #'string<))



(defparameter *word-list*
  '(
  "access" "accomplish" "address" "adhere" "adopt" "agree"
  "alternate" "answer" "approximate" "arches" "argues" "arise"
  "array" "ascertain" "assemble" "assess" "attempts"
  "autoradiography" "average" "avoid" "awaits" "ax" "balloon" "bands"
  "becomes" "belongs" "best" "biopsy" "blast" "blot" "blunt"
  "borders" "bottom" "breast" "bred" "bridge" "brings" "bypass"
  "capture" "cases" "center" "chain" "challenge" "channel" "charge"
  "cluster" "color" "compensate" "compounds" "conclude" "conflict"
  "constructs" "contacts" "contribute" "cooperate" "copy" "core"
  "correlates" "counter" "course" "cross" "curves" "cut" "decay"
  "deserve" "develop" "die" "differ" "discontinues" "discover"
  "dishes" "displaces" "doses" "dot" "double" "dry" "duplicate"
  "elicit" "emphasizes" "empty" "enable" "encompasses" "encounters"
  "engage" "equal" "evade" "exaggerate" "excel" "exclude" "exerts"
  "exists" "experiments" "explore" "extracts" "facilitates" "fields"
  "film" "filter" "fit" "flag" "focus" "fork" "fret" "gag" "gain"
  "gel" "gift" "glass" "halt" "ham" "hand" "head" "heat" "helps"
  "highlight" "hinge" "hits" "holes" "host" "ice" "images"
  "immunoblots" "impact" "impart" "includes" "instances" "institute"
  "introduce" "issue" "japan" "joint" "layer" "lends" "lies" "limits"
  "link" "lives" "log" "looks" "lowers" "lynch" "master" "mature"
  "mean" "milk" "mix" "mock" "motor" "muscle" "nickel" "note" "offer"
  "override" "pairs" "parallels" "participates" "patterns" "perk"
  "perturb" "phase" "pierce" "pipes" "plate" "plays" "points"
  "possesses" "precipitates" "produce" "progress" "project" "proof"
  "prove" "pull" "quadruplicate" "question" "rabbit" "rays" "read"
  "reason" "recapitulate" "regards" "relates" "renders" "repair"
  "repeats" "research" "reside" "retard" "reverse" "revert" "rip"
  "room" "rule" "run" "samples" "see" "sense" "sensitize" "serves"
  "services" "set" "shanghai" "share" "shift" "shock" "side" "signs"
  "single" "size" "skin" "slices" "slight" "slope" "smooth" "spaces"
  "specify" "speculate" "spin" "split" "stack" "stem" "stock" "storm"
  "strand" "stress" "stretch" "structures" "sum" "suspend" "tail"
  "talk" "thin" "times" "total" "trace" "transplant" "traps" "trends"
  "trigger" "types" "undergo" "underscores" "utilizes" "visualize"
  "water" "weight" "wells"
  "accelerating" "aging" "aligning" "alkylating" "antagonizing" "arresting"
  "bearing" "changing" "circumventing" "coding" "collaborating"
  "competing" "compiling" "complementing" "comprising" "connecting"
  "covering" "damaging" "distinguishing" "disturbing" "dividing"
  "docking" "enabling" "exceeding" "funding" "grafting" "harboring"
  "heterodimerizing" "implying" "interesting" "inviting" "ionizing"
  "joining" "lacking" "loosening" "meeting" "monitoring"
  "neutralizing" "noncoding" "offspring" "overlying" "packaging"
  "profiling" "promising" "quantifying" "quantitating" "ranging"
  "recognizing" "reprobing" "residing" "rotating" "scaffolding"
  "sequestering" "shuttling" "silencing" "splicing" "strengthening"
  "striking" "suffering" "supporting" "surprising" "surrounding"
  "switching" "tempting" "trading" "transforming" "varying"
  "warranting" "working"
  "abolished" "accepted" "accompanied" "achieved" "acknowledged"
  "addressed" "allowed" "altered" "annealed" "annotated" "appeared"
  "applied" "approved" "ascribed" "asked" "assayed" "assessed"
  "assisted" "attributed" "augmented" "autophosphorylated"
  "autoradiographied" "baked" "behaved" "believed" "biopsied"
  "biotinylated" "boiled" "buffered" "calculated" "called" "carried"
  "centered" "centrifuged" "characterized" "cleaned" "cleaved"
  "cloned" "coated" "coiled" "coimmunoprecipitated" "collected"
  "colocalized" "combined" "compartmentalized" "complexed"
  "complicated" "composed" "conducted" "configured" "confirmed"
  "conjugated" "consisted" "continued" "contrasted" "converted"
  "coordinated" "corrected" "counted" "counteracted" "counterstained"
  "coupled" "cultivated" "declared" "defined" "degraded" "dehydrated"
  "denatured" "derived" "desalted" "designated" "designed" "detached"
  "determined" "developed" "dialyzed" "differentiated" "diluted"
  "directed" "discarded" "disconnected" "discovered" "discussed"
  "displaed" "dissolved" "documented" "downmodulated" "drafted"
  "elicited" "eliminated" "embedded" "emerged" "endowed" "enriched"
  "ensured" "evaluated" "evidenced" "excised" "exhibited" "expanded"
  "exposed" "extended" "failed" "filed" "fixed" "focused" "followed"
  "formed" "fractionated" "fragmented" "fused" "generalized"
  "harvested" "heightened" "held" "immortalized" "immunoblotted"
  "immunocompromised" "immunostained" "implicated" "imported"
  "imposed" "incubated" "infected" "infiltrated" "initiated"
  "injected" "inserted" "integrated" "intercepted" "intercrossed"
  "interfaced" "inverted" "irradiated" "isolated" "judged"
  "juxtaposed" "kept" "labeled" "led" "left" "lessened" "limbed"
  "limited" "listed" "loaded" "localized" "located" "lost" "lowered"
  "lysed" "made" "mapped" "marked" "matched" "mentioned" "mirrored"
  "mixed" "mobilized" "modeled" "monitored" "mounted" "multiplied"
  "named" "normalized" "numbered" "opposed" "organized"
  "overproduced" "paralleled" "permeabilized" "persisted"
  "photographed" "piloted" "plotted" "pooled" "postfixed"
  "postulated" "precleared" "precluded" "preformed" "prepared"
  "pretreated" "prioritized" "processed" "prolonged" "prompted"
  "pronounced" "propagated" "proteolyzed" "published" "pulled"
  "pulverized" "purchased" "quantitated" "questioned" "reasoned"
  "recommended" "recorded" "recovered" "reexamined" "referred"
  "reflected" "rejoined" "rendered" "replaced" "repressed" "rescued"
  "resolved" "responded" "restored" "restricted" "resuspended"
  "retained" "returned" "reviewed" "rinsed" "rose" "scanned" "scored"
  "scraped" "screened" "searched" "seeded" "separated" "sequenced"
  "showed" "solubilized" "sonicated" "sought" "specialized"
  "sponsored" "spotted" "stained" "started" "starved" "stopped"
  "stored" "stratified" "subcloned" "subjected" "supervised"
  "supplemented" "survived" "synthesized" "termed" "terminated"
  "thought" "took" "tranfected" "transfected" "transferred"
  "triggered" "unaffected" "unappreciated" "unchanged" "uncleaved"
  "uncovered" "undefined" "unexplored" "unidentified" "united"
  "unmatched" "unpaired" "unpublished" "unrelated" "unselected"
  "unstimulated" "untranslated" "untreated" "vortexed" "washed"
  "weakened" "wondered" "zymed"
    ))

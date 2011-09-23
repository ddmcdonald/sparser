;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;; Retrieved from ftp://cs.nyu.edu/pub/html/comlex.html/comlex-util.lisp
;; 7/23/11 -- ddm

;; This is the comlex utilities package. See the README for further
;; instructions.

(defvar *query-input-file* "COMLEX-SYNTAX-2.2")
(defvar *corpus* "CORPUS-FILE")

;;; (DOKEYLIST (key-var value-var list) . body)
;;; If 'list' is a property list of key/value pairs, executes 'body' once
;;; for each pair, with 'key-var" bound to the property name and 'value-var'
;;; to the associated value.

(defmacro dokeylist (loop-index &rest body)
  (if (and (consp loop-index)
	   (eq (length loop-index) 3)
	   (symbolp (car loop-index))
	   (symbolp (cadr loop-index)))
      (let ((key-var (car loop-index))
	    (value-var (cadr loop-index))
	    (list (caddr loop-index)))
	`(do (($key-list$ ,list (cddr $key-list$)))
	     ((null $key-list$) nil)
	     (if (null (cdr $key-list$))
		 (error "Odd number of elements in argument of dokeylist")
	       (let ((,key-var (car $key-list$))
		     (,value-var (cadr $key-list$)))
		 ,@body))))
    (error "Ill-formed argument to dokeylist")))

;;; (EVERY-KEY (key-var value-var list) condition)
;;; If 'list' is a property list of key/value pairs, evaluates 'condition' once
;;; for each pair, with 'key-var" bound to the property name and 'value-var'
;;; to the associated value.  Returns t if 'condition' always evaluates to true,
;;; else returns nil.

(defmacro every-key (loop-index condition)
  (if (and (consp loop-index)
           (eq (length loop-index) 3)
           (symbolp (car loop-index))
           (symbolp (cadr loop-index)))
    (let ((key-var (car loop-index))
          (value-var (cadr loop-index))
          (list (caddr loop-index)))
      `(do (($key-list$ ,list (cddr $key-list$)))
           ((null $key-list$) t)
         (if (null (cdr $key-list$))
           (error "Odd number of elements in argument of dokeylist")
	       (let ((,key-var (car $key-list$))
                 (,value-var (cadr $key-list$)))
             (unless ,condition (return nil))))))
    (error "Ill-formed argument to every-key")))

;; REGULAR-VERB-INFLECTIONS computes the four verb inflections which would be
;; produced by default by the COMLEX verb macro (for present tense (3rd person
;; singular), past tense, present participle, and past participle).

(defun regular-verb-inflections (word)
  (list (noun-plural word)
        (verb-past word)
        (verb-prespart word)
        (verb-past word)))

;;; --- Inflectional morphology routines ---

;;; NOUN-PLURAL forms the plural of a noun following the rule given in
;;; the Oxford A.L.D.:  if the word ends in -s, -z, -x, -ch, or -sh,
;;; add "es";  if it ends in -y (except for -<vowel>y), change the -y to -ies;
;;; otherwise add "s" (all exceptions to this rule are listed explicitly
;;; in the OALD).  The argument and returned value are strings.
;;; This function is also used to compute the 3rd person singular of verbs.

(defun noun-plural (root)
  (let ((lastchar (subseq root (- (length root) 1)))
        (last2char (subseq root (max (- (length root) 2) 0))))
    (if* (or (member lastchar '("s" "z" "x") :test #'string-equal)
             (member last2char '("ch" "sh") :test #'string-equal))
      then   (concatenate 'string root "es")
      elseif (member last2char '("ay" "ey" "iy" "oy" "uy")
                     :test #'string-equal)
      then   (concatenate 'string root "s")
      elseif (string-equal lastchar "y")
      then   (concatenate 'string (subseq root 0 (- (length root) 1)) "ies")
      else   (concatenate 'string root "s"))))

;;; VERB-PAST forms the past tense and past participle for verbs.  It drops
;;; final "e", changes final "y" to "i" (unless the "y" is preceded by a
;;; vowel), and then adds "ed".

(defun verb-past (root)
  (let ((lastchar (subseq root (- (length root) 1)))
	(last2char (subseq root (max (- (length root) 2) 0))))
       (if*    (member last2char '("ay" "ey" "iy" "oy" "uy")
		       :test #'string-equal)
	then   (concatenate 'string root "ed")
	elseif (string-equal lastchar "y")
	then   (concatenate 'string (subseq root 0 (- (length root) 1)) "ied")
	elseif (string-equal lastchar "e")
	then   (concatenate 'string root "d")
	else   (concatenate 'string root "ed"))))

;;; VERB-PRESPART forms the present participle for verbs.  It drops a final
;;; "e", if present, and then adds "-ing".

(defun verb-prespart (root)
  (let ((lastchar (subseq root (- (length root) 1))))
       (if (string-equal lastchar "e")
	   (concatenate 'string (subseq root 0 (- (length root) 1)) "ing")
	 (concatenate 'string root "ing"))))

;;; Following due to A. Meyers

;; Routine for adding suffixes beginning with a vowel
;; First step - modify base
;; look at last three letters 1 = last, 3 = 3rd to last

;; If 1 = y, change to i
;; If 1 = vowel and 1 = intial letter of suffix, remove 1
;;      Else if 1 = vowel, do not alter base
;; If 1 = h, w, x, do not alter base
;; If 1 and 2 = consonant do not alter base
;; If 3 =  consonant 2 = vowel and 1 = consonant, double consonant
;; If 3 and 2 = vowel and 1 = consonant - do not alter base

;; affix specific info
;; If  1 = s and 2 = vowel, no er/est ending - e.g. "nervous"

;; Second step - add ending

;; Note that there are some systematic exceptions based on 
;; whether the final syllable of a pollysylabic word is stressed -
;; this is hard to deal with orthographically. Unstressed final
;; syllables do not geminate, e.g, "submitted" vs, "vomited"
;; One possible way of dealing with these that Suzanna mentioned is 
;; to distinguish polymorphemic roots from monomorphemic using
;; a list of basic morphemes - polymorphemic have final stress and
;; do geminate, but monomorphemic do not, e.g. submit = sub + mit,
;; but vomit does not = vo + mit.

;; setting/acessing types

(defvar *vowels* (make-hash-table :test 'equal))

(defvar *consonants* (make-hash-table :test 'equal))

;; the default is that each entry in the hash table has a
;; t value, but if specified, subclasses of vowels can
;; be noted as well.

(defun add-vowel (letter &key (subtype t))
  (declare (special *vowels*))
  (setf (gethash letter *vowels*) subtype))


(loop for letter in '("a" "e" "i" "o" "u" "y" "A" "E" "I" "O" "U" "Y") do
      (add-vowel letter))

;; note I am considering y both a consonant and a vowel (for now)
;; also, other so-called semi-vowels I will just list as consonants
;; y predictably a consonant if followed by vowel in the same syllable ??? except dye -> dying, die dying
;; i.e., h, l, r, w   

;; the default is that each entry in the hash table has a
;; t value, but if specified, subclasses of consonants can
;; be noted as well.

(defun add-consonant (letter &key (subtype t))
  (declare (special *consonants*))
  (setf (gethash letter *consonants*) subtype) )

(loop for letter in '("b" "c" "d" "f" "g" "h" "j" "k" "l" "m"
			  "n" "p" "q" "r" "s" "t" "v" "w" "x" "y" "z" 
			  "B" "C" "D" "F" "G" "H" "J" "K" "L" "M" "N" 
			  "P" "Q" "R" "S" "T" "V" "W" "X" "Y" "Z"
		     )  do
      (add-consonant letter))

(defmacro is-a-consonant (letter) 
  `(and (gethash ,letter *consonants*)) )

(defmacro is-a-vowel (letter) 
  `(and (gethash ,letter *vowels*) t ))

;; note that y ends up being considered a vowel for this function

(defun fix-base-to-add-suffix (base suffix &key (initial-letter-suffix (subseq suffix 0 1)))
  (declare (special *consonants* *vowels*))
  (cond ((and (is-a-vowel initial-letter-suffix)
	      (>= (length base) 3))
	 (let ((lastchar (subseq base (- (length base) 1)))
	       (2lastchar (subseq base
				  (- (length base) 2)
				  (- (length base) 1)))
	       (3lastchar (subseq base
				  (- (length base) 3)
				  (- (length base) 2))))
	   (cond ((string-equal lastchar "y")
		  (cond 
		   ;; additional possible condition, which we are marking as
		   ;; irregular
		   ;;		   ((string-equal 2lastchar "e")
		   ;;			 (concatenate 'string
		   ;;			   (subseq base 0 (- (length base) 2))
		   ;;			   "i"))
		   ((is-a-vowel 2lastchar) base)
		   (t (concatenate 
			  'string
			(subseq base 0 (- (length base) 1))
			"i"))))
		 ((member lastchar '("h" "w" "x") :test #'string-equal)
		  base)
		 ((and (member suffix '("er" "est") :test #'string-equal)
		       (string-equal (subseq base
					     (- (length base) 3))
				     "ous"))
		  nil)
		 ;; affix-specific for er and est - 
		 ;; there is no comparative/superlative forms for
		 ;; adjectives ending in "ous" - I hope there are
		 ;; no verbs ending in "ous" or the ones that
		 ;; do do not take "er" endings - also
		 ;; I am ignoring the phrase "curiouser and curiouser"
		 ;; from Alice in Wonderland/through the looking glass
		 
		 ;; add in other suffix specific stuff here *****
		 
		 ((is-a-vowel lastchar)
		  (cond ((string-equal lastchar initial-letter-suffix)
			 (subseq base 0 (- (length base) 1)))
			(t base)))
		 ((is-a-consonant lastchar)
		  (cond ((is-a-consonant 2lastchar)
			 base)
			((is-a-vowel 2lastchar)
			 (cond ((is-a-vowel 3lastchar)
				base)
			       ((is-a-consonant 3lastchar)
				(concatenate
				    'string
				  base
				  lastchar))
			       (t nil)))
			(t nil)))
		 (t nil))))
	((< (length base) 3) nil)
	((is-a-consonant initial-letter-suffix)
	 (error "A general routine for suffixes beginning with a consonant has not been written"))
	(t (error "The suffix ~s does not begin with a consonant or a vowel" 
		  suffix))))

;; call following with "er" (compr) & "est". BASE & SUFFIX are string type.

;; note this may need to be altered depending on which suffixes
;; are to be added and how they vary - this assumes that changes
;; are made to the base entirely, not to suffix

(defun add-suffix (base suffix &key (newbase (fix-base-to-add-suffix base suffix)) )
  (if newbase (concatenate 'string newbase suffix)))

(defun list-of-strings (list)
    (and (listp list)
	 (loop for member in list always (stringp member))))

(defmacro pushend (elt list)
  `(setf ,list (nconc ,list (list ,elt))) )

(defun get-orth (entry)
  (getf (cdr entry) :orth))

(defun listify (item)
  (if (listp item) item (list item)))

;;**57
(defun get-orths-morphs (entry)
  (let (POS word key-words regular-morphology irregular-morphology)
    (setf POS (car entry))
    (setf word (get-orth entry))
    (setf key-words (case POS
		      ('Noun '(:PLURAL :SINGULAR))
		      ('Adjective '(:SUPERLATIVE :COMPARATIVE))
		      ('Verb '(:PAST :PASTPART :PRESPART :3PSING 
			       :1PSING :PASTSING :PASTPLURAL :PLURAL))
		      ('ORDINAL '(:PLURAL))
		      ))
    (if (equal POS 'Adjective)
	(let ((gradable (first (member 'gradable 
				       (second (member :features entry))
				       :test #'(lambda (x y) 
						 (equal x (car y)))))))
	  (when (not (second gradable))
	    (setf key-words (remove :SUPERLATIVE 
				    (remove :COMPARATIVE key-words))))))
    (if (and (member :pastsing entry)
	     (member :pastplural entry))
	(setf key-words (remove :past key-words)))
    ;; special rule for "be"
    (setf irregular-morphology 
      (loop for key-word in key-words append
	    (listify
	     (when (member key-word entry)
	       (setf key-words (remove key-word key-words))
	       (second (member key-word entry))))))
    (if (eq POS 'verb) (setf key-words (remove :plural key-words)))
    (setf regular-morphology
      (loop for feature in key-words append
	    (listify (case feature
		       (':PLURAL (noun-plural word))
		       (':3PSING (noun-plural word))
		       (':SINGULAR word)
		       (':COMPARATIVE (add-suffix word "er"))
		       (':SUPERLATIVE (add-suffix word "est"))
		       (':PAST (verb-past word))
		       (':PASTPART (verb-past word))
		       (':PRESPART (verb-prespart word))
		       (otherwise nil)
		       ))))
    (remove '*none* (reverse (remove-duplicates (cons word (append irregular-morphology
							  regular-morphology)) :test #'equal)))
    ))

(defun get-words (file)
  (with-open-file (instream file :direction :input)
    (let ((output nil))
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(push (get-orth entry) output))output)))

(defun word-list-to-file (input outfile)
  (let ((word-list (cond ((stringp input) (get-words input))
			 ((listp input) input)
			 )))
    (with-open-file (outstream outfile :direction :output 
		     :if-does-not-exist :create :if-exists :append)
      (loop for word in word-list do
			(write-line word outstream)))))

(defun get-morphs (infile &optional outfile)
    (let ((output nil))
  (with-open-file (instream infile :direction :input)
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(setq output (append (get-orths-morphs entry) output))))
  (setq output (reverse (remove-duplicates output :test #'equal)))
  (if (and output outfile)
    (with-open-file (outstream outfile :direction :output 
		     :if-does-not-exist :create :if-exists :append)
      (loop for word in output do (write-line word outstream))))
  output))

(defun get-morph-correspondences (infile outfile)
  (with-open-file (instream infile :direction :input)
    (with-open-file 
	(outstream outfile :direction :output :if-exists :error)
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(write (reverse (get-orths-morphs entry))
	       :stream outstream :pretty nil)
	(write-line "" outstream)))))

(defun first-in-list (little-list big-list)
  (if little-list
      (and (equalp (first little-list) (first big-list))
	   (first-in-list (cdr little-list) (cdr big-list)))
    t))
   
(defun subseq-of-list (little-list big-list)
  (if little-list
      (let ((start-position (position (car little-list) big-list :test #'equalp)))
	(if start-position
	    (if (first-in-list (cdr little-list) (subseq big-list (+ 1 start-position)))
		t
	      (subseq-of-list little-list (cdr big-list)))
	  nil))
    t))

(defun entry-member (symbol entry)
  (cond ((and (atom entry) (equalp symbol entry)) t)
	((and (listp entry) (member symbol entry :test #'equalp)) t)
	((listp entry) 
	 (loop for subentry in entry thereis (entry-member symbol subentry)))))  

(defun match-entry (entry symbol-list)
  (loop for symbol in symbol-list thereis (entry-member symbol entry)))
  

(defun get-entries-which-match (infile outfile symbols &key (symbol-list (listify symbols)))
  (with-open-file (instream infile :direction :input)
    (with-open-file (outstream outfile :direction :output :if-exists :error)
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(if (match-entry entry symbol-list)
	    (and (write entry :stream outstream :pretty nil)
		 (write-char #\newline outstream))
	  )))))

;;; infile = a file of comlex entries 
;;; outfile = the intended output file
;;; symbols may be a list of comlex features/subcat symbols
;;;  or a single feature/subcat symbol
;;; keywords and their values should not be used, eg.,
;;; (get-words-with-feature (infile outfile '(VSAY THAT-S S)))
;;; or (get-words-with-feature (infile outfile 'VSAY))
(defun get-words-with-feature
    (infile outfile symbols &key (symbol-list (listify symbols)))
  (with-open-file (instream infile :direction :input)
    (with-open-file (outstream outfile :direction :output :if-exists :error)
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(if (match-entry entry symbol-list)
	    (write-line (get-orth entry) outstream)
	  )))))

(defun extract-pos (infile outfile pos)
  (with-open-file (instream infile :direction :input)
    (with-open-file (outstream outfile :direction :output :if-exists :error)
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(if (eq (car entry) pos)
	    (and (write entry :stream outstream :pretty nil)
		 (write-char #\newline outstream))
	  )))))

(defun match-orth (entry word-list)
  (if (member (get-orth entry) (listify word-list) :test #'equalp) t))

(defun get-entries-for-words (infile outfile words)
  (if (and (stringp words)
	   (probe-file words))
      (setf words (file-list-to-list words))
    (setf words (listify words)))
  (with-open-file (instream infile :direction :input)
    (with-open-file (outstream outfile :direction :output 
		     :if-does-not-exist :create :if-exists :append)
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(if (match-orth entry words)
	    (and (write entry :stream outstream :pretty nil)
		 (write-char #\newline outstream))
	  )))))

(defun minus-tag (entry)
  (let ((tag-position (position :tags entry)))
    (cond (tag-position (append (subseq entry 0 tag-position)
			     (subseq entry (+ 2 tag-position))))
	  (t entry))))

(defun remove-tags (in-file out-file)
  (with-open-file (instream in-file :direction :input)
    (with-open-file (outstream out-file :direction :output :if-exists :error)
	(do ((entry (read instream nil '*eof*)
		    (read instream nil '*eof*)
		    ))
	    ((eq entry '*eof*))
	  (cond ((member :tags entry)
		 (write (minus-tag entry) :stream outstream :pretty nil)
		 (write-char #\newline outstream)
		 )	       
		(t (write entry :stream outstream :pretty nil)
		   (write-char #\newline outstream)))))))

(defun list-or-string (list)
  (cond ((stringp list) list)
	((eq (length list) 1) (car list))
	(t list))
  )

(defun file-list-to-list (in-file)
  ;; assumes that file contains one item per line
  (let (list)
    (with-open-file (instream in-file :direction :input)
      (do ((entry (read-line instream nil '*eof*)
		  (read-line instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(setf list (append (listify entry) list))))
    list))

;; reads in all entries as lisp objects
;; and returns a list
(defun read-all-entries (in-file)
  (let (list)
    (with-open-file (instream in-file :direction :input)
      (do ((entry (read instream nil '*eof*)
		  (read instream nil '*eof*)
		  ))
	  ((eq entry '*eof*))
	(setf list (nconc list (list entry)))))
    list))

(defun directory-name-of (string)
  (let ((pos (search "/" string :from-end t)))
    (if pos (subseq string 0 (+ pos 1)) ""))
  )

(defun print-entries-into-file (list-of-entries outfile)
  (with-open-file (outstream outfile :direction :output :if-exists :error)
    (dolist (entry list-of-entries)
      (write entry :stream outstream :pretty nil)
      (write-char #\newline outstream))))

(defun sort-merged-into-files (infile &optional (name "all"))
  (let ((entries (read-all-entries infile))
	(verb-entries (list))
	(noun-entries (list))
	(adj-entries (list))
	(adv-entries (list))
	(number-entries (list))
	(other-entries (list))
	)
    (dolist (entry entries)
      (if (getf (cdr entry) :number)
	  (setf number-entries (nconc number-entries (list entry)))
      (case (car entry)
	('verb (setf verb-entries (nconc verb-entries (list entry))))
	('noun (setf noun-entries (nconc noun-entries (list entry))))
	('adjective (setf adj-entries (nconc adj-entries (list entry))))
	('adverb (setf adv-entries (nconc adv-entries (list entry))))
	(otherwise (setf other-entries (nconc other-entries (list entry)))))))
    (if verb-entries (print-entries-into-file
		      verb-entries
		      (concatenate 'string
			(directory-name-of infile)
			name
			".verb")))
    (if noun-entries (print-entries-into-file
		      noun-entries
		      (concatenate 'string
			(directory-name-of infile)
			name
			".noun")))
    (if adj-entries (print-entries-into-file
		     adj-entries
		     (concatenate 'string
		       (directory-name-of infile)
		       name
		       ".adjective")))
    (if adv-entries (print-entries-into-file
		     adv-entries
		     (concatenate 'string
		       (directory-name-of infile)
		       name
		       ".adverb")))
    (if other-entries (print-entries-into-file
		       other-entries
		       (concatenate 'string
			 (directory-name-of infile)
			 name
			 ".core.other")))
    (if number-entries (print-entries-into-file
		       number-entries
		       (concatenate 'string
			 (directory-name-of infile)
			 name
			 ".number")))
    ))

;;;  PPRINT-TFS prints a COMLEX typed feature structure with appropriate
;;;  indentation.  It should normally be run with 
               (setq *print-right-margin* 80)

(defun pprint-tfs (tfs &optional stream)
  (if (consp tfs)
      (pprint-logical-block (stream tfs :prefix "(" :suffix ")")
			    ;; write type field
			    (write (car tfs) :stream stream)
			    ;; if there are features, write them aligned
			    (when (cdr tfs)
			      (write-char #\space stream)
			      (pprint-fs* (cdr tfs) stream)))
    (write tfs :stream stream)))

;;; PPRINT-FS* writes a feature-value list (without enclosing parentheses)

(defun pprint-fs* (fs stream)
  (pprint-logical-block (stream fs)
			;; iterate over feature/value pairs
			(loop
			  ;; write feature name
			  (write (pprint-pop) :stream stream)
			  (pprint-exit-if-list-exhausted)
			  (write-char #\space stream)
			  ;; write value of feature
			  (pprint-feature-value (pprint-pop) stream)
			  (pprint-exit-if-list-exhausted)
			  (pprint-newline :mandatory stream))))

;;; PPRINT-FEATURE-VALUE writes the value of a feature.  It assumes that
;;; each feature can have one of four possible forms:
;;;    1. an atom (symbol or string)
;;;    2. a list of strings -- written as a single line
;;;    3. a single tfs
;;;    4. a list of tfs's -- written aligned vertically

(defun pprint-feature-value (val stream)
  (if* (atom val)
     then (write val :stream stream)
   elseif (stringp (car val))
     then (write val :stream stream)
   elseif (symbolp (car val))
     then (pprint-tfs val stream)
     else (pprint-logical-block (stream val :prefix "(" :suffix ")")
				(loop
				  (pprint-tfs (pprint-pop) stream)
				  (pprint-exit-if-list-exhausted)
				  (pprint-newline :mandatory stream)))))

(defun beautify-file (in-file out-file)
  (with-open-file (stream in-file :direction :input)
    (with-open-file (outstream out-file :direction :output)
      (do ((line (read stream nil '*eof*)
		 (read stream nil '*eof*)))
	  ((eq line '*eof*))
	(pprint-tfs line outstream)
	(write-char #\newline outstream)
	)))
  )

;; converts a pretty printed file into a non-printy-printed one

;; needs read-all-entries from "filters" file
(defun uglify (infile outfile)
  (let ((entries (read-all-entries infile)))   
    (with-open-file (outstream outfile :direction :output :if-exists :error)
      (dolist (entry entries)
	(write entry :stream outstream :pretty nil)
	(write-line "" outstream)))))  

;;;                              INVERSE

;;;  Generates an inverted COMLEX dictionary (an index by feature)

(defvar *feature-table* (make-hash-table :test #'equal))

(defun inverse (infile outfile)
  (with-open-file (*outstream* outfile :direction :output
		   :if-exists :supersede)
    (declare (special *outstream*))
    (invert-dictionary infile)
    (print-inverse)))

(defun invert-dictionary (dict &optional (pos 'verb))
  (with-open-file (instream dict :direction :input)
    (clrhash *feature-table*)
    (do ((entry (read instream nil '*eof*)
		(read instream nil '*eof*)))
	((eq entry '*eof*))
      (if (eq (car entry) pos)
	  (inverse-entry entry)))))

(defun invert-tags-and-dictionary (dict all &optional (pos 'verb))
  (with-open-file (instream dict :direction :input)
    (clrhash *feature-table*)
    (clrhash *tag-feature-table*)
    (do ((entry (read instream nil '*eof*)
		(read instream nil '*eof*)))
	((eq entry '*eof*))
      (when (eq (car entry) pos)
	(inverse-entry entry)
	(invert-tags entry all)
	))))

(defun inverse-entry (defn)
  (let ((pos (car defn))
	(orth (getf (cdr defn) :orth))
	(features (getf (cdr defn) :features))
	(subc (getf (cdr defn) :subc))
	)
    (post-entry pos nil nil orth)
    (dolist (feature (append features subc))
      (write-feature feature orth))))

(defun write-feature (feature orth)
  (let ((feature-name (car feature))
	(feature-props (cdr feature)))
    (post-entry feature-name nil nil orth)
    (dokeylist (key value feature-props)
	       (if (atom value)
		   (post-entry feature-name key value orth)
		 (dolist (v value)
		   (if (atom v)
		       (post-entry feature-name key v orth)
		     (format t "Error in entry ~A" orth)))) )))

(defun post-entry (feature sub-feature value word)
  (push word
	(gethash (list feature sub-feature value) *feature-table*)))

(defun print-inverse (&aux features)
  (declare (special *outstream*))
  (maphash #'(lambda (key value) (push key features))
	   *feature-table*)
  (setq features (sort features #'smaller-feature))
  (dolist (feature features)
    (format  *outstream* "~%~%~S~%" (if (second feature) 
					feature
				      (first feature)))
    (let ((words (sort (gethash feature *feature-table*)
		       #'string-lessp)))
      (write words :stream *outstream* :right-margin 80))))

(defun smaller-feature (feature1 feature2)
  (or (string-lessp (first feature1) (first feature2))
      (and (eq (first feature1) (first feature2))
	   (or (null (second feature1))
	       (string-lessp (second feature1) (second feature2))
	       (and (eq (second feature1) (second feature2))
		    (string-lessp (third feature1) (third feature2)))))))

;; makes an inverse tag dictionary

(defvar *tag-feature-table* (make-hash-table :test #'equal))

(defun post-tag-entry (feature sub-feature value word)
  (push word
	(gethash (list feature sub-feature value) *tag-feature-table*)))

(defun shorten-other (string)
  (setf string (string-trim '(#\TAB #\Space #\Newline) string))
  (subseq string 0 (or (position-if #'(lambda (x) (member x '(#\Space #\Newline #\TAB))) string) (length string)))
  )

(defun bad-other (string)
  (or (search "ungram" string)
      (search "cogna" string))
  )

(defun collect-tag-features (entry &optional (all nil))
  (let (output 
	other
	(tags (getf (cdr entry) :tags)))
    (dolist (tag tags)
      (setf tag 
	(if (stringp (getf (cdr tag) :label))
	    (read-from-string (getf (cdr tag) :label))
	  (getf (cdr tag) :label))
	)
      (if (eq (car tag) 'no-class)
	  (setf tag (cddr tag)))
      (setf other (getf (cdr tag) :other-not-dict))
      (if other (setf (getf (cdr tag) :other-not-dict)
		  (setf other (shorten-other other))))
      (unless (or (and (not all)
		       (or (eq (first tag) 'bad-label)
			   (getf (cdr tag) :figurative)
			   (getf (cdr tag) :sublang)
			   (bad-other other)
			   ))
		  (member tag output :test #'equalp))
	(setf output (push tag output)))   
      )
    output
    )
  )


(defun tag-invert-dictionary (infile all &optional (pos 'verb))
  (with-open-file (instream infile :direction :input)
    (clrhash *tag-feature-table*)
    (do ((entry (read instream nil '*eof*)
		(read instream nil '*eof*)))
	((eq entry '*eof*))
      (if (eq (car entry) pos)
	  (invert-tags entry all))
      )
    )
  )   

(defun key-value-list-p (x)
  (or (null x)
      (and (keywordp (car x))
	   (key-value-list-p (cddr x)))))

(defun typed-fs-p (x)
  (and (atom (car x))
       (key-value-list-p (cdr x))))

(defun invert-tags (entry &optional (all nil))
  (let ((tag-features (collect-tag-features entry all))
	(orth (getf (cdr entry) :orth))
	)
    (when tag-features
    (dolist (feature tag-features)
      (let ((feature-name (car feature))
	    (feature-props (cdr feature)))
	(post-tag-entry feature-name nil nil orth)
	(dokeylist (key value feature-props)
		   (cond ((atom value)
			  (post-tag-entry feature-name key value orth))
			 ((typed-fs-p value)
			  (post-tag-entry 
			   feature-name key (car value) orth))
			 (t (dolist (v value)
			      (if (atom v)
				  (post-tag-entry feature-name key v orth)
				(format t "Error in entry ~A" orth))))) )))) 
    )
  )

;; inverse-query program

;; (defvar *nouns* (get-words "All.noun"))

(defun get-files-from-directory (directory)
  (with-open-stream (instream (run-shell-command
			       (concatenate 'string "ls -1 " directory)
			       :wait nil :output :stream))
    (do ((item (read-line instream nil '*eof*)
	       (read-line instream nil '*eof*))
	 (file-list nil))
	((eq item '*eof*) file-list)
      (push (concatenate 'string directory "/" item) file-list))))

(defun set-equal (set1 set2)
  (let ((result t))
    (dolist (item set1 result)
      (cond ((member item set2 :test #'equal)
	     (setf set2 (delete item set2 :test #'equal)))
	    ((null item) t)
	    (t (return (setf result nil))))
      )
    (and result (null set2))))

(defun feature-equal (feature1 feature2)
  (cond ((or (atom feature1) (atom feature2))
	 (equal feature1 feature2))
	(t  (or (equal feature1 feature2)
		(and (equal (car feature1) (car feature2))
		     (or (and (null (second feature2))
			      (null (third feature2)))
			 (and (null (second feature1))
			      (null (third feature1)))))))))	   


(defun set-intersect (set1 set2 &optional (features nil))
  (let (output)
     (if features
	 (dolist (item set1)
	   (if (member item set2 :test #'feature-equal)
		       (push item output)
	       ))
       (dolist (item set1)
	 (if (member item set2 :test #'equal)
		     (push item output))))
     output))

(defun set-union (set1 set2)
  (remove-duplicates (append set1 set2) :test #'equal))

(defun break-out (feature &optional (tag nil))
  (if feature
      (let ((rest (subseq feature 3)))
	(cons (get-feature-set (subseq feature 0 3) :quiet t :tag tag)
	      (if rest (break-out (cons (car feature) (subseq feature 3))))))))

(defun divide-pvals (feature &optional (tag nil))
  (let ((pvals (third feature))
	(root (subseq feature 0 2))
	)
    (loop for pval in pvals collect
	  (get-feature-set (append root (list (list pval))) 
			   :quiet t :tag tag)))
  )

(defun iterate-set-intersect (list-of-lists)
  (if (eq (length list-of-lists) 1) 
      (car list-of-lists)
    (iterate-set-intersect
     (cons (set-intersect (first list-of-lists) (second list-of-lists))
	   (subseq list-of-lists 2))))
  )
;; ** 57 - make sure I check the *feature-table*

(defvar *p-dir-list* '("about" "across" "against" "along" "around" "behind"
		       "below" "beneath" "between" "beyond" "by" "down"
		       "from" "in" "inside" "into" "off" "on" "onto" 
		       "out" "out of" "outside" "over" "past" "through"
		       "throughout" "to" "toward" "towards" "up" "up to" 
		       "via"))

(defvar *p-loc-list* 
    '("above" "about" "across" "along" "around" "at"
      "behind" "below" "beneath" "beside" "between" 
      "by" "down" "in" "inside" "into" "near" "next to" 
      "on" "onto" "out" "out of" "outside" "over" 
      "through" "throughout" "under" "upon" "within" ))
;; on and in or 5 of the above

(defvar *prep-list*     
    '("p-dir" "without" "within" "with" "via" "upon"
      "up to" "up" "unto" "under" "towards" "toward" 
      "to" "till" "throughout" "through" "pending" 
      "past" "over" "outside" "out of" "out" "onto" 
      "on" "off of" "off" "of" "next to" "near" 
      "like" "into" "inside" "in favor of" "in" 
      "from" "for" "due to" "down" "despite" "by" 
      "beyond" "between" "beside" "beneath" "below" 
      "behind" "before" "at" "around" "amongst" 
      "among" "along" "against" "after" "across"
      "according to" "above" "about"))

(defvar *adval-list* 
    '("up" "together" "through" "over" "out" "open" "on" "off" "in" "forward"
 "forth" "down" "by" "back" "away" "aside" "around" "apart" "along" "across"
 "about"))

(defun iterate-set-union (list-of-lists)
  (remove-duplicates (apply #'append list-of-lists) :test #'equal))

(defun only-resolution (feature &optional (tag nil))
  (if (member "p-loc-dir" (third feature))
      (setf feature
	(append 
	 (subseq feature 0 2)
	 (list
	  (remove-duplicates 
	   (append (remove "p-loc-dir" (third feature) :test #'equal)
		   *p-loc-list*))))))
  (let ((negative 
	 (append (subseq feature 0 2)
		 (list (set-difference 
			(case (second feature)
			  (:pval *prep-list*)
			  (:pval1 
			   '("at" "for" "from" "of" "to" "with" 
			     "among" "between" '*none*))
			  (:adval *adval-list*))
			(listify (third feature))
				 :test #'equal)))))
    (set-difference
     (iterate-set-intersect
      (loop for item in (third feature) collect
	    (get-feature-set (append (subseq feature 0 2) (list item)) :quiet t)))
     (get-feature-set (append (subseq feature 0 2) (list negative)) 
		      :quiet t
		      :tag tag)
     :test #'equal)
    ))

(defun minimum-number-pval (feature &optional (tag nil))
  (if (member "p-loc-dir" (third feature) :test #'equal)
      (setf feature
	(append 
	 (subseq feature 0 2)
	 (list
	  (remove-duplicates 
	   (append (remove "p-loc-dir" (third feature) :test #'equal)
		   *p-loc-list*) :test #'equal)))))
  (let (list
	no-dups
	result
	(number (first (third feature)))
	)
    (setf feature (append (subseq feature 0 2)
			  (list
			   (cdr (third feature)))))
    (setf list (apply #'append (divide-pvals feature tag)))
    (setf no-dups (remove-duplicates list :test #'equal))
    (dolist (item no-dups)
      (if (>= (count item list :test #'equal) number)
	  (push item result)))
    result
    )
  )

(defun minimum-number (feature-list number &optional (tag nil))
  (let ((list (apply #'append 
		     (loop for item in feature-list collect
			   (get-feature-set item :quiet t :tag tag))))
	no-dups
	result)
    (setf no-dups (remove-duplicates list :test #'equal))
    (dolist (item no-dups)
      (if (>= (count item list :test #'equal) number)
	  (push item result)))
    result
    )
  )

;;; info: 1. length (default) 2. abbrev. (default) or set
;;; 3. optional output-file 4. optional input-file (only if 3)
	 
(defun get-feature-set 
    (feature &key (print nil) (outfile nil) (quiet nil) (tag nil))
  (cond ((stringp feature)
	 (unless outfile (error "You can't have an infile without an outfile"))
	 (with-open-file (instream feature :direction :input)
	   (do ((line (read-line instream nil '*eof*)
		      (read-line instream nil '*eof*)))
	       ((eq line '*eof*))
	     (cond 
	      ((eq 0 
		   (position 
		    #\; (string-trim '(#\Tab #\Space #\Newline)
				     line)))
	       (with-open-file 
		   (outstream outfile :direction :output 
		    :if-does-not-exist :create :if-exists :append)
		 (write-line line outstream)
		 ))
	      ((< (length line) 2) nil)
	      ((listp (read-from-string line))
	       (get-feature-set (read-from-string line) 
				:print print :outfile outfile :tag tag)
	       )))))
	((listp feature)
	 (let (not output (feature2 feature))
	   (setf output
	     (cond ((and (eq (car feature2)
			     'tag) 
			 (cdr feature2))
		    (get-feature-set (second feature2)
				     :quiet t
				     :tag t)
		    )
		   ((eq (car (listify feature2)) 'and)
		    (dolist (item (cdr feature2))
		      (when (and (listp item)
				 (eq (car item) 'not))
			(setf not 
			  (remove-duplicates (append (get-feature-set 
						      (second item) 
						      :quiet t
						      :tag tag)
						     not)))
			(setf feature2 (remove item feature2)))
		      )
		    (set-difference 
		     (iterate-set-intersect 
		      (loop for item in (cdr feature2) collect
			    (get-feature-set item :quiet t :tag tag)))
		     not
		     :test #'equal)
		    )
		   ((eq (car (listify feature)) 'or)
		    (iterate-set-union
		     (loop for item in (cdr feature) collect
			   (get-feature-set item :quiet t :tag tag)))
		    )
		   ((numberp (car (listify feature)))
		    (minimum-number (cdr feature) (car feature) tag)
		    )
		   ((eq (car (listify feature)) 'not)
		    (error "NOT operator can only be embedded under AND"))
		   ((eq (car (listify feature)) 'only)
		    (error "ONLY operator can only modify the value of a key word"))
		   ((eq (length (listify feature)) 1)
		    (gethash (list (car (listify feature)) nil nil)
			     (if tag *tag-feature-table* *feature-table*)))
		   ((eq (length (listify feature)) 3)
		    (cond ((and (listp (third feature))
				(eq (car (third feature))
				    'only))
			   (only-resolution (append (subseq feature 0 2)
						    (list (cdr (third feature)))) tag))
			  ((and (listp (third feature))
				(numberp (car (third feature))))
			   (minimum-number-pval feature tag)
			   )
			  ((and (listp (third feature))
				(> (length (third feature)) 1))
			   (iterate-set-union (divide-pvals feature tag)))
			  ((listp (third feature))
			   (get-feature-set 
			    (append (subseq feature 0 2) 
				    (list (first (third feature)))) 
			    :quiet t
			    :tag tag))
			  ((equal (third feature) "p-loc-dir")
			   (get-feature-set (append (subseq feature 0 2)
						    (list *p-loc-list*))
					    :quiet t
					    :tag tag))
			  (t (gethash feature 
				      (if tag 
					  *tag-feature-table*
					*feature-table*)))))
		   ((and (> (length (listify feature)) 3)
			 (oddp (length (listify feature))))	 
		    (iterate-set-intersect (break-out feature tag))
		    )
		   (t (error "Something is not right with get-feature-set - feature = ~s"
			     feature))))
	   (when outfile
	     (with-open-file 
		 (outstream outfile :direction :output 
		  :if-does-not-exist :create :if-exists :append)
	       (pprint-tfs feature outstream)
	       (write-char #\newline outstream)
	       (write-line 
		(format nil "Length of Output = ~s " 
			(length output)) outstream)
	       (print-in-groups-of-n output outstream 4)
	       (write-char #\newline outstream)
	       ))
	   (when (and output (not quiet))
	     (write-line (format nil "Length of Output = ~s " (length output)))
	     (write-line ""))
	   (if print (print output) output))				      
	 )
	(t (error "something is wrong with your input: ~s" feature))))

(defun print-in-groups-of-n (list stream number)
  (when list
    (dolist (item (subseq list 0 number))
      (write item :stream stream)
      (write-char #\space stream))
    (write-line "" stream)
    (print-in-groups-of-n (subseq list number) stream number)))


(defun input-dictionary-file 
    (&key (file *query-input-file*) (pos 'verb) (tag t) (all nil))
  (if tag (invert-tags-and-dictionary file all pos)
    (invert-dictionary file pos)))



;; ** programs for printing tags/citations ***

(defconstant line-length 100)
(defconstant max-lines 2)
(defconstant line-length2 50)
(defconstant max-lines2 4)

(defvar *sgml-symbols* '("doc" "docno" "dd" "so" "txt" "hl"
		       "co" "in" "s" "p" "/doc" "/docno"
		       "/dd" "/so" "/txt" "/hl" "/co" "/in"
		       "/s" "/p" "DOC" "DOCNO" "DD" "SO"
		       "TXT" "HL" "CO" "IN" "S" "P" "/DOC"
		       "/DOCNO" "/DD" "/SO" "/TXT" "/HL" "/CO"
		       "/IN" "/S" "/P")
  )

(defvar *possible-treebank-tags* '("CC" "CD" "DT" "EX" "FW" "IN"
				   "JJ" "JJR" "JJS" "LS" "MD" "NN"
				   "NNS" "NP" "NPS" "PDT" "POS" "PP"
				   "PP$" "PRP" "RB" "RBR" "RBS" "RP" "SYM" "TO"
				   "UH" "VB" "VBD" "VBG" "VBN" "VBP"
				   "VBZ" "WDT" "WP" "WP$" "WRB"))

(defun eliminate-sgml-treebank-symbols (string)
  (let ((less-than-pos (position #\< string))
	(greater-than-pos)
	(slash-pos (position #\/ string))
	next-space)
    (cond ((and slash-pos (or (and less-than-pos (< slash-pos less-than-pos))
			      (not less-than-pos)))
	   (setf next-space  (find-next-space 
			      (subseq string slash-pos)))
	   (if next-space (setf next-space (+ 1 slash-pos
					      next-space)))
	   (cond ((and next-space
		       (member (subseq string (+ 1 slash-pos) next-space)
			       *possible-treebank-tags* :test #'equalp))
		  (concatenate 'string 
		    (subseq string 0 slash-pos)
		    " "
		    (eliminate-sgml-treebank-symbols
		     (subseq string (+ 1 next-space)))
		    ))
		 ((and slash-pos 
		       (member (subseq string (+ 1 slash-pos))
			       *possible-treebank-tags* :test #'equalp))
		  (eliminate-sgml-treebank-symbols
		   (subseq string 0 (- slash-pos 1))))
		 ((and slash-pos
		       (>= (+ 2 slash-pos) (length string)))
		  (eliminate-sgml-treebank-symbols string))
		 (slash-pos (concatenate 'string
			      (subseq string 0 (+ 1 slash-pos))
			      (eliminate-sgml-treebank-symbols
			       (subseq string (+ 2 slash-pos)))))
		 (t (eliminate-sgml-treebank-symbols string)))
	   )
	  (less-than-pos
	   (setf next-space  (find-next-space 
			      (subseq string less-than-pos)))
	   (if next-space (setf next-space (+ 1 less-than-pos
					      next-space)))
	   (setf greater-than-pos (position 
				   #\> (subseq string (+ less-than-pos 1))))
	   (if greater-than-pos (setf greater-than-pos 
				  (+ 1 less-than-pos greater-than-pos)))
	   (cond ((and next-space
		       greater-than-pos
		       (member (subseq string (+ 1 less-than-pos) next-space)
			       *sgml-symbols* :test #'equalp))
		  (concatenate 'string 
		    (subseq string 0 less-than-pos)
		    " "
		    (eliminate-sgml-treebank-symbols 
		     (subseq string (+ 1 greater-than-pos)))
		    ))
		 ((and less-than-pos
		       (>= (+ 2 less-than-pos) (length string)))
		  (eliminate-sgml-treebank-symbols string))
		 (less-than-pos (concatenate 'string 
				  (subseq string 0 (+ 1 less-than-pos))
				  (eliminate-sgml-symbols
				   (subseq string (+ 2 less-than-pos)))))
		 (t (eliminate-sgml-treebank-symbols string))))
	  (t string))
    )
  )

(defun find-first-instance (string substring)
  (let ((position (search substring string :test #'equalp))
	(length (length substring))
	)
    (if position
	(cond ((eq (+ length position) (length string)) position)
	      ((alpha-char-p
		(character (subseq string (+ position length)
				   (+ position length 1)
				   )))
	       (let ((next (find-first-instance 
			    (subseq string (+ position length))
			    substring)))
		 (if next (+ position length next))))
	      (t position)))))

(defun emphasize1 (key string which-one)
  ;; all caps and spaces around key + use replace-subseqs-in-list to get all instances
      (let ((first-instance (find-first-instance string key)))
	(if first-instance	
	    (if (or (not which-one) (= which-one 1))
		(setf string
		  (concatenate 'string (subseq string 0 first-instance)
			       "_" (string-upcase key) "_"
			       (subseq string (+ (length key) first-instance))))
	      (setf string (concatenate 'string 
			     (subseq string 0 (+ (length key)
						 first-instance))
			     (emphasize1 key 
					 (subseq string 
						 (+ (length key)
						    first-instance))
					 (- which-one 1))))))
	string)
      )

(defun find-next-non-alpha (string)
  (position-if #'(lambda (x) (not (or (alpha-char-p x)
				      (numberp x)))
			 ) 
	       string))

(defun get-word-from-position (word-position sentence)
  (setf sentence (subseq sentence word-position))
  (let ((next-position (find-next-non-alpha sentence)))
    (subseq sentence 0 next-position))
  )

(defun replace-subseqs-in-string 
    (string oldsubstring newsubstring)
  (let ((position (search oldsubstring string :test #'equalp))
	(length (length oldsubstring))
	)
    (if position
	(cond ((eq (+ length position) (length string))
	       (concatenate 'string (subseq string 0 position) newsubstring))
	      ((alpha-char-p
		(character (subseq string (+ position length)
				   (+ position length 1)
				   )))
	       (concatenate 'string 
		 (subseq string 0 (+ position length))
		 (replace-subseqs-in-string
		  (subseq string (+ position length))
		  oldsubstring newsubstring)))
	      ((eq position 0) (concatenate 'string
				 newsubstring 
				 (replace-subseqs-in-string 
				  (subseq string length) 
				  oldsubstring newsubstring)))
	      (t (concatenate 'string 
		   (subseq string 0 position)
		   newsubstring
		   (replace-subseqs-in-string (subseq string (+ position (length oldsubstring))) oldsubstring newsubstring))))
      string)))

	  
(defun emphasize (keys string)
  ;; all caps and spaces around key + use replace-subseqs-in-list to get all instances
  (let ((new-keys (loop for key in keys collect
			(concatenate 'string "_" (string-upcase key) "_"))))
    (loop for key in (listify keys) for new-key in new-keys do
	  (setf string
	    (replace-subseqs-in-string string key new-key)) ))
  string)

(defun find-space-in-string-preceding (string n)
  (if (>= n (length string)) (setf n (- (length string) 1)))
  (cond ((<= n 0) 0)
	((eq (char string n) #\space) n)
	(t (find-space-in-string-preceding string (- n 1)))))

(defun find-next-space (string)
  (position-if #'(lambda (x) (member x '(#\Tab #\Space #\Newline #\> #\<)))
	       (subseq string 1)))

(defun eliminate-sgml-symbols (string)
  (let ((less-than-pos (position #\< string))
	(greater-than-pos)
	next-space)
    (when less-than-pos 
      (setf next-space  (find-next-space 
			 (subseq string less-than-pos)))
      (if next-space (setf next-space (+ 1 less-than-pos
					 next-space)))
      (setf greater-than-pos (position 
			      #\> (subseq string (+ less-than-pos 1))))
      (if greater-than-pos (setf greater-than-pos 
			     (+ 1 less-than-pos greater-than-pos)))
      )
    (cond ((and next-space
		greater-than-pos
		(member (subseq string (+ 1 less-than-pos) next-space)
			*sgml-symbols* :test #'equalp))
	   (concatenate 'string 
	     (subseq string 0 less-than-pos)
	     ;;	     (string-trim '(#\space #\tab #\newline #\>) 
	     ;;			  (eliminate-sgml-symbols
	     ;;			   (subseq string (+ 1 next-space))))
	     " "
	     (eliminate-sgml-symbols (subseq string (+ 1 greater-than-pos)))
	     ))
	  ((and less-than-pos
		(>= (+ 2 less-than-pos) (length string)))
	   string)
	  (less-than-pos (concatenate 'string 
			   (subseq string 0 (+ 1 less-than-pos))
			   (eliminate-sgml-symbols
			    (subseq string (+ 2 less-than-pos)))))
	  (t string))))


(defun eliminate-treebank-symbols (string)
  (let ((slash-pos (position #\/ string))
	next-space)
    (when slash-pos
      (setf next-space  (find-next-space 
			 (subseq string slash-pos)))
      (if next-space (setf next-space (+ 1 slash-pos
					 next-space)))
      )
    (cond ((and next-space
       		(member (subseq string (+ 1 slash-pos) next-space)
			*possible-treebank-tags* :test #'equalp))
	   (concatenate 'string 
	     (subseq string 0 slash-pos)
	     " "
	     (eliminate-treebank-symbols
	      (subseq string (+ 1 next-space)))
	     ))
	  ((and slash-pos 
	       (member (subseq string (+ 1 slash-pos))
		       *possible-treebank-tags* :test #'equalp))
	   (subseq string 0 (- 1 slash-pos)))
	  ((and slash-pos
		(>= (+ 2 slash-pos) (length string)))
	   string)	  
	  (slash-pos (concatenate 'string
		       (subseq string 0 (+ 1 slash-pos))
		       (eliminate-treebank-symbols
			(subseq string (+ 2 slash-pos)))))
	  (t string))))

(defun fixup (string words)
  (cond ((stringp string)
	 (setf string (eliminate-sgml-symbols string))
	 (setf string (eliminate-treebank-symbols string))
	 (let (positions position)
	   (dolist (word (listify words))
	     (setf position (search word string :test #'equalp))
	     (if (not position) (setf words (remove word words :test #'equal)))
	     (if position (push position positions)))
	   (if (null positions) 
	       (show_error (format nil "None of the words ~s appear in string ~% ~s" words string))
	     (if (>= (setf position (apply #'min positions)) line-length2)
		 (setf string (emphasize words 
					 (subseq string (max 0 (- position line-length)))))
	       (setf string (emphasize words string)))))
	 (do* ((char-num 0) (line-num 0) (result "") 
	       (next-char-num (find-space-in-string-preceding 
			       string (min (+ line-length2 char-num) 
					   (- (length string) 1)))))
	     ((>= line-num max-lines2) 
	      (if (eq #\newline (char string (- (length string) 1)))
		  result
		(concatenate 'string result "
")))
	   (setf result (concatenate 'string result 
				     (subseq string char-num next-char-num) 
				     "
"))
	   (setf char-num next-char-num)
	   (setf next-char-num (find-space-in-string-preceding 
				string (min (+ line-length2 char-num) 
					    (- (length string) 1))))
	   (setf line-num (+ line-num 1))
	   ))
	(t string)))

(defun print-tag (position)
 (let* ((start-position (max (- position (/ (* line-length max-lines) 2)) 0))
	 (word-position (- position start-position))
	 )
  (with-open-file (instream *corpus* :direction :input)
    (file-position instream start-position)
    (do ((result ""))
	((>= (length result) (* (+ 1 max-lines) line-length))
	 (eliminate-sgml-treebank-symbols
	  (concatenate 'string (subseq result 0 word-position)
		       (emphasize1
			(get-word-from-position word-position result)
			(subseq result word-position) 1))))
      (setf result (concatenate 'string result 
				(read-line instream nil '*eof*)
				" "))))))

(defun print-tags (file outfile &optional (sort (list)))
  (let ((list-of-entries (read-all-entries file))
	word
	words
	label
	)
    (with-open-file (outstream outfile :direction :output :if-exists :error)
      (dolist (entry list-of-entries)
	(setf word (get-orth entry))
	(setf words (get-orths-morphs entry))
	(write-line (format nil "Tags for word ~s" word) outstream)
	(write-line "*********************************************" outstream)
	(write-line " " outstream)
	(dolist (tag (getf (cdr entry) :tags))
	  (setf label (getf (cdr tag) :label))
	  (if (stringp label) (setf label (read-from-string label)))
	  (when (or (not sort)
		    (member (car label) sort))
	    (write-line (format nil "Class: ~s Byte-number: ~s"
				label
				(getf (cdr tag) :byte-number)
				) outstream)
	    (write-line " " outstream)
	    (write (fixup (print-tag 
			   (getf (cdr tag) :byte-number)) words)
		   :stream outstream :pretty nil)
	    (write-line " " outstream)
	    )))
      )))

(defun print-tags-with-labels (infile outfile labels)
  (setf labels (listify labels))
  (let ((list-of-entries (read-all-entries infile))
	word
	old-word
	words
	label
	)
    (with-open-file (outstream outfile :direction :output :if-exists :error)
      (dolist (entry list-of-entries)
	(setf word (get-orth entry))
	(setf words (get-orths-morphs entry))
	(dolist (tag (getf (cdr entry) :tags))
	  (setf label (getf (cdr tag) :label))
	  (if (equal (car label) 'no-class)
	      (setf label (getf (cdr label) :name)))
	  (when (member label labels :test 
			#'(lambda (x y) (or (eq x y)
					    (eq (car (listify x))
						y))))
	    (unless (equal word old-word)
	      (write-line (format nil "Tags for word ~s" word) outstream)
	      (write-line "*********************************************" outstream))
	    (setf old-word word)
	(write-line " " outstream)
	    (write-line (format nil "Class: ~s Byte-number: ~s"
				label
				(getf (cdr tag) :byte-number)
				) outstream)
	    (write-line " " outstream)
	    (write (fixup (print-tag
			   (getf (cdr tag) :byte-number)) words) 
		   :stream outstream :pretty nil)
	    (write-line " " outstream)
	    )))
      )))
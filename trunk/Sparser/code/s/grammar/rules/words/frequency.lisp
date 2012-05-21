;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1996,2010-2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;; 
;;;     File:  "frequency"
;;;   Module:  "rules;words:"
;;;  Version:  0.4 March 2012

;; initiated 10/90
;; 3/21/92 Added capitalization information to the dummy words
;; (1/11/94 v2.3) modernized it all
;; 0.1 (6/12) switch'ified the runtime word-checking routine.
;; 0.2 (2/27/95) cleaned up loose ends.
;;     (6/26/96) moved from [analyzers;doc:] to [grammar;rules:words:]
;; 0.3 (6/9/10) Hacking *current-article* so we can to tf/idf analyses
;; 0.4 (6/19/10) Folding in Porter Stemmer. 6/30 tweaking that and the
;;     printers. 7/15/10 implementing tracking freq in different documents.
;;     7/23-25 folding in #<document> object. Refining ...8/16.
;;     7/28/11 Abstracted out def-word to its own file. 3/31/12 fixed fn call.

(in-package :sparser)

;;;------------
;;; parameters
;;;------------

(unless (boundp '*stem-words-for-frequency-counts*)
  (defparameter *stem-words-for-frequency-counts* nil
    "If not nil, we apply the Porter Stemmer to each (non-function) word
     and use the stem it returns as the word that we count."))

(unless (boundp '*include-function-words-in-frequency-counts*)
  (defparameter *include-function-words-in-frequency-counts* nil
    "All known words that have :function-word on their plist are
     usually lumped together under the pseudo-word that is bound
     to *function-word* below. Otherwise they will dominate any
     frequency count."))

(unless (boundp '*include-punctuation-in-frequency-counts*)
  (defparameter *include-punctuation-in-frequency-counts* nil
    "Any word at a position whose capitalization is flagged as
     :punctuation will usually be lumped into the pseud-word
     *punctuation-word*"))

;;;-----------------
;;; state variables
;;;-----------------

(defvar *words-in-run* 0
  "Bumped with the recording of each word.  Intended to accumulate
   across multiple articles.")

(defvar *word-types* 0
  "Bumped with the recording of each NEW word.")

(defvar *word-types-at-start-of-article* 0
  "Keeps track of how many new words appear in successive articles
   when running over document streams")

(defvar *function-words-seen-in-run* nil
  "When we're aggregating function words, this records which ones were seen.")

(defvar *punctuation-seen-in-run* nil
  "When we're aggregating punctuation, this records what were seen.")

(defparameter *word-frequency-classification* nil
  "Set by Establish-word-frequency-classification. Names the 
   pattern of categories that the words will be sorted into.")

(defparameter *word-count-buckets* nil
  "An alist that reflect a sorting of the word-frequency
   hashtable's data by count.  The first element in each item
   is the frequency, the second is the word count at that
   frequency, and the rest is the list of words.")

(defparameter *word-count-buckets-most-freq-highest* nil
  "The same list ordered from most frequent word to least.")

(defvar *documents-analyized* nil
  "A list of each document that has been analyzed for frequency
   in a given set (i.e. between initializations")


;;;----------------
;;; initialization
;;;----------------

(defun initialize-word-frequency-data ()
  (setq *words-in-run* 0
        *word-types* 0
        *word-types-at-start-of-article* 0
        *sorted-word-entries* nil
        *word-count-buckets* nil
        *word-count-buckets-most-freq-highest* nil
	*documents-analyized* nil
	*function-words-seen-in-run* nil
	*punctuation-seen-in-run* nil) 
  (reset/over-all)) ;; (readout-frequency-table)


;;;------------------------------------
;;; the table for "over all" frequency
;;;------------------------------------

(defparameter *word-frequency-table*
              (make-hash-table :test #'eq
                               :size 1000
                               :rehash-size 500))


(defmethod frequency-table-entry ((word word))
  (gethash word *word-frequency-table*
           :no-entry  ;; the value returned if the word isn't in the table
           ))

(defun reset/over-all ()
  (clrhash *word-frequency-table*))


(defun frequency-table-to-list-of-symbols ()
  (let* ((words 
	  (loop for key being the hash-key in *word-frequency-table*
	     collect key))
	 (symbols (mapcar #'(lambda (w)
			      (intern (word-pname w)))
			  words)))
    (sort symbols #'alphabetize)))



;;;----------------------------
;;; driver - hook into Sparser
;;;----------------------------

(defun record-word-frequency (word position)
  ;; called in the body of Look-at-terminal
  (incf *words-in-run*)
  (let ((classification (classify-word-for-frequency word position)))
    (record-word-frequency/over-all word classification)))

#| An 'entry' is a cons whose car is the count, followed by
 an alist of (<article> . <per-article-count>).  Word objects
 are linked to their entries via the table *word-frequence-table*
|#

(defun record-word-frequency/over-all (word classification)
  (let ((entry
         (if classification ;; e.g. all function words lumped together
           (frequency-table-entry classification)
           (frequency-table-entry word)))
	(w (or classification
	       word)))
    (if (eq entry :no-entry)
      (make-initial-word-frequency-entry/over-all w)
      (increment-word-frequency-entry/over-all entry w))))

;; *current-article* is defined in drivers/sources/state.lisp which is 
;; loaded well before this file is. For our purposes it's bound in
;; one of the frequency drivers. The value is supposed to be an article
;; object, but haven't revived those yet (ddm 7/15/10)

(defun make-initial-word-frequency-entry/over-all (word)
  ;; called the first time a word is seen, i.e. when it isn't already
  ;; in the frequency table.
  (incf *word-types*)
  (setf (gethash word *word-frequency-table*)
        (cons 1
              (list (cons *current-article* 1)
                    )))
  (when *current-article*
    (incf-word-count word *current-article*)))

(defun increment-word-frequency-entry/over-all (entry word)
  (incf (first entry))
  (let ((subentry-for-current-article 
	 (if *current-article*
	   (assq *current-article* (cdr entry))
	   (cadr entry)))) ;; only makes sense on a single-document run
    (when *current-article*
      (unless subentry-for-current-article
	(setq subentry-for-current-article
	      `(,*current-article* . 0))
	(rplacd entry (cons subentry-for-current-article
			    (cdr entry)))))
    (incf (cdr subentry-for-current-article))
    (when *current-article*
      (incf-word-count word *current-article*)) 
    subentry-for-current-article ))




(defun number-of-words-counted ()
  "All entries in all documents in the set that has been scanned"
  (hash-table-count *word-frequency-table*))



;;;-----------------------
;;; reporting the results
;;;-----------------------

(defun report-word-increment ()
  (let* ((last-time *word-types-at-start-of-article*)
         (difference (- *word-types*
                        last-time)))
    (format t "~&  ~A words added~%" difference)
    (setq *word-types-at-start-of-article* *word-types*)))


(defvar *sorted-word-entries* nil)

(defun setup-word-frequency-data ()
  (let ((words-counted
         (readout-word-frequency-table-into-a-list)))
    (setq *sorted-word-entries*
          (sort-frequency-list words-counted))
    (length *sorted-word-entries*)))


(defun readout-frequency-table ()
  "Prime reporting routine if just looking all all the words
   and not comparing word frequencies across documents"
  (setup-word-frequency-data)
  (display-sorted-results *standard-output*
                          *sorted-word-entries*)
  '*sorted-word-entries*)

;; Subroutine that lets us include a count when displaying
;; sorted results
(defvar *how-many-at-each-frequency-count* (make-hash-table))
(defun how-many-at-frequency-count (n)
  (gethash n *how-many-at-each-frequency-count*))
(defun count-how-many-at-each-frequency-count 
    (&optional (list-of-entries *sorted-word-entries*))
  (let ((frequency 0)
	(count 0))
    (dolist (entry list-of-entries)
      (when (not (= (cdr entry) frequency))
	(setf (gethash frequency *how-many-at-each-frequency-count*) count)
	(setq frequency (cdr entry)
	      count 0))
      (incf count))))

(defun display-sorted-results (&optional
                               (stream *standard-output*)
                               (list-of-entries *sorted-word-entries*))
  (format stream "~&~%~A words in a corpus of length ~A"
          (number-of-words-counted) *words-in-run*)
  (count-how-many-at-each-frequency-count)
  (let ((frequency 0)
        (words-on-the-line 0))
    (dolist (entry list-of-entries)
      (when (not (= (cdr entry) frequency))
        ;; the frequency just changed
        (setq frequency (cdr entry)
              words-on-the-line 0)
        (format stream "~&~% ~a words with frequency ~A~%   "
		(how-many-at-frequency-count frequency)
		frequency))
      (princ-word (car entry) stream)
      (write-string "  " stream)
      (incf words-on-the-line)
      (when (= 5 words-on-the-line)
        (format stream "~%   ")
        (setq words-on-the-line 0)))
    (terpri stream)
    (terpri stream)))


;;--- subroutines for reporting

(defun readout-word-frequency-table-into-a-list ()
  "Returns a list of (,word . ,count)"
  (let ( accumulator )
    (maphash
     #'(lambda (word entry)
         (push (cons word (first entry)) ;; total count, not
               accumulator))             ;; per-document
     *word-frequency-table*)
    accumulator))
;;/// replace that one with this one
(defun readout-wf-table (&optional (table *word-frequency-table*))
  (let ( accumulator )
    (maphash
     #'(lambda (word entry)
         (push (cons word (first entry)) ;; total count, not
               accumulator))             ;; per-document
     table)
    accumulator))


(defun sort-frequency-list (list-of-entries)
  "Sorts the output of readout-word-frequency-table-into-a-list 
   first by count and then alphabetically on the word.
   Ordering is from least frequent to most frequent."
  (sort list-of-entries
        #'(lambda (first second)
            (cond ((< (cdr first)
                      (cdr second))
                   t)  ;; the first goes earlier in the result
                  ((> (cdr first)
                      (cdr second))
                   nil)
                  ((string<
		    (etypecase (car first)
		      (word (word-pname (car first)))
		      (polyword (pw-pname (car first))))
		    (etypecase (car second)
		      (word (word-pname (car second)))
		      (polyword (pw-pname (car second)))))
                   t)
                  ((string>
		    (etypecase (car first)
		      (word (word-pname (car first)))
		      (polyword (pw-pname (car first))))
		    (etypecase (car second)
		      (word (word-pname (car second)))
		      (polyword (pw-pname (car second)))))
                   nil)))))



;;--- Another way to bucket and report the results

(defun word-frequency-profile (&optional
                               (list-of-entries *sorted-word-entries*))
  ;; Scans the global list of sorted (<word> . <count>) data and
  ;; sorts it into buckets. Sets *word-count-buckets* to the list
  ;; of buckets and returns the count.
  (let ((current-count 0)
        list-of-lists  accumulating-words  )
    (dolist (entry list-of-entries)
      (when (not (= current-count (cdr entry)))
        ;; close out the ongoing bucket and start a new one
        (if accumulating-words  ;; startup check
          (then
            (push `(,current-count
                    ,(length accumulating-words)
                    ,@accumulating-words )
                  list-of-lists)
            (setq accumulating-words nil
                  current-count (cdr entry)))
          (setq current-count 1)))
      (push (car entry) accumulating-words))

    ;; close out the last entry
    (push `(,current-count
            ,(length accumulating-words)
            ,@accumulating-words )
          list-of-lists)

    (setq *word-count-buckets* (nreverse list-of-lists))
    (length *word-count-buckets*)))


(defun display-word-frequency-profile (&optional
                                       (stream *standard-output*))
  (unless *word-count-buckets*
    (word-frequency-profile))
  (let ( frequency  count )
    (dolist (entry *word-count-buckets*)
      (setq frequency (first entry)
            count (second entry))
      (format stream "~&~A~4,2T~A~%" frequency count))))


(defun words-with-frequency# (n)
  ;; returns the whole entry, not just the word list
  (unless *word-count-buckets*
    (word-frequency-profile))
  (assoc n *word-count-buckets*))


(defun top-N-frequent-words (n &optional (stream *standard-output*))
  (unless *word-count-buckets*
    (word-frequency-profile))
  (unless *word-count-buckets-most-freq-highest*
    (setq *word-count-buckets-most-freq-highest*
          (reverse *word-count-buckets*)))
  (let ( entry )
    (dotimes (i n)
      (setq entry (nth i *word-count-buckets-most-freq-highest*))
      (format stream "~&~A~5,2T~A" (car entry) (cddr entry)))))



;;--- words as a percentage of the corpus they're derived from

(defun sort-word-frequency-table-most-frequent-first (word-frequency-entries)
  (let ((sort1 (sort-frequency-list (copy-list word-frequency-entries))))
    ;; change to most frequent first
    (nreverse sort1)))

(defvar *word-frequency-corpus-distributions* nil
  "An alist of words by which fraction of the corpus they are in.")

(defun word-frequency-corpus-distribution-by-fractions
    (corpus-length &optional (number-of-parts 12) (table *word-frequency-table*))
  (let* ((words (readout-wf-table table))
	 (sorted (sort-word-frequency-table-most-frequent-first words)))	 
    (word-frequency-corpus-distribution-by-fractions1
     corpus-length number-of-parts sorted)))

(defun word-frequency-corpus-distribution-by-fractions1 (corpus-length
                                                         number-of-parts
                                                         sorted)
  (setq *word-frequency-corpus-distributions* nil)
  (let ((instances-per-fraction (round (/ corpus-length number-of-parts)))
	(iteration 0)	 
	(accumulated-instances 0)
	(words-in-section nil))
    (do* ((pair (car sorted) (car rest))
	  (rest (cdr sorted) (cdr rest))
	  (word (car pair) (car pair))
	  (count (cdr pair) (cdr pair)))
	 ((null pair))
      (push word words-in-section)
      (setq accumulated-instances (+ count accumulated-instances))
      (when (>= accumulated-instances instances-per-fraction)
	(incf iteration)
	(format t "~&fraction ~a contains ~a words~%"
		iteration (length words-in-section))
	(push `(,iteration . ,(nreverse words-in-section))
	      *word-frequency-corpus-distributions*)
	(setq accumulated-instances 0
	      words-in-section nil)))
    ;; last case
    (format t "~&fraction ~a contains ~a words"
	    (incf iteration) (length words-in-section))
    (push `(,iteration . ,words-in-section)
	  *word-frequency-corpus-distributions*)
    (setq *word-frequency-corpus-distributions*
	  (nreverse *word-frequency-corpus-distributions*))
    :done))
      
#|
(write-out-word-frequency-corpus-distributions
  15 "Entire Campbell Biology text"
  "/Users/ddm/ws/Vulcan/ws/frequencies/whole-book-word-distribution.lisp")
|#
(defun write-out-word-frequency-corpus-distributions (fraction corpus-name full-filename)
  (with-open-file (stream full-filename
		   :direction :output
		   :if-exists :overwrite
		   :if-does-not-exist :create)
    (format stream "~&;; Sorting of all of the words in ~a~
                    ~%;; into ~a fractions by word frequency."
	    corpus-name fraction)
    (dolist (pair *word-frequency-corpus-distributions*)
      (let* ((count (car pair))
             (words (cdr pair))
             (sorted (sort (copy-list words) #'alphabetize-words)))
        (format stream "~&~%~%Fraction ~a - ~a words~%~a"
                count (length sorted) sorted)))))


;;;------------------------------------------------------------
;;; Differential counts by article (baby steps towards tf/idf)
;;;------------------------------------------------------------

(defmethod unique-words ((d1 document) (d2 document))
  "What wards are in d1 that aren't in d2?"
  (let ( unique-to-d1
	(table1 (words-to-count d1))
	(table2 (words-to-count d2)))
    (maphash #'(lambda (word count)
		 (declare (ignore count))
		 (unless (gethash word table2)
		   (push word unique-to-d1)))
	     table1)
    unique-to-d1))
    

(defmethod normalized-count ((w word) (d document))
  (let ((total-tokens (token-count d))
	(count-for-word (count-in-document w d)))
    (unless (or (= total-tokens 0)
		(null count-for-word)) ;; #<source-start>
      (let ((ratio (/ count-for-word total-tokens)))
	(values
	 (format nil "~,8F" ratio)
	 ratio)))))


;;;-------------------------
;;; writing out the results
;;;-------------------------

(defmethod word-frequency-export-form ((word word) &optional
				       (stream *standard-output*))
  (let* ((entry (frequency-table-entry word))
         (doc-counts (cdr entry))
         (pname (word-pname word))
         (forms (map-doc-count-entry word doc-counts)))
    (format stream "(def-word ~s" pname)
    (format stream "~&   ~{ ~a~})~%" forms)))

(defun map-doc-count-entry (word doc-counts)
  (loop for (doc . count) in doc-counts
       collect (export-doc-count word doc count)))

(defun export-doc-count (word doc count)
  (let ((normalized (normalized-count word doc))
	(doc-name (name doc)))
    `(,doc-name ,normalized ,count)))
    
;; Reading them back in. See one-offs/def-word.lisp
(defun define-2010-words-frequency-data (string doc-freq-data)
  (let* ((word (or (word-named string)
		   (define-word/expr string)))
	 (entry (gethash word *word-frequency-table*)))
    (dolist (data doc-freq-data)
      (let ((article (car data))
	    (count (third data)))
	(if (assq article (cdr entry))
	  (then ;; over-write with this count
	    (break "over-write: stub")
	    (let ((new-subentry `(,article . ,count)))
	      (rplacd entry (cons new-subentry (cdr entry)))))
	  (let ((entry `(,count `(,article . ,count))))
	    (setf (gethash word *word-frequency-table*) entry)))))
    entry))

;;--- lifted from word-frequency-reader
(defvar *wf-sections* nil
  "For now, just a dotted pair.")
(defmacro def-section  (section-name word-count)
  ;; e.g. (def-section chapter11 9781)
  `(def-section/expr ',section-name ,word-count))

(defun def-section/expr (section-name word-count)
  (push `(,section-name . ,word-count) *wf-sections*))

(defun section-word-count (section-name)
  (let ((entry (assoc section-name *wf-sections* :test #'eq)))
    (unless entry
      (error "No section named ~a" section-name))
    (cdr entry)))

    

(defun write-def-forms-for-all-words (&optional
				      (stream *standard-output*))
  (let* ((pairs (readout-word-frequency-table-into-a-list))
	 (words (mapcar #'car pairs))
	 (sorted (sort words #'alphabetize-words)))
    (loop for word in sorted
	 do (word-frequency-export-form word stream))))



 


;;;---------------
;;; alphabetizing
;;;---------------
        
;; the sort function
(defun alphabetize-words (w1 w2)
  (let ((pname1 (word-pname w1))
        (pname2 (word-pname w2)))
    (string< pname1 pname2)))

(defun alphabetize-word-list (global-symbol)
  (let ((sorted-list
         (sort (symbol-value global-symbol)
               #'alphabetize-words)))
    (set global-symbol sorted-list)))
 


;;;----------------------------
;;; classifying un/known words
;;;----------------------------

(defparameter *capitalized-word*
  (define-dummy-word/expr 'capitalized-word
    :capitalization :initial-letter-capitalized))

(defparameter *number-word*
  (define-dummy-word/expr 'number-word))

(defparameter *function-word*
  (define-dummy-word/expr 'function-word))

(defparameter *punctuation-word*
  (define-dummy-word/expr 'punctuation-word))


(defun classify-word-for-frequency (word position)
  (declare (ignore word position))
  (break "No classifier has been picked for measuring word ~
          frequency.~%You have to make a call to~
          ~%  Establish-word-frequency-classification"))


(defun establish-word-frequency-classification (keyword function-name)
  (unless (fboundp function-name)
    (format t "~&~%Warning: the word frequency classification function~
            ~%  ~A  is not yet defined." function-name))
  (setf (symbol-function 'classify-word-for-frequency)
        (symbol-function function-name))
  (setq *word-frequency-classification* keyword))

#|
;; only one option left. Unclear that capitalization is meaningful
;; unless we can distinguish sentence-internal from initial and
;; get the initial proper names vis a workable heuristic
;;///// Where is this set?
 (establish-word-frequency-classification :ignore-capitalization
                                          'wf-classification/ignore-caps)
|#

(defun wf-classification/ignore-caps (word position)
  (if (word-rules word) ;; known
    (wf-classification/ignore-caps/known word position)
    (let ((capitalization (pos-capitalization position))
	  (stem (if *stem-words-for-frequency-counts*
		  (stem-form word) ;; in rules/tree-families/morphology1.lisp
		  (word-pname word))))
      (case capitalization
	(:digits *number-word*)
	(otherwise
	 (or (word-named stem)
	     (define-word/expr stem)))))))

(defun wf-classification/ignore-caps/known (word position)
  (if (member :function-word (word-plist word))
    (if *include-function-words-in-frequency-counts*
      word
      (else (pushnew word *function-words-seen-in-run*)
	    *function-word*))
    (ecase (pos-capitalization position)
      (:lower-case word) 
      (:punctuation
       (if *include-punctuation-in-frequency-counts*
         word
	 (else (pushnew word *punctuation-seen-in-run*)
	       *punctuation-word*)))
      (:digits *number-word*)
      ;;/// Need to include the number word (ordinals and cardinals)
      ;; in this generalization
      ((or :initial-letter-capitalized
           :all-caps
           :mixed-case
           :single-capitalized-letter)
       word ))))



;;--- Porter Stemming

#| Lifted from wf-classification/ignore-caps
   when shifted to Sparser-internal stemmer
    (let ((capitalization (pos-capitalization position))
	  (stem (word-pname word))) ;; for default when not stemming
      (when *stem-words-for-frequency-counts*
	(let ((pname (word-pname word)))
	  (unless (eq capitalization :lower-case)
	    (setq pname (string-downcase pname)))
	  (setq stem (apply-Porter-stemmer pname))
	  ;;/// restore final "e" ?
	  (unless (string-equal stem pname)
	    (record-original-from-stem stem pname))))
|#

(defun apply-Porter-stemmer (lowercase-string)
  (cl-user::stem lowercase-string))

(defvar *stems-to-original-word-string* (make-hash-table))

(defun unporter (stemmed-string)
  (gethash stemmed-string *stems-to-original-word-string*))

(defun record-original-from-stem (stemmed-string original)
  (pushnew original 
	   (gethash stemmed-string *stems-to-original-word-string*)))
  

;;;--------
;;; shells
;;;--------

;; (initialize-word-frequency-data)
;; (readout-frequency-table)

(defun f/wf (namestring)
;  (initialize-word-frequency-data)
  (word-frequency-setting)
  (let ((*current-article*
	 (find-or-make-document-object namestring :clear)))
    (declare (special *current-article*))
    (pushnew *current-article* *documents-analyized*)
    (analyze-text-from-file namestring)))





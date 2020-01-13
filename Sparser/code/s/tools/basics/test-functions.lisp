;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2019 Rusty Bobrow  -- all rights reserved
;;;
;;;      File:   "test-functions"
;;;    Module:   "tools:basics"
;;;   Version:   December 2019

;; utilities for testing in R3. Made format-item prettier 1/10/15.
;; 2/8/15 Turning off anaphora on sentence calls. 
;; 3/21/2015 new functions for saving information about actually 
;;   occurring sub-categorization cases

(in-package :sparser)


(defvar *save-chunk-edges*)
(defvar *all-chunk-edges*)
(defvar *relations*)
(defvar *DEC-TESTS*)
(defvar *JAN-DRY-RUN*)
(defvar *aspp2-whole*) ;; one of the local declares does not seem to work

(defparameter *show-semantics* t
  "Parameter default to run-test. If non-nil the semantic interpretation
  of the text is shown after it is parsed.")

(defparameter *sentences* nil
  "The set of sentences a general iterator
   runs over. Set by one of the corpus specifiers")

(defparameter *no-anaphora* t
  "Parameter default to run-test. If non-nil, the *do-anaphor* flag
  will be dynamically bound to nil so all discourse history
  and anaphora processing will be turned off. ")

;;;----------------------------
;;; Sentence corpus specifiers
;;;----------------------------
;; These specify which corpus a general iterator
;; should run on. 

(defun test-corpus (sentences &optional numbers)
  (setq *sentences* sentences)
  (reset-test)
  (when (null numbers)
    (setq numbers (loop for i from 1 to (length sentences) collect i)))
  (loop for i in numbers
     do
       (run-test i nil)))

(defun sem-test-corpus (sentences &optional numbers (suppress-indiv-uid nil))
  (let ((*suppress-indiv-uids* suppress-indiv-uid))
    (declare (special *suppress-indiv-uids*))
    (setq *sentences* sentences)
    (reset-test)
    (if (null numbers)
	(setq numbers (loop for i from 1 to (length sentences) collect i)))
    (loop for i in numbers
       do
	 (sem-test i))))

;; With no argument these run over the entire corpus.
;; With specific numbers the run just those sentences.

;; The sentence lists are all in r3/code/grammar-tests/

(defun test-overnight (&rest numbers)
  (declare (special *overnight-sentences*))
  (test-corpus *overnight-sentences* numbers))

(defun test-jan (&rest numbers)
  (declare (special *jan-dry-run*))
  (test-corpus  *jan-dry-run* numbers))

(defun test-dry-run (&rest numbers)
  (declare (special *jan-dry-run*))
  (test-corpus  *jan-dry-run* numbers))

(defun test-dec (&rest numbers)
  (declare (special *dec-tests*))
  (test-corpus   *dec-tests* numbers))

(defun test-bioagents (&rest numbers)
  (declare (special *bio-agent-capability-utterances*))
  (test-corpus   *bio-agent-capability-utterances* numbers))

(defun test-erk (&rest numbers)
  (declare (special *erk-abstract*))
  (test-corpus *erk-abstract* numbers))

(defun test-aspp2 (&rest numbers)
  (declare (special *aspp2-whole*))
  (test-corpus *aspp2-whole* numbers))

(defun test-dynamic-model (&rest numbers)
  (declare (special *dynamic-model-sents*))
  (test-corpus *dynamic-model-sents* numbers))

(defun test-load-test (&rest numbers)
  (declare (special *load-test-sents*))
  (test-corpus *load-test-sents* numbers))



(defun test-sent (corpus n &key (multi-sent t) (no-syn-tree nil) (no-edges t) (quiet t) (stream *standard-output*))
  (declare (special *chunks* *overnight-sentences* *jan-dry-run*
                    *dec-tests* *erk-abstract* *aspp2-whole*
                    *load-test-sents*))
  (psem (clean-some-xml-from-string (get-sentence corpus n))
        :corpus corpus :n n
        :multi-sent multi-sent
        :no-syn-tree no-syn-tree
        :no-edges no-edges
        :quiet quiet
        :stream stream))

(defun psem (sent &key (corpus nil)
                    (n 0) (multi-sent t)
                    (no-syn-tree nil) (no-edges t)
                    (quiet t) (stream *standard-output*))
  (let* ((*readout-segments-inline-with-text* nil) ;; quiet
         (*show-syn-tree* (not no-syn-tree))
         (*end-of-sentence-display-operation*
          (when multi-sent
            #'(lambda (sent)
                (display-sent-results sent corpus n :stream stream)))))
    (declare (special *show-syn-tree* *readout-segments-inline-with-text*
                      *end-of-sentence-display-operation*))
    (cond
      (quiet
       (if no-syn-tree (format stream "~%~%____________________________~%~s~%~%" sent))
       (pp sent)
       (unless multi-sent
         (display-sent-results sent corpus n :stream stream)))
      (t
       (eval `(p ,sent))))))
  

(defun clean-some-xml-from-string (str)
  (replace-all (replace-all str "<br>" " ") "'" ""))

(defun display-sent-parse (sent corpus n &key (stream *standard-output*))
  (let ((*readout-segments-inline-with-text* nil)) ;; quiet
    (pp sent)
    (display-sent-results sent corpus n :stream stream)))

(defun display-sent-results (sent corpus n &key (no-edges t) (quiet t) (stream *standard-output*))
  (show-sent-heading sent corpus n stream)
  (display-chunks stream)
  (show-sem-syn-forest stream))

(defparameter *show-syn-tree* t)
(defun show-sem-syn-forest (&optional  (stream *standard-output*) (no-edges t))
  (declare (special *show-syn-tree*))
  (loop for edge in (all-tts)
     do
       (let ((*no-edge-info* no-edges)
             (*suppress-indiv-uids* t)
             (ref (if (edge-p edge)
                    (edge-referent edge)
                    edge)))
	 (declare (special *no-edge-info* *suppress-indiv-uids*))
	 (format stream "~% --- ~s~%"
                 (if (edge-p edge)
                     (extract-string-spanned-by-edge edge)
                     edge))
	 (if (word-p ref)
	     (format stream "  ~s" ref)
	     (print-sem-tree (semtree ref) stream))
	 
	 (when *show-syn-tree*
           (format stream "~%~%------ Edge syntactic tree:~%")
           (ctree edge stream))
	 (format stream "~%~%"))))



(defun old-display-sent (sent corpus n &key (no-edges t) (quiet t) (stream *standard-output*))
  (show-sent-heading sent corpus n stream)
  (format stream "~%~%;;; ---------- Results of chunking:~%")
  (display-chunks stream)
  (format stream "~%~%;;; ------------ Semantics of treetops~%")
  (show-sem-forest stream no-edges)
  (format stream "~%~%;;; ----------- Syntactic structure of parse~%~%")
  (show-canonical-syntax-tree stream no-edges))

(defun get-sentence (corpus n)
  (declare (special *pathway-comments* *erk-abstract* *gyori* *load-test-sents*
                       *overnight-sentences* *comments* *dynamic-model-sents*))
  (let ((sentences
	 (ecase corpus
	   ((:overnight overnight) *overnight-sentences*)
	   ((:dry-run :jan dry-run jan) *jan-dry-run*)
	   ((:dec-test dec-test) *dec-tests*)
	   ((:erk erk) *erk-abstract*)
	   ((:aspp2 aspp2) *aspp2-whole*)
	   ((:load load-test) *load-test-sents*)
           ((:comments comments) *comments*)
           ((:gyori gyori) *gyori*)
           ((dynamic-model) *dynamic-model-sents*)
           ((:pathways :pathway-comments pathways) *pathway-comments*))))
    (second (nth (- n 1) sentences))))

(defun show-sent-heading (sent corpus n stream)
  (format stream "~a~%~%~s~&"
	  (if (null corpus) ""
	      (format nil "Corpus: ~s Sentence#: ~s" corpus n))
          (if (stringp sent)
              sent
              (sentence-string  sent))))

(defun display-chunks (stream)
  (declare (special *chunks*))
  (format stream ";;; ---------- Results of chunking:~%")
  (loop for chunk in (reverse *chunks*)
     do (print-segment-and-pending-out-of-segment-words
	 (chunk-start-pos chunk)
	 (chunk-end-pos chunk)
	 stream))
  (format stream "~%"))

(defun show-canonical-syntax-tree (stream &optional (no-edges t))
  (let ((*no-edge-info* no-edges))
    (declare (special *no-edge-info*))
    (ptree stream)))

(defun save-sent-parse (corpus n)
  (with-open-file (stream (sent-save-file corpus n)
                     :direction :output
                     :if-exists :overwrite
                     :if-does-not-exist :create)
    (test-sent corpus n :stream stream :multi-sent nil)))


(defparameter *p-sent* nil)
(defparameter *sent-snapshots-directory* nil)

(defun save-sent-snapshots (&optional
                            (corpora '(overnight dec-test dry-run aspp2 erk dynamic-model)))
  "Top-level sentence syntax/semantics snapshot creation routine."
  (let ((*sent-snapshots-directory* (create-snapshot-directory)))
    (loop for c in corpora
      do (terpri)
         (print c)
         (print (save-corpus-sents c))
      finally (return *sent-snapshots-directory*))))

(defun save-semantics-for-corpora (&optional
                                     (corpora '(overnight dec-test dry-run aspp2 erk dynamic-model)))
  (save-sent-snapshots corpora))

(defun save-corpus-sents (name)
  (let ((corpus (get-sentence-corpus name))
        (*sent-snapshots-directory*
         (or *sent-snapshots-directory*
             (create-snapshot-directory))))         
    (unless corpus
      (error "No sentence corpus has been defined with the name ~a" name))
    (let* ((variable (corpus-bound-variable corpus))
           (sentences (eval variable)))
      (loop for i from 1 to (length sentences)
            do (save-sent-parse name i)
            finally (return *sent-snapshots-directory*)))))

(defun create-snapshot-directory ()
  (declare (special *directory-for-tree-snapshots*))
  (ensure-directories-exist
   (make-pathname :directory (append (pathname-directory *directory-for-tree-snapshots*)
                                     (list (dtg-dir))))
   :verbose t))

(defun create-corpus-directory (corpus)
  (ensure-directories-exist
   (make-pathname :directory (append (pathname-directory *sent-snapshots-directory*)
                                     (list (format nil "~a"  corpus))))
   :verbose t))

(defun dtg-dir ()
  (multiple-value-bind (second minute hour date month year day)
      (decode-universal-time (get-universal-time))
    (declare (ignore day))
    (format nil "~4D~2,'0D~2,'0DT~2,'0D~2,'0D~2,'0D"
            year month date hour minute second)))
    
(defun sent-save-file (corpus n)
  (merge-pathnames
   (format nil "~a-~a.sparse" corpus n)
   (create-corpus-directory corpus)))

#+sbcl
(eval-when (:compile-toplevel :load-toplevel :execute)
  (require :sb-posix))

(defun bless-sent-snapshots (&optional (directory (save-sent-snapshots))
                             (link-name "gold") &aux
                             (link (merge-pathnames
                                    (make-pathname :name link-name
                                                   :directory '(:relative :up))
                                    directory)))
  (declare (special *directory-for-tree-snapshots*))
  "Make a symbolic link to a blessed snapshot directory."
  (assert (directory-p directory) (directory) "Not a directory.")
  (ignore-errors (delete-file link))
  #+(and sbcl unix)
  (sb-posix:symlink
   (enough-namestring directory *directory-for-tree-snapshots*)
   (namestring link))
  #-(and sbcl unix)
  (error "Don't know how to make a symbolic link.")
  (truename link))

(defun compare-sent-snapshots (directory &optional (gold "gold/"))
  (declare (special *directory-for-tree-snapshots*))
  (let* ((*default-pathname-defaults* *directory-for-tree-snapshots*)
         (gold (merge-pathnames gold))
         (cwd (uiop:getcwd)))
    (unwind-protect
         (progn
           (uiop:chdir *directory-for-tree-snapshots*)
           (uiop:run-program (format nil "diff -qrw '~a' '~a'"
                                     (enough-namestring gold)
                                     (enough-namestring directory))
                             :ignore-error-status t
                             :output *standard-output*))
      (uiop:chdir cwd))))

;;;-------------------------------
;;; general iterators and friends
;;;-------------------------------

(defvar *known-breaks* nil
  "Bad pushes sentence number onto this list when you
   call it. Useful for marking sentences that get
   Lisp errors.")
 
(defvar *tested* '(0)
 "Retest pushes sentence numbers onto this list 
  as they are executed")

(defun reset-test ()
  "Set the two accumulators back to their initial values"
  (setq *tested* '(0))
  (setq *known-breaks* nil))

(defun reset-dectest ()
  (reset-test))

(defun retest (&optional (semantics *show-semantics*))
  "Loop over all the designated sentences calling
   run-test on each one"
  ;;(reset-test)
  (loop for i from (+ 1 (car *tested*)) to (length *sentences*) 
    unless (memq i *known-breaks*)
    do 
    (push i *tested*) 
    (run-test i semantics)))

(defun bad (&optional (semantics *show-semantics*))
  (push (car *tested*) *known-breaks*) 
  (retest semantics))

;;--- tailored iterators

(defun dectests (&optional (start 1))
  (declare (special *dec-tests*))
  (loop for i from start to (length *dec-tests*) do (dectest i)))

(defun jantests (&optional (start 1))
  (declare (special *jan-dry-run*))
  (loop for i from start to (length *jan-dry-run*) do (jantest i)))

(defun aspp2tests (&optional (start 1))
  (declare (special *aspp2-whole*))
  (loop for i from start to (length *aspp2-whole*) do (aspp2test i)))

;;;-------------------------
;;; Single sentence testers
;;;-------------------------

(defun dectest (n &optional (sentences *dec-tests*))
  (declare (special *dec-tests*))
  (run-test n nil t :sentences sentences))

(defun jantest (n &optional (sentences *jan-dry-run*))
  (declare (special *jan-dry-run*))
  (run-test n nil t :sentences sentences))

(defun aspp2test (n &optional (sentences *aspp2-whole*))
  (declare (special *aspp2-whole*))
  (run-test n nil nil :sentences sentences))


(defmacro test (n)
  `(run-test ,n))


(defun quiet-semantics (&optional (flag t))
  (setq *show-semantics* (not flag)))


(defun run-test (n &optional (semantics *show-semantics*) (no-anaphora *no-anaphora*)
                   &key (sentences *sentences*))
 
  (let ((*do-anaphora* (not no-anaphora))
        (test (nth (- n 1) sentences)))
    (declare (special *do-anaphora* *save-chunk-edges*))

    (format t "~&___________________________________________~%~%")
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
        (print "skipping because of known problems")
        (progn
          (eval test)
          (when *save-chunk-edges*
            ;;make the list of chunk edges show their sentence origin
            (push (cons n (cdr test)) *all-chunk-edges*))
          (when semantics ;;*show-semantics*
            (format t "~%---SEMANTIC FOREST---")
            (show-sem-forest)
            )))))

(defun show-sem-forest (&optional (stream *standard-output*) (no-edges nil))
  (let ((*no-edge-numbers* no-edges)
	(*suppress-indiv-uids* t))
    (declare (special *no-edge-numbers* *suppress-indiv-uids*))
    (loop for edge-tree in
	 (tts-edge-semantics)
       do
	 (format stream "~%")
	 (if (small? (second edge-tree))
	     (then
	       (format stream "~&~s" (car edge-tree))
	       (print-tree (second edge-tree) t 0 stream t))
	     (else
	       (format stream "-----  ~s" (car edge-tree))
	       (print-tree (second edge-tree) nil 0 stream))))))


(defun sem-test (n &optional (sentences *sentences*))
  (let ((test (nth (- n 1) sentences))
        (*do-anaphora* nil))
    (declare (special *do-anaphora*))
    (print (list n test))
    (terpri)
    (if (member n *known-breaks*)
      (print "skipping because of known problems")
      (else
        (pp (second test))
        ;; below is the code of what was formerly 'show-semantics'
        ;; before I took over the function to make it a sentence
        ;; based method
        (loop for tt in (all-tts)
          do (when (and (edge-p tt) (not (word-p (edge-category tt))))
               (format t "~&_____________________________~&")
               (print-treetop-tight tt (pos-edge-starts-at tt))
               (psemtree tt)))))))
          
                
(defun stest (n &optional (sentences *sentences*))
  "Variant on run-test using a different semantics extractor"
  (let ((test (nth (- n 1) sentences))
        (*do-anaphora* nil))
    (declare (special *do-anaphora*))
    (format t "~&~%___________________________________________~%")
    (print (list n test))
    (terpri)
    (let ((*readout-relations* t)
          s-expressions )
      (declare (special *readout-relations*))
      (eval test)
      (initalize-model-collection)
      (format t "~&~%Relations:")
      (loop for r in *relations*
        do (let ((sexp (collect-model r)))
             (push sexp s-expressions)
             (pprint sexp)))
      (terpri)
      (reverse s-expressions))))

(defparameter *current-sentences* nil)
(defun p-nth-2sem (n &optional (sentences *current-sentences*))
  (when sentences (p2sem (nth n sentences))))
    
;; sentence a string.
(defun p2sem (sentence) 
  (format t "~2%----------------------------------------------~
              ~%Processing '~a'~%" sentence)
  (p sentence)
  (show-sem-forest))


;;;-------------------------------
;;; helper functions for sem tree
;;;-------------------------------

(defun tree-size (tree)
  (cond
   ((not (consp tree)) 1)
   (t
    (loop for elt in tree sum (tree-size elt)))))

(defparameter *no-small-trees* nil)

(defun small? (tree)
  (declare (special *no-small-trees*))
  (and (not *no-small-trees*)
       (< (tree-size tree) 5)))

(defun print-tree (tree &optional (last nil) (indent 0) (stream t)(tight nil))
  (if tight
   (nspaces 1 stream)
   (else
     (terpri stream)
     (nspaces indent stream)))
  (cond
   ((consp tree)
    (format stream "(")
    (format-item (car tree) stream)
    (when (cdr tree)
      (setq tight  (small? tree))
      (loop for items on (cdr tree) do 
        (print-tree (car items) 
                    (null (cdr items))
                    (+ indent 3) 
                    stream
                    tight)))
    (format stream ")"))
   (t
    (format-item tree stream)))
  (when (and (not last) (not tight))
   (terpri stream))
  tree)

(defun psemtree (x)
  (print-tree (semtree x)))

(defun format-item (item stream)
  (declare (special *suppress-indiv-uids*))
  (typecase item
    (psi (push-debug `(,item))
         (error "Something gerated a PSI and it shouldn't have: ~a" item))
    (individual
     (let* ((name (name-of-individual item))
            (pname (when name (typecase name
                                (word (word-pname name))
                                (polyword (pw-pname name))
                                (otherwise "")))))
       (if name
	   (format stream "~(~a~a~a ~s~)"
		   (cat-symbol (car (indiv-type item)))
		   (if *suppress-indiv-uids* "" "-")
		   (maybe-indiv-uid item)
		   pname)
	   (format stream "~(~a~a~a~)"
		   (cat-symbol (car (indiv-type item)))
		   (if *suppress-indiv-uids* "" "-")
		   (maybe-indiv-uid item)))))

    (otherwise
     (format stream "~(~S~)" item))))
   

(defun nspaces (n stream)
  (when (> n 0)
      (princ " " stream)
      (nspaces (- n 1) stream)))

(defun np (l &optional (stream t))
  (loop for ll in l do (print ll stream)))

(defun is-pp? (edge)
  (and
   (edge-p edge)
   (eq 'pp (simple-label (edge-form edge)))))

(defun case-pp-search ()
  (let ((res nil))
    (loop for res in
      (loop for i from 1 to (length *sentences* )
      when (setq res (case-pps i))
      collect res)
      do        
      (print "___________MISSING SUBCATS?_____________________________________________") 
      (np res))))

(defun case-pps (i)
  (progn 
    (format t "~&~&~&**************************************************************~&")
    (sem-test i)
    (let ((res (loop for pair in (adjacent-tts) 
                when (eq 'pp (car (edge-rep (second pair))))
                collect (loop for edge in pair collect (edge-rep edge)))))
      (np res)
      (and 
       res
       (cons
        (list i (nth (- i 1) *sentences*))
        res)))))

;; This function is used to produce a short-form symbol to represent
;;  any of various items (categories, polywords, words) for printout
;; It produces a symbol in the :sparser package
(defun simple-label (cat)
  (declare (optimize (speed 3)(safety 0)))
  (etypecase cat
    (null nil)
    (symbol cat)
    (category (intern (symbol-name (cat-symbol cat)) :sparser))
    (polyword (intern (pw-pname cat) :sparser))
    (word (intern (symbol-name (word-symbol cat)) :sparser))))

(defun edge-rep (edge)
  (cons (simple-label (edge-form edge))
        (cons
         (simple-label (edge-category edge))
         (and (is-pp? edge)
              (list
               (simple-label 
                (edge-category 
                 (edge-right-daughter edge))))))))



;;;---------------------------------
;;; Handling comparisons with REACH
;;;---------------------------------

(defun init-reach-directory ()
  (when (find-package :r3)
    (save-article-semantics
     (pathname
      (ensure-directories-exist
       (concatenate 'string
                    (eval (intern "*R3-TRUNK*" (find-package :r3)))
                    "corpus/Reach-sentences/results/"))))))

(defun load-reach-sentences-if-needed ()
  (unless (boundp '*reach-article-sents*)
    (load (asdf:system-relative-pathname :r3 
                        "../corpus/Reach-sentences/rasmachine_sentences.lisp"))))

(defun test-reach-article-sents (sl-list &key (n 1000) (start 0) (save-output t)
                                 (break nil))
  (let ((*break-on-reach-errors* break))
    (declare (special *break-on-reach-errors*))
    (loop for sl in sl-list
          as i from (+ 1 start) to (+ start n)
          do
          ;; this may cause problems, but it should cause the sentences to be collected as part of the article
          (when save-output
            (let ((sls (pname sl)))
              (initialize-article-semantic-file-if-needed
               (subseq sls 1 (- (length sls) 1)))))
          (process-reach-article-sents sl)
          (close-article-semantic-file-if-needed))))

(defun test-reach-sentences (&key (n 1000)(start 0) (save-output t))
  (when save-output
    (init-reach-directory))
  (load-reach-sentences-if-needed)
  (test-reach-article-sents
   (eval '*reach-article-sents*) :start start :n n :save-output save-output))

(defparameter *break-on-reach-errors* nil)
(defparameter *article-name* nil
  "Used to carry the name of an article from process-reach-article-sents to save-article-sentence.")
(defparameter *compare-to-reach-results* nil)
(defparameter *compare-sparser-to-reach-events* nil)

(defun compare-test-reach (&key (n 1000)(start 0) (save-output t) (events nil))
  (setq *compare-sparser-to-reach-events* events)
  (setq *compare-to-reach-results* (not events))
  (test-reach-sentences :n n :start start :save-output save-output))

(defun process-reach-article-sents (sl)
  (format t "Processing reach article sentences: ~s~%" sl)
  (let ((sents (symbol-value sl)))
    (if (or *break-on-reach-errors*
            (and (find-package :r3)
                 (eval (intern "*BREAK-DURING-READ*" (find-package :r3)))))
        (loop for s in sents do (safe-parse s))   
        (loop for s in sents
              as i from 0
              do (qepp s)
              (if *compare-to-reach-results*
                  (compare-to-reach (format nil "~d-~d" (get-PMC-ID (string sl)) i)
                                    (previous (sentence))))
              (if *compare-sparser-to-reach-events*
                  (compare-sparser-to-reach-events (format nil "~d-~d" (get-PMC-ID (string sl)) i)
                                    (previous (sentence))))))))

(defun get-PMC-ID (sl)
    (remove-if-not #'digit-char-p sl))

(defparameter *reach-verbs* nil
  "This will be a list of distinct keys in reach-sent-event-ht")
(defparameter *warn-reach-missing* t)
(defparameter *reach-sents* nil)
(defparameter *reach-sent-event-ht* 
  (make-hash-table :size 1000 :test #'equalp)
  "Keys are lists with verb strings which form the triggers of reach events, plus the type and sub-type;
the values are the list of reach-IDs (PMC-ID and sentence number) which contain an event of that type") 
(defparameter *missed-entities* nil
  "List of entities Reach has that Sparser doesn't")


(defun reach-pathname (reach-id)
  (make-pathname :name reach-id
                 :type "json"
                 :defaults
                 (asdf:system-relative-pathname
                  :r3
                  "../corpus/Reach-sentences/reach_reread/")))
                                
(defun sparser-complete-sent-string (curr-sent)
  (when curr-sent
    nil
    (let ((prev (sparser-complete-sent-string (previous curr-sent))))
      (if prev 
          (concatenate 'string
                       prev
                       "." ;; assume it is a period
                       (sentence-string curr-sent))
          (sentence-string curr-sent)))))
    

(defun compare-to-reach (reach-id &optional curr-sent)
  (declare (special curr-sent))
  (let* ((decoded-reach (reach-sexpr reach-id))
         (entities (getf decoded-reach :entities))
         sparser-sent-string
         (reach-sent
          (string-left-trim
           " "
           (string-right-trim ".!?" (getf decoded-reach :SENTENCE))))
         (reach-event-triggers
          (loop for event in (getf decoded-reach :events)
                when (assoc :trigger event)
                collect
                (list (cdr (assoc :trigger event))
                      (assoc :type event)
                      (assoc :subtype event))))
         (reach-event-strings (mapcar #'car reach-event-triggers)))
    (declare (special decoded-reach entities reach-event-triggers reach-event-strings reach-sent))
    (cond ((null curr-sent)
           (qepp (format nil "~a." reach-sent))
           (setq curr-sent (previous (sentence)))
           (setq sparser-sent-string (sparser-complete-sent-string curr-sent)))
          (t (setq sparser-sent-string (sparser-complete-sent-string curr-sent))))
    (multiple-value-bind (sparser-reach-events sparser-missed-triggers) 
        (get-sparser-reach-events curr-sent reach-event-strings)
      (declare (special sparser-missed-triggers))
      (when sparser-missed-triggers
        (warn "missed events in REACH ~s ~s~% ~s~%"
                reach-id reach-sent 
                (loop for evt in (cdr (expanded-reach-events reach-id))
                      when
                        (loop for str in sparser-missed-triggers
                              thereis
                                (equal str (car evt)))
                      collect evt))
        ;;(lsp-break "compare-to-reach")
        )
      (push reach-sent *reach-sents*)
    
      (loop for trio in reach-event-triggers
            do
            (pushnew trio *reach-verbs* :test #'equalp)
            (push reach-id (gethash trio *reach-sent-event-ht*)))

      (unless (equal reach-sent sparser-sent-string)
        (warn "mismatched sentences in REACH ~a ~% reach sentence   ~s ~% sparser sentence ~s"
              reach-id
              reach-sent
              sparser-sent-string))
      (when *warn-reach-missing*
        (let ((reach-entity-strings (get-reach-entities-strings entities))
              (sparser-entity-strings (get-sentence-individual-strings curr-sent)))
          (declare (special reach-entity-strings sparser-entity-strings))
            
          (multiple-value-bind (sub-bag-p missing remaining)
              (sub-bag-p reach-entity-strings sparser-entity-strings :test #'equalp)
            (unless (or sub-bag-p
                        (multiple-value-setq (sub-bag-p missing remaining)
                          (sub-bag-p missing remaining :test #'string-initial?))
                        (multiple-value-setq (sub-bag-p missing remaining)
                          (sub-bag-p missing remaining :test #'string-final?))
                        (multiple-value-setq (sub-bag-p missing remaining)
                          (sub-bag-p missing remaining :test #'string-acronym?)))
              ;; suppress the often bizarre "UAZ" defined proteins
              (setq missing
                    (loop for m in missing
                          append
                          (loop for e in entities
                                when (equalp (cdr (assoc :text e)) m)
                                do
                                (let ((ee (simplify-reach-entity e)))
                                  (cond ((equal (second ee) "uaz")
                                         (return nil))
                                        (t (pushnew ee *missed-entities* :test #'equal)
                                           (return (list ee))))))))
              (let ((missing-events
                     (loop for evt in (cdr (expanded-reach-events reach-id))
                           when
                           (loop for m in missing
                                 thereis
                                 (find-in (car m) evt #'equal))
                           collect evt)))
                (when missing-events
                  (warn "missed REACH entities in sentence:  ~a~% ~s~%  ~s~% with missing events~% ~s~%" ;; REACH verbs ~s~%"
                        reach-id
                        sparser-sent-string
                        missing
                        missing-events
                        ;;reach-event-triggers
                        ))))))))))

(defun reach-event-examples (trio)
  "For a given use of a verb with a particular meaning, it gets the events that are examples of that verb"
  (loop for reach-id in (gethash trio *reach-sent-event-ht*)
        collect
          (reach-id-events reach-id)))

(defparameter *reach-id-sexpr-ht*
  (make-hash-table :size 3000 :test #'equal)
  "Keys are reach-ids and values are s-expression corresponding to json in file")

(defun reach-sexpr (reach-id)
  "Gets decode reach for a particular reach-ID (i.e., sentence) and stores it in a hash table"
  (or (gethash reach-id *reach-id-sexpr-ht*)
      (setf (gethash reach-id *reach-id-sexpr-ht*)
            (decode-reach-file (reach-pathname reach-id)))))

(defun reach-id-events (reach-id)
  (getf (reach-sexpr reach-id) :events))

(defun reach-id-entities (reach-id)  
  (getf (reach-sexpr reach-id) :entities))

(defun make-reach-entities-hash (entities)
  "Make and return a hash table based on the entities in a reach sentence, with keys of the text for the entity name and the value being all the entity information"
  (let ((entities-hash (make-hash-table :test #'equal)))
    (loop for ent in entities
          do (setf (gethash (assoc :text ent) entities-hash)
                   ent))
    entities-hash))

(defun expanded-reach-events (reach-id)
  "Given a reach ID, return a list of events with the arguments to the events expanded from details in the entities list"
  (let* ((sexpr (reach-sexpr reach-id))
         (text (getf sexpr :sentence))
         (events (reach-id-events reach-id))
         (entities-hash (make-reach-entities-hash (reach-id-entities reach-id))))
    (declare (special sexpr))
    (cons `(:sentence ,text)
          (loop for evt in events
                collect `(,(cdr (assoc :trigger evt)) ;; (assoc :trigger evt) 
                           ,(if (cdr (assoc :subtype evt))
                                 (cdr (assoc :subtype evt))
                                 (cdr (assoc :type evt)))
                            ;; (assoc :subtype evt)
                           ,@(reach-arg-details (cdr (assoc :arguments evt)) entities-hash))))))

(defun reach-arg-details (args entities-hash)
  "Given the arguments for one reach event and a hash table of entities for that sentence, return list of arguments with details from entities hash"
  (loop for arg in args
        collect
          (list (cdr (assoc :type arg)) ;; (assoc :type arg)
                (or (simplify-reach-entity (gethash (assoc :text arg) entities-hash))
                    (list (cdr (assoc :text arg))))))) ;added list and cdr to fix issues when there is no equivalent in entities so it doesn't break the comparison to sparser entities -- this comes up in cases where the event argument is e.g., "ERK phosphorylation" but the entities only list ERK

(defun sub-bag-p (sub-bag super-bag &key (test #'eql))
  (loop with result = t
        for elt in sub-bag
        if (find elt super-bag :test test)
        do (setq super-bag (remove elt super-bag :count 1 :test test))
        else collect elt into missing and do (setq result nil)
        finally (return (values result missing super-bag))))

(defun get-sentence-individual-strings (&optional (curr-sent (previous (sentence))))
  "Gets individual strings for sentence and all previous sentences, because one Reach sentence may end up as multiple Sparser sentences"
  (declare (special *found-bces*))
  (when curr-sent
    (append
     (get-sentence-individual-strings (previous curr-sent))
     (when (slot-boundp (contents curr-sent) 'individuals)
       (setq *found-bces* nil)
        
       (loop for i in (safe-sentence-individuals (contents curr-sent))
             when (not (itypep i '(:or predicate spatial-operator modifier
                                   subordinate-conjunction conjunction)))
             do
               (push i *found-bces*)
               (visit-indiv-generalizations i (itype-of i) #'record-bce))
       (remove nil
               (mapcar #'(lambda (x) (let ((ss (retrieve-surface-string x)))
                                       (when ss (trim-whitespace ss))))
                       *found-bces*))))))

(defun safe-sentence-individuals (contents)
  (when (slot-boundp contents 'individuals)
    (sentence-individuals contents)))

(defun get-sentence-process-strings (&optional (curr-sent (previous (sentence))))
  "Gets process strings for sentence and all previous sentences, because one Reach sentence may end up as multiple Sparser sentences"
  (declare (special *found-bces*))
  (when curr-sent
    (append
     (get-sentence-process-strings (previous curr-sent))
     (when (slot-boundp (contents curr-sent) 'individuals)
       (setq *found-bces* nil)
        
       (loop for i in (safe-sentence-individuals (contents curr-sent))
             when (not (itypep i '(:or predicate spatial-operator modifier
                                   subordinate-conjunction conjunction)))
             do
               (push i *found-bces*)
               (visit-indiv-generalizations i (itype-of i) #'record-bce))
       (remove nil
               (mapcar #'(lambda (x) (let ((ss (retrieve-surface-string x)))
                                       (when ss (trim-whitespace ss))))
                       *found-bces*))))))

(defparameter *use-traverse-sem-for-reach-events* t)

(defun get-sparser-reach-events (curr-sent reach-event-triggers)
  (let ((*reach-evt-triggers* reach-event-triggers)
        (*reach-evt-edges* nil)
        (*found-reach-triggers* nil))
    (declare (special *reach-evt-triggers* *reach-evt-edges* *found-reach-triggers*))
    (cond (*use-traverse-sem-for-reach-events*
           (let ((mentions (get-sparser-reach-events-base curr-sent)))
             ;;(setq *reach-evt-edges* (mapcar #'mention-source mentions))
             (get-sparser-reach-events-base curr-sent)
             (values *reach-evt-edges*
                    (loop for tr in *reach-evt-triggers*
                         unless
                           (loop for frt in *found-reach-triggers*
                                 thereis (string-final? frt tr))
                          collect tr)
                    #+ignore ;; this does not seem to work
                    (loop for edge in *reach-evt-edges*
                           append
                             (let ((hs (head-string edge)))
                               (loop for tr in *reach-evt-triggers*
                                     when (string-final? (head-string edge) tr)
                                     collect tr))))))
          (t
           (get-sparser-reach-events-from-sentence-individuals curr-sent)
           (values *reach-evt-edges* 
                   (loop for tr in *reach-evt-triggers*
                         unless
                           (loop for frt in *found-reach-triggers*
                                 thereis (string-final? frt tr))
                         collect tr))))))

(defun get-sparser-reach-events-from-sentence-individuals (curr-sent)
  (declare (special *reach-evt-triggers* *reach-evt-edges* *found-reach-triggers*))
  (when curr-sent
    (get-sparser-reach-events-from-sentence-individuals (previous curr-sent))
;    (lsp-break "reach-evts pre loop")
    (loop for i in (safe-sentence-individuals (contents curr-sent))
          do
            (let* ((bre (best-recent-mention i))
                   (edge (when bre (mention-source bre)))
                   (hs (head-string edge)))
              (declare (special edge hs))
              (when (member hs *reach-evt-triggers* :test #'string-final?)
                (unless (member edge *reach-evt-edges*)
                  (push edge *reach-evt-edges*)
;                (lsp-break "reach-evts")
                  (push hs *found-reach-triggers*)))))))

(defun get-sparser-reach-events-base (curr-sent)
  (when curr-sent
    (append 
     (get-sparser-reach-events-base (previous curr-sent))
     (traverse-sem curr-sent #'record-reach-events))))

(defun best-recent-mention (i)
  (or
   (loop for mention in
           (mention-history i)
         as j from 1 to 2
         when
           (and (edge-p (mention-source mention))
                (eq (edge-referent (mention-source mention)) i))
         do (return mention))
   (car (mention-history i))))

(defun record-reach-events (ev?)
  (declare (special *reach-evt-triggers* *reach-evt-edges* *found-reach-triggers*))
  (cond
    ((and ev? (eq 'discourse-mention (type-of ev?)))
     (let* ((mention ev?)
            (edge (when (edge-p (mention-source mention)) (mention-source mention))))
       (declare (special edge))
       (if (is-basic-collection? (base-description mention))
           (loop for evt in (value-of 'items (base-description ev?))
                 do (record-reach-events evt))
           (when edge
             (let ((head-str (head-string edge)))
               (when (member head-str *reach-evt-triggers* :test #'equal)
                 (push edge *reach-evt-edges*)
                 (push head-str *found-reach-triggers*)))))))
    ((individual-p ev?)
     (let* ((mention (best-recent-mention ev?))
            (edge (when mention (mention-source mention))))
       (declare (special edge))
       (if (eq (itype-of ev?) (category-named 'collection))
           (loop for evt in (value-of 'items ev?)
                 do
                   (record-reach-events evt))
           #+ignore ;; breaks when there is no edge...
           (loop for e in (edge-constituents edge)
                 do
                   (record-reach-events (edge-referent e)))
           (when (edge-p edge)
             (let ((head-str (head-string edge)))
               (when (member head-str *reach-evt-triggers* :test #'equal)
                 (push edge *reach-evt-edges*)
                 (push head-str *found-reach-triggers*)))))))))
  

(defun get-reach-entities-strings (entities)
  (mapcar #'(lambda (x) (cdr (assoc :text x))) entities))

  
(defun reach-trigger->krisp-cats (str)
  "Given a string that Reach considers to be an event trigger, it collects all the KRISP categories that that can mean"
  (let* ((word (resolve str)) ;gets word if it exists
         (rs (when word (word-rules word)))) ; rule-set for word
    (when rs
      (loop for c in
              (rs-distinct-categories rs) 
            when (itypep c 'biological)
              collect c))))

(defun distinct-reach-verb-cats ()
  (loop for grp in
          (group-by
           (loop for v in *reach-verbs* 
                 collect
                   (trio-cats v))
           #'trio-cat-reach-type
           #'trio-verb-krisp-cat)
        collect
          (list
           (car grp)
           (loop for sg in (group-by (second grp) #'second #'car)
                   collect sg)))) ;;`(,(second sg) ,(car sg))))))

(defun trio-cats (trio)
  (list trio (reach-trigger->krisp-cats (car trio))))

(defun trio-cat-reach-type (trio-cat)
  "Gets type and subtype of reach triple"
  (cdar trio-cat))

(defun trio-verb-krisp-cat (trio-cat)
  (list (caar trio-cat) (car (second trio-cat))))
  

(defun group-by (l key-fn &optional (extract-fn #'identity) &key (test #'equal))
  "Takes a list and a key function to group by, and optional function
to pare down items (generally get the value that goes with the key)
and make it into hash table whose keys are distinct vals of key-fn
applied to l, and values are values associated with that key example"
  (let ((ht (make-hash-table :size (length l) :test test)))
    (loop for item in l do
            (push (funcall extract-fn item)
                  (gethash (funcall key-fn item) ht)))
    (loop for key being the hash-keys of ht
            collect (list key (gethash key ht)))))

(defun krisp-cat-reach-types (analyzed-reach-verbs)
  (group-by
   (loop for reach-cat in analyzed-reach-verbs
         append (let ((cats (car (cdr reach-cat)))
                      (reach-type (car reach-cat)))
                  (loop for cat in cats
                        collect (list cat reach-type))))
   #'car
   #'cadr))

(defvar *rvcs* nil)
(defvar *rvcs1* nil)
(defvar *rvcs2* nil)
(defvar *rvcs3* nil)
(defvar *reach-to-sparser* nil)


(defparameter *svo/bio-verbs*
  '(ABLATE ABSORB ACCEPT ACCESS ACCOMPANY ACCOMPLISH ACCORD ACCOUNT ACHIEVE ACTIVE ADAPT ADDICT ADDRESS ADJUST ADMINISTERE ADMINISTRATE ADOPT AFFORD AGE AGGRAVATE AGRE AIM AIR ALLEVIATE ALLOWE ALPHABIND ALTER ALTERE ALTERNATE AMELIORATE ANDNONFAIL ANESTHETIZE ANGLE ANSWER ANTAGONIZE APPROVE ARISE ARM AROUSE ARREST ARTICLE ASCERTAIN ASCRIBE ASK ASSAYE ASSIST ATROPHY ATTACH ATTAIN ATTEMPT ATTRACT AUGMENT AUTHOR AVERAGE AVOID BACK BAIT BALANCE BARK BAY BEAR BED BEGIN BEHAVE BEIJ BELIEVE BELONG BEND BENEFIT BIAS BID BIND BIOSCREEEN BIOTINYLATE BLAST BLEOMYCININDUCE BLOCKADE BLOOD BLOT BLUNT BOLSTERE BOLT BONE BOOST BOX BRACKET BRANCH BREACH BRIDGE BRIEF BRING BROWN BUD BULK BUNDLE BURDEN BURGER BURST BYPASS CALCIFY CALCULATE CAP CAPTURE CARE CARRY CASE CELLSSHOWE CENTER CENTRE CHAIN CHANNEL CHAPERON CHARACTERISE CHARGE CHART CHECK CHEMOSENSITIZ CHIP CHOOSE CIRCLE CIRCULATE CITE CLAIM CLARIFY CLEAN CLEAVE CLOCK CLONE CLOSE CLUMP COACTIVATE COAT COCULTURE COIL COINCIDE COINCUBATE COLLABORATE COLLAPSE COLLECETE COLLECT COLOCALIZE COMBINE COME COMFIRM COMMUNICATE COMPARTMENTALISE COMPETE COMPLEMENT COMPLEXE COMPLICATE COMPOSE COMPOUND COMPRISE COMPUTE CONCEIVE CONCERN CONCERT CONCLUDE CONDITION CONDUCT CONE CONFINE CONFIRM CONFLICT CONJUGATE CONNECT CONSIST CONSOLIDATE CONSTRICT CONSUME CONTACT CONVERGE COORDINATE COPE COPPER COPY CORD CORE CORRECT CORRELATE CORROBORATE COSTAIN COTRANSFECT COTREAT COUNT COUNTER COUNTERACT COUPLE COURSE COW COX CREST CROSS CROSSLINK CROSSTALK CURVE CUT DAB DAMAGE DEAL DEAMIDAT DEBATE DECEASE DECELERATE DECIDE DECLARE DECLINE DECOMPOSE DECOUPLE DECOY DECTECT DEEM DEFECT DEFEND DEFINE DEGENERATE DEGRADATE DELINEATE DELIVER DELIVERE DEMAND DENATUR DENOTE DEPICT DEPOLARIZ DEPOSIT DEPOSITE DEPRES DEPRIVE DEREGULATE DESENSITIZE DESERVE DESIGN DESIGNATE DESTABILIZE DETERIORATE DEVASTATE DIACYLATE DIAGNOSE DICTATE DIET DIFFER DIFFERE DIFFERENTIATE DIG DILATE DIM DIMINSH DISABLE DISAGREE DISASSOCIATE DISCLOSE DISCONNECT DISCOVER DISCOVERE DISCRIMINATE bDISCUS DISEASE DISINTEGRATE DISLODGE DISORDERE DISSOLVE DISTANCE DISTRESS DISTRIBUTE DISTURB DIVERGE DOCK DOCUMENT DOSE DOT DRAIN DRAW DRINK DRY DSRE DUMP DUPLICATE DYE EDDY EDGE EGG ELICITE EMANATE EMERGE EMPLOYE EMPTY EMULATE ENCAPSULATE ENCOUNTERE ENCOURAGE END ENDOCYTOSE ENFORCE ENGAGE ENGINEER ENLARGE ENRICH ENSUE ENSURE ENVISAGE EQUAL ESTIMATE EUTHANIZE EVADE EVALUATE EVINCE EVOKE EVOLVE EWING EXACERBATE EXACT EXCEED EXCLUDE EXECUTE EXEMPLIFY EXERCISE EXERT EXHIBITE EXPAND EXPERIENCE EXPLOIT EXPLORE EXPORT EXPOSE EXTEND EXTRACT FACE FAINT FEE FEED FEEL FIELD FILE FILM FINE FIR FIRM FISH FIT FIXE FLAG FLATTEN FLOAT FLOOD FLOW FLY FOAM FOCUS FOCUSE FOLD FOOT FORCE FORDOWNREGULAT FORK FORMYLATE FOSTER FRACTIONATE FRANK FREE FRIZZLE FRONT FRUIT FULFIL FUME FUNCTIONALIZE FUND FUSE GATE GET GIFT GLASS GO GOVERN GRADE GRANT GRAY GREY GRIND GTPBIND GUT HALT HAMPERE HAND HANDLE HANG HAPPEN HARBOUR HARVEST HAZARD HEAD HEAL HEAR HEAT HEIGHTEN HEIGHTENE HELP HIGHLIGHT HINDER HINDERE HINT HOG HOLD HOST HUMANIZE HYPOTHESISE IMAGE IMBALANCE IMMORTALIZE IMMUNOLABEL IMMUNOSTAIN IMPINGE IMPLANT IMPLEMENT IMPLY IMPORT INCOME INCREMENT INCUBATE INDCU INDEX INDEXE INFECT INFER INFILTRATE INFLAME INFRARE INHABIT INJECT INJURE INK INSTANCE INSTITUTE INSULT INTEGRATE INTEND INTENSIFY INTER INTEREST INTERNALISE INTERPOLATE INTERPRETE INTERRUPT INTERTWINE INTRODUCE INVADE INVOKE IONIS IONIZE IRRADIATE JAPAN JOIN JOINT KIL KILL KIP KIT KNOCK LABEL LABELE LANDSCAPE LAPSE LAST LAYER LEAGUE LEAK LEAVE LENGTHENE LESSEN LESSENE LET LIGHT LIST LIVE LOAD LOCATE LOCK LOOK LOWERE LUBRICATE LUTEINIZ LUTENIZ LYING MAKE MAN MANEUVER MANIFEST MANIPULATE MANTLE MANUFACTURE MAR MARK MASK MASTER MAT MATCH MATTER MATURATE MATURE MAXIMIZE MEDITATE MELANIZE MERGE METABOLISE METABOLIZE METAL MICROINJECT MILK MIMIC MIMICK MIND MINERALIZE MINIMIZE MIRRORE MIS MISFOLD MITIGATE MIXE MOB MOBILIZE MOCK MODEL MODELE MODERATE MOISTURIZ MONITORE MOTOR MOVE MUG MULTINUCLEAT MUSCLE MUSHROOM MYELINAT NAME NARROW NEAR NECK NEGATE NET NEUTRALIZE NICK NONLIGATE NONMYRISTOYLATE NONRANDOMIZE NONRESPOND NONSPLICE NONTREAT NORMALIZE NOTE NOTICE NUCLEAT NULLIFY OBLITERATE OBSTRUCT OCCUPY OCCURE OFFER OFFSET OFFSPR OIL OPEN OPENE OPPOSE OPTIMIZE ORCHESTRATE ORDER ORGANIZE ORPHAN OUTLAST OUTLINE OVARIECTOMIZE OVERCOME OVERLOAD OVERPRODUCE OVERSTIMULATE OVERWHELM OWING OXIDIZE PACE PAIN PAIR PAN PAPER PARALLELE PARK PATTERN PAUL PAW PEAK PEEL PEGYLATE PEMETREXE PENETRATE PEP PEPPER PERCEIVE PERISH PERK PERMEABILIZ PERMIT PERPETUATE PERSIST PERTAIN PERTURB PHASE PHENOCOPY PHOSPHOABLAT PHOSPHOLYLATE PHOSPHONATE PHOSPHORYALATE PHOSPORYLAT PHOTOAGE PICTURE PIG PILOT PIT PLANT PLATE PLAY PLOT POCKET POINT POISE POISON POLARIZE POLYTRAUMATIZE POOL PORE POSSESS POST POSTULATE POUR POWER PRACTICE PREASSEMBLE PRECIPITATE PRECONDITION PREEXIST PREINCUBATE PREMISE PRESSURE PRESUME PRETREAT PRETTY PREVAIL PREY PROCEED PROCES PROCURE PROFILE PROGRAM PROGRAMME PROGRESS PROHIBIT PROMISE PROMPT PRONOUNCE PROTOONCOGENESENCOD PROVOKE PUBLISH PULL PULP PULSE PUMP PURCHASE PURSUE PUSH QUANTIFY QUENCH RABBIT RADIOSENSITIZ RAFT RANDOMISE RANK RAP RAT RAY REALIZE REARRANGE REASON REASONE REBIND RECAPITULATE RECEIVE RECENSOR RECOGNIZE RECORD RECOUPL RECOVER RECOVERE RECYCLE REFER REFLECT REGARD REGENERATE REGRES REINFORCE REINSTATE REJOIN RELATE RELAY RELAYE RELOCALIZE REMODEL RENDER RENEW REPAIR REPEAT REPLACE REPRODUCE REPROGRAM REPUTE REROUT RESCUE RESEARCH RESEMBLE RESIDE RESOLVE RESORB RESPECT RESTORE RESTRAIN RESTRICT RESUME RETARD RETRIEVE REV REVERS REVERSE REVIEW RINSE RISE ROOM ROOT ROUGHEN ROW RUFFLE RULE RUN SAG SALT SATURATE SAVE SCAN SCATTER SCAVENGE SCHEDULE SCORE SCRAMBLE SCRATCH SEARCH SECRETE SEDATE SEED SEEK SEGMENT SEIZE SEND SENSE SENSITISE SENSITIZE SEPARATE SEQUESTER SEQUESTRATE SERRATE SEX SHAM SHANGHAI SHARE SHEAR SHED SHIFT SHOCK SHORTENE SHUT SHUTTLE SIDE SIGN SILENCE SIMULATE SIN SING SINGLE SKIN SKIP SLIGHT SLOWE SLUG SMEAR SMELT SMOKE SMOOTH SMOOTHENE SOIL SOLE SOLVE SORT SPACE SPAR SPEAK SPECIFY SPECULATE SPIKE SPIN SPITE SPLICE SPRE SPREAD SPROUT STACK STAGE STAIN STALE STANDARDIZE STARCH STEADY STEM STIFFEN STOP STORE STRAIN STREAM STRENGTHEN STRESS STRETCH STRIKE STRIP STRUCTURE STUNT SUB SUBMERGE SUBSTANTIATE SUBSTITUTE SUBTRACT SUFFERE SUM SUN SUPERVISE SUPPLEMENT SUPPOSE SUPRES SURGE SURPRISE SURROUND SURVEY SURVIVE SUSPECT SUSTAIN SWAP SWARM SYNCHRONIZE SYNERGIZE SYNTHESIS SYNTHESIZE TAIL TAKE TALK TAN TANGLE TAP TEMPT TESTIFY TETHERE THANK THICKEN TIE TIME TITRATE TOLL TOT TOTAL TRACE TRAFFICK TRAIN TRANSAMINATE TRANSDIFFERENTIAT TRANSDUCT TRANSECT TRANSLOCALIZE TRANSMIT TRANSPLANT TRANSPORT TREND TRIACYLATE TRIPLE TRY TUNE TUNNEL TURN TWIST ULCERATE UNAFFECT UNALTERE UNANSWERE UNCHARACTERIZE UNCOAT UNCONJUGATE UNCOUPLE UNCOVER UNCOVERE UNDERINDUCE UNDERLINE UNDERMINE UNDERSCORE UNDERTAKE UNDIFFERENTIAT UNDISTURB UNEXPLORE UNFOLD UNIDENTIFY UNINFECT UNINHIBITE UNIRRADIAT UNLABELE UNPASSAGE UNPUBLISH UNRECOGNIZE UNREGULATE UNRELATE UNREPAIR UNREPORT UNRESTRAIN UNSELECT UNSPECIFY UNTRANSFECT UNTRANSFORM UNTRANSLATE UNTREAT UNVEIL UTILISE UTILIZE VANISH VARY VASCULARIZE VIEW VISUALIZE VOID VOLUNTEER WALL WANT WARRANT WASH WASTE WATER WAVE WEIGHT WET WIND WIRE WISH WITHSTAND WONDERE WORD WOUND XENOGRAFT ZAP ZONE))

(defun analyze-reach-verbs ()
  (setq *rvcs* (distinct-reach-verb-cats))
  (setq *rvcs1*
        (loop for r in *rvcs*
              collect
                (list (car r)
                      (loop for rr in (second r) when (car rr) collect (second rr)))))
  (setq *rvcs2*
        (loop for x in *rvcs1*
              collect
                `(,(car x)
                   ,(loop for group in (second x)
                          collect
                            (list (car group)(reach-trigger->krisp-cats (car group)))))))
  (setq *rvcs3*
        (loop for xx in
                *rvcs2*
              append
                (loop for xxx in (second xx)
                      when (null (second xxx)) collect xxx)))
  (setq *reach-to-sparser*
        (loop for x in *rvcs2*
              collect
                (cond ((search "negative" (cdr (assoc :subtype (car x))))
                       (list (car x)
                             (mapcar #'pname
                                     (loop for cat in
                                             (loop for xx in (second x)
                                                   append (second xx))
                                           when (itypep cat 'negative-bio-control)
                                           collect cat))))
                      ((search "positive" (cdr (assoc :subtype (car x))))
                       (loop for cat in
                               (loop for xx in (second x) append (second xx))
                             when
                               (member (cat-name cat) *svo/bio-verbs*)
                             do
                               (format t "~%suppressing bogus verb ~s" (cat-name cat)))
                       (list (car x)
                             (mapcar #'pname
                                     (loop for cat in
                                             (loop for xx in (second x)
                                                   append (second xx))
                                           when
                                             (and (not (itypep cat 'negative-bio-control))
                                                  (not (member (cat-name cat) *svo/bio-verbs*)))
                                           collect cat))))
                      (t
                       (list (car x)
                             (mapcar #'pname (loop for xx in (second x) append (second xx)))))))))


(defun missed-entities ()
  (sort
   (loop for m in *missed-entities*
         unless
           (or
            ;;(search " " (car m))
            (search " inhibitor" (car m))
            (search "p-" (car m))
            (resolve (car m))
            (resolve (string-downcase (car m)))
            (equal (second m) "uaz")
            (member (getf m :type) '("site" "tissuetype") :test #'equal)
            (and (member (getf m :type) '("protein") :test #'equal)
                 (member (second m)  '("uaz" "uniprot") :test #'equal)))
         collect m)
   #'string<
   :key #'fourth))

(defun missed-uniprot ()
  (sort
   (loop for m in *missed-entities*
         when (and (member (getf m :type) '("protein") :test #'equal)
                   (equal "uniprot" (second m))
                   (not (resolve (car m)))
                   (not (equal (car m) "iN"))
                   (not (or
                         (eql 0 (search "p-" (car m)))
                         (eql 0 (search "phospho-"(car m)))
                         (eql 0 (search "phospho "(car m)))
                         (eql 0 (search "www"(car m)))
                         (eql 0 (search "-"(car m)))
                         (eql 0 (search ")" (car m)))
                         (search "-MEK" (car m))
                         (search "-ERK" (car m))
                         (search "-MAPK" (car m))
                         (search "-GFP" (car m))
                         (search ")" (car m))))
                   )
         collect m)
   #'string<
   :key #'car))

(defun string-initial? (start full)
  (eql (search start full) 0))

(defun string-final? (end full)
  (when (stringp end)
    (when (>= (length full)(length end))
      (search end full :start2 (- (length full) (length end))))))

(defun string-acronym? (acro full)
  (when (> (length full)(+ (length acro) 2))
    (search (format nil "(~a)" acro)
            full :start2 (- (length full) (+ (length acro) 3)))))



(defun find-in (item tree &optional (test #'eql))
  (or
   (funcall test item tree)
   (when (consp tree)
     (if (consp (cdr tree))
         (loop for elt in tree
               thereis
                 (find-in item elt test))
         (or
          (funcall test item (car tree))
          (funcall test item (cdr tree)))))))



;;;;;;;;;;;; CODE TO TEST LARGE HMS ARTICLE SET
;;;;

(defparameter *break-on-hms-errors* nil)

(defun test-hms-sentences (&key (n 1000)(start 0) (semantic-output-format nil)(save-output t))
  (declare (special *semantic-output-format*))
  (when semantic-output-format (setq *semantic-output-format* semantic-output-format))
  (when save-output
    (init-hms-directory))
  (load-hms-sentences-if-needed)
  (test-hms-article-sents
   (eval '*LARGE-HMS-SENT-LISTS*) :start start :n n :save-output save-output))

(defun init-hms-directory ()
  (when (find-package :r3)
    (save-article-semantics
     (pathname
      (ensure-directories-exist
       (concatenate 'string
                    (eval (intern "*R3-TRUNK*" (find-package :r3)))
                    "corpus/large-hms-corpus/results/"))))))

(defun load-hms-sentences-if-needed ()
  (unless (boundp '*hms-article-sents*)
    (load (asdf:system-relative-pathname :r3 "../corpus/large-hms-corpus/large-hms-corpus.lisp"))))

(defparameter *hms-sent-count* 0)

(defun test-hms-article-sents (sl-list &key (n 1000) (start 0) (save-output t)
                                 (break nil))
  (let ((*break-on-hms-errors* break))
    (declare (special *break-on-hms-errors* *hms-sent-count*))
    (setq *hms-sent-count* 0)
    (loop for sl in sl-list
          as i from 1 to (+ start n)
          when (> i start)
          do
          ;; this may cause problems, but it should cause the sentences to be collected as part of the article
          (when save-output
            (initialize-article-semantic-file-if-needed (pname sl)))
          (process-hms-article-sents sl i)
          (close-article-semantic-file-if-needed))))

(defun process-hms-article-sents (sl i)
  (format t "Processing hms sentences from article # ~s:  ~s~%" i sl)
  (let ((sents (symbol-value sl)))
    (if (or *break-on-hms-errors*
            (and (find-package :r3)
                 (eval (intern "*BREAK-DURING-READ*" (find-package :r3)))))
        (loop for s in sents do (incf *hms-sent-count*)(safe-parse s))   
        (loop for s in sents as i from 0 do (incf *hms-sent-count*)(qepp s)))))

(defvar *semantic-output-format*)
(defun init-phase3-directory (&key (semantic-output-format *semantic-output-format* *indra-post-process*))
  (declare (special *comparable-indra*))
  (setq *semantic-output-format* semantic-output-format)
  (when (eq semantic-output-format :hms-json)
    (setq *comparable-indra* nil))
  (case *semantic-output-format* (:hms-json (setq *indra-post-process* (list t))))
  (when (find-package :r3)
    (save-article-semantics
     (pathname
      (ensure-directories-exist
       (concatenate 'string
                    (eval (intern "*R3-TRUNK*" (find-package :r3)))
                    "corpus/phase3_nxml/results/"))))))

(defun init-pmc-directory (directory-string &key (semantic-output-format *semantic-output-format* *indra-post-process*))
  (declare (special *comparable-indra*))
  (setq *semantic-output-format* semantic-output-format)
  (when (eq semantic-output-format :hms-json)
    (setq *comparable-indra* nil))
  (case *semantic-output-format* (:hms-json (setq *indra-post-process* (list t))))
  (when (find-package :r3)
    (save-article-semantics
     (pathname
      (ensure-directories-exist directory-string)))))

(defun init-annot2017-directory (&key (semantic-output-format *semantic-output-format*))
  (declare (special *comparable-indra*))
  (setq *semantic-output-format* semantic-output-format)
  (when (eq semantic-output-format :hms-json)
    (setq *comparable-indra* nil))
  (when (find-package :r3)
    (save-article-semantics
     (pathname
      (ensure-directories-exist
       (concatenate 'string
                    (eval (intern "*R3-TRUNK*" (find-package :r3)))
                    "corpus/2017-callisto-annotated-articles/results/"))))))


;;;=======================================================
;;; tools for iterating over arbitrary lists of sentences
;;;=======================================================
;;  Motivated by biocuration queries / directives

(defvar *list-of-bio-utterances* nil
  "Reference global bound by test-bio-utterances 
   and used by test-bio")

(defparameter *bio-utt-test-good* nil
  "List of the numbers of sentences that get a single edge")
(defparameter *bio-utt-test-bad* nil
  "List of the numbers of sentences that get more one edge")

(defparameter *bio-utt-test-show-form* t
  "Have the test bio functions include the treetop form edges as well
   as the semantic edges when the parse isn't complete")

(defparameter *break-on-parse-error* nil
  "Holds default for whether test-bio-utternces stops when it
   gets an error or ignores it.")

#| This assumes you've got a list of sentences and want to divided
them out according to whether or not we get complete parses ('good')
or a set of treetops ('bad'). 
  First you call test-bio-utterances. That binds the sentence list 
to *list-of-bio-utterances* -- you can test individual sentences 
according to their index number in that list using test-bio.
  If you call test-bio-utterances without its optional argument
then you'll get a list of the parsing results for every sentence.
For successful parses you get the interpretation of the sentence.
For bad parses you get the treetops.
  Calling it with the 'split' option runs through the list and
divides it into good and bad. |#

(defun test-bio-utterances (sentence-list &optional split?
                            &key list-of-lists (stream *standard-output*)
                              clauses (quiet t) track-questions 
                              (with-breaks *break-on-parse-error*))
  "Walk over the list and set the global -- edit to shift test fn"
  (declare (special *save-clause-semantics*))
  (let ((count -1)) ;; because nth is zero based
    (if list-of-lists
        ;; the standard format from all-bioagent-capability-sentences
        ;; is a list of lists, so it needs to be flattened first
        (setq *list-of-bio-utterances*
              (remove-duplicates
               (loop for l in sentence-list
                     append l)
               :test #'equal))
        (setq *list-of-bio-utterances* sentence-list))
    ;; reset it so if it runs again it doesn't duplicate
    (setq *bio-utt-test-good* nil
          *bio-utt-test-bad* nil)
    (when clauses
      (setq *save-clause-semantics* :sentence-clauses))
    (loop for s in *list-of-bio-utterances*
       do (if split?
            (test-bio-utterance/split s (incf count) stream quiet with-breaks)
            (test-bio-utterance s (incf count) stream quiet with-breaks
                                :track track-questions)))
    (format stream "~&~a sentences in *list-of-bio-utterances*~%" (+ 1 count))
    (when split?
      (format stream "~&  ~a good~
                      ~%  ~a bad~%"
              (length *bio-utt-test-good*) (length *bio-utt-test-bad*)))))

(defun test-bio-utterance (s count
                           &optional
                             (stream *standard-output*) (quiet t)
                             (with-breaks *break-on-parse-error*)
                           &key track)
  "Designed for getting useful information for every sentence.
   Includes the semantic interpretation if there was just one edge."
  (declare (special *save-clause-semantics* *clause-semantics-list*))
  (format stream "~%~%___________________~%~a: (p ~s)~%" count s)
  (let ((*tracking-question-patterns* track))
    (declare (special *tracking-question-patterns*))
    (if quiet
      (if with-breaks
        (qpp s)
        (qepp s))
      (pp s)))
  (let ((edges (all-tts)))
    (terpri)
    (when (cdr edges) (display-chunks stream))
    (format stream "~&~%")
    (tts stream)
    (cond
      ((null (cdr edges)) ;; single span
       (if (eq *save-clause-semantics* :sentence-clauses)
           (if (equal (string-trim " " s)
                      (caar *clause-semantics-list*))
               (format stream "~&~s" (car *clause-semantics-list*))
               (format stream "ERROR -- encountered failure during parse"))
           (format stream "~&~s" (semtree (car edges)))))
      (*bio-utt-test-show-form* ;; multiple edges - fix could involve DA
       (terpri)
       (tts-form stream)))))
    

(defun test-bio (n)
  (let ((s (nth n *list-of-bio-utterances*)))
    ;;(p/s s)
    (test-bio-utterance s n)))

(defun test-bio-utterance/split (s count &optional stream)
  "Variant call from test-bio-utterances. Populate the two lists"
  (qepp s)
  (let ((edges (all-tts)))
    (if (null (cdr edges))
      (push count *bio-utt-test-good*)
      (push count *bio-utt-test-bad*))))

(defun test-bio-utt-regressions (&optional (numbers *bio-utt-test-good*))
  "For testing regression"
  (loop for utt-number in *bio-utt-test-good*
     as s = (nth utt-number *list-of-bio-utterances*)
     do (with-total-quiet
          (pp s)
          (let ((edges (all-tts)))
            (when (cdr edges)
              (format t "~&~%~a: ~s" utt-number s)
              (format t "~%failed: ~%") (tts))))))

(defun test-bio-utt-show-bad (&optional (stream *standard-output*))
  "Getting output on known failures"
  (loop for index in (reverse *bio-utt-test-bad*)
     as s = (nth index *list-of-bio-utterances*)
     do (test-bio-utterance s index stream)))

(defun collect-bio-bad-utterances (&optional (stream *standard-output*))
  "Getting output on known failures"
  (sort
   (loop for index in (reverse *bio-utt-test-bad*)
         as s = (nth index *list-of-bio-utterances*)
         collect s)
   #'string<))


(defvar *tracking-question-patterns* nil "Flag used in trace function")

(defun emit-q-pattern-name (name)
  "Called from trace-wh-walk. When the flag is up write the
   name of the q-pattern that invoked the trace."
  ;; trace fn. is named :wh-walk in objects/trace/discourse.lisp
  (when *tracking-question-patterns*
    (print name)))


(defun run-test-set (list-of-texts)
  "Unencumbered version of test-bio-utterances "
  (flet ((do-test (string)
           (assert (stringp string))
           (handler-case
               (progn
                 (format t "~&~%(p ~s)~%" string)
                 (analyze-text-from-string string))
             (error (e)
               (format t "~&Error ~a~%" e)))))
    (loop for text in list-of-texts do (do-test text))))
       


;;;---------------------------------
;;; ( something else entirely ;-)
;;;---------------------------------

(defun load-bio-test-sentences (&optional (file "all-bioagent-capability-sentences.lisp"))
  "load a file from bio-not-loaded;bioagent-cap-testing -- default 
all-bioagent-capability-sentences.lisp"
  (load (concatenate 'string
                     "sparser:bio-not-loaded;bioagent-cap-testing;"
                     file)))

(defun test-bio-utts->file (&optional (get-cat-roles t)
                            &key (file "all-bioagent-capability-test-results.lisp")
                                 (quiet t))
  "loads all-bioagent-capability-sentences.lisp which should be the
  current sentence list and outputs the result of test-bio-utterances
  to a file, and by default also populates *test-utt-unique-cats* and
  *test-utt-unique-roles* with the unique categories and roles found
  in the clauses from those sentences"
  (declare (special *list-of-utt-lists*))
  (load-bio-test-sentences)
  (with-open-file (stream
                   (concatenate 'string
                                "sparser:bio-not-loaded;bioagent-cap-testing;"
                                file)
                          :direction :output :if-exists :supersede 
                             :if-does-not-exist :create
                             :external-format :UTF-8)
    (test-bio-utterances *list-of-utt-lists* nil :list-of-lists t
                         :stream stream :clauses t :quiet quiet))
    (when get-cat-roles
      (clauses->unique-cats)
      (clauses->unique-roles)
      (sents->sent-cats)))

(defparameter *test-utt-unique-cats* nil)
(defun clauses->unique-cats ()
  (declare (special *clause-semantics-list* *test-utt-unique-cats*))
  (loop for clauses in (mapcar #'cdr *clause-semantics-list*)
        do (loop for clause in clauses
                 do (pushnew (getf clause :isa) *test-utt-unique-cats*))))
(defparameter *test-utt-unique-roles* nil)
(defun clauses->unique-roles ()
  (declare (special *clause-semantics-list* *test-utt-unique-roles*))
  (loop for clauses in (mapcar #'cdr *clause-semantics-list*)
        do (loop for clause in clauses
                 do (loop for i from 0 to (length clause)
                          when (evenp i)
                          do (pushnew (nth i clause) *test-utt-unique-roles*)))))

(defparameter *test-utt-sent-cats* nil)
(defun sents->sent-cats ()
  (declare (special *clause-semantics-list* *test-utt-sent-cats*))
  (loop for sent in *clause-semantics-list*
        do (push `(,(car sent)
                    ,(mapcar #'(lambda(x) (getf x :isa)) (cdr sent)))
                 *test-utt-sent-cats*)))

(defun clause-sem->file (&optional (file "bioagent-cap-sp-clause-sem"))
  (declare (special *clause-semantics-list*))
  (with-open-file  (stream
                    (concatenate 'string
                                 "sparser:bio-not-loaded;bioagent-cap-testing;"
                                 file ".lisp")
                          :direction :output :if-exists :supersede 
                             :if-does-not-exist :create
                             :external-format :UTF-8)
    ;; in cl-user to facilitate loading in :clic
      (format stream "(in-package :cl-user)~%(defparameter *clause-semantics-list*~%'~s)"
              (reverse *clause-semantics-list*))))
  

;; this will probably be in clic eventually, but for now:

(defparameter *missing-wh-cases* nil)
(defparameter *polar-question-cases* nil)

(defun sparser-clauses->ici-like (sent-clauses)
  (let* ((sent (when (stringp (car sent-clauses))
                 (car sent-clauses)))
         (clauses (if sent
                      (cdr sent-clauses)
                      sent-clauses))
        spec-vars wh-var non-wh wh-cat-var rest classes)
    (loop for clause in clauses
          do (let ((var (getf clause :var))
                   (cat (getf clause :isa))
                   (uid (getf clause :uid))
                   (det (getf clause :has-determiner)))
               (cond ((member cat '(POLAR-QUESTION EXPLICIT-SUGGESTION
                                    MOVE-SOMETHING-SOMEWHERE REMOVE
                                    SUMMARIZE
                                    ) ;THERE-EXISTS) 
                              )
                      (push var non-wh)
                      (push (get-category clause) classes)
                      (when (eq cat 'POLAR-QUESTION)
                        (push sent-clauses *polar-question-cases*)))
                     ((member cat '(WHAT WHICH WHERE))
                      (push var wh-cat-var)
                      (setq rest (append rest `(,clause))))
                     (uid
                      (push var spec-vars)
                      (push `(,(get-category clause) :spec) classes))
                     ((member det '("WHAT" "WHICH") :test #'equal)
                      (push var wh-var)
                      (push `(,(get-category clause) :wh) classes))
                     (t
                      (setq rest (append rest `(,clause)))))))
    (unless (or wh-var non-wh)
      (let ((wh-clause (find-wh-clause rest spec-vars wh-cat-var)))
        (cond ((null wh-clause)
               (push sent-clauses *missing-wh-cases*))
               ;(break "can't find wh-clause in:~%~s" clauses))
              ((consp wh-clause) ;; if it's not a cons, that means there was no wh
               (push `(,(get-category wh-clause) :wh) classes)
               (setq rest (remove wh-clause rest))))))
    (loop for clause in rest
          do (push (get-category clause) classes)
          finally (return `(,sent ,classes)))))

(defun find-wh-clause (clauses spec-vars wh-cat-var)
  (let* ((main-clause (first clauses))
         (cat (getf main-clause :isa))
         (rest-clauses (cdr clauses)))
    (cond ((eq cat 'THERE-EXISTS) ;; temporary until david pushes his fix
           (when (eq 'SYNTACTIC-THERE
                   (getf (clause-from-var
                          (getf main-clause :predicate)
                          rest-clauses)
                         :isa))
               (clause-from-var (getf main-clause :value) rest-clauses)))
          ((member cat '(GIVE TELL LIST))
           (clause-from-var (getf main-clause :theme) rest-clauses))
          ((eq cat 'SHOW)
           (let ((theme (getf main-clause :statement-or-theme)))
             (if (member theme spec-vars)
                 "this is a statement"
                 (clause-from-var theme rest-clauses))))
          ((eq cat 'NAME-SOMETHING)
           (clause-from-var (getf main-clause :patient) rest-clauses))
          ((eq cat 'COPULAR-PREDICATION-OF-PP)
           (clause-from-var (getf main-clause :item) rest-clauses))
          ((eq cat 'BE)
           (let ((pred (getf main-clause :predicate)))
             (cond ((member pred spec-vars)
                    (clause-from-var (getf main-clause :subject) rest-clauses))
                   ((eq (getf (clause-from-var pred rest-clauses) :isa) 'QUALITY-PREDICATE)
                    (clause-from-var (getf (clause-from-var pred rest-clauses) :attribute)
                                     rest-clauses))
                   (t
                    (clause-from-var pred rest-clauses)))))
          ((getf main-clause :manner)
           (clause-from-var (getf main-clause :manner) rest-clauses))
          ((getf main-clause :location)
           (clause-from-var (getf main-clause :location) rest-clauses))
          ((getf main-clause :possessor) ;; have
           (clause-from-var (getf main-clause :possessor) rest-clauses))
          (t
           (let ((obj (or (getf main-clause :object)
                          (getf main-clause :direct-bindee)
                          (getf main-clause :item) ;; copular-predication non-polar
                          (getf main-clause :substrate)))
                 (agent (or (getf main-clause :agent)
                            (getf main-clause :agent-or-cause)
                            (getf main-clause :binder))))
             ;(break "hit obj/agent case")
             (cond ((and obj (not (member obj spec-vars)))
                    (clause-from-var obj rest-clauses))
                   ((and agent (not (member agent spec-vars)))
                    (clause-from-var agent rest-clauses))
                   (wh-cat-var
                    (if (cdr wh-cat-var)
                        (break "multiple wh-cat-vars? vars: ~s" wh-cat-var)
                        (clause-from-var (car wh-cat-var) rest-clauses)))
                   ((or obj agent)
                    "this is a statement")
                   #+ignore
                   (t
                    (break "can't find wh-clause in:~%~s" clauses))
                   ))))))

(defun clause-from-var (var clauses)
  (loop for clause in clauses
          when (eq (getf clause :var) var)
        do (return clause)))

(defun get-category (clause)
;  (krisp->eci-category
   (getf clause :isa))
;   )
 

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 Rusty Bobrow  -- all rights reserved
;;;
;;;      File:   "test-functions"
;;;    Module:   "tools:basics"
;;;   Version:   September 2015

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
; These specify which corpus a general iterator
					; should run on.

(defun test-corpus (sentences &optional numbers)
  (setq *sentences* sentences)
  (reset-test)
  (if (null numbers)
      (setq numbers (loop for i from 1 to (length sentences) collect i)))
  (loop for i in numbers
     do
       (run-test i nil)))

(defun sem-test-corpus (sentences &optional numbers)
  (setq *sentences* sentences)
  (reset-test)
  (if (null numbers)
      (setq numbers (loop for i from 1 to (length sentences) collect i)))
  (loop for i in numbers
     do
       (sem-test i)))
  

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

(defun test-erk (&rest numbers)
  (declare (special *erk-abstract*))
  (test-corpus *erk-abstract* numbers))


(defun test-aspp2 (&rest numbers)
  (declare (special *aspp2-whole*))
  (test-corpus *aspp2-whole* numbers))

(defun test-load-test (&rest numbers)
  (declare (special *load-test-sents*))
  (test-corpus *load-test-sents* numbers))

(defun test-sent (corpus n &key (no-edges t) (quiet t) (stream *standard-output*))
  (declare (special *chunks* *overnight-sentences* *jan-dry-run*
                    *dec-tests* *erk-abstract* *aspp2-whole*
                    *load-test-sents*))
  (let*
      ((*readout-segments-inline-with-text* nil) ;; quiet
       (sentences
        (ecase corpus
          ((:overnight overnight) *overnight-sentences*)
          ((:dry-run :jan dry-run jan) *jan-dry-run*)
          ((:dec-test dec-test) *dec-tests*)
          ((:erk erk) *erk-abstract*)
          ((:aspp2 aspp2) *aspp2-whole*)
          ((:load load-test) *load-test-sents*)))
       (test (nth (- n 1) sentences)))
    (declare (special *readout-segments-inline-with-text*))
    (if quiet
        (pp (second test))
        (eval test))
    (format stream "~&~&________________~&(~s ~s)~&~S~&" corpus n (second test))
    (loop for chunk in (reverse *chunks*)
      do (print-segment-and-pending-out-of-segment-words
          (chunk-start-pos chunk)
          (chunk-end-pos chunk)
          stream))
    (let
        ((*no-edge-info* no-edges))
      (declare (special *no-edge-info*))
      (ptree stream))))

(defun save-sent-parse (corpus n)
  (with-open-file (stream (sent-save-file corpus n)
                     :direction :output
                     :if-exists :overwrite
                     :if-does-not-exist :create)
    (test-sent corpus n :stream stream)))


(defparameter *p-sent* nil)
(defparameter *sent-snapshots-directory* nil)

(defun save-sent-snapshots (&optional
                            (corpora '(overnight dec-test dry-run aspp2 erk)))
  (let ((*sent-snapshots-directory* (create-snapshot-directory)))
    (loop for c in corpora
      do (terpri)
      (print c)
      (print (save-corpus-sents c)))))

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
        do
        (save-sent-parse name i)))))

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

(defun show-sem-forest ()
  (loop for edge-tree in
              (tts-edge-semantics)
              do
              (terpri)
              (if (small? (second edge-tree))
                  (then
                    (format t "~&~s" (car edge-tree))
                    (print-tree (second edge-tree) t 0 t t))
                  (else
                    (format t "-----  ~s" (car edge-tree))
                    (print-tree (second edge-tree))))))


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
  (format t "~2%----------------------------------------------~%Processing '~a'~%" sentence)
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

(defun small? (tree)
  (< (tree-size tree) 5))

(defun print-tree (tree &optional (last nil) (indent 0) (stream t)(tight nil))
  (if
   tight
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
          (format stream "~(~a-~a ~s~)"
                  (cat-symbol (car (indiv-type item)))
                  (indiv-uid item)
                  pname)
          (format stream "~(~a-~a~)"
                  (cat-symbol (car (indiv-type item)))
                  (indiv-uid item)))))

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
  (let
      ((res nil))
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
    (let
        ((res (loop for pair in (adjacent-tts) 
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
 

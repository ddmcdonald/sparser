;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2013-2023  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "abbreviations"
;;;   Module:  "init;workspace:"
;;;  version:  September 2023

;; broken out into this form 9/93.
;; 2/23/95 changed definition of P to look for whether *workshop-window* was up, and
;; to inhibit TTs accordingly.  8/28 added Design.  2/9/05 Added ir to inspect
;; rules. (1/07) lots of little additions. 4/9/09 Changed 'inspect' to 'd'
;; 7/21/09 vrp serves as 'wrapper' for exporting output in speech act-inspired format
;; Modified through 9/11/09. 9/18 factored out the checkpoint massaging done in
;; pp to the new file /grammar/model/sl/checkpoing/post-processing.lisp
;; 3/15/13 Added p/art to simulate running a document stream.
;; 4/14 added ier for edge referents and binds for their bindings.
;; 10/9/13 added ietf. 10/17/13 augmented ic to get mixins. 11/18/14 added
;; drs for describe rule set, over words or categories. 1/7/15 Added
;; the names of the plist generics
;; 7/18\9/2015 (defun qepp (string)  ;; quiet, error-protected call to pp

(in-package :sparser)

;;;----------------------------
;;; frequently loaded packages
;;;----------------------------

(defun design ()
  (load "SysAp:Applications:MCL 2.0.1:Interface Tools:make-ift.lisp")
  (format t "~&~%do (ift::load-ift)~%~%"))

;;;--------------------
;;; the plist generics
;;;--------------------

#| 
  plist-for (obj)  
  get-tag-for (obj plist)  
  has-tag? (tag object)
  remove-property-from (obj tag)
  change-plist-value (obj property new-value)
  push-onto-plist (obj item tag)

  add-rule (rule obj)
|#

;;;-----------------------------------------------------
;;;     abbreviations of frequently called routines
;;;-----------------------------------------------------

#|(defun d (obj)
  (describe obj)
  obj)|#


(defun e ( &key from to )
  (display-chart-edges :stream *standard-output*
                       :from from :to to))

(defun e/ends ( &key from to )
  (display-chart-edges :stream *standard-output*
                       :from from :to to
                       :ends-rather-than-starts? t))

;; ev/s, ev/e take position numbers and return the edge-vector
;;   objec that starts/ends at that position. 

(defun chart ()
  (display-chart :style :just-terminals))

;;--- inspectors

(defun ip (number-of-position) (d (position# number-of-position)))

(defun iw (string-for-word)
  (let ((word (word-named string-for-word)))
    (if word
      (d word)
      (format t "\"~a\" is not a known word" string-for-word))))

(defun ir (number-of-rule)
  (let ((rule (psr# number-of-rule)))
    (d rule)))
(defun irr (number-of-rule) ;; just the rule's referent
  (let ((rule (psr# number-of-rule)))
    (format t "referent: ~a" (cfr-referent rule))
    rule))

(defun ic (category-name)
  (let ((category (or (referential-category-named category-name)
                      (category-named category-name)))) ;; e.g. mixin
    (if category
      (d category)
      (else 
       (format t "\"~a\" does not name a category" category-name)
       nil))))


(defmacro sc (cat-name)
  `(super-categories-of
    (category-named 
     ,(if (and (consp cat-name) (eq (car cat-name) 'quote))
	cat-name
	(list 'quote cat-name)))))

(defun ie (number-of-edge) 
  (d (edge# number-of-edge)))

(defun de (number-of-edge) ;; customized
  (let ((e (e# number-of-edge)))
    (format t "~&category: ~a~
               ~%form: ~a~
               ~%rule: ~a~
               ~%referent: ~a~
               ~%left: ~a~
               ~%right: ~a"
            (edge-category e) (edge-form e) 
            (edge-rule e) (edge-referent e)
            (edge-left-daughter e) (edge-right-daughter e))
    (when (eq :long-span (edge-right-daughter e))
      (format t "~&constituents: ~a" (edge-constituents e)))
    e))

(defun ier (number-of-edge) ;; inspect edge referent
  (d (edge-referent (edge# number-of-edge))))

(defun ierb (number-of-edge) ;; inspect bindings of edge referent
  (let ((i (edge-referent (edge# number-of-edge))))
    (if (individual-p i)
      (d (indiv-binds i))
      (else
       (format t "~&~a is not an individual~%" i)
       i))))


(defgeneric di (individual)
  (:documentation "Call describe-individual of the
    argument. Usually used with numberical argument where
    we use the UID number to retrieve the individual.")
  (:method ((n number))
    (let ((i (individual-object# n)))
      (if i (di i) (format nil "No individual with the index ~a" n))))
  (:method ((i individual))
    (describe-individual i)))
          

;; edge vectors
(defun dev/s (position#) (d (ev/s position#)))
(defun dev/e (position#) (d (ev/e position#)))
(defun ppev/s (position#) (pprint-ev (ev/s position#)))
(defun ppev/e (position#) (pprint-ev (ev/e position#)))

;; rule sets
(defgeneric drs (label)
  (:documentation "Call describe on the rule-set of the
   word (given a string or a word), or a category (given
   a symbol or a category).")
  (:method ((pname string))
    (let ((word (resolve pname)))
      (if word (drs word)
          (format nil "~s is not a known word" pname))))
  (:method ((word word))
    (let ((rs (rule-set-for word)))
      (if rs (d rs)
          (format nil "~a does not have a rule set"
                  (word-pname word)))))
  (:method ((name symbol))
    (let ((category (category-named name)))
      (if category (drs category)
          (format nil "\"~a\" does not name a category" name))))
  (:method ((c category))
    (let ((rs (rule-set-for c)))
      (if rs (d rs)
          (format nil "~a does not have a rule set" c)))))

(defun dcr (category-name) ;; "Describe category's rules"
  (display-rules category-name)
  (display-subcategorization category-name)
  (category-named category-name))

(defgeneric loc (item)
  (:documentation "Where was this in the file system when it was 
     catalogued. (The same name can be introduced several times.)")
  (:method ((pname string))
    (let ((w (resolve pname)))
      (if w
        (loc w)
        (format nil "The string '~a' is not a defined word" pname))))
  (:method ((name symbol))
    (let ((c (category-named name)))
      (if c (loc c)
          (format nil "The symbol ~a does not name a category" name))))
  (:method ((w word))
    "If there's an explicit definition it is on the file-location.
     If an undefined word got its properties from its form or via
     Comlex, it's on the source tag."
    (or (get-tag :source w)
        (file-location w)))
  (:method ((pw polyword))
    (or (get-tag :source pw)
        (file-location pw)))
  (:method ((r cfr))
    (file-location r))
  (:method ((c category))
    (cond
      ((itypep c 'comlex-derived) :comlex)
      (t (file-location c)))))

(defgeneric r-of (category)
  (:documentation "Look up the realization (or realizations) of
   a category and apply describe.")
  (:method ((name symbol))
    (realization-of (category-named name t))) ;; error flag
  (:method ((c category))
    (let ((realizations (cat-realization c)))
      (cond
        ((null realizations)
         (format nil "There are no realizations for ~a" (cat-name c)))
        ((null (cdr realizations))
         (pprint-rdata (car realizations) t))
        (t (loop for real in realizations
              do (pprint-rdata real t) (terpri))))
      c)))

#+:mumble
(defgeneric realize (individual)
  (:documentation "Packages frequent idiom when working with Mumble tests")
  (:method ((n number))
    (realize (individual-object# n)))
  (:method ((i individual))
    (let ((m::*trace-archie* t))
      (declare (special m::*trace-archie*))
      (m::pp-dtn (m::realize i)))))

#+:mumble
(defgeneric say (item)
  (:documentation "Another standard idiom for Mumble tests")
  (:method ((n number))
    (say (individual-object# n)))
  (:method ((i individual))
    (m::say i))
  (:method ((text string)) ; this version traps errors
    (m::say text)))

#+:mumble
(defgeneric dtn (i)
  (:documentation "Packages idiom for debugging realization,
    hiding the mumble package")
  (:method ((n number))
    (dtn (individual-object# n)))
  (:method ((i individual))
    (m::pp-dtn (m::get-dtn i))))

#+:mumble
(defgeneric mdata (item)
  (:documentation "Retrieve the mumble resource(s) linked to
 the item, using the same accessors that the realization function
 would. Tries to anticipate what information we'll want to see.")
  (:method ((n number))
    (mdata (individual-object# n)))
  (:method ((i individual))
    (let* ((lp (m::find-lexicalized-phrase i))
           (pos (m::lookup-pos lp))
           (rdata (has-mumble-rdata i :pos pos)))
      (values lp rdata)))
  (:method ((name symbol))
    (mdata (category-named name :break-if-undef)))
  (:method ((c category))
    (let* ((lp (m::find-category-lp c))
           (pos (when lp (m::lookup-pos lp)))
           (rdata (mumble-map-data c)))
      (values lp rdata))))


;;--- accessors

(defun psr# (n)
  (let ((symbol (make-cfr-symbol n)))
    (eval symbol)))

(defun p# (n)
  (position# n))

(defun e# (n)
  (edge# n))

(defun em# (n)
  (edge-mention (edge# n)))

(defun i# (n)
  (individual-object# n))

(defun ietf (name)
  (let ((etf (exploded-tree-family-named name)))
    (if etf
      (d etf)
      (format nil "No exploded tree family is named ~a" name))))
;; categories-using-etf <name>

(defun multiply (n1 n2)
  (trace-multiply)
  (let ((e1 (edge# n1))
        (e2 (edge# n2)))
    (multiply-edges e1 e2))
  (untrace-multiply))

(defmacro ml (label-name1 label-name2)
  `(lookup-rule/rhs '(,(resolve label-name1) ,(resolve label-name2))))
  #+ignore(multiply-labels ,(resolve label-name1) ;; just semantic rulse
                    ,(resolve label-name2))

(defmacro fsr (label-name1 label-name2) ;; find syntax rule
  `(lookup-rule/rhs
    (list (resolve ',label-name1) (resolve ',label-name2))))

(defun ssbr () ;; "Snapshot Sentence Being Run"
  "Compare-to-snapshots runs in 'quiet' mode where we don't know what
 snapshot sentence is running, just the result. This function is 
 valuable when an error occurs during compare-to-snapshots and
 you want to know what the sentence text is, what snapshot corpus
 it is from, and which number sentence  it is within the corpus.
 This uses special variables that are managed by run-treetop-snapshot
 in grammar/tests/citations/code/sentence-corpora.lisp."
  (declare (special *snapshot-corpus* *snapshot-index* *p-sent*))
  (let ((corpus *snapshot-corpus*)
        (index *snapshot-index*)
        (text *p-sent*))
    (format t "~a #~a~%~a" corpus index text)))



;;;------------------
;;; packaged drivers
;;;------------------

(defun pp (string)
  "Keeping this abbreviation even after removing its sublanguage-
   based conditional because other code depends on it."
  (analyze-text-from-string string))

(defparameter *bad-sentences* nil)
(defun qepp (string)  ;; quiet, error-protected call to pp
  (with-total-quiet
      (handler-case
          (progn
            (analyze-text-from-string string)
            (if (equal "" (caar *all-sentences*))
                (setf (car (car *all-sentences*)) string)))
        (error (e)
               (push string *bad-sentences*)
               (format t "~&Error ~a~%" e)))))

(defun safe-parse (string) ;; quiet, error-protected call to pp
  (let ((*trap-error-skip-sentence* t))
    (declare (special *trap-error-skip-sentence*))
    (with-total-quiet (analyze-text-from-string string))))

(defun qpp (string) 
  (with-total-quiet
    (analyze-text-from-string string)))

(defun p (string)
  "Parse the string then print out the treetops"
  (pp string)
  (unless *workshop-window*
    (format t "~&~%")
    (tts)))

(defun p/e (string)
  "Parse string then print out all the edges by starting position"
  (pp string) (e))

(defun p/te (string)
  "Parse string then print out all the edges in order by edge number"
  (pp string) (the-edges))

(defun p/s (string)
  "Parse string then print out the treetops followed by the semtree
   if the string is completely parsed"
  (pp string)
  (format t "~&") (tts)
  (let ((edges (all-tts)))
    (when (null (cdr edges)) ;; single span
      (semtree (car edges)))))

(defun p/a (string &key name quiet skip)
  "Parse the string, which is usually fairly long, treating it like
   an article, i.e. run all the after-actions a display its basic stats."
  (analyze-string-as-article string
                             :name name
                             :quiet quiet
                             :skip skip))

(defun p/s-all (string &optional no-print)
  "Parse string then print out the treetops followed by a list of
   semtrees for all treetops with semantics; with option no-print,
   doesn't print the tts, just returns the semtree list"
  (if no-print
      (qpp string)
      (else (pp string)
            (format t "~&") (tts)))
  (let ((edges (all-tts)))
    (loop for edge in edges
          as sem = (semtree edge)
            when sem
            collect sem)))
    
#+:mumble
(defun p/m (string)
  "Parse the string, print the semtree and mumble it."
  (pp string)
  (let ((edges (all-tts)))
    (when (null (cdr edges))
      (let* ((edge (car edges))
             (sem (semtree edge)))
        (format t "~&~%--> ~s~%"
                (with-output-to-string (mumble::*mumble-text-output*)
                  (mumble::say (car sem))))
        (pprint sem) (terpri) (terpri)))
    (tts)))

(defun p/sem (string)
  "Parse the string and return a neutral semtree of its interpretation.
   Good choice for RT-based regression tests.
   See, e.g.sparser/tests/semantic-structure.lisp"
  (let ((*return-a-value* :referent-of-last-edge)
        (*what-value-to-return* :spire))
    (declare (special *return-a-value* *what-value-to-return*))
    (analyze-text-from-string string)))

(defun p/r (string)
  "Parse the string and then use the return-value capability
   in analysis-core; see drivers/sinks/return-value.lisp"
  (let ((*return-a-value* :referent-of-last-edge)
        (*trap-error-skip-sentence* nil))
    (declare (special *return-a-value*
                      *trap-error-skip-sentence*))
    (analyze-text-from-string string)))

(defun p/r-sem (string)
  "Parse the string and return the value (like p/r) but
   express the value in the variant of semtree notation
   that neutralizes identies such as we use for working
   with Spire."
  (let ((*return-a-value* :referent-of-last-edge)
        (*what-value-to-return* :spire)
        (*trap-error-skip-sentence* nil))
    (declare (special *return-a-value*
                      *what-value-to-return*
                      *trap-error-skip-sentence*))
    (analyze-text-from-string string)))

(defun pt (string)
  (time (pp string))
  (tts))

(defun f (pathname
          &key time ;;(initial-region :header) vestige from WSJ Who's News
            ((:paragraph make-orthographic-paragraphs) t)
            ((:trace tts-after-para) t)
            ((:skip ignore-errors) t)
            (quiet nil)
            (scan t)
            (ext-format :utf-8))
  (format t "~%analyzing ~A~%~%" pathname)
  (if time
    (time (analyze-text-from-file pathname
                                  :paragraph make-orthographic-paragraphs
                                  :skip ignore-errors
                                  :trace tts-after-para
                                  :quiet quiet
                                  :prescan scan
                                  :ext-format ext-format))
    (analyze-text-from-file pathname
                            :paragraph make-orthographic-paragraphs
                            :skip ignore-errors
                            :trace tts-after-para
                            :quiet quiet
                            :prescan scan
                            :ext-format ext-format))
  (article))


;;------------ generic, switched routine
;;
(defun test-function (string/filename)
  (declare (ignore string/filename))
  (break "Test-function switch hasn't been set"))

(setf (symbol-function 'test-function) (symbol-function 'p))
;(setf (symbol-function 'test-function) (symbol-function 'p/tts/buffer))

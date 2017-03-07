;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2013-2017  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "abbreviations"
;;;   Module:  "init;workspace:"
;;;  version:  February 2017

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

(defgeneric rule-for (label)
  (:documentation "Given a word, what is the rule/s in its rule-set")
  (:method ((pname string))
    (let ((w (resolve pname)))
      (if w
        (rule-for w)
        (format t "The word ~s is not defined" pname))))
  (:method ((w word))
    (let ((rs (rule-set-for w)))
      (if rs
        (rule-for rs)
        (format t "~s does not have a rule-set" (pname w)))))
  (:method ((w polyword))
    (let ((rs (rule-set-for w)))
      (if rs
        (rule-for rs)
        (format t "~s does not have a rule-set" (pname w)))))
  (:method ((rs rule-set))
    (values (rs-backpointer rs)
            (rs-single-term-rewrites rs))))

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
               ~%referent: ~a~%"
            (edge-category e) (edge-form e) 
            (edge-rule e) (edge-referent e))
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


(defmethod di ((n number))
  (let ((i (i# n)))
    (if i (di i) (format nil "No individual with the index ~a" n))))

(defmethod di ((i individual))
  (describe-individual i))
          

;; edge vectors
(defun dev/s (position#) (d (ev/s position#)))
(defun dev/e (position#) (d (ev/e position#)))


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
  (let ((e1 (edge# n1))
        (e2 (edge# n2)))
    (multiply-edges e1 e2)))

(defmacro ml (label-name1 label-name2) ;; only semantic labels
  `(multiply-labels ,(resolve label-name1)
                    ,(resolve label-name2)))

(defmacro fsr (label-name1 label-name2) ;; find syntax rule
  `(lookup-syntactic-rule
    (list (resolve ',label-name1) (resolve ',label-name2))))

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

(defun safe-parse (string)
  (let ((*trap-error-skip-sentence* t))
    (declare (special *trap-error-skip-sentence*))
    (with-total-quiet (analyze-text-from-string string))))

(defun qpp (string) ;; quiet, error-protected call to pp
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

(defun p/r (string)
  (let ((*return-value* :referent-of-last-edge))
    (declare (special *return-value*))
    (analyze-text-from-string string)))

(defun pt (string)
  (time (pp string))
  (tts))

(defun f (pathname
          &key time (initial-region :header) )
  (declare (ignore initial-region))
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (format t "~%analyzing ~A~%~%" pathname)
  (if time
    (time (analyze-text-from-file pathname))
    (analyze-text-from-file pathname)))


;;------------ generic, switched routine
;;
(defun test-function (string/filename)
  (declare (ignore string/filename))
  (break "Test-function switch hasn't been set"))

(setf (symbol-function 'test-function) (symbol-function 'p))
;(setf (symbol-function 'test-function) (symbol-function 'p/tts/buffer))

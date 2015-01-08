;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-2005,2013-2015  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "abbreviations"
;;;   Module:  "init;versions:v2.3:workspace:"
;;;  version:  January 2015

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
|#

;;;-----------------------------------------------------
;;;     abbreviations of frequently called routines
;;;-----------------------------------------------------

(defun d (obj)
  (describe obj)
  obj)


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

(defun ie (number-of-edge) (d (edge# number-of-edge)))

(defun ip (number-of-position) (d (position# number-of-position)))

(defun iw (string-for-word)
  (let ((word (word-named string-for-word)))
    (if word
      (d word)
      (format t "\"~a\" is not a known word" string-for-word))))

(defun ir (number-of-rule)
  (let ((rule (psr# number-of-rule)))
    (d rule)))

(defun ic (category-name)
  (let ((category (or (referential-category-named category-name)
                      (category-named category-name)))) ;; e.g. mixin
    (if category
      (d category)
      (else 
       (format t "\"~a\" does not name a category" category-name)
       nil))))

;(defun iv (variable-name)
;  (let ((v (find-variable variable-name)))
;    (


(defun ier (number-of-edge) ;; inspect edge referent
  (d (edge-referent (edge# number-of-edge))))

(defun ierb (number-of-edge) ;; inspect bindings of edge referent
  (let ((i (edge-referent (edge# number-of-edge))))
    (if (individual-p i)
      (d (indiv-binds i))
      (else
       (format t "~&~a is not an individual~%" i)
       i))))


(defmethod drs ((pname string)) ;; Desribe rule set
  (let ((word (resolve pname)))
    (if word (drs word)
        (format nil "~s is not a known word" pname))))
(defmethod drs ((word word))
  (let ((rs (rule-set-for word)))
    (if rs (d rs)
        (format nil "~a does not have a rule set"
                (word-pname word)))))
(defmethod drs ((name symbol))
  (let ((category (category-named name)))
    (if category (drs category)
        (format nil "\"~a\" does not name a category" name))))
(defmethod drs ((c category))
  (let ((rs (rule-set-for c)))
    (if rs (d rs)
        (format nil "~a does not have a rule set" c))))


;;--- accessors

(defun psr# (n)
  (let ((symbol (intern (string-append "PSR" (format nil "~a" n))
			(find-package :rule))))
    (eval symbol)))

(defun p# (n)
  (position# n))

(defun e# (n)
  (edge# n))

(defun i# (n)
  (individual-object# n))

(defun psi# (n)
  (psi-object# n))

;; lp#  -- for lattice points

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

;;;------------------
;;; packaged drivers
;;;------------------

(defun pp (string)
  (cond
    (*checkpoint-operations*
     ;; outputs parse as s-expression in speech act-inspired format
     (checkpoint-call-and-postprocessing string))
    (t (analyze-text-from-string string))))

(defun p (string)
  (pp string)
  (unless *workshop-window*
    (format t "~%~%")
    (tts)))

(defun p/e (string)  (pp string) (e))
(defun p/te (string) (pp string) (the-edges))

(defun pt (string)
  (time (pp string))
  (tts))

(defun f (pathname
          &key time (initial-region :header) )
  (declare (ignore initial-region))
  (when *open-stream-of-source-characters*
    (close-character-source-file))
  (format t "~%analyzing ~A~%" pathname)
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

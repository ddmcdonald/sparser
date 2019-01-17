;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2018 David D. McDonald -- all rights reserved
;;;
;;;      File:   "record"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   December 2018

;; Initiated 12/28/18 to tabulate rule and semantic function usage
;; and correlation with test passages in texts.

#| This codes keeps a tally of what rules are used, as well as which
syntactic functions are used by those rules (principally syntactic
rules) in order to interpret them.

The needed structure and cross-records are set up as part of post-processing.
The rule counting itself is pretty lightweight and happens automatically,
i.e. there's no governing switch. 

The recording accumulates as you run over more texts. If you want a clean
start call reinitialize-rule-recording, which will reset the pre-run 
accumulators. 

Presently report-syntactic-function-usage is the only report function that's
been written, but the possibilities are endless. In particular I'd like to
correlate rules and more so syntactic functions to examples of the texts that
use them in order to have tailored regression tests.

|#

(in-package :sparser)

;;--- clear

(defun reinitialize-rule-recording ()
  "Reset all records of previous runs"
  (clear-rule-records)
  (clear-syntactic-function-usage-data))


;;--- Accumulators

(defvar *rule-firing-counts* (make-hash-table)
  "From rules to the number of times they've been used")

(defvar *rules-ever-fired* nil
  "Simple list of all the rules ever fired.")

(defun clear-rule-records ()
  "To initialize accumulators between runs that we want data on."
  (clrhash *rule-firing-counts*)
  (setq *rules-ever-fired* nil))


;;--- Driver

(defun record-rule (rule)
  "Called from referent-from-rule. Always on.
   Adds to the incidence count of the rule.
   If the rule involves a semantic function it is listed and
   counted as well (if the semantic function structures have been
   initialized.)"
  (pushnew rule *rules-ever-fired*)
  (unless (gethash rule *rule-firing-counts*)
    (setf (gethash rule *rule-firing-counts*) 0))
  (incf (gethash rule *rule-firing-counts*))
  (let ((fn-data (uses-syntactic-function rule)))
    (when fn-data
      ;; Could increment `(,rule ,count) if we have a use-case
      (incf (callers fn-data)))))


;;--- accessors

(defgeneric rule-records (rule)
  (:documentation "Look up the rule in the records and return a
    summary of what we've found out about it (presently just its count)")
  (:method ((rule-number integer))
    (let ((rule (psr# rule-number)))
      (assert rule)
      (rule-records rule)))
  (:method ((r cfr))
    (gethash r *rule-firing-counts*))
  (:method ((s symbol))
    (gethash s *rule-firing-counts*)))
    

;;--- reports

(defvar *sorted-rule-firing-data* nil
  "A version of the rules that ever fired list, sorted form highest
 firing frequency to lowest")

(defun sort-rules-by-number-of-times-used ()
  (labels ((sort-name (r)
           (etypecase r
             (cfr (string-for-rule r))
             (da-rule (symbol-name (da-name r)))))
           (sort-rule-data (r1 r2)
             (cond ((> (cdr r1) (cdr r2)) t)
                   ((< (cdr r1) (cdr r2)) nil)
                   ((= (cdr r1) (cdr r2))
                    (cond ((string< (sort-name (car r1)) (sort-name (car r2))) t)
                          ((string> (sort-name (car r1)) (sort-name (car r2))) nil))))))

    (let ((raw (loop for rule in *rules-ever-fired*
                 as count = (gethash rule *rule-firing-counts*)
                 collect (cons rule count))))
      (let ((sorted (sort raw #'sort-rule-data)))
        (setq *sorted-rule-firing-data* sorted)
        (length sorted)))))

(defun report-rules-by-count ()
  (loop for pair in *sorted-rule-firing-data*
     as rule = (car pair)
     as count = (cdr pair)
     do (format t "~&~a   ~a" count rule)))


(defvar *sorted-function-data* nil) ;; managed by assemble-function-report-data
(defvar *raw-function-data* nil)

(defun assemble-function-report-data ()
  "Gets the data organized for use by report-syntactic-function-usage"
  (flet ((sort-fn-data (d1 d2)
           (cond ((> (cadr d1) (cadr d2)) t) ; largest first
                 ((< (cadr d1) (cadr d2)) nil)
                 ((= (cadr d1) (cadr d2))
                  (cond ((string< (car d1) (car d2)) t)
                        ((string> (car d1) (car d2)) nil))))))
    (let ((raw
           (loop for fn-name in (syntactic-functions-defined)
              as d = (get-syntactic-function-data fn-name)
              collect `(,(symbol-name (name d)) ,(callers d)))))
      (setq *raw-function-data* raw)
      (let ((sorted (sort raw #'sort-fn-data)))
        (setq *sorted-function-data* sorted)
        (length sorted)))))

(defun report-syntactic-function-usage ()
  "List the raw counts of invoked syntactic functions"
  (when (null *sorted-function-data*)
    (assemble-function-report-data))
  (loop for rd in *sorted-function-data*
     do (format t "~&~a ~a~%" (cadr rd) (car rd))))

  

;;--- Record use of syntactic functions or methods

(defvar *syntactic-functions-in-use* 0
  "A list of the names of all of the syntactic functions or
   methods that are the reference data for some rule.
   Initialized during postprocessing.")

(defvar *uses-syntactic-function* (make-hash-table)
  "From a rule to its syntactic-function-data")

(defgeneric uses-syntactic-function (rule)
  (:documentation "Return the data for the syntactic function
    associated with this rule if there is any.")
  (:method ((rule-number integer))
    (let ((rule (psr# rule-number)))
      (assert rule)
      (uses-syntactic-function rule)))
  (:method ((r cfr))
    (gethash r *uses-syntactic-function*))
  (:method ((da da-rule)) nil))


(defclass syntactic-function-data (named-object)
  ((rules :initform nil :accessor rules-using)
   (instances :initform 0 :accessor callers))
  (:documentation "Each instance represents data about one
 syntactic function. The set of this data is created by
 a one-time call to collect-syntactic-function-usage, or after
 significant changes to the grammar. Explicitly called by
 the postprocessing routines that report the statistic
 on the model and grammar.
 Rules is a list of all the rules that invoke the function.
 Instances is count of the number of times it's called.
 That could be refined to note which rule called it, but
 only once we know what we'll do with the information."))

(setup-find-or-make syntactic-function-data)
;; Automatically generates:
;; get-syntactic-function-data
;; *syntactic-function-data-table*
;; clear-syntactic-function-data

(defun collect-syntactic-function-usage ()
  "Walk through all the context-free rules. For each one that
   uses a function or a method in its referent add that function
   to the set, or extend the list of rules that use it."
  (dolist (r *context-free-rules-defined*)
    (unless (lexical-rule? r)
      (when (or (referent-uses-function? r)
                (referent-uses-method? r))
        (let* ((fn-name (second (cfr-referent r)))
               (data (update-fixed-data-for-syntactic-function fn-name r)))
          (setf (gethash r *uses-syntactic-function*) data))))))

(defun update-fixed-data-for-syntactic-function (name rule)
  "There is a rule that references this function ('name').
   Create the instance if needed and add this rule to its list."
  (let ((data (find-or-make-syntactic-function-data name)))
    (push rule (rules-using data))
    data))


(defun syntactic-functions-defined () ;; 93 on 12/28/18
  (all-hash-keys *syntactic-function-data-table*))

(defun rules-using-syntactic-functions () ;; 1,016 on 12/28/18
  (all-hash-keys *uses-syntactic-function*))


(defun reinitialize-syntactic-function-data ()
  "Completely zeros the data (e.g. for debugging)
   Use clear-syntactic-function-usage-data for clearing out
   the instance data could between runs"
  (clear-syntactic-function-data)
  (clrhash *uses-syntactic-function*))

(defun clear-syntactic-function-usage-data ()
  "Clears the per-run information on the syntactic function data,
   leaving the permanent information such as which rules use them."
  (loop for fn-name in *syntactic-functions-in-use*
     as fd = (get-syntactic-function-data fn-name)
     do (setf (callers fd) nil)))

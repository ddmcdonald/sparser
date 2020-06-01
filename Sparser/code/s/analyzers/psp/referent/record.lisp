;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2018-2020 David D. McDonald -- all rights reserved
;;;
;;;      File:   "record"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   June 2020

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

We only make a record of binary rules. This record includes the actual
text of the left and right edges that were composed, as well as the
entire sentence there were in. (Need to extending this to the DA rules.)
Still working on how best to display this information.


Usage: Before you want to start recording you need to populate the
  data that relates rules to their syntactic functions by calling

     (collect-syntactic-function-usage)

  The rules that have been recorded (i.e. have executed since you
launched your session or run reinitialize-rule-recording) are listed
in *rules-ever-fired*

  Report-syntactic-function-usage prints out a list of the syntactic 
functions that were invoked by any of the rule that were fired.

  Report-rules-by-count does the comparable thing for each of the
rules, including any DA rules.

|#

(in-package :sparser)

;;--- Accumulators

(defvar *rules-to-records* (make-hash-table)
  "From rule objects to their record-of-rule instances.
   Set in record-rule and accessed numerous places")

(defvar *rules-ever-fired* nil
  "Simple list of all the rules ever fired.")

(defvar *syntactic-functions-in-use* 0
  "A list of the names of all of the syntactic functions or
   methods that are the reference data for some rule.
   Initialized during postprocessing.")

(defvar *uses-syntactic-function* (make-hash-table)
  "From a rule to its syntactic-function-data")

(defvar *sorted-rule-firing-data* nil
  "A version of the rules that ever fired list, sorted form highest
   firing frequency to lowest")

(defvar *sorted-function-data* nil
  "Managed by assemble-function-report-data")


;;--- initialization

(defun initialize-rule-recording ()
  "Have to populate the rules->syntactic-functions table,
   and start the state variables in ia clean state"
  (collect-syntactic-function-usage)
  (empty-record-accumulators))

;;--- clear
  
(defun reinitialize-rule-recording ()
  "Reset all records of previous runs"
  (reset-rule-records)
  (empty-record-accumulators)
  (clear-syntactic-function-usage-data))

(defun reset-rule-records ()
  "To initialize accumulators between runs. To rerun over the same texts
   the find-or-make treatment requires us to go into every class instance
   and explicitly reinitialize its fields."
  (flet ((clear-record-of-rule (r)
           (setf (instance-count r) 0)
           (setf (instance-context r) nil))) ;; free the rule-context's for GC
    (loop for rule in *rules-ever-fired*
       as record = (gethash rule *rules-to-records*)
       do (clear-record-of-rule record))))

(defun empty-record-accumulators ()
  (clrhash *rules-to-records*)
  (setq *rules-ever-fired* nil
        *sorted-rule-firing-data* nil
        *sorted-function-data* nil))

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

;;--- Classes

(defclass syntactic-function-data (named-object)
  ((rules :initform nil :accessor rules-using)
   (instances :initform (make-hash-table) :accessor callers))
  (:documentation "Each instance represents data for one
 syntactic function. The set of this data is created by
 a one-time call to collect-syntactic-function-usage, or after
 significant changes to the grammar. Explicitly called by
 the postprocessing routines that report the statistic
 on the model and grammar.
  - Rules is a list of all the rules that invoke the function.
  - Instances is count of the number of times it's called.
 That could be refined to note which rule called it, but
 only once we know what we'll do with the information."))

(setup-find-or-make syntactic-function-data)
;; Automatically generates:
;;   get-syntactic-function-data
;;   *syntactic-function-data-table*
;;   clear-syntactic-function-data


(defclass record-of-rule (named-object)
  ((count :initform 0 :accessor instance-count)
   (context :initform nil :accessor instance-context))
  (:documentation ""))
(setup-find-or-make record-of-rule)

(defclass rule-context ()
  ((left :initform "" :initarg :left :accessor left-side)
   (right :initform "" :initarg :right :accessor right-side)
   (s :initform "" :initarg :sentence :accessor sentence-context)
   ;; could add where the sentence is found
   (rule :initform nil :initarg :rule :accessor for-rule)
   )
  (:documentation ""))

(defmethod print-object ((rc rule-context) stream)
  (print-unreadable-object (rc stream :type t)
    (format stream "~s + ~s"
            (left-side rc) (right-side rc))))

;;--- Driver

(defun record-rule (rule)
  "Called from referent-from-rule. Always on.
   Adds to the incidence count of the rule.
   If the rule involves a semantic function it is listed and
   counted as well (if the semantic function structures have been
   initialized.)
   Regular rules are indexed off the rule. DA rules are indexed off
   the da rule object."
  (declare (special *subcat-test*))
  (unless *subcat-test*
    (pushnew rule *rules-ever-fired*)
    (let* ((rule-name
            (etypecase rule
              (cfr (rule-name rule))
              (da-rule (da-name rule))))
           (record (find-or-make-record-of-rule rule-name))
           (fn-data (when (typep rule 'cfr) (syntactic-function-data rule))))
      ;;/// don't yet know how to reliably identify the equivalent of a syntactic
      ;; function for a DA rule. They're often usually a couple steps down
      ;; the calling chain
      (setf (gethash rule *rules-to-records*) record)
      (incf (instance-count record))
      (when fn-data
        (let* ((table (callers fn-data))
               (rule-entry (gethash rule table)))
          ;;(push-debug `(,fn-data ,table ,rule-entry)) (break "rule-entry: ~a" rule-entry)
          (if rule-entry
            (incf (gethash rule table))
            (setf (gethash rule table) 1))))
      (when (typep rule 'cfr) ; DA rules need different collectors
        (setup-rule-citations record rule-name))
      ;; (break "rule = ~a" rule)
      record)))

(defun setup-rule-citations (record rule-name)
  "Record what text strings were involved. Assumes we're looking at a binary
   phrase structure rules from a calling point in referent-from-rule when
   the refevant variables have values."  
  (let* ((left-edge (left-edge-for-referent))
         (right-edge (right-edge-for-referent))
         (left-text (string-for-edge left-edge))
         (right-text (when (and right-edge (edge-p right-edge))
                       (string-for-edge right-edge)))
         (s-text (current-string)))
    (let ((rc (make-instance 'rule-context
                             :left left-text
                             :right right-text
                             :sentence s-text
                             :rule rule-name)))
      (push rc (instance-context record))
      rc)))



;;--- accessors

(defgeneric rule-record (rule)
  (:documentation "Look up the rule and return its record-of-rule instance.")
  (:method ((rule-number integer))
    (let ((rule (psr# rule-number)))
      (assert rule)
      (rule-record rule)))
  (:method ((r cfr))
    (get-record-of-rule (rule-name r)))
  (:method ((s symbol))
    (gethash s *rule-firing-counts*)))

(defgeneric show-recorded-contexts (rule)
  (:documentation "Lookup the list of rule-contexts associated with the rule
    and print some number of them to standard-out.")
  (:method ((rule-number integer))
    (let ((rule (psr# rule-number)))
      (assert rule)
      (show-recorded-contexts rule)))
  (:method ((rule cfr))
    (let ((record (rule-record rule)))
      (unless record (error "could not retrieve a record for ~a" rule))
      (let ((contexts (when record (instance-context record))))
        (loop for c in contexts do (print c))))))


;;--- sorting

(defun sort-name (r)
  "What string do we use when sorting rules"
  (etypecase r
    (cfr (string-for-rule r))
    (da-rule (symbol-name (da-name r)))))

(defun sort-rule-data (r1 r2)
  "Sort function. Input is a car/cdr pair of a rule and its instance count.
   Ordering is higher frequency (cound) and then alphabetically by name"
  (cond ((> (cdr r1) (cdr r2)) t)
        ((< (cdr r1) (cdr r2)) nil)
        ((= (cdr r1) (cdr r2))
         (cond ((string< (sort-name (car r1)) (sort-name (car r2))) t)
               ((string> (sort-name (car r1)) (sort-name (car r2))) nil)))))


(defun report-rules-by-count ()
  "Prints a list of the sorted record of all the rules ever fired"
  (unless *sorted-rule-firing-data*
    (sort-rules-by-number-of-times-used))
  (loop for pair in *sorted-rule-firing-data*
     as rule = (car pair)
     as count = (cdr pair)
     do (format t "~&~a   ~a" count rule)))

(defun sort-rules-by-number-of-times-used ()
  "Sorts the entire list of rules ever fired by frequency and then
   alphabetically"
  (let ((raw (loop for rule in *rules-ever-fired*
                as record = (gethash rule *rules-to-records*)
                as count = (instance-count record)
                collect (cons rule count))))
    (let ((sorted (sort raw #'sort-rule-data)))
      (setq *sorted-rule-firing-data* sorted)
      (length sorted))))



;;--- managing syntactic functions

(defgeneric rules-actually-used (fn-data)
  (:documentation "Return the list of rules actually used for a given
     syntactic function")
  (:method ((name symbol))
    (rules-actually-used (get-syntactic-function-data name)))
  (:method ((fn-data syntactic-function-data))
    (loop for rule being the hash-key of (callers fn-data)
       collect rule)))

(defgeneric callers-to-pairs (fn-data)
  (:documentation "Spread the callers table for this syntactic function
     record into a list of rule-count pairs")
  (:method ((name symbol))
    (callers-to-pairs (get-syntactic-function-data name)))
  (:method ((fn-data syntactic-function-data))
    (loop for rule in (rules-actually-used fn-data)
       as record = (rule-record rule)
       collect `(,rule . ,(instance-count record)))))

(defgeneric number-of-rules-using (fn-data)
  (:documentation "Just returns the count as an integer")
  (:method ((name symbol))
    (number-of-rules-using (get-syntactic-function-data name)))
  (:method ((fn-data syntactic-function-data))
    (hash-table-count (callers fn-data))))

(defgeneric frequency-of-rules-using (fn-data)
  (:documentation "List in sorted order the rules actually called
   for this syntactic function")
  (:method ((name symbol))
    (frequency-of-rules-using (get-syntactic-function-data name)))
  (:method ((fn-data syntactic-function-data))
    (let ((sorted (sort (callers-to-pairs fn-data)
                        #'sort-rule-data)))
      (loop for pair in sorted
         as rule = (car pair)
         as count = (cdr pair)
         do (format t "~&~a   ~a" count rule)))))



(defun report-syntactic-function-usage ()
  "List the raw counts of all actually invoked syntactic functions"
  (when (null *sorted-function-data*)
    (assemble-function-report-data))
  (loop for rd in *sorted-function-data*
     do (format t "~&~a ~a~%" (cadr rd) (car rd))))

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
              as fn-data = (get-syntactic-function-data fn-name)
              as count = (length (rules-actually-used fn-data))
              when (> count 0)
              collect `(,(symbol-name fn-name) ,count))))
      (let ((sorted (sort raw #'sort-fn-data)))
        (setq *sorted-function-data* sorted)
        (length sorted)))))

  

;;--- Record use of syntactic functions or methods

(defgeneric syntactic-function-data (rule)
  (:documentation "Return the data for the syntactic function
    associated with this rule if there is any. Not clear how to
    identify the correct function for a DA rule since many of them
    are not directly referenced in the rule, only the set up for
    the real one.")
  (:method ((rule-number integer))
    (let ((rule (psr# rule-number)))
      (assert rule)
      (syntactic-function-data rule)))
  (:method ((r cfr))
    (gethash r *uses-syntactic-function*))
  (:method ((da da-rule)) nil))


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


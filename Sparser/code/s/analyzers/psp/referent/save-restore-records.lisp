;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald -- all rights reserved
;;;
;;;      File:   "save-restore-records"
;;;    Module:   "analyzers;psp:referent:"
;;;   Version:   June 2020

;; Kept as independent file from record.lisp for ease of coding

(in-package :sparser)


(defparameter *where-to-save-rule-records* ;;/// make more variable
  (merge-pathnames
   "Sparser/code/s/grammar/tests/rule-records.lisp"
   (asdf:system-relative-pathname :sparser "")))

(defvar *rules-whose-records-to-save* nil)

(defun populate-rules-whose-records-to-save ()
  "Just binary phrase structure rules. No DA rules yet since we don't
   yet extract contexts for them. List sorted alphabetically."
  (let ((binary-rules ; filter out the DA rules
         (loop for rule in *rules-ever-fired* ; 340 in 6/10/20 test
            ;; when (and (cfr-p rule) ; no da rules
            ;;           (binary-rule? rule)) ; no context-sensitive rules
            when (and (cfr-p rule) ; no da rules
                      (= 2 (length (cfr-rhs rule)))) ; 285
            collect rule)))
    (setq *rules-whose-records-to-save*
          (sort binary-rules #'sort-rules))
    (length *rules-whose-records-to-save*)))


(defun save-rule-records ()
  (with-open-file (stream *where-to-save-rule-records*
                          :direction :output
                          :if-exists :supersede)
    ;; preamble
    (format stream "~&~%;; Rule execution records  ~a~
                    ~%;; ~a binary rules fired (out of ???)~
                    ~%;; ?? debris analysis rules fired~
                    ~%~%(in-package :sparser)~%~%"
            "6/10/20" ;;(date-&-time-as-formatted-string) -- blows up, lisp too old?
            (length *rules-ever-fired*)
            ;; DA count, also syn.fns used out of total
            )
    (loop for rule in *rules-whose-records-to-save*
       do (write-rule-record rule stream))))


(defvar *rule* nil) ; just for initial debugging

(defun write-rule-record (rule stream)
  (setq *rule* rule)
  (let* ((name (rule-name rule)) ; |S → {S THAN-NP}|
         (record (get-record-of-rule name))
         (contexts (instance-context record))
         (function (syntactic-function-data rule))
         (fn-name (when function (name function)))
         (name-expression (expression-for-rule rule)))         
    (format stream "~&~
                    ~%(define-rule-record  ; ~a~
                    ~%  :form ~a~
                    ~%  :count ~a~
                    ~%  :function ~a~
                    ~%  :contexts~
                    ~%     "
            rule
            name-expression
            (instance-count record)
            fn-name)
    (do ((context (car contexts) (car rest))
         (first? t nil)
         (rest (cdr contexts) (cdr rest)))
        ((null context) (format stream "))"))
      (when first?
        (write-string "(" stream))
      (if first?
        (format stream "(:left ~s" (left-side context))
        (format stream "~&      (:left ~s" (left-side context)))
      (format stream "~&       :right ~s)" (right-side context))

      rule)))

#|
(define-rule-record   ; #<PSR-1406 {pp} → be pp>
  :form (n-bar > common-noun common-noun/plural)
  :count 1
  :function 'make-comparative-adjp-with-np
  :contexts
    ((:left "Is the amount of MAP2K1­MAPK1 complex higher at 1 hour "
      :right "than the amount of MAPK1­DUSP6 complex")))

    |#


;;--- restore

(defun recover-rule-records ()
  (with-open-file (stream *where-to-save-rule-records*
                          :direction :input
                          :if-does-not-exist :error)
    (loop for form = (read stream nil :eof)
       until (eq form :eof)
         do (handle-rule-record-form form))))

(defun handle-rule-record-form (form)
  (handler-case
      (eval form)
    (error (e)
      (format t "~&error reading form:~%~a" e))))

(defmacro define-rule-record (&rest key-value-pairs)
  "Rehydrate the original rule and record"
  (let ((expression (cadr (memq :form key-value-pairs))))
    (unless expression
      (push-debug `(,key-value-pairs))
      (break "Didn't find the expression"))
    (let ((rule (apply #'find-cfr expression)))
      (unless rule
        (error "~&Could not recover rule from ~a" expression))
      `(apply #'rehydrate-rule-record ,rule (quote-every-other-one ',key-value-pairs)))))


(defun rehydrate-rule-record (rule &key form count function contexts) ;; &allow-other-keys)
  "Rehydrate the original rule and record"
  ;; No-op right now
  (when rule
    (push-debug `(,count ,function ,contexts))
    (format t "~& read ~a" rule)))



;;--- test rule recovery

(defun test-recorded-rule-recovery (&optional (start-at 0))
  "Can we recover the original (loaded) rule from the expression
   we use for it."
  (let ((list-of-rules (nthcdr start-at *rules-whose-records-to-save*))
        (count start-at))
    (flet ((test-rule-recovery (rule)
             (let* ((expression (expression-for-rule rule))
                    (result (apply #'find-cfr expression)))
               (unless (cfr-p result)
                 (format t "~&~%~a   ~a" count rule)
                 (format t "~&  failed: ~a" expression)))))
      (loop for rule in list-of-rules
         ;;as count = (incf count)
         do (progn (incf count)
                   (test-rule-recovery rule)))
      (length list-of-rules))))


;;--- unnecessary?

(defun rehydrate-words-in-rule-expression (expr)
  "Replace every string in the expression with the corresponding word"
  (if (some #'stringp expr)
    (loop for term in expr
       when (stringp term)
       do (setq term (word-named term))
       collect term)
    expr))

  

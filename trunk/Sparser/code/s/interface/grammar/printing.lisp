;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "printing"
;;;    Module:  "interface;grammar:"
;;;   version:  April 1994

;; initiated 2/10/92 v2.2, adjusted 2/20 to changes in field names
;; (4/6/94) Added Describe-gmod.

(in-package :sparser)


(defun describe-gmod (gm)
  ;; called when 'describe' is selected off a leaf menu on the
  ;; grammar modules menu
  (number-of-objects gm *standard-output*))


;;;----------------------------
;;; routines on single modules
;;;----------------------------

(defun pretty-print-grammar-module (gm &optional
                                       (stream *standard-output*))
  (format stream "~&~%Grammar module   ")
  (display-grammar-module gm stream)

  (format stream "~%  cf rules: ")
  (dolist (rule (gmod-cf-rules gm))
    (format stream "~A~%           " rule))

  (format stream "~%  cs rules: ")
  (dolist (rule (gmod-cs-rules gm))
    (format stream "~A~%           " rule))

  (format stream "~% non terminals: ")
  (dolist (c (gmod-non-terminals gm))
    (format stream "~A~%             " c))

  (format stream "~% object types: ")
  (dolist (c (gmod-object-types gm))
    (format stream "~A~%             " c))

  (format stream "~% words: ")
  (dolist (w (gmod-words gm))
    (princ-word w stream)
    (format stream " "))

  (format stream "~% polywords: ")
  (dolist (p (gmod-polywords gm))
    (princ-word p stream)
    (format stream " "))

  (format stream "~% files: ")
  (dolist (f (gmod-files gm))
    (format stream "~A~%        " f))

  gm )


(defun number-of-objects (gm &optional
                              (stream *standard-output*))
  (format stream "~%module: ")
  (display-grammar-module gm stream)
  (format stream "~% ~A context free rules" (length (gmod-cf-rules gm)))
  (format stream "~% ~A context sensitive rules" (length (gmod-cs-rules gm)))
  (format stream "~% ~A non terminals" (length (gmod-non-terminals gm)))
  (format stream "~% ~A object types" (length (gmod-object-types gm)))
  (format stream "~% ~A words" (length (gmod-words gm)))
  (format stream "~% ~A polywords" (length (gmod-polywords gm)))
  (format stream "~% ~A files~%" (length (gmod-files gm)))
  gm )


;;;-------------------------------
;;; routines over all the modules
;;;-------------------------------

(defun numbers-of-objects (&optional (stream *standard-output*))
  (dolist (gm *grammar-modules-in-image*)
    (number-of-objects gm stream)
    (terpri stream)))


;;;---------------------------
;;; Pretty printing referents
;;;---------------------------
;; Could adapt this from the workbench printing routines,
;; but they're entangled with visual elements.

(defmethod walk-model ((i individual) stream)
  (let ((*individuals* (list i))
         *printed*  i )
    (declare (special *individuals* *bindings*))
    (labels ((indiv/short-form (i)
             (format nil "#<~a ~a>"
                     (cat-symbol (itype-of i))
                     (indiv-id i)))
           (format-binding-value (v)
             (typecase v
               (individual 
                (unless (memq v *individuals*)
                  (setq *individuals*
                        (tail-cons v *individuals*)))
                (indiv/short-form v))
               (otherwise
                (format nil "~a" v))))
           (format-binding (b type)
             (let ((id (binding-id b))
                   (var (binding-variable b))
                   (value (binding-value b))
                   (body (binding-body b)))
               (ecase type
                 (:bind
                  (format nil "[b~a ~a: ~a]"
                          id (var-name var)
                          (format-binding-value value)))
                 (:bound-in 
                  (format nil "[b~a the ~a of ~a]"
                          id (var-name var)
                          (format-binding-value body)))))))
      (loop
        (when (null *individuals*)
          (return))
        (setq i (pop *individuals*))
        (unless (memq i *printed*)
          (setq *printed* (push i *printed*))
          (let* ((type-field (indiv-type i))
                 (binds (indiv-binds i))
                 (bound-in (indiv-bound-in i)))
            (format stream "~&~%~a"
                    (indiv/short-form i))
            
            (format stream "~&  Type: (")
            (dolist (c type-field) 
              (format stream "~a " (cat-symbol c)))
            (format stream ")~%")
            
            (when (or binds bound-in)
              (format stream "~&  Relations:~%"))
            
            (dolist (b binds)
              (format stream "~&    ~a"
                      (format-binding b :bind)))
            
            (dolist (b bound-in)
              (format stream "~&    ~a"
                      (format-binding b :bound-in)))
            
            (format stream "~%")))))))



;;;--------------------------------------------------
;;; Printing for tab-delimited human-readable output
;;;--------------------------------------------------



(defmethod print-readably ((i individual) stream)
  (let ((type (car (indiv-type i)))
        (binds (indiv-binds i)))
    (let ((mitre-ordered-bindings
           (mitre-order-bindings binds i)))
      (format stream "~&~a~{~T~a~}~%" ;; does ~T insert a cntrl-J ??
              (mitre-string type)
              mitre-ordered-bindings))))

(defparameter *debug-order-of-bindings* nil)

(defun mitre-order-bindings (bindings i)
  (let ( vars var-value-pairs )
    ;; first filter for category and collect info
    (dolist (b bindings)
      (let* ((var (binding-variable b))
             (var-name (var-name var))
             (value (binding-value b)))
        (unless (eq var-name 'category)
          (push var-name vars)
          (push `(,var-name ,value)
                var-value-pairs))))
    (push-debug `(,vars ,var-value-pairs))
    ;; (setq vars (car *) var-binding-pairs (cadr *))
    (cond
     ((= 1 (length vars))
      (list (mitre-string (cadr (car var-value-pairs)))))
     ((and (memq 'agent vars)
           (memq 'patient vars))
      (let ((agent-value (cadr (assq 'agent var-value-pairs)))
            (patient-value (cadr (assq 'patient var-value-pairs))))
        (push-debug `(,agent-value ,patient-value))
        (list (mitre-string agent-value)
              (mitre-string patient-value))))
     (*debug-order-of-bindings*
      (push-debug `(,i))
      (break "new configuration of bindings for ~a:~%vars = ~a" i vars))
     (t ;; print them in the order given, with a note
      (let ( strings )
        (dolist (pair var-value-pairs)
          (let ((value (cadr pair)))
            (push-debug `(,value))
            (push (mitre-string value) strings)))
        (list (nreverse strings)))))))

(defmethod mitre-string ((c category))
  (format nil "~a" (cat-symbol c)))

(defmethod mitre-string ((i individual))
  (let ((word (value-of 'name i)))
    (unless word
      (push-debug `(,i))
      (break "No name field on ~a" i))
    (typecase word
      (word (word-pname word))
      (polyword (pw-pname word))
      (otherwise
       (push-debug `(,i ,word))
       (break "Unexpected value for name: ~a~%~a"
              (type-of word) word)))))





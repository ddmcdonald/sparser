;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "printers"
;;;   Module:  "objects;model:individuals:"
;;;  version:  April 2020

;; initiated 7/16/92 v2.3, 9/3 added Princ-individual
;; (5/26/93) added Print-individual-with-name
;; (6/2) debugged it; (6/7) added setter function
;; (3/9/94) added generic pretty printer.
;; (4/5) added polyword case in str printer and an escape to a generic
;;  name printer.  (4/6) Tweeking exactly what's printed.  (7/11) added
;;  case to Print-individual-with-name.
;; 0.1 (9/19) added an eval-when to the special-printing routine form
;;     (10/3) added String-for
;; 0.2 (2/16/95) redid the special-printing-routine as a single backquoted call because
;;      they weren't compiling.
;; 0.3 (4/12) redid String-for so it would only complain if the routine wasn't
;;      defined.  (4/19) added another complaint and added category.
;; 0.4 (1/16/96) added string-for/name as a generic option for String-for.
;;     (2/10/05) Added has-a-name? and name-of. (3/14) Added check for psi
;;     in Print-individual-structure. (3/31) Integrated named case into main
;;     routine.
;;     (1/11/11) Fixed call to field of operations when the category didn't
;;     have any because it was made by DM&P and that detail forgotten.
;; 0.5 (2/8/11) 'name-of' is predefined in Clozure, so changing it to 
;;     name-of-individual. 
;; 0.6 (10/3/11) Patched around case of odd-ly formed individual who is
;;     almost certainly a bug. 11/6 fixed little chatter in string-for, adding
;;     case for word.  11/25/12 Quieted warning when running in *grok* mode.
;;     (2/15/13) Fixed print-individual-with-name to handle case of it getting
;;      a name object rather than a word value. 6/7/13 More rationalizing.
;; 0.7 (2/6/14) Refactored print-individual-with-name to get around it's
;;      presumtion that a 'name' variable always holds a word.
;; 0.8 (1/10/15) Modifying printers to use the uid number.
;;     (3/12/15) wrote describe-individual as alternative to pretty printer
;;      which might be OBE because of referent values in bindings
;;     (8/27/15) Removed references to PSI

(in-package :sparser)

;;;--------------------
;;; generic print-name
;;;--------------------

(defmethod pname ((i individual))
  (pname (itype-of i)))

;;;----------------------
;;; value as a structure
;;;----------------------

(defparameter *suppress-indiv-uids* nil
  "set to T for canonical semtree printouts")

(defun maybe-indiv-uid (indiv)
  (if *suppress-indiv-uids*
      ""
      (indiv-uid indiv)))


(defun print-individual-structure (indiv stream depth)
  (declare (ignore depth))
  (let ((type-field (indiv-type indiv)))
    (if type-field
      (cond
       ((eq type-field :never-used)
        (format stream "#<fresh individual ~A>" (maybe-indiv-uid indiv)))
       ((eq type-field :freshly-allocated)
        (format stream "#<fresh individual ~A>" (maybe-indiv-uid indiv)))
       ((deallocated-individual? indiv)
        (format stream "#<deallocated individual ~A>" (maybe-indiv-uid indiv)))
       (t
        (let* ((operations (cat-operations (first type-field)))
               (special-routine
                (when operations (cat-ops-print operations))))
          (if special-routine
            (funcall special-routine indiv stream)
            (cond
             ((has-a-bp-id? indiv)
              (print-biopax-entity indiv stream))
             ((has-a-name? indiv)
              (print-individual-with-name indiv stream))
             (t
              (write-string "#<" stream)
              (dolist (category (indiv-type indiv))
                (if (category-p category)
                  (princ-category category stream)
                  (write-string "type-not-handled" stream))
                (write-string " " stream))
              (format stream "~A>" (maybe-indiv-uid indiv))))))))
      (else
        ;; a freshly allocated individual has no type
        (write-string "#<empty individual>" stream)))))



;;;--------------
;;; type plus id
;;;--------------

(defun princ-individual (i stream)
  (princ-category (car (indiv-type i)) stream)
  (write-string "-" stream)
  (princ (maybe-indiv-uid i) stream))



;;;-------------------------------
;;; individuals that have 'names'
;;;-------------------------------

;;--- Specific to Big Mechanism. /// Consider moving
(defun has-a-bp-id? (i)
  (binds-variable i 'reactome-id))

(defmethod display-name? ((i individual))
  (let ((binding (binds-variable i 'reactome-id)))
    (when binding
      (binding-value binding))))

(defun bp-id-of-individual (i)
  (let ((b (has-a-bp-id? i)))
    (when b
      (let* ((value (binding-value b))
             (word (if (consp value) (first value) value)))
        word))))

(defun print-biopax-entity (i stream)
  (declare (special *print-short*))
  (write-string "#<" stream)
  (unless *print-short*
    (dolist (category (indiv-type i))
      (princ-category category stream)
      (write-string " " stream)))
  (format stream "~A ~A ~A>" (or `(bp-id-of-individual i) "")
          (if (name-of-individual i)
           (format nil "[~A]" 
                   (or (display-name? i)
                       (name-of-individual i)))
           "")
          (maybe-indiv-uid i)))


;;--- Vanilla cases

(defun has-a-name? (i)
  (binds-variable i 'name))

(defun name-of-individual (i)
  (let ((b (has-a-name? i)))
    (when b
      (let* ((value (binding-value b))
             (word (if (consp value) (first value) value)))
        word))))

(defun princ-name (name stream)
  (let ((string (string-for/name/individual name)))
    (format stream "~a" string)))


(defun print-individual-with-name (i stream)
  ;; a 'special-routine' that is used with individuals that
  ;; have a name field, which we assume is bound to a word. 
  ;; This routine is put on the ops-printer field of the category
  ;; at the time the category is defined.
  (declare (special *print-short* *suppress-indiv-uids*))

  (write-string "#<" stream)

  (let* ((name (name-of-individual i))
         (word-binding
          (unless name
            (find 'word (indiv-binds i)
                  :key #'(lambda (b)
                           (var-name (binding-variable b))))))
         (word
          (cond (name name)
                (word-binding (binding-value word-binding)))))
    (if word
      (then
       (unless *print-short*
         (dolist (category (indiv-type i))
           (princ-category category stream)
           (write-string " " stream)))
       (typecase word
         (word 
          (princ-word word stream))
         (polyword
          (princ-polyword word stream))
         (individual
          (princ-name word stream))
         (string
          (princ word stream))
         (otherwise
          (push-debug `(,word ,i))
          (error "Unanticipated type of 'word': ~a~%~a"
                 (type-of word) word))))
      (else
       (dolist (category (indiv-type i))
         (princ-category category stream)
         (write-string " " stream))))

    (format stream " ~A"
	    (if *suppress-indiv-uids*
		""
		(maybe-indiv-uid i)))
    (write-string ">" stream)))


(defun string-for-individual (i s)
  ;; used by simple-sem to make an even simpler individual
  ;;/// would be nice to factor these two closer
  (let* ((name (name-of-individual i))
         (word-binding
          (unless name
            (find 'word (indiv-binds i)
                  :key #'(lambda (b)
                           (var-name (binding-variable b))))))
         (word
          (cond (name name)
                (word-binding (binding-value word-binding)))))
    (if word 
     (format s "<~A ~A>" 
             (cat-name (car (indiv-type i)))
             (let ((ss (make-string-output-stream)))
               (typecase word
                 (word 
                  (princ-word word ss))
                 (polyword
                  (princ-polyword word ss))
                 (individual
                  (princ-name word ss)))
               (get-output-stream-string ss)))
     (format s "<~A>" (cat-name (car (indiv-type i)))))))



;;;--------------------------------------------------
;;; facility for defining category-specific printers
;;;--------------------------------------------------

(defmacro define-category-princ-fn (category-name &body function-body)
  "The 'special printing routine' machinery below is overly complex
  as it presumes the same call will be made in any of three different
  circumstances with different degrees of verboseness. This assumes
  just one. Defines the function and puts its name on the operations field
  of the category where the standard struct print method will see it.
  The variable for the individual is always 'i' and the stream is
  'stream', defaulting to *standard-output*. The category can be either
  a category object or the symbol naming one."
  (assert (symbolp category-name))
  (let* ((category (category-named category-name :error-if-none))
         (fn-name (intern (string-append ':princ- category-name) *sparser-source-package*))
         (ops (cat-operations category)))
    (setf (cat-ops-print ops) fn-name)
    `(defun ,fn-name (i &optional (stream *standard-output*))
       ,@function-body)))



(defvar *print-short* nil
  "Flag read by the special printers")

(defvar *return-print-string* nil
  "Flag read by the special printers")

(defvar *return-print-string* nil
  "Flag read by the special printers")


(defmacro define-special-printing-routine-for-category (category-name
                                                        &key short
                                                             full
                                                             string )
  `(define-special-printing-routine-for-category/expr
     ',category-name ',short ',full ',string))

(defun define-special-printing-routine-for-category/expr (category-name
                                                          short full string)
  (flet ((name-of-category-print-function (name)
           (let ((cat-name (etypecase name
                             (symbol name)
                             (category (cat-symbol name)))))
             (intern (string-append category-name ':-print-routine)
                     *sparser-source-package*))))
    
    (let ((category (category-named category-name t))
          (fn-name (name-of-category-print-function category-name)))
      (let ((ops (cat-operations category)))
        (setf (cat-ops-print ops) fn-name)

        (let ((fn `(defun ,fn-name (obj stream)
                     (cond (*return-print-string*
                            ,@string )
                           (*print-short*
                            ,@short )
                           (t
                            ,@full )))  ))
          (eval fn))))))


(defgeneric name-of-string-for-function (category)
  (:documentation "Creates the symbol that is expected by string-for
    to matchup with an already defined function, e.g. string/initial."))

(defmethod name-of-string-for-function ((c category))
  (name-of-string-for-function (cat-symbol c)))

(defmethod name-of-string-for-function ((category-name symbol))
  (intern (string-append ':string/ category-name)
          *sparser-source-package*))

(defun string-for (i)
  "Call the function that goes with this unit to return
   a nice print string to incorporate into some other print routine."
  (typecase i
    (individual
     (let ((fn-name (name-of-string-for-function (itype-of i))))
       (cond ((fboundp fn-name)
              (funcall fn-name i))
             ((value-of 'name i)
              (string-for/name i))
	     ((or (individual-p i)
		  (referential-category-p i))
	      (format nil "~a" i))
             (t
              ;; Dangerous to have breaks/error in print function
              #+ignore ;; very noisy in biology
                (format t "~&String-for -- The printer ~A isn't defined ~
                             yet~%" fn-name)
              "" ))))

    ((or referential-category mixin-category category)
     (if (member (category-named 'position-in-a-sequence)
                 (super-categories-of i))
       (string/ordinal i)
       (string/category i)))

    (word
     (word-pname i))
    
    (otherwise
     (push-debug `(,i))
     (format t "~&String-for -- No string-for routine for objects ~
                of type~%     ~A~%" (type-of i))
     (format nil "~A" i))))



(defun string-print-form (unit)
  (let ((*return-print-string* t))
    (format nil "~A" unit)))



;;;------------------------
;;; generic pretty printer
;;;------------------------

(defun pretty-print-individual (i  &optional (stream *standard-output*))
  (princ-individual i stream)

  (format stream "~&  Type: ")
  (do* ((categories (indiv-type i))
        (c (pop categories) (pop categories)))
       ((null c))
    (princ-category c stream)
    (when categories (format stream "~&        ")))

  (format stream "~&  Binds:~%")
  (dolist (b (indiv-binds i))
    (princ-binding b stream 5))

  (when (indiv-bound-in i)
    (format stream "~&  Bound in:~%")
    (dolist (b (indiv-bound-in i))
      (princ-bound-in b stream 5)))

  (format stream "~&~%")
  i )


(defgeneric describe-individual (i &optional stream)
  (:documentation "print just the fields of the individual
   that are useful in debugging")
  (:method ((i individual)  &optional (stream *standard-output*))
    (let* ((categories (indiv-type i))
           (category-names (loop for c in categories
                              collect (cat-symbol c)))
           (binds-bindings (indiv-binds i))
           (bound-in-bindings (indiv-bound-in i)))

      (format stream "~&~a  ~a"
              (maybe-indiv-uid i)
              (if (permanent-individual? i) :permanent :temporary))
      (format stream "~& type:  ~{~a ~}" category-names)
      (when binds-bindings
        (format stream "~&  binds: ~a"
                (binding-short-string (car binds-bindings))))
      (when (cdr binds-bindings)
        (let ((b-strings (loop for b in (cdr binds-bindings)
                            collect (binding-short-string b))))
          (format stream "~{~&         ~a~}" b-strings)))
      (when bound-in-bindings
        (let ((b-strings (loop for b in bound-in-bindings
                            as i from 1 to 5
                            collect (bound-in-short-string b))))
          (format stream "~&  bound in: ~a" (car b-strings))
          (when (cdr b-strings)
            (format stream "~{~&            ~a~}" (cdr b-strings)))
          (when (> (length bound-in-bindings) 5)
            (format stream "~&            ..."))))
      i)))
            


(defun pretty-princ-individual (i &optional
                                    (stream *standard-output*)
                                    pending-indentation
                                    cursor-pos )
  ;; Show the shortest, nicest form of the individual while trying
  ;; to stay in the allotted portion of the screen.
  ;; ///can only get the indentation optimal if we do the printing,
  ;; but that's not possible until we've implemented the 'strings'
  ;; option on the special print routines. For now just going for
  ;; a kludge.
  (declare (ignore cursor-pos pending-indentation))
  
  (let ((*return-print-string* t)
        ;; we'll get the string if that option is defined
        (*print-short* t))

    (let ((result (pprinc-unit i stream)))

      (when (stringp result)
        ;; if it isn't a string, then the printing has already happened
        (unless (equal result ">")
          (break "Stub: a special printer finally returned a string"))))))



(defun pprinc-unit (o  &optional (stream *standard-output*))
  (etypecase o
    (word (princ-word o stream))
    (individual
     (let ((*print-short* t))
       (funcall #'print-individual-structure
                o stream 1)))  ;; = obj, stream, depth
    ((or category  referential-category  mixin-category)
     (princ-category o stream))
    (cons
     (mapcar #'(lambda (unit)
                 (pprinc-unit unit stream)
                 (write-string " " stream))
             o))
    (number (princ o stream))
    (polyword (princ-polyword o stream))))

;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;; Copyright (c) 2006 BBNT Solutions LLC.
;;; Copyright (c) 2010-2011 David D. McDonald

;; 11/2010 Folding in forgotten functions from original set, i.e. Lisp Machine days
;; 3/8/11 Moved out exports

(in-package :ddm-util)

;;;-----------------------------------------------------------
;;;   syntactic sugar (functions that ought to be in CL)
;;;-----------------------------------------------------------

(defun d (o)
  (describe o)
  o)

(defun concat (&rest list-of-strings)
  ;; ends up in the default package
  (intern (apply #'string-append list-of-strings)))

(defun append-new (&rest lists)
  (let ((output-list (nreverse (copy-list (car lists))))
        (appended-lists-in-order (cdr lists)))
    (dolist (sublist appended-lists-in-order)
      (dolist (item sublist)
        (pushnew item output-list)))
    (nreverse output-list)))

(unless (fboundp 'assq)
  (defun assq (item alist)
    (assoc item alist :test #'eq)))
;; these ought to be substitution macros, but I don't know
;; if we can do that
(unless (fboundp 'memq)
(defun memq (item list)
  (member item list :test #'eq)))

(defun keys-of-association-list (alist)
  (let ( symbols )
    (dolist (pair alist)
      (push (car pair) symbols))
    (nreverse symbols)))

(defun tail-cons (item list)
  "Add the item to the end of the list"
  (case (length list)
    (0
     (list item))
    (1
     (list (car list) item))
    (otherwise
     (let ((last-cell (last list)))
       (rplacd last-cell
               (list item))
       list))))

(defun deep-copy (l)
  (cond
   ((consp l)
    (cons (deep-copy (car l))
          (deep-copy (cdr l))))
   (t l)))

(defun flatten (list-of-lists)
  "Returns a single-level list of all the symbols or other non-cons
   objects at the fringe of the tree in their pre-next order."
  ;; (flatten '(a b (c) d (e (f g)) (h) i (((j k) l)) m))
  (let ( result )
    (dolist (item list-of-lists)
      (if (consp item)
        (setq result (append (nreverse (flatten item)) result))
        (push item result)))
    (reverse result)))

(defun flattenc (cons-structure)
  "Returns a single-level list of all the non-cons objects at the
   edge of the tree, except for nils.  Can deal with non-list cdrs."
  ;; (flattenc '(a b (c) d () (e (f . g)) (h) i (((j k) . l)) m))
  (let* ((head (cons t nil)) (tail head))
    (labels ((walk (l)
               (if (consp l)
                   (progn (walk (car l)) (walk (cdr l)))
                 (when l
                   (rplacd tail (cons l nil))
                   (setf tail (cdr tail))))))
      (walk cons-structure)
      (cdr head))))

(defun sexp-contains-symbol (sexp symbol)
  (catch 'found-symbol
    (_sexp-contains-symbol sexp symbol)))
(defun _sexp-contains-symbol (sexp symbol)
  (when (eq (car sexp) symbol)
    (throw 'found-symbol t))
  (when (consp (car sexp))
    (_sexp-contains-symbol (car sexp) symbol))
  (when (cdr sexp)
    (_sexp-contains-symbol (cdr sexp) symbol)))


(defun split-list-on-first-keyword (list)
  (let ( before after-including-keyword )
    (do ((item (car list) (car rest))
         (rest (cdr list) (cdr rest)))
        ((null item))
      (if (keywordp item)
        (then (setq after-including-keyword (cons item rest))
              (return))
        (push item before)))
    (values (nreverse before)
            after-including-keyword)))


(defvar *gensym-symbol-alist* nil)

(defun gensymbol (symbol &optional no-dash) ;;/// add package
  ;; The braincells are working overtime, but I seem to recall that there
  ;; was a version of gensym that took a symbol and incf'd (from 0) on
  ;; that symbol.
  (let ((entry (assoc symbol *gensym-symbol-alist*)))
    (if entry
      (let ((count (incf (cdr entry))))
        (rplacd entry count)
        (_gensymbol symbol count no-dash))
      (else
        (push `(,symbol . 1) *gensym-symbol-alist*)
        (_gensymbol symbol 1 no-dash)))))

(defun _gensymbol (symbol count no-dash)
  (intern (string-append (symbol-name symbol)
			 (if no-dash
			   ""
			   "-" )
			 (format nil "~a" count))))



(defun ordinal-ending (n)
  ;; for print methods involving ordinal numbers
  (let* ((string (format nil "~a" n))
         (last-char (elt string (1- (length string)))))
    (case last-char
      (#\1 "st")
      (#\2 "d")
      (#\3 "d")
      (otherwise "th"))))


(defun string->list-of-symbols (string)
  (let ((start 0)
        (end (position #\space string))
        (rest string)
        symbols  )
    (if (null end)
      (intern string)
      (else
        (loop
           while end
           do
             (let ((substring (subseq rest start end)))
               (push (intern substring)
                     symbols)
               (setq rest (subseq rest (1+ end)))
               (setq end (position #\space rest))))
        (push (intern rest)
              symbols)
        (nreverse symbols)))))

(defun string->Java-style-symbol (string)
  (let* ((symbols (string->list-of-symbols string))
         (capitalized-strings
          (mapcar #'(lambda (symbol)
                      (string-capitalize (symbol-name symbol)))
                  symbols)))
    (apply #'concat capitalized-strings)))

(defun upcase-first-letter (string)
  ;; string-capitalize downcases all the characters after the first,
  ;; so it does the wrong thing with camel-case symbols
  (typecase string
    (string)
    (symbol (setq string (symbol-name string))))
  ;; This is a destructive operation, so we have to work off a copy
  (let* ((s (copy-seq string))
         (first-char (char s 0)))
    (setf (char s 0) (char-upcase first-char))
    s))

(defun capitalize-symbol (symbol)
  (unless (symbolp symbol)
    (error "Called the wrong function. capitalize-symbol takes a symbol, ~
             not a ~a~%~a" (type-of symbol) symbol))
  (let ((string (symbol-name symbol)))
    (intern (upcase-first-letter string))))

(defun replace-periods-with-underbars (string)
  (unless (stringp string) (error "Only apply to strings. Got a ~a instead~%~a"
                                  (type-of string) string))
  (substitute #\_ #\. string))

(defun replace-bad-URI-characters (string)
  (substitute
   #\_
   #\space
   (substitute
    #\_
    #\(
    (substitute
     #\_
     #\)
     (substitute
      #\_
      #\.
      (substitute
       #\_
       #\:
       string))))))

(defun sexp->string (sexp)
  (with-output-to-string (s)
    (format s "(")
    (sexp-to-string1 s sexp)
    (format s ")")))

(defun sexp-to-string1 (s sexp)
  (let ((first (car sexp))
        (rest (cdr sexp)))
    (when first
      (typecase first
        (symbol (format s "~a " (symbol-name first)))
        (cons (format s "(")
              (sexp-to-string1 s first)
              (format s ") "))
        (integer (format s "~a " first))
        (string (format s "~a " first))
        (otherwise
         (break "Unexpected type of item passed to sexp-to-string1: ~a~%~a"
                (type-of first) first))))
    (when rest
      (sexp-to-string1 s rest))))

(defun ends-in (reference-string target-string)
  (typecase reference-string
    (string)
    (symbol (setq reference-string (symbol-name reference-string)))
    (otherwise (error "Only applies to string.~%The first arg is a ~a~%~a"
                      (type-of reference-string) reference-string)))
  (unless (stringp target-string)
    (error "The second argument 'target' must be a string~%~a  ~a"
           (type-of target-string) target-string))
  (let ((index (search target-string reference-string)))
    (when index
      (= (+ index (length target-string))
         (length reference-string)))))

(defun launder-sexp-symbols-package (sexp new-package)
  (typecase sexp
    (symbol
     (if (keywordp sexp) sexp (intern (symbol-name sexp) new-package)))
    (cons
     (let ((first (launder-sexp-symbols-package (car sexp) new-package))
           (rest (launder-sexp-symbols-package (cdr sexp) new-package)))
       (cons first rest)))
    (otherwise ;; numbers, structs, class-instances, ...
     sexp)))


#+ignore
(defmacro format-nl (stream string &rest args)
  `(let* ((format-string (format nil "~&~%~%~%~a~%~%~%~%~%" ,string))
          (form (list* 'format ,stream format-string ',args)))
     (eval form)))

#| Jake's utilities.Not comfortable with them yet

;; Generic method for equivalence testing
(defmethod eqv (a b) (equalp a b))

;; tp converts a generalized boolean to a boolean (only T or NIL)
(defun tp (x) (if x t nil))

;;--- MAPSET
;; A converse to the standard map function, mapset
;; takes each element of list as a set of arguments for the
;; function, and returns a list of results of application.
;; e.g. (mapset #'+ '((1 2) (3 4 5) (6) (7 8 9))) -> (3 12 6 24)
(defun mapset (fn list)
  (when (consp list)
    (cons (apply fn (car list))
          (mapset fn (cdr list)))))

;;--- Macros for currying functions
;; pcf (partial call function) appends rest of arguments and calls the function
;; example: (mapcar (pcf + 2 3) '(4 5 6)) -> (9 10 11)
(defmacro pcf (f &rest args)
  `(function (lambda (&rest completion) (apply #',f ,@args completion))))

;; ppf (partial pattern call function) first fills in blanks left by
;;   call-variables then appends rest of args to the end of the call
;; example: (mapcar (ppf find ?X '(1 2 3 4)) '(2 5 1 d)) -> (2 nil 1 nil)
(defun call-variablep (x)
  (and (symbolp x) (eq (elt (symbol-name x) 0) #\?)))
(defmacro ppf (f &rest args)
  (let ((params (remove-if-not #'call-variablep args)))
    `(lambda (,@params &rest completion) (apply #',f ,@args completion))))


(defun compile-and-load (file &key (verbose *compile-verbose*)
                               (print *compile-print*))
  #+allegro
  (excl:compile-file-if-needed file :verbose verbose :print print)
  (load file :verbose verbose :print print))


;; (leaf-map #'sqrt '(((4 1) 25) (9 100) 64)) = (((2.0 1.0) 5.0) (3.0 10.0) 8.0)
(defun leaf-map (fn tree)
  (if (listp tree)
      (mapcar (pcf leaf-map fn) tree)
    (funcall fn tree)))


;;;; with-popped-alist-value
;; If alist contains key, then bind the associated value to valvar,
;;   execute the body, and remove the pair from the list (non-destructively)
;; alist will be referred to multiple times, so the ref must be idempotent
;; The popping happens before evaluation of body.
(defmacro with-popped-alist-value ((key alist valvar) &rest body)
  (let ((pair (gensym "pair")))
    `(let ((,pair (assoc ,key ,alist)))
       (when ,pair
         (setq ,alist (remove ,key ,alist :key #'car :count 1))
         (let ((,valvar (cdr ,pair)))
           ,@body)))))


;;;; ENSURE
;; If the accessed value is default, initializes it.
(defmacro ensure (accessor init &optional (default? '#'null))
  (let ((v (gensym)))
    `(let ((,v ,accessor))
       (when (funcall ,default? ,v) (setf ,v (setf ,accessor ,init)))
       ,v)))

|#


;; Method for displaying the contents of a hashtable
(defun hashtable-to-alist (table)
  (let ((alist '()))
    (maphash (lambda (k v) (push (cons k v) alist)) table)
    alist))



#|
(defun parse-ltml-date-time-to-mins (timestr)
  (multiple-value-bind (day pos1) (read-from-string timestr)
    (let* ((pos2 (position #\: timestr))
           (hrstr (subseq timestr pos1 pos2))
           (minstr (subseq timestr (1+ pos2)))
           (hr (read-from-string hrstr))
           (min (read-from-string minstr)))
;       (print (list day hr min))
      (+ min (* 60 (+ hr (* 24 day)))))))

(defun ltml-time-less-equal (str1 str2)
  (<= (parse-ltml-date-time-to-mins str1) (parse-ltml-date-time-to-mins str2)))

(defun ltml-time-equal (str1 str2)
  (= (parse-ltml-date-time-to-mins str1) (parse-ltml-date-time-to-mins str2)))

(defun ltml-time-lessthan (str1 str2)
  (< (parse-ltml-date-time-to-mins str1) (parse-ltml-date-time-to-mins str2)))
|#

#|
;;;----------------------------
;;; compact trace-msg facility
;;;----------------------------
;; Reports activity at a configurable set of verbosities
;; A trace message may be
;; In general, verbosity levels should be:
;; 0 = nothing
;; 1 = key messages only
;; 2 = all significant messages
;; 3+ = any level of detail desired

(defvar *trace-levels* (make-hash-table))
(defvar *active-trace-categories* (make-hash-table))

;; takes (symbol number)
(defun Trace-lvl (&rest args)
  (labels ((parse-pair (args)
             (let* ((type (pop args)) (level (pop args)))
               (assert (and (symbolp type) (numberp level)) (type level)
                 "[~A ~A] is not a [symbol number] trace level" type level)
               (setf (gethash type *trace-levels*) level)
               (when args (parse-pair args)))))
    (when args
      (when (numberp (first args))
        (setf (gethash :default *trace-levels*) (pop args)))
      (when args (parse-pair args)))
    (hashtable-to-alist *trace-levels*)))
(Trace-lvl 0)                           ; set default to zero

(defun Trace-off ()
  (clrhash *trace-levels*)
  (clrhash *active-trace-categories*)
  (Trace-lvl 0))

(defun Trace-categories () (hashtable-to-alist *active-trace-categories*))

;; A trace-msg prints to std-out when its at or over verbosity for its category
(defmethod Trace ((level real) (category symbol) &rest msg-and-args)
  (let ((verbosity (or (gethash category *trace-levels*)
                       (gethash :default *trace-levels*))))
    (incf (gethash category *active-trace-categories* 0))
    (when (and (plusp verbosity) (>= verbosity level))
      (let ((trace-string (string-append "~&" (car msg-and-args) "~%")))
        (apply #'format *standard-output* trace-string (cdr msg-and-args))))))
;; without a category, trace-msg goes into the default category
(defmethod Trace ((level real) (msg string) &rest args)
  (apply #'Trace level :default msg args))

;; backward compatibility
(defun trace-msg (string &rest args)
  (apply #'Trace 2 :default string args))

(defmacro with-tracing-level (category number &body body)
  (let ((saved (gensym "saved")) (value (gensym "value")))
    `(let ((,saved (gethash ',category *trace-levels*)))
       (setf (gethash ',category *trace-levels*) ,number)
       (let ((,value ,@body))
         (setf (gethash ',category *trace-levels*) ,saved)
         ,value))))
|#


;;;------------------------------------------------
;;; from Peter Clark's open-source utilities in KM
;;;------------------------------------------------

;;; (break-up-at "c:dd>eee:f>" :delimeter-chars '(#\: #\>)) -> ("c" ":" "dd" ">" "eee" ":" "f" ">")
(defun break-up-at (string &key delimeter-chars)
  (break-up-at0 delimeter-chars string 0 0 (length string) 'positive))

(defun break-up-at0 (delimeter-chars string m n nmax polarity)
  (cond
    ((= n nmax) (list (subseq string m n)))             ; reached the end.
    (t (let ( (curr-char (char string n)) )
         (cond ((or (and (eq polarity 'positive)
                         (member curr-char delimeter-chars :test #'char=))
                    (and (eq polarity 'negative)
                         (not (member curr-char delimeter-chars :test #'char=))))
                (cons (subseq string m n)
                      (break-up-at0 delimeter-chars string n n nmax
                                    (cond ((eq polarity 'positive) 'negative) (t 'positive)))))
               (t (break-up-at0 delimeter-chars string m (1+ n) nmax polarity)))))))



;;;----------
;;; from SFL
;;;----------

(defmacro defobject (name supers slots &rest options)
  "Like DEFCLASS but automatically defines initarg and accessor
   for each slot.  Slots have the form (name value . options)."
  `(defclass ,name
	  ,supers
	,(map 'list #'(lambda (s)
			(let ((name (first s))
			      (value (second s)))
			  `(,name :initform ,value
			    :initarg ,(intern (string name) :keyword)
			    :accessor ,name ., (cddr s))))
	      slots)
	. ,options))


;; stray Sparser predicate

(defun symbol-name-string-lessp (s1 s2)
  (let ((pname1 (symbol-name s1))
        (pname2 (symbol-name s2)))
    (string-lessp pname1 pname2)))


;;;---------------------
;;; old Lispm functions
;;;---------------------

(defmacro until (test retval &body body)
  `(do ()
     (,test
      ,retval)
     . ,body))

(defmacro dbind (lambda-list argument &body body)
  `(apply #'(lambda ,lambda-list . ,body)
	  ,argument))

(defmacro defsubst (subst-name lambda-list &body body)
  `(progn (proclaim '(inline ,subst-name))
	  (defun ,subst-name ,lambda-list ,@body)
	  ',subst-name))

(defmacro let-with-dynamic-extent (bindings &body body)
  `(let ,bindings
     (declare (special ,@(mapcar #'car bindings)))
     ,@body))

(defmacro let*-with-dynamic-extent (bindings &body body)
  `(let* ,bindings
     (declare (special ,@(mapcar #'car bindings)))
     ,@body))

(defmacro let-with-dynamic-extent-unless-bound (bindings &body body)
  (let ((v1 (caar bindings)))
    `(if (boundp ',v1)
       ,@body
       (let ,bindings
         (declare (special ,@(mapcar #'car bindings)))
         ,@body))))

(defmacro comment (&rest text)
  (declare (ignore text))
  :comment)

;;; ============================================================================
;;; This form temporarily inhibits fdefine warnings--just the right thing when
;;; you're defining a function that you KNOW will be overriding some earlier
;;; function, and you don't want the loader or evaluator to complain (the
;;; compiler never will).
;;;
;;; The obvious implementation
;;
;; (comment
;;   (defmacro temporarily-inhibit-fdefine-warnings (form)
;;     `(let ((ccl:*warn-if-redefine* t))
;;        (declare (special ccl:*warn-if-redefine*))
;;        ,form)))
;;
;;; doesn't work because the form is not seen to be top-level by the compiler,
;;; which means that if it's a function definition, it won't get compiled.

(defmacro temporarily-inhibit-fdefine-warnings (&rest forms)
  (let ((save-variable (gensym)))
    `(progn
       #+ccl(setq ,save-variable ccl:*warn-if-redefine*
		   ccl:*warn-if-redefine* nil)
       #+allegro(setq ,save-variable excl:*redefinition-warnings*
		      excl:*redefinition-warnings* nil)
       ,@forms
        #+ccl(setq ccl:*warn-if-redefine* ,save-variable)
	#+allegro(setq excl:*redefinition-warnings* ,save-variable))))

;; from Zeta-Lisp:
(defmacro cond-every (&body body)
   "Executes all the clauses of a pseudo-COND that have successful tests.  
    Emulates the COND-EVERY macro of Zeta LISP"
   `(let ((cond-every%already-fired nil)
	  (cond-every%result nil))
      (ignore cond-every%already-fired cond-every%result)
      ,@(mapcar #'(lambda (clause)
		   (let ((test (car clause))
			 (body (cdr clause)))
		     `(when ,(if (eq test :always)
				 't
				 (if (eq test :otherwise)
				     '(not cond-every%already-fired)
				     test))
			(setq cond-every%already-fired t)
			(setq cond-every%result (progn . ,body))
			)))
	       body)
      cond-every%result))

;;; ============================================================================
;;; Association lists

;;; This function should be generalized in the direction of the Common-Lisp
;;; style, with a :test keyword argument giving the predicate for matching the
;;; key with the association.

(defmacro apush (key value a-list)
  "A macro which adds a new association to the front of an association-list 
  [a-list].  Returns the new list.
   This name is by analogy to  cons =>  push &  pushnew,
                           so acons => apush & apushnew."
  `(push (cons ,key ,value) ,a-list))

(defun add-association (key value a-list)
  "Adds a new association to an association-list (a-list).  If the key is
   already in the list (the predicate is EQL), then the new value replaces
   the former value, reusing the old cons cell by (setf (cdr ...) value).
   Returns the new list, but (as with DELETE and similar functions, will
   not necessarily be side-effecting.  It's side-effecting when it replaces
   the old value and non-side-effecting when adding the new association
   to the front of the list."
  (let ((association   (assoc key a-list)))
    (if association
	(then (setf (cdr association) value)
	      a-list)
	(else (acons key value a-list)))))

(defun remove-association (key a-list)
  "Returns a new a-list with the appropriate associations removed."
  (remove key a-list :key #'car))

(defun delete-association (key a-list)
  "Modifies the a-list so that the appropriate associations are deleted.  
   Returns the modified a-list."
  (delete key a-list :key #'car))

;;; ============================================================================
;;; FORMAT

;;; This is where the ~\ds\ FORMAT directive comes from.  Someday, need to
;;; re-write DESCRIBE-DEFSTRUCT so that it takes a stream as an argument.  I
;;; don't know if binding standard-output will always work--it seems to, so far.
;;; Actually, this may be obsolete, given that the default way that structures
;;; print in Common Lisp subsumes the Zetalisp DESCRIBE-DEFSTRUCT.
;;
;;#+ lispm
;(format::defformat format::ds (:one-arg) (argument parameters)
;	   (ignore parameters)
;	   (let ((standard-output  format::*format-output*))
;	     (declare (special standard-output))
;	     (describe-defstruct argument)))


;;; ============================================================================
;;; TABBED-FORMAT 

(defparameter *tabbed-format-column* 10
  "The column that TABBED-FORMAT tries to print things beyond.  That is, it
tries to arrange that everything is tabbed to this column.")


(defun tabbed-format (stream format-string &rest format-args)
  "This is just like FORMAT, except that it tries to tab things over."
  (apply #'format
         stream
         (modify-format-string format-string)
         format-args))

(defsubst tilde? (ch)
  (eql ch #\~))

(defsubst return-char? (ch)
  (find ch "%&"))


(defun insert-tab (str)
  (let ((tab-string (if (= *tabbed-format-column* 40)
                      "~40T"
                      (format nil "~~~dT" *tabbed-format-column*))))
    (dotimes (i (length tab-string))
      (vector-push (char tab-string i) str))))


(defun modify-format-string (old)
  "Non-destructive modification of the string so that it has `~40T' (or
   something similar, based on *tabbed-format-column* inserted in the string
   after each `~n%' and `~n&' and also at the beginning."
  (let* ((insert   (format nil "~~~dT" *tabbed-format-column*))
         (add-len  (* (length insert) (+ 1 (count #\% old) (count #\& old))))
         (old-len  (length old))
         (new-len  (+ old-len add-len))
         (new-str  (make-array new-len
                      :element-type 'string-char
                      :fill-pointer 0)))
    (macrolet ((return-char? (ch)
                 `(or (eql ,ch #\%) (eql ,ch #\&)))
               (tilde? (ch)
                 `(eql ,ch #\~)))
      (insert-tab new-str)
      (do* ((index           0             (1+ index))
            (i               nil                    j)
            (j               nil                    k)
            (k     (char old index)  (char old index)))
           ;; This exit condition will NOT process the last char, and that's OK.
           ;; We don't want to leave the cursor in column 40, in case the person
           ;; next calls FORMAT and wants things on the left margin.
           ((= index (1- old-len))
            (vector-push k new-str))
        (vector-push k new-str)
        (when (and (return-char? k)
                   (or (tilde? j)
                       (and (digit-char-p j)
                            (tilde? i))))
          (insert-tab new-str))))
    new-str))


(defun format-fully-qualified (stream fstring &rest args)
   "Output FSTRING and ARGS onto STREAM -- all objects formatted with the ~S
    directive are fully qualified.  (this ought to be an option to ~S)"
   (let-with-dynamic-extent ((*package* nil))
     (apply #'format stream fstring args)))


;;; ============================================================================
;;; ADD1 and SUB1 -- I think these are sometimes easier to read than 1+ and 1-,
;;; especially the latter.

(defsubst add1 (number) "Synonym for 1+" (1+ number))
(defsubst sub1 (number) "Synonym for 1-" (1- number))






;;; ============================================================================
;;; LIST-HASH-TABLE

(defun list-hash-table (ht &optional (keys-and-values? t))
  "Returns the contents of a hashtable as a list.  If the optional argument
   is true (the default), it returns an association list of keys and values.
   If false, it just returns a list of the values."
  (check-type keys-and-values? boolean)
  (let ((elements  ()))
    (flet ((collect-both  (key value)
             (push (cons key value) elements))
           (collect-value (key value)
             (declare (ignore key))
             (push value elements)))
      (if keys-and-values?
	    (maphash #'collect-both ht)
        (maphash #'collect-value ht)))
    elements))

;;; ==========================================================================
;;; MBUG and MBREAK

(defmacro mbug (format-string &rest arguments)
  `(cerror " "
	   ,format-string ,@arguments) )

(defmacro mbreak (format-string &rest arguments)
  `(break ,format-string ,@arguments))


(defun sorry (string)
  (break "~a" string))




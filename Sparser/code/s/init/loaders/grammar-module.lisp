;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005,2014,2021,2024  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "grammar-module"
;;;    Module:  "init;loaders;"
;;;   version:  May 2024

;; initiated 2/9/92 v2.2, finished 2/10
;; 1.1 (2/20 v2.2) Added a notion of "source" to Note-grammar-module
;;       to allow a finer cataloging than the actual data types can
;;       provide. 
;; 1.2 (5/1 v2.2) added the notion of summary modules
;;     (9/1 v2.3) added :referential as a possible source (but with a
;;       trivial definition for now)
;;     (10/23) added case for categories formed for dotted rules.
;;     (10/30) ditto for mixin-categories, 11/2 fixed omission
;; 1.3 (7/21/93) changed def. of gmods to react to their regular fields
;;      since one might want to change them on the fly
;; 1.4 (4/24/94) added hack for 'public-grammar-module'
;;     (8/4) added source :dm&p to note-grammar-module with no actions
;;     (6/21) updated Note-grammar-module
;; 1.5 (9/12) added 'dossier/s' field.   (11/9) flushed a call to 'then'.
;; 1.6 (10/3/97) added *loading-public-grammar-module* flag as part of
;;      Gate-grammar.  (2/17/05) Added another case to note-grammar-module
;;     (8/19/13) added citations field. 6/15/14 Added syntax and form
;;      rules to the tally. 

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (grammar-module
            (:conc-name #:gmod-)
            (:print-function print-grammar-module-structure))

  symbol  ;; this symbol indexes the module and acts as the
          ;; flag/gate that controls whether it is loaded

  princ-name  ;; a cleaned up string for use in menus

  sub-modules
  parent-module

  files
  cf-rules
  cs-rules
  form-rules
  syntax-rules
  words
  polywords
  non-terminals  ;; actually a category
  object-types   ;; ditto

  public?   ;; t or nil

  dossier/s
  citations
  )

(defun print-grammar-module-structure (obj stream depth)
  (declare (ignore depth))
  (print-unreadable-object (obj stream :type t)
    (write-string (symbol-name (gmod-symbol obj)) stream)))

(defun display-grammar-module (gm &optional (stream *standard-output*))
  (write-string (symbol-name (gmod-symbol gm)) stream))


;;;----------
;;; indexing
;;;----------

(defparameter *grammar-modules* (make-hash-table :test #'eq)
  "Table of names (symbols) to grammar-module objects.
   Lists all of the grammar modules that have been defined
   and could be included in an image.")

(defun grammar-module-named (symbol)
  (gethash symbol *grammar-modules*))

(defun delete/grammar-module (obj)
  (let ((gm (etypecase obj
              (symbol (grammar-module-named obj))
              (grammar-module obj))))
    (remhash (gmod-symbol gm) *grammar-modules*)))


;;;----------
;;; def form
;;;----------

(defmacro define-grammar-module (symbol &key parent name)
  `(define-grammar-module/expr ',symbol ',parent ',name))


(defvar *summary-grammar-modules* nil
  "Accumulates the modules that are designated as 'summary' only,
   i.e. those that don't point to files of rules, but only function
   as a way to aggregate a group of regular modules.")


(defmacro define-summary-grammar-module (symbol &key name)
  `(define-grammar-module/expr ',symbol nil ',name t))


(defun define-grammar-module/expr (symbol &optional parent name summary?)
  (let* ((already-defined? (grammar-module-named symbol))
         (obj (or already-defined? (make-grammar-module :symbol symbol))))

    (when already-defined?
      (warn "Redefining the grammar module ~a." symbol))

    (when parent
      (let ((parent-module (grammar-module-named parent)))
        (assert parent-module
                (symbol parent parent-module)
                "The grammar module ~a, parent of ~a, is undefined."
                parent symbol)
        (setf (gmod-parent-module obj) parent-module)
        (pushnew obj (gmod-sub-modules parent-module))))

    (when summary?
      (pushnew obj *summary-grammar-modules*))

    (setf (gmod-princ-name obj)
          (or name
              (string-capitalize
               (substitute #\Space #\- (string-trim "*" symbol)))))

    (unless already-defined?
      (eval `(defparameter ,symbol nil
               ,(format nil "~@(~a~) grammar flag." (gmod-princ-name obj))))
      (setf (gethash symbol *grammar-modules*) obj))
    obj))


;;;-------------------------------
;;; enabling modules to be loaded
;;;-------------------------------

(defvar *toplevel-grammar-modules* nil
  "Accumulates those modules that aren't submodules of others.
   Populated by Postprocess-grammar-indexes.")

(defvar *grammar-modules-in-image* nil
  "Accumulates all the grammar modules that have been marked
   for inclusion as an image is loaded.")

(defvar *grammar-modules-for-menu* nil)

(defmacro include-grammar-module (symbol)
  `(include-grammar-module/expr ',symbol))

(defun include-grammar-module/expr (symbol)
  "Turns on the flag, and includes the module on the list of
modules in the image. Called from a grammar configuration file."
  (let ((gm (grammar-module-named symbol)))
    (assert gm (gm) "There is no grammar module named ~a." symbol)
    (check-type gm grammar-module)
    (push gm *grammar-modules-in-image*)
    (when *load-verbose*
      (format t "~&; Including grammar module ~a~%" symbol))
    (set symbol gm)))


;;;--------------------------
;;; 'public' grammar modules
;;;--------------------------

(defvar *some-gmods-are-public* nil
  "Flag reacted to in menu creators and such to make them sensitive
to the 'public?' field on the modules and react in various ways.")

(defun public-grammar-module (gm)
  "To be used by analogy to 'include-grammar-module'"
  (check-type gm grammar-module)
  (setf (gmod-public? gm) t
        *some-gmods-are-public* t)
  gm)

;;;-------------------------
;;; loading grammar modules
;;;-------------------------

(defvar *grammar-module-being-loaded* nil
  "Bound to the name of the grammar file being loaded.")

(defmacro gate-grammar (flag &rest load-forms)
  "Execute load-forms if the given grammar flag is true."
  (check-type flag (and symbol (not keyword)))
  `(when ,flag
     (let ((*grammar-module-being-loaded* (grammar-module-named ',flag)))
       ,@load-forms)))

(defun gload (filespec &aux (*compile* nil))
  "Load a Sparser grammar file."
  (when (lload filespec)
    (when *grammar-module-being-loaded*
      (pushnew filespec (gmod-files *grammar-module-being-loaded*)
               :test #'equal))
    (compile-functions)
    filespec))




(defun compile-functions ()
  (loop for symbol being each symbol in :sparser
     when (and (fboundp symbol)
	       (not (special-operator-p symbol))
	       #+ccl
	       (not (ccl::frozen-definition-p symbol))
	       (not (simple-vector-p (symbol-function symbol)))
	       (not (compiled-function-p (symbol-function symbol))))
     do (compile symbol)))

;;;--------------------------------------
;;; cross-indexing rules against modules
;;;--------------------------------------

(defvar *non-terminals-defined* nil
  "Accumulates categories that have not been identified as kinds of objects.
Partitions the total list kept in *categories-defined*.")

(defvar *objects-defined* nil
  "Accumulates categories that have been identified as kinds of objects.
Partitions the total list kept in *categories-defined*.")

(defvar *cfrs-defined* nil
  "Accumulates cfr objects that are actually context-free rules.
Partitions the list kept in *context-free-rules-defined*.")

(defvar *csrs-defined* nil
  "Accumulates cfr objects that are actually context-sensitive rules.
Partitions the list kept in *context-free-rules-defined*.")

(defvar *form-rules-defined* nil
  "Accumulates cfr objects that are form rules.")

(defvar *syntax-rules-defined* nil
  "Accumulates cfr objects that are syntax rules.")

(defvar *count-internal-rules* t
  "If this switch is set, we include cfrs that are defined in the process
of defining something else (e.g. a category) in the list of cfrs.")

(defun note-grammar-module (obj &key source)
  "This function is called by every object-constructing routine
 (e.g. construct-cfr or catalog/word) to update the information on
 the currently active grammar module."
  (let ((gm *grammar-module-being-loaded*))
    (when gm
      (setf (get-tag :grammar-module obj) gm)
      (etypecase obj
        (cfr 
         ;; All kinds of rules fall under this one type, so they
         ;; have to be distinguished explicitly. Current assumption
         ;; is that any rule done with a "define" form is internal to
         ;; an object and shouldn't be counted, unless the parameter
         ;; is set. 
         (ecase source
           (:def-cfr
            (push obj (gmod-cf-rules gm))
            (push obj *cfrs-defined*))
           (:define-cfr
            (when *count-internal-rules*
              (push obj (gmod-cf-rules gm))
              (push obj *cfrs-defined*)))
           (:def-csr
            (push obj (gmod-cs-rules gm))
            (push obj *csrs-defined*))
           (:define-csr
            (when *count-internal-rules*
              (push obj (gmod-cs-rules gm))
              (push obj *csrs-defined*)))
           (:def-form-rule
            (push obj (gmod-form-rules gm))
            (push obj *form-rules-defined*))
           (:def-syntax-rule
            (push obj (gmod-syntax-rules gm))
            (push obj *syntax-rules-defined*))))
        ((or category referential-category mixin-category)
         (ecase source
           (:def-category
            (push obj (gmod-non-terminals gm))
            (push obj *non-terminals-defined*))
           ((:define-category :referential :mixin
             :form :derived :composite-label)
            (push obj (gmod-object-types gm))
            (push obj *objects-defined*))
           ((:dotted-rule :dm&p))))
        (word (push obj (gmod-words gm)))
        (polyword (push obj (gmod-polywords gm))))
      gm)))

(defun get-grammar-module (obj)
  (get-tag :grammar-module obj))


;;;----------------------------------
;;; associating gmods with a dossier
;;;----------------------------------

(defun link-dossier-to-module (module dossier
                               &optional autodef-data)
  ;; Called in define-autodef-data
  ;; Stores a cons of the dossier and the autodef-data, which would
  ;; be redundant except that we can have dossiers for modules
  ;; that don't have autodef's.  If there is more than one dossier
  ;; for a given module then we store a list of lists.
  (when module
    (unless (if autodef-data
              (null (ad-instantiable? autodef-data))
              nil )

      (let ((existing-dossiers (gmod-dossier/s module)))
        
        (if existing-dossiers

          ;; check if this is a second (nth) evaluation of an autodef
          ;; that we've already seen
          (let ( pair )
            (if (if (consp (first existing-dossiers))
                  ;; then there's already more than one so we have an alist
                  (setq pair (rassoc autodef-data existing-dossiers :test #'eq))

                  
                  (and autodef-data  ;; (nil = nil)
                       (prog1  ;; only one so far
                         (eq (cdr existing-dossiers) autodef-data)
                         (setq pair (list (ad-dossier autodef-data))))))

              ;; it's a re-evaluation of an established case
              ;; only change it if there's a difference
              (unless (equal (car pair) dossier)
                (rplaca pair dossier))


              ;; new autodef, so add its new dossier to the record
              (if (consp (first existing-dossiers))
                ;; we've already extended it at least once
                (setf (gmod-dossier/s module)
                      (cons `(,dossier . ,autodef-data)
                            existing-dossiers))

                ;; this is the first time we're extending it so we have to
                ;; also convert the singleton into a list
                (setf (gmod-dossier/s module)
                    (cons `(,dossier . ,autodef-data)
                          (cons existing-dossiers
                                nil))))))
          
          (setf (gmod-dossier/s module)
                `(,dossier . ,autodef-data)))))))

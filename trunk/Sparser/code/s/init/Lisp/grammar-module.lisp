;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-2005,2014  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "grammar-module"
;;;    Module:  "init;Lisp:"
;;;   version:  1.6 June 2014

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
  (write-string "#<grammar-module " stream)
  (write-string (symbol-name (gmod-symbol obj)) stream)
  (write-string ">" stream))

(defun display-grammar-module (gm &optional (stream *standard-output*))
  (write-string (symbol-name (gmod-symbol gm)) stream))


;;;----------
;;; indexing
;;;----------

(defparameter *grammar-modules* (make-hash-table :test #'eq)
  "Table of names (symbols) to grammar-module objects.
   Lists all of the grammar modules that have defined and
   could be included in an image.")

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


(defun define-grammar-module/expr (symbol
                                   &optional parent name summary? )
  (let* (already-defined?
         (obj (or (setq already-defined?
                        (grammar-module-named symbol))
                  (make-grammar-module :symbol symbol)))
         (parent-module (grammar-module-named parent)))

    (when already-defined?
      (format t "~&~%Redefining the grammar module ~A" symbol))

    (when parent
      (unless parent-module
        (error "The grammar module ~A, the parent of ~A,~
                ~%  is undefined." parent symbol))
      (setf (gmod-parent-module obj) parent-module)
      (setf (gmod-sub-modules parent-module)
            (push obj (gmod-sub-modules parent-module))))

    (when summary?
      (if already-defined?
        (unless (member obj *summary-grammar-modules*)
          (push obj *summary-grammar-modules*))
        (push obj *summary-grammar-modules*)))

    (setf (gmod-princ-name obj)
          (if name
            name
            (clean-up-symbol symbol)))

    (unless already-defined?
      (eval `(defparameter ,symbol nil))
      (setf (gethash symbol *grammar-modules*) obj))

    obj ))


;;/// move this
(defun clean-up-symbol (symbol)
  ;; returns a string that will look nicer in a menu
  (let* ((original (symbol-name symbol))
         (string (string-downcase original)))

    (when (eql (elt original 0) #\*)
      (setq string (subseq string 1))
      (when (eql (car (last (coerce original 'list))) #\*)
        (setq string (subseq string 0 (- (length string) 1)))))

    (when (find #\- original)
      (setq string (substitute #\space #\- string)))

    string ))


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
  ;; turns on the flag, and includes the module on the list of
  ;; modules in the image.   Called from a grammar configuration file.
  (let ((gm (grammar-module-named symbol)))
    (unless gm
      (error "There is no grammar module with the name ~A" symbol))
    (push gm *grammar-modules-in-image*)
    (format t "~&Including grammar module: ~a~%" symbol)
    (set symbol gm)))


;;;--------------------------
;;; 'public' grammar modules
;;;--------------------------

(unless (boundp '*some-gmods-are-public*)
  (defparameter *some-gmods-are-public* nil
    "flag reacted to in menu creators and such to make them sensitive
     to the 'public?' field on the modules and react in various ways."))

(defun public-grammar-module (gm)
  ;; to be used by analogy to 'include-grammar-module'
  (setq *some-gmods-are-public* t)
  (unless (grammar-module-p gm)
    (error "The argument, ~A, is not a grammar module" gm))
  (setf (gmod-public? gm) t)
  gm )


;;;-------------------------
;;; loading grammar modules
;;;-------------------------

(defvar *grammar-module-being-loaded* nil
  "Bound in Load-grammar-module, which is wrapped around load
   forms.")

(defvar *loading-public-grammar-module* nil
  "Bound in Gate-grammar.")


(defmacro gate-grammar (flag  &rest load-forms)
  ;; used in the load files to parameterize what actually happens
  ;; according to what modules have been liscensed by the
  ;; configuration files.
  (if *some-gmods-are-public*
    `(when ,flag
       (if (gmod-public? ,flag)
         (let ((*insist-on-binaries* nil)
               (*prefer-binaries* nil)
               (*compile* nil)
               (*loading-public-grammar-module* t))
           (load-grammar-module ',flag ',load-forms))
         (load-grammar-module ',flag ',load-forms)))
    `(when ,flag
       (load-grammar-module ',flag ',load-forms)) ))


(defun load-grammar-module (symbol load-forms)
  (let* ((gm (grammar-module-named symbol))
         (*grammar-module-being-loaded* gm))
    (declare (special *grammar-module-being-loaded*))
    
    (dolist (form load-forms)
      (eval form))
    
    gm ))


(defun record-file-in-grammar-module (namestring)
  ;; called from Check-&-load within LLoad.
  (push namestring
        (gmod-files *grammar-module-being-loaded*)))


;;;--------------------------------------
;;; cross-indexing rules against modules
;;;--------------------------------------

(defvar *non-terminals-defined* nil
  "Accumulates categories that have not been identified as being
   kinds of objects.  Partitions the total list kept in 
   *categories-defined*. ")

(defvar *objects-defined* nil
  "Accumulates categories that have been identified as being
   kinds of objects.  Partitions the total list kept in 
   *categories-defined*. ")

(defvar *cfrs-defined* nil
  "Accumulates cfr objects that are actually context-free rules.
   Partitions the list kept in *context-free-rules-defined*. ")

(defvar *csrs-defined* nil
  "Accumulates cfr objects that are actually context-sensitive rules.
   Partitions the list kept in *context-free-rules-defined*. ")

(defvar *form-rules-defined* nil
  "Accumulates cfr objects that are form rules.")

(defvar *syntax-rules-defined* nil
  "Accumulates cfr objects that are syntax rules.")

(defparameter *count-internal-rules* t
  "If this switch is set, we include cfrs that are defined in the
   process of defining something else (e.g. a category) in the
   list of cfrs")

(defun note-grammar-module (obj
                            &key multiple-definition-is-ok
                                 source )
  (let ((gm *grammar-module-being-loaded*))
    (when gm
      ;; should only run when an image is being loaded -- not
      ;; during all the incremental redefinitions during a 
      ;; session.  This global is only bound in Load-grammar-module.
      (let* ((plist (plist-for obj))
             (entry (cadr (member :grammar-module plist))))
        (if entry
          (progn
            (unless multiple-definition-is-ok
              (format t "~&~%Multiple definition of ~A~
                         ~%  earlier definition was in ~A"
                      obj entry))
            (if (consp entry) ;; multiple sites already?
              (rplacd entry
                      (cons gm
                            (cdr entry)))
              (push-onto-plist obj
                               (list entry gm)
                               :grammar-module)))
          (push-onto-plist obj
                           gm
                           :grammar-module)))

      (etypecase obj
        (cfr 
         ;; all kinds of rules fall under this one type, so they
         ;; have to be distinguished explicitly.  Current assumption
         ;; is that any rule done with a "define" form is internal to
         ;; an object and shouldn't be counted, unless the parameter
         ;; is set. 
         (case source
           (:def-cfr (push obj (gmod-cf-rules gm))
                     (push obj *cfrs-defined*))
           (:define-cfr
               (when *count-internal-rules*
                 (push obj (gmod-cf-rules gm))
                 (push obj *cfrs-defined*)))
           (:def-csr (push obj (gmod-cs-rules gm))
                     (push obj *csrs-defined*))
           (:define-csr
               (when *count-internal-rules*
                 (push obj (gmod-cs-rules gm))
                 (push obj *cfrs-defined*)))
           (:def-form-rule
               (push obj (gmod-form-rules gm)) ;;
               (push obj *form-rules-defined*))
           (:def-syntax-rule
               (push obj (gmod-syntax-rules gm))
               (push obj *syntax-rules-defined*))
           (otherwise
            (push-debug `(,source obj))
            (error "Unexpected source: ~a" source))))

        ((or category referential-category mixin-category)
         (ecase source
           (:def-category
            (unless (member obj (gmod-non-terminals gm) :test #'eq)
              (push obj (gmod-non-terminals gm)))
            (unless (member obj *non-terminals-defined* :test #'eq)
              (push obj *non-terminals-defined*)))

           (:define-category
            (unless (member obj (gmod-object-types gm) :test #'eq)
              (push obj (gmod-object-types gm)))
            (unless (member obj *objects-defined* :test #'eq)
              (push obj *objects-defined*)))

           (:referential  ;;///// clones :define-category for now
            (unless (member obj (gmod-object-types gm) :test #'eq)
              (push obj (gmod-object-types gm)))
            (unless (member obj *objects-defined* :test #'eq)
              (push obj *objects-defined*)))

           (:mixin  ;;///// clones :define-category for now
            (unless (member obj (gmod-object-types gm) :test #'eq)
              (push obj (gmod-object-types gm)))
            (unless (member obj *objects-defined* :test #'eq)
              (push obj *objects-defined*)))

           (:form   ;; ditto
            (unless (member obj (gmod-object-types gm) :test #'eq)
              (push obj (gmod-object-types gm)))
            (unless (member obj *objects-defined* :test #'eq)
              (push obj *objects-defined*)))

           (:derived ;; ditto -- these are computed subtypes like plurals
            (unless (member obj (gmod-object-types gm) :test #'eq)
              (push obj (gmod-object-types gm)))
            (unless (member obj *objects-defined* :test #'eq)
              (push obj *objects-defined*)))
            
           (:dotted-rule
            ;; Since they're just expediencies, we ignore them.
            ;; If we need them we can get them from the n-ary rules.
            )
           (:dm&p
            )))

        (word     (unless (member obj (gmod-words gm) :test #'eq)
                    (push obj (gmod-words gm))))

        (polyword (unless (member obj (gmod-polywords gm) :test #'eq)
                    (push obj (gmod-polywords gm)))))

      gm )))


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

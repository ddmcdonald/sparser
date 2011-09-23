;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994-1996 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "autodef data"
;;;   module:  "interface;workbench:"
;;;  Version:  0.5 September 1996

;; initiated 1/17/94 v2.3
;; 0.1 (4/23) changed routine from breaking when the case is undefined to just
;;      omitting it.
;; 0.2 (5/26) added descriptions and examples
;; 0.3 (7/25) added write functions and delete/autodef
;;     (9/12) added module link to define-autodef-data
;; 0.4 (1/5/96) added a reset to the window when the tableau form is eval'd
;; 0.5 (9/4) added Add-autodef-obj-to-tableau and patches to ensure that
;;      every defined autodef will show up on the tableau even if it's not
;;      been explicitly added to its ordered forms.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(defstruct (autodef
            (:include unit)     ;; provides 'plist'
            (:conc-name #:ad-)
            (:print-function print-autodef-structure))

  category        ;; a category object
  cell            ;; the integer for its position in the sequence dialog
  instantiable?   ;; T or Nil
  function        ;; symbol that names a function of one arg
  dossier         ;; namestring for a file in [dossiers;]
  module          ;; a grammar module
  display-string  ;; the string that is used in the table
  parent    ;; an autodef
  children  ;; a list of autodefs
  depth     ;; an integer reflecting how many parents are above it
  description  ;; a string to appear in a dialog box
  examples     ;; a (short) list of words encoded as a string
  write-fn     ;; a symbol that names a function of two args: obj and stream
  )


(defun print-autodef-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<autodef " stream)
  (write-string (symbol-name (cat-symbol (ad-category obj))) stream)
  (write-string ">" stream))


(defun print-autodef-in-view (ad stream)
  (when ad
    (let ((string (ad-display-string ad))
          (depth (ad-depth ad)))
      (when depth
        (write-string (string-of-n-spaces (* 2 depth))
                      stream))
      (when string
        (write-string string stream)))))


;;;----------
;;; indexing
;;;----------

(defparameter *auto-definition-objects* (make-hash-table :test #'eq))

(defun autodef-named (symbol)
  (let ((cat-symbol (find-symbol (symbol-name symbol)
                                 *category-package*)))
    (when cat-symbol
      (gethash cat-symbol *auto-definition-objects*))))

(defun delete/autodef (ad)
  (unless ad
    (error "Object to delete is Nil"))
  (unless (autodef-p ad)
    (error "Object to delete is not an autodef:~%   ~A" ad))
  (let ((category (ad-category ad)))
    (remhash (cat-symbol category)
             *auto-definition-objects*)))


;;;------
;;; form
;;;------

(defun define-autodef-data (category-name
                            &key display-string form
                                 dossier module write-fn
                                 description examples
                                 not-instantiable )

  (let ((category (category-named category-name)))
    (unless category
      (error "There is no category named ~A" category-name))
    (let* ((name (cat-symbol category))
           (obj (autodef-named name)))

      (unless obj
        (setq obj (make-autodef :category category))
        (setf (gethash name *auto-definition-objects*) obj))

      (setf (ad-instantiable? obj)  (not not-instantiable))
      (setf (ad-function obj)       form)
      (setf (ad-dossier obj)        dossier)
      (setf (ad-module obj)         module)
      (setf (ad-display-string obj) display-string)
      (setf (ad-description obj)    description)
      (setf (ad-examples obj)       examples)
      (setf (ad-write-fn obj)       write-fn)

      (link-dossier-to-module module dossier obj)

      (add-autodef-obj-to-tableau obj)

      obj )))


;;;----------------------------
;;; the tableau for the dialog
;;;----------------------------

(defmacro define-autodef-tableau (&rest toplevel)
  ;; Called from toplevel in a designated file that gives all
  ;; the autodefs and allows them to be explicitly ordered
  ;; and indents (hides) the daughters.
  `(assimilate-tableau-forms 0 ',toplevel))


(defun assimilate-tableau-forms (depth toplevel-forms)
  (setq *autodef-tableau*
        (assimilate-tableau-forms1 depth toplevel-forms nil))
  (sweep-autodef-index-for-missing-objects/add-to-tableau)

  ;; lose the window (which is hidden) so that this change will
  ;; be seen with the next click on 'define word'
  (setq *autodefine-window* nil))


(defun assimilate-tableau-forms1 (depth toplevel-forms parent)
  (let ( toplevel-autodefs  ad )
    (dolist (form toplevel-forms)
      (etypecase form
        (symbol (setq ad (autodef-named form))
                (when ad
                  ;;(break "No autodef named ~A" form))
                  (setf (ad-depth ad) depth)
                  (when parent
                    (setf (ad-parent ad) parent))
                  (push ad toplevel-autodefs)))
        (cons
         (setq ad (autodef-named (car form)))
         (when ad
           (setf (ad-depth ad) depth)
           (when parent
             (setf (ad-parent ad) parent))
           (let ((daughters
                  (assimilate-tableau-forms1 (1+ depth)
                                             (cdr form)
                                             ad)))
             (setf (ad-children ad) daughters)
             (push ad toplevel-autodefs))))))

    (nreverse toplevel-autodefs)))



;;--- adding stragglers implicitly

(defun add-autodef-obj-to-tableau (autodef-obj)
  ;; This routine is expected to have its principal effect during
  ;; a session as new modules are being added to the model and
  ;; autodef's for them developed. It lets someone get an autodef
  ;; on the tableau without having to also bring in the tableau
  ;; file and put it there.  When it is run, the object goes
  ;; to the top of the table. Later, when the form is executed
  ;; as part of the load to form a new image, the object will
  ;; appear at the end of the table (which, besides being simpler
  ;; to implement, is a sort of hint to go in and clean up/extend
  ;; the form in the tableau file.
  (when *autodef-tableau*
    ;; If this isn't set, then we're presumably in the middle
    ;; of a load and the tableau file hasn't yet been loaded.
    ;; (It goes close to last.)  In this case the work will be
    ;; done by Assimilate-tableau-forms in its 'get the rest' pass.

    (setq *autodefine-window* nil)   ;; force the table to be reconstructed
    (setf (ad-depth autodef-obj) 0)  ;; it's at the top of the menu
    (push autodef-obj *autodef-tableau*)  ;; put it on the table
    ))
  

(defun sweep-autodef-index-for-missing-objects/add-to-tableau ()
  ;; Goes through the hashtable and touches all the ad-obj's. 
  ;; If one isn't already on the tableau (as indicated by a value
  ;; in its 'depth' field), it's added on at the end.
  (let ( orphans )
    (maphash #'(lambda (symbol object)
                 (declare (ignore symbol))
                 (unless (ad-depth object)
                   (push object orphans)))
             *auto-definition-objects*)
    
    (setq *autodef-tableau*
          (append orphans *autodef-tableau*))))


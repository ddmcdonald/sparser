;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "autodef"
;;;   module:  "interface;windows:articles:"
;;;  Version:  January 1994

;; initiated 1/17/94 v2.3

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


;;;------
;;; form
;;;------

(defun define-autodef-data (category-name
                            &key display-string form
                                 dossier module
                                 not-instantiable )

  (let ((category (category-named category-name)))
    (unless category
      (error "There is no category named ~A" category-name))
    (let* ((name (cat-symbol category))
           (obj (autodef-named name)))

      (unless obj
        (setq obj (make-autodef :category category))
        (setf (gethash name *auto-definition-objects*) obj))

      (setf (ad-instantiable? obj) (not not-instantiable))
      (setf (ad-function obj) form)
      (setf (ad-dossier obj) dossier)
      (setf (ad-module obj) module)
      (setf (ad-display-string obj) display-string)

      obj )))


;;;----------------------------
;;; the tableau for the dialog
;;;----------------------------

(defmacro define-autodef-tableau (&rest toplevel)
  `(assimilate-tableau-forms 0 ',toplevel))

(defun assimilate-tableau-forms (depth toplevel-forms)
  (setq *autodef-tableau*
        (assimilate-tableau-forms1 depth toplevel-forms nil)))

(defun assimilate-tableau-forms1 (depth toplevel-forms parent)
  (let ( toplevel-autodefs  ad )
    (dolist (form toplevel-forms)
      (etypecase form
        (symbol (setq ad (autodef-named form))
                (unless ad
                  (break "No autodef named ~A" form))
                (setf (ad-depth ad) depth)
                (when parent
                  (setf (ad-parent ad) parent))
                (push ad toplevel-autodefs))
        (cons
         (setq ad (autodef-named (car form)))
         (setf (ad-depth ad) depth)
         (when parent
           (setf (ad-parent ad) parent))
         (let ((daughters
                (assimilate-tableau-forms1 (1+ depth)
                                           (cdr form)
                                           ad)))
           (setf (ad-children ad) daughters)
           (push ad toplevel-autodefs)))))

    (nreverse toplevel-autodefs)))



;;;-----------------------------
;;; dialog items for the window
;;;-----------------------------

(defparameter *ad/text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(20 12)
   #@(237 18)
   "define word"
   'NIL ))

(defparameter *ad/open-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 54)
   #@(62 16)
   "open"
   'show-daughers-of-autodef-item
   :DEFAULT-BUTTON T ))

(defparameter *ad/close-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 81)
   #@(62 16)
   "close"
   'close-up-daughters-of-autodef-item
   :DIALOG-ITEM-ENABLED-P NIL
   :DEFAULT-BUTTON NIL ))

(defparameter *ad/define-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 123)
   #@(62 16)
   "Define"
   'define-word-as-per-autodef
   :DEFAULT-BUTTON NIL))

(defparameter *ad/cancel-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 147)
   #@(62 16)
   "cancel"
   'hide-the-autodef-window
   :DEFAULT-BUTTON NIL ))


;;;------------
;;; the window
;;;------------

(defclass Autodefine-tableau (dialog) ())

(defun launch-the-Autodefine-tableau ()
  (setq *autodefine-window*
        (MAKE-INSTANCE 'DIALOG
          :WINDOW-TYPE :DOCUMENT-WITH-GROW
          :window-title "Define"
          :VIEW-POSITION #@(37 169)
          :VIEW-SIZE #@(428 196)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS (LIST *ad/text*
                               *ad/open-button*
                               *ad/close-button*
                               *ad/define-button*
                               *ad/cancel-button*      
                               )
          )))


(defmethod window-close ((adt autodefine-tableau))
  (close-down-the-autodef-window)
  (call-next-method adt))

(defun hide-the-autodef-window (button)
  (declare (ignore button))
  (ccl:window-hide *autodefine-window*))

(defun show-the-autodef-window (button)
  (declare (ignore button))
  (ccl:window-show *autodefine-window*))


;;;-----------------------
;;; the table of autodefs
;;;-----------------------

(defclass autodef-view (sequence-dialog-item) ())

(defun setup-autodef-view ()
  (if *autodef-tableau*
    (setq *autodef-view*
          (make-instance 'autodef-view
            :view-container *autodefine-window*
            :view-position #@(100 50)
            :view-size #@(200 225)
            :view-font '("Geneva" 9 :plain)
            :visible-dimensions #@(1 10)
            :table-sequence *autodef-tableau*
            :dialog-item-action 'autodef-selected
            :sequence-wrap-length 2000
            :selection-type :single
            :table-print-function 'print-autodef-in-view
            :table-vscrollp t
            :table-hscrollp nil
            ))

    (break "The tableau of autodefs hasn't been created")))


;;;------------
;;; operations
;;;------------

(defun autodef-selected (table)
  ;; this is called when there is a click in the tableau view
  (let ((cell (car (selected-cells table))))
    (if cell
      ;; if you click somewhere in the table view where there's
      ;; nothing displayed, there won't be a cell
      (then
        ;; the selected-cells list contains points, and we have
        ;; to decode the point to an integer we can use as an
        ;; index. Since there are only vertical cells in this
        ;; table we just use the vertical coordinate
        (let* ((v-index (point-v cell))
               (autodef (elt (table-sequence table) v-index)))
          (setq *selected-autodef* autodef)))
      (else
        (setq *selected-autodef* nil)))))


;;------- button selection

(defun show-daughers-of-autodef-item (button)
  (declare (ignore button))
  (if *selected-autodef*
    (open-daughters-of-selected-autodef)
    (else
      (format t "~&\"open\" doesn't make sense unless you have ~
                 selected a category in the table~%"))))
 
(defun define-word-as-per-autodef (button)
  (declare (ignore button))
  (break))

(defun close-up-daughters-of-autodef-item (button)
  (declare (ignore button))
  (if *selected-autodef*
    (close-selected-autodef)
    (else
      (format t "~&\"open\" doesn't make sense unless you have ~
                 selected a category in the table~%"))))
 
(defun cancel-autodefinition (button)
  (declare (ignore button))
  (break))


;;------- the actual actions

(defun open-daughters-of-selected-autodef ( &optional
                                            (autodef *selected-autodef*) )
  (when autodef
    (let ((daughters (ad-children autodef)))
      (if daughters
        (then
          (splice-daughters-below-autodef-item autodef daughters)
          (when (= 0 *adt/number-of-levels-opened*)
            (ccl:dialog-item-enable *ad/close-button*))
          (incf *adt/number-of-levels-opened*))
        (format t "~&Can't open the ~A category~
                   ~%because it does not have any daughters~%")))))

(defun splice-daughters-below-autodef-item (autodef daughters)
  (let ((autodef-cons (member autodef *autodef-tableau*)))
    (if autodef-cons
      (let* ((next-cons (cdr autodef-cons))
             (fresh-daughters-list (copy-list daughters))
             (last-cell (last fresh-daughters-list)))
        (rplacd autodef-cons fresh-daughters-list)
        (rplacd last-cell next-cons)
        (set-table-sequence *autodef-view* *autodef-tableau*))

      (break "The autodef ~A isn't in the tableau" autodef))))



(defun close-selected-autodef ()
  ;; we allow the user to click on either a leaf or on an item
  ;; that has visible daughters. In the first case we close the
  ;; item and its siblings leaving the parent; in the second we
  ;; find the daughters and close them.
  (if *selected-autodef*
    (let* ((autodef *selected-autodef*)
           (ad-cons (member autodef *autodef-tableau*))
           (next-autodef (cadr ad-cons)))
      (if next-autodef
        (then ;; is this next item a daughter of the selected ad?
          (if (eq autodef (ad-parent next-autodef))
            (close-daughters autodef)
            (look-for-parent-and-close-its-daughters autodef)))
        (else
          ;; the selection is the last in the tableau.
          ;; If it's a daughter then we close it up.
          (if (ad-parent autodef)
            (close-parents-daughters autodef)
            (format t "~&The category ~A is already closed~%"
                    autodef))))
      (set-table-sequence *autodef-view* *autodef-tableau*))))
        

(defun close-daughters (parent)
  (let* ((daughters (ad-children parent))
         (parents-cons (member parent *autodef-tableau*))
         (next-parent-cons
          (nthcdr (1+ (length daughters)) parents-cons)))
    (rplacd parents-cons next-parent-cons)
    (decf *adt/number-of-levels-opened*)
    (when (= 0 *adt/number-of-levels-opened*)
      (ccl:dialog-item-disable *ad/close-button*))))


(defun look-for-parent-and-close-its-daughters (daughter)
  (let ((parent (ad-parent daughter)))
    (break)
    (if parent
      (let* ((parents-cons (member parent *autodef-tableau*))
             (daughters (ad-children parent))
             (next-parent-cons
              (nthcdr (1+ (length daughters)) parents-cons)))
        (break "1")
        (rplacd parents-cons next-parent-cons)
        (break "2")
        (decf *adt/number-of-levels-opened*)
        (when (= 0 *adt/number-of-levels-opened*)
          (ccl:dialog-item-disable *ad/close-button*))))

      (format t "~&The category ~A is toplevel and cannot ~
                 be closed~%" daughter)))


(defun close-parents-daughters (daughter)
  ;; we've selected a daughter that is a leaf of the current view
  ;; of the tableau, so we find its parent and remove all of its
  ;; daughters.
  (let* ((parent (ad-parent daughter))
         (daughters (ad-children parent))
         (parents-cons (member parent *autodef-tableau*))
         (next-parent-cons
          (nthcdr (1+ (length daughters)) parents-cons)))
    (break "1")
    (rplacd parents-cons next-parent-cons)
    (break "2")
    (decf *adt/number-of-levels-opened*)
    (when (= 0 *adt/number-of-levels-opened*)
      (ccl:dialog-item-disable *ad/close-button*))))


(defun define-word-as-per-autodef (button)
  (declare (ignore button))
  (break))

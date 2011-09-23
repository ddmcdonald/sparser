;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "dossiers"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  November 1995

;; initiated 8/28/95. 10/20 fixed recording of deliberately choosen files
;; 11/16 added a probe to be sure the file exists.

(in-package :sparser)

;;;-----------------
;;; state variables
;;;-----------------

(defparameter *rdt/last-dossier-used* nil
  "Bound to the full namestring of the last marked dossier used
   to save an automatically defined rule")

(defparameter *rdt/dossier-to-use* nil
  "Initialized by initialize-rdt-dossier to either the default
   or the last dossier used if there is one. rdt/Save-new-rule uses
   this variable.")


;;;-------------
;;; initializer
;;;-------------

(defun initialize-rdt-dossier ()
  ;; called from initialize-rdt-rule-population-widget-state
  (let ((namestring-to-use (or *rdt/last-dossier-used*
                               *default-dossier-file*)))
    (ccl:set-dialog-item-text *rdt/dossier-namestring*
                              namestring-to-use)
    (setq *rdt/dossier-to-use* namestring-to-use)))


;;;-----------------
;;; change dossiers
;;;-----------------

(defun rdt/change-the-dossier (change-dossier-button)
  (declare (ignore change-dossier-button))
  (launch-the-dossier-change-window))

(defun rdt/change-dossier-to (namestring)
  ;; action taken asynchonously to at the end of the 
  ;; dossier-changing procedure
  (setq *rdt/dossier-to-use* namestring
        *rdt/last-dossier-used* namestring)
  (ccl:set-dialog-item-text *rdt/dossier-namestring* namestring))


;;--- widgets

(defparameter *rdtctd/window* nil)

(defparameter *rdtctd/directions-text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(10 9)
   #@(584 31)
   "Enter the full namestring of the file you want or select it from the established files."
   'NIL))

(defparameter *rdtctd/input-box*
  (MAKE-DIALOG-ITEM
   'EDITABLE-TEXT-DIALOG-ITEM
   #@(10 34)
   #@(554 19)
   ""
   'NIL
   :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
   :ALLOW-RETURNS NIL))

(defparameter *rdtctd/ok-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(475 67)
   #@(62 24)
   "ok"
   'rdtctd/accept-dossier
   :DEFAULT-BUTTON T))

(defparameter *rdtctd/use-default-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(15 67)
   #@(90 16)
   "use default"
   'rdtctd/use-default-dossier
   :DEFAULT-BUTTON NIL))

(defparameter *rdtctd/show-dossier-files-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(123 67)
   #@(184 16)
   "show the dossier files"
   'rdtctd/show-dossier-files
   :DEFAULT-BUTTON NIL))


(defclass change-dossier-tableau (dialog) ())


(defun launch-the-dossier-change-window ()
  (setq *rdtctd/window*
        (MAKE-INSTANCE 'change-dossier-tableau
          :WINDOW-TYPE :DOCUMENT-WITH-GROW
          :window-title "Select the file for the new rule"
          :VIEW-POSITION  #@(25 45)
          :VIEW-SIZE  #@(574 102)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS
          (LIST *rdtctd/directions-text*
                *rdtctd/input-box*
                *rdtctd/ok-button*
                *rdtctd/use-default-button*
                *rdtctd/show-dossier-files-button* )))
  
  (initialize-rdtctd-window))


;;--- window actions

(defun initialize-rdtctd-window ()
  (ccl:set-dialog-item-text *rdtctd/input-box*
                            (or *rdt/last-dossier-used*
                                *default-dossier-file*))
  (ccl:set-dialog-item-text *rdtctd/directions-text*
   ;; need to reset it in case it was changed because of a bad filename
   "Enter the full namestring of the file you want or select it from the established files.")
  (ccl:dialog-item-disable *rdtctd/show-dossier-files-button*))


(defmethod window-close ((w change-dossier-tableau))
  (setq *rdtctd/window* nil)
  (call-next-method w))


;;--- button actions

(defun rdtctd/accept-dossier (ok-button)
  (declare (ignore ok-button))
  (let ((namestring (ccl:dialog-item-text *rdtctd/input-box*)))
    (if (probe-file namestring)
      (then
        (rdt/change-dossier-to namestring)
        (window-close *rdtctd/window*))
      (ccl:set-dialog-item-text *rdtctd/directions-text*
        "There is no file with that name. Please correct it."))))



(defun rdtctd/use-default-dossier (use-default-button)
  (declare (ignore use-default-button))
  (ccl:set-dialog-item-text *rdtctd/input-box* *default-dossier-file*)
  (rdtctd/accept-dossier :ignore))



;;;--------------------------------------------------------
;;; table of the available dossier files organized by gmod
;;;--------------------------------------------------------

(defun rdtctd/show-dossier-files (show-dossier-files-button)
  (declare (ignore show-dossier-files-button))
  (launch-grammar-module-dossiers-table))

;;--- button wigets

(defparameter *dt/edit-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(24 184)
   #@(58 23)
   "edit"
   'dt/edit-dossier-file
   :DEFAULT-BUTTON T))

(defparameter *dt/load-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(99 184)
   #@(56 22)
   "load"
   'dt/load-dossier-file
   :DEFAULT-BUTTON NIL))



;;--- the window

(defparameter *dt/window* nil)

(defclass dossier-table (dialog) ())

(defun launch-grammar-module-dossiers-table ()
  (unless *dt/dossier-table-contents*
    (populate-dossier-table))
  (setq *dt/window*
        (MAKE-INSTANCE 'dossier-table
          :WINDOW-TYPE :DOCUMENT  ;;-WITH-GROW
          :window-title "dossier files by grammar module"
          :VIEW-POSITION #@(25 173)
          :VIEW-SIZE #@(478 217)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS (LIST *dt/table*
                               *dt/edit-button*
                               *dt/load-button* )))
  (initialize-grammar-module-dossiers-table))


(defun initialize-grammar-module-dossiers-table ()
  (setq *dossier-namestring-selected-in-dt-table* nil)
  (ccl:dialog-item-disable *dt/edit-button*)
  (ccl:dialog-item-disable *dt/load-button*))

(defmethod window-close ((w dossier-table))
  (call-next-method w))



;;--- the table

(defparameter *dt/dossier-table-contents* nil)

(defparameter *dt/table*
  (MAKE-DIALOG-ITEM
          'SEQUENCE-DIALOG-ITEM
          #@(4 3)
          #@(471 171)
          ""   ;; the title
          'dt/act-on-selected-item   ;; :dialog-item-action
          :view-font '("Times" 10 :SRCOR :PLAIN)
          :CELL-SIZE #@(471 16)
          :SELECTION-TYPE  :SINGLE
          :TABLE-HSCROLLP  NIL
          :TABLE-VSCROLLP  t
          :table-print-function 'dt/print-item
          :TABLE-SEQUENCE  *dt/dossier-table-contents* ))


(defun dt/print-item (dt-item stream)
  (etypecase dt-item
    (symbol
     ;; toplevel gmod
     (write-string (gmod-princ-name dt-item) stream))
    (cons
     (etypecase (car dt-item)
       (grammar-module
        ;; embedded gmod: `(,gmod . indentation)
        (write-string (string-of-n-spaces (cdr dt-item)) stream)
        (write-string (gmod-princ-name    (car dt-item)) stream))
       (string
        ;; namestring of a dossier file:  `(,string . indentation)
        (write-string (string-of-n-spaces (cdr dt-item)) stream)
        (write-string (car dt-item) stream))))))


(defparameter *dossier-namestring-selected-in-dt-table* nil)

(defun dt/act-on-selected-item (dt-table)
  (when (ccl:selected-cells dt-table)
    (let* ((index (ccl:cell-to-index dt-table
                                     (first (ccl:selected-cells dt-table))))
           (item (elt (ccl:table-sequence dt-table)
                      index)))
      (etypecase item
        (symbol
         ;; toplevel gmod
         (when *dossier-namestring-selected-in-dt-table*
           (setq *dossier-namestring-selected-in-dt-table* nil)))
        (cons
         (etypecase (car item)
           (grammar-module
            ;; embedded gmod: `(,gmod . indentation)
            (when *dossier-namestring-selected-in-dt-table*
              (setq *dossier-namestring-selected-in-dt-table* nil)))
           (string
            ;; namestring of a dossier file
            (setq *dossier-namestring-selected-in-dt-table*
                  (car item))))))

      (if *dossier-namestring-selected-in-dt-table*
        (then
          (ccl:dialog-item-enable *dt/edit-button*)
          (ccl:dialog-item-enable *dt/load-button*))
        (else
          (ccl:dialog-item-disable *dt/edit-button*)
          (ccl:dialog-item-disable *dt/load-button*)))

      (when (ccl:double-click-p)
        ))))



(defun populate-dossier-table ()
  (let ((tree (collect-dossiers-paths-from-toplevel-gmods)))
    (let ((lines (flatten-dossier-path-tree tree)))
      (setq *dt/dossier-table-contents* lines)
      (when lines
        (ccl:set-table-sequence *dt/table* lines)))))


(defun collect-dossiers-paths-from-toplevel-gmods ()
  (let ( path-with-dossiers  paths )
    (dolist (gmod *toplevel-grammar-modules*)
      (setq path-with-dossiers
            (walk-down-to-find-paths-with-dossiers gmod))
      (when path-with-dossiers
        (push path-with-dossiers paths)))
    paths ))


(defun walk-down-to-find-paths-with-dossiers (gmod)
  (let ((daughters (gmod-sub-modules gmod)))

    (if (null daughters)  ;; we're definitively a leaf
      (let ((dossier-files (dossier-files-of-gmod gmod)))
        (when dossier-files
          `(,gmod ,dossier-files)))

      ;; we're not a leaf, so we might have a dossier file
      ;; at this level and we also check our daughters.
      (let ((dossiers-here (dossier-files-of-gmod gmod))
            subpath-with-dossiers  subpaths-with-dossiers )

        (dolist (daughter daughters)
          (setq subpath-with-dossiers
                (walk-down-to-find-paths-with-dossiers daughter))
          (when subpath-with-dossiers
            (push subpath-with-dossiers
                  subpaths-with-dossiers)))

        (cond
         ((and subpaths-with-dossiers dossiers-here)
          `( ,gmod
             ,dossiers-here
             ,@subpaths-with-dossiers ))

         (subpaths-with-dossiers
          `( ,gmod
             ,subpaths-with-dossiers ))

         (dossiers-here
          `( ,gmod
             ,dossiers-here ))

         (t nil ))))))


(defun dossier-files-of-gmod (gmod)
  (let ((files (gmod-files gmod)))
    (when files
      (let ( dossier-namestrings )
        (dolist (namestring files)
          (when (search "dossier" namestring)
            (push namestring dossier-namestrings)))
        dossier-namestrings ))))



(defun flatten-dossier-path-tree (dossier-path-tree)
  ;; does the whole tree starting at the root.
  (let ( lines )
    (etypecase (first dossier-path-tree)
      (cons
       ;; several of the toplevel grammar modules had leaves with dossiers
       (flatten-dossier-path-subtree dossier-path-tree 0))

      (grammar-module
       ;; only one of them did
       (setq lines
             (append (list (first dossier-path-tree))
                     (flatten-dossier-path-subtree (second dossier-path-tree)
                                                   3)))))
    lines ))


(defvar *lines* nil)
(defun flatten-dossier-path-subtree (list-of-paths indentation)
  ;; does lists of subpaths
  (let ( lines  lines-from-one-subpath )

    (dolist (path list-of-paths)
      (setq lines-from-one-subpath (flatten-dossier-path path
                                                         indentation))
 ;(break "lines from one subpath")
      (setq lines
            (append lines lines-from-one-subpath)))
 ;(setq *lines* lines)
 ;(break "*lines*")
    lines ))


(defun flatten-dossier-path (path indentation)
  ;; does a single, gmod-headed path and handles the leaves
  (let ((gmod (first path)))
    (unless (grammar-module-p gmod)
      (break "bad threading: car isn't a grammar module:~
              ~%   ~A~%~%" gmod))

    (cond
     ((third path)
      ;; this is a path with some local dossiers at this point
      (let ((sub-paths (third path))
            (local-dossier-files (second path)))
 (break "local dossiers")
        (let ((lines-from-subpaths
               (flatten-dossier-path-subtree sub-paths
                                             (+ indentation 3)))
              (namestring-lines
               (mapcar #'(lambda (namestring)
                           `(,namestring ,(+ indentation 3)))
                       local-dossier-files)))
 (break "local dossiers 2")
          `( (,gmod ,indentation)
             ,@namestring-lines
             ,@lines-from-subpaths )  )))
     

     ((stringp (first (second path)))
      ;; then this is a leaf of the tree and we've bottomed out
 ;(break "putative leaf")
      (let ((namestring-lines
             (mapcar #'(lambda (namestring)
                         `(,namestring ,(+ indentation 3)))
                     (second path))))
 ;(break "leaf 2")
        `( (,gmod ,indentation)
           ,@namestring-lines )  ))


     (t ;; this is a path with just subpaths, nothing local
 (break "straight recursion")
      (let ((lines-from-subpaths
             (flatten-dossier-path-subtree (second path)
                                           (+ indentation 3))))
 (break "straight recursion 2")
        `( (,gmod ,indentation)
           ,@lines-from-subpaths )  )))))

        

      

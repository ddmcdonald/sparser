;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "schema selection"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  0.1 December 1995

;; broken out of [define-rule] 4/27.  8/9 adjusted position of window to fit
;; on Book screen
;; 0.1 (12/26) adjusted the way Populate-rdt-schema-table-items can specialize
;;      what's available in the table.

(in-package :sparser)


;;;-------------------------
;;; Schema selection window
;;;-------------------------

;;--- the widgets

(defparameter *rdt/schema-description-text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(320 5)
   #@(248 108)
   "examples"
   'NIL
   :VIEW-FONT '("New York" 9 :SRCOR :PLAIN)))

(defparameter *rdt/schema-selection-ok-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(322 128)
   #@(137 16)
   "populate schema"
   'rdt/pass-selected-schema-to-rule-tableau
   :DEFAULT-BUTTON T))

(defparameter *rdt/schema-selection-cancel-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(501 128)
   #@(62 16)
   "abort"
   'rdt/abort-selection-schema
   :DEFAULT-BUTTON NIL))


;;;---------
;;; actions
;;;---------

;;--- Cancel action

(defun rdt/abort-selection-schema (button)
  (declare (ignore button))
  (ccl:window-close *rdt/schema-selection-window*)
  (when *slvd/referent*
    ;; a hook for when the Define-rule procedure is called from
    ;; a sublanguage-specific driver rather than from the
    ;; Sparser menu
    (slvd/canceled-out-of-schema-selection)))


;;--- the data

(defun populate-rdt-schema-table-items ()
  (let ( items )
    (dolist (category (if *slvd/tree-family-restriction*
                        *slvd/tree-family-restriction*
                        *root-labels-of-tree-families*))
      (push category items)
      (dolist (etf (gethash category *root-categories-to-ETFs*))
        (push etf items)))
    (setq *rdt/schema-items-in-table*
          (nreverse items))))


;;--- initializing the state

(defun initialize-schema-selection-state ()
  (when *rdt/selected-schema*
    (ccl:dialog-item-disable *rdt/schema-selection-ok-button*))
  (setq *rdt/selected-schema* nil
        *rdt/selected-schema-case* nil
        *rdt/case-descriptors* nil
        *rdt/schema-cases-done* nil
        *rdt/schema-cases-remaining* nil)
  (set-rdt-widgets-to-canonical-positions)
  (ccl:set-dialog-item-text *rdt/schema-description-text* ""))



;;--- the table

(defparameter *rdt/schema-table* nil)

(defun setup-rdt-schema-table ()
  (setq *rdt/schema-table*
        (MAKE-DIALOG-ITEM
         'SEQUENCE-DIALOG-ITEM
         #@(34 3)
         #@(272 145)
         "Untitled"
         'rdt-schema-clicked-on   ;; the dialog-item-action 
         :table-print-function 'print-rdt-schema-item
         :VIEW-FONT '("New York" 10 :SRCOR :PLAIN)
         :CELL-SIZE #@(272 13) ;;16)
         :SELECTION-TYPE :SINGLE
         :TABLE-HSCROLLP NIL
         :TABLE-VSCROLLP T
         :TABLE-SEQUENCE *rdt/schema-items-in-table* )))



;;--- printing

(defun print-rdt-schema-item (item stream)
  (typecase item
    (referential-category
     (write-string (string-downcase (symbol-name (cat-symbol item)))
                   stream))

    (exploded-tree-family
     (write-string "   " stream)
     (write-string (string-downcase (symbol-name (etf-name item)))
                   stream))

    (cons (print-rdt-etf-case item stream))

    (t (format t "~&~%----- Item with unexpected type in table:~
                  ~%    ~A~%    ~A" item (type-of item)))))


(defun print-rdt-etf-case (list stream)
  (let* ((rule-proper (second list))
         (lhs (first rule-proper))
         (rhs (second rule-proper)))

    (format stream "        ~A ->"
            (string-downcase (symbol-name lhs)))
    (dolist (symbol rhs)
      (etypecase symbol
        (symbol
         (format stream " ~A"
                 (string-downcase (symbol-name symbol))))
        (word
         (format stream " \"~A\"" (word-pname symbol)))))))



;;--- selecting

(defun rdt-schema-clicked-on (table)
  (when (ccl:selected-cells table)
    (let* ((cell (car (ccl:selected-cells table)))
           (index (ccl:cell-to-index table cell))
           (item (elt (ccl:table-sequence table) index)))

      (etypecase item
        (referential-category
         (initialize-schema-selection-state))

        (exploded-tree-family
         (when *rdt/selected-schema*
           (unless (eq *rdt/selected-schema* item)
             (ccl:dialog-item-disable *rdt/schema-selection-ok-button*)))
         (rdt/display-eft-description item)
         (splice-in-cases-of-etf item)
            ;; goes away when up/down buttons come up
         (setq *rdt/selected-schema* item))

        (cons
         (setq *rdt/selected-schema-case* item)))

      (when (double-click-p)
        (rdt-schema-double-clicked item)))))


(defun rdt-schema-double-clicked (item)
  (etypecase item
    (referential-category )
    (exploded-tree-family
     (setq *rdt/selected-schema* item)
     (ccl:dialog-item-enable *rdt/schema-selection-ok-button*))
    (cons 
     (setq *rdt/selected-schema-case* item)
     ;; shouldn't enable the button until we can be sure that
     ;; we can recover the corresponding schema from the case
     ;(ccl:dialog-item-enable *rdt/schema-selection-ok-button*)
     )))


(defun rdt/Display-eft-description (etf)
  (let ((description-string (etf-description etf)))
    (when description-string
      (ccl:set-dialog-item-text *rdt/schema-description-text*
                                description-string))))


;;--- deselecting

(defun deselect-selected-item/rdt-schema-selection-window ()
  (let* ((table *rdt/schema-table*)
         (selections (ccl:selected-cells table)))
    (when selections
      (let* ((cell (car selections))
             (index (ccl:cell-to-index table cell)))
        (ccl:cell-deselect table 0 index)
        (ccl:set-dialog-item-text *rdt/schema-description-text* "")))))



;;--- opening/closing segments of the table

(defparameter *rdt/schema/expand-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(6 70)
   #@(23 16)
   "I"  ;; looks like the bullet at the beginning of opened directories
   'rdt/Expand-schema-table-line
   :VIEW-FONT '("QuickType Pi" 14 :SRCOR :PLAIN)
   :DEFAULT-BUTTON NIL))

(defun rdt/Expand-schema-table-line (button)
  (declare (ignore button))
  )

(defparameter *rdt/schema/contract-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(6 36)
   #@(22 16)
   "C" ;; looks like the bullet at the beginning of closed directories
   'rdt/Contract-schema-table-line
   :VIEW-FONT '("QuickType Pi" 14 :SRCOR :PLAIN)
   :DEFAULT-BUTTON NIL))

(defun rdt/Contract-schema-table-line (button)
  (declare (ignore button))
  )




;;--- the window

(defparameter *rdt/schema-selection-window* nil)

(defclass rdt-schema-selector (dialog) ())

(defun launch-schema-selection-window ()
  (unless *rdt/schema-items-in-table*
    (populate-rdt-schema-table-items))
  (unless *rdt/schema-table*
    (setup-rdt-schema-table))
  (setq *rdt/schema-selection-window*
        (MAKE-INSTANCE 'rdt-schema-selector
          :WINDOW-TYPE :DOCUMENT-WITH-GROW
          :window-title "Syntactic schema options"
          :VIEW-POSITION #@(10 50)   ;; '(:TOP 96) used by ccl:center-window
          :VIEW-SIZE #@(591 154)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS (list *rdt/schema-description-text*
                               
                               *rdt/schema-selection-ok-button*
                               *rdt/schema-selection-cancel-button*
                               
                               *rdt/schema-table*
                               *rdt/schema/expand-button*
                               *rdt/schema/contract-button*
                               
                               )))
  (initialize-schema-selection-window-widget-state)
  (initialize-schema-selection-state))


(defmethod Window-close ((w rdt-schema-selector))
  (close-down-rdt-state)
  (call-next-method w))

(defun close-down-rdt-state ()
  (setq *rdt/schema-items-in-table* nil
        *rdt/schema-table* nil
        *rdt/schema-selection-window* nil
        *rule-defining-window* nil)
  (initialize-schema-selection-window-widget-state))


(defun initialize-schema-selection-window-widget-state ()
  (ccl:dialog-item-disable *rdt/schema-selection-ok-button*)
  (ccl:dialog-item-disable *rdt/schema/expand-button*)
  (ccl:dialog-item-disable *rdt/schema/contract-button*)
  (ccl:set-dialog-item-text *rdt/schema-description-text* ""))



;;;------------------------------
;;; hacking the cases of the ETF
;;;------------------------------

(defun splice-in-cases-of-etf (etf)
  ;; Called from rdt-schema-clicked-on when an eft is selected with a
  ;; single click.
  (let ((cases (etf-cases etf))
        (table *rdt/schema-table*))

    (when (and (ccl:selected-cells table)
               cases )
      ;; Look up the position of the selected etf within
      ;; its list by reading it out as its index from the
      ;; table, then splice in the cases as successive
      ;; items below it and in front of whatever follows it.
      (let* ((cell (car (ccl:selected-cells table)))
             (index (ccl:cell-to-index table cell))
             (selected-item (elt (ccl:table-sequence table) index)))

        (unless (eq selected-item etf)
          (break "Assumption about behavior of 'table' violated:~
                  The item selected in the table is not the item ~
                  passed in to this routine."))
                    
        (let ((cons (nthcdr index *rdt/schema-items-in-table*)))

          ;; check that we haven't already opened up this eft
          (unless (consp (second cons))
              
            (rplacd cons
                    (append cases  ;; this does a copy
                            (cdr cons)))
              
            (set-table-sequence 
             table *rdt/schema-items-in-table*)))))))


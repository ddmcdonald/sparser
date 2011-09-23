;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "define rule"
;;;   module:  "interface;workbench:"
;;;  Version:  February 1995

;; initiated 1/17/95, extended ...2/22

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defparameter *rule-defining-window* nil
  "This will be bound to either the schema selection window or
   the rule populating window depending on the stage of the process")

(defparameter *rdt/input-field-for-selected-edge* nil
  "Managed by the radio buttons in the rule-population window.")


(defparameter *rdt/schema-type* nil
  "Identifies the pattern of syntactic and semantic items that
   need to be collected via the tableau and controls how the
   cfrs and saved output are written.")

(defparameter *rdt/mapping-schema* nil
  "Holds the schema's substitution variables and their corresponding
   globals. Populated when the schema-case is decoded and used
   when the rule is constructed and saved.")


(defparameter *rdt/schema-items-in-table* nil
  "The list of items in the table at any given moment. It starts
   as the list of major categories as populated when postprocessing
   the exploded tree families.")

(defparameter *rdt/selected-schema* nil)

(defparameter *rdt/selected-schema-case* nil)

(defparameter *rdt/reference-category* nil
  "The category from which the slot values of the tableau can be
   automatically taken.")

(defparameter *rdt/mapping* nil
  "Constructed as the schema case is decoded and in reaction to
   what the user types in the rewrite-rule tableau. Mimics the
   'mapping' in the realization fields of category definitions.
   Used to create the run-time rule and saved form.")

(defparameter *rdt/dossier-file* "code:s:grammar:model:dossiers:new rules"
  "A default location (within the Sparser directory) for the rules")


;;;----------------------
;;; item on Sparser menu
;;;----------------------

(defparameter *define-rule-menu-item*
  (make-instance 'menu-item
    :menu-item-title "define rule"
    :menu-item-action 'launch-the-rule-defining-tableau
    :disabled  *rule-defining-window*
    :update-function 'check-if-rdt-is-up ))


(defun check-if-rdt-is-up (rdt-menu-item)
  (if *rule-defining-window*
    (ccl:menu-item-disable rdt-menu-item)
    (ccl:menu-item-enable rdt-menu-item)))


(defun launch-the-rule-defining-tableau ()
  (setq *rule-defining-window*
        (launch-schema-selection-window)))


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
   #@(112 14)
   "select schema"
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

(defun rdt/abort-selection-schema (button)
  (declare (ignore button))
  (ccl:window-close *rdt/schema-selection-window*))


;;--- the data

(defun populate-rdt-schema-table-items ()
  (let ( items )
    (dolist (category *root-labels-of-tree-families*)
      (push category items)
      (dolist (etf (gethash category *root-categories-to-ETFs*))
        (push etf items)))
    (setq *rdt/schema-items-in-table*
          (nreverse items))))




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



;;--- selecting

(defun rdt-schema-clicked-on (table)
  (when (ccl:selected-cells table)
    (let* ((cell (car (ccl:selected-cells table)))
           (index (ccl:cell-to-index table cell))
           (item (elt (ccl:table-sequence table) index)))

      (etypecase item
        (referential-category
         (setq *rdt/selected-schema* nil))
        (exploded-tree-family
         (setq *rdt/selected-schema* item)
         (rdt/display-eft-description item))
        (cons
         (setq *rdt/selected-schema-case* item)
         (ccl:dialog-item-enable *rdt/schema-selection-ok-button*)))

      (when (double-click-p)
        (rdt-schema-double-clicked item)))))


(defun rdt-schema-double-clicked (item)
  (etypecase item
    (referential-category
     )
    (exploded-tree-family
     (splice-in-cases-of-selected-etf))
    (cons )))


(defun rdt/Display-eft-description (etf)
  (let ((description-string (etf-description etf)))
    (when description-string
      (ccl:set-dialog-item-text *rdt/schema-description-text*
                                description-string))))


;;--- deselecting

(defun deselect-selected-edge/rdt-schema-selection-window ()
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
          :VIEW-POSITION '(:TOP 96)
          :VIEW-SIZE #@(591 154)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS (list *rdt/schema-description-text*
                               
                               *rdt/schema-selection-ok-button*
                               *rdt/schema-selection-cancel-button*
                               
                               *rdt/schema-table*
                               *rdt/schema/expand-button*
                               *rdt/schema/contract-button*
                               
                               )))
  (initialize-schema-selection-window-widget-state))


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

(defun splice-in-cases-of-selected-etf ()
  ;; Called as the double-click action on an etf in the schema selection
  ;; table.
  (when *rdt/selected-schema*
    (let ((cases (etf-cases *rdt/selected-schema*))
          (table *rdt/schema-table*))

      (when (and (ccl:selected-cells table)
                 cases )
        ;; Look up the position of the selected item within
        ;; its list by reading it out as its index from the
        ;; table, then splice in the cases as successive
        ;; items below it and in front of whatever follows it.
        (let* ((cell (car (ccl:selected-cells table)))
               (index (ccl:cell-to-index table cell))
               (item (elt (ccl:table-sequence table) index))
               )
          
          (unless (eq item *rdt/selected-schema*)
            (break "Assumption violated: the item currently selected ~
                    in the Schema Options table~%~A~
                    ~%is not the object that is supposed to be opened:~
                    ~%~A~%" item *rdt/selected-schema*))
          
          (let ((cons (nthcdr index *rdt/schema-items-in-table*)))

            ;; check that we haven't already opened up this eft
            (unless (consp (second cons))
              
              (rplacd cons
                      (append cases  ;; this does a copy
                              (cdr cons)))
              
              (set-table-sequence 
               table *rdt/schema-items-in-table*))))))))



(defun print-rdt-etf-case (list stream)
  (let* ((rule-proper (second list))
         (lhs (first rule-proper))
         (rhs (second rule-proper)))

    (format stream "        ~A ->"
            (string-downcase (symbol-name lhs)))
    (dolist (symbol rhs)
      (format stream " ~A"
              (string-downcase (symbol-name symbol))))))




;;;----------------------------
;;;----------------------------
;;; the rule populating dialog
;;;----------------------------
;;;----------------------------

(defparameter *button-cluster/rule-populating*
  (next-button-cluster-number))


;;--- syntax widgets

(defparameter *rdtrpw/syntax-label*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(10 9) 
   #@(56 16)
   "Syntax"
   'NIL ))

(defparameter *rdtrpw/lhs-radio-button*
  (MAKE-DIALOG-ITEM
  'RADIO-BUTTON-DIALOG-ITEM
  #@(21 29)
  #@(72 16)
  ""
  'rdt/lhs-radio-button-action
  :radio-button-cluster *button-cluster/rule-populating*
  :RADIO-BUTTON-PUSHED-P T))

(defparameter *rdtrpw/rhs/left/radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(21 69)
   #@(72 16)
   ""
   'rdt/rhs/left-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))

(defparameter *rdtrpw/rhs/right/radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(21 104)
   #@(72 16)
   ""
   'rdt/rhs/right-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))


(defparameter *rdtrpw/lhs-input*
  (MAKE-DIALOG-ITEM
  'EDITABLE-TEXT-DIALOG-ITEM
  #@(46 29)
  #@(186 16)
  "lhs"
  'NIL
  :ALLOW-RETURNS NIL))

(defparameter *rdtrpw/rhs/left/input*
  (MAKE-DIALOG-ITEM
  'EDITABLE-TEXT-DIALOG-ITEM
  #@(46 68)
  #@(186 16)
  "rhs,  left-edge"
  'NIL
  :ALLOW-RETURNS NIL))

(defparameter *rdtrpw/rhs/right/input*
  (MAKE-DIALOG-ITEM
  'EDITABLE-TEXT-DIALOG-ITEM
  #@(46 105)
  #@(186 16)
  "rhs,  right-edge"
  'NIL
  :ALLOW-RETURNS NIL))


(defparameter *rdtrpw/lhs-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(238 20)
  #@(140 40)
  ""
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/rhs/left/description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(238 60)
  #@(140 40)
  ""
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/rhs/right/description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(238 98)
  #@(140 40)
  ""
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))


(defparameter *rdt/lhs-label* nil)
(defparameter *rdt/rhs-left-label* nil)
(defparameter *rdt/rhs-right-label* nil)




;;--- semantics widgets

(defparameter *rdtrpw/semantics-label*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(10 150)
  #@(72 16)
  "Semantics"
  'NIL))

(defparameter *rdtrpw/reference-category-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(106 149)
  #@(98 16)
  "reference category"
  'rdt/get-reference-category
  :VIEW-FONT '("New York" 9 :SRCOR :PLAIN)
  :DEFAULT-BUTTON NIL))

(defparameter *rdtrpw/headline-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(21 176)
   #@(72 16)
   ""
   'rdt/head-line-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))

(defparameter *rdtrpw/comp-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(21 217)
   #@(72 16)
   ""
   'rdt/comp-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))

(defparameter *rdtrpw/result-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(21 267)
   #@(72 16)
   ""
   'rdt/result-radio-button-action
   :radio-button-cluster *button-cluster/rule-populating*
   :RADIO-BUTTON-PUSHED-P nil))

(defparameter *rdtrpw/headline-input*
  (MAKE-DIALOG-ITEM
  'EDITABLE-TEXT-DIALOG-ITEM
  #@(46 176)
  #@(186 16)
  "slot filled by head"
  'NIL
  :ALLOW-RETURNS NIL))

(defparameter *rdtrpw/comp-input*
  (MAKE-DIALOG-ITEM
  'EDITABLE-TEXT-DIALOG-ITEM
  #@(46 217)
  #@(186 16)
  "slot filled by comp/spec"
  'NIL
  :ALLOW-RETURNS NIL))

(defparameter *rdtrpw/result-input*
  (MAKE-DIALOG-ITEM
  'EDITABLE-TEXT-DIALOG-ITEM
  #@(46 267)
  #@(186 16)
  "category of result"
  'NIL
  :ALLOW-RETURNS NIL))

(defparameter *rdtrpw/headline-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(238 166)
  #@(143 50)
  ""
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/comp-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(238 208)
  #@(146 50)
  ""
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))

(defparameter *rdtrpw/result-description*
  (MAKE-DIALOG-ITEM
  'STATIC-TEXT-DIALOG-ITEM
  #@(238 258)
  #@(151 50)
  ""
  'NIL
  :VIEW-FONT '("Times" 9 :SRCOR :PLAIN)))


(defparameter *rdt/result-category* nil)
(defparameter *rdt/head-line-category* nil)
(defparameter *rdt/comp-category* nil)



;;--- control

(defparameter *rdtrpw/ok-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(34 308)
  #@(53 24)
  "OK"
  'rdt/readout-rule-tableau
  :DEFAULT-BUTTON T))

(defparameter *rdtrpw/change-schema-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(132 309)
  #@(132 22)
  "different schema"
  'rdt/return-to-schema-window
  :DEFAULT-BUTTON NIL))

(defparameter *rdtrpw/abort-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(279 308)
  #@(56 22)
  "abort"
  'rdt/abort-rule-population-window
  :DEFAULT-BUTTON NIL))



#|
*rdtrpw/ok-button*
*rdtrpw/change-schema-button*
*rdtrpw/abort-button*

*rdtrpw/syntax-label*

*rdtrpw/lhs-radio-button*
*rdtrpw/lhs-input*
*rdtrpw/lhs-description*

*rdtrpw/rhs/left/radio-button*
*rdtrpw/rhs/left/input*
*rdtrpw/rhs/left/description*

*rdtrpw/rhs/right/radio-button*
*rdtrpw/rhs/right/input*
*rdtrpw/rhs/right/description*

*rdtrpw/semantics-label*
*rdtrpw/reference-category-button*

*rdtrpw/headline-radio-button*
*rdtrpw/headline-input*
*rdtrpw/headline-description*

*rdtrpw/comp-radio-button*
*rdtrpw/comp-input*
*rdtrpw/comp-description*

*rdtrpw/result-radio-button*
*rdtrpw/result-input*
*rdtrpw/result-description*

*rdt/lhs-label*
*rdt/rhs-left-label*
*rdt/rhs-right-label*
*rdt/result-category*
*rdt/head-line-category*
*rdt/comp-category*
|#


;;--- the window

(defparameter *rdt/rule-populating-window* nil)

(defclass rdt/rule-population-window (dialog) ())

(defun launch-rdt-rule-populating-window ()
  (setq *rdt/rule-populating-window*
        (MAKE-INSTANCE 'rdt/rule-population-window
          :WINDOW-TYPE  :DOCUMENT-WITH-GROW
          :window-title  "Define rewrite rule"
          :VIEW-POSITION  #@(254 38)
          :VIEW-SIZE  #@(381 347)
          :VIEW-FONT  '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS
             (list  *rdtrpw/ok-button*
                    *rdtrpw/change-schema-button*
                    *rdtrpw/abort-button*
           
                    *rdtrpw/syntax-label*
                    
                    *rdtrpw/lhs-radio-button*
                    *rdtrpw/lhs-input*
                    *rdtrpw/lhs-description*
                    
                    *rdtrpw/rhs/left/radio-button*
                    *rdtrpw/rhs/left/input*
                    *rdtrpw/rhs/left/description*
                    
                    *rdtrpw/rhs/right/radio-button*
                    *rdtrpw/rhs/right/input*
                    *rdtrpw/rhs/right/description*
                    
                    *rdtrpw/semantics-label*
                    *rdtrpw/reference-category-button*
                    
                    *rdtrpw/headline-radio-button*
                    *rdtrpw/headline-input*
                    *rdtrpw/headline-description*
                    
                    *rdtrpw/comp-radio-button*
                    *rdtrpw/comp-input*
                    *rdtrpw/comp-description*
                    
                    *rdtrpw/result-radio-button*
                    *rdtrpw/result-input*
                    *rdtrpw/result-description*
                    )))
  (initialize-rdt-rule-population-widget-state))


(defmethod Window-close ((w rdt/rule-population-window))
  (close-down-rdt-rule-population-state)
  (call-next-method w))

(defun close-down-rdt-rule-population-state ()
  (setq *rdt/rule-populating-window* nil)
  (shutdown-rdt-rule-population-widget-state))


(defun shutdown-rdt-rule-population-widget-state ()
  (release-edges-table-from-rdt-input-fields)
  (release-inspector-from-rdt-input-fields))


(defun initialize-rdt-rule-population-widget-state ()
  (wire-edges-table-to-rdt-input-fields)
  (wire-inspector-to-rdt-input-fields)
  (ccl:radio-button-push *rdtrpw/rhs/right/radio-button*)
  (setq *rdt/input-field-for-selected-edge*
        *rdtrpw/rhs/right/input*)
  (ccl:set-dialog-item-text *rdtrpw/lhs-input*             "lhs")
  (ccl:set-dialog-item-text *rdtrpw/rhs/left/input*        "rhs,  left-edge")
  (ccl:set-dialog-item-text *rdtrpw/rhs/right/input*       "rhs,  right-edge")
  (ccl:set-dialog-item-text *rdtrpw/headline-input*        "slot filled by head")
  (ccl:set-dialog-item-text *rdtrpw/comp-input*            "slot filled by comp/spec")
  (ccl:set-dialog-item-text *rdtrpw/result-input*          "category of result")
  (ccl:set-dialog-item-text *rdtrpw/lhs-description*       "")
  (ccl:set-dialog-item-text *rdtrpw/rhs/left/description*  "")
  (ccl:set-dialog-item-text *rdtrpw/rhs/right/description* "")
  (ccl:set-dialog-item-text *rdtrpw/headline-description*  "")
  (ccl:set-dialog-item-text *rdtrpw/comp-description*      "")
  (ccl:set-dialog-item-text *rdtrpw/result-description*    "")
  (ccl:dialog-item-disable *rdtrpw/ok-button*)
  (ccl:dialog-item-enable *rdtrpw/change-schema-button*)
  (ccl:dialog-item-enable *rdtrpw/abort-button*)
  (setq *rdt/lhs-label* nil)
  (setq *rdt/rhs-left-label* nil)
  (setq *rdt/rhs-right-label* nil)
  (setq *rdt/result-category* nil)
  (setq *rdt/head-line-category* nil)
  (setq *rdt/comp-category* nil)
  (setq *rdt/mapping* nil))


(defun set-rdt-widget-positions ()
  (ccl:set-view-position *rdtrpw/ok-button* #@(34 308))
  (ccl:set-view-position *rdtrpw/change-schema-button* #@(132 309))
  (ccl:set-view-position *rdtrpw/abort-button* #@(279 308))

  (ccl:set-view-position *rdtrpw/syntax-label* #@(10 9))

  (ccl:set-view-position *rdtrpw/lhs-radio-button* #@(21 29))
  (ccl:set-view-position *rdtrpw/lhs-input* #@(46 29))
  (ccl:set-view-position *rdtrpw/lhs-description* #@(238 20))

  (ccl:set-view-position *rdtrpw/rhs/left/radio-button* #@(21 69))
  (ccl:set-view-position *rdtrpw/rhs/left/input* #@(46 68))
  (ccl:set-view-position *rdtrpw/rhs/left/description* #@(238 60))

  (ccl:set-view-position *rdtrpw/rhs/right/radio-button* #@(21 104))
  (ccl:set-view-position *rdtrpw/rhs/right/input* #@(46 105))
  (ccl:set-view-position *rdtrpw/rhs/right/description* #@(238 98))

  (ccl:set-view-position *rdtrpw/semantics-label* #@(10 150))
  (ccl:set-view-position *rdtrpw/reference-category-button* #@(106 149))

  (ccl:set-view-position *rdtrpw/headline-radio-button* #@(21 176))
  (ccl:set-view-position *rdtrpw/headline-input* #@(46 176))
  (ccl:set-view-position *rdtrpw/headline-description* #@(238 166))

  (ccl:set-view-position *rdtrpw/comp-radio-button* #@(21 217))
  (ccl:set-view-position *rdtrpw/comp-input* #@(46 217))
  (ccl:set-view-position *rdtrpw/comp-description* #@(238 208))

  (ccl:set-view-position *rdtrpw/result-radio-button* #@(21 267))
  (ccl:set-view-position *rdtrpw/result-input* #@(46 267))
  (ccl:set-view-position *rdtrpw/result-description* #@(238 258)))



;;---- actions

(defun rdt/Readout-rule-tableau (ok-button)
  (ccl:dialog-item-disable ok-button)
  (readout-tableau/write-cfr/save-result))

(defun rdt/Return-to-schema-window (button)
  (declare (ignore button))
  (ccl:window-close *rdt/rule-populating-window*)
  (ccl:set-window-layer *rdt/schema-selection-window* 0)
  (deselect-selected-edge/rdt-schema-selection-window))

(defun rdt/Abort-rule-population-window (button)
  (declare (ignore button))
  (ccl:window-close *rdt/rule-populating-window*)
  (ccl:window-close *rdt/schema-selection-window*))



;;;-----------------------------------------
;;; populating the rule tableau from schema
;;;-----------------------------------------

;;--- entry point from the screen

(defun rdt/pass-selected-schema-to-rule-tableau (button)
  (ccl:dialog-item-disable button)
  (launch-rdt-rule-populating-window)
  (populate-rule-tableau-from-selected-schema))


;;--- subroutines

(defun rdtsp (symbol)
  ;; "rdt/symbol-print"
  (string-downcase (symbol-name symbol)))

(defun rdt/pms (substitution-variable collection-global)
  ;; "Push onto the Mapping Schema"
  (push (cons substitution-variable collection-global)
        *rdt/mapping-schema*))


;;--- driver

(defun populate-rule-tableau-from-selected-schema ()
  (ccl:dialog-item-disable *rdtrpw/ok-button*)
  (ccl:dialog-item-disable *rdt/schema-selection-ok-button*)
  (let ((body (second *rdt/selected-schema-case*))
        (descriptors (third *rdt/selected-schema-case*)))
    (unless body
      (error "No schema has been selected"))

    ;; lhs
    (ccl:set-dialog-item-text
     *rdtrpw/lhs-input* (rdtsp (first body)))
    (rdt/pms (first body) *rdt/lhs-label*)

    ;; left-edge
    (ccl:set-dialog-item-text
     *rdtrpw/rhs/left/input* (rdtsp (first (second body))))
    (rdt/pms (first (second body)) *rdt/rhs-left-label*)

    ;; right-edge
    (when (second (second body))
      (ccl:set-dialog-item-text
       *rdtrpw/rhs/right/input* (rdtsp (second (second body))))
      (rdt/pms (second (second body)) *rdt/rhs-right-label*))

    (when descriptors
      (let ((head (cadr (member :headline descriptors))))
        (ecase head
          (right-referent
           (ccl:set-dialog-item-text *rdtrpw/rhs/left/description*
                                     "complement / specifier")
           (ccl:set-dialog-item-text *rdtrpw/rhs/right/description*
                                     "head"))
          (left-referent
           (ccl:set-dialog-item-text *rdtrpw/rhs/left/description*
                                     "head")
           (ccl:set-dialog-item-text *rdtrpw/rhs/right/description*
                                     "complement / specifier")))))

    ;; semantics
    (decode-referent-into-rule-tableau
     (cddr body) descriptors)

    ;; control specifier
    (setq *rdt/schema-type*
          (cadr (member :pattern descriptors)))))




(defun decode-referent-into-rule-tableau (ref-exp
                                          descriptors)
  (ecase (car ref-exp)
    (:instantiate-individual
     (drirt/instantiate-individual (cdr ref-exp) descriptors))))


(defun drirt/Instantiate-individual (exp descriptors)
  ;; e.g. :instantiate-individual result-type
  ;;          :with (classifier left-edge
  ;;                 base right-edge)
  (let ((result-parameter (first exp))
        (bindings (when (eq (second exp) :binds)  ;;:with)
                    (third exp))))
    (unless bindings
      (break "expected 'exp' to include bindings after 'with'"))

    (ccl:set-dialog-item-text
     *rdtrpw/result-input* (rdtsp result-parameter))
    (rdt/pms *rdt/result-category* result-parameter)
    (push `(,result-parameter . result-parameter) *rdt/mapping*)

    (drirt/decode-bindings-into-rule-tableau bindings descriptors)))


(defun drirt/Decode-bindings-into-rule-tableau (pairs descriptors)
  (let ((head-edge (cadr (member :headline descriptors))))
    (unless head-edge
      (break "Extend for case with no specified head edge"))
    (do* ((parameter (car pairs) (car remainder))
          (edge (cadr pairs) (cadr remainder))
          (remainder (cddr pairs) (cddr remainder))
          (count 1 (incf count)))
         ((or (null parameter)
              (> count 2))
          (when (and (> count 2) (not (null parameter)))
            (break "More than two slots specified -- the tableau ~
                    needs extension")))
      
      (if (eq edge head-edge)
        (then
          (ccl:set-dialog-item-text
           *rdtrpw/headline-input* (rdtsp parameter))
          (rdt/pms parameter *rdt/head-line-category*)
          (push `(,parameter . head-line-parameter) *rdt/mapping*)
          (ccl:set-dialog-item-text
           *rdtrpw/headline-description* (rdtsp edge)))
        (else
          (ccl:set-dialog-item-text
           *rdtrpw/comp-input* (rdtsp parameter))
          (rdt/pms parameter *rdt/comp-category*)
          (push `(,parameter . comp-parameter) *rdt/mapping*)
          (ccl:set-dialog-item-text
           *rdtrpw/comp-description* (rdtsp edge)))))))
  
    


;;;-----------------------
;;; getting values filled 
;;;-----------------------

(defun wire-edges-table-to-rdt-input-fields ()
  (setq *additional-edge-selection-action*
        'Fill-rdt-field-with-selected-edge))

(defun release-edges-table-from-rdt-input-fields ()
  (setq *additional-edge-selection-action* nil))

(defun fill-rdt-field-with-selected-edge (edge)
  (ccl:set-window-layer *rdt/rule-populating-window* 0)
  (let* ((label (edge-category edge))
         (string
          (etypecase label
            (word
             (format nil "\"~A\"" (word-pname label)))
            ((or referential-category category mixin-category)
             (string-downcase (symbol-name (cat-symbol label))))
            (polyword
             (format nil "\"~A\"" (pw-pname label))))))
    (fill-rdt-field string label)))



(defun wire-inspector-to-rdt-input-fields ()
  (setq *additional-inspector-selection-action*
        'Fill-rdt-field-with-selection-from-inspector))

(defun release-inspector-from-rdt-input-fields ()
  (setq *additional-inspector-selection-action* nil))

(defun fill-rdt-field-with-selection-from-inspector (item)
  (ccl:set-window-layer *rdt/rule-populating-window* 0)
  (etypecase item
    (lambda-variable
     (fill-rdt-field (string-downcase (var-name item))
                     item))
    (referential-category
     (fill-rdt-field (string-downcase (cat-symbol item))
                     item))))



(defun fill-rdt-field (string label)
  (cond
   ((eq *rdt/input-field-for-selected-edge* *rdtrpw/lhs-input*)
    (ccl:set-dialog-item-text *rdtrpw/lhs-input* string)
    (setq *rdt/lhs-label* label))
   ((eq *rdt/input-field-for-selected-edge* *rdtrpw/rhs/left/input*)
    (ccl:set-dialog-item-text *rdtrpw/rhs/left/input* string)
    (setq *rdt/rhs-left-label* label))
   ((eq *rdt/input-field-for-selected-edge* *rdtrpw/rhs/right/input*)
    (ccl:set-dialog-item-text *rdtrpw/rhs/right/input* string)
    (setq *rdt/rhs-right-label* label))
   ((eq *rdt/input-field-for-selected-edge* *rdtrpw/headline-input*)
    (ccl:set-dialog-item-text *rdtrpw/headline-input* string)
    (setq *rdt/head-line-category* label))
   ((eq *rdt/input-field-for-selected-edge* *rdtrpw/comp-input*)
    (ccl:set-dialog-item-text *rdtrpw/comp-input* string)
    (setq *rdt/comp-category* label))
   ((eq *rdt/input-field-for-selected-edge* *rdtrpw/result-input*)
    (ccl:set-dialog-item-text *rdtrpw/result-input* string)
    (setq *rdt/result-category* label)))
  
  (is-rdt-tableau-completely-filled-in?))



(defun rdt/lhs-radio-button-action (lhs-button)
  (if (ccl:radio-button-pushed-p lhs-button)
    (then
      (setq *rdt/input-field-for-selected-edge*
            *rdtrpw/lhs-input*)
      (format t "~&lhs button pushed~%"))
    (format t "~&lhs button was un-pushed~%")))

(defun rdt/rhs/left-radio-button-action (rhs-left/button)
  (if (ccl:radio-button-pushed-p rhs-left/button)
    (then
      (setq *rdt/input-field-for-selected-edge*
            *rdtrpw/rhs/left/input*)
      (format t "~&rhs-left button pushed~%"))
    (format t "~&rhs-left button was un-pushed~%")))

(defun rdt/rhs/right-radio-button-action (rhs-right/button)
  (if (ccl:radio-button-pushed-p rhs-right/button)
    (then
      (setq *rdt/input-field-for-selected-edge*
            *rdtrpw/rhs/right/input*)
      (format t "~&rhs-right button pushed~%"))
    (format t "~&rhs-right button was un-pushed~%")))

(defun rdt/head-line-radio-button-action (head-line-button)
  (if (ccl:radio-button-pushed-p head-line-button)
    (then
      (setq *rdt/input-field-for-selected-edge*
            *rdtrpw/headline-input*)
      (format t "~&head-line button pushed~%"))
    (format t "~&head-line button was un-pushed~%")))

(defun rdt/comp-radio-button-action (comp-button)
  (if (ccl:radio-button-pushed-p comp-button)
    (then
      (setq *rdt/input-field-for-selected-edge*
            *rdtrpw/comp-input*)
      (format t "~&comp button pushed~%"))
    (format t "~&comp button was un-pushed~%")))

(defun rdt/result-radio-button-action (result-button)
  (if (ccl:radio-button-pushed-p result-button)
    (then
      (setq *rdt/input-field-for-selected-edge*
            *rdtrpw/result-input*)
      (format t "~&result button pushed~%"))
    (format t "~&result button was un-pushed~%")))



(defun is-rdt-tableau-completely-filled-in? ()
  (when (ecase *rdt/schema-type*
          (two/new/two
           (and *rdt/lhs-label*
                *rdt/rhs-left-label*
                *rdt/rhs-right-label*
                *rdt/result-category*
                *rdt/head-line-category*
                *rdt/comp-category*)))

    (ccl:dialog-item-enable *rdtrpw/ok-button*)))



;;;----------------------------------------
;;; get the reference category established
;;;----------------------------------------

(defun rdt/get-reference-category (reference-category-button)
  (ccl:dialog-item-disable reference-category-button)
  (let ((category (get-category-from-user)))
    (when category ;; this could have been aborted
      (setq *rdt/reference-category* category)
      (display-in-inspector category)))
  (ccl:dialog-item-enable reference-category-button))


(defun get-category-from-user ( &optional retry/last-string )
  (let ((category-string
         (catch-cancel 
           (if retry/last-string
             (get-string-from-user
              "This is not the name of a category, please change it"
              :size #@(335 70)
              :position #@(100 100)
              :initial-string retry/last-string)
             (get-string-from-user "Enter the name of a category"
                                   :size #@(335 60)
                                   :position #@(100 100))))))

    (if (eq category-string :cancel)
      ;; this is what you get when the 'catch-cancel' intercepts
      ;; the 'cancel' action from the dialog
      nil
      (let ((category (category-named
                       (intern category-string
                               *category-package*))))
        (if category
          category
          (get-category-from-user category-string))))))





;;;-------------
;;; final phase
;;;-------------

(defun readout-tableau/write-cfr/save-result ()
  (let ((mapping (rdt/construct-mapping-from-tableau)))
    (write-cfr-from-rdt-tableau-values mapping)
    (rdt/save-new-rule mapping)))


(defun rdt/Construct-mapping-from-tableau ()
  ;; The mapping is an alist of (schema-symbol . label)
  ;; Up to this point, the global *rdt/mapping* has gotten a record
  ;; of the names of the parameters that are used in the choosen
  ;; rule schema and have now gotten concrete values in the rule
  ;; tableau.  First we look up those values and substitute for
  ;; them in the global, and then we extend the mapping with the
  ;; populated syntactic information.
  (let ( rebuilt-mapping  parameter value )
    (dolist (pair *rdt/mapping*)
      (setq parameter (car pair))
      (setq value
            (ecase (cdr pair)
              (head-line-parameter *rdt/head-line-category*)
              (comp-parameter *rdt/comp-category*)
              (result-parameter *rdt/result-category*)))
      (push `(,parameter . ,value) rebuilt-mapping))

    (let* ((rule (second *rdt/selected-schema-case*))
           (lhs (first rule)))
      (ecase *rdt/schema-type*
        (two/new/two
         (let ((rhs-left (first (second rule)))
               (rhs-right (second (second rule))))
           (setq rebuilt-mapping
                 (append
                  `((,lhs . ,*rdt/lhs-label*)
                    (,rhs-left . ,*rdt/rhs-left-label*)
                    (,rhs-right . ,*rdt/rhs-right-label*))
                  rebuilt-mapping)))))

      (setq *rdt/mapping* rebuilt-mapping))))




;;--- CFR

(defun write-cfr-from-rdt-tableau-values (mapping)
  (let ((lhs *rdt/lhs-label*)
        (left-label *rdt/rhs-left-label*)
        (right-label *rdt/rhs-right-label*)
        (form (rtd/compute-form-from-selected-schema mapping))
        (referent (rtd/construct-referent-from-tableau mapping))
        (relation (rtd/lookup-relation-from-selected-schema)))

    (let ((cfr
           (if (or (when (referential-category-p left-label)
                     (member :form-category (unit-plist left-label)))
                   (when (referential-category-p right-label)
                     (member :form-category (unit-plist right-label))))
             (def-form-rule/resolved (list left-label right-label)
               form referent lhs)
             (define-cfr lhs (list left-label right-label)
               :form form :referent referent))))

      (setf (cfr-plist cfr)
          `(:relation ,relation ,@(cfr-plist cfr)))

      cfr )))


(defun rtd/Lookup-relation-from-selected-schema ()
  (first *rdt/selected-schema-case*))

(defun rtd/compute-form-from-selected-schema (mapping)
  (let* ((lhs-schema-label
          (first (second *rdt/selected-schema-case*)))
         (form (category-named
                (strip-specializing-slash lhs-schema-label
                                          mapping))))
    (unless form
      (break "Why isn't a form label constructable from the schema?"))
    form ))

(defun rtd/Construct-referent-from-tableau (mapping)
  (let ((ref-schema
         (massage-referent-schema
          (cddr (second *rdt/selected-schema-case*)))))
    (let* (
         #|(call-form
            `(construct-referent
              ',mapping
              nil  ;; 'category-of-locals'
              ,@(quote-non-keyword-items-in-list
                 ref-schema)))
           (ref-exp (eval call-form)) |#

           (ref-exp
            (apply #'construct-referent
                   mapping
                   nil  ;; 'category-of-locals'
                   ref-schema))
           )

      ;(break "check ref-exp")
      ref-exp)))


(defun quote-non-keyword-items-in-list (list)
  (let ( new-list )
    (dolist (item list)
      (if (keywordp item)
        (push item new-list)
        (push `',item new-list)))
    (nreverse new-list)))



;;;--------------------------------
;;; Writing the rule out to a file
;;;--------------------------------

(defun rdt/Save-new-rule (mapping)
  ;; Construct the expression and get it confirmed by the user,
  ;; then get them to confirm the dossier file and write the
  ;; expression there.


  (let ((outfile-name
         (concatenate 'string
                      cl-user::location-of-sparser-directory
                      *rdt/dossier-file*)))
    ))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "object dialogs"
;;;    Module:  "interface;grammar:"
;;;   version:  0.2 October 1995

;; initiated 3/13/92 v2.2, extended 3/26
;; 0.1 (4/29/94 v2.3) redesigned from scratch to fit MCL 2.0 -- did words. 5/2 added
;;      facility for categories.  12/1 c&s'd them for cfrs. 
;;     (12/30) added machinery to launch Words from Grammar menu
;;     (6/20/95) finishing psrs and getting them on the menu
;; 0.2 (8/8) adjusting the sizes to fit the PowerBook. fleshed out word widgets
;;     (10/20) added a funcallable parameter to Act-on-category-in-selection-tableau
;;      so it can be wired by other routines. 

(in-package :sparser)


;;;-------
;;; words
;;;-------

;;---- globals

(defvar *word* nil
  "Used by analogy to * as a hook to hold words selected off the
   words table")

(defvar *word-selection-dialog* nil
  "Points to the window created by Bring-up-word-selection-window")

(defvar *words-table* nil
  "Points to the sequence dialog.")


;;---- the table

(defclass words-table (sequence-dialog-item) ())

(defun setup-words-table (position size dimensions)
  (setq *words-table*
        (make-instance 'words-table
          :view-container *word-selection-dialog*
          :view-position  position  ;;#@(5 5)
          :view-size  size  ;;#@(150 185)
          :visible-dimensions  dimensions ;; #@(1 30)
          :view-font '("Geneva" 9 :plain)
          :table-sequence *words-defined*
          :dialog-item-action 'act-on-word-in-selection-tableau
          :selection-type :single
          :table-print-function 'print-for-menu/words
          :table-vscrollp t
          :table-hscrollp nil)))

;(setup-words-table)
;(launch-the-word-selection-tableau)


;;--- the other widgets

(defparameter *word/word-named-text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(9 7)        ;; (13 12)
   #@(247 13)     ;; (247 18)
   ""
   'NIL
   :VIEW-FONT
   '("Times" 12 :SRCOR :PLAIN)))


(defparameter *word/inspect-in-lisp-inspector-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(280 6)
  #@(108 16)  ;;(98 23)
  "Lisp inspector"
  'lisp-inspect-current-word
  :VIEW-FONT '("New York" 10 :SRCOR :PLAIN)
  :DEFAULT-BUTTON NIL))

(defun position-the-word-selection-dialog-widgets (monitor-size)
  (ecase monitor-size
    (:20-inch
     (ccl:set-view-position *word/word-named-text* #@(9 7))
     (ccl:set-view-position *word/inspect-in-lisp-inspector-button* #@(8 24)))
    (:14-inch
     (ccl:set-view-position *word/word-named-text* #@(9 7))
     (ccl:set-view-position *word/inspect-in-lisp-inspector-button* #@(8 24)))
    (:8-inch
     (ccl:set-view-position *word/word-named-text* #@(9 7))
     (ccl:set-view-position *word/inspect-in-lisp-inspector-button* #@(8 24)))))


;;---- the window

(defclass word-selection-tableau (dialog) ())

(defun launch-the-Word-selection-tableau (&optional
                                          (monitor-size *monitor-size*))
  (unless *words-table*
    (ecase monitor-size
      (:20-inch
       (setup-words-table #@(5 49)     ;; position
                          #@(208 292) ;; size
                          #@(1 24)))  ;; dimensions

      (:14-inch
       (setup-words-table #@(5 49) #@(208 292) #@(1 24)))

      (:8-inch
       (setup-words-table #@(5 49) #@(208 292) #@(1 24)))))

  (position-the-word-selection-dialog-widgets monitor-size)

  (let (position size)
    (ecase monitor-size
      (:20-inch
       (setq position #@(50 50)
             size #@(218 347)))
      (:14-inch
       (setq position #@(50 50)
             size #@(218 347)))
      (:8-inch
       (setq position #@(41 46)
             size #@(218 347))))

    (setq *word-selection-dialog*
          (make-instance 'word-selection-tableau
            :window-type :document-with-grow
            :window-title "Words"
            :view-position position ;;#@(50 50)
            :view-size size  ;;#@(157 371)  ;; horizontal/vertical
            :view-font '("Chicago" 10 :srcor :plain)
            :view-subviews (list *words-table*
                                 *word/word-named-text*
                                 *word/inspect-in-lisp-inspector-button*)))))


(defmethod window-close ((w word-selection-tableau))
  (setq *word-selection-dialog* nil)
  ;; ///wasteful since it trashes the window object, but saves
  ;; time in getting this up.
  (call-next-method w))


;;--- actions


(defun act-on-word-in-selection-tableau (word-table)
  ;; run when a cell is selected from the rule table.
  (when (selected-cells word-table)
    (let* ((index (cell-to-index
                   word-table
                   (first (ccl:selected-cells word-table))))
           (word (elt (table-sequence word-table) index)))

      (setq *word* word)
      (ccl:set-dialog-item-text
       *word/word-named-text*
       (format nil "*word* set to \"~A\""
               (word-pname word)))

      (when (ccl:double-click-p)
        (cfr-tableau-double-click-action word)))))


(defun word-tableau-double-click-action (word)
  (display-in-inspector word))


(defun lisp-inspect-current-word (button)
  (declare (ignore button))
  ;; Action taken when the "Lisp inspector" button is pushed
  (when *word*
    (inspect *word*)))



;;--- driving it from the grammar menu
;; The item is put on the menu in Install-grammar-modules-menu

(defparameter *words-menu-item*
  (make-instance 'menu-item
    :menu-item-title  "words"
    :menu-item-action  'launch-the-Word-selection-tableau
    :disabled  *word-selection-dialog*
    :update-function 'check-if-word-table-is-up ))

(defun check-if-word-table-is-up (words-menu-item)
  (if *word-selection-dialog*
    (ccl:menu-item-disable words-menu-item)
    (ccl:menu-item-enable words-menu-item)))





;;;------------
;;; categories
;;;------------

;(launch-the-category-selection-tableau)


;;--- globals

(defvar *category* nil
  "Used by analogy to * as a hook to hold categories selected off the
   category table")

(defvar *category-selection-dialog* nil
  "Points to the window created by Bring-up-category-selection-window")
  
(defvar *category-table* nil
  "Points to the sequence dialog.")


;;--- the item-list for the table

(defparameter *sorted-categories-for-selection-tableau* nil)

(defun construct-category-items-for-selection-tableau ()
  (setq *sorted-categories-for-selection-tableau*
        (append (list "---- Referential categories ----")
                (walk/accumulate-category-lattice)

                (list ""
                      "--- Syntactic form categories --")
                *form-categories*

                (list ""
                      "------- Mixin categories -------")
                *mixin-categories*

                (list ""
                      "--------- Non-terminals --------")
                *grammatical-categories*

                (list ""
                      "------ 'dotted' categories -----")
                *dotted-categories* )))


;;--- table

(defclass category-table (sequence-dialog-item) ())

(defun setup-category-table (position size dimensions)
  (unless *sorted-categories-for-selection-tableau*
    (construct-category-items-for-selection-tableau))
  (setq *category-table*
        (make-instance 'category-table
          :view-container *category-selection-dialog*
          :view-position  position ;;#@(6 6)
          :view-size  size ;;#@(221 360)
          :visible-dimensions  dimensions ;;#@(1 30)   ;; :cell-size #@(205 12)
          :view-font '("Geneva" 9 :SRCOR :plain)
          :table-sequence *sorted-categories-for-selection-tableau*
          :dialog-item-action 'act-on-category-in-selection-tableau
          :selection-type :single
          :table-print-function 'cst/item-printer
          :table-vscrollp t
          :table-hscrollp nil)))


(defun cst/Item-printer (item stream)
  ;; called by table-handler to determine what to display for the
  ;; table items
  (typecase item
    (string
     (write-string item stream))

    (cons
     (let ((referential-category (car item))
           (depth (cdr item)))
       (dotimes (i depth)
         (write-string "    " stream))
       (print-for-menu/categories referential-category stream)))

    (referential-category
     (dotimes (i (lattice-depth item))
       (write-string "   " stream))
     (print-for-menu/categories item stream))

    ((or mixin-category category)
     (print-for-menu/categories item stream))

    (otherwise
     (format t "~&~%Unanticipated object-type in the category table:~
                ~%   ~A~%" (type-of item))
     (write-string "" stream))))




;;--- widgets

(defparameter *cst/set-to-phrase*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(6 375)
   #@(95 14)
   ""     ;; *category* set to 
   'NIL
   :VIEW-FONT '("Times" 12 :SRCOR :PLAIN)))

(defparameter *cst/category-name-text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(6 390)
   #@(220 31)
   ""     ;; <name of category>
   'NIL
   :VIEW-FONT '("Times" 10 :SRCOR :PLAIN)))

(defparameter *cst/lisp-inspect-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(10 422)
   #@(108 16)
   "Lisp inspector"
   'cst/Lisp-inspect-current-category
   :VIEW-FONT '("New York" 10 :SRCOR :PLAIN)
   :DEFAULT-BUTTON NIL))


(defun place-category-selection-tableau-widgets (monitor-size)
  (ecase monitor-size
    (:20-inch
     (ccl:set-view-position *cst/set-to-phrase* #@(6 375))
     (ccl:set-view-position *cst/category-name-text* #@(6 390))
     (ccl:set-view-position *cst/lisp-inspect-button* #@(10 422)))
    (:14-inch
     (ccl:set-view-position *cst/set-to-phrase* #@(6 375))
     (ccl:set-view-position *cst/category-name-text* #@(6 390))
     (ccl:set-view-position *cst/lisp-inspect-button* #@(10 422)))
    (:8-inch
     (ccl:set-view-position *cst/set-to-phrase* #@(6 279))
     (ccl:set-view-position *cst/category-name-text* #@(5 294))
     (ccl:set-view-position *cst/lisp-inspect-button* #@(118 330)))))





;;--- window

(defclass category-selection-tableau (dialog) ())

(defun launch-the-Category-selection-tableau (&optional
                                              (monitor-size *monitor-size*))
  (unless *category-table*
    (ecase monitor-size
      (:20-inch
       (setup-category-table #@(6 6)     ;; position
                             #@(221 360) ;; size
                             #@(1 30)))  ;; dimensions

      (:14-inch
       (setup-category-table #@(6 6) #@(221 360) #@(1 30)))

      (:8-inch
       (setup-category-table #@(6 6) #@(221 266) #@(1 22)))))

  (let (position size)
    (ecase monitor-size
      (:20-inch
       (setq position #@(120 50)
             size #@(231 445)))
      (:14-inch
       (setq position #@(120 50)
             size #@(231 445)))
      (:8-inch
       (setq position #@(122 42)
             size #@(232 354))))

    (place-category-selection-tableau-widgets monitor-size)

    (setq *category-selection-dialog*
          (make-instance 'category-selection-tableau
            :window-type :document   ;;-with-grow
            :window-title "Categories"
            :view-position  position ;; #@(120 50)
            :view-size  size  ;; #@(231 445)  ;; horizontal/vertical
            :view-font '("Chicago" 10 :srcor :plain)
            :view-subviews (list *category-table*
                                 *cst/set-to-phrase*
                                 *cst/category-name-text*
                                 *cst/lisp-inspect-button*)))))



(defmethod window-close ((w category-selection-tableau))
  (setq *category-selection-dialog* nil
        *category-table* nil)
  (ccl:set-dialog-item-text *cst/set-to-phrase* "")
  (ccl:set-dialog-item-text *cst/category-name-text* "")
  (ccl:dialog-item-enable *cst/lisp-inspect-button*)
  (call-next-method w))


;;--- actions

(defparameter *additional-category-tableau-selection-action* nil
  "Used by a routine like rdt/get-reference-category when it
   wants to use the category data for its own purposes.")


(defun act-on-category-in-selection-tableau (category-table)
  (when (selected-cells category-table)
    (let* ((index (cell-to-index
                   category-table
                   (first (ccl:selected-cells category-table))))
           (category (elt (table-sequence category-table) index)))

      (setq *category* category)
      (ccl:set-dialog-item-text *cst/set-to-phrase*
                                "*category* is set to")
      (ccl:set-dialog-item-text
       *cst/category-name-text*
       (if (consp category)  ;; referential categories are (cat . count)
         (format nil "~A" (car category))
         (format nil "~A" category)))

      (when *additional-category-tableau-selection-action*
        (funcall *additional-category-tableau-selection-action*
                 (if (consp category)
                   (car category)
                   category)))

      (when (double-click-p)
        (if (consp category)
          (display-in-inspector (car category))
          (display-in-inspector category))))))


(defun cst/Lisp-inspect-current-category (button)
  (declare (ignore button))
  (if (consp *category*)
    (inspect (car *category*))
    (inspect *category*)))



;;--- driving it from the grammar menu
;; The item is put on the menu in Install-grammar-modules-menu

(defparameter *categories-menu-item*
  (make-instance 'menu-item
    :menu-item-title  "categories"
    :menu-item-action  'launch-the-category-selection-tableau
    :disabled *category-selection-dialog*
    :update-function 'check-if-category-table-is-up ))

(defun check-if-category-table-is-up (category-menu-item)
  (if *category-selection-dialog*
    (ccl:menu-item-disable category-menu-item)
    (ccl:menu-item-enable category-menu-item)))





;;;--------------------
;;; context free rules
;;;--------------------

;(setup-cfr-table)
;(launch-the-cfr-selection-tableau)


;;--- globals

(defvar *psr* nil
  "Used by analogy to * as a hook to hold cfrs selected off the
   cfr table")

(defvar *cfr-selection-dialog* nil
  "Points to the window created by Bring-up-cfr-selection-window")
  
(defvar *cfr-table* nil
  "Points to the sequence dialog.")



;;--- the table

(defclass cfr-table (sequence-dialog-item) ())

(defun setup-cfr-table (position size dimensions )
  (setq *cfr-table*
        (make-instance 'cfr-table
          :view-container *cfr-selection-dialog*
          :view-position  position ;; #@(4 43)  ;; down and right from upper left corner
          :view-size  size  ;;#@(390 375)
          :visible-dimensions   dimensions  ;;#@(1 30)
          :view-font '("Geneva" 9 :SRCOR :plain)
          :table-sequence *context-free-rules-defined*
          :dialog-item-action 'act-on-cfr-in-selection-tableau
          :selection-type :single
          :table-print-function 'print-for-menu/cfr
          :table-vscrollp t
          :table-hscrollp nil)))



;;--- other widgets

(defparameter *cfr/rule-name-text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(9 7)        ;; (13 12)
   #@(247 13)     ;; (247 18)
   ""
   'NIL
   :VIEW-FONT
   '("Times" 12 :SRCOR :PLAIN)))


(defparameter *cfr/inspect-in-lisp-inspector-button*
  (MAKE-DIALOG-ITEM
  'BUTTON-DIALOG-ITEM
  #@(280 6)
  #@(108 16)  ;;(98 23)
  "Lisp inspector"
  'lisp-inspect-current-cfr
  :VIEW-FONT '("New York" 10 :SRCOR :PLAIN)
  :DEFAULT-BUTTON NIL))



;;--- the window

(defclass cfr-selection-tableau (dialog) ())

(defun launch-the-CFR-selection-tableau (&optional
                                          (monitor-size *monitor-size*))
  (unless *cfr-table*
    (ecase monitor-size
      (:20-inch  ;; copies 14 inch
       (setup-cfr-table #@(4 43)    ;; position
                        #@(390 375) ;; size
                        #@(1 30)))  ;; dimensions

      (:14-inch  ;; not sized, just what happened to be used first
       (setup-cfr-table #@(4 43) #@(390 375) #@(1 30)))

      (:8-inch   ;; sized accurately
       (setup-cfr-table  #@(4 27) #@(383 315) #@(1 26)))))

  (let ( position size )
    (ecase monitor-size
      (:20-inch
       (setq position #@(120 50)
             size #@(400 410)))
      (:14-inch
       (setq position #@(120 50)
             size #@(400 410)))
      (:8-inch
       (setq position #@(153 47)
             size #@(390 343))))

    (setq *cfr-selection-dialog*
          (make-instance 'cfr-selection-tableau
            :window-type :document  ;;-with-grow
            :window-title "Phrase Structure Rules"
            :view-position  position
            :view-size  size  ;; horizontal/vertical
            :view-font '("Chicago" 10 :srcor :plain)
            :view-subviews
              (list *cfr-table*
                    *cfr/rule-name-text*
                    *cfr/inspect-in-lisp-inspector-button*)))))


(defmethod window-close ((w cfr-selection-tableau))
  (setq *cfr-selection-dialog* nil
        *cfr-table* nil)
  (ccl:set-dialog-item-text *cfr/rule-name-text* "")
  (call-next-method w))



;;--- Actions

(defun act-on-cfr-in-selection-tableau (cfr-table)
  ;; run when a cell is selected from the rule table.
  (when (selected-cells cfr-table)
    (let* ((index (cell-to-index
                   cfr-table
                   (first (ccl:selected-cells cfr-table))))
           (cfr (elt (table-sequence cfr-table) index)))

      (setq *psr* cfr)
      (ccl:set-dialog-item-text
       *cfr/rule-name-text*
       (format nil "*psr* set to ~A"
               (string-downcase (symbol-name (cfr-symbol cfr)))))

      (when (ccl:double-click-p)
        (cfr-tableau-double-click-action cfr)))))


(defun cfr-tableau-double-click-action (cfr)
  (display-in-inspector cfr))



(defun lisp-inspect-current-cfr (button)
  (declare (ignore button))
  ;; Action taken when the "Lisp inspector" button is pushed
  (when *psr*
    (inspect *psr*)))


;;--- driving it from the grammar menu
;; The item is put on the menu in Install-grammar-modules-menu

(defparameter *cfrs-menu-item*
  (make-instance 'menu-item
    :menu-item-title  "phrase structure rules"
    :menu-item-action  'launch-the-cfr-selection-tableau
    :disabled *cfr-selection-dialog*
    :update-function 'check-if-cfr-table-is-up ))

(defun check-if-cfr-table-is-up (cfr-menu-item)
  (if *cfr-selection-dialog*
    (ccl:menu-item-disable cfr-menu-item)
    (ccl:menu-item-enable cfr-menu-item)))


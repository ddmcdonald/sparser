;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1998  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "inspector"
;;;    Module:  "interface;workbench:"
;;;   version:  0.1 July 1998

;; initiated 7/1/94 v2.3.  (7/28) tweeked size and printing details
;; ... 8/2 continued with details - more cases.  Tweeking cases ...8/15
;; 9/14 put in buttons and sizing
;; 0.1 (1/20/95) extended presentation of categories added hook to Act-on-item-in-inspector 
;;      for *additional-inspector-selection-action*.  Tweeked it 1/26
;;     (4/19) got more of the state setup when an object is put in from
;;      an outside source. Added polyword inspect routine
;;     (5/12) put in default for fn defined in dm&p
;;     (7/14/98) put in the new lattice-point objects. 7/25 Added hook to
;;      nlg selector

(in-package :sparser)

;;;-------
;;; state
;;;-------

(defparameter *object* nil
  "Used by analogy to * as a hook to hold the current (most recent) object
   displayed in the inspector")

(defparameter *object-table-entry* nil
  "Points to the entire entry of the currently selected object")

(defparameter *inspector-dialog* nil
  "Points to the inspector window")

(defparameter *inspector-table* nil
  "Points to the sequence dialog.")

(defparameter *inspector-items* nil
  "A list of the items presently displayed in the inspector.")

(defparameter *object->inspector-index/alist* nil
  "An alist of ( <obj> . <cell in inspector table> ) ")


;;;--------
;;; driver
;;;--------

(defun display-in-inspector (obj)
  ;; called from toplevel, called from a double-click on an item
  ;; in the inspector, and called from other tableaus
  (let ((existing-index
         (cdr (assoc obj *object->inspector-index/alist*
                     :test #'equal)))
        index-of-first-item)

    (if existing-index
      (select-existing-cell existing-index)

      (let ((display-list (inspector-display-list-for obj)))
        (setq index-of-first-item (update-inspector-items display-list))
        (push `(,obj . ,index-of-first-item)
              *object->inspector-index/alist*)
        
        ;; have them displayed, launching the tableau if this is 
        ;; the first item
        (if (and *inspector-items*
                 *inspector-dialog*)
          (update-inspector-table index-of-first-item)
          (else
            (setq *inspector-items* display-list)
            (launch-the-inspector-tableau)))))

    (deselect-old-select-new/inspector
     (or existing-index index-of-first-item))

    (setq *object* obj)
    (display-inspector-selected-object)

    (ccl:set-window-layer *inspector-dialog* 0)))



(defun deselect-old-select-new/inspector (new-index)
  (when new-index
    (let* ((table *inspector-table*)
           (selections (ccl:selected-cells table))
           index )
      (when selections
        (dolist (cell selections)
          (setq index (ccl:cell-to-index table cell))
          (ccl:cell-deselect table 0 index)))
      (ccl:cell-select table 0 new-index))))


;;;-------------
;;; the window
;;;-------------

(defclass inspector-tableau (dialog) ())

(defun launch-the-inspector-tableau ( &optional
                                       (monitor-size *monitor-size*))
  (let ( position size 
         table-position  table-size  table-no-of-lines )
    (ecase monitor-size
      (:20-inch
       (setq position #@(50 50)  ;;/// find right values
             size #@(400 420)
             table-position #@(5 5)
             table-size #@(390 364)
             table-no-of-lines 30))
      (:14-inch
       (setq position #@(50 50)
             size #@(400 420)
             table-position #@(5 5)
             table-size #@(390 290)
             table-no-of-lines 30))
      (:8-inch
       (setq position #@(10 40)
             size #@(400 350)
             table-position #@(5 5)
             table-size #@(390 290)  ;;/// find right values
             table-no-of-lines 24)))

    (setq *inspector-dialog*
          (make-instance 'inspector-tableau
            :window-type :document
            :window-title "inspector"
            :view-position position
            :view-size size
            :view-font '("Chicago" 10 :srcor :plain)
            :view-subviews (list ;;*inspector-table*
                                 *i/inspect-in-lisp-inspector-button*
                                 *i/unit-selected-text*
                                 *i/by-pass-bindings-radio-button*
                                 *i/by-pass-other-radio-button*)))

    (setq *inspector-table*
          (setup-inspector-table *inspector-dialog*
                                 table-position
                                 table-size
                                 table-no-of-lines))

    (ccl:add-subviews *inspector-dialog*
                      *inspector-table*)

    (ecase monitor-size
      (:20-inch
       (ccl:set-view-position *i/inspect-in-lisp-inspector-button* #@(263 394))
       (ccl:set-view-position *i/by-pass-bindings-radio-button* #@(14 394))
       (ccl:set-view-position *i/by-pass-other-radio-button* #@(147 395))
       (ccl:set-view-position *i/unit-selected-text* #@(14 374)))
      (:14-inch
       ;;/// these are good numbers
       (ccl:set-view-position *i/inspect-in-lisp-inspector-button* #@(263 394))
       (ccl:set-view-position *i/by-pass-bindings-radio-button* #@(14 394))
       (ccl:set-view-position *i/by-pass-other-radio-button* #@(147 395))
       (ccl:set-view-position *i/unit-selected-text* #@(14 374)))
      (:8-inch  ;; and so are these
       (ccl:set-view-position *i/inspect-in-lisp-inspector-button* #@(263 320))
       (ccl:set-view-position *i/by-pass-bindings-radio-button* #@(14 320))
       (ccl:set-view-position *i/by-pass-other-radio-button* #@(150 320))
       (ccl:set-view-position *i/unit-selected-text* #@(14 300))))

    *inspector-dialog* ))



(defmethod window-close ((it inspector-tableau))
  (close-down-inspector-window)
  (call-next-method it))


;;;-----------
;;; the table
;;;-----------

(defclass inspector-table (sequence-dialog-item) ())

(defun setup-inspector-table (&optional
                               (container *inspector-dialog*)
                               (position  #@(5 5))
                               (size #@(390 336))
                               (number-of-lines 28))

  (let ((dimensions (ccl:make-point 1 number-of-lines)))
    (setq *inspector-table*
          (make-instance 'inspector-table
            :view-container container
            :view-position position
            :view-size size
            :visible-dimensions dimensions
            :view-font '("Geneva" 9 :plain)
            :table-sequence *inspector-items*
            :dialog-item-action 'act-on-item-in-inspector
            :selection-type :single
            :table-print-function 'print-item-in-inspector
            :table-vscrollp t
            :table-hscrollp nil))))


(defun clear-inspector-display-table ()
  (setq *inspector-items* nil)
  (ccl:set-table-sequence *inspector-table* nil))


;;;--------------------------
;;; reacting to table clicks
;;;--------------------------

(defparameter *additional-inspector-selection-action* nil
  "a hook for other parts of the workbench to use to have their
   own effects generated by the selection of an item in the
   inspector.")

(defun act-on-item-in-inspector (inspector-table)
  ;; dialog-item action for the inspector's display-list table
  (when (selected-cells inspector-table)
    (let* ((index (cell-to-index
                   inspector-table
                   (first (ccl:selected-cells inspector-table))))
           (table-item (elt (table-sequence inspector-table) index))
           (item (first table-item)))

      (setq *object* item)
      (setq *object-table-entry* table-item)
      (display-inspector-selected-object)

      (when *additional-inspector-selection-action*
        (funcall *additional-inspector-selection-action* item))
 
      (when (double-click-p)
        (display-in-inspector
         (object-to-display-in-inspector item))))))




(defun object-to-display-in-inspector (selected-object)
  (if *i/bindings-are-being-bypassed* ;; from the radio button
      ;; global is defined in [workbench;buttons]
    (if (binding-p selected-object)
      (if (member :context *object-table-entry* :test #'eq)
        (binding-body selected-object)
        (binding-value selected-object))
      selected-object )
    selected-object ))



;;;-------------------------------
;;; actions for inspector widgets
;;;-------------------------------

(defun lisp-inspect-current-inspector-item (button)
  (declare (ignore button))
  (inspect *object*))

(defun toggle-inspector-bypass-bindings-flag (radio-button)
  (let ((pushed-now? (ccl:radio-button-pushed-p radio-button))
        (button-label (ccl:dialog-item-text radio-button)))
    (when pushed-now?
      (cond
       ((equal button-label "by-pass bindings")
        (setq *i/bindings-are-being-bypassed* t))
       ((equal button-label "do bindings")
        (setq *i/bindings-are-being-bypassed* nil))
       (t (break "unexpected label on radio-button:~
                  ~%   ~A~%   ~A" button-label radio-button))))))

(defun display-inspector-selected-object ()
  (let ((string
         (format nil "~A" *object*)))
  (ccl:set-dialog-item-text *i/unit-selected-text* string)))



;;;--------------------
;;; updating the table
;;;--------------------

(defvar *last-cons-in-inspector-table* nil)

(defvar *furthest-filled-cell-in-inspector-table* nil
  "Holds the number of the cons that constitutes the last cell")

(defun update-inspector-items (display-list)
  ;; extends the *inspector-items* list itself. Nothing happens
  ;; in the view of the table until Set-table-sequence is called.
  (let ((last-of-new-list (last display-list))
        (old-last-cons *last-cons-in-inspector-table*)
        (first-cell-of-new-items
         (if *furthest-filled-cell-in-inspector-table*
           *furthest-filled-cell-in-inspector-table*
           0)))

    ;; tack on an empty item
    (rplacd last-of-new-list
            (cons `(:empty-cell) nil))
    (setq *last-cons-in-inspector-table* ;; update the pointer
          (cdr last-of-new-list))

    ;; extend the old list
    (when *inspector-items*
      (rplacd old-last-cons display-list))

    ;; update the count
    (setq *furthest-filled-cell-in-inspector-table*
          (if *inspector-items*
            (+ *furthest-filled-cell-in-inspector-table*
               (length display-list))
            (length display-list)))

    ;; pass back this index number to record as the location
    ;; of the object that generated this display list
    first-cell-of-new-items ))




(defun update-inspector-table (index-of-first-item)

  ;; since the list that makes up the table has been distructively
  ;; extended, we just set the sequence to the cons that it
  ;; already is and the right thing happens
  (ccl:set-table-sequence *inspector-table* *inspector-items*)

  ;; check whether we have to scroll
  (when (> index-of-first-item
           (point-v (visible-dimensions *inspector-table*)))
    (ccl:scroll-to-cell *inspector-table* 0 
                        ;;*furthest-filled-cell-in-inspector-table*
                        index-of-first-item
                        )))


(defun select-existing-cell (index)
  ;; called from Display-in-inspector when the user has double clicked
  ;; on an object that's already been displayed once -- this goes
  ;; back to that old position in the table.
  (ccl:scroll-to-cell *inspector-table* 0 index) ;; becomes the top line
  (ccl:cell-select *inspector-table* 0 index)
  index )



;;;-----------------------------
;;; printing cells of the table
;;;-----------------------------

(defun print-item-in-inspector (obj stream  &optional context)
  ;; called from the table to print each cell, and from the cons decoder
  ;; in which case there will be a context keyword.

  ;(format t "~&~A -- ~A~%" obj (type-of obj))
  (unless context (setq context :toplevel))
  (if (consp obj)
    (decode-inspector-item/print obj stream)
    (etypecase obj
      (psi
       (princ-in-inspector/psi obj stream context))
      (individual (princ-in-inspector/individual obj stream context))
      (binding (princ-in-inspector/binding obj stream context))
      ((or referential-category category mixin-category)
       (princ-in-inspector/category obj stream context))
      (lambda-variable
       (princ-in-inspector/lambda-variable obj stream context))
      (fixnum  ;; e.g. 7
       (princ obj stream))
      (position
       (princ-in-inspector/position obj stream context))
      (cfr
       (princ-in-inspector/cfr obj stream context))
      (section-marker
       (princ-in-inspector/section-marker obj stream context))
      (word
       (princ-in-inspector/word obj stream context))
      (keyword
       (if (eq obj :nil)
         (write-string "nil" stream)
         (princ obj stream)))
      (string
       (format stream "\"~A\"" obj))
      (symbol
       (format stream "~A" obj))
      (realization-node
       (princ-in-inspector/rnode obj stream context))
      (top-lattice-point
       (princ-in-inspector/top-lattice-point obj stream context))
      (psi-lattice-point
       (princ-in-inspector/psi-lattice-point obj stream context))
      (self-lattice-point
       (princ-in-inspector/self-lattice-point obj stream context))
      (variable+value
       (princ-in-inspector/v+v obj stream context))
      (schematic-rule
       (princ-in-inspector/schematic-rule obj stream context))
      )))


(defun decode-inspector-item/print (list stream)
  (let ((string  (cadr (member :string list :test #'eq)))
        (indent  (cadr (member :indent list :test #'eq)))
        (label   (cadr (member :label list :test #'eq)))
        (context (cadr (member :context list :test #'eq))))

    (if (eq (car list) :empty-cell)
      (write-string "" stream)
      (cond (string
             (write-string string stream))
            (label
             (write-string label stream)
             (print-item-in-inspector (first list) stream context))
            (indent
             (write-string (string-of-n-spaces indent) stream)
             (print-item-in-inspector (first list) stream context))
            (t
             ;; this is where we end up if the object is itself
             ;; a cons
             (princ-in-inspector/list list stream))))))


;;--- individuals

(defun princ-in-inspector/individual (obj stream context)
  ;; does the printing when a table cell contains an individual
  (declare (ignore context))
  (let ((*print-short* t))
    (format stream "~A" obj)))


(defun pname-of-individuals-symbol (i)  ;;!!! move
  (let ((prime-category (first (indiv-type i))))
    (concatenate 'string (string-downcase
                          (symbol-name (cat-symbol prime-category)))
                 " "
                 (format nil "~A" (indiv-id i)))))

;;--- bindings

(defun princ-in-inspector/binding (b stream context)
  ;; does the printing when a table cell contains a binding
  (if (or (null context)
          (eq context :embedded)
          (eq context :toplevel))
    (then 
      (format stream "~A = "
              (princ-variable/string (binding-variable b)))
      (let ((value (binding-value b)))
        (princ-binding-value/inspector value stream)))

    (if (eq context :bound-in)
      (then
        (format stream "~A . " (binding-body b))
        (let ((*print-short* t))
          (format stream "~A" 
                  (princ-variable/string (binding-variable b)))))
      (else
        (format stream "unexpected value for binding context: ~A"
                context)))))


(defun princ-binding-value/inspector (value stream)
  (let ((*print-short* t))
    (etypecase value
      (individual (format stream "~A" value))
      ((or referential-category category mixin-category)
       (princ-category value stream))
      (number (princ value stream))
      (word (princ-word value stream))
      (polyword (format stream "\"~A\"" (pw-pname value)))
      (position (format stream "p~A" (pos-token-index value)))
      (section-marker (format stream "~A" value))
      (cfr (princ (cfr-symbol value) stream))
      (list (princ-in-inspector/list value stream))
      (symbol
       (if (eq value :deallocated)
         (write-string "deallocated" stream)
         (princ value stream)))
      )))



;;--- lists (cons)

(defun princ-in-inspector/list (list stream)
  (cond ((valid-segment-term-list list)
         ;; defined in [rules;DM&P:segments]
         (princ-term-list list stream))
        ((all-items-in-list-are-words list)
         (princ-list-of-words-as-one-string list stream))
        (t (write-string "(...)" stream))))

(unless *dm&p*
  (defun valid-segment-term-list (list)
    (declare (ignore list))
    nil))

(defun all-items-in-list-are-words (list)
  (let ( one-isnt? )
    (dolist (item list)
      (unless (word-p item)
        (setq one-isnt? t)))
    (not one-isnt?)))

(defun princ-list-of-words-as-one-string (list-of-words stream)
  (let ((string ""))
    (dolist (word list-of-words)
      (setq string
            (concatenate 'string
                         (word-pname word) " " string)))

    (write-string (concatenate 'string "\"" 
                               (subseq string 0 (1- (length string)))
                               "\"")
                  stream)))


        

;;--- categories

(defun princ-in-inspector/category (c stream context)
  ;; does the printing when a table cell contains a category of any kind
  (declare (ignore context))
  (princ-category c stream))


;;--- variables

(defun princ-in-inspector/lambda-variable  (v stream context)
  ;; does the printing when a table cell contains a lambda-variable
  (declare (ignore context))
  (princ-variable v stream))


;;--- positions

(defun princ-in-inspector/position (p stream context)
  ;; does the printing when a table cell contains a position
  (declare (ignore context))
  (format stream "position ~A - \"~A\""
          (pos-token-index p)
          (word-princ-string (pos-terminal p))))


;;--- cfrs

(defun princ-in-inspector/cfr (r stream context)
  ;; does the printing when a table cell contains an XX
  (declare (ignore context))
  (princ-rewrite-rule r stream))


;;--- schematic rules

(defun princ-in-inspector/schematic-rule (r stream context)
  (declare (ignore context))
  (format stream "~a" r))


;;--- section markers

(defun princ-in-inspector/section-marker (sm stream context)
  ;; does the printing when a table cell contains a section marker
  (declare (ignore context))
  (format stream "~A" sm))


;;--- words

(defun princ-in-inspector/word (w stream context)
  ;; does the printing when a table cell contains an XX
  (declare (ignore context))
  (if (member :use-symbol-name-when-printing (word-plist w))
    (format stream "~A" (string-downcase (symbol-name (word-symbol w))))
    (format stream "\"~A\"" (word-pname w))))


(defun word-princ-string (w)
  (if (member :use-symbol-name-when-printing (word-plist w))
    (string-downcase (symbol-name (word-symbol w)))
    (word-pname w)))


;;--- psi

(defun princ-in-inspector/psi (psi stream context)
  (declare (ignore context))
  (format stream "~a" psi))


;;--- rnodes

(defun princ-in-inspector/rnode (rnode stream context)
  (declare (ignore context))
  (format stream "~a" rnode))


;;;------------ lattice points ---------------

;;--- top

(defun princ-in-inspector/top-lattice-point (lp stream context)
  (declare (ignore context))
  (format stream "~a" lp))

;;--- middle

(defun princ-in-inspector/psi-lattice-point (lp stream context)
  (declare (ignore context))
  (format stream "~a" lp))

;;--- self

(defun princ-in-inspector/self-lattice-point (lp stream context)
  (declare (ignore context))
  (format stream "~a" lp))


;;--- variable+value

(defun princ-in-inspector/v+v (vv stream context)
  (declare (ignore context))
  (format stream "~a" vv))






;;;-----------------------------------------
;;; dlsplay-lists for specific object types
;;;-----------------------------------------

(defun inspector-display-list-for (obj)
  (etypecase obj
    (psi (inspector-display-list/psi obj))
    (individual (inspector-display-list/individual obj))
    (binding (inspector-display-list/binding obj))
    ((or referential-category category mixin-category)
     (inspector-display-list/category obj))
    (lambda-variable
     (inspector-display-list/variable obj))
    (position
     (inspector-display-list/position obj))
    (cfr
     (inspector-display-list/cfr obj))
    (section-marker
     (inspector-display-list/section-marker  obj))
    (word
     (inspector-display-list/word obj))
    (polyword
     (inspector-display-list/polyword obj))
    (keyword
     (inspector-display-list/keyword obj))
    (cons
     (inspector-display-list/cons obj))
    (string
     (inspector-display-list/string obj))
    (symbol
     (inspector-display-list/symbol obj))
    (number
     (inspector-display-list/number obj))
    (realization-node
     (inspector-display-list/rnode obj))
    (top-lattice-point
     (inspector-display-list/top-lattice-point obj))
    (psi-lattice-point
     (inspector-display-list/psi-lattice-point obj))
    (self-lattice-point
     (inspector-display-list/self-lattice-point obj))
    (variable+value
     (inspector-display-list/v+v obj))
    (schematic-rule
     (inspector-display-list/schematic-rule obj))
    ))


;;--- individuals

(defun inspector-display-list/individual (i)
  ;; called when an individual is to be inspected, returns a display list
  (let ((type-list (indiv-type i))
        (binds (indiv-binds i))
        (bound-in (indiv-bound-in i))
        list )
    (push `(,i :string ,(pname-of-individuals-symbol i)) list)
    (push `(,(first type-list) :label " :type   ") list)
    (dolist (type (rest type-list))
      (push `(,type :indent 7) list))
    (when binds
      (push `(,(first binds) :label " :binds  ") list)
      (dolist (binding (rest binds))
        (push `(,binding :indent 12) list)))
    (when bound-in
      (push `(,(first bound-in) :label " :in  " :context :bound-in ) list)
      (dolist (binding (rest bound-in))
        (push `(,binding :indent 7  :context :bound-in ) list)))
    (nreverse list)))



;;--- categories

(defun inspector-display-list/category (c)
  ;; called when an category is to be inspected, returns a display list
  (let ( variables  list )
    (etypecase c
      (referential-category
       (push `(,c  :label "referential category ") list)
       (when (cat-lattice-position c)
         (push `(,(cat-lattice-position c) :label "  :lattice-point ") list))
       (setq variables (reverse (cat-slots c)))
       (push `(,(first variables) :label "  :slots ") list)
       (dolist (v (rest variables))
         (push `(,v :indent 12) list)))

      (mixin-category
       (push `(,c  :label "mixin category ") list)
       (when (cat-lattice-position c)
         (push `(,(cat-lattice-position c) :label "  :lattice-point ") list))
       (setq variables (reverse (cat-slots c)))
       (push `(,(first variables) :label "  :slots ") list)
       (dolist (v (rest variables))
         (push `(,v :indent 12) list)))

      (category
       (push `(,c  :label "category ") list)))

    (nreverse list)))


;;--- lambda variables

(defun inspector-display-list/variable (v)
  ;; called when a variable is to be inspected, returns a display list
  `((,v :string "variable")
    (,(var-name v)  :label " :name  ")
    (,(var-value-restriction v)  :label " :v/r  ")
    (,(var-binding-sites v)  :label " :bound-by  ")))


;;--- cons

(defun inspector-display-list/cons (c)
  ;; called when a cons is to be inspected, returns a display list
  (let* ((item (car c))
         (next (cdr c))
         (list `((,item :label " :items ")) )
         dot-at-end? )
    (loop
      (if next
        (if (consp next)
          (then
            (setq item (car next))
            (push `(,item :indent 12) list)
            (setq next (cdr next)))
          (else
            (setq dot-at-end? t)
            (push `(,next :label " .  ") list)
            (return)))
        (return)))

    (setq list (nreverse list))

    (cons (if dot-at-end?
            `(:string "cons")
            `(:string "list") )
          list)))
          


;;--- bindings

(defun inspector-display-list/binding (b)
  ;; called when an binding is to be inspected, returns a display list
  (let ((variable (binding-variable b))
        (value    (binding-value b))
        (body     (binding-body b)))
  `((:string "binding")
    (,variable :label " :var   ")
    (,value    :label " :value   ")
    (,body     :label " :body   ")) ))


;;--- positions

(defun inspector-display-list/position (p)
  ;; called when a position is to be inspected, returns a display list
  (let ((token-index (pos-token-index p))
        (terminal (pos-terminal p))
        (whitespace (or (pos-preceding-whitespace p) :nil))
        (capitalization (pos-capitalization p)))
    `((,p ) ;;  :label "position " ,token-index)
      (,terminal :label " :terminal  ")
      (,whitespace  :label " :preceding-whitespace ")
      (,capitalization :label " :capitalization "))))



;;--- CFR's

(defun inspector-display-list/cfr (r)
  ;; called when a cfr is to be inspected, returns a display list
  (let ((symbol (cfr-symbol r))
        (lhs (cfr-category r))
        (rhs (cfr-rhs r))
        (form (cfr-form r))
        (referent (cfr-referent r))
        list )
    (push `(,r :string ,(format nil "CFR  rule::~A"
                                (string-downcase (symbol-name symbol))))
          list)
    (push `(,lhs :label " :lhs   ") list)
    (push `(,(first rhs) :label " :rhs   ") list)
    (when (cdr rhs)
      (dolist (c (cdr rhs))
        (push `(,c :indent 8) list)))
    (push `(,form  :label " :form  ") list)
    (push `(,referent :label " :referent  ") list)
    (nreverse list)))


;;--- Schematic rules

(defun inspector-display-list/schematic-rule (r)
  (let ((relation (schr-relation r))
        (lhs (schr-lhs r))
        (rhs (schr-rhs r))
        (referent (schr-referent r))
        (descriptors (schr-descriptors r))
        (tree-family (schr-tree-family r)))
    (declare (ignore lhs rhs referent descriptors))
    `((,r :string "Schematic rule")
      (,tree-family :label " :tree family  ")
      (,relation :label " :relation   "))))


;;--- section-markers

(defun inspector-display-list/section-marker (sm)
  ;; called when a section-marker is to be inspected, returns a display list
  (let ((word (sm-word sm))
        (full-name (sm-full-name sm))
        (term-prev (sm-terminates-previous sm))
        (init-action (sm-initiation-action sm))
        (term-action (sm-termination-action sm))
        (interior (sm-interior-markup sm)))
    `((,sm :string "Section marker")
      (,full-name   :label " :full-name  ")
      (,word        :label " :word  ")
      (,init-action :label " :initiation action  ")
      (,term-action :label " :termination action  ")
      (,term-prev   :label " :terminates the prior  ")
      (,interior    :label " :interior-markup  "))  ))

;;--- words

(defun inspector-display-list/word (w)
  ;; called when a word is to be inspected, returns a display list
  (let ((pname (word-princ-string w)))
    `((:string "word")
      (,pname :label " :pname "))))


;;--- polywords

(defun inspector-display-list/polyword (pw)
  ;; called when a polyword is to be inspected, returns a display list
  (let ((pname (pw-pname pw)))
    `((:string "polyword")
      (,pname :label " :pname "))))


;;--- keywords

(defun inspector-display-list/keyword (k)
  ;; called when a keyword is to be inspected, returns a display list
  `((:string ,(format nil "symbol   ~A" k))))



;;--- strings

(defun inspector-display-list/string (s)
  ;; called when a string is to be inspected, returns a display list
  `((:string ,(format nil "string   \"~A\"" s))))


;;--- symbols

(defun inspector-display-list/symbol (s)
  ;; called when a symbol is to be inspected, returns a display list
  `((,s :string "symbol")
    (,(symbol-name s)  :label " :pname  ")))


;;--- numbers

(defun inspector-display-list/number (n)
  ;; called when a number is to be inspected, returns a display list
  `((,n :string ,(string-downcase (symbol-name (type-of n))))))


;;--- psi

(defun inspector-display-list/psi (psi)
  ;; called when an psi is to be inspected, returns a display list
  (let ( list
        (v+v (psi-v+v psi)))
    (push `(,psi :string "partially saturated individual") list)
    (push `(,(psi-lattice-point psi) :label " :lattice-point ") list)
    (when v+v
      (push `(,(first v+v) :label " variable+values: ") list)
      (dolist (vv (rest v+v))
        (push `(,vv :indent 18) list)))
    (nreverse list)))
            

;;--- realization nodes    

(defun inspector-display-list/rnode (rn)
  ;; called when an realization-node is to be inspected, returns a display list
  (let ( list )
    (push `(,rn :string "Realization node") list)
    (push `(,(rn-lattice-point rn) :label " :lattice-point ") list)
    (push `(,(rn-cfr rn)  :label " :cfr ") list)
    (push `(,(rn-head rn) :label " :head uplink  ") list)
    (push `(,(rn-arg rn)  :label " :arg uplink   ") list)
    (nreverse list)))



;;--- lattice points

(defun inspector-display-list/top-lattice-point (lp)
  ;; called when an top-lattice-point is to be inspected, returns a display list
  (let ( list  variable  nodes )
    (push `(,lp :string "Top lattice point") list)
    (push `(,(lp-category lp) :label " for the category ") list)
    (when (lp-super-category lp)
      (push `(,(lp-super-category lp) :label " a specialization of ") list))
    (push `(:string " Nodes in the lattice by variable:") list)
    (dolist (alist-entry (lp-index-by-variable lp))
      (setq variable (first alist-entry)
            nodes (rest alist-entry))
      (push `(,variable :indent 5) list)
      (if nodes
        (dolist (node nodes)
          (push `(,node :indent 8) list))
        (push `(:string "      not present in any node of the lattice") list)))
    (inspector-display-list/lattice-point/common lp list)))

(defun inspector-display-list/psi-lattice-point (lp)
  ;; called when an psi-lattice-point is to be inspected, returns a display list
  (let ( list
        (instances (lp-instances lp)))
    (push `(,lp :string "Lattice point") list)
    (push `(,(first instances) :label " :instances ") list)
    (dolist (psi (rest instances))
      (push `(,psi :indent 12) list))
    (inspector-display-list/lattice-point/common lp list)))

(defun inspector-display-list/self-lattice-point (lp)
  ;; called when an self-lattice-point is to be inspected, returns a display list
  (let ( list )
    (push `(,lp :string "Initial lattice point") list)
    (push `(,(lp-instance lp) :label " :instance ") list)
    (inspector-display-list/lattice-point/common lp list)))

(defun inspector-display-list/lattice-point/common (lp list)
  ;; called when an top-lattice-point is to be inspected, returns a display list
  (let ((bound (lp-variables-bound lp))
        (free (lp-variables-free lp))
        (up (lp-upward-pointers lp))
        (down (lp-down-pointers lp))
        (rnodes (lp-realizations lp)))

    (push `(,(first bound) :label " :variables bound ") list)
    (dolist (var (rest bound))
      (push `(,var :indent 17) list))

    (push `(,(first free) :label " :variables free ") list)
    (dolist (var (rest free))
      (push `(,var :indent 15) list))

    (push `(,(first up) :label " :pointers up ") list)
    (dolist (alist-entry (rest up))
      (push `(,(cdr alist-entry) :indent 14) list))

    (push `(,(cdr (first down)) :label " :pointers down ") list)
    (dolist (alist-entry (rest down))
      (push `(,(cdr alist-entry) :indent 16) list))

    (push `(,(first rnodes) :label " :realizations ") list)
    (dolist (rnode (rest rnodes))
      (push `(,rnode :indent 15) list))

    (nreverse list)))


;;--- V+V

(defun inspector-display-list/v+v (vv)
  ;; called when an variable+value is to be inspected, returns a display list
  `((,vv :string "Variable + value")
    (,(vv-variable vv) :label " :variable ")
    (,(vv-value vv) :label " :value ")))
    





#|  ;; stubs to copy

(defun inspector-display-list/XX (VV)
  ;; called when an XX is to be inspected, returns a display list
  )

(defun princ-in-inspector/XX (VV stream context)
  ;; does the printing when a table cell contains an XX
  )
|#

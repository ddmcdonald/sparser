;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "API"
;;;    Module:  "interface;workbench:"
;;;   version:  0.4 August 1995

;; initiated 3/22/94 v2.3, tweeked through 3/30
;; 0.1 (7/22) Put in scrolling. Noted when click was coming from aux view
;;      to avoid recursing from edge-view
;; 0.2 (7/25) futzed with Select-edge/open-as-needed.
;; 0.3 (9/7) readjusted some of the architecture to hack contingencies of the
;;      Apple aux view.
;;     (9/14) added parameterized sizes to the independent window  ...11/18 
;;     (2/16/95) added trap in Act-on-item-in-aux-subview to block some actions
;;      if the edges table isn't up.  2/23 moved out a variable to an earlier
;;      load point.
;;     (2/28) changed Check-one-level-up/open-if-not-visible to not complain if
;;      the edge didn't have a parent and just become a no-op.  Also took the
;;      complaint out of Select-edge/open-as-needed when it's called recursively
;;      and the target edge isn't visible and put a check into Select-edge-via-
;;      subview. Added explicit select to that routine too.
;;     (8/9) gated a break
;; 0.4 (8/28) tweeked Check-one-level-up/open-if-not-visible to catch the
;;      case of an unattached edge that's not toplevel.
;; 0.5 (9/6) tweeked Select-edge-via-subview to hack :multiple-initial-edges stub
;;      in Open-length-one-edge.
;; 0.6 (11/12) pulled a complaint break out of Select-edge-via-subview that will
;;      regularly catch cases that are perfectly reasonable when working with
;;      long texts.

(in-package :sparser)

#|  Needs:

a. A distinct value for *current-wb-subview-mode*
   by convention a keyword like :edges-&-objects

   that can be set by toggling a radio-button in the preferences menu

Let's assume for the current version that all the subviews will
be sharing the same shell, so that the window mechanics can be done 
here rather than there.



//////////////////////////
   The function Update-workbench, which is called at the end of an
    analysis to setup/repopulate the subviews, has to react to
    this keyword and
        a.1. turn on a flag indicating that operations on this
             tableau are allowed (Sometimes we'd want to thread things
             to always go through the tableau's routines, so we need
             this to ensure that when that happens we don't initiate
             operations that shouldn't go through.)
        a.2  get the view updated to fit with the analysis that
             just happened, which might mean initiating it for the
             first time.

b. A table, constructed automatically following the subview's
   specification, and pointed to by a symbol.

   Normally when this call is made the table for this subview has
    already been initiated and has some non-nil value. If it does
    not, then instead of calling the update function from Update-
    workbench, we call its 'initiation' function.



When the workbench window is closed, via Close-down-wb-state, we throw
away all the window objects. As a result, we need to reinitialize
all the relevant variables so that upon the next time that the
workbench is launched we can act as though it was being done for
the very fitst time. 

To do this, we go through all the subviews that have been defined,
using the table that stores them as the basis. That would be a bit
wasteful since no every subview defined will likely have been engaged
during the last viewing of the workbench, and especially so if the
spelling of the keyword changes and the old version isn't deleted,
but we still only have to work at human speeds.




The optional, user-set-able subview is always to be the one on the
right.  Same size. Same buttons possibilities.  This means that
we can construct it.  All we need is the user to construct the list,
and to tell us what the correspondences are to edges and/or parts
of the text. 




|#

;;;--------------------------
;;; the object for a subview
;;;--------------------------

(defstruct (wb-subview
            (:print-function
               (lambda (obj stream depth)
                 (declare (ignore depth))
                 (write-string "#<wb-subview " stream)
                 (princ (wbsv-keyword obj) stream)
                 (write-string ">" stream)))
            (:conc-name #:wbsv-))

  keyword
  flag
  table-populator
  subitem-populator
  item-print-function
  selection-action
  double-click-action
  subview-to-edge
  edge-to-subview
  )


;;;----------------------------------------
;;; indexing workbench subviews as objects
;;;----------------------------------------

(defun define-workbench-subview (keyword-name
                                 &key flag
                                      table-populator
                                      subitem-populator
                                      item-printer
                                      selection-action
                                      double-click-action
                                      subview-to-edge
                                      edge-to-subview )
  (let* ((new? nil)
         (sv
          (or (wb-subview-named keyword-name)
              (prog1 (make-wb-subview :keyword keyword-name)
                     (setq new? t)))))

    (setf (wbsv-flag sv)                flag)
    (setf (wbsv-table-populator sv)     table-populator)
    (setf (wbsv-subitem-populator sv)   subitem-populator)
    (setf (wbsv-item-print-function sv) item-printer)
    (setf (wbsv-selection-action sv)    selection-action)
    (setf (wbsv-double-click-action sv) double-click-action)
    (setf (wbsv-subview-to-edge sv)     subview-to-edge)
    (setf (wbsv-edge-to-subview sv)     edge-to-subview)

    (when new?
      (setf (gethash keyword-name *wb-subview-names-to-objects*) sv))
    sv ))



(defparameter *wb-subview-names-to-objects* (make-hash-table
                                             :test #'eq)
  "Added to by define-workbench-subview.
   Accessed by ")


(defun wB-subview-named (keyword)
  (gethash keyword *wb-subview-names-to-objects*))

(defun delete-wb-subview (keyword)
  (remhash keyword *wb-subview-names-to-objects*))



;;;-----------------
;;; initializations
;;;-----------------

(defun initialize-auxiliary-view ()
  ;; Called from Initialize-subview-state, which is called at the
  ;; moment that the workbench is launched.
  ;;   if the threading is right, we don't need these checks
  (when *current-aux-subview*
    (unless *auxiliary-subview*
      (setq *items-in-aux-subview* nil)
      (unless *independent-subview-window*
        ;; when it's independent it is launched after the
        ;; analysis ends rather than from the beginning
        (launch-the-auxiliary-subview)))))

(defun clear-auxiliary-wb-view ()
  ;; called from clear-special-text-display-window, which is
  ;; doing all the workbench's per-run initializations.
  (when *auxiliary-subview*
    (set-table-sequence *auxiliary-subview* nil))
  (when *independent-subview-window*
    (window-close *independent-subview-window*)
    (setq *independent-subview-window* nil)))



(defun update-auxiliary-view ()
  ;; called from routines that change the contents of the view's table
  ;; such as Add-categories-individuals-to-subview-table.
  (when *auxiliary-subview*
    (let ((sequence
           (funcall (wbsv-table-populator *current-aux-subview*))))
      
      (when *parent-and-children-mix*
        (setq sequence
              (interpolate-instances-among-some-categories sequence)))
      
      (set-table-sequence *auxiliary-subview* sequence))))


;;;----------------------
;;; the subview qua view
;;;----------------------

(defparameter *no-lines/aux-subview* 15  ;; goes with size of #@(235 185)
  )

(defclass Workbench-subview (sequence-dialog-item) ())

(defun launch-the-auxiliary-subview
       (&key
        ;; defaults fit the sizing of the all-in-one workbench window
        (container *workshop-window*)
        (position #@(260 148) )
             ;; same vertical position (148) as the the edges-view
             ;; but much further over.
        (size #@(235 185) )  ;; identical to the edges-view
        (number-of-lines 15) ;; has to be in sync with the size
        )

  (let ((dimensions (ccl:make-point 1 number-of-lines)))
    (setq *auxiliary-subview*
          (make-instance 'workbench-subview
            :view-container container
            :view-position position
            :view-size size
            :view-font '("Geneva" 9 :plain)
            :visible-dimensions dimensions  ;; #@(1 15)
            :table-sequence  *items-in-aux-subview*
            :dialog-item-action 'act-on-item-in-aux-subview
            :sequence-wrap-length 8000
            :selection-type :single
            :table-print-function 'print-item-in-aux-subview
            :table-vscrollp t
            :table-hscrollp nil
            ))

    (setq *no-lines/aux-subview* number-of-lines)
    *auxiliary-subview* ))


;;;----------------------------
;;; the view in its own window
;;;----------------------------

(defvar *independent-subview-window* nil)

(defclass Independent-subview (dialog) ())


(defun launch-subview-as-independent-window
       ( &optional (monitor-size *monitor-size*) )

  (let (  window-title  window-position  window-size 
          table-position  table-size  table-no-of-lines  )
    (ecase monitor-size
      (:20-inch
       (setq window-title      "Linguistic domain data"
             window-position   #@(3 40)
             window-size       #@(255 700)
             table-position    #@(5 5)
             table-size        #@(245 700)
             table-no-of-lines 56))

      (:14-inch
       (setq window-title      "Linguistic domain data"
             window-position   #@(3 40)
             window-size       #@(245 423)
             table-position    #@(5 5)
             table-size        #@(235 400)
             table-no-of-lines 33))

      (:8-inch
       (setq window-title      "Linguistic domain data"
             window-position   #@(3 40)
             window-size       #@(245 350)
             table-position    #@(5 5)
             table-size        #@(235 315)
             table-no-of-lines 33)))

    (setq *independent-subview-window*
          (make-instance 'independent-subview
            :window-type :document      ;;-with-grow
            :window-title window-title
            :view-position window-position
            :view-size window-size
            :view-font '("Chicago" 12 :srcor :plain)
            :view-subviews (list *sv/sort-by-frequency*
                                 *sv/sort-alphabetically* )))

    (ecase monitor-size
      (:20-inch
       (set-view-position *sv/sort-by-frequency* #@(9 680))
       (set-view-position *sv/sort-alphabetically* #@(126 680)))
      (:14-inch
       (set-view-position *sv/sort-by-frequency* #@(9 405))
       (set-view-position *sv/sort-alphabetically* #@(126 403)))
      (:8-inch
       (set-view-position *sv/sort-by-frequency* #@(9 325))
       (set-view-position *sv/sort-alphabetically* #@(126 323))))

    (setq *auxiliary-subview*
          (launch-the-auxiliary-subview
           :container *independent-subview-window*
           :position table-position
           :size table-size
           :number-of-lines table-no-of-lines))

    (update-auxiliary-view)
    *independent-subview-window* ))


;(launch-subview-as-independent-window :20-inch)
;(launch-subview-as-independent-window :14-inch)
;;;;;///(launch-subview-as-independent-window :8-inch)

(defmethod window-close ((isv independent-subview))
  (close-down-independent-subview-window)
  (call-next-method isv))



;;;--------
;;; action
;;;--------

(defun act-on-item-in-aux-subview (table)
  ;; called with an item is clicked on. 
  (when (selected-cells table)
    ;; logically this has to be true or we wouldn't be here, but
    ;; maybe there are other ways to get to a table's action item
    ;; that I don't know about, so best to be sure.
    (let* ((cell (car (ccl:selected-cells table)))
           (index (ccl:cell-to-index table cell))
           (item (elt (table-sequence table) index))
           (*click-originated-in-aux-subview* t))

      (setq *prior-unit-selected-in-aux-subview*
            (car *item-selected-in-aux-subview*))
      (setq *item-selected-in-aux-subview* item)

      (let ((subview *current-aux-subview*))

        (when (wbsv-selection-action subview)
          (funcall (wbsv-selection-action subview) item))

        (when *edges-table*
          (when (wbsv-subview-to-edge subview)
            (let ((edge (funcall (wbsv-subview-to-edge subview)
                                 item)))
              (cond
               ((edge-p edge)
                (select-edge-via-subview edge))
               
               ((eq edge :meaningless-as-an-edge)
                (deselect-selected-edge/edges-view))
               
               ((and (consp edge) (eq (car edge) :display-index))
                (deselect-selected-edge/edges-view)
                (select-text-for-display-record
                 (cdr edge) (first *item-selected-in-aux-subview*)))
               
               (t (error "Subview's edge-coordination routine, ~A,~
                          ~%Returned ~A~
                          ~%It should have returned an edge"
                         (wbsv-subview-to-edge subview) edge))))))

        (when (double-click-p)
          (if (wbsv-double-click-action subview)
            (funcall (wbsv-double-click-action subview) item)
            (inspect item)))))))



(defun coordinate-subview-to-selected-edge (e)
  ;; called from Act-on-edge-in-view, which is what's called when
  ;; a cell in the edges view is clicked on
  (unless *click-originated-in-aux-subview*
    (when *auxiliary-subview*
      (let* ((subview (wb-subview-named *current-wb-subview-mode*))
             (fn (wbsv-edge-to-subview subview)))
        (when fn
          (deselect-selected-item-in-aux-subview)

          (when (consp e)
            ;; then we shouldn't pass this whole word form, just
            ;; the word
            (setq e (second e)))
          
          (unless (eq e *elipsis-dots*) ;; not a real object
            (multiple-value-bind (item-to-select  ;; in the subview
                                  its-index)
                                 (funcall fn e)
              (when item-to-select
                (select-item-in-aux-view item-to-select its-index))
                )))))))


(defun deselect-selected-item-in-aux-subview ()
  (let* ((table *auxiliary-subview*)
         (selections (ccl:selected-cells table))
         index )
    (when selections
      (dolist (cell selections)
        (setq index (ccl:cell-to-index table cell))
        (ccl:cell-deselect table 0 index)))
    (when *item-selected-in-aux-subview*
      (setq *item-selected-in-aux-subview* nil))
    :deselected ))


(defun select-item-in-aux-view (item &optional index)
  (unless index
    (setq index (gethash item *referent-to-cell*)))
  (when index
    (select-item-in-aux-view/no-scrolling item index)
    (scroll-aux-subview-to-expose index)))

(defun select-item-in-aux-view/no-scrolling (item &optional index)
  (unless index
    (setq index (gethash item *referent-to-cell*)))
  (when index
    (let ((subview (wb-subview-named *current-wb-subview-mode*)))
      (setq *item-selected-in-aux-subview* item)
      (ccl:cell-select *auxiliary-subview* 0 index)
      (when (wbsv-selection-action subview)
        (funcall (wbsv-selection-action subview) item)))))


;;;-----------
;;; scrolling
;;;-----------

(defun scroll-aux-subview-to-expose (cell-index)
  ;; called from Coordinate-subview-to-selected-edge. Modeled on
  ;; alg. in Scroll-as-needed-to-make-edge-visible

  (let* ((top (ccl:point-v (ccl:scroll-position *auxiliary-subview*)))
         (diff (- cell-index top))
         new-top )

    (setq new-top
          (cond ((minusp diff) ;; offscreen and above
                 (- (+ top diff) ;; adding a neg is subtraction
                    5))  ;; five lines below top
                ((> diff *no-lines/aux-subview*) ;; offscreen & below
                 (+ top (- diff
                           (- *no-lines/aux-subview* 5))))
                (t ;; onscreen
                 nil )))

    (when new-top
      (ccl:scroll-to-cell *auxiliary-subview* 0 new-top))))




;;;-----------------------------------
;;; printing items in the table cells
;;;-----------------------------------

(defun print-item-in-aux-subview (i stream)
  (funcall (wbsv-item-print-function *current-aux-subview*)
           i stream))



;;;-------------------------------
;;; coordination with other views
;;;-------------------------------

(defun select-edge-via-subview (e)
  ;; The edge and text coordination routines are written assuming
  ;; that they are the only originators of selections and that
  ;; they have stayed in sync as edges/text were moved up and
  ;; down.   Here we're probably violating some of their assumptions
  ;; since we can designate an edge to be selected that isn't
  ;; yet visible in the edges view.
  ;;   Most of this code is cribed from wb/select-edge or out of
  ;; the middle of select-corresponding-item-in-edges-view. The
  ;; set of globals comes from Act-on-edge-in-view -- the other
  ;; global, the index of the selected edge, is being set separately.
  ;;   None of those routines would do the trick since they all 
  ;; have assumptions about coordinated actions that we can't sustain
  ;; when comeing from here.
  (deselect-selected-edge/edges-view) ;; get rid of what's showing now
  (setq *selected-edge/edges-view* e) ;; could be lower, but is useful for subrs

  (when (edge-is-still-in-chart e)
    (let ((result (select-edge/open-as-needed e)))
      (unless (eq result :unable-to-expose-edge)
        (select-text-for-edge e)
        (scroll-as-needed-to-make-edge-visible e)
        (establish-edge-button-viability e)
        (select-edge-in-view/no-side-effects e)
        (setq *edge* e)))))


(defun select-edge/open-as-needed (e  &optional recursed?)
  ;; called from Select-edge-via-subview
  (let ((cell (find-cell-of-edge/edges-table e)))
    (if cell
      (note-selected-edge-cell cell)
      (else ;; it's not visible yet
        (if recursed?
          ;; Then we've already tried to expose the edge, and
          ;; for some reason we failed.  Return a value to
          ;; that effect so the caller doesn't do anything
          ;; that assumes the edge is visible
          :unable-to-expose-edge
          (open-up-edges-to-expose e))))))


(defun open-up-edges-to-expose (target-edge)
  (let ((result (check-one-level-up/open-if-not-visible
                 target-edge target-edge)))
    (if (eq result :edge-has-no-parent)
      :unable-to-expose-edge
      (select-edge/open-as-needed target-edge t))))


(defun check-one-level-up/open-if-not-visible (e target)
  (let ((parent (edge-used-in e)))
    ;(when (not (eq e target)) ;; the first call
    ;  (format t "~&Recursive call to check, e = ~A~
    ;             ~%                    parent = ~A" e parent))
    (if parent
      (let ((cell (find-index-of-edge/edges-table parent)))
        (if cell
          (then
            ;(format t "~&Exposing daughters of ~A" parent)
            (expose-daughters/edges-table parent)
            (unless (eq e target)
              ;(format t "~&... and now of e = ~A" e)
              (expose-daughters/edges-table e)))
          (else
            ;(format t "~&checking for parent ~A" parent)
            (check-one-level-up/open-if-not-visible parent target)
            ;(format t "~&Going back up. e = ~A" e)
            (unless (eq e target)
              ;; this happens on the last unwinding in the recursion
              (expose-daughters/edges-table e)))))
      (else
        ;; If there isn't a parent then we don't know how to access
        ;; the edges table (from treetops down) in order to open
        ;; up the intermediaries and expose this edge, so we just
        ;; do nothing.
        ;;    8/28/95 If there isn't a parent, then 'e' had better
        ;; be at toplevel (exposed) or else we'll start returning
        ;; through the accumulated recursions and the Expose-daughters
        ;; routine will get bad data.
        (unless (find-index-of-edge/edges-table e)
          (break "edge ~A has no parent,~%yet it isn't at ~
                  toplevel~%" e))
        :edge-has-no-parent ))))



(defun note-selected-edge-cell (cell)
  ;; cribed from select-corresponding-item-in-edges-view, and
  ;; probably should be used there instead of that open code.
  (deselect-any-selected-edge/edges-view)
  (let ((index (ccl:cell-to-index *edges-table* cell)))
    (when index
      (setq *selected-cell/index/edges-view* index)
      (ccl:cell-select *edges-table* 0 index))))

(defun deselect-any-selected-edge/edges-view ()
  (when *selected-cell/index/edges-view*
    (ccl:cell-deselect *edges-table*
                       0 *selected-cell/index/edges-view*)
    (setq *selected-cell/index/edges-view* nil)))



;;;-----------------
;;; generic actions
;;;-----------------

(defparameter *view-only-summarizes-dh-categories* t
  "A flag that controls how the contents table is initially populated.
   When it is up, the table contains only categories and the number
   of instances they have.  When it is down, it shows the full set
   of individuals.")

(defvar *parent-and-children-mix* nil
  "points to a list of categories whose instances are to appear
   in the table")


(defun add-categories-individuals-to-subview-table (category)
  ;; Called as a selection action on a category.  
  ;; It only makes sense when the view's populator just does
  ;; a list of categories rather than a mix of categories
  ;; and individuals or includes objects of other type.
  ;;
  ;; We mark the category as 'opened', and (re-)compute
  ;; the table with the instances for it and any other 
  ;; opened categories showing.  If the item is already on
  ;; the list, we do the opposite -- taking it off.
  (if (member category *parent-and-children-mix*)
    (setq *parent-and-children-mix*
          (delete category *parent-and-children-mix*))
    (push category *parent-and-children-mix*))

  (update-auxiliary-view)
  *parent-and-children-mix* )


(defun interpolate-instances-among-some-categories (list-of-items)
  ;; Called from Update-auxiliary-view as an auxiliary table-sequence
  ;; populator. The aux-view's populator is one that constructs a list
  ;; of categories, passed in here as the 'list-of-items'.
  ;;    This is called when *category-and-instance-mix* has some values
  ;; on it. It goes through the input list, and when one of the categories
  ;; of the list is on the global, it calls the subview's routine
  ;; to provide a list of the category's instances.

  (let ((accumulated-length (length list-of-items))
        extended-items  )

    (dolist (parent-item (nreverse list-of-items))
      (when (member (car parent-item) *parent-and-children-mix*
                    :test #'eq)
        (let ((subitems
               (funcall (wbsv-subitem-populator *current-aux-subview*)
                        parent-item)))

          (if (> (+ accumulated-length (length subitems)) 8000)
            (format t "~&~%----------------------------------------~
                       ~%  Expanding ~A would~%exceed the maximum ~
                       length of the table.~
                       ~%----------------------------------------~%~%"
                    parent-item)
            (dolist (subitem (nreverse subitems))
              (push subitem extended-items)))))

      (push parent-item extended-items)
      (setq accumulated-length (length extended-items)))

    (record-references-against-their-cells extended-items)
    (setq *item-lists-for-discourse-history* extended-items)
    extended-items))




;;;-------------------------
;;; generic item generators
;;;-------------------------

(defun category-&-count (category)
  (let ((count (length (discourse-entry category))))
    `(,category . ,count) ))



;;;-----------------------
;;; generic item printers
;;;-----------------------

(defun princ-category-and-instance-count (cons stream)
  ;; assumes it is passed in a cons that was constructed as
  ;; the table entry for a category
  (let ((category (car cons))
        (number (cdr cons)))
    (princ-category category stream)
    (format stream "  (~A)" number)))


(defun princ-individual-and-instance-count (dhe stream)
  ;; assumes it is passed in a discourse-history entry 
  ;(write-string " . " stream))
  (let ((individual (car dhe))
        (number (length (cdr dhe)))
        (*print-short* t))
    (format stream "~A~9,2T" number)
    (print-individual-structure individual stream 0)
    ;(princ-individual individual stream)
    ))




;;;--------------------
;;; sorting categories
;;;--------------------

(unless (boundp '*category-sorting-table*)
  (defparameter *category-sorting-table* nil
    "This default table is set in the launch config file to
     *object-salience-order* from [model;core:autodef tableau], 
     but it can be overridden by application-specific tables" ))


(defun category-salience (c1 c2)
  ;; a table-driven sorting function
  ;; We are sorting categories, first according to a fixed location
  ;; in a list that defines an arbitrary order, and if then
  ;; alphabetically if the category isn't in the table
  (let ((table *category-sorting-table*))
    (let ((c1-position (cdr (assoc c1 table :test #'eq)))
          (c2-position (cdr (assoc c2 table :test #'eq))))

      (cond ((and c1-position c2-position)
             (cond ((< c1-position c2-position)
                    t)
                   ((< c2-position c1-position)
                    nil )
                   (t ;; shouldn't happen, but no point in missing it
                    (string-lessp (symbol-name (cat-symbol c1))
                                  (symbol-name (cat-symbol c2))))))
            (c1-position
             t )

            (c2-position
             nil )

            (t ;; neither has an entry in the table
             (string-lessp (symbol-name (cat-symbol c1))
                           (symbol-name (cat-symbol c2))))))))



(defun salience-sorted-types-in-discourse ()
  ;; an alternative to object-types-in-discourse-history, which
  ;; does the same thing but orders alphabetically.
  (let ( types )
    (maphash #'(lambda (key value)
                 (declare (ignore value))
                 (push key types))
             *objects-in-the-discourse*)
    (sort types #'category-salience)))


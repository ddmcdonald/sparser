;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "contents"
;;;    Module:  "interface;workbench:"
;;;   version:  0.4 February 1995

;; initiated 3/22/94 v2.3. Tweeked through 4/5.  Handed new case for wb/Find-referent-for-edge
;; 4/24. Added section-markers as not having referents (like words) 5/19.
;; 0.1 (7/16) linking into the inspector
;; 0.2 (8/1) changed edge collection routine to notice the edge wrapping
;; 0.3 (9/7) moved some things around while building Apple table
;; 0.4 (1/24/95) Stopped Find-edges-from-discourse-entry-locations from complaining
;;      when it the entry is in terms of positions but the edge there has been
;;      recycled. Presumably there is a fencepost problem with the recycler and
;;      the history update, but not worrying about it.
;;     (2/16) added trap in Select-corresponding-edge/s-for-unit to block the walk setup
;;      if the germain views aren't up, added items needed to run in 'summary' mode
;;     (2/23) added category case to Return-first-edge.
;; 0.5 (11/15) changed the semantics of a click coming in from the edges view
;;      so that it opens the category and exposes the individuals if they
;;      aren't already. 

(in-package :sparser)


(define-workbench-subview :EDGES-&-OBJECTS
  :flag  '*show-contents-in-wb*
  :table-populator 'construct-list-of-objects-from-discourse-history
  :subitem-populator 'incorporate-instances-from-dh-history
  :item-printer 'print-table-item-from-discourse-history
  :selection-action 'select-corresponding-edge/s-for-unit
  :double-click-action  'cv/display-in-inspector
  :subview-to-edge 'return-first-edge
  :edge-to-subview 'wb/find-referent-for-edge )



;;;----------------------
;;; populating the table
;;;----------------------

(defvar *item-lists-for-discourse-history* nil
  "a local record of what's being put in the table so that we can
   get at it when handling edge-to-subview.")


(defun construct-list-of-objects-from-discourse-history ()
  ;; called from update-auxiliary-view. The value this returns
  ;; is used to populate the table, which has to happen only once
  ;; per run.
  (if *view-only-summarizes-dh-categories*
    (list-individuals-from-dh-by-types) ;; see [independent contents]
    (let ((types-in-history (salience-sorted-types-in-discourse))
          item-list  individuals-sublist  )
      (dolist (category types-in-history)
        (push (contents-table-item-for-category category)
              item-list)
        (dolist (entry (discourse-entry category))
          (push (contents-table-item-for-individual entry)
                individuals-sublist))
        (dolist (entry individuals-sublist)
          ;; get them back into the order in which they appeared
          ;; in the text
          (push entry item-list))
        (setq individuals-sublist nil))
      
      (let ((final-list (nreverse item-list)))
        (record-references-against-their-cells final-list)
        (setq *item-lists-for-discourse-history* final-list)
        final-list ))))


(defun contents-table-item-for-category (category)
  (let ((count (length (discourse-entry category))))
    `(,category ,count) ))

(defun decode-contents-view-table-entry/obj (cons)
  (first cons))


(defun contents-table-item-for-individual (entry)
  (let* ((individual (car entry))
         (locations (cdr entry))
         (edges (find-edges-from-discourse-entry-locations
                 locations individual)))
    `(,individual . ,edges) ))


(defun find-edges-from-discourse-entry-locations (instance-records
                                                  referent)
  (let ( records  edge )

    (dolist (record instance-records)
      (cond ((position-p (car record))
             ;; this instance is still in the chart, so we put in
             ;; an edge
             (setq edge
                   (edge-spanning/referent referent
                                           (car record)
                                           (cdr record)))
             (unless edge
               ;(format t "~%Find-edges-from-discourse-entry-locations: ~
               ;           position record but no edge, p~A~%"
               ;        (pos-token-index (car record)))
               ;(break)
               )
             (when edge
               (push edge records)))

            ((eq (first record) :display-index)
             (push record records))))

    ;; the instance records appear in the discourse history ordered from
    ;; most recent to least. The pushes here will have reversed that to
    ;; be from earliest positions to most recent, which is what we want
    records ))


    


;;;-------------------------------
;;; printing items in table cells
;;;-------------------------------

(defun print-table-item-from-discourse-history (item stream)
  (when item
    (etypecase (car item)
      ((or  referential-category category mixin-category)
       (print-category-dh-item item stream))
      (individual
       (print-individual-dh-item item stream)))))


(defun print-category-dh-item (list stream)
  (let ((category (car list))
        (number (cdr list)))
    (princ-category category stream)
    (when *view-only-summarizes-dh-categories*
      (write-string "  " stream)
      (princ number stream))))


(defun print-individual-dh-item (list stream)
  (let ((i (car list))
        (instance-record (cdr list))
        (*print-short* t))
    (write-string "  " stream)
    (print-individual-structure i stream 0)
    (when *view-only-summarizes-dh-categories*
      (write-string "  " stream)
      (princ (length instance-record) stream))))



;;;------------------------------------------
;;; actions when items are selected directly
;;;------------------------------------------

(defvar *unit* nil
  "set to the last selected individual or category in the contents view")

(defvar *contents-item* nil
  "set to the last selected table item in the contents view")


(defun select-corresponding-edge/s-for-unit (list-item)
  ;; This is the selection action. It governs what happens in
  ;; the contents view when one of its table items is selected.
  ;;    The side-effects on the edges view are set in motion
  ;; by Return-first-edge

  (let ((item (car list-item)))
    ;; What's passed in is the object and its discourse/display history
    
    (setq *unit* item
          *contents-item* list-item)

    (etypecase item
      ((or referential-category category mixin-category)
       (when *view-only-summarizes-dh-categories*
         (add-categories-individuals-to-subview-table item)))
         
      (individual
       (when (and *text-out* *edges-table*)
         ;; If those views weren't up, then there's nothing to
         ;; walk through.
         (setup-item-walk (cdr list-item)))))))



(defun cv/Display-in-inspector (cv-table-entry)
  ;; This is the double-click action. The extra sugar is in case we
  ;; want to put something here later
  (display-in-inspector (decode-contents-view-table-entry/obj
                         cv-table-entry)))


(defun inspect-car-of-item (list-item)
  ;; another possible double-click action
  (inspect (car list-item)))

(defun pretty-print-contents-view-item (list-item)
  (let ((unit (car list-item)))
    (etypecase unit
      (individual (pretty-print-individual unit))
      (referential-category (inspect unit)))))



;;;-----------------
;;; subview -> edge
;;;-----------------

(defun return-first-edge (list-item)
  ;; This is the 'subview-to-edge' action. It returns the edge
  ;; that the edges view should select.  The immediate caller is
  ;; Act-on-item-in-aux-subview.
  ;;   a category (acting as a label) looks like:
  ;;      ( #<category...> 5 )
  ;;   an individual looks like:
  ;;      ( #<...> #<edge> ... (:display-index...) ... )
  ;;
  ;; When an instance of the individual occurred within a still-valid
  ;; portion of the chart there will be an edge.  For instances
  ;; outside that range there is a form like this:
  ;;      (:display-index (4050 . 75) 4073 . 76)
  ;;
  ;; These are the result of converting edges to the offsets within
  ;; the text view pane of the workbench, which happened incrementally
  ;; as chart positions were recycled.
  (etypecase (car list-item)
    ((or referential-category mixin-category category)
     :meaningless-as-an-edge )
    (individual
     (let ((first-instance (cadr list-item)))
       (cond
        ((edge-p first-instance)
         first-instance )
        ((and (consp first-instance)
              (or (eq (car first-instance) :display-index)
                  (position-p (car first-instance))))
         first-instance )
        (t :meaningless-as-an-edge ))))))




;;;---------------------------------------------------
;;; action when an edge is selected in the edges view
;;;---------------------------------------------------

(defparameter *referent-to-cell* (make-hash-table :test #'eq)
  "Takes a Krisp unit into the number of the cell where it's
   corresponding list-item is stored in the contents-view.")

(defun wb/Find-referent-for-edge (e)
  ;; Called from Coordinate-subview-to-selected-edge.
  ;; Given the edge, access its referent and, if it's stored in
  ;; the table (a word wouldn't be), then return the referent
  ;; and the index of the cell at which its list-item is stored.
  ;;    N.b. when we're in summary mode, most of the individuals
  ;; won't be visible in the table, and we need a different
  ;; method to locate what to return.
  
  (let ((referent (etypecase e
                    (edge (edge-referent e))
                    (word e))))
    (when (and referent
               (etypecase referent
                 ((or referential-category category mixin-category) t)
                 (individual t)
                 (section-marker nil)
                 (word nil)
                 (polyword nil)
                 (keyword nil)))

      (if *view-only-summarizes-dh-categories*
        (find-individuals-index/contents-view/summarized referent)
        (contents-view-entry&index referent)))))


(defun find-individuals-index/contents-view/summarized (obj)
  ;; called from wb/Find-referent-for-edge when the flag for
  ;; *view-only-summarizes-dh-categories* is up. Has to return
  ;; two values, the actual item to select and its index, that are 
  ;; then passed through to Coordinate-subview-to-selected-edge.
  (etypecase obj
    ((or referential-category category mixin-category)
     (contents-view-entry&index obj))

    (individual
     ;; The entry for this object's category may be closed up,
     ;; in which case we open it up and expose its individuals
     ;; before passing the obj through to get an index for it. 
     ;; We can determine this by looking at the global that
     ;; records what categories are open.  Also it may be that 
     ;; the object's type is a subtype of what's on that list,
     ;; so even if we don't see it immediately, we have to
     ;; check the object's superc's against the global.

     (let ((category (itype-of obj)))
       (if (member category *parent-and-children-mix* :test #'eq)
         ;; the individuals's category is already open
         (contents-view-entry&index obj)
         

         (let ((supercs (super-categories-of category)))
           (if (dolist (c supercs nil)
                 (when (member c *parent-and-children-mix* :test #'eq)
                   ;; maybe a superc of the individual is open
                   ;; and we don't represent its immediate category
                   ;; in the discourse history.
                   (return t)))
             (contents-view-entry&index obj)

             (else
               ;; the object isn't visible but we'll assume that its category
               ;; is, so we'll open it up and then we'll select the
               ;; individual. 
               (add-categories-individuals-to-subview-table category)
               (contents-view-entry&index obj)))))))))


(defun contents-view-entry&index (obj)
  ;; common subroutine to locate an object in the table of the
  ;; contents view using the hashtable and returning the table cell
  ;; and the object's table offset (index).  The consumer of this
  ;; information is Coordinate-subview-to-selected-edge.
  (let ((index
         (gethash obj *referent-to-cell*)))
    (when index
      (values (elt *item-lists-for-discourse-history* index)
              index))))
  






(defun record-references-against-their-cells (final-list)
  ;; called from construct-list-of-objects-from-discourse-history
  ;; and List-individuals-from-DH-by-types
  (clrhash *referent-to-cell*)
  (dotimes (i (length final-list))
    (setf (gethash (car (pop final-list)) *referent-to-cell*)
          i)))





;;;---------------------------------------------------------
;;; getting the right edge for an instance of an individual
;;;---------------------------------------------------------

(defun edge-spanning/referent (referent
                               start-pos end-pos)
  ;; Identical to Edge-spanning in its algorithm, except that
  ;; it checks whether the edge found has the right referent
  ;; and if it doesn't it keeps on looking.  This handles the
  ;; problem of multiple edges over a word, where there will
  ;; be several edges over the span. 

  (let* ((ev (pos-starts-here start-pos))
         (count (ev-number-of-edges ev))
         (array (ev-edge-vector ev))
         edge )
    (dotimes (i count
                ;; 1/24/95 if the caller cares, we let them worry about it.
              #|(break "No edge found between p~A and p~A with ~
                        the referent:~%  ~A"
                       (pos-token-index start-pos)
                       (pos-token-index end-pos) referent)|#
                )
      (setq edge (aref array i))
      (when (eq (pos-edge-ends-at edge) end-pos)
        (when (eq (edge-referent edge)
                  referent)
          (return edge))))))

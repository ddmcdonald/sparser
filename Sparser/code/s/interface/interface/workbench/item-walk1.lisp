;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "item walk"
;;;    Module:  "interface;workbench:"
;;;   version:  1.0 January 1995

;; initiated 7/20/94 v2.3.  8/30 adapted to 'display-records'
;; 9/14 tweeked operations on initial call
;; 1.0 (1/27/95) overhauled the whole thing.

(in-package :sparser)

;;;------------
;;; state vars
;;;------------

(defvar *item-walk/item-list* nil
  "Holds the entire list of items -- mostly as a reference list.")

(defvar *item-walk/current* nil
  "The item that was just selected by the walk.")

(defvar *item-walk/prior* nil
  "The prefix of the item list that has already been walked through.")

(defvar *item-walk/next* nil
  "The suffix of the item list that has yet to be walked through.")


;;;----------------
;;; initialization
;;;----------------

(defun setup-item-walk (items)
  ;; Often called as part of the selection routine on the Contents
  ;; View. In this case the flag *click-originated-in-aux-subview*
  ;; will be up and  Select-corresponding-edge/s-for-unit is the
  ;; caller. In this case *unit* has already been set and the items
  ;; list starts with the Text View locations, in order from earliest
  ;; to most recent.

  (when *independent-text-view-window*
    (set-window-layer *independent-text-view-window* 0))
    
  (ccl:set-dialog-item-text *iw/current-unit*
                            (format nil "~A" *unit*))

  (if *click-originated-in-aux-subview*
    (setup-item-walk/from-contents items)
    (setup-item-walk/from-edges-view items)))


(defun setup-item-walk/from-edges-view (items)
  ;; The initiating selection click came from the Edges View and
  ;; was handled by Act-on-edge-in-view.  From there, it went to
  ;; Coordinate-subview-to-selected-edge, where the selected edge,
  ;; which is bound to *edge*, was used to probe the current
  ;; auxiliary view to set *item-selected-in-aux-subview* and
  ;; that cell of the aux table was selected.   We got here because
  ;; the aux view's 'selection-action' called us.  In the case of
  ;; Select-corresponding-edge/s-for-unit it has passed in the
  ;; cdr of that value, after setting its car to *unit*.

  (if (null (cdr items))
    (setup-item-walk/from-contents items)
    (else
      ;; We want to select the instance in the text and setup
      ;; the prior/current state in a way that reflects which
      ;; of the instances in the discourse history was picked
      ;; out when this initiating edge was clicked.  The items
      ;; are ordered from earliest to most recent. We expect
      ;; there to be at least one edge since it had to be
      ;; visible or we couldn't have gotten here.  Note that
      ;; in some cases the edge is visible (expose-able) but
      ;; not in the discourse history and hence not in the
      ;; list of items. (It was subsumed by some larger object.)

      (setq *item-walk/item-list* items)

      (let ((selected-edge *edge*))
        (if (eq selected-edge (first items))
          (then
            (setq *item-walk/prior* nil
                  *item-walk/current* (first items)
                  *item-walk/next*    (rest items)))
          (else
            (siw/find-and-setup-edge selected-edge)))

        (select-text-for-display-record
         (cons (pos-edge-starts-at (or *item-walk/current*
                                       selected-edge))
               (pos-edge-ends-at (or *item-walk/current*
                                       selected-edge)))
         *unit*)

        (let* ((m (length items))
               (n (if (position selected-edge items)
                    (1+ (position selected-edge items))
                    ;; this is the case where it isn't in
                    ;; the discourse history
                    (format nil "~A/-" (length *item-walk/prior*))))
               (n/m (format nil "~A/~A" n m)))
          (ccl:set-dialog-item-text *iw/iteration-text* n/m))

        (if *item-walk/prior*
          (ccl:dialog-item-enable *iw/backwards-button*)
          (ccl:dialog-item-disable *iw/backwards-button*))
        (if *item-walk/next*
          (ccl:dialog-item-enable *iw/forwards-button*)
          (ccl:dialog-item-disable *iw/forwards-button*))))))


(defun siw/Find-and-setup-edge (edge)
  (let ((item-list *item-walk/item-list*))
    (setq *item-walk/next* item-list)
        
    (if (member edge item-list :test #'eq)
      (let ( item )
        (loop
          (setq item (pop *item-walk/next*))
          (if (eq item edge)
            (then
              (setq *item-walk/current* item)
              (return))
            (push item *item-walk/prior*))))

      ;; It's not in the list because it was pulled from the
      ;; discourse history. We have to figure out where it
      ;; would have been by comparing start/end positions
      (let ((start (pos-edge-starts-at edge))
            (end (pos-edge-ends-at edge))
            item  item-start  item-end )
        (loop
          (setq item (pop *item-walk/next*))
          (when (null item)
            (setq *item-walk/current* nil)
            (return))

          (if (edge-p item)
            (cond
             ((position-precedes
               start (setq item-start (pos-edge-starts-at item)))
              ;; We've gone past it. We don't have to check the
              ;; end point because a removed edge would be lower
              ;; and subsumed by any in-history edge
              (setq *item-walk/current* nil)
              (push (pop *item-walk/prior*)
                    *item-walk/next*)
              (return))

             ((position-precedes item-start start)
              ;; Either we haven't gotten to it yet, or it's
              ;; dominated by this item's edge
              (if (or (position-precedes
                         end (setq item-end (pos-edge-ends-at item)))
                        (eq end item-end))
                (then 
                  (setq *item-walk/current* nil)
                  (return))
                (push item *item-walk/prior*)))

             ((eq start item-start)
              ;; the item edge dominates it
              (setq *item-walk/current* nil)
              (return))

             (t
              (break "This case shouldn't have occurred")))

            (else
              (push item *item-walk/prior*))))))))




(defun setup-item-walk/from-contents (items)
  ;; The items are all display locations
  
  #|(setq items (setq *item-walk/item-list* (reverse items)))
    ;; the instance records in the discourse history are listed from
    ;; most recent to earliest, which makes sense for subsequent reference
    ;; checking and incremental inspection.   However when reviewing
    ;; the instances in a whole text it feels better to start with the
    ;; earliest, hence this reverse (vs. an nreverse since there's no
    ;; point in munging the discourse entry itself.)  |#
  
  (setq *item-walk/item-list* items)
  
  (let ((item-to-view (first items)))
    (etypecase item-to-view
      (edge
       (select-text-for-display-record
        (cons (pos-edge-starts-at item-to-view)
              (pos-edge-ends-at item-to-view))
        *unit*))
      (cons
       (select-text-for-display-record item-to-view *unit*)))
    
    (setq *item-walk/prior* nil
          *item-walk/current* (first items)
          *item-walk/next*    (rest items))
    
    (let ((n/m (if *item-walk/next*
                 (format nil "~A/~A" 1 (length *item-walk/item-list*))
                 (format nil "~A" 1))))
      (ccl:set-dialog-item-text *iw/iteration-text* n/m))
    
    (ccl:dialog-item-disable *iw/backwards-button*)
    (if *item-walk/next*
      (ccl:dialog-item-enable *iw/forwards-button*)
      (ccl:dialog-item-disable *iw/forwards-button*))))





;;;--------------------------
;;; drivers (button actions)
;;;--------------------------

(defun item-walk/select-previous-item (backwards-button)
  (when *item-walk/current*
    ;; If the current item isn't in the discourse history we'll
    ;; get this condition. It means that this item is lost to
    ;; the walk since no record is being kept. ///Maybe we 
    ;; should have a display record made for it.
    (push *item-walk/current* *item-walk/next*))

  (let* ((last-item (pop *item-walk/prior*))
         (*click-originated-in-aux-subview* t))

    (setq *item-walk/current* last-item)
    
    (let ((n/m (if *item-walk/prior*
                 (format nil "~A/~A"
                         (1+ (length *item-walk/prior*))
                         (length *item-walk/item-list*))
                 (format nil "~A/~A" 1  (length *item-walk/item-list*)))))
      (ccl:set-dialog-item-text *iw/iteration-text* n/m))

    (ccl:dialog-item-enable *iw/forwards-button*)
    (if *item-walk/prior*
      (ccl:dialog-item-enable backwards-button)
      (ccl:dialog-item-disable backwards-button))

    (etypecase *item-walk/current*
      (edge (select-edge-via-subview *item-walk/current*))
      (cons
       (cond ((eq (car *item-walk/current*) :display-index)
            (select-text-for-display-record (cdr *item-walk/current*)
                                            *unit*))

           ((and (position-p (car *item-walk/current*))
                 (position-p (cdr *item-walk/current*)))
            (select-text-for-display-record *item-walk/current*
                                            *unit*))
           (t
            (break "Corrupt data: any cons/list on the item lists is ~
                    expected to~%either start with the keyword ~
                    ':display-index' or consist of two positions.~
                    ~%This doesn't:~%   ~A" *item-walk/current*)))))))




(defun item-walk/select-next-item (forwards-item)
  (let ((*click-originated-in-aux-subview* t))

    (when *item-walk/current*
      (push *item-walk/current* *item-walk/prior*))
    (setq *item-walk/current* (pop *item-walk/next*))

    (let ((n/m (format nil "~A/~A"
                       (1+ (length *item-walk/prior*))
                       (length *item-walk/item-list*))))
      (ccl:set-dialog-item-text *iw/iteration-text* n/m))

    (ccl:dialog-item-enable *iw/backwards-button*)
    (if *item-walk/next*
      (ccl:dialog-item-enable forwards-item)
      (ccl:dialog-item-disable forwards-item))
    
    (etypecase *item-walk/current*
      (edge (select-edge-via-subview *item-walk/current*))
      (cons
       (cond ((eq (car *item-walk/current*) :display-index)
              (select-text-for-display-record (cdr *item-walk/current*)
                                              *unit*))
             
             ((and (position-p (car *item-walk/current*))
                   (position-p (cdr *item-walk/current*)))
              (select-text-for-display-record *item-walk/current*
                                              *unit*))
             (t
              (break "Corrupt data: any cons/list on the item lists is ~
                      expected to~%either start with the keyword ~
                      ':display-index' or consist of two positions.~
                      ~%This doesn't:~%   ~A" *item-walk/current*)))))))


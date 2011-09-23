;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "item walk"
;;;    Module:  "interface;workbench:"
;;;   version:  September 1994

;; initiated 7/20/94 v2.3.  8/30 adapted to 'display-records'
;; 9/14 tweeked operations on initial call

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
  ;; called from Select-corresponding-edge/s-for-unit to initialize the
  ;; values of the buttons and of the prefix and suffix list.
  ;; Alternatively, may be called directly from a click-servicing rouine
  ;; if the edges view isn't being used.

  (let ( display-first-here? )

    (when (individual-p (first items))
      ;; alternative caller -- passes in a whole discourse entry rather
      ;; than just its instance records.
      (setq *unit* (car items)  ;; maintain the customary global
            items (cdr items))
      ;; Select the first item, since it's expected to have already happened
      ;; in the normal (edge-driven) calling sequence. Wait to actually
      ;; do the display until the records have been reversed.
      (setq display-first-here? t))
    
    (when *independent-text-view-window*
      (set-window-layer *independent-text-view-window* 0))
    
    (setq items (setq *item-walk/item-list* (reverse items)))
    ;; the instance records in the discourse history are listed from
    ;; most recent to earliest, which makes sense for subsequent reference
    ;; checking and incremental inspection.   However when reviewing
    ;; the instances in a whole text it feels better to start with the
    ;; earliest, hence this reverse (vs. an nreverse since there's no
    ;; point in munging the discourse entry itself.)
    
    (when display-first-here?
      (select-text-for-display-record (first items) *unit*))
    
    ;; The first of the items will have already been selected by the 
    ;; Select-edge-via-subview routine, e.g. Return-first-edge or
    ;; done just above for the case of the alternative calling route
    ;;   This means that we've got a 'current' value, though no
    ;; prefix, and the rest of the items are all in the suffix.
    (setq *item-walk/prior* nil
          *item-walk/current* (first items)
          *item-walk/next*    (rest items))
    
    (ccl:set-dialog-item-text *iw/current-unit*
                              (format nil "~A" *unit*))
    
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
  (push *item-walk/current* *item-walk/next*)
  (let* ((last-item (car (last *item-walk/prior*)))
         (index (- (length *item-walk/prior*)
                   (length (member last-item *item-walk/prior*
                                   :test #'eq)))))
    (setq *item-walk/current* last-item)
    (setq *item-walk/prior*
          (subseq *item-walk/prior* 0 index))

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
  (setq *item-walk/prior* (append *item-walk/prior*
                                  (list *item-walk/current*)))
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
                    ~%This doesn't:~%   ~A" *item-walk/current*))))))


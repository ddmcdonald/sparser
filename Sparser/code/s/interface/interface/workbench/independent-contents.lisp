;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "independent contents"
;;;   module:  "interface;workbench:"
;;;  Version:  March 1995

;; created 2/3/95. Added case of laundering the dh of an indiv when the
;; edges view is visible 2/27,28.  3/3 added more code that makes the
;; situation like it is in the other contents views.

(in-package :sparser)


#|  This is an alternative take on the contexts view to use when working
    in the mode where the workbench comes up in separate windows.  |#


(define-workbench-subview  :independent-contents

  ;; Doesn't assume that there is a view of any edges visible, so there
  ;; is no coordinate with the edges view.

  :flag  '*independent-contents-view*
  :table-populator     'list-individuals-from-DH-by-types
  :item-printer        'print-table-item/independent-contents
  :selection-action    'independent-contents-selection-action
  :double-click-action 'independent-contents-double-click-action
  :subitem-populator   'incorporate-instances-from-dh-history
  )


;;;----------------------
;;; populating the table
;;;----------------------

(defun list-individuals-from-DH-by-types ()
  (let ((categories (salience-sorted-types-in-discourse))
        item-list )
    (dolist (category categories)
      (push (category-&-count category)
            item-list))
    (let ((final-list (nreverse item-list)))
      (record-references-against-their-cells final-list)
      (setq *item-lists-for-discourse-history* final-list)
      final-list )))


;;;----------------------
;;; printing table items
;;;----------------------

(defun print-table-item/independent-contents (item stream)
  (when item
    (etypecase (car item)
      ((or referential-category mixin-category category)
       (princ-category-and-instance-count item stream))
      (individual
       (princ-individual-and-instance-count item stream)))))



;;;-------------------
;;; selection actions
;;;-------------------

(defun independent-contents-selection-action (item)
  (let ((object (car item)))
    (etypecase object
      ((or referential-category mixin-category category)
       (add-categories-individuals-to-subview-table object))
      (individual
       (if (eq object *prior-unit-selected-in-aux-subview*)
         ;; fakes the effect of a double click given that a single
         ;; click will bring the Text View to the top of the window
         ;; stack and cause the two clicks to be heard as two
         ;; single clicks
         (independent-contents-double-click-action item)
         (when *text-out*
           (setup-item-walk item)))))))

(defun independent-contents-double-click-action (item)
  (display-in-inspector (car item)))



;;;----------------------------------------------
;;; expanding categories to list their instances
;;;----------------------------------------------

(defun incorporate-instances-from-dh-history (item)
  ;; Called from Interpolate-instances-among-some-categories. This is
  ;; passed a category and looks up all the instances of that category
  ;; that have appeared in the discourse history.  These are sorted
  ;; by the currently active version of the instance sorting routine
  ;; and returned.  If the edges view is up, then before they are
  ;; returned, the edges that correspond to the position stored in
  ;; the discourse history are looked up and included with the
  ;; instance in the structure that is returned.

  (when (not (individual-p (car item)))
    ;; has to be a category for this action to make sense
    (let* ((category (car item))
           (instances (discourse-entry category)))
      (let ((sorted-entries
             (sort (copy-list instances)
                   *instance-sorting-routine*))
             laundered-entries )

        (when *show-document-edges?*
          (let ( individual  dh-records )
            (dolist (entry sorted-entries)  ;; one entry per individual
              (setq individual (car entry))
              (dolist (raw-record (cdr entry))
                ;; copied from Find-edges-from-discourse-entry-locations
                (let ( edge )
                  (cond
                   ((position-p (car raw-record))
                    (setq edge (edge-spanning/referent
                                individual
                                (car raw-record) (cdr raw-record)))
                    (when edge
                      (push edge dh-records)))
                   ((eq (car raw-record) :display-index)
                    (push raw-record dh-records)))))
            
              (push `(,individual ,@dh-records) laundered-entries)
              (setq dh-records nil))))

        (if laundered-entries
          (nreverse laundered-entries)
          sorted-entries )))))


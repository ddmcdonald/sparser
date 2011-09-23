;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "find"
;;;    Module:  "interface;workbench:edge-view:"
;;;   version:  February 1995

;; broken out as own file 2/28/95.  Renamed find-index-of-edge/edges-table
;; to be ..{cell}.. and changed caller Select-corresponding-item-in-edges-view
;; 0.1 (12/4) tweeked Find-cell-of-edge/edges-table and added some subroutines
;;      to handle elipsis-dots edges.

(in-package :sparser)

;;;----------
;;; dispatch
;;;----------

(defun find-item-in-edges-view (item &optional start-pos)
  ;; called from Select-first-edge-down in the text Walk'ing routines
  ;; or from anywhere else that might want to know whether a given
  ;; edge or word+start-pos or word-form was (still) included in
  ;; the table currently being displayed in the edges view.
  (when *show-document-edges?*
    (etypecase item
      (edge (find-index-of-edge/edges-table item))
      (word (find-index-of-word/edges-table item start-pos))
      (cons (find-index-of-word-form/edges-table item)))))


;;;-------
;;; cases
;;;-------

(defun find-cell-of-edge/edges-table (e)
  ;; called from, e.g., Select-corresponding-item-in-edges-view.
  (let ((index (find-index-of-edge/edges-table e)))
    (if index
      (ccl:index-to-cell *edges-table* index)
      (else
        ;; There's the possibility that it could be a literal edge
        ;; and buried under elipsis dots.
        (when (literal-edge? e)
          (setq index (find-index-for-literal-edge e))
          (when index
            (ccl:index-to-cell *edges-table* index)))))))



(defun find-index-of-edge/edges-table (e)
  (let ((sublist (member e *edges-in-view-of-current-article*)))
    (when sublist
      (- (length *edges-in-view-of-current-article*)
         (length sublist)))))



(defun find-cell-of-edge-starting-at (pos)
  (let ((count 0))
    (dolist (item *edges-in-view-of-current-article* nil)
      (incf count)
      (when (edge-p item)
        (when (eq pos (pos-edge-starts-at item))
          (return-from Find-cell-of-edge-starting-at count))))))
    



(defun find-index-of-word/edges-table (word start-pos)
  ;; this is painfully inefficient as an algorithm, but then this
  ;; needs to work only at human speeds, not flat out.
  ;; We can't use a built-in fn. because the :key picks out a
  ;; component of the item rather than the elements of the list
  (declare (ignore word))
  (let ((sublist (find-cons-of-word-form/edges-table start-pos)))
    (if sublist
      (- (length *edges-in-view-of-current-article*)
       (length sublist))
      nil )))


(defun find-word-form/edges-table (start-pos)
  (unless start-pos
    (break "Threading bug: the caller should have supplied a ~
            ~%non-nil start-pos"))
  (let ((cons (find-cons-of-word-form/edges-table start-pos)))
    (when cons
      (car cons))))


(defun find-cons-of-word-form/edges-table (start-pos)
  ;; this is a subroutine to getting the index of an instance of
  ;; the word at this position or for identifying the very 
  ;; word-form object that represents the instance.
  (do ((item (car *edges-in-view-of-current-article*)
             (car rest-of-list))
       (rest-of-list *edges-in-view-of-current-article*))
      ((null item) nil)
    (when (consp item)
      (when (eq (car item) start-pos)
        (return rest-of-list)))
    (pop rest-of-list)))


(defun find-index-of-word-form/edges-table (wf)
  ;; also painful, but at least we don't have to look at components
  (let ((sublist (member wf *edges-in-view-of-current-article*
                         :test #'equal)))
    (if sublist
      (- (length *edges-in-view-of-current-article*)
         (length sublist))
      nil )))



(defun find-index-for-literal-edge (e)
  ;; Called from Find-cell-of-edge/edges-table as a subr. The check
  ;; the edge is a literal has already been made. 
  ;;   This is a variation on Find-index-of-relevant-edges-gap below
  ;; when it didn't work when it should have. The 'corresponding-gap-
  ;; form it computed has the elipsis-dots word as its word, which
  ;; then will not be found by find-index-of-word-form/edges-table
  ;; since that's looking for actual words.
  (let ((count
         (find-index-of-edge-table-item-with-starting-edge-vector
          (edge-starts-at e))))
    (if count
      count
      ;; well maybe it's in the middle of a '...' edge somewhere
      (find-index-of-gap-edge-covering-edge e))))


(defun find-index-of-edge-table-item-with-starting-edge-vector (ev)
  ;; Called from Find-index-for-literal-edge, but pretty general
  (let ((count -1))
    (dolist (item *edges-in-view-of-current-article*)
      (incf count)
      (etypecase item
        (edge
         (when (eq (edge-starts-at item) ev)
           (return-from Find-index-of-edge-table-item-with-starting-edge-vector
             count)))
        (cons )))))


(defun find-index-of-gap-edge-covering-edge (e)
  ;; Called from Find-index-for-literal-edge.
  ;; We know from the checks made by the caller's caller that this edge
  ;; is at the toplevel in the table but not itself in the table, so
  ;; we assume it's in the middle of the span covered by some gap edge.
  (let ((start-pos (pos-edge-starts-at e))
        (end-pos (pos-edge-ends-at e))
        (count -1))
    (dolist (item *edges-in-view-of-current-article*)
      (incf count)
      (when (elipsis-dots-edge item)
        (when (position-precedes (pos-edge-starts-at item) start-pos)
          (when (or (position-precedes end-pos (pos-edge-ends-at item))
                    (eq end-pos (pos-edge-ends-at item)))
            (return-from Find-index-of-gap-edge-covering-edge
              count)))))))





(defun find-index-of-relevant-edges-gap (start-pos)
  ;; There is some word at this start-pos that was just selected in
  ;; the text view. It isn't already in the edges table, and here
  ;; we're checking whether that's because its part of a 'gap' --- some
  ;; stretch of treetops that are all unknown words and were given
  ;; a single summary entry ("...") in the edges view when the table
  ;; was initially populated. 
  (let ((corresponding-gap-form
         (search-gap-table-for-position start-pos)))
    (when corresponding-gap-form
      (find-index-of-word-form/edges-table corresponding-gap-form))))

(defun search-gap-table-for-position (pos)
  (let ((n (pos-token-index pos)))
    (dolist (entry *gaps-of-unknown-words*)
      (when (>= n (first entry))
        ;; is it at or beyond the first position in the gap?
        (when (< n (second entry))
          ;; and to the left or the last position?
         (return-from Search-gap-table-for-position
                       (third entry)))))))


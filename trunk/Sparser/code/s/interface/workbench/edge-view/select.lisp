;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "select"
;;;    Module:  "interface;workbench:edge-view:"
;;;   version:  0.1 April 1995

;; broken out as own file 2/28/95
;; 0.1 (4/21) added operations over *edges/inspect-button*

(in-package :sparser)

;;;-----------
;;; de-select
;;;-----------

(defun deselect-selected-edge/edges-view ()
  (let* ((table *edges-table*)
         (selections (ccl:selected-cells table)))
    (when selections
      (if (null (cdr selections))
        (let* ((cell (car selections))
               (index (ccl:cell-to-index table cell)))
          (ccl:cell-deselect table 0 index)
          (ccl:dialog-item-disable *edges/inspect-button*))
        (else
          (format t "Threading bug? more than one edge has been ~
                     selected in the edges table")
          (dolist (cell selections)
            (ccl:cell-deselect
             table 0 (ccl:cell-to-index table cell))))))))


;;;---------------
;;; simple select
;;;---------------

(defun select-edge-in-view/no-side-effects (e)
  ;; the caller had better be sure that the edge is indeed
  ;; in the table
  (let ((cell (find-cell-of-edge/edges-table e)))
    (when cell
      (let ((index (ccl:cell-to-index *edges-table* cell)))
        (ccl:cell-select *edges-table* 0 index)
        (ccl:dialog-item-enable *edges/inspect-button*)))))
  


;;;------------------------------
;;; as called from the Text View
;;;------------------------------

(defun select-corresponding-item-in-edges-view (e/w/wf  &optional start-pos)
  ;; called from the Walk routines of the text-view
  (when *show-document-edges?*
    (when *selected-cell/index/edges-view*
      ;; turn off the cell that's currently selected
      (ccl:cell-deselect *edges-table* 0 *selected-cell/index/edges-view*)
      (setq *selected-cell/index/edges-view* nil))

    (setq *edge* e/w/wf)

    (let ( index )
      (etypecase e/w/wf
        (edge
         (let ((cell (find-cell-of-edge/edges-table e/w/wf)))
           (unless cell
             (break "Threading bug? edge is not visible in edges ~
                     table: ~A" e/w/wf))
           (setq index (ccl:cell-to-index *edges-table* cell))
           (setq *selected-cell/index/edges-view* index)
           (ccl:cell-select *edges-table* 0 index)
           (ccl:dialog-item-enable *edges/inspect-button*)
           (coordinate-subview-to-selected-edge e/w/wf)))
        (word
         (setq index (find-index-of-word/edges-table e/w/wf start-pos))
         (unless index
           (if *gaps-of-unknown-words*
             (setq index (find-index-of-relevant-edges-gap start-pos))
             (break "Threading bug? word is not visible in edges ~
                     table: ~A" e/w/wf)))
         (setq *selected-cell/index/edges-view* index)
         (ccl:cell-select *edges-table* 0 index)
         (ccl:dialog-item-enable *edges/inspect-button*))
        (cons
         (setq index (find-index-of-word-form/edges-table e/w/wf))
         ;; 1/2/95 When the call here originates in Terminate-ongoing-section,
         ;; and only a position is involved rather than an edge, we get the
         ;; situation of a word being looked for as the thing to select without
         ;; having first gone through the procedure of walking down from the
         ;; treetop over it an opening up all the intermediaries. Consequently
         ;; no index can be found.  ///As an interim move (rather than do the
         ;; edge-opening), changed the 'unless' check on the index around the
         ;; break to a 'when' around the selection actions.
         ;(unless index
         ;    (break "Threading bug? word is not visible in edges ~
         ;            table: ~A" e/w/wf))
         (when index
           (setq *selected-cell/index/edges-view* index)
           (ccl:cell-select *edges-table* 0 index)
           (ccl:dialog-item-enable *edges/inspect-button*))))

      (setq *selected-edge/edges-view*
            (etypecase e/w/wf
              (edge e/w/wf)
              (cons e/w/wf)
              (word (find-word-form/edges-table start-pos))))

      (establish-edge-button-viability e/w/wf start-pos)
      (when index ;; see 1/2 comment
        (unless (< index 3)
          (ccl:scroll-to-cell *edges-table* 0 (- index 3)))))))



;;;--------------------------
;;; as called from aux views
;;;--------------------------

(defun select-synchronized-edge (e)
  ;; called from Synchronize-with-workbench-views with the first
  ;; edge in some region. Since the edge it gets may not be at treetop
  ;; level and the purpose of this action is just to show the user
  ;; where we are, we go up through 'used-in' as many edges as need be
  ;; to ensure that we don't have to open any treetops to so this.
  (let ((edge-to-select
         (when (null (edge-used-in e))
           e)))
    (unless edge-to-select
      (let ((next-edge-up (edge-used-in e)))
        (loop
          (setq edge-to-select next-edge-up)
          (when (null (edge-used-in next-edge-up))
            (return))
          (setq next-edge-up (edge-used-in next-edge-up)))))

    (wb/select-edge edge-to-select)))


(defun wb/Select-edge (e/wf)
  ;; called from routines that open/close what is shown in the
  ;; edges table and want to control what edge gets shown as
  ;; the selected edge after it is done.
  ;;   Probably isn't any different from the main routine, but
  ;; this is a hook for any differences that turn out to be
  ;; needed, and it sets up the right arguments.
  ;;   One definitive difference is that we have to drive the
  ;; text-view to select the corresponding text string, since
  ;; that's presumed to have happened when the call is directly
  ;; to the main routine.
  (establish-edge-button-viability e/wf)
  (select-text-for-edge e/wf)
  (etypecase e/wf
    (edge 
     (select-corresponding-item-in-edges-view
      e/wf (pos-edge-starts-at e/wf)))
    (cons
     ;; this is a little ass-backwards given that we knew a lot
     ;; of this earlier in the threading. ///maybe do a short-cut
     ;; that copies part of this routine
     (select-corresponding-item-in-edges-view e/wf))))


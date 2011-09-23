;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "view"
;;;    Module:  "interface;workbench:edge-view:"
;;;   version:  0.10 August 1995

;; initiated 2/10/92 v2.2
;; 0.1 (1/10/94) redesigned from scratch for MCL2.0 as part of the Workbench
;; 0.2 During Feb, & March, continually tweeking to get state transitions right
;; 0.3 (3/25) added coordination with generic subviews
;; 0.4 (6/10) added true incremental updates. (7/22) fixed glitch in "..." cases
;;      Got "" around labels of literal edges.
;; 0.5 (7/25) changed the indentation on toplevel words to 0.
;; 0.6 (8/1) changed populating routine to appreciate edges wrapping
;;     (8/19) tweeked that. And again 8/23
;; 0.7 (1/2/95) alternative path into edge-selection led to tweaking cons-cases
;;      of index calculation in Select-corresponding-item-in-edges-view
;;     (1/6) added Scroll-edges-view/cons. 1/10 gave it another way to get the index
;; 0.8 (1/20) put a hook into Act-on-edge-in-view for *additional-edge-selection-action*
;; 0.9 (1/25) identified a funny case in creating the edges list where the nominal
;;      start-edge is leftwards of already recycled edges. Fixed it with a
;;      'jump-ahead' routine.
;;     (2/23) put in a stub to catch a 'up' glitch, fixed some other glitches by
;;      rerouting their thread. Wrote Select-edge-in-view/no-side-effects
;; [ broke file into pieces 2/28 ]
;; 0.10 (4/21) moved widgets in, added 'inspect', changed double click action
;;       to 'open'.
;;      (8/9) added a debugging block to the warning in Scroll-edges-view/cons

(in-package :sparser)

;;;---------
;;; widgets
;;;---------

(defparameter *edges/open-button*
  (MAKE-DIALOG-ITEM   'BUTTON-DIALOG-ITEM
   #@(188 336)   ;; 188 pixels over from the left, 336 down from the top
                 ;; This puts it just under the edges view
   #@(41 17)
   "down"
   'edges/open-edge-to-show-daughters
   :DEFAULT-BUTTON NIL ))

(defparameter *edges/close-button*
  (MAKE-DIALOG-ITEM   'BUTTON-DIALOG-ITEM
   #@(138 336)  ;; ///ditto
   #@(28 17)
   "up"
   'edges/close-daughters
   :DEFAULT-BUTTON NIL ))

(defparameter *edges/inspect-button*
  (MAKE-DIALOG-ITEM  'BUTTON-DIALOG-ITEM
  #@(25 336)
  #@(82 16)
  "inspect"
  'edges/inspect-edge
  :DEFAULT-BUTTON  NIL))


;;;----------------
;;; the view/table
;;;----------------

(defclass Edges-view (sequence-dialog-item) ())

(defun setup-edges-view ()
  ;; called the first time that the edges view is requested, e.g. after
  ;; the first run when the 'show edges' button is on.
  (size-workbench-for-edges-view)
  (setq *edges-table*
        (make-instance 'edges-view
          :view-container *workshop-window*
          :view-position #@(14 148)
             ;; The upper left corner of the box around the view is
             ;; 14 in from the left margin of the workbence and
             ;; 148 down from its top.
          :view-size #@(235 185)
             ;; 224 points wide horizontally, 185 long vertically
          :view-font '("Geneva" 9 :plain)
          :visible-dimensions #@(1 15)
          :table-sequence *edges-in-view-of-current-article*
          :dialog-item-action 'act-on-edge-in-view
          :sequence-wrap-length 8000
          :selection-type :single
          :table-print-function 'print-edge-in-view
          :table-vscrollp t
          :table-hscrollp nil
          ;; :cell-size #@(184 12)
          ;;   this will override the :view-size spec -- this value
          ;;   will shrink it horizontally
          )))

(defparameter *no-lines/edges-table* 15)



;;;----------------------
;;; populating the table
;;;----------------------

(defun update-edges-display ()
  ;; called from update-workbench
  (when *show-document-edges?*
    (if *edges-table*
      ;; only true if the edges view has been initialized
      ;; and shown once
      (update-edge-list-for-current-article)
      (initialize-edges-display))))

(defun initialize-edges-display ()
  (generate-treetop-list-for-current-article)
  (setup-edges-view))


(defun update-edge-list-for-current-article ( &optional top-edge )
  (generate-treetop-list-for-current-article)
  (set-table-sequence *edges-table*
                      *edges-in-view-of-current-article*)
  (when top-edge
    (etypecase top-edge
      (edge (scroll-edges-view/top-edge top-edge))
      (cons (scroll-edges-view/cons top-edge)))))


(defun swap-in-the-edges-table ()
  ;; one of the other subviews is occupying the space under the
  ;; text view. We hide it and replace it in the space with the
  ;; edges table and its buttons.
  )


;;;-----------------------
;;; edge printing routine
;;;-----------------------

(defun print-edge-in-view (e stream)
  (when e
    (etypecase e
      (edge
       (let ((category (edge-category e))
             (depth (gethash e *wb/edge->depth*)))
         (unless depth
           (break "no depth for ~A" e))
         (if (edge-starts-at e)
           (let ((start (pos-token-index (pos-edge-starts-at e)))
                 (end (pos-token-index (pos-edge-ends-at e))))

             (let ((label-string
                    (etypecase category
                      ((or referential-category category mixin-category)
                       (string-downcase (symbol-name (cat-symbol category))))
                      (word (concatenate 'string
                              "\"" (word-pname category) "\""))
                      (polyword (pw-pname category)))))

               (format stream "e~A  "
                       (edge-position-in-resource-array e))
               (write-string (string-of-n-spaces (* 2 depth)) stream)
               (format stream "~A  ~A  ~A" start label-string end)))

           ;; otherwise it's an inactive edge
           (format stream "inactive edge no. ~A"
                   (edge-position-in-resource-array e)))))
      (cons
       ;; it's an encoding of positions and a word
       (let ((pname (word-pname (second e)))
             (depth (fourth e)))
         (when (null pname)
           (setq pname (symbol-name (word-symbol (second e)))))

         ;(write-string (string-of-n-spaces (* 2 depth)) stream)
         ;; with a variable width font that carefully calculated
         ;; indentation doesn't work, so decided to exagerate it
         (when (> depth 0)
           (write-string "                                  " stream))

         (format stream "~A  \"~A\"  ~A"
                 (pos-token-index (first e))
                 pname
                 (pos-token-index (third e))))))))


;;;-----------
;;; scrolling
;;;-----------

(defparameter *test-edge-view-coordination* nil)

(defun scroll-edges-view/top-edge (edge)
  ;; make this edge the top one in the view
  (let ((cell (find-item-in-edges-view edge)))
    (unless cell
      (if (edge-used-in edge)
        (let ((parent (edge-used-in edge)))
          (loop
            (setq cell (find-item-in-edges-view parent))
            (when cell (return))
            (if (edge-used-in parent)
              (setq parent (edge-used-in parent))
              (when *test-edge-view-coordination*
                (break "Threading bug? Expected the treetop edge ~A~
                        ~%to be present in the workbench edges table but ~
                        it isn't." parent)))))
        (when *test-edge-view-coordination*
          (when *test-edge-view-coordination*
            (break "Threading bug? Expected the treetop edge ~A~
                    ~%to be present in the workbench edges table but ~
                    it isn't." edge)))))
    (when cell
      (let ((index (ccl:cell-to-index *edges-table* cell)))
        (ccl:scroll-to-cell *edges-table* 0 index)))))


(defun scroll-edges-view/cons (wf)
  (let ((index (or (find-index-of-word-form/edges-table wf)
                   (find-index-of-relevant-edges-gap (first wf))
                   (find-cell-of-edge-starting-at (first wf)))))
    (if index
      (ccl:scroll-to-cell *edges-table* 0 index)
      (when *break-on-unexpected-cases*
        (format t "~&~%----- Scroll-edges-view/cons couldn't find ~
                   edges table index to scroll to~%~A~%-----~%" wf)))))


(defun scroll-as-needed-to-make-edge-visible (edge)
  ;; We assume that the edge is in the table -- some earlier routine
  ;; opened up its parents if that was necessary. 
  (let ((cell (find-cell-of-edge/edges-table edge)))
    (unless cell
      (break "Threading bug: edge is not in the table. Should an ~
              earlier~%routine have opened its parents?~%   ~A" edge))
    (let* ((index (ccl:cell-to-index *edges-table* cell))
           (top (ccl:point-v (ccl:scroll-position *edges-table*)))
           (diff (- index top))  ;; positive if edge is lower
           new-top )

      (cond ((minusp diff) ;; it's offscreen and above
             (setq new-top (- (+ top diff)  ;; adding a neg. is subtraction
                              2))) ;; two lines below top

            ((> diff *no-lines/edges-table*) ;; offscreen and below
             (setq new-top (+ top (- diff
                                     (- *no-lines/edges-table* 7)))))
            (t   ;; onscreen
             (setq new-top nil)))

      (when new-top
        (ccl:scroll-to-cell *edges-table* 0 new-top)))))
      
      


;;;-------------
;;; action item
;;;-------------

(defvar *selected-edge/edges-view* nil
  "Points to the actual object in the table, either an edge
   or a word-form" )

(defvar *selected-cell/index/edges-view* nil
  "Points to an integer that is the location of the selected
   item in the table" )

(defvar *edge* nil
  "holds the last edge or word-form selected in the edges view")

(defparameter *additional-edge-selection-action* nil
  "a hook for other parts of the workbench to use to have their
   own effects generated by the selection of an edge in the
   edges view.")


(defun act-on-edge-in-view (table)
  ;; dialog item action for edges-view. It's what happens when
  ;; you click on an edge
  (if (selected-cells table)
    ;; This will have a value if there's a filled cell at the
    ;; point in the view where the user clicks.
    (let* ((*click-originated-in-edges-view* t)
           (cell (car (ccl:selected-cells table)))
           (index (ccl:cell-to-index table cell))
           (edge (elt (table-sequence table) index)))
      ;(format t "~%cell ~A  index ~A" cell index)

      (setq *selected-edge/edges-view* edge
            *edge* edge
            *selected-cell/index/edges-view* index)
      (ccl:dialog-item-enable *edges/inspect-button*)
      (select-text-for-edge edge)
      (establish-edge-button-viability edge)
      (when (double-click-p)
        (double-click-action-for-edges-view edge))
      (coordinate-subview-to-selected-edge edge)
      (when *additional-edge-selection-action*
        (funcall *additional-edge-selection-action* edge)))

    ;; If there are visible unfilled cells and the user clicks
    ;; there then we get this case.
    (else
      (ccl:dialog-item-disable *edges/inspect-button*))))


(defun double-click-action-for-edges-view (edge)
  (etypecase edge
    (edge
     (unless (daughters-already-visible edge)
       (edges/Open-edge-to-show-daughters)))
    (cons )))





;;;-----------------------------------
;;; action for *edges/inspect-button*
;;;-----------------------------------

(defun edges/inspect-edge (edges/inspect-button)
  (when *edge*
    (etypecase *edge*
      (edge (inspect *edge*))
      (cons ;; an instance of a word
       (inspect (second *edge*))))
    (ccl:dialog-item-disable edges/inspect-button)))

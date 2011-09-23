;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "edges"
;;;    Module:  "interface;workbench:"
;;;   version:  0.9 February 1995

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

(in-package :sparser)

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
           (write-string "                   " stream))

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
      (format t "~&~%----- Scroll-edges-view/cons couldn't find ~
                 edges table index to scroll to~%~A~%-----~%" wf))))


(defun scroll-as-needed-to-make-edge-visible (edge)
  ;; We assume that the edge is in the table -- some earlier routine
  ;; opened up its parents if that was necessary. 
  (let ((cell (find-item-in-edges-view edge)))
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
  (when (selected-cells table)
    ;; the act of clicking selects the cell you click, so this
    ;; will be true.
    (let* ((cell (car (ccl:selected-cells table)))
           (index (ccl:cell-to-index table cell))
           (edge (elt (table-sequence table) index)))
      ;(format t "~%cell ~A  index ~A" cell index)
      (setq *selected-edge/edges-view* edge
            *edge* edge
            *selected-cell/index/edges-view* index)
      (select-text-for-edge edge)
      (establish-edge-button-viability edge)
      (when (double-click-p)
        (double-click-action-for-edges-view edge))
      (coordinate-subview-to-selected-edge edge)
      (when *additional-edge-selection-action*
        (funcall *additional-edge-selection-action* edge)))))


(defun double-click-action-for-edges-view (edge)
  (etypecase edge
    (edge (inspect edge))
    (cons ;; an instance of a word
     (inspect (second edge)))))


;;;--------------------------------
;;; selecting edges from text-view
;;;--------------------------------

(defun deselect-selected-edge/edges-view ()
  (let* ((table *edges-table*)
         (selections (ccl:selected-cells table)))
    (when selections
      (if (null (cdr selections))
        (let* ((cell (car selections))
               (index (ccl:cell-to-index table cell)))
          (ccl:cell-deselect table 0 index))
        (else
          (format t "Threading bug? more than one edge has been ~
                     selected in the edges table")
          (dolist (cell selections)
            (ccl:cell-deselect
             table 0 (ccl:cell-to-index table cell))))))))


(defun select-edge-in-view/no-side-effects (e)
  ;; the caller had better be sure that the edge is indeed
  ;; in the table
  (let* ((cell (find-index-of-edge/edges-table e))
         (index (ccl:cell-to-index *edges-table* cell)))
    (ccl:cell-select *edges-table* 0 index)))
                               


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
         (let ((cell (find-index-of-edge/edges-table e/w/wf)))
           (unless cell
             (break "Threading bug? edge is not visible in edges ~
                     table: ~A" e/w/wf))
           (setq index (ccl:cell-to-index *edges-table* cell))
           (setq *selected-cell/index/edges-view* index)
           (ccl:cell-select *edges-table* 0 index)
           (coordinate-subview-to-selected-edge e/w/wf)))
        (word
         (setq index (find-index-of-word/edges-table e/w/wf start-pos))
         (unless index
           (if *gaps-of-unknown-words*
             (setq index (find-index-of-relevant-edges-gap start-pos))
             (break "Threading bug? word is not visible in edges ~
                     table: ~A" e/w/wf)))
         (setq *selected-cell/index/edges-view* index)
         (ccl:cell-select *edges-table* 0 index))
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
           (ccl:cell-select *edges-table* 0 index))))

      (setq *selected-edge/edges-view*
            (etypecase e/w/wf
              (edge e/w/wf)
              (cons e/w/wf)
              (word (find-word-form/edges-table start-pos))))

      (establish-edge-button-viability e/w/wf start-pos)
      (when index ;; see 1/2 comment
        (unless (< index 3)
          (ccl:scroll-to-cell *edges-table* 0 (- index 3)))))))



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


(defun find-index-of-edge/edges-table (e)
  ;; this returns a cell object rather than an index like the
  ;; to following routines do. This is an artifact of where it
  ;; happens to be called from, Select-corresponding-item-in-edges-view,
  ;; and could be changed
  (let ((sublist (member e *edges-in-view-of-current-article*)))
    (if sublist
      (let* ((cell# (- (length *edges-in-view-of-current-article*)
                       (length sublist)))
             (cell (index-to-cell *edges-table* cell#)))
        cell )
      nil )))



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
  
    

;;;-------------------------------
;;; generating the lists of edges
;;;-------------------------------

(defparameter *wb/edge->depth* (make-hash-table :test #'eq)
  "Takes an edge that is displayed (or has been displayed in the edges
   view and maps it to an integer that gives its depth in the tree.")

;; move this -- but to where ???
(defparameter *elipsis-dots* (define-word "..."))


(defun generate-treetop-list-for-current-article ()
  (let ((start-pos (if (still-in-the-chart 0)
                     (chart-position 0)
                     (chart-position (1+ *first-chart-position*))))
        (start-of-gap nil)
        end-pos  e/w  edge-list  first-item )

    (when *edge-resource-is-wrapped*
      (let* ((next-index
              ;; in MacRef:Chap6/gml you get a pathological situation
              ;; using just 1+ the next available edge.
              (+ 3 *position-of-next-available-edge-in-resource*))
             first-viable-edge )
        (when (>= next-index *length-of-edge-resource*)
          (setq next-index (- next-index *length-of-edge-resource*)))

        (setq first-viable-edge (edge# next-index))
        (setq start-pos
              (pos-edge-starts-at first-viable-edge))))

    ;(format t "~&>>> Generating treetop list starting at p~A (~A)~%"
    ;        (pos-token-index start-pos) (pos-array-index start-pos))
    (loop
      (setq e/w (right-treetop-at start-pos)
            end-pos (etypecase e/w
                      (edge (ev-position (edge-ends-at e/w)))
                      (word   (chart-position-after start-pos))
                      (symbol (chart-position-after start-pos))))

      (when (and (edge-p e/w)
                 (not (eq (pos-edge-starts-at e/w) start-pos)))
        (setq e/w (jump-ahead-to-edge-consistent-position start-pos)
              end-pos (pos-edge-ends-at e/w)))

      (etypecase e/w
        (edge
         (when start-of-gap  ;; the stretch has ended
           (push `(,(pos-token-index start-of-gap)
                   ,(pos-token-index end-pos)
                   (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                 *gaps-of-unknown-words*)
           (push `(,start-of-gap ,*elipsis-dots* ,start-pos 0) edge-list)
           (setq start-of-gap nil))
         (setf (gethash e/w *wb/edge->depth*) 0)
         (push e/w edge-list))

        (word
         (if (word-rules e/w)
           ;; a known word
           (if start-of-gap  ;; the stretch has ended
             (then
               (push `(,(pos-token-index start-of-gap)
                       ,(pos-token-index end-pos)
                       (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                     *gaps-of-unknown-words*)
               (push `(,start-of-gap ,*elipsis-dots* ,start-pos 0) edge-list)
               (setq start-of-gap nil)
               (push `(,start-pos ,e/w ,end-pos 0) edge-list))
             (push `(,start-pos ,e/w ,end-pos 0) edge-list))
           (unless start-of-gap
             (setq start-of-gap start-pos))))

        (symbol ;; i.e. :mulitiple-initial-edges
         (when start-of-gap  ;; the stretch has ended
           (push `(,(pos-token-index start-of-gap)
                   ,(pos-token-index end-pos)
                   (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                 *gaps-of-unknown-words*)
           (push `(,start-of-gap ,*elipsis-dots* ,start-pos 0) edge-list)
           (setq start-of-gap nil))
         (dolist (e (preterminal-edges start-pos))
           (setf (gethash e *wb/edge->depth*) 0)
           (push e edge-list))))

      (unless first-item
        (setq first-item (car edge-list)))

      (when (or (eq   (pos-terminal end-pos) word::end-of-source)
                (null (pos-terminal end-pos)))
        (return))
      (setq start-pos end-pos))

    ;(format t "~%   first item = ~A~%~%" first-item)

    (setq *edges-in-view-of-current-article* (nreverse edge-list))
    (length *edges-in-view-of-current-article*)))




(defun jump-ahead-to-edge-consistent-position (start-pos)
  (let* ((next-pos start-pos)
         e/w )
    (loop
      (setq e/w (right-treetop-at next-pos))
      (cond ((and (edge-p e/w)
                  (not (eq (pos-edge-starts-at e/w) next-pos)))
             (setq next-pos (chart-position-after next-pos)))
            
            ((edge-p e/w)
             (return e/w))

            ((word-p e/w)
             (when (eq e/w *end-of-source*)
               (break "The jump-ahead routine didn't find a ~
                       consistent edge before it ran off the ~
                       ~%end of the chart."))
             (setq next-pos (chart-position-after next-pos)))
            
            (t ;; edge-vector -- the eos never get's spanned, so
               ;; we're safe.
             (setq next-pos (chart-position-after next-pos)))))))




(defun wb/Treetops-below-edge (parent-edge depth)
  (let* ((e/w (starting-edge-just-under
                parent-edge (pos-edge-starts-at parent-edge)))
         (start-pos (pos-edge-starts-at parent-edge))
         (stop-here (pos-edge-ends-at parent-edge))
         end-pos  edge-list )

    (loop
      (etypecase e/w
        (edge
         (push e/w edge-list)
         (setf (gethash e/w *wb/edge->depth*) depth)
         (if (edge-used-in e/w)
           (unless (eq parent-edge (edge-used-in e/w))
             (break "The parent of ~A is ~A~%instead of ~A"
                    e/w (edge-used-in e/w) parent-edge))
           (setf (edge-used-in e/w) parent-edge))
         (setq end-pos (pos-edge-ends-at e/w)))
        (word
         (setq end-pos (chart-position-after start-pos))
         (push `(,start-pos ,e/w ,end-pos ,depth)
               edge-list))
        (cons
         ;; a list of terminal edges
         (setq end-pos (chart-position-after start-pos))
         (dolist (e e/w)
           (if (edge-used-in e)
             (unless (eq parent-edge (edge-used-in e))
               (break "The parent of ~A is ~A~%instead of ~A"
                      e (edge-used-in e) parent-edge))
             (setf (edge-used-in e) parent-edge))
           (setf (gethash e *wb/edge->depth*) depth)
           (push e edge-list))))

      (when (eq end-pos stop-here)
        (return))
      (setq e/w (sibling-to-the-right end-pos)
            start-pos end-pos))

    (nreverse edge-list)))



(defun generate-edge-list-for-current-article ()
  ;; put all the edges into the table
  ;; //not currently used -- add 'depth' if ever revived.
  (let ( edge-list )
    (if *edge-resource-is-wrapped*
      (then
        (do ((i (1+ *position-of-next-available-edge-in-resource*)
                (1+ i)))
            ((= i *length-of-edge-resource*))
          (push (elt *all-edges* i) edge-list))
        (do ((i 0 (1+ i)))
            ((= i *position-of-next-available-edge-in-resource*))
          (push (elt *all-edges* i) edge-list)))

      (dotimes (i *index-of-furthest-edge-ever-allocated*)
        (push (elt *all-edges* i) edge-list)))

    (setq *edges-in-view-of-current-article* (nreverse edge-list))))




;;;------------------------------------------------------
;;; opening edges to their daughters and closing them up
;;;------------------------------------------------------

(defparameter *edges/open-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   ;; #@(45 388) ;; 45 pixels over from the left, 388 down from the top
              ;; This puts it just under the edges view
   #@(45 335) ;;///??out of sync w/ PB maybe -- get this consistent
   #@(69 17)
   "down"
   'edges/open-edge-to-show-daughters
   :DEFAULT-BUTTON NIL
   ))

(defparameter *edges/close-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   ;; #@(130 388)  ;; just to the right of the open button
   #@(130 335)  ;; ///ditto
   #@(69 17)
   "up"
   'edges/close-daughters
   :DEFAULT-BUTTON NIL
   ))


(defun establish-edge-button-viability (edge &optional start-pos)
  ;; called from act-on-edge-in-view when an edge is selected
  ;; with the mouse. It depends on edges having been opened/closed
  ;; strictly through controlled operations since it usually asks
  ;; questions about the edges/words rather than about the actual
  ;; state of the table
  (etypecase edge
    (edge
     (unless (daughters-already-visible edge)
       (ccl:dialog-item-enable *edges/open-button*))
     (if (edge-used-in edge)
       (ccl:dialog-item-enable *edges/close-button*)
       (ccl:dialog-item-disable *edges/close-button*)))
    (cons ;; it's a word-form
     (ccl:dialog-item-disable *edges/open-button*)
     (when (fourth edge)
       (if (> (fourth edge) 0)
         (ccl:dialog-item-enable *edges/close-button*)
         (ccl:dialog-item-disable *edges/close-button*))))
    (word
     ;; the check is coming in off of the text-view where they work
     ;; in words rather than word-forms
     (ccl:dialog-item-disable *edges/open-button*)
     (if (not-toplevel/edge-view start-pos)
       (ccl:dialog-item-enable *edges/close-button*)
       (ccl:dialog-item-disable *edges/close-button*)))))


(defun not-toplevel/edge-view (start-pos)
  ;; subroutine of establish-edge-button-viability that does
  ;; a calculation off the table entry of the word at that
  ;; start-pos to answer the question of whether the 'up' button
  ;; should be viable
  (let ((depth
         (dolist (item *edges-in-view-of-current-article*
                  (or (fourth
                       (search-gap-table-for-position start-pos))
                      (break "No word in the edges-view starting ~
                              a position ~A" start-pos)))
           (when (consp item)
             (when (eq start-pos (first item))
               (return (fourth item)))))))
    (> depth 0)))


(defun daughters-already-visible (edge)
  (let* ((edges-cons (member edge *edges-in-view-of-current-article*))
         (next-item (cadr edges-cons)))
    (when next-item
      (etypecase next-item
        (edge (and (edge-used-in next-item)
                   (eq edge (edge-used-in next-item))))
        (cons
         (eq (edge-left-daughter edge)
             next-item))))))



;;;------------------------------
;;; exposing an edge's daughters
;;;------------------------------

(defun edges/Open-edge-to-show-daughters (edges/open-button)
  ;; button action
  (when *selected-edge/edges-view*
    (let ((parent *selected-edge/edges-view*))
      (expose-daughters/edges-table parent)
      ;; opening the daughters will reflexively cause the table
      ;; machinery to by default select the last edge in the
      ;; newly-exposed edges (the documentation doesn't suggest
      ;; why), and the expose routine will de-select it in order
      ;; to keep the connected view from twitching to show that
      ;; default edge that the user isn't necessarily interested in.
      ;; Having done that, the view wouldn't show any selections
      ;; unless we went back (here) and deliberately re-selected
      ;; the parent. But, since its daughters are already open,
      ;; we have to at the same time turn off the open button
      ;; to keep the daughters from being repeated, which leads
      ;; to a mess in the coordination.
      (select-edge-in-view/no-side-effects parent)
      (ccl:dialog-item-disable edges/open-button))))

(defun expose-daughters/edges-table (edge)
  ;; entry point when the action is directed from Walk
  (when *show-document-edges?*
    (compute-daughters-and-splice-them-in edge))
  (deselect-selected-edge/edges-view))


(defun compute-daughters-and-splice-them-in (e)
  (etypecase e
    (word (set-window-layer *top-listener* 0)
          (format t "~&A word has no daughter nodes: \"~A\""
                  (word-pname e)))
    (edge
     (if (eq (pos-edge-ends-at e)
             (chart-position-after (pos-edge-starts-at e)))
       (open-length-one-edge e)
       (let* ((current-depth (gethash e *wb/edge->depth*))
              (daughters (wb/treetops-below-edge e (1+ current-depth))))
         (splice-edges-below-edge e daughters))))))


(defun splice-edges-below-edge (parent daughters)
  ;; does the actual work of exposing the daughters
  (let ((parent-cons (member parent *edges-in-view-of-current-article*)))
    (if parent-cons
      (let* ((cons-of-parents-right-neighbor (cdr parent-cons))
             (fresh-daughters-list (copy-list daughters))
             (last-cell (last fresh-daughters-list)))
        (rplacd parent-cons fresh-daughters-list)
        (rplacd last-cell cons-of-parents-right-neighbor)
        (set-table-sequence *edges-table*
                            *edges-in-view-of-current-article*)
        (wb/select-edge (car last-cell)))
      (else
        (break "~A isn't in the edge view table" parent)))))


(defun open-length-one-edge (e)
  ;; much simpler to identify the daughter in this case. Feeds the
  ;; same routine to do the actual work
  (let ((daughter (edge-left-daughter e)))
    (if (eq daughter :multiple-initial-edges)
      (break "Stub: daugher-algorithm returned :multiple-initial-edges")
      (let ((edges-depth (gethash e *wb/edge->depth*))
            table-item )
        (etypecase daughter
          (edge
           (setf (gethash daughter *wb/edge->depth*) (1+ edges-depth))
           (setq table-item daughter))
          (word
           (setq table-item (list (pos-edge-starts-at e)
                                  daughter
                                  (pos-edge-ends-at e)
                                  (1+ edges-depth)))
           (ccl:dialog-item-disable *edges/close-button*)))
        (splice-edges-below-edge e (list table-item))))))




;;;----------------------------
;;; hiding an edge's daughters
;;;----------------------------

(defun edges/Close-daughters (edges/close-button)
  ;; button action
  (when *selected-edge/edges-view*
    (let ((e/w *selected-edge/edges-view*))
      (deselect-selected-edge/edges-view)
      (etypecase e/w
        (edge (edges/close-daughters/edge e/w edges/close-button))
        (cons (edges/close-daughter/word e/w))))))


(defun edges/close-daughters/edge (edge edges/close-button)
  (if (null (edge-used-in edge))
    (then (set-window-layer *top-listener* 0)
          (format t "~&Edge ~A is a treetop~
                     ~%It doesn't make sense to close it~%" edge))
    (else
      ;; now check if we have open daughters. If so, close them
      (let ((next-item-in-table
             (cadr (member edge *edges-in-view-of-current-article*))))
        (if (and (edge-p next-item-in-table)
                 (eq edge (edge-used-in next-item-in-table)))
          
          (close-the-daughters-of edge)
          
          ;; otherwise we're a daughter, and we want to close up us
          ;; and all our siblings, leaving our parent
          (close-up-to-the-parent-of edge))
        
        (decf *edge-view/number-of-levels-opened*)
        (when (= 0 *edge-view/number-of-levels-opened*)
          (ccl:dialog-item-disable edges/close-button))
        (set-table-sequence *edges-table*
                            *edges-in-view-of-current-article*)))))


(defun edges/close-daughter/word (word-form)
  ;; we have to look into the table itself to find the label just prior
  ;; to the word-form (the word could appear many times, the word-form
  ;; with its references to positions can only be there once), and
  ;; once we've found that label we can edit the table list and
  ;; clip the word-form out.
  ;;    We also have to look around to see if our neighbors are also
  ;; dauhters of our parent and close them as well.
  ;;    Going through all the closing actions here just to be sure
  ;; that I'm right about the threading (2/25, 3/13)

  ;; First find out where we are in the table
  (let ((our-depth (fourth word-form))
        (selected-word (second word-form))
        (our-pos-before (first word-form))
        (sublist (member word-form *edges-in-view-of-current-article*
                         :test #'equal)))
    (unless sublist
      (break "Threading bug?  Word form is not in the table:~
              ~%~A" word-form))
    (let* ((index (- (length *edges-in-view-of-current-article*)
                     (length sublist)))
           parents-cons  e/wf
           (prior-cons (nthcdr (decf index)
                               *edges-in-view-of-current-article*))
           ;; there has to be a prior cons because the first item in
           ;; the table has to be a treetop and not some edge's daughter
           (leftmost-sibling selected-word))

      (loop
        (setq e/wf (car prior-cons))
        ;(format t "~&e/wf = ~A~
        ;           ~%lms = ~A~%~%" e/wf leftmost-sibling
        (etypecase e/wf
          (cons ;; another word-form. We assume that it has to be
           ;; a sibling since there's no other way the table could
           ;; have been opened
           (unless (= our-depth (fourth e/wf))
             (break "Unexpected data shape: prior word-form is not ~
                     at the same depth")))
          (edge
           (when (eq leftmost-sibling
                     (edge-left-daughter e/wf))
             ;; it's the parent, otherwise it's a sibling
             (setq parents-cons prior-cons)
             (return))
           (when (edge-scopes-word e/wf our-pos-before)
             ;; 7/20 There's an oddish case where an open from the contents
             ;; view opens up too many levels (?) and strands a word too far
             ;; below the edge just before it in the table.  This check
             ;; is intended as an 'override' condition
             (setq parents-cons prior-cons)
             (return))))

        (setq leftmost-sibling (etypecase e/wf
                                 (edge e/wf)
                                 (cons (second e/wf))))
        (setq prior-cons
              (nthcdr (decf index)
                      *edges-in-view-of-current-article*))
        (when (null prior-cons)
          (break "Threading bug: walked out of the edges-table")))

      ;; act on what was found by the loop
      (rplacd parents-cons sublist)

      ;; now that we've clipped off all the earlier siblings, we'll
      ;; have to look to see if there are any later siblings.
      (nip-off-later-siblings our-depth sublist
                              parents-cons (car parents-cons))

      (let ((parent (first parents-cons)))
        (set-table-sequence *edges-table*
                            *edges-in-view-of-current-article*)
        (wb/select-edge parent)))))


(defun nip-off-later-siblings (our-depth sublist-at-selection-point
                               parents-cons parent)
  (let ((next-cons (cdr sublist-at-selection-point))
        e/wf  used-by )
    (loop
      (etypecase (setq e/wf (car next-cons))
        (edge
         ;; its a sibling if it has the same parent
         (unless (eq (setq used-by (edge-used-in e/wf))
                     parent)
           (return)))
        (cons
         ;; its a sibling if it's at the same depth
         (unless (= our-depth (setq used-by (fourth e/wf)))
           (return))))
      (unless used-by
        (break "Unexpected data shape: the object at this position ~
                in the edges table~%is either missing a used-in ~
                field or a depth:~%~A" e/wf))
      (setq next-cons (cdr next-cons)))

    (rplacd parents-cons next-cons)))
         
       
    



(defun close-up-to-the-parent-of (daughter)
  (let ((parent (edge-used-in daughter)))
    (close-the-daughters-of parent daughter)
    :foo))

(defun close-the-daughters-of (parent daughter)
  (let ((parents-cons (member parent
                              *edges-in-view-of-current-article*)))
    (if (null parents-cons)
      (try-to-recover-from-missing-parent-cons parent daughter)
      (let ((next-edges-cons (cdr parents-cons))
            (depth-of-daughters (1+ (gethash parent *wb/edge->depth*)))
            e/w )

        (loop
          (when (null next-edges-cons)
            ;; the parent was the last one in the view
            (rplacd parents-cons nil)
            (return))
          
          (setq e/w (car next-edges-cons))
          (etypecase e/w
            (edge
             (when (not (eq parent (edge-used-in e/w)))
               (rplacd parents-cons next-edges-cons)
               (return)))
            (cons ;; a word-form
             (unless (= depth-of-daughters (fourth e/w))
               (rplacd parents-cons next-edges-cons)
               (return))))
          
          (setq next-edges-cons (cdr next-edges-cons)))

        (set-table-sequence *edges-table* *edges-in-view-of-current-article*)
        (wb/select-edge parent)))))


(defun try-to-recover-from-missing-parent-cons (parent daughter)
  ;; the parent edge isn't in the edges table for some reason, 
  ;; probably a side-effect of an earlier glitch. 
  (break "Stub: the parent isn't in the edges table -- try removing ~
          adjacent edges of the same depth"))

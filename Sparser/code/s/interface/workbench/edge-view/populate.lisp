;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "populate"
;;;    Module:  "interface;workbench:edge-view:"
;;;   version:  February 1995

;; broken out as own file 2/28/95

(in-package :sparser)    

;;;-------------------------------
;;; generating the lists of edges
;;;-------------------------------

(defparameter *wb/edge->depth* (make-hash-table :test #'eq)
  "Takes an edge that is displayed (or has been displayed in the edges
   view and maps it to an integer that gives its depth in the tree.")

(defun depth-in-edges-table (item)
  (etypecase item
    (edge (gethash item *wb/edge->depth*))
    (cons (fifth item))))


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
  ;; called from Compute-daughters-and-splice-them-in to construct
  ;; the list of the parent's daughters. 
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
         (push `(,start-pos ,e/w ,end-pos ,depth ,parent-edge)
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


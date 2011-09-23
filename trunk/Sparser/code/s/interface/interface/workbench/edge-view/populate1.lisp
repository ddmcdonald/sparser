;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "populate"
;;;    Module:  "interface;workbench:edge-view:"
;;;   version:  1.1 December 1995

;; broken out as own file 2/28/95
;; 1.0 (8/30) redid the treatment of '...' regions
;;     (10/12) giving those edges daughters so they can be 'opened'
;; 1.1 (10/20) tweeked "..." region treatment to look for a real edge underneith
;;      them. Left some substantial stubs for what are probably low freq. cases
;;      (12/4) added Elipsis-dots-edge, filled in stub for 1st edge under a dotted
;;      edge being a literal.


(in-package :sparser)

;;;--------------------------------------------------------
;;; 'depth' as the basis of indenting edges in the display
;;;--------------------------------------------------------

(defparameter *wb/edge->depth* (make-hash-table :test #'eq)
  "Takes an edge that is displayed (or has been displayed in the edges
   view and maps it to an integer that gives its depth in the tree.")

(defun depth-in-edges-table (item)
  (etypecase item
    (edge (gethash item *wb/edge->depth*))
    (cons (fifth item))))


;;;--------------------------------------------------
;;; hiding toplevel regions with uninteresting edges
;;;--------------------------------------------------

(defparameter *elipsis-dots* (define-word "..."))  ;; label on the edge

(defun elipsis-dots-edge (item)
  (when (edge-p item)
    (eq (edge-category item) *elipsis-dots*)))

(defun make-elipsis-edge-over-gap  (start-pos end-pos)
  ;; gen a new edge object -- outside of the resource so it doesn't screw up
  ;; the chart (it will be gc'd when the edge-view table is released) -- make
  ;; it the parent of all the toplevel edges under it for purposes of the
  ;; view's expand/contract machinery, and return it so that the loop's
  ;; machinery can enter it into the accumulating table.

  (let ((edge (make-edge ;; call to the raw defstruct-constructor
               :category   *elipsis-dots*
               :starts-at  (pos-starts-here start-pos)
               :ends-at    (pos-ends-here end-pos)
               :rule       :edge-view-dummy-edge
               :used-in    nil
               :position-in-resource-array  -1
               )))

    (setf (gethash edge *wb/edge->depth*) 0)

    (if (eq end-pos (chart-position-after start-pos))
      ;; It covers either a bare word or a word covered by a literal edge.
      ;; in either case, the goal in opening this edge within the
      ;; Edges View is going to be to get direct access to that word,
      ;; so we may as well ignore the edge if it's there.
      (setf (edge-left-daughter edge)
            (pos-terminal start-pos))
      ())

    edge ))

(defun print-elipsis-edge (e stream)
  ;; called from Print-edge-in-view when it detects on of these edges
  (declare (ignore e))
  (format stream "   ..."))


;;;---------------------------
;;; display control variables
;;;---------------------------

(defparameter *show-toplevel-literal-edges-in-edge-view* nil)

(defparameter *show-toplevel-dotted-edges-in-edge-view* nil)


;;;-------------------------------
;;; generating the lists of edges
;;;-------------------------------

(defun generate-treetop-list-for-current-article ()
  (let ((start-pos (if (still-in-the-chart 0)
                     (chart-position 0)
                     (chart-position (1+ *first-chart-position*))))
        (start-of-gap nil)
        end-pos  e/w  edge-list  );; first-item )

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
         (cond
          ((literal-edge? e/w)
           (if *show-toplevel-literal-edges-in-edge-view*
             (then
               (when start-of-gap  ;; this edge ends the stretch
                 (push `(,(pos-token-index start-of-gap)
                         ,(pos-token-index end-pos)
                         (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                       *gaps-of-unknown-words*)
                 (push (make-elipsis-edge-over-gap start-of-gap start-pos) edge-list)
                 (setq start-of-gap nil))

               (setf (gethash e/w *wb/edge->depth*) 0)
               (push e/w edge-list))

             ;; otherwise either start a gap at this point or continue an ongoing one
             (unless start-of-gap
               (setq start-of-gap start-pos)))

           (setq start-pos end-pos))


          ((dotted-edge? e/w)
           (if *show-toplevel-dotted-edges-in-edge-view*
             (then
               (when start-of-gap  ;; this edge ends the stretch
                 (push `(,(pos-token-index start-of-gap)
                         ,(pos-token-index end-pos)
                         (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                       *gaps-of-unknown-words*)
                 (push (make-elipsis-edge-over-gap start-of-gap start-pos) edge-list)
                 (setq start-of-gap nil))

               (setf (gethash e/w *wb/edge->depth*) 0)
               (push e/w edge-list)
               (setq start-pos end-pos))

             ;; Otherwise decompose the dotted edge into its component pieces.
             ;; We handle the first item here, and then let the loop handle
             ;; the rest since we can control what value 'start-pos' will have
             ;; on the next pass.
             (else
               ;; There will be two daughters. Depending on how far along in
               ;; the n-ary rule we have gotten, the left edge may itself be
               ;; a dotted rule, or else it's a complete one.  If complete, it
               ;; may be a literal or a substantive edge.
               (let ((left-edge (edge-left-daughter e/w)))
                 (cond
                  ((dotted-edge? left-edge)
                   ;; sigh. We have to recurse down until we get something real
                   (break "Stub: setting up the edge list for the Edges View~
                         ~%and have reached a dotted edge whose left-daughter~
                         ~%is itself a dotted edge.  Extend the code to setup~
                         ~%the recursion.~
                         ~%      top edge: ~A~
                         ~% left daughter: ~A~%~%" e/w left-edge))

                  ((literal-edge? left-edge)
                   ;; We know we aren't showing literal edges, so we just
                   ;; continue the gap, which will happen by default if
                   ;; we do nothing
                   (setq start-pos (pos-edge-ends-at left-edge))

                   #|(break "Stub: setting up the edge list for the Edges View~
                         ~%and have reached a dotted edge whose left-daughter~
                         ~%is a literal.  Write the checking code.~
                         ~%      top edge: ~A~
                         ~% left daughter: ~A~%~%" e/w left-edge)|#
                   )

                  (t
                   (when start-of-gap  ;; this daughter edge ends the stretch
                     (push `(,(pos-token-index start-of-gap)
                             ,(pos-token-index end-pos)
                             (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                           *gaps-of-unknown-words*)
                     (push (make-elipsis-edge-over-gap start-of-gap start-pos) edge-list)
                     (setq start-of-gap nil))
                   (setf (gethash left-edge *wb/edge->depth*) 0)
                   (push left-edge edge-list)
                   
                   (setq start-pos (pos-edge-ends-at left-edge))))))))



          (t ;; it's a substantial edge, so we always stop any ongoing gap
           (when start-of-gap  ;; the stretch has ended
             (push `(,(pos-token-index start-of-gap)
                     ,(pos-token-index end-pos)
                     (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                   *gaps-of-unknown-words*)
             (push (make-elipsis-edge-over-gap start-of-gap start-pos) edge-list)
             (setq start-of-gap nil))
           (setf (gethash e/w *wb/edge->depth*) 0)
           (push e/w edge-list)
           (setq start-pos end-pos))))


        (word
         (if (word-rules e/w)
           ;; a known word
           (if start-of-gap  ;; the stretch has ended
             (then
               (push `(,(pos-token-index start-of-gap)
                       ,(pos-token-index end-pos)
                       (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                     *gaps-of-unknown-words*)
               (push (make-elipsis-edge-over-gap start-of-gap start-pos) edge-list)
               (setq start-of-gap nil)
               (push `(,start-pos ,e/w ,end-pos 0) edge-list))

             (push `(,start-pos ,e/w ,end-pos 0) edge-list))

           (unless start-of-gap
             (setq start-of-gap start-pos)))

         (setq start-pos end-pos))


        (symbol ;; i.e. :mulitiple-initial-edges, and only one of them could
         ;; be a literal, so there is indeed something substantive to show
         (when start-of-gap  ;; the stretch has ended
           (push `(,(pos-token-index start-of-gap)
                   ,(pos-token-index end-pos)
                   (,start-of-gap ,*elipsis-dots* ,start-pos 0))
                 *gaps-of-unknown-words*)
           (push (make-elipsis-edge-over-gap start-of-gap start-pos) edge-list)
           (setq start-of-gap nil))
         (dolist (e (preterminal-edges start-pos))
           (unless (literal-edge? e)
             (setf (gethash e *wb/edge->depth*) 0)
             (push e edge-list)))
         (setq start-pos end-pos)))

      ;; typecase ends here

      (when (or (eq   (pos-terminal end-pos) word::end-of-source)
                (null (pos-terminal end-pos)))
        (return))

      )  ;; end of loop


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
  (if (eq (edge-category parent-edge) *elipsis-dots*)
    (wb/treetops-below-elipsis-dots-edge parent-edge)
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
      
      (nreverse edge-list))))



(defun wb/Treetops-below-elipsis-dots-edge (edge)
  ;; subroutine for wb/Treetops-below-edge. Ignores any literal edges
  ;; there might be and just returns the list of words
  (let* ((start-pos (pos-edge-starts-at edge))
         (end-pos (pos-edge-ends-at edge))
         (position start-pos)
         next-position  word  word-form-list )
    (loop
      ;; because of the dispatch in Compute-daughters-and-splice-them-in
      ;; we wouldn't get here unless there were at least two words between
      ;; the start and end positions.
      (when (eq position end-pos)
        (return))
      (setq next-position (chart-position-after position))
      (setq word (pos-terminal position))
      (push `(,position ,word ,next-position 1 ,edge)
            word-form-list)
      (setq position next-position))

    (nreverse word-form-list)))

    



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


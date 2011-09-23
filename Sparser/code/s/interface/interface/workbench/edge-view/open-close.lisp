;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "open close"
;;;    Module:  "interface;workbench:edge-view:"
;;;   version:  0.1 September 1995

;; broken out as own file 2/28/95
;; 0.1 (4/21) allowed inline calls to open-edges, and fixed bug in the
;;      close operation.
;;     (9/6) hacked Open-length-one-edge to handle (one of?) the case of the
;;      daughter being multiple-initial-edges

(in-package :sparser)  

;;;--------------------------
;;; synchronize button state
;;;--------------------------

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

;;--- action for clicking on the 'down' button

(defun edges/Open-edge-to-show-daughters ( &optional
                                           (edges/open-button
                                            *edges/open-button*) )
  ;; Besides being called when the button is clicked, this is called
  ;; from Double-click-action-for-edges-view
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
      (if *selected-edge/edges-view*
        ;; if we're being called from Select-edge-via-subview in response
        ;; to a click on the Contents View, then this will pick out
        ;; one of the edges in the set.
        (if (edge-vector-contains-edge? (edge-starts-at e) *selected-edge/edges-view*)
          (setq daughter *selected-edge/edges-view*)
          (when *break-on-unexpected-cases*
            (break "Unexpected case: edge vector doesn't contain edge~%so mechanism ~
                    for disambiguating :multiple-initial-edges won't work~%")))
        (when *break-on-new-cases*
          (break "New case of daugher-algorithm returning :multiple-initial-edges")))

      (open-length-one-edge/1 e daughter))))

(defun open-length-one-edge/1 (e daughter)
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
                              (1+ edges-depth)
                              e ))
       (ccl:dialog-item-disable *edges/close-button*)))
    (splice-edges-below-edge e (list table-item))))




;;;----------------------------
;;; hiding an edge's daughters
;;;----------------------------

(defun edges/Close-daughters (edges/close-button)   ;; button action
  (declare (ignore edges/close-button))
  (when *selected-edge/edges-view*
    (let ((e/w *selected-edge/edges-view*))
      (deselect-selected-edge/edges-view)
      (etypecase e/w
        (edge (edges/close-daughters/edge e/w))
        (cons (edges/close-daughter/word e/w))))))


;;--- daughter is an edge

(defun edges/close-daughters/edge (edge)
  (if (null (edge-used-in edge))
    (then (set-window-layer *top-listener* 0)
          (format t "Warning: 'up' button was active for ~A~
                     ~%but its 'used-in' field is empty." edge))
    (else
      ;; now check if we have open daughters. If so, close them
      (if (edge-has-exposed-daughters edge)
        (close-the-daughters-of edge)
          
        ;; otherwise we're a daughter, and we want to close up us
        ;; and all our siblings, leaving our parent
        (close-up-to-the-parent-of edge)))))



(defun close-up-to-the-parent-of (daughter)
  (let ((parent (edge-used-in daughter)))
    (when (find-item-in-edges-view parent)
      (if (eq (car (last *edges-in-view-of-current-article*))
              daughter)
        (close-daughters/last-in-table daughter parent)
        (close-the-daughters-of parent)))))


(defun close-the-daughters-of (parent)
  (when (edge-has-exposed-daughters parent)
    ;; The caller should have checked this before making the call,
    ;; but best to double-check.  This also checks that the parent
    ;; is actually exposed in the table and so will have a cons cell.
    ;; Also, we know there is at least one daughter and it's
    ;; the next item in the table
    (let* ((parents-cons
            (member parent *edges-in-view-of-current-article*))
           (next-items-cons (cdr parents-cons))
           next-item )
      ;(format t "~&Parent's cons = ~A~%~%" parents-cons)

      (loop
        (when (null next-items-cons)  ;; parent is last in the table
          (return))

        (setq next-item (car next-items-cons))
        ;(format t "~&Next item = ~A~%" next-item)

        (etypecase next-item
          (cons )  ;; words don't have daughters, nothing to do.
          (edge
           (when (edge-has-exposed-daughters next-item)
             ;; recursively remove its daughters
             ;(format t "~&Recursing on ~A~%" next-item)
             (close-the-daughters-of next-item)
             ;(break "after daughter close")
             )))

        (when (not (eq (parent-of-edges-table-item next-item)
                       parent))
          ;(format t "~&Returning from ~A loop~%" parent)
          (return))
        ;(break "about to go 'round the loop")
        (setq next-items-cons (cdr next-items-cons)))

      ;; remove all the intermediaries scanned by the loop and
      ;; reconnect to the next item that isn't (recursively)
      ;; a daughter of the parent.
      ;(format t "~%Rplacd for parent ~A:~
      ;           ~%   next-item-cons = ~A~
      ;           ~%   parents-cons = ~A~%"
      ;        parent next-items-cons parents-cons)

      ;; changes *edges-in-view-of-current-article*
      (rplacd parents-cons
              next-items-cons)

      ;; reset the table to reflect what we've done
      ;(format t "~&Resetting sequence for parent ~A~
      ;           ~%   edges in view = " parent)
      ;(pl *edges-in-view-of-current-article*)
      ;(break)
      (set-table-sequence *edges-table* *edges-in-view-of-current-article*)
      (select-edge-in-view/no-side-effects parent)
      (establish-edge-button-viability parent)
      (setq *selected-edge/edges-view* parent
            parent parent))))



(defun close-daughters/last-in-table (daughter parent)
  ;; called from Close-up-to-the-parent-of when the daughter
  ;; occupies the last cell in the table
  (declare (ignore daughter))
  (let ((parents-cons
         (member parent *edges-in-view-of-current-article*)))
    (rplacd parents-cons nil)
    (set-table-sequence *edges-table*
                        *edges-in-view-of-current-article*)))




;;--- predicates

(defun edge-has-exposed-daughters (parent)
  ;; looks at the next item in the table and asks of it whether
  ;; the argument edge is its parent.
  (let ((next-item-in-table
         (cadr (member parent *edges-in-view-of-current-article*))))
    (when next-item-in-table
      ;; This should never happen given the threading of this code,
      ;; but best to be safe.  If the parent isn't exposed, then
      ;; it is declared not to have daughters.
      (etypecase next-item-in-table
        (edge
         (eq (edge-used-in next-item-in-table) parent))
        (cons
         (eq (fifth next-item-in-table) parent))))))

(defun parent-of-edges-table-item (item)
  (etypecase item
    (edge (edge-used-in item))
    (cons (fifth item))))







;;--- daughter is a word

(defun edges/close-daughter/word (word-form)
  (let ((parent (fifth word-form)))
    (unless parent
      (break "New case: no 'parent' is included with the word ~
              form~%~A~%yet the 'up' button was active when it ~
              was selected." word-form))
    (close-the-daughters-of parent)))



#|
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
        (wb/select-edge parent)))))  |#


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


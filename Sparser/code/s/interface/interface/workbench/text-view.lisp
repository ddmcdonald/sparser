;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "text view"
;;;   module:  "interface;workbench:"
;;;  Version:  0.12 June 1996

;; initiated 11/11/93 v2.3
;; 0.1 (1/3/94) Adapting the initial window-based design to view-based for the workbench
;;     (1/14) fixed assumption in clear-window that the w.b. is up
;; 0.2 (2/23) added control of the 'next' button and flag that indicates
;;      that text has been displayed to the wb.
;; 0.3 (3/10) moved the per-run initialization form to [initializations]
;; 0.4 (3/30) fleshing out scrolling stubs.
;; 0.5 (4/6) blocked out the stub that breaks asking to write the code for
;;      defining polywords
;; 0.6 (5/2) changed the line length to actually fit in the view
;;     (5/3) Added data to track display locations for positions
;;     (5/27) added capability to define selected polywords
;; 0.7 (7/14) added synchronization with segment printer.
;;     (7/27) fixed a fencepost error in Select-text-for-edge
;;     (8/16) tweeked Workbench synchronization code
;; 0.8 (9/10) setting up a variant where the view is in its own window
;;     (9/26) tweeked Synchronize-with-workbench-views again
;;     (12/15) put check in Write-to-text-window for the case of the string being ""
;;      so it doesn't check it for starting with the newline character
;; 0.9 (1/5/95) broke out scrolling. 1/6 added scrolling sync with edges view
;;     (1/9) adapted Synchronize-with-workbench-views to work from only the start-edge
;;      when that was all its caller had
;; 0.10 (11/9) tweeked Synchronize-with-workbench-views/pos to include level 0 in
;;       the cons form it constructs.
;; 0.11 (11/12) muched with Select-text-region to clean up what it showed
;; 0.12 (6/18/96) modified Synchronize-with-workbench-views/pos to recognize the situation
;;       where it has been positioned at the end of the chart and to turn off the Next
;;       button accordingly.

(in-package :sparser)

;;;----------------------------------
;;; view inside the workbench window
;;;----------------------------------

(defparameter *text-view-line-length* 72)

(defparameter *text-view-page-size* 9)


(defclass Text-output-view (fred-dialog-item) ())


(defun setup-text-output-view
       (&key (container *workshop-window*)
             (size #@(480 100))    ;; about 80 characters wide
             (number-of-lines 9)   ;; in sync with the size
             (position #@(10 38))) ;; 10 over, 38 down

  (setq *text-out*
        (make-instance 'text-output-view ;;'fred-dialog-item
          :view-container container
          :view-size size  
          :view-position position
          :view-font '("courier" 10 :plain)
          ))
  (setq *display-text-to-special-window* t
        *text-view-page-size* number-of-lines)
  *text-out* )



;;;------------------------
;;; displaying to the view
;;;------------------------

(defvar *offset-of-insertion-point* 0
  "incremented with every string that is displayed to the text view.
   Can be used in highlighting since it points /// ")

(defvar *number-of-full-lines-in-text-view* 0)


(defun write-to-text-window (string position)
  ;; called from write-current-token-to-article-stream by way
  ;; of write-token, where it's sensitive to the flag
  ;; *display-text-to-special-window* 

  (unless *text-displayed-to-wb?*
    (setq *text-displayed-to-wb?* t)
    (ccl:dialog-item-enable *next-button*))

  (write-string string *text-out*)
  (force-output *text-out*)

  (when (not (= 0 (length string)))
    (when (eq (elt string 0) #\newline)
      ;(break)
      (incf *number-of-full-lines-in-text-view*)
      (set-first-char-of-current-line *offset-of-insertion-point*)
      (when (>= *number-of-full-lines-in-text-view*
                *text-view-page-size*)
        (bounce-line-off-bottom *number-of-full-lines-in-text-view*))))

  (setf (pos-display-char-index position)
        `(,*offset-of-insertion-point*
            ;; original value before adding the string length
          . ,*number-of-full-lines-in-text-view*))

  (setq *offset-of-insertion-point*
        (+ *offset-of-insertion-point* (length string)))
  string )



;;;---------------------------------------------
;;; selecting the text corresponding to an edge
;;;---------------------------------------------

;  selection-range (v)  -- returns the bounds of the selection
;  set-selection-range (v start end)  -- establishes the selection
;  fred-buffer (v)  -- returns the buffer mark that corresponds to
;                      the text view's insertion point
;  buffer-substring (m start end)  -- takes a mark 'm' and two integers
;                      and returns the string between them (start inclusive)


(defun select-text-region (start end  &optional obj)
  ;; do the fred actions that select the string (from start to end)
  ;; and manage the Define-word button.  The obj won't be suppled
  ;; when the call comes from Select-text-for-display-record. It is
  ;; supplied with calls from Select-text-for-edge

  (unless end
    ;; some of the callers don't have an edge in their hands at the
    ;; point of call and haven't been reworked to provide a sensible
    ;; value for 'end' (like the otherside of the word involved)
    ;; and are leaving it Nil.  This gives it a trivial value so that
    ;; at least the selected bar on the screen looks nice and isn't
    ;; something going over a whole line
    (setq end (1+ start)))

  (when (text-view-segment-is-selected)
    ;; Deselect anything that's already selected so that we have
    ;; a relatively clean screen. N.b. this was put in while working
    ;; on the problem of ugly confusing fred selections that the
    ;; default value for 'end' fixed. It might therefore be redundant.
    (unselect-selected-text-view-segment start))

  (ccl::set-selection-range *text-out* start end)
  (ccl::fred-update *text-out*)

  (when obj
    (etypecase obj
      (edge
       (if (polyword-p (edge-category obj))
         (ccl:dialog-item-enable *wb/define-word-button*)
         (ccl:dialog-item-disable *wb/define-word-button*)))
      (word (ccl:dialog-item-enable *wb/define-word-button*)))))



(defun text-view-segment-is-selected ()
  (when *text-out*
    (multiple-value-bind (from to)
                         (ccl:selection-range *text-out*)
      (and (not (eql from to))
           to))))

(defun unselect-selected-text-view-segment (&optional index)
  (when *text-out*
    (if index
      (ccl::set-selection-range *text-out* index index)
      (ccl::set-selection-range *text-out* 1 1))
    (ccl::fred-update *text-out*)
    ))





(defun select-text-for-edge (e)
  ;; Called from Act-on-edge-in-view, the routine that's called when
  ;; you select an edge from the edge-view table.
  ;;    When e is a 'cons' is represents the encoding of a word
  ;; i.e. `(,start-pos ,word ,end-pos ,depth)

  (let* ((start-pos (etypecase e
                      (edge (pos-edge-starts-at e))
                      (cons (first e))))
         (end-pos (etypecase e
                    (edge (pos-edge-ends-at e))
                    (cons (third e))))
         (edge (etypecase e
                 (edge e)
                 (cons (second e))))

         (start (car (pos-display-char-index start-pos)))
         (end (car (pos-display-char-index end-pos)))
         (line (cdr (pos-display-char-index end-pos))))

    (when (pos-preceding-whitespace end-pos)
      (let ((ws (pos-preceding-whitespace end-pos)))
        (setq end (- end (length (word-pname ws))))))

    (if line
      ;; if the selected edge is the last one in the view during
      ;; a section-driven pause, then the line data for its
      ;; end position won't be ready yet.
      (unless (line-is-visible-in-text-view? line)
        (scroll-text-view-to-show-line line))
      (let ((start-line
             (cdr (pos-display-char-index start-pos))))
        (unless (line-is-visible-in-text-view? start-line)
          (scroll-text-view-to-show-line start-line))))

    (select-text-region start end edge)
    (synchronize-walk-state-with-edges-view-selection e)))



(defun select-text-for-display-record (record individual)
  ;; usually called from Act-on-item-in-aux-subview via the 'edge'
  ;; returned by the 'subview-to-edge' routine.  Alternatively
  ;; might be called directly from the aux-view's selection actions.
  ;;
  ;; The record will have one of two forms. Either a cons 
  ;; of two numerical conses, e.g.
  ;;     ((4050 . 75)  4073 . 76)
  ;; where the first is the starting information (offset and
  ;; line) and the second is the end information,
  ;;
  ;; or, as a cons of two positions. If we have positions, we
  ;; get the same information as would have been provided by
  ;; the data in the numerical conses, but we get it from the
  ;; live positions
  (declare (ignore individual))
  
  (when (eq (car record) :display-index)
    (setq record (cdr record)))

  (let* ((start-data (car record))
         (end-data (cdr record))
         line  )

    (when (position-p start-data)
      (setq start-data (pos-display-char-index start-data)
            end-data (pos-display-char-index end-data)))
          

    (setq line (cdr end-data))
    (unless line
      (break "display record does not include line information"))

    (unless (line-is-visible-in-text-view? line)
      (scroll-text-view-to-show-line line))
    (select-text-region (car start-data) (car end-data))))



;;;------------------------------------------------------------
;;; synchronizing the display with a given edge / set-of-edges
;;;------------------------------------------------------------

(defun synchronize-with-workbench-views (start-edge  &optional end-edge)
  "When the Text-View of the Workbench is being used, this routine
will scroll the view as necessary to make the end position
of the argument edge visible near the bottom of the view,
and to make the start edge appear at the top of the edge view."

  ;; called from Synchronize/should-we-pause?
  (if end-edge
    (synchronize-with-segment-readout start-edge end-edge)
    (synchronize-with-segment-readout (pos-edge-starts-at start-edge)))

  (when *text-out*
    (if end-edge
      (make-leading-edge-visible end-edge)
      (scroll-text-view-to-expose-position (pos-edge-starts-at start-edge)))

    (when *edges-table*
      (when *show-document-edges?*
        (update-edge-list-for-current-article start-edge)
        (select-synchronized-edge start-edge)))

    (when *auxiliary-subview*
      (update-auxiliary-view))))



(defun synchronize-with-workbench-views/pos (end-pos)
  ;; called from Synchronize/should-we-pause? when only a position
  ;; was passed in rather than two edges
  (synchronize-with-segment-readout end-pos)
  (when *text-out*
    (scroll-text-view-to-expose-position end-pos)

    (when *show-document-edges?*
      (unless (eq (pos-terminal end-pos) *end-of-source*)
        ;; if we're pointing to the eos, there won't be an edge to synchronize with.

        (let ((cons `(,end-pos
                      ,(pos-terminal end-pos)
                      ,(chart-position-after end-pos)
                      0 )))  ;; added this 'indentation level 0' to the cons
          ;; 11/9/95 when Scroll-edges-view/cons couldn't
          ;; find the location.  The cons forms stored in the
          ;; edges table are all 4 items long
          
          (update-edge-list-for-current-article cons)
          (wb/select-edge cons))))

    (when (null (pos-terminal (chart-position-after end-pos)))
      ;; The call to wb/select-edge just above will have traveled through
      ;; Synchronize-walk-state-with-edges-view-selection and had the effect
      ;; of setting *wb/position-where-last-treetop-ended* to this position
      ;; that doesn't have a terminal, which would greatly confuse the
      ;; Select-next-treetop routine, which assumes that those synchronization
      ;; operations were initiated by the user clicking on edges or content
      ;; and not from an operation that will land it at the end of the chart.
      ;;   To avoid having to grossly recalibrate that routine, we'll just
      ;; turn the button off.
      (ccl:dialog-item-disable *next-button*))))



(defun make-leading-edge-visible (edge)
  (let* ((end-pos (pos-edge-ends-at edge))
         ;; This is called by section-marker routines, which
         ;; will create their edge before the position at which
         ;; it ends has been scanned or otherwise manipulated
         ;; by the display routines, so it won't have any
         ;; display information yet.   It's probably ok to
         ;; work off the position before it. 
         (end-wb-line
          (cdr (pos-display-char-index
                (chart-position-before end-pos)))))

    ;; check whether the line is visible
    (bounce-line-off-bottom end-wb-line)))



;;;------------------------------------------------------
;;; string corresponding to a selection in the text view
;;;------------------------------------------------------

(defun selected-string-in-tv ()
  (let ((buffer *text-out*))
    (when buffer
      (multiple-value-bind (start end)
                           (ccl:selection-range buffer)
        
        (unless (eql start end)
          ;; check that there is indeed something selected
          (ccl:buffer-substring (ccl:fred-buffer buffer)
                                start end))))))


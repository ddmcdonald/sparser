;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "window"
;;;   module:  "interface;workbench:"
;;;  Version:  0.4 March 1994

;; initiated 11/11/93 v2.3
;; 0.1 (1/3/94) Adapting the initial window-based design to view-based for the workbench
;;     (1/14) fixed assumption in clear-window that the w.b. is up
;; 0.2 (2/23) added control of the 'next' button and flag that indicates
;;      that text has been displayed to the wb.
;; 0.3 (3/10) moved the per-run initialization form to [initializations]
;; 0.4 (3/30) fleshing out scrolling stubs

(in-package :sparser)

;;;----------------------------------
;;; view inside the workbench window
;;;----------------------------------

(defclass Text-output-view (fred-dialog-item) ())

(defun setup-text-output-view ()
  (setq *text-out*
        (make-instance 'text-output-view ;;'fred-dialog-item
          :view-container *workshop-window*
          :view-size #@(480 100)    ;; nine lines long, about 80 characters wide
          :view-position #@(10 38)  ;; 10 over, 38 down
          :view-font '("courier" 10 :plain)
          ))
  (setq *display-text-to-special-window* t))


(defparameter *text-view-line-length* 80)

(defparameter *text-view-page-size* 9)


;;;------------------------
;;; displaying to the view
;;;------------------------

(defun write-to-text-window (string)
  ;; called from write-current-token-to-article-stream by way
  ;; of write-token, where it's sensitive to the flag
  ;; *display-text-to-special-window* 

  (unless *text-displayed-to-wb?*
    (setq *text-displayed-to-wb?* t)
    (ccl:dialog-item-enable *next-button*))

  (write-string string *text-out*)
  (force-output *text-out*))



;;;---------------------------------------------
;;; selecting the text corresponding to an edge
;;;---------------------------------------------

;  selection-range (w)  -- returns the bounds of the selection
;  set-selection-range (w start end)  -- establishes the selection

(defun select-text-region (start end obj)
  ;; do the fred actions that select the string (from start to end)
  ;; and manage the Define-word button
  (ccl::set-selection-range *text-out* start end)
  (ccl::fred-update *text-out*)
  (etypecase obj
    (edge
     (if (polyword-p (edge-category obj))
       (break "definable polyword -- set it up")
       (ccl:dialog-item-disable *wb/define-word-button*)))
    (word (ccl:dialog-item-enable *wb/define-word-button*))))



(defun select-text-for-edge (e)
  ;; called from Act-on-edge-in-view, the routine that's called when
  ;; you select an edge from the table directly.
  (etypecase e
    (edge
     (let* ((start (pos-character-index (pos-edge-starts-at e)))
            (end-pos (pos-edge-ends-at e))
            (end (if (pos-preceding-whitespace end-pos)
                   (let ((ws (pos-preceding-whitespace end-pos)))
                     (- (pos-character-index end-pos)
                        (length (word-pname ws)))) ;; as long as there's just one
                   (pos-character-index end-pos))))

       (select-text-region start end e)))

    (cons
     ;; an encoding of a word: `(,start-pos ,word ,end-pos ,depth)
     (let* ((end-pos (third e))
            (end (if (pos-preceding-whitespace end-pos)
                   (let ((ws (pos-preceding-whitespace end-pos)))
                     (- (pos-character-index end-pos)
                        (length (word-pname ws))))
                   (pos-character-index end-pos))))

       (select-text-region (pos-character-index (first e))
                           end
                           (second e)))))

  (synchronize-walk-state-with-edges-view-selection e))




;;;-------------------------
;;; scrolling the text view
;;;-------------------------

(defparameter *text-scroll-bar* nil)

(defclass text-views-v-scroll-bar (scroll-bar-dialog-item) ())

(defun setup-text-scroll-bar ()
  (setq *text-scroll-bar*
        (make-instance 'text-views-v-scroll-bar
          :view-container *workshop-window*
          :view-position #@(492 35)  ;; keep in sync w/ text view
          :view-size #@(16 117)      ;; ditto
          :scrollee *text-out*
          )))


(defmethod track-scroll-bar ((bar text-views-v-scroll-bar) value part)
  ;; this is called when you click inside the scroll bar
  (format t "~&part = ~A  value = ~A~%" part value)
  (case part
    (:in-down-button
     (scroll-text-view-down-one-line))
    (:in-up-button
     (scroll-text-view-up-one-line))
    (:in-page-up
     (scroll-text-view-up-one-page))
    (:in-page-down
     (scroll-text-view-down-one-page))
    (:in-thumb
     (scroll-text-view-to-follow-thumb value))
    (othewise
     (break "New part in the text-view scroll bar: ~A" part))))


(defun scroll-text-view-to-follow-thumb (thumb-setting)
  (adjust-text-view-to-scroll-bar-position thumb-setting))


(defun scroll-to-top-of-text-view ()
  (set-fred-display-start-mark *text-out*
                               (index-of-first-character 0))
  (setq *wb/top-line-of-text-view* 0)
  (set-scroll-bar-setting *text-scroll-bar* 0)
  (setq *wb/text-view-scroll-bar-setting* 0))


(defun scroll-to-bottom-of-text-view ()
  (set-fred-display-start-mark *text-out*
                               (index-of-first-character *line-count*))
  (setq *wb/top-line-of-text-view* *line-count*)
  (set-scroll-bar-setting *text-scroll-bar* 100)
  (setq *wb/text-view-scroll-bar-setting* 100))


(defun scroll-text-view-up-one-line ()
  (let ((new-line# (1- *wb/top-line-of-text-view*)))
    (if (< new-line# 0)
      t ;;(format t "~&attempt to scroll past beginning of view~%")
      (else
        (set-fred-display-start-mark
         *text-out* (index-of-first-character new-line#))
        (setq *wb/top-line-of-text-view* new-line#)
        (adjust-scroll-bar-position-to-view-top)))))


(defun scroll-text-view-down-one-line ()
  (let ((new-line# (1+ *wb/top-line-of-text-view*)))
    (if (> new-line# *line-count*)
      t  ;;(format t "~&attempt to scroll past end of view~%")
      (else
        (set-fred-display-start-mark
         *text-out* (index-of-first-character new-line#))
        (setq *wb/top-line-of-text-view* new-line#)
        (adjust-scroll-bar-position-to-view-top)))))

(defun scroll-text-view-up-one-page ()
  ;(format t "~&up one page~%")
  (let ((new-top-line# (- *wb/top-line-of-text-view*
                          (1- *text-view-page-size*))))
    (if (< new-top-line# 0)
      (when (not (= 0 *wb/top-line-of-text-view*))
        ;; then we can scroll up a little bit
        (setq new-top-line# 0)
        (set-fred-display-start-mark
         *text-out* (index-of-first-character new-top-line#))
        (setq *wb/top-line-of-text-view* new-top-line#)
        (adjust-scroll-bar-position-to-view-top))
      (else
        ;; we can scroll up an entire page
        (set-fred-display-start-mark
         *text-out* (index-of-first-character new-top-line#))
        (setq *wb/top-line-of-text-view* new-top-line#)
        (adjust-scroll-bar-position-to-view-top)))))


(defun scroll-text-view-down-one-page ()
  ;(format t "~&down one page~%")
  (let ((new-top-line# (+ *wb/top-line-of-text-view*
                          (1- *text-view-page-size*))))
    (unless (> new-top-line# *line-count*)
      ;; we're not already at the bottom of the text
      (set-fred-display-start-mark
       *text-out* (index-of-first-character new-top-line#))
      (setq *wb/top-line-of-text-view* new-top-line#)
      (adjust-scroll-bar-position-to-view-top))))


(defun adjust-scroll-bar-position-to-view-top ()
  (let* ((factor (/ *wb/top-line-of-text-view* *line-count*))
         (new-setting (* (scroll-bar-max *text-scroll-bar*) factor)))
    (when (not (integerp new-setting))
      (setq new-setting (floor new-setting)))
    (set-scroll-bar-setting *text-scroll-bar* new-setting)
    (setq *wb/text-view-scroll-bar-setting* new-setting)))


(defun adjust-text-view-to-scroll-bar-position (current-setting)
  (let* ((scroll-pixels-per-view-line (round 100 *line-count*))
         (change-this-time (- *wb/text-view-scroll-bar-setting*
                              current-setting ;;(scroll-bar-setting *text-scroll-bar*)
                              )))
    ;(format t "~&delta = ~A   #lines to move = ~A    down? = ~A~%"
    ;        change-this-time
    ;        (abs (round change-this-time scroll-pixels-per-view-line))
    ;        (< change-this-time 0))
    (cond ((> (abs change-this-time) scroll-pixels-per-view-line)
           (dotimes (i (abs (round change-this-time
                                   scroll-pixels-per-view-line)))
             (if (< change-this-time 0)
               ;; a negative change means we're going up
               (scroll-text-view-down-one-line)
               (scroll-text-view-up-one-line))))
          ((= current-setting 0)
           ;; we're at the top, but the last change might not have crossed
           ;; the threshold since these sizings aren't exact
           (scroll-to-top-of-text-view))
          ((= current-setting 100) ;; sync. with max setting of the scroll bar
           (scroll-to-bottom-of-text-view)))

    (setq *wb/text-view-scroll-bar-setting*
          (scroll-bar-setting *text-scroll-bar*))))
            


(defmethod scroll-bar-changed ((text-view text-output-view)
                               (bar text-views-v-scroll-bar))

  ;; with thumb-p non-nil, this is called every instant that the
  ;; thumb button of the scroll bar is being moved.
  (format t "~&stub: scroll-bar-changed~%"))
  


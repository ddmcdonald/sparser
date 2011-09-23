;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "text view scrolling"
;;;   module:  "interface;workbench:"
;;;  Version:  January 1995

;; broken out from [text view] 1/5/95, fixed incremental scrolling of TV.

(in-package :sparser)

;;;----------------
;;; the scroll bar
;;;----------------

(defparameter *text-scroll-bar* nil)

(defclass text-views-v-scroll-bar (scroll-bar-dialog-item) ())

(defun setup-text-scroll-bar
       (&key (container *workshop-window*)
             (position #@(492 35)) ;; keep in sync w/ text view
             (size #@(16 117)))    ;; ditto

  (setq *text-scroll-bar*
        (make-instance 'text-views-v-scroll-bar
          :view-container container
          :view-position  position
          :view-size size
          :scrollee *text-out*
          )))


#| "Scrolling" is a matter of setting the Fred display mark to
   a character position in the view that is somewhere in the
   line that you want to be at the top of the view.  You then
   tweek the scroll bar to move to a comparable position 
   percentage-wise within the scroll segment.  

      The data we have to work from is a line number. We get
   from the line number to a character position to set the mark
   to by looking at the character number stored in the *documents-
   lines* array via the Index-of-first-character function.  |#


;;---- predicates

(defun line-is-visible-in-text-view? (integer)
  (and (<= *wb/top-line-of-text-view* integer)
       (< integer
          (+ *wb/top-line-of-text-view*
             *text-view-page-size*))))




;;---- call from other than manipulations of the scroll bar

(defun scroll-text-view-to-expose-position (end-pos)
  (let ((end-wb-line (cdr (pos-display-char-index end-pos))))
    ;; check whether the line is visible
    (when (> end-wb-line (+ *wb/top-line-of-text-view*
                            *text-view-page-size*))
      (if (eq end-wb-line *number-of-full-lines-in-text-view*)
        ;; does the paragraph end on the last line that's displayed?
        (then
          ;; leave a blank line at the bottom so it's clear that
          ;; this is as far as we've gotten
          (scroll-to-bottom-of-text-view)
          (scroll-text-view-down-one-line))
        (scroll-text-view-to-show-line end-wb-line)))))



(defun bounce-line-off-bottom (line)
  ;; This is useful when tracking the rightmost position in 
  ;; the parse because it appreciates when the line is the last
  ;; in the view and leaves it just off the bottom.
  (when (> line (+ *wb/top-line-of-text-view*
                   *text-view-page-size*))
    ;; don't do anything if we're still in the first page of the view

    (if (= line *number-of-full-lines-in-text-view*)
      ;; does the edge end on the last line that's displayed?
      (scroll-text-view-down-one-line)
      (scroll-text-view-to-show-line line))))



(defun scroll-to-top-of-text-view ()
  (set-fred-display-start-mark *text-out* 1)
  (setq *wb/top-line-of-text-view* 0)
  (set-scroll-bar-setting *text-scroll-bar* 0)
  (setq *wb/text-view-scroll-bar-setting* 0))

(defun scroll-to-bottom-of-text-view ()
  (let ((index-of-top-line (- *line-count*
                              (1- *text-view-page-size*))))
    (set-fred-display-start-mark
     *text-out* (index-of-first-character index-of-top-line))
    (setq *wb/top-line-of-text-view* index-of-top-line)
    (set-scroll-bar-setting *text-scroll-bar* 100)
    (setq *wb/text-view-scroll-bar-setting* 100)))



(defun scroll-text-view-to-show-line (linenum)
  (if (> linenum *wb/top-line-of-text-view*)
    (scroll-tv-down-to-show-line linenum)
    (scroll-tv-up-to-show-line linenum)))


(defun scroll-tv-down-to-show-line (linenum)
  ;; position the line to be third from the bottom
  (let ((new-top-line (+ (- linenum
                            *text-view-page-size*)
                         3)))
    (if (<= new-top-line 0)
      (scroll-to-top-of-text-view)
      (scroll-tv-to new-top-line))))

(defun scroll-tv-up-to-show-line (linenum)
  ;; position the line to be third from the top
  (let ((new-top-line (- linenum 3)))
    (cond ((>= new-top-line *line-count*)
           (scroll-to-bottom-of-text-view))
          ((<= new-top-line 0)
           (scroll-to-top-of-text-view))
          (t (scroll-tv-to new-top-line)))))


(defun scroll-tv-to (linenum)
  ;; make the line of the text view with that index number be
  ;; the top line of the view and adjust the scroll bar to match.
  (set-fred-display-start-mark
   *text-out* (index-of-first-character linenum))
  (setq *wb/top-line-of-text-view* linenum)
  (adjust-scroll-bar-position-to-view-top))


(defun adjust-scroll-bar-position-to-view-top ()
  (let* ((factor (/ *wb/top-line-of-text-view* *line-count*))
         (new-setting (* (scroll-bar-max *text-scroll-bar*) factor)))
    (when (not (integerp new-setting))
      (setq new-setting (floor new-setting)))
    (set-scroll-bar-setting *text-scroll-bar* new-setting)
    (setq *wb/text-view-scroll-bar-setting* new-setting)))



;;---- calls via the scroll bar

(defmethod track-scroll-bar ((bar text-views-v-scroll-bar) value part)
  ;; this is called when you click inside the scroll bar
  ;(format t "~&part = ~A  value = ~A~%" part value)
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



(defun scroll-text-view-to-follow-thumb (thumb-setting)
  (adjust-text-view-to-scroll-bar-position thumb-setting))

(defun adjust-text-view-to-scroll-bar-position (current-setting)
  (let* ( lines-per-scroll-pixel
         (scroll-pixels-per-view-line
          (if (> *line-count* 100)
            (setq lines-per-scroll-pixel (round *line-count* 100))
            (round 100 *line-count*)))
         (change-this-time (- *wb/text-view-scroll-bar-setting*
                              current-setting ;;(scroll-bar-setting *text-scroll-bar*)
                              )))
    ;(format t "~&delta = ~A   #lines to move = ~A    down? = ~A~%"
    ;        change-this-time
    ;        (abs (round change-this-time scroll-pixels-per-view-line))
    ;        (< change-this-time 0))

    (cond ((= current-setting 0)
           ;; we're at the top, but the last change might not have crossed
           ;; the threshold since these sizings aren't exact
           (scroll-to-top-of-text-view))
          ((= current-setting 100) ;; sync. with max setting of the scroll bar
           (scroll-to-bottom-of-text-view))
          (lines-per-scroll-pixel
           (dotimes (i (* (abs change-this-time) lines-per-scroll-pixel))
             (if (< change-this-time 0)
               ;; a negative change means we're going up
               (scroll-text-view-down-one-line)
               (scroll-text-view-up-one-line))))
          ((> (abs change-this-time) scroll-pixels-per-view-line)
           (dotimes (i (abs (round change-this-time
                                   scroll-pixels-per-view-line)))
             (if (< change-this-time 0)
               ;; a negative change means we're going up
               (scroll-text-view-down-one-line)
               (scroll-text-view-up-one-line)))))

    (setq *wb/text-view-scroll-bar-setting*
          (scroll-bar-setting *text-scroll-bar*))))
            


(defmethod scroll-bar-changed ((text-view text-output-view)
                               (bar text-views-v-scroll-bar))

  ;; with thumb-p non-nil, this is called every instant that the
  ;; thumb button of the scroll bar is being moved.
  (format t "~&stub: scroll-bar-changed~%"))
  


;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "select"
;;;   module:  "interface;windows:articles:"
;;;  Version:   1.0  January 1991

;; initiated 1/91, added Select-edge 3/29/92

(in-package :sparser)

;;;---------
;;; drivers
;;;---------

(defun select-segment (s)
  ;; called (indirectly) from Walk-analysis
  (let ((label       (symbol-name (first s)))
        (start-index (second s))
        (end-index   (third s)))

    (select-region/article-window
     start-index end-index *current-article-window* label)
    :selected ))



(defun select-text-covered-by-edge/current-article (e)
  (let ((label (format nil "e~A ~6,2t~A"
                       (edge-position-in-resource-array e)
                       (string-downcase
                        (symbol-name (cat-symbol (edge-category e))))))
        (start-index
         (pos-character-index (ev-position (edge-starts-at e))))
        (end-index
         (pos-character-index (ev-position (edge-ends-at e)))))

    (select-region/article-window
     start-index end-index *current-article-window* label)
    :selected ))



;;;----------------------
;;; acting on the window
;;;----------------------

(defun select-region/article-window (start end w
                                     &optional mini-buffer-text )
  (unless (and (integerp start)
               (integerp end))
    (error "Bad start/end argument(s).  They should be integers~
            ~%  start = ~A   end = ~A" start end))
  (ask w
    (set-mark (window-cursor-mark) end)
    (set-selection-range start)
    (window-update))

  (if mini-buffer-text
    (ask w (set-mini-buffer mini-buffer-text))
    (ask w (set-mini-buffer "")))

  :selected)


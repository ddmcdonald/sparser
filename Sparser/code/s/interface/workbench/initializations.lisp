;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "initializations"
;;;   module:  "interface;workbench:"
;;;  Version:  0.2 April 1995

;; broken out from [globals] 2/28/94 v2.3. Moved in the pre-run
;; initializations 3/10
;; 0.1 (3/22) adapting it to take a general API spec.
;;     (7/13) tweeked that adaption  (7/20) added item-walk initializations
;;     (7/27) added pause-item initialization
;; 0.2 (8/16) explicitly setting *display-word-stream* to *text-out*
;;     (9/7) added items for extensions to aux-subview api Tweeked ...9/14
;;     (2/28/95) added *parent-and-children-mix* to clear-..window
;;     (4/21) added *edges/inspect-button*

(in-package :sparser)

;;;------------------------------------------
;;; operations when wb windows open or close
;;;------------------------------------------

(defun setup-additional-wb-state ()
  ;; called from Launch-the-all-in-one-workbench
  (ccl:dialog-item-disable *next-button*)
  (ccl:dialog-item-disable *previous-button*)
  (ccl:dialog-item-disable *up-button*)
  (ccl:dialog-item-disable *down-button*)
  (ccl:dialog-item-disable *wb/pause-button*)
  (ccl:dialog-item-disable *wb/define-word-button*)
  (ccl:dialog-item-disable *edges/open-button*)
  (ccl:dialog-item-disable *edges/close-button*)
  (ccl:dialog-item-disable *edges/inspect-button*)
  (ccl:dialog-item-disable *iw/backwards-button*)
  (ccl:dialog-item-disable *iw/forwards-button*)
  (ccl:set-dialog-item-text *iw/iteration-text* "")

  (setq *display-text-to-special-window* t
        *wb/top-line-of-text-view* 0
        *wb/text-view-scroll-bar-setting* 0
        *text-displayed-to-wb?* nil
        *display-word-stream* *text-out*
        *unit* nil
        ))



(defun close-down-wb-state ()
  ;; called from the window-close method for Workbench when
  ;; closing the all-in-one workbench window
  (when *edges-table*
    (set-table-sequence *edges-table* nil))
  (when *independent-subview-window*
    (ccl:window-close *independent-subview-window*))
  (when *independent-text-view-window*
    (close-down-independent-text-view))
  (setq *display-text-to-special-window* nil
        *wb/current-edge* nil
        *wb/position-where-last-treetop-ended* nil
        *workshop-window* nil
        *text-out* nil
        *edges-table* nil
        *edges-in-view-of-current-article* nil
        *gaps-of-unknown-words* nil
        *edge-view/number-of-levels-opened* 0
        *text-displayed-to-wb?* nil
        *selected-cell/index/edges-view* nil
        *auxiliary-subview* nil
        *parent-and-children-mix* nil
        *prior-unit-selected-in-aux-subview* nil)
  (ccl:set-dialog-item-text *iw/iteration-text* ""))


(defun close-down-independent-subview-window ()
  (ccl:set-dialog-item-text *iw/current-unit* "")
  (setq *parent-and-children-mix* nil
        *unit* nil
        *prior-unit-selected-in-aux-subview* nil
        *independent-subview-window* nil))


(defun close-down-independent-text-view ()
  (setq *independent-text-view-window* nil
        *text-out* nil)
  (ccl:set-dialog-item-text *iw/iteration-text* ""))


(defun close-down-the-autodef-window ()
  ;; called from the window-close method of the window
  (setq *autodefine-window* nil
        *autodef-view* nil
        *selected-autodef* nil
        *ad/word-being-defined* nil
        *adt/number-of-levels-opened* 0)
  (ccl:set-dialog-item-text *ad/example-text* ""))


(defun close-down-inspector-window ()
  ;; called from the window-close method of the window
  (clear-inspector-display-table)
  (set-dialog-item-text *i/unit-selected-text* "")
  (setq *inspector-dialog* nil
        *object->inspector-index/alist* nil
        *last-cons-in-inspector-table* nil
        *furthest-filled-cell-in-inspector-table* nil
        ))
  



;;;-------------------------
;;; per-run initializations
;;;-------------------------

(define-per-run-init-form '(clear-special-text-display-window))

(defun clear-special-text-display-window ()
  (when *text-out*
    (ccl::select-all *text-out*)
    (ccl::clear *text-out*)
    (setq *offset-of-insertion-point* 0
          *number-of-full-lines-in-text-view* 0)
    (ccl:dialog-item-disable *next-button*)
    (ccl:dialog-item-disable *previous-button*)
    (ccl:dialog-item-disable *up-button*)
    (ccl:dialog-item-disable *down-button*)
    (ccl:dialog-item-disable *wb/define-word-button*)
    (setq *wb/position-where-last-treetop-ended* nil
          *wb/top-line-of-text-view* 0
          *wb/text-view-scroll-bar-setting* 0
          *text-displayed-to-wb?* nil)
    (when *selected-cell/index/edges-view*
      (cell-deselect *edges-table* 0 *selected-cell/index/edges-view*))
    (setq *selected-cell/index/edges-view* nil
          *selected-edge/edges-view* nil
          *gaps-of-unknown-words* nil
          *edge* nil)
    (when *edges-table*
      (set-table-sequence *edges-table* nil))
    (setq *parent-and-children-mix* nil)

    ;;/// generalize through API data
    (when *auxiliary-subview*
      (clear-auxiliary-wb-view))

    (ccl:dialog-item-disable *edges/open-button*)
    (ccl:dialog-item-disable *edges/close-button*)
    (ccl:dialog-item-disable *edges/inspect-button*)
    (clear-auxiliary-wb-view)

    (ccl:dialog-item-disable *iw/forwards-button*)
    (ccl:dialog-item-disable *iw/backwards-button*)
    (ccl:set-dialog-item-text *iw/iteration-text* "")))


;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "swapping modes"
;;;   module:  "interface;workbench:"
;;;  Version:  0.3 February 1995

;; broken out from [globals] 2/28/94 v2.3.
;; 0.1 (3/22) adapting it to take a general API spec.  ... 3/30
;; 0.2 (6/8) put a guard in Update-workbench to not run unless wb is up
;;     (8/16) put in check that a mode is defined
;; 0.3 (12/13) added a text+edges view.
;; 0.4 (2/3/95) using a global parameter to determine the subview in the
;;      :separate-windows case

(in-package :sparser)

;;;----------------------------------------
;;; switching between the various subviews
;;;----------------------------------------

(defun initialize-subview-state ()
  ;; called from Setup-additional-wb-state when the workbench is 
  ;; brought up.  The status of the subviews is controlled from the
  ;; wb/preferences tableau, and could be changed between runs
  ;; of the workbench.
  (if (null *current-wb-subview-mode*)
    (format t "~&~%----------------------------------------------~
               ~%  No mode has been choosen for the Workbench~
               ~%  Please close the window and make a selection~
               ~%  from the preferences dialog.~
               ~%----------------------------------------------~%~%")
    (ecase *current-wb-subview-mode*

      (:nothing ;; just the text view
       (when (or *show-document-edges?*
                 *current-wb-subview-mode*)
         (revert-to-original-workbench-size))
       (when *auxiliary-subview*
         (clear-auxiliary-wb-view))
       (setq *show-document-edges?* nil
             *current-wb-subview-mode* nil))

      (:edges
       ;; cleanup the subview area if it had anything in it
       (when *current-aux-subview* ;; this is the object
         (clear-auxiliary-wb-view)
         (setq *current-aux-subview* nil))
       (when *auxiliary-subview*
         ;; this is the view, check that it was launched
         (when *workshop-window* ;; and we're in all-in-one mode
           (ccl:remove-subviews *workshop-window*
                                *auxiliary-subview*)
           (setq *auxiliary-subview* nil)
           (hide-aux-view-buttons)))
       (size-workbench-for-edges-view)
       (initialize-edges-subview))

      (:edges-&-objects
       (let ((subview (wb-subview-named :edges-&-objects)))
         (setq *current-aux-subview* subview)
            ;; this is the object that specifies the parameter values
         (setq *auxiliary-subview* nil)
            ;; this is the window/view -- by zeroing it we insure that
            ;; it will be launched anew, which makes a difference if
            ;; we're switching workbench configurations
         (set (wbsv-flag subview) t)
         (size-workbench-for-edges-view)
         (initialize-edges-subview)
         (initialize-auxiliary-view)))

      (:separate-windows
       (let ((subview (or *independent-aux-subview-to-use*
                          (wb-subview-named :domain-model-view))))
         (setq *current-aux-subview* subview)
         (set (wbsv-flag subview) t)
         (initialize-auxiliary-view))))))



(defun initialize-edges-subview ()
  (setq *show-document-edges?* t)
  (update-edges-display)
  (when *edges-table*
    ;; the update will act like we've just finished a run, and will 
    ;; gratuitously populate the table from the last run, whatever
    ;; it might have been, so we have to re-initialize it.
    (set-table-sequence *edges-table* nil)))



(defun update-workbench ()
  ;; called from do-the-last-things-in-an-analysis //and eventually
  ;; as an after-paragraph action
  (when *workshop-window*
    (case *current-wb-subview-mode*
      (:nothing
       (when *show-document-edges?*
         (revert-to-original-workbench-size))
       (setq *show-document-edges?* nil
             ))
      (:edges
       (setq *show-document-edges?* t)
       (update-edges-display))
      (otherwise
       (when *current-wb-subview-mode*
         (let ((subview (wb-subview-named *current-wb-subview-mode*)))
           (unless subview
             (error "There is no workbench subview named: ~A"
                    *current-wb-subview-mode*))
           (update-edges-display)
           (update-auxiliary-view)))))
    :done ))




(defun put-subview-buttons-in-initial-position ()
  (set-view-position *rb/show-edges* #@(20 145))
  (set-view-position *rb/show-content*  #@(130 145))
  (set-view-position *rb/show-segments* #@(255 145)))

(defun text-only-button-was-toggled (radio-button)
  ;; turn off all the flags that enable any of the subviews
  (declare (ignore radio-button))
  (when *current-wb-subview*
    (revert-to-original-workbench-size))
  (setq *current-wb-subview* nil
        *show-document-edges?* nil))


(defun show-edges-button-was-toggled (radio-button)
  (if (radio-button-pushed-p radio-button)
    (then
      ;; turn on the flags that will allow the edges view
      ;; to be shown
      (setq *current-wb-subview* :edges)
      (setq *show-document-edges?* t)
      (when *text-displayed-to-wb?*
        ;; then we want to get the display up now rather than
        ;; wait for the next run
        (initialize-edges-display)))
    
    (break "Confusion stub: the edges radio button toggle ~
            routine was called~%without the button being in ~
            the pushed state")))



(defun show-content-button-was-toggled (radio-button)
  (format t "~&Toggled ~A" radio-button)
  *show-document-referents?* )

(defun show-segments-button-was-toggled (radio-button)
  (format t "~&Toggled ~A" radio-button)
  *show-document-segmentation?* )  


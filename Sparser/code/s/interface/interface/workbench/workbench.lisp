;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "workbench"
;;;   module:  "interface;workbench:"
;;;  Version:  0.2 April 1995

;; 1/3/94 v2.3  started on top of code written by MCL's Interface tool (in fullcaps). 
;; 0.1 (2/23) added routine to return to original size.  (7/20) added
;;      widgets for item walk.  (7/27) added pause widget
;; 0.2 (9/10) put in alternatives for views distributed to their own windows
;;     (11/21) added 8 inch case to parameterization
;;     (12/13) added :edges view mode, and made the inclusion of the iw buttons
;;      conditional on the mode.
;;     (4/21/95) added *edges/workbench-button*

(in-package :sparser)

;;;--------------------------------------------------------
;;; dispatch off of the mode set in the preferences dialog
;;;--------------------------------------------------------

(defun launch-the-workbench ()
  ;; called from the Sparser menu by selecting the 'workbench' item
  (cond
   ((or (eq *current-wb-subview-mode* :nothing)  ;; just the text view
        (eq *current-wb-subview-mode* :edges)
        (eq *current-wb-subview-mode* :edges-&-objects))
    (launch-all-in-one-workbench))

   ((eq *current-wb-subview-mode* :separate-windows)
    (launch-text-view-as-independent-window)))

  (or *workshop-window*
      *independent-text-view-window*))


;;;-----------------------------------
;;; the Workbench window (all-in-one)
;;;-----------------------------------

(defclass Workbench (dialog) ())

(defun launch-all-in-one-workbench ()
    (setq *workshop-window*
          (MAKE-INSTANCE  'workbench
            :WINDOW-TYPE  :DOCUMENT-WITH-GROW  ;; vs. DOCUMENT once it's sized right
            :WINDOW-TITLE   "Workbench"
            :VIEW-POSITION   #@(0 38) ;; over - down
            ;; this will put the window even with the left margin of the
            ;; screen and immediately under the menu bar.
            :VIEW-SIZE    #@(520 180) ;; across - down
            :VIEW-FONT  '("Chicago" 12 :SRCOR :PLAIN)
            :VIEW-SUBVIEWS
            (LIST *next-button*
                  *previous-button*
                  *up-button*
                  *down-button*
                  *wb/pause-button*
                  *wb/define-word-button*
                  *edges/open-button*
                  *edges/close-button*
                  *edges/inspect-button*                  
                  )))
    (setup-text-output-view) ;; default values fit single wb window
    (setup-text-scroll-bar)  ;; ditto
    (locate-buttons-for-all-in-one-wb)
    (setup-additional-wb-state)
    (when (eq *current-wb-subview-mode* :edges-&-objects)
      (ccl:add-subviews *workshop-window* *iw/backwards-button*
                                          *iw/forwards-button*
                                          *iw/iteration-text*))
    (initialize-subview-state))
      


;;--------- closing it

(defmethod window-close ((wb workbench))
  (close-down-wb-state)
  (call-next-method wb))


;;--------- resizing it

(defun size-workbench-for-edges-view ()
  ;; the workbench is initially sized just to hold the text
  ;; view comfortably.  If we're looking at edges we need
  ;; to make it bigger.
  ;;   Called from Setup-edges-view and initialize-auxiliary-view
  (let* ((wb-size (ccl:view-size *workshop-window*))
         (vertical-extent (point-v wb-size)))
    (unless (> vertical-extent 200)
      ;; unless it's already been expanded, make it longer 
      ;; but with the original width. This length is the
      ;; maximum available on the Powerbook screen
      (ccl:set-view-size *workshop-window* #@(520 360)))))


(defun revert-to-original-workbench-size ()
  ;; this is when we want to hide the subviews
  (ccl:set-view-size *workshop-window* #@(520 168)))



;;;---------------------------------------
;;; setting up views in their own windows
;;;---------------------------------------

(defvar *independent-text-view-window* nil)

(defclass independent-text-view (dialog) ())


(defun launch-text-view-as-independent-window
       ( &optional (monitor-size *monitor-size*) )

  (let ( title  window-position  window-size
         view-size  view-position  number-of-lines-in-view
         scroll-bar-position  scroll-bar-size  )
    (ecase monitor-size
      (:20-inch
       (setq title            "Text View"
             window-position         #@(280 40)
             window-size             #@(507 420)
             view-size               #@(480 352)
             view-position           #@(5 5)
             number-of-lines-in-view 32
             scroll-bar-position     #@(489 2)
             scroll-bar-size         #@(16 358)))
      (:14-inch
       (setq title            "Text View"
             window-position         #@(5 50)
             window-size             #@(507 420)
             view-size               #@(480 352)
             view-position           #@(5 5)
             number-of-lines-in-view 32
             scroll-bar-position     #@(489 2)
             scroll-bar-size         #@(16 358)))
      (:8-inch
       (setq title            "Text View"
             window-position         #@(5 50)
             window-size             #@(507 350)
             view-size               #@(480 297) 
             view-position           #@(5 5)
             number-of-lines-in-view 27
             scroll-bar-position     #@(489 2)
             scroll-bar-size         #@(16 303))))

    (setq *independent-text-view-window*
          (make-instance 'independent-text-view
            :window-type :document  ;;-with-grow
            :window-title title
            :view-position window-position
            :view-size window-size
            :view-font '("Chicago" 12 :srcor :plain)
            :view-subviews (list
                            *iw/forwards-button*
                            *iw/backwards-button*
                            *iw/iteration-text*
                            *iw/current-unit*
                            *wb/pause-button*
                            )))

    (let ((text-view (setup-text-output-view
                      :container *independent-text-view-window*
                      :size view-size
                      :position view-position
                      :number-of-lines number-of-lines-in-view))
          
          (scroll-bar (setup-text-scroll-bar
                       :container *independent-text-view-window*
                       :position scroll-bar-position
                       :size scroll-bar-size)))
      
      (locate-buttons-for-separate-wb-windows)
      (initialize-subview-state)
      
      (values *independent-text-view-window*
              text-view
              scroll-bar ))))



;(launch-text-view-as-independent-window :20-inch)
;(launch-text-view-as-independent-window :14-inch)


;;--------- closing it

(defmethod window-close ((itv independent-text-view))
  (close-down-independent-text-view)
  (call-next-method itv))


;;;----------------------------------------------------------------
;;; Bringing up the aux-subview (domain model) at the end of a run
;;;----------------------------------------------------------------

(define-after-analysis-action '(launch-subview-after-analysis?))

;(remove-after-analysis-action '

(defun launch-subview-after-analysis? ()
  (when (eq *current-wb-subview-mode* :separate-windows)
     (launch-subview-as-independent-window)))


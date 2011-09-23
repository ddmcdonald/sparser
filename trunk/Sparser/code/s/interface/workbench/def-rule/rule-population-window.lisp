;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rule population window"
;;;   module:  "interface;workbench:def rule:"
;;;  Version:  December 1995

;; broken out of [define-rule] 4/27. 6/14 added initialization for
;; *rdt/reference-category*.  8/28 added dossier hooks.  11/16 extended
;; the canonical-positioning and warping-off-screen code. 11/17 added result 
;; announcement widgets. (12/5) fixed bug it initialization of that.  
;; 12/18 added the global for the autodef save routine to the state cleanup
;; routine. 12/26 tweeked Shutdown-rdt-rule-population-widget-state to reverse
;; possible effects of *slvd/tree-family-restriction*

(in-package :sparser)


(defparameter *rdt/rule-populating-window* nil)

(defclass rdt/rule-population-window (dialog) ())


(defun launch-rdt-rule-populating-window 
       (&key (position  #@(30 57))
             (size      #@(455 275)))
  (warp-announcement-widgets-off-screen)
  (setq *rdt/rule-populating-window*
        (MAKE-INSTANCE 'rdt/rule-population-window
          :WINDOW-TYPE  :DOCUMENT   ;;-WITH-GROW
          :window-title  "Populate rule schema"
          :VIEW-POSITION  position
          :VIEW-SIZE      size
          :VIEW-FONT  '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS
             (list  *rdtrpw/ok-button*
                    *rdtrpw/next-pattern-button*
                    *rdtrpw/change-schema-button*
                    *rdtrpw/abort-button*
           
                    *rdtrpw/syntax-label*
                    
                    *rdtrpw/lhs-radio-button*
                    *rdtrpw/lhs-input*
                    *rdtrpw/lhs-description*
                    
                    *rdtrpw/rhs/left/radio-button*
                    *rdtrpw/rhs/left/input*
                    *rdtrpw/rhs/left/description*
                    
                    *rdtrpw/rhs/right/radio-button*
                    *rdtrpw/rhs/right/input*
                    *rdtrpw/rhs/right/description*
                    
                    *rdtrpw/semantics-label*
                    *rdtrpw/reference-category-button*
                    
                    *rdtrpw/headline-radio-button*
                    *rdtrpw/headline-input*
                    *rdtrpw/headline-description*
                    
                    *rdtrpw/comp-radio-button*
                    *rdtrpw/comp-input*
                    *rdtrpw/comp-description*
                    
                    *rdtrpw/result-radio-button*
                    *rdtrpw/result-input*
                    *rdtrpw/result-description*

                    *rdt/dossier-label*
                    *rdt/dossier-namestring*
                    *rdt/change-dossier-button*

                    *rdt/result-rule-banner*
                    *rdt/result-rule-listing*
                    *rdt/result-saved-banner*
                    *rdt/result-saved-filename*
                    *rdt/result-view-file-button*
                    *rdt/result-ok-button*

                    )))
  (initialize-rdt-rule-population-widget-state))


(defmethod Window-close ((w rdt/rule-population-window))
  (close-down-rdt-rule-population-state)
  (call-next-method w))

(defun close-down-rdt-rule-population-state ()
  (setq *rdt/rule-populating-window* nil
        *predefined-partial-rdt-mapping* nil
        *slvd/save-routine* nil)
  (shutdown-rdt-rule-population-widget-state))


(defun shutdown-rdt-rule-population-widget-state ()
  (release-edges-table-from-rdt-input-fields)
  (release-inspector-from-rdt-input-fields)
  (when *slvd/tree-family-restriction*
    (setq *slvd/tree-family-restriction* nil)
    (populate-rdt-schema-table-items)))



(defun initialize-rdt-rule-population-widget-state ()
  (wire-edges-table-to-rdt-input-fields)
  (wire-inspector-to-rdt-input-fields)
  ;(setq *rdt/input-field-for-selected-edge*  6/15/95
  ;      *rdtrpw/rhs/right/input*)
  (setq *rdt/input-field-for-selected-edge* nil)

  (ccl:set-dialog-item-text *rdtrpw/lhs-input*             "lhs")
  (ccl:set-dialog-item-text *rdtrpw/rhs/left/input*        "rhs,  left-edge")
  (ccl:set-dialog-item-text *rdtrpw/rhs/right/input*       "rhs,  right-edge")
  (ccl:set-dialog-item-text *rdtrpw/headline-input*        "slot filled by head")
  (ccl:set-dialog-item-text *rdtrpw/comp-input*            "slot filled by comp/spec")
  (ccl:set-dialog-item-text *rdtrpw/result-input*          "category of result")

  (ccl:set-dialog-item-text *rdtrpw/lhs-description*       "spanning label")
  (ccl:set-dialog-item-text *rdtrpw/rhs/left/description*  "")  ;; the rest are done
  (ccl:set-dialog-item-text *rdtrpw/rhs/right/description* "")  ;; during the setup
  (ccl:set-dialog-item-text *rdtrpw/headline-description*  "")
  (ccl:set-dialog-item-text *rdtrpw/comp-description*      "")
  (ccl:set-dialog-item-text *rdtrpw/result-description*    "")

  (ccl:dialog-item-disable *rdtrpw/ok-button*)
  (set-default-button *rdt/rule-populating-window* *rdtrpw/ok-button*)
  (ccl:dialog-item-disable *rdtrpw/next-pattern-button*)
  (ccl:set-dialog-item-text *rdtrpw/next-pattern-button* "next pattern")
  (ccl:dialog-item-enable *rdtrpw/change-schema-button*)
  (ccl:dialog-item-enable *rdtrpw/abort-button*)

  (if *slvd/reference-category*  ;; from higher level driver
    (ccl:set-dialog-item-text *rdtrpw/reference-category-button*
                              (string-downcase
                               (cat-symbol *slvd/reference-category*)))
    (ccl:set-dialog-item-text *rdtrpw/reference-category-button*
                              "reference category"))

  (setq *rdt/reference-category* (or *slvd/reference-category*
                                     nil))

  (setq *rdt/lhs-label* nil)
  (setq *rdt/rhs-left-label* nil)
  (setq *rdt/rhs-right-label* nil)
  (setq *rdt/result-category* nil)
  (setq *rdt/head-line-category* nil)
  (setq *rdt/comp-category* nil)
  (setq *rdt/mapping-schema* nil)
  (setq *rdt/mapping* (or *predefined-partial-rdt-mapping*
                          nil))
  (setq *rdt/nailed-down-fields* nil)

  (initialize-rdt-dossier)

  (warp-announcement-widgets-off-screen)
  (set-rdt-widgets-to-canonical-positions))



;;;-----------------------------------------
;;; after-initialization widget positioning
;;;-----------------------------------------

(defun set-rdt-widgets-to-canonical-positions ()
  ;; called from Initialize-schema-selection-state
  (ccl:set-view-position *rdtrpw/ok-button* #@(14 187))
  (ccl:set-view-position *rdtrpw/next-pattern-button* #@(106 187))
  (ccl:set-view-position *rdtrpw/change-schema-button* #@(295 187))
  (ccl:set-view-position *rdtrpw/abort-button* #@(380 215))

  (ccl:set-view-position *rdtrpw/syntax-label* #@(84 7))

  (ccl:set-view-position *rdtrpw/lhs-radio-button* #@(3 39))
  (ccl:set-view-position *rdtrpw/lhs-input* #@(25 39))
  (ccl:set-view-position *rdtrpw/lhs-description* #@(25 62))

  (ccl:set-view-position *rdtrpw/rhs/left/radio-button* #@(3 84))
  (ccl:set-view-position *rdtrpw/rhs/left/input* #@(25 84))
  (ccl:set-view-position *rdtrpw/rhs/left/description* #@(25 108))

  (ccl:set-view-position *rdtrpw/rhs/right/radio-button* #@(3 129))
  (ccl:set-view-position *rdtrpw/rhs/right/input* #@(25 129))
  (ccl:set-view-position *rdtrpw/rhs/right/description* #@(25 154))

  (ccl:set-view-position *rdtrpw/semantics-label* #@(260 6))
  (ccl:set-view-position *rdtrpw/reference-category-button* #@(337 6))

  (ccl:set-view-position *rdt/dossier-label* #@(39 224))
  (ccl:set-view-position *rdt/dossier-namestring* #@(107 226))
  (ccl:set-view-position *rdt/change-dossier-button* #@(8 244))

  (setup-rdt-semantic-widgets-in-canonical-positions))




(defun setup-rdt-semantic-widgets-in-canonical-positions ()
  (place-result-widgets)
  (place-comp-widgets)
  (place-headline-widgets))

(defun warp-rdt-semantic-widgets-off-screen ()
  (warp-result-widgets-off-screen)
  (warp-comp-widgets-off-screen)
  (warp-head-widgets-off-screen))



(defun place-result-widgets ()
  (ccl:set-view-position *rdtrpw/result-radio-button* #@(228 39))
  (ccl:set-view-position *rdtrpw/result-input* #@(252 39))
  (ccl:set-view-position *rdtrpw/result-description* #@(252 62)))

(defun warp-result-widgets-off-screen ()
  ;; called from drirt/Just-bindings
  (ccl:set-view-position *rdtrpw/result-radio-button* #@(528 129))
  (ccl:set-view-position *rdtrpw/result-input* #@(552 39))
  (ccl:set-view-position *rdtrpw/result-description* #@(552 62)))


(defun place-comp-widgets ()
  (ccl:set-view-position *rdtrpw/comp-radio-button* #@(228 84))
  (ccl:set-view-position *rdtrpw/comp-input* #@(252 84))
  (ccl:set-view-position *rdtrpw/comp-description* #@(252 106)))

(defun warp-comp-widgets-off-screen ()
  (ccl:set-view-position *rdtrpw/comp-radio-button* #@(528 84))
  (ccl:set-view-position *rdtrpw/comp-input* #@(552 84))
  (ccl:set-view-position *rdtrpw/comp-description* #@(552 106)))

(defun warp-comp-widgets-to-head-position ()
  (ccl:set-view-position *rdtrpw/comp-radio-button* #@(228 129))
  (ccl:set-view-position *rdtrpw/comp-input* #@(252 129))
  (ccl:set-view-position *rdtrpw/comp-description* #@(252 154)))


(defun place-headline-widgets ()
  (ccl:set-view-position *rdtrpw/headline-radio-button* #@(228 129))
  (ccl:set-view-position *rdtrpw/headline-input* #@(252 129))
  (ccl:set-view-position *rdtrpw/headline-description* #@(252 154)))

(defun warp-head-widgets-off-screen ()
  (ccl:set-view-position *rdtrpw/headline-radio-button* #@(528 129))
  (ccl:set-view-position *rdtrpw/headline-input* #@(552 129))
  (ccl:set-view-position *rdtrpw/headline-description* #@(552 154)))

(defun warp-head-widgets-to-comp-position ()
  (ccl:set-view-position *rdtrpw/headline-radio-button* #@(228 84))
  (ccl:set-view-position *rdtrpw/headline-input* #@(252 84))
  (ccl:set-view-position *rdtrpw/headline-description* #@(252 106)))




(defun clear-widgets-off-the-rdt-visible-window-area ()
  ;; called from Initialize-schema-selection-state
  (ccl:set-view-position *rdtrpw/ok-button* #@(14 587))
  (ccl:set-view-position *rdtrpw/next-pattern-button* #@(106 587))
  (ccl:set-view-position *rdtrpw/change-schema-button* #@(295 587))
  (ccl:set-view-position *rdtrpw/abort-button* #@(380 515))

  (ccl:set-view-position *rdtrpw/syntax-label* #@(84 507))

  (ccl:set-view-position *rdtrpw/lhs-radio-button* #@(3 539))
  (ccl:set-view-position *rdtrpw/lhs-input* #@(25 539))
  (ccl:set-view-position *rdtrpw/lhs-description* #@(25 562))

  (ccl:set-view-position *rdtrpw/rhs/left/radio-button* #@(3 584))
  (ccl:set-view-position *rdtrpw/rhs/left/input* #@(25 584))
  (ccl:set-view-position *rdtrpw/rhs/left/description* #@(25 508))

  (ccl:set-view-position *rdtrpw/rhs/right/radio-button* #@(3 529))
  (ccl:set-view-position *rdtrpw/rhs/right/input* #@(25 529))
  (ccl:set-view-position *rdtrpw/rhs/right/description* #@(25 554))

  (ccl:set-view-position *rdtrpw/semantics-label* #@(260 506))
  (ccl:set-view-position *rdtrpw/reference-category-button* #@(337 506))

  (ccl:set-view-position *rdt/dossier-label* #@(39 524))
  (ccl:set-view-position *rdt/dossier-namestring* #@(107 526))
  (ccl:set-view-position *rdt/change-dossier-button* #@(8 544))

  (warp-rdt-semantic-widgets-off-screen))



(defun move-the-announcement-widgets-onto-the-rdt-window ()
  (ccl:set-view-position *rdt/result-rule-banner*  #@(14 10))
  (ccl:set-view-position *rdt/result-rule-listing* #@(50 33))
  (ccl:set-view-position *rdt/result-saved-banner* #@(7 186))
  (ccl:set-view-position *rdt/result-saved-filename* #@(39 201))
  (ccl:set-view-position *rdt/result-view-file-button* #@(50 248))
  (ccl:set-view-position *rdt/result-ok-button*        #@(380 239)))

(defun warp-announcement-widgets-off-screen ()
  (ccl:set-view-position *rdt/result-rule-banner*  #@(514 10))
  (ccl:set-view-position *rdt/result-rule-listing* #@(550 33))
  (ccl:set-view-position *rdt/result-saved-banner* #@(507 186))
  (ccl:set-view-position *rdt/result-saved-filename* #@(539 201))
  (ccl:set-view-position *rdt/result-view-file-button* #@(550 248))
  (ccl:set-view-position *rdt/result-ok-button*        #@(580 239)))


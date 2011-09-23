;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "preferences"
;;;   module:  "interface;workbench:"
;;;  Version:  0.7 November 1995

;; broken out from various files 3/3/94 v2.3   Actions wired up 3/4
;; 0.1 (3/8) revised what the 'pause-between-files' option did
;; 0.2 (3/10) added check box for categorize-proper-names and tweeked
;;      the positions.
;; 0.3 (7/27) added check-box for pause after paragraph and tweeked.
;; 0.4 (9/12) tweeked cases with addition of separate wb windows
;; 0.5 (12/13) more tweeking to flush buttons not used and add an configuration
;;      with the edges view but no contents view.
;; 0.6 (3/31/95) put in gates to control what items went onto the menu
;; 0.7 (11/28) added an early binding of *pause-after-each-paragraph* to get
;;      around load-order dependency

(in-package :sparser)

;;;----------------------
;;; options for subviews
;;;----------------------

(defparameter *pref/subviews-label*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(15 4)
          #@(145 16)
          "Workbench Views"))


(defparameter *pref/text-only-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(27 23)
   #@(83 16)
   "text only"
   'NIL
   :RADIO-BUTTON-PUSHED-P (eq *current-wb-subview-mode* :nothing)
   :RADIO-BUTTON-CLUSTER *button-cluster/pref-subviews*))

(defparameter *pref/text+chart-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(27 43)
   #@(125 16)  ;; horizontal / vertical
   "text and chart"
   'NIL
   :RADIO-BUTTON-PUSHED-P (eq *current-wb-subview-mode* :edges)
   :RADIO-BUTTON-CLUSTER *button-cluster/pref-subviews* ))

(defparameter *pref/chart-and-objects-radio-button*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(27 65)
   #@(173 16)
   "text, chart and objects"
   'NIL
   :RADIO-BUTTON-PUSHED-P (eq *current-wb-subview-mode* :edges-&-objects)
   :RADIO-BUTTON-CLUSTER *button-cluster/pref-subviews* ))

(defparameter *pref/separate-windows-radio-button*
  (MAKE-DIALOG-ITEM
  'RADIO-BUTTON-DIALOG-ITEM
  #@(222 16)  ;; size
  #@(159 49)  ;; position
  "text and objects
in separate windows"
  'NIL
  :RADIO-BUTTON-PUSHED-P (eq *current-wb-subview-mode* :separate-windows)
  :radio-button-cluster *button-cluster/pref-subviews* ))



;;;----------------------------------------
;;; options for operations over the corpus
;;;----------------------------------------

(defparameter *pref/corpus-label*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(16 105)
   #@(56 16)
   "Corpus"
   'NIL ))

(defparameter *pref/pause-b/w-articles-check-box*
  (MAKE-DIALOG-ITEM
   'CHECK-BOX-DIALOG-ITEM
   #@(36 122)
   #@(180 16)
   "pause between articles"
   'NIL
   :CHECK-BOX-CHECKED-P *pause-between-articles* ))

(unless (boundp '*pause-after-each-paragraph*)
  ;; This binding is logically somewhere else, but this happens
  ;; to be the first place that it's referenced in the loading sequence
  (defparameter *pause-after-each-paragraph* nil))

(defparameter *pref/pause-after-paragraphs*
  (MAKE-DIALOG-ITEM
   'CHECK-BOX-DIALOG-ITEM
   #@(36 143)
   #@(193 16)
   "pause after paragraphs"
   'NIL
   :check-box-checked-p *pause-after-each-paragraph* ))




;;;---------------------
;;; options for parsing
;;;---------------------

(defparameter *pref/parsing-label*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(16 171)
   #@(56 16)
   "Analysis"
   'NIL ))

(defparameter *button-cluster/analysis-alternatives*
  (next-button-cluster-number))


(defparameter *pref/analysis/sublanguages-only*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(29 188)
   #@(198 16)
   "defined sublanguages only"
   'NIL
   :RADIO-BUTTON-PUSHED-P (eq *current-analysis-mode* :no-dm&p)
   :radio-button-cluster *button-cluster/analysis-alternatives*))

(defparameter *pref/analysis/span-segments*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(29 206)
   #@(258 16)
   "also span uncategorized segments"
   'NIL
   :RADIO-BUTTON-PUSHED-P (eq *current-analysis-mode* :span-segments)
   :radio-button-cluster *button-cluster/analysis-alternatives*))

(defparameter *pref/analysis/dm&p*
  (MAKE-DIALOG-ITEM
   'RADIO-BUTTON-DIALOG-ITEM
   #@(29 225)
   #@(194 16)
   "include heuristic analysis"
   'NIL
   :RADIO-BUTTON-PUSHED-P (eq *current-analysis-mode* :dm&p)
   :radio-button-cluster *button-cluster/analysis-alternatives*))




;;;----------------------
;;; acting on selections
;;;----------------------

(defparameter *pref/cancel-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM
                    #@(317 201)  ;; position
                    #@(62 16)    ;; size
                    "cancel"
                    'close-the-preferences-menu
                    :DEFAULT-BUTTON NIL
                    ))

(defun close-the-preferences-menu (cancel-button)
  (declare (ignore cancel-button))
  (ccl:window-close *preferences-dialog*)
  (prog1 
    *preferences-dialog*
    (setq *preferences-dialog* nil)))



(defparameter *pref/ok-button*
  (MAKE-DIALOG-ITEM 'BUTTON-DIALOG-ITEM
                    #@(315 171)
                    #@(62 16)
                    "OK"
                    'Check-wigets-and-close-pref-dialog
                    :DEFAULT-BUTTON T))



(defun check-wigets-and-close-pref-dialog (ok-button)
  (declare (ignore ok-button))

  ;; subview
  (setq *current-wb-subview-mode*
        ;; the value of this global is used by Initialize-subview-state
        ;; to select the appropriate subview object
        (cond
         ((radio-button-pushed-p *pref/text-only-radio-button*)
          :nothing )
         ((radio-button-pushed-p *pref/text+chart-radio-button*)
           :edges )
         ((radio-button-pushed-p *pref/chart-and-objects-radio-button*)
          :edges-&-objects )
         ((radio-button-pushed-p *pref/separate-windows-radio-button*)
          :separate-windows )
         (t
          (break "Assumption violated: None of the radio buttons ~
                  in the preferences subviews cluster was pushed"))))
  
  ;; pause options
  (if (check-box-checked-p *pref/pause-b/w-articles-check-box*)
    (unless *pause-between-articles*
      (convert-c/n-button-to-Next))
    (unless (null *pause-between-articles*)
      (convert-c/n-button-to-Continue)))
  (if (check-box-checked-p *pref/pause-after-paragraphs*)
    (setq *pause-after-each-paragraph* t)
    (setq *pause-after-each-paragraph* nil))

  ;; analysis alternatives
  (let ((analysis-mode
         (cond
          ((radio-button-pushed-p *pref/analysis/sublanguages-only*)
           :no-dm&p )
          ((radio-button-pushed-p *pref/analysis/span-segments*)
           :span-segments )
          ((radio-button-pushed-p *pref/analysis/dm&p*)
           :dm&p )
          (t
           (break "Assumption violated: None of the radio buttons ~
                   in the analysis subviews cluster was pushed")))))
    (unless (eq analysis-mode *current-analysis-mode*)
      (update-analysis-mode analysis-mode)))

  (close-the-preferences-menu :dummy-arg))



;;;-------------------------------------
;;; selecting items to go in the dialog
;;;-------------------------------------

(defparameter *items-in-the-preferences-dialog* nil)

;; gates for items that can be optional
(unless (boundp '*pref-include/analysis-dm&p*)
  (defparameter *pref-include/analysis-dm&p* t))

#|(unless (boundp 'xx)
  (defparameter xx t)) |#


(defun select-items-for-preferences-dialog ()
  ;;(setq *items-in-the-preferences-dialog* nil)  ;; reset
  (setq *items-in-the-preferences-dialog*
        (list *pref/subviews-label*
              *pref/text-only-radio-button*
              *pref/text+chart-radio-button*
              *pref/chart-and-objects-radio-button*
              *pref/separate-windows-radio-button*
              
              *pref/corpus-label*
              *pref/pause-b/w-articles-check-box*
              *pref/pause-after-paragraphs*
              
              *pref/parsing-label*
              *pref/analysis/sublanguages-only*
              *pref/analysis/span-segments*
              
              *pref/ok-button*
              *pref/cancel-button* ))

  (when *pref-include/analysis-dm&p*
    (push *pref/analysis/dm&p*
          *items-in-the-preferences-dialog*))
  #|(when //
    (push //
          *items-in-the-preferences-dialog*)) |#

  *items-in-the-preferences-dialog* )


;;;------------------
;;; the whole dialog
;;;------------------

(defparameter *preferences-dialog* nil
  "points to the dialog item. set to nil again when the dialog item
   is closed, so tacitly acts as a controller for the menu-item
   that calls the launch routine.")


(defun launch-preferences-dialog ()
  ;; called as the menu-action of *preferences-menu-item*
  (select-items-for-preferences-dialog)
  (setq *preferences-dialog*
        (MAKE-INSTANCE 'DIALOG
          :WINDOW-TYPE :DOUBLE-EDGE-BOX ;; :DOCUMENT-WITH-GROW 
          :window-title "Preferences"
          :VIEW-POSITION #@(90 67)
          :VIEW-SIZE #@(414 255)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :CLOSE-BOX-P NIL
          :VIEW-SUBVIEWS  *items-in-the-preferences-dialog*
          )))


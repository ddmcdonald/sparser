;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "globals"
;;;   module:  "interface;workbench:"
;;;  Version:  0.2 March 1995

;; initiated 1/16/94 v2.3
;; 0.1 (2/28) broke out initializations and mode swapping to separate files
;;     (3/10) added *gaps-of-unknown-words*. (3/22) added *current-aux-subview*
;;     (9/10) changed an initial value
;;     (2/3/95) added *independent-aux-subview-to-use*
;;     (2/23) moved in a var from [API] that was being defined too late in the
;;      load sequence.
;;     (3/3) added *click-originated-in-edges-view*
;; 0.2 (3/31) changed initial value of *current-wb-subview-mode*

(in-package :sparser)


;;-- This is redundant with the entry in PNF, but has to be defined
;; here because it's referenced by the preferences menu
(defparameter *end-pnf-early* nil)



;;;-------------------------------------------
;;; global pointers to items in the workbench
;;;-------------------------------------------

(defparameter *workshop-window* nil
  "points to the dialog (window) that constitutes the workbench
   tableau.")

(defparameter *current-wb-subview-mode* :edges-&-objects
  "value is a keyword naming the combination of subviews
   to be shown")  ;; 

(defparameter *show-document-edges?* nil
  "Flag gating actions on the edges view.")

(defparameter *show-document-referents?* nil
  "Flag gating actions on the content view.")

(defparameter *show-document-segmentation?* nil
  "Flag gating actions on the segment view.")



(defparameter *text-out* nil
  "points to the view that will show the text incrementally as
   it is analyzed -- the prime view in the workbench.
   Initialized by Setup-text-output-view.")

(defvar *text-displayed-to-wb?* nil
  "turned on the first time any string is passed through
   Write-to-text-window and used by various routines to
   know if anything is being shown in the workbench")

(defvar *wb/top-line-of-text-view* 0
  "Value is an integer between 0 and *line-count*, which is the
   number of lines in the document as recorded by the NL-fsa.")

(defvar *wb/text-view-scroll-bar-setting* 0
  "Value is an integer between 0 and the max of the scroll bar,
   which is 100. It tracks with changes to the thumb.")



(defparameter *wb/current-edge* nil
  "the edge currently selected in the text-out view")

(defparameter *wb/position-where-last-treetop-ended* nil
  "State information for Select-next-treetop.")


(defvar *edges-table* nil
  "points to the sequence-dialog-item created by Setup-edges-view.")

(defparameter *edges-in-view-of-current-article* nil
  "points to a list of edges that was created to reflect the edges
   formed by the current analysis")

(defvar *gaps-of-unknown-words* nil
  "points to a data structure that reflects regions in the chart
   where the treetops are unknown words.")



(defparameter *autodefine-window* nil
  "points to the dialog (window) that constitutes the tableau
   for defining words out of the workbench")

(defparameter *autodef-tableau* nil
  "a list of autodef objects constructed by Assimilate-tableau-forms
   in a crafted call from 'grammar;model:core:autodef tableau'")

(defparameter *autodef-view* nil
  "the sequence-dialog-item in the autodefine window that presents
   the tableau of possible categories one can select")

(defparameter *selected-autodef* nil
  "the autodef object, if any, that is currently selected in the view")

(defparameter *ad/word-being-defined* nil
  "the word extracted from the encoding of the 'current-edge' and
   accessed by autodefine-word/globals to apply the selected autodef
   to")


(defparameter *adt/number-of-levels-opened* 0
  "an integer that keeps track of how many opens we've made, so that
   we can decremented it when closing them and so know when to disable
   the Close button")

(defparameter *edge-view/number-of-levels-opened* 0
  "an integer that keeps track of how many opens we've made, so that
   we can decremented it when closing them and so know when to disable
   the Close button")



(defparameter *independent-aux-subview-to-use* nil
  "Set by the user in their initialization code. Read by Initialize-subview-state
   to determine what to set *current-aux-subview* to when the auxiliary view
   is to be displayed in its own separate window.")


(defparameter *current-aux-subview* nil
  "Set in initialize-subview-state. Points to an object of type
   workbench-subview.")

(defparameter *auxiliary-subview* nil
  "Set by Launch-the-auxiliary-subview, which is called by 
   Initialize-auxiliary-view.  Points to a table-dialog.")

(defvar *click-originated-in-aux-subview* nil
  "coordinates interactions between the views so that, e.g., the edge
   selected from the aux view doesn't turn around and change what's
   seltected.  Bound in Act-on-item-in-aux-subview.")

(defvar *click-originated-in-edges-view* nil
  "coordinates interactions between the views so that, e.g., the object
   selected from the aux view doesn't turn around and change what's
   seltected in the edges view.  Bound in Act-on-edge-in-view.")

(defparameter *items-in-aux-subview* nil
  "Points to a list of items of whatever type the workbench subview
   chooses. Provides the 'table-sequence' for the table dialog")

(defvar *item-selected-in-aux-subview* nil
  "Set in act-on-item-in-aux-subview as a result of some item
   being selected with the mouse.")

(defvar *prior-unit-selected-in-aux-subview* nil
  "Set in act-on-item-in-aux-subview as a result of some item
   being selected with the mouse.")

(defparameter *instance-sorting-routine*
              'sort-discourse-entries-by-frequency)

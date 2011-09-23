;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "autodef window"
;;;   module:  "interface;workbench:"
;;;  Version:  0.4 October 1995

;; broken out 1/24/94 v2.3
;; 0.1 (3/14) fixed trivial bug. 4/29 pulled some neglected breaks
;; 0.2 (5/26) fixed close bug, tweeked look&feel, added description action
;;      redesigned button-activation alg.
;;     (9/28) fixed a typo.  10/31 fixed a status update on categories with
;;      no daughters.
;; 0.3 (2/24/95) added the 'ok' button
;;     (4/12) added menu item for use in Sparser menu.  (4/30) added check 
;;      against the text view for an already selected word.
;;     (7/26) tweeked the value for the *ad/text* field
;; 0.4 (9/20) making the examples display automatic
;;     (10/13) remembered to reset 'show file' button.

(in-package :sparser)


;;;-----------------------------
;;; dialog items for the window
;;;-----------------------------

(defparameter *ad/text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(20 12)
   #@(381 18)
   "no word has been selected from the text"
   'NIL ))

(defparameter *ad/open-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 54)
   #@(62 16)
   "open"
   'show-daughers-of-autodef-item
   :DIALOG-ITEM-ENABLED-P NIL
   :DEFAULT-BUTTON nil ))

(defparameter *ad/close-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 76)
   #@(62 16)
   "close"
   'close-up-daughters-of-autodef-item
   :DIALOG-ITEM-ENABLED-P NIL
   :DEFAULT-BUTTON NIL ))


(defparameter *ad/examples-button*
  (make-dialog-item
   'button-dialog-item
   #@(16 506)   ;; original, on-screen position #@(16 106)
       ;; this warps it off the screen, which makes sense if
       ;; we're making the displaying of the ex. text automatic
       ;; rather than conditioned on this button
   #@(70 16)
   "examples"
   'display-ad-items-examples
   :dialog-item-enabled-p nil
   :default-button nil))



(defparameter *ad/example-text*
  (MAKE-DIALOG-ITEM
   'STATIC-TEXT-DIALOG-ITEM
   #@(325 25)
   #@(180 150)
   ""
   'NIL 
   :view-font '("New York" 9 :srcor :plain)))


(defparameter *ad/define-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 127)
   #@(62 16)
   "Define"
   'define-word-as-per-autodef
   :DIALOG-ITEM-ENABLED-P NIL
   :DEFAULT-BUTTON NIL))

(defparameter *ad/cancel-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(20 157)
   #@(62 16)
   "cancel"
   'hide-the-autodef-window
   :DIALOG-ITEM-ENABLED-P NIL
   :DEFAULT-BUTTON NIL ))


(defparameter *ad/ok-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(440 145)
   #@(48 23)
   "ok"
   'finish-autodefinition-process
   :DEFAULT-BUTTON NIL))


(defparameter *ad/edit-dossier-button*
  (MAKE-DIALOG-ITEM
   'BUTTON-DIALOG-ITEM
   #@(392 114)
   #@(100 19)
   "check the file"
   'ad/edit-dossier-word-written-to
   :VIEW-FONT  '("Courier" 10 :SRCOR :PLAIN)
   :DEFAULT-BUTTON  NIL))




;;;------------
;;; the window
;;;------------

(defclass Autodefine-tableau (dialog) ())

(defun launch-the-Autodefine-tableau ()
  (setq *autodefine-window*
        (MAKE-INSTANCE 'Autodefine-tableau
          :WINDOW-TYPE :DOCUMENT-WITH-GROW
          :window-title "Define"
          :VIEW-POSITION #@(37 169)
          :VIEW-SIZE #@(525 200)
          :VIEW-FONT '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS (LIST *ad/text*
                               *ad/open-button*
                               *ad/close-button*
                               *ad/examples-button*
                               *ad/example-text*
                               *ad/define-button*
                               *ad/cancel-button*
                               *ad/ok-button*
                               *ad/edit-dossier-button*
                               )
          ))
      (initialize-ad-wiget-locations))


(defmethod window-close ((adt autodefine-tableau))
  (close-down-the-autodef-window)
  (call-next-method adt))

(defun hide-the-autodef-window ( &optional button )
  (declare (ignore button))
  (ccl:window-hide *autodefine-window*)
  (set-dialog-item-text *ad/text*
                        "no word has been selected from the text")
  (when *adw/word-input-window*
    (cancel-operation/word-input-window)))


(defun show-the-autodef-window ( &optional button )
  (declare (ignore button))
  (set-ad/text-to-selected-word)
  (ccl:window-show *autodefine-window*)
  (ccl:set-window-layer *autodefine-window* 0))


(defun finish-autodefinition-process ( &optional ok-button )
  (declare (ignore ok-button))
  (setq *ad/word-being-defined* nil
        *selected-autodef* nil)
  (deselect-any-selection/autodef)
  (ccl:window-close *autodefine-window*))


;;;---------------------------------------
;;; opening the window from the workbench
;;;---------------------------------------

(defun open-autodef-window (button)
  ;; button action for *wb/define-word-button*
  (declare (ignore button))
  (when (wb-selection-is-a-word)
    (if *autodefine-window*
      (then
        (show-the-autodef-window)
        (set-ad/text-to-selected-word))
      (else
        (set-ad/text-to-selected-word)
        (launch-the-autodefine-tableau)
        (setup-autodef-view)))))





;;;-------------------------------------------
;;; driving the process from the Sparser menu
;;;-------------------------------------------

(defparameter *define-word-menu-item*
  (make-instance 'menu-item
    :menu-item-title "define word"
    :menu-item-action 'setup-word-for-autodef ))


(defun setup-word-for-autodef ()
  ;; menu action item for 'define word'
  (launch-the-adw-word-entry-window))

(defparameter *adw/instruction-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(13 9)
          #@(329 18)
          "Enter the word or polyword you want to define"
          'NIL))


(defparameter *adw/input-field*
  (MAKE-DIALOG-ITEM
          'EDITABLE-TEXT-DIALOG-ITEM
          #@(14 35)
          #@(316 16)
          ""
          'NIL
          :ALLOW-RETURNS NIL))


(defparameter *adw/ok-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(267 67)
          #@(62 16)
          "ok"
          'setup-autodefinition-of-word-from-input-window
          :DEFAULT-BUTTON T))


(defparameter *adw/abort-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(173 67)
          #@(62 16)
          "cancel"
          'cancel-operation/word-input-window
          :DEFAULT-BUTTON NIL))



(defparameter *adw/word-input-window* nil)

(defclass AD/word-input-window (dialog) ())

(defun launch-the-adw-word-entry-window ()
  ;; menu-item action for 'define word
  (setq *adw/word-input-window*
        (MAKE-INSTANCE 'AD/word-input-window
          :WINDOW-TYPE    :DOCUMENT      ;;-WITH-GROW
          :window-title   "word to be defined"
          :VIEW-POSITION  #@(170 127)
          :VIEW-SIZE      #@(341 97)
          :VIEW-FONT      '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS  (LIST *adw/instruction-text*
                                *adw/input-field*
                                *adw/ok-button*
                                *adw/abort-button*
                                )))

  (let ((string (selected-string-in-tv)))
    (if string
      (ccl:set-dialog-item-text *adw/input-field* string)
      (ccl:set-dialog-item-text *adw/input-field* ""))
    string ))


#|
*adw/instruction-text*
*adw/input-field*
*adw/ok-button*
*adw/abort-button*
*ad/edit-dossier-button*
*adw/word-input-window* |#


(defun cancel-operation/word-input-window ( &optional cancel-button )
  (declare (ignore cancel-button))
  (ccl:window-close *adw/word-input-window*))

(defmethod window-close ((w AD/word-input-window))
  (close-down-the-ad-word-input-window)
  (call-next-method w))

(defun close-down-the-ad-word-input-window ()
  (setq *adw/word-input-window* nil
        *slvd/save-routine* nil)
  (ccl:set-dialog-item-text *adw/input-field* ""))



(defun pull-word-from-adw-input-window ()
  (let ((string (ccl:dialog-item-text *adw/input-field*)))
    (if (equal string "")
      nil
      (let ((w/pw (resolve-string-to-word/make string)))
        (when w/pw
          w/pw)))))







;;;-----------------------
;;; the table of autodefs
;;;-----------------------

(defclass autodef-view (sequence-dialog-item) ())

(defun setup-autodef-view ()
  (if *autodef-tableau*
    (then
      (setq *autodef-view*
            (make-instance 'autodef-view
              :view-container *autodefine-window*
              :view-position #@(100 50)
              :view-size #@(200 225)
              :view-font '("Geneva" 9 :plain)
              :visible-dimensions #@(1 10)
              :table-sequence *autodef-tableau*
              :dialog-item-action 'autodef-selected
              :sequence-wrap-length 2000
              :selection-type :single
              :table-print-function 'print-autodef-in-view
              :table-vscrollp t
              :table-hscrollp nil ))
      (ccl:dialog-item-disable *ad/open-button*)
      (ccl:dialog-item-disable *ad/close-button*)
      (ccl:dialog-item-disable *ad/define-button*)
      (ccl:dialog-item-disable *ad/examples-button*)
      (ccl:dialog-item-enable *ad/cancel-button*))     

    (break "The tableau of autodefs hasn't been created")))




(defun initialize-ad-wiget-locations ()
  ;; Only the 'ok' button ever moves its position now. It starts
  ;; off the screen and then moves onto it when the def. is done
  (ccl:set-view-position *ad/ok-button* #@(540 145))
  (ccl:set-view-position *ad/edit-dossier-button* #@(590 114))

  ;; This really belongs in an 'initialization' routine, but it's
  ;; the only case. Something (i.e. here) has to remember to
  ;; re-enable this button for subsequent episodes after it has been
  ;; disabled as part of bringing up the file. 
  (ccl:dialog-item-enable *ad/edit-dossier-button*))


(defun warp-final-ad-phase-buttons-back-in-sight ()
  (ccl:set-view-position *ad/ok-button* #@(440 145))
  (ccl:set-view-position *ad/edit-dossier-button* #@(392 114)))





;;;------------
;;; operations
;;;------------

(defun autodef-selected (table)
  ;; this is called when there is a click in the tableau view
  (let ((cell (car (selected-cells table))))
    (if cell
      ;; if you click somewhere in the table view where there's
      ;; nothing displayed, there won't be a cell
      (then
        ;; the selected-cells list contains points, and we have
        ;; to decode the point to an integer we can use as an
        ;; index. Since there are only vertical cells in this
        ;; table we just use the vertical coordinate
        (let ((v-index (point-v cell))
              (table-length (length (table-sequence table)))
              autodef )
          (if (< v-index table-length)
            (then
              (setq autodef (elt (table-sequence table) v-index))
              (setq *selected-autodef* autodef))
            (setq *selected-autodef* nil))))
      (else
        (setq *selected-autodef* nil))))

  (en/dis-able-autodef-buttons))



(defun deselect-any-selection/autodef ()
  (let* ((table *autodef-view*)
         (cell (car (ccl:selected-cells table))))
    (when cell
      (let ((index (ccl:cell-to-index table cell)))
        (ccl:cell-deselect table 0 index)))))



(defun en/Dis-able-autodef-buttons ()
  (let ((item *selected-autodef*)
        first-daughter )
    (if *selected-autodef*
      (then
        ;(format t "~&~%item = ~A~%" item)
        (if (ad-children item)
          (ccl:dialog-item-disable *ad/define-button*)
          (ccl:dialog-item-enable  *ad/define-button*))
        (if (ad-examples item)
          (ccl:dialog-item-enable  *ad/examples-button*)
          (ccl:dialog-item-disable *ad/examples-button*))            
        (if (> (ad-depth item) 0)
          (ccl:dialog-item-enable  *ad/close-button*)
          (ccl:dialog-item-disable *ad/close-button*))

        (if (= (ad-depth item) 0)
          (if (setq first-daughter
                    (ad/daughters-are-visible item))
            (if (ad-instantiable? first-daughter)
              (ccl:dialog-item-enable *ad/open-button*)
              (ccl:dialog-item-disable *ad/open-button*))
            (if (ad-children item)
              (ccl:dialog-item-enable  *ad/open-button*)
              (ccl:dialog-item-disable *ad/open-button*)))
          (if (ad-instantiable? item)
            (ccl:dialog-item-disable *ad/open-button*)
            (if (ad/daughters-are-visible item)
              (ccl:dialog-item-disable *ad/open-button*)
              (ccl:dialog-item-enable *ad/open-button*))))

        (if (or (ad-description item)
                (ad-examples item))
          (display-ad-items-examples :ignore)
          (else
            (set-dialog-item-text *ad/example-text* "")
            (setq *ad/item-with-displayed-example* nil))))

      (else
        ;(format t "~&~%no item~%")
        (ccl:dialog-item-disable *ad/examples-button*)
        (ccl:dialog-item-disable *ad/define-button*)
        (ccl:dialog-item-disable *ad/open-button*)
        (ccl:dialog-item-disable *ad/close-button*)
        (set-dialog-item-text *ad/example-text* "")
        (setq *ad/item-with-displayed-example* nil)))))



(defun ad/Daughters-are-visible (parent-autodef)
  (let ((cons-of-item (member parent-autodef *autodef-tableau* :test #'eq)))
    (when cons-of-item
      (let ((next-item (second cons-of-item)))
        (when next-item
          (when (eq parent-autodef (ad-parent next-item))
            next-item ))))))




(defun deselect-autodef-item (autodef)
  (let ((cons-of-item (member autodef *autodef-tableau* :test #'eq)))
    (if cons-of-item
      (let ((index (- (length *autodef-tableau*)
                      (length cons-of-item))))
        (ccl:cell-deselect *autodef-view* 0 index))
      (break "Expected item ~A to be in the visible table" autodef))))

(defun select-autodef-item (autodef)
  (let ((cons-of-item (member autodef *autodef-tableau* :test #'eq)))
    (if cons-of-item
      (let ((index (- (length *autodef-tableau*)
                      (length cons-of-item))))
        (setq *selected-autodef* autodef)
        (ccl:cell-select *autodef-view* 0 index))
      (break "Expected item ~A to be in the visible table"))))





;;;----------------
;;; button actions
;;;----------------

(defun show-daughers-of-autodef-item (open-button)
  (declare (ignore open-button))
  (if *selected-autodef*
    (open-daughters-of-selected-autodef)
    (else
      (format t "~&\"open\" doesn't make sense unless you have ~
                 selected a category in the table~%"))))

(defun close-up-daughters-of-autodef-item (close-button)
  (declare (ignore close-button))
  (if *selected-autodef*
    (close-selected-autodef)
    (else
      (format t "~&\"open\" doesn't make sense unless you have ~
                 selected a category in the table~%"))))



(defvar *ad/item-with-displayed-example* nil)

(defun display-ad-items-examples (examples-button)
  (declare (ignore examples-button))
  (when *selected-autodef*
    (let* ((autodef-item *selected-autodef*)
           (examples (ad-examples autodef-item))
           (description (ad-description autodef-item))
           string )
      (when (or examples description)
        (setq *ad/item-with-displayed-example* autodef-item)
        (setq string
              (cond ((and examples description)
                     (concatenate 'string
                                  description ", e.g. "
                                  examples))
                    (examples examples)
                    (description description)))
        (set-dialog-item-text *ad/example-text* string)))))



(defun setup-autodefinition-of-word-from-input-window (ok-button)
  (declare (ignore ok-button))
  (let ((w/pw (pull-word-from-adw-input-window)))
    (when w/pw
      (let ((pname (etypecase w/pw
                     (word (word-pname w/pw))
                     (polyword (pw-pname w/pw)))))
        (setq *ad/word-being-defined* w/pw)
        (set-dialog-item-text *ad/text*
           (format nil "Select a category for \"~A\"" pname))
        (if *autodefine-window*
          (then (ccl:window-show *autodefine-window*)
                (ccl:set-window-layer *autodefine-window* 0))
          (else
            (launch-the-autodefine-tableau)
            (setup-autodef-view)))))
    (cancel-operation/word-input-window)))



(defun ad/Edit-dossier-word-written-to (check-the-file-button)
  (if *selected-autodef*
    (let ((file (ad-dossier *selected-autodef*)))
      (when (and (stringp file)
                 (position #\; file))
        (setq file (expand-namestring file)))
      (ed file))
    (else
      (format *top-listener* "~%~%The dossier file cannot be opened now~%~%")
      (when *break-on-unexpected-cases*
        (break "Threading bug: there should be a value for ~
                ~%*selected-autodef* at this point but there isn't~%~%"))))

  ;; you can't do this twice, ///though I suppose you could 
  ;; in principle decide to notice that the file had been
  ;; closed and so could be opened again
  (ccl:dialog-item-disable check-the-file-button))





;;;---------------------------------------------
;;; opening / closing subregions of the tableau
;;;---------------------------------------------

;;--- open

(defun open-daughters-of-selected-autodef ( &optional
                                            (autodef *selected-autodef*) )
  (when autodef
    (let ((daughters (ad-children autodef)))
      (if daughters
        (then
          (splice-daughters-below-autodef-item autodef daughters)
          (en/dis-able-autodef-buttons)
          (ccl:dialog-item-enable *ad/close-button*))
        (format t "~&Can't open the ~A category~
                   ~%because it does not have any daughters~%"
                (ad-category autodef))))))


(defun splice-daughters-below-autodef-item (autodef daughters)
  (let ((autodef-cons (member autodef *autodef-tableau*)))
    (if autodef-cons
      (let* ((next-cons (cdr autodef-cons))
             (fresh-daughters-list (copy-list daughters))
             (last-cell (last fresh-daughters-list)))
        (rplacd autodef-cons fresh-daughters-list)
        (rplacd last-cell next-cons)
        (set-table-sequence *autodef-view* *autodef-tableau*))

      (break "The autodef ~A isn't in the tableau" autodef))))


;;--- close

(defun close-selected-autodef ()
  ;; we allow the user to click on either a leaf or on an item
  ;; that has visible daughters. In the first case we close the
  ;; item and its siblings leaving the parent; in the second we
  ;; find the daughters and close them.
  (when *selected-autodef*
    (deselect-autodef-item *selected-autodef*)
    (let* ((autodef *selected-autodef*)
           (ad-cons (member autodef *autodef-tableau*))
           (next-autodef (cadr ad-cons)))
      (if next-autodef
        (then ;; is this next item a daughter of the selected ad?
          (if (eq autodef (ad-parent next-autodef))
            (close-autodef-daughters autodef)
            (look-for-autodef-parent-and-close-its-daughters autodef)))
        (else
          ;; the selection is the last in the tableau.
          ;; If it's a daughter then we close it up.
          (if (ad-parent autodef)
            (close-autodef-parents-daughters autodef)
            (format t "~&The category ~A is already closed~%"
                    autodef))))

      (en/dis-able-autodef-buttons)
      (set-table-sequence *autodef-view* *autodef-tableau*))))
        

(defun close-autodef-daughters (parent)
  (let* ((daughters (ad-children parent))
         (parents-cons (member parent *autodef-tableau*))
         (next-parent-cons
          (nthcdr (1+ (length daughters)) parents-cons)))
    (rplacd parents-cons next-parent-cons)))


(defun look-for-autodef-parent-and-close-its-daughters (daughter)
  (let ((parent (ad-parent daughter)))
    (if parent
      (let* ((parents-cons (member parent *autodef-tableau*))
             (daughters (ad-children parent))
             (next-parent-cons
              (nthcdr (1+ (length daughters)) parents-cons)))
        (select-autodef-item parent)
        (rplacd parents-cons next-parent-cons))

      (format t "~&The category ~A is toplevel and cannot ~
                 be closed~%" daughter))))


(defun close-autodef-parents-daughters (daughter)
  ;; we've selected a daughter that is a leaf of the current view
  ;; of the tableau, so we find its parent and remove all of its
  ;; daughters.
  (let* ((parent (ad-parent daughter))
         (daughters (ad-children parent))
         (parents-cons (member parent *autodef-tableau*))
         (next-parent-cons
          (nthcdr (1+ (length daughters)) parents-cons)))
    (select-autodef-item parent)
    (rplacd parents-cons next-parent-cons)))



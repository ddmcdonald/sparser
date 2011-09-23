;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "pause"
;;;   Module:  "interface;workbench:"
;;;  Version:  0.1 January 1995

;; initiated 6/10/94 v2.3.  Added button 7/27.  Tweeked synch. code
;; to allow treetop trace without the Workbench up.
;; 0.1 (1/9/95) adapted Synchronize/should-we-pause? to also work with just a
;;      start edge.

(in-package :sparser)


;;;---------------
;;; workbench hook
;;;---------------

(defun react-to-click-on-pause-button (button)
  ;; action on *wb/pause-button*
  (cond ((equal (ccl:dialog-item-text button) "resume")
         (ccl:set-dialog-item-text button "pause")
         (ccl:dialog-item-disable button)
         (throw :continue-from-pause :resume))

        ((equal (ccl:dialog-item-text button) "pause")
         (ccl:set-dialog-item-text button "resume")
         (ccl:dialog-item-enable button))

        (t (break "debug this: value of text doesn't match options"))))


(defun set-pause-button-to-resume ()
  ;; called from Put-parse-into-pause
  (ccl:set-dialog-item-text *wb/pause-button* "resume")
  (ccl:dialog-item-enable *wb/pause-button*))



;;;-------------------------------------
;;; function called from Sparser events
;;;-------------------------------------

(defun synchronize/should-we-pause? (sm &optional start-edge end-edge )
  ;; called from End-SGML-section
  
  (if *text-out*
    (let* ((insertion-point-mark (ccl:fred-buffer *text-out*))
           (insertion-position (ccl:buffer-position insertion-point-mark)))
      
      (cond
       (end-edge
        ;; the call is from markup with paired begin-end edges
        (synchronize-with-workbench-views start-edge end-edge))
       
       ((edge-p start-edge)
        ;; the call is from a routine that knows it's ended a section
        ;; and should update the display, but that only has an edge
        ;; for the beginning of the section and not the end.
        (synchronize-with-workbench-views start-edge))
       
       ((position-p start-edge)
        ;; call is from markup that isn't necessarily based on edges
        ;; but can track the position before the the word/edge that
        ;; indicated that a section has ended.
        (synchronize-with-workbench-views/pos start-edge)))
      
      (when *pause-after-each-paragraph*          
        (put-parse-into-pause "---  after-section pause: ~A  ---~%" 
                              (sm-full-name sm)))
      
      (unless (eql (ccl:buffer-position insertion-point-mark)
                   insertion-position)
        ;; if it's moved (because we used the workbench), then
        ;; put it back at the end of the text where it was
        (set-mark insertion-point-mark insertion-position)))
    
    
    (if end-edge
      (synchronize-with-workbench-views start-edge end-edge)
      (if (position-p start-edge)
        (synchronize-with-workbench-views/pos start-edge)))))




(defun put-parse-into-pause ( &rest args )
  ;; also called directly from Should-we-pause-after-each-paragraph?
  (let* ((*backtrace-on-break* nil)
         (insertion-point-mark (ccl:fred-buffer *text-out*))
         (insertion-position (ccl:buffer-position insertion-point-mark)))

    (set-pause-button-to-resume)
    ;;(ccl:set-window-layer *workshop-window* 0)
    ;; oops, this won't work because the 'break' below negates it.

    (catch :continue-from-pause
      (apply #'break args))

    (unless (eql (ccl:buffer-position insertion-point-mark)
                 insertion-position)
      ;; if it's moved (because we used the workbench), then
      ;; put it back at the end of the text where it was
      (set-mark insertion-point-mark insertion-position))))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "module menu"
;;;    Module:  "interface;grammar:"
;;;   version:  February 1992

;; initiated 3/9/92 v2.2

(in-package :sparser)


#|    scratch space to check out how to make things work
;;;-----------
;;; test menu
;;;-----------

(defparameter *test-menu-1* (oneof *menu*
                                   :menu-title "Test 1"))

(defun tm1 () (print 1))

(defparameter *tm1* (oneof *menu-item*
                           :menu-item-title "print 1"
                           :menu-item-action 'tm1))

(ask *test-menu-1* (add-menu-items *tm1*))


(ask *test-menu-1* (menu-install))
(ask *test-menu-1* (menu-deinstall))


;;;--------------------------
;;; testing a recursive menu
;;;--------------------------

(defparameter *embedded-menu-1* (oneof *menu*
                                   :menu-title "embedded menu"))


(ask *embedded-menu-1* (add-menu-items
                        (oneof *menu-item*
                           :menu-item-title "print 2"
                           :menu-item-action
                             #'(lambda () (print 2)))
                        (oneof *menu-item*
                           :menu-item-title "print 3"
                           :menu-item-action
                             #'(lambda () (print 3)))
                        (oneof *menu-item*
                           :menu-item-title "print 4"
                           :menu-item-action
                             #'(lambda () (print 4)))))

(ask *test-menu-1* (add-menu-items *embedded-menu-1*))


;;;-------------------------------------------------
;;; getting a value out of the built-in list dialog
;;;-------------------------------------------------

(defun tm2 ()
  (let ((v (select-item-from-list '(1 2 3 4))))
    ;; you get back a list of the selected value -- presumably
    ;; because there's a provision for :disjoint and :contiguous
    ;; selections
    (print v)
    :tm2))

|#


(defobject *namestring-dialog* *dialog*)

(defobfun (exist *namestring-dialog*) (init-list)
  (let* ((item-list (getf init-list :item-list))
         ;(table-width (getf init-list :table-width 100))
         (the-table
          (oneof *sequence-dialog-item*
                 :table-sequence item-list
                 :table-vscrollp t
                 :table-hscrollp nil
                 :selection-type :single
                 :dialog-item-action #'print-filename
                 )))

    (usual-exist
     (init-list-default
      init-list
      :dialog-items (list the-table)

      :window-size ;#@(200 350)
                   #@(300 450)
      :window-position (make-point
                        (ash (- *screen-width* 170) -1) 120)
      :window-type  :document-with-grow
      :window-title "files"
       ))))

(defun print-filename ()
  (when (selected-cells)
    (let* ((index (cell-to-index
                   (car (selected-cells))))
           (string
            (elt (table-sequence) index)))
      (print string))))


(defparameter *nsd-1*
  (oneof *namestring-dialog*
         :item-list '("time;units" "time;weekdays" "time;months"
                      "time;years" "time;day-in-month"
                      "time;month-in-year" "time;dates" "time;sequencers"
                      "time;seq words" "time;approximators" 
                      "time;approx words" "time;phrases" "time;anaphors" 
                      "time;age" "time;fiscal" "core;time:loader")
         ))


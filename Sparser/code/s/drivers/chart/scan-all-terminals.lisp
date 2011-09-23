;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995,1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scan-all-terminals"
;;;   Module:  "drivers;chart:"
;;;  Version:   0.4 January 1994

;; initiated in June 1990
;; 0.1 (4/9 v1.8.2)  Updated the call in Look-at-next-terminal/shell to
;;      be to Next-token, and added :no-op as a kind of processing to do.
;; 0.2 (4/7/93 v2.3) Updated the way the shell accesses terminals and
;;      checks for termination.
;; 0.3 (9/8) added provision for rolling one's own using optional argument
;; 0.4 (1/11/93) changed the shell to have two arguments: word & position

(in-package :sparser)

;;;----------
;;;  driver
;;;----------

(defun look-at-all-terminals ()
  ;; called from Lookup-the-kind-of-chart-processing-to-do
  (look-at-next-terminal/shell))


;;;--------
;;; switch
;;;--------

(defparameter *definition-of-Look-at-terminal* :no-op)


(defun look-at-terminal (word position)
  (declare (ignore word position))
  (error "There is no definition for this switched function yet.~
        ~%Call Establish-version-of-Look-at-terminal"))



(defun establish-version-of-look-at-terminal (keyword
                                              &optional fn-name)
  (case  keyword

    (:display-token-sequence
     (setf (symbol-function 'look-at-terminal)
           (symbol-function 'display-words-one-per-line)))

    (:record-word-frequency
     (setf (symbol-function 'look-at-terminal)
           (symbol-function 'record-word-frequency)))

    ;(:check-if-terminal-triggers-action
    ; (setf (symbol-function 'Look-at-terminal)
    ;       (symbol-function 'check-for-triggered-action))) ;; not defined 1/11/94

    (:no-op
     (setf (symbol-function 'look-at-terminal)
           (symbol-function 'no-op/two-args)))

    (otherwise
     (cond ((null fn-name)
            (error "The keyword ~A is not a predefined version of Look-~
                    at-terminal.~%and no function has been provided as ~
                    the second argument" keyword))
           ((not (symbolp fn-name))
            (error "The function to use for Look-at-terminal must be given ~
                    as a symbol.~%The value used is a ~A"
                   (type-of fn-name)))
           ((not (fboundp fn-name))
            (format t "The function ~A is undefined."))
           (t
            (setf (symbol-function 'look-at-terminal)
                  (symbol-function fn-name))))))

  (setq *definition-of-Look-at-terminal* keyword))



;;;-------
;;; cases
;;;-------

(defun no-op/one-arg (arg1)
  (declare (ignore arg1)))

(defun no-op/two-args (arg1 arg2)
  (declare (ignore arg1 arg2)))

;;;-------
;;; shell
;;;-------

(defun look-at-next-terminal/shell ()
  (let ( position  word )
    (loop
      (setq position (scan-next-position)
            word (pos-terminal position))
      
      ;; this is the part that varies
      (look-at-terminal word position)

    (when (eq word *end-of-source*)
      (terminate-chart-level-process)))))


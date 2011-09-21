;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;; Copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2011 David D. McDonald  -- all rights reserved

;; 3/9/11 Extended string set for Sparser. 4/9/11 fixed bug in string-
;; of-N-spaces.

(in-package :ddm-util)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (export '(emit-line emit-line-continue
            push-indentation pop-indentation
            with-indentation
            initialize-indentation
            get-indentation
            string-of-N-spaces)
          (find-package :ddm-util)))


;;;------ small hack for handling the indentation ------
    
(defun emit-line (stream string &rest args)
  (let ((text (apply #'format nil string args)))
    (format stream "~&~a~a"
	    (get-indentation) text)))

(defun emit-line-continue (stream string &rest args)
  (apply #'format stream string args))

(defvar *indentation* 0)
(defvar *indent-delta* 2)

(defun push-indentation (&optional (delta *indent-delta*))
  (setq *indentation* (+ *indentation* delta)))

(defun pop-indentation (&optional (delta *indent-delta*))
  (setq *indentation* (- *indentation* delta))
  (when (<= *indentation* 0)
    (setq *indentation* 0)))

(defmacro with-indentation (n &body body)
  `(progn
     (push-indentation ,n)
     ,@body
     (pop-indentation ,n)))

(defun initialize-indentation ()
  (setq *indentation* 0))

(defun get-indentation ()
  (let ((s (cdr (assoc *indentation* *indent-strings*))))
    (or s "")))

(defun string-of-N-spaces (n)
  (let ((s (cdr (assoc n *indent-strings*))))
    (unless s
      (error "Add more cases, a string of length ~A ~
              was requested." n))
    s))

(defparameter *indent-strings*
  `((0 . "")
    (1 . " ")
    (2 . "  ")
    (3 . "   ")
    (4 . "    ")
    (5 . "     ")
    (6 . "      ")
    (7 . "       ")
    (8 . "        ")
    (9 . "         ")
    (10 . "          ")
    (11 . "           ")
    (12 . "            ")
    (13 . "             ")
    (14 . "              ")
    (15 . "               ")
    (16 . "                ")
    (17 . "                 ")
    (18 . "                  ")
    (19 . "                   ")
    (20 . "                    ")
    (21 . "                     ")
    (22 . "                      ")
    (23 . "                       ")
    (24 . "                        ")
    (25 . "                         ")
    (26 . "                          ")
    (27 . "                           ")
    (28 . "                            ")
    (29 . "                             ")
    (30 . "                              ")
    (31 . "                               ")
    (32 . "                                ")
    (33 . "                                 ")
    (34 . "                                  ")
    (35 . "                                   ")
    (36 . "                                    ")
    (37 . "                                     ")
    (38 . "                                      ")
    (39 . "                                       ")
    (40 . "                                        ")
    (41 . "                                         ")
    (42 . "                                          ")
    (43 . "                                           ")
    (44 . "                                            ")
    (45 . "                                             ")
    (46 . "                                              ")
    (47 . "                                               ")
    (48 . "                                                ")
    (49 . "                                                 ")
    ))


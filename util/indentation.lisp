;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;; Copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved
;;; Copyright (c) 2011,2022 David D. McDonald  -- all rights reserved

;; 3/9/11 Extended string set for Sparser. 4/9/11 fixed bug in string-
;; of-N-spaces.
;; 3/23/2015 SBCL move defparameter early, to avoid SBCL complaint

(in-package :ddm-util)

(defparameter *indent-strings*
  '((0 . "")
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
    (49 . "                                                 ")))

(defun emit-line (stream string &rest args)
  (let ((text (apply #'format nil string args)))
    (format stream "~&~a~a" (get-indentation) text)))

(defun emit-line-continue (stream string &rest args)
  (apply #'format stream string args))

(defvar *indentation* 0)
(defvar *indent-delta* 2)

(defun set-indentation-delta (number)
  "Set the global that determines how many spaces we move
   when pushing or popping the indentation."
  (check-type number integer)
  (setq *indent-delta* number))

(defun push-indentation (&optional (delta *indent-delta*))
  (incf *indentation* delta))

(defun pop-indentation (&optional (delta *indent-delta*))
  (decf *indentation* delta)
  (when (minusp *indentation*)
    (setq *indentation* 0)))

(defmacro with-indentation (n &body body)
  `(progn
     (push-indentation ,n)
     ,@body
     (pop-indentation ,n)))

(defun initialize-indentation ()
  (setq *indentation* 0))

(defun get-indentation ()
  (or (cdr (assoc *indentation* *indent-strings*)) ""))

(defun string-of-N-spaces (n)
  (or (cdr (assoc n *indent-strings*)) ""))



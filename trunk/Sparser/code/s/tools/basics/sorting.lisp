;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;; Copyright (c) 2006-2010 BBNT Solutions LLC. All Rights Reserved

(in-package :sparser)

;;--- sort functions

(defmethod alphabetize ((w1 string) (w2 string))
  (string< w1 w2))

(defmethod alphabetize ((w1 symbol) (w2 symbol))
  (alphabetize (symbol-name w1) (symbol-name w2)))

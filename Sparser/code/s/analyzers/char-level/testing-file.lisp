;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "testing/file"
;;;   Module:  "analyzers;char-level:"
;;;  Version:  January 1995

;; 9/26/92 tweeked. 1/6/95 locations updated

(in-package :sparser)

;;;------------
;;; pathnames
;;;------------

(defparameter *location-of-test-files*
  (concatenate 'string
               cl-user::location-of-sparser-directory
               "code:s:drivers:"
               "timing:Bankruptcy:Eastern:"))

;; loading [string to call] will bind
;; *Eastern-as-string* to the original article in its
;; DJNS format.

(defparameter *one-line*  (concatenate 'string
                                       *location-of-test-files*
                                       "one line"))


(defparameter *short-file* (concatenate 'string
                                        *location-of-test-files*
                                        "under 1k chars"))
  ;; i.e. one buffer length


(defparameter *body* (concatenate 'string
                                  *location-of-test-files*
                                  "just body"))
  ;; the buffer recycles after the second "t" in "..The flisht atT/endant
  ;; didn't offer ..." 


(defparameter *article* (concatenate 'string
                                     *location-of-test-files*
                                     "original article"))
  ;; djns format, i.e. includes headers


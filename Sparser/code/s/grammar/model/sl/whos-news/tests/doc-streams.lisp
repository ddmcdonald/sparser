;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;; copyright (c) 1992  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "doc streams"
;;;   Module:  "model;sl:whos news:tests:"
;;;  version:  March 1991      system version 1.8.1

(in-package :sparser)

;;;-----------------
;;; defined streams
;;;-----------------

(define-document-stream '|Who's News articles - typed|
  :directories '("corpus;Who's News:typed:batch #1:"
                 "corpus;Who's News:typed:batch #2:"
                 "corpus;Who's News:typed:batch #3:"))

(define-document-stream '|typed #1|
  :directory "corpus;Who's News:typed:batch #1:")

(define-document-stream '|WSJ batch #1|
  :directory "wsj #1;")

(define-document-stream '|1st December batch|
  :directory "Dec 0;")

(define-document-stream '|2d December batch|
  :directory "Dec 1;")


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "loader"
;;;   Module:  "model forms;sl:whos news:acts:"
;;;  version:  1.6  March 1991

;; 1.1  (1/17 v1.8)  Pushed job event down into its own directory 
;; 1.2  (2/8  v1.8.1)  Added elect, added appoint on 2/10, 
;;      join on 2/11; resign, and continue on 2/18
;; 1.3  (3/6 v1.8.1)  Moved the directory out from MF; and under acts;cases:
;; 1.4  (3/11 v1.8.1)  Added "replace"
;; 1.5  (3/21 v1.8.1)  Added "assume", "become", "add"
;; 1.6  (3/26) added "serve"

(in-package :CTI-source)

(lload "acts;cases:add")
(lload "acts;cases:appoint")
(lload "acts;cases:assume")
(lload "acts;cases:become")
(lload "acts;cases:confirm")
(lload "acts;cases:continue")
(lload "acts;cases:dismiss")
(lload "acts;cases:elect")
(lload "acts;cases:join")
(lload "acts;cases:leave")
(lload "acts;cases:name")
(lload "acts;cases:promote")
(lload "acts;cases:remain")
(lload "acts;cases:replace")
(lload "acts;cases:resign")
(lload "acts;cases:retire")
(lload "acts;cases:serve")
(lload "acts;cases:succeed")
(lload "acts;cases:new verbs")


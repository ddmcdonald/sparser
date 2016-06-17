;;; -*- Mode: Lisp; Syntax: COMMON-LISP; -*-
;;; Copyright (c) 2011-2017 David D. McDonald. All Rights Reserved.

;; initiated 3/8/11. Pulled in file-local exports 10/6/14 in effort
;; to accommodate changes in MCL 10.0

(in-package :cl-user)

(defpackage :ddm-util
  (:use :common-lisp #+ccl :ccl)
  (:export ;; util
           #:d
           #:then #:else
           #:reintern-symbols
           #:break-up-at
           #:defobject
           #:until
           #:dbind
           #:defsubst
           #:let-with-dynamic-extent
           #:let*-with-dynamic-extent
           #:temporarily-inhibit-fdefine-warnings
           #:cond-every
           #:add1 #:sub1
           #:mbug

           ;; lists
           #:ensure-list
           #:append-new
           #:mapappend
           #:pl
           #:tail-cons
           #:appendf #:nconcf
           #:quote-every-other-one
           #:assq #:memq #:memq/assq
           #:alist-to-plist
           #:plist-to-alist
           #:reverse-plist
           #:choose
           #:deep-copy
           #:flatten #:flattenc
           #:all-the-same

           ;; strings
           #:string-append
           #:s-intern
           #:*whitespace-chars*
           #:remove-leading-whitespace
           #:remove-prefix
           #:remove-suffix
           #:remove-trailing-whitespace
           #:trim-whitespace
           #:contains-whitespace
           #:spaced-string
           #:underscore-interleaved-string

           ;; hash-tables
           #:all-hash-keys
           #:all-hash-vals
           #:hashtable-to-alist
           #:hash-counts

           ;; indentation
           #:emit-line #:emit-line-continue
           #:push-indentation #:pop-indentation
           #:with-indentation
           #:initialize-indentation
           #:get-indentation
           #:string-of-N-spaces

           ;; indexed-object
           #:obj#
           #:index-object
           #:indexed-object
           #:indexed-object-index

           ;; push-debug
           #:push-debug
           #:pop-debug
           #:peek-debug
           #:clear-debug

           ;; auto-gen
           #:instantiate-type
           #:set-auto-gen-symbol-package
           #:*data-structure-for-auto-gen*

           ;; time
           #:decoded-to-encoded-time
           #:date-as-formatted-string
           #:time-as-formatted-string
           #:month-day
           #:month-day-year
           #:date-&-time-as-formatted-string
           #:day-&-month-as-formatted-string
           #:day-month-&-year-as-formatted-string
           #:write-time-readably))

;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; Copyright (c) 2011 David D. McDonald All Rights Reserved
;;; $Id$

;; initiated 3/8/11.

(in-package :cl-user)

(defpackage :ddm-util
    (:use :common-lisp
          #+ccl :ccl)
    (:export #:d 
             #:string-append #:concat

	  ;; n.b. there are other MISC.LISP lispm-era utils not yet
	  ;; checked out and carried forward
             #:append-new
             #:keys-of-association-list 
             #:tail-cons #:deep-copy
             #:flatten #:flattenc
             #:sexp-contains-symbol #:split-list-on-first-keyword
             #:gensymbol
             #:launder-sexp-symbols-package
             #:ordinal-ending
             #:string->list-of-symbols #:string->Java-style-symbol
             #:sexp->string
             #:upcase-first-lettr #:capitalize-symbol
             #:replace-periods-with-underbars #:replace-bad-URI-characters
             #:ends-in
             ;; unchecked goes here
             #:hashtable-to-alist
             #:break-up-at
             #:defobject
             #:symbol-name-string-lessp
             #:until 
             #:dbind #:defsubst
             #:let-with-dynamic-extent #:let-with-dynamic-extent-unless-bound
             #:let*-with-dynamic-extent 
             #:comment
             #:temporarily-inhibit-fdefine-warnings 
             #:cond-every
             #:apush #:add-association #:remove-association #:delete-association
             #:*tabbed-format-column* #:tabbed-format #:format-fully-qualified
             #:add1 #:sub1
             #:newline
             #:list-hash-table
             #:mbug #:mbreak #:sorry

             ;; auto-gen
             #:instantiate-type
             #:*data-structure-for-auto-gen*
             #:set-auto-gen-symbol-package
             ))

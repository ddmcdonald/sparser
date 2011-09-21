;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE -*-
;;; $Id: lispm copy.lisp 96 2007-06-18 17:27:12Z dmcdonal $

;;;MUMBLE-86: lisp > misc

;;; Copyright (C) 1985, 1986, 1987, 1988, 1989  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006-2007 BBNT Solutions LLC. All Rights Reserved

;; 3/30/07 revised to fit into ddm-util

(in-package :ddm-util)

;;;--------------------------------------------------------
;;;  Revisions to Misc to run in Allegro.   3/89 ddm
#|

 All of the system conditionals have been removed, and the code not
 germain to Allegro removed.

 The Defxxx-export routines have been removed in favor of taking this
 file to be fixed/finished and having one large Export expression at
 the beginning.

|# 

;;note 1/92 all the macros, etc with ! in them have been removed.
;;this is used as a character macro in SPROKET, and those macros
;;were really not necessary.  they were syntactic sugar over "setf"s
















;;; ============================================================================
;;; Strings and Symbols


(defun mumble-composite-symbol (&rest args)
  "Create a symbol in the mumble package out of the concatenation of ARGS"
  (intern (string-downcase (apply #'concatenate 'string
				  (mapcar #'string args)))
	  (find-package :mumble)))




(export '
	  
	  mumble-composite-symbol
	  
	  string-append)
	(find-package :ddm-uti))

(when (find-package :mumble)
  (import '(ddm-util:defsubst
	    ddm-util:then 
	    ddm-util:else
	    ddm-util:until
	    ddm-util:dbind
	    ddm-util:let-with-dynamic-extent ddm-util:let*-with-dynamic-extent
	    ddm-util:comment
	    ddm-util:temporarily-inhibit-fdefine-warnings
	    ddm-util:cond-every
	    ddm-util:mumble-composite-symbol
	    ddm-util:deff
	    ddm-util:substring ;; == subseq
	    ddm-util:append-list
	    ddm-util:list-of-symbols?
	    ddm-util:make-unbound
	    ddm-util:apush ddm-util:add-association 
	    ddm-util:remove-association ddm-util:delete-association
	    ddm-util:*tabbed-format-column* 
	    ddm-util:tabbed-format modify-format-string
	    ddm-util:tilde? ddm-util:return-char? ddm-util:insert-tab
	    ddm-util:format-fully-qualified-string
	    ddm-util:add1 ddm-util:sub1
	    ddm-util:newline
	    ddm-util:boolean?
	    ddm-util:list-hash-table
	    ddm-util:string-append)
	  (find-package :mumble)))

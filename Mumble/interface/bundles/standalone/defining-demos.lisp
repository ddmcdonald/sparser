;;; -*- Mode: Lisp; Package:MUMBLE; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$

;;;  MUMBLE-86:  interface> defining-demos
;;;
;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald and the
;;;    Mumble Development Group.  All rights reserved.
;;;    Permission is granted to use and copy this file of the Mumble-86 system for
;;;    non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved


;################################################################
;  Special forms for standalone test realization specificiations
;################################################################

(in-package :mumble)

(defparameter *demo-choice-item-list* nil
  "holds all demos defined as strings used by the demo option in 
   the command menu")

(add-mumble-initialization
  #'(lambda ()
      (setq *demo-choice-item-list*
	    (nreverse *demo-choice-item-list*))))

(defvar *demo-sexps* nil
  "The S-expression from a def-demo-rspec.  The Interactive Demo needs these
so that it can create a message.") 

#|

  "The standalone interface is how we test Mumble when we don't have an actual
planner feeding Mumble actual realization-specifications.  Consequently, we want
a little help in consing up fake realization specifications.  What we have done
is define a small notation using s-expressions, which will then be translated
into the appropriate Mumble objects.  
   DEF-DEMO-RSPEC defines a function which is the demo and that function creates
a message out of the RSPEC-LIST as the first step in running a demo (which means
we always get fresh rspecs even when a demo is run more than once).  
   This is the syntax for the rspec-list:

1. Words are denoted by strings:  \"Soleil\"

2. Pronouns are denoted by symbols:  first-person-singular

3. Kernel Specifications are denoted by lists:  (name &rest args)
NAME is the name of the realization function to use, and args can be any 
specification, including words, pronouns, kernels and bundles.

4. Bundle Specifications are also denoted by lists:  
 (bundle-type &key head accessories further-specifications)
They can be distinguished from Kernels because the car must be the name of a
bundle-type, such as discourse-unit or general-np.  Depending on the 
bundle-type, these keyword arguments may be semantically optional.  They are all
optional as far as the syntax of the standalone interface cares.

Because of the flat plist style of these, the accessories and the further 
specifications must be encloses in parentheses.  For example:
 (general-np :head <spec>
	     :accessories (:number singular :gender male ...)
	     :further-specifications (fspec1 fspec2 ...))

5. Further Specifications are sublists of the further-specifications list of
a bundle.  Their syntax is pure plist:
 (&key specification attachment-function related-to)
The specification is required; the other two are optional.

In addition, the standalone interface provides two specially interpreted 
symbols:  *self* and *head*.  While translating the further specifications of 
a bundle, these symbols are bound to the bundle itself and to the head rspec of 
the bundle, respectively.  This is done because s-expressions are trees, and 
therefore you cannot have sublists refer to the list itself or parts of the 
list.

Along this line, the standalone interface also guarantees that s-expressions
which are EQUAL will result in specifications which are EQ.  Without this 
feature, there would be no way to have an rspec appear more than once in a
demo message, which is clearly something we need to be able to do.  For 
instance, the :wh accessory needs to refer to some specification in the head of 
the bundle."

|#


(defmacro def-demo-rspec (demo-name
			  text-produced
			  reason-for-this-demo
			  &body rspec-list)
  (check-type demo-name            symbol)
  (check-type text-produced        string)
  (check-type reason-for-this-demo string)
  `(progn (pushnew '(,demo-name
		     :value
		     ,demo-name
		     :documentation
		     ,(format nil "~a~%~a" text-produced reason-for-this-demo))
		   *demo-choice-item-list*
		   :key #'car)
	  (setf *demo-sexps* (add-association ',demo-name ',rspec-list *demo-sexps*))
	  ;;(record-source-file-name ',demo-name 'def-demo-rspec)
	  (defun ,demo-name ()
	      (mumble-a-demo ',rspec-list))))

(defun mumble-a-demo (message)
    (setq *pending-discourse-units* (create-message  message))
    (initialize-mumble)
    (when *window-code?*
      (initialize-message-window-and-display-message *pending-discourse-units*))
    (mumble *pending-discourse-units*)
    (when *window-code?*
      (let* ((mdw  *message-display-window*)
	     (yah  (send mdw :you-are-here-blinker)))
	(send yah :set-visibility nil))))
	

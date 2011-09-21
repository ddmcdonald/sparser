;;; -*- Syntax: Common-lisp; Mode: LISP; Package: MUMBLE;  -*-
;;; $Id: glass-tty-menus.lisp 100 2007-07-04 14:31:27Z dmcdonal $

;;;MUMBLE-86 lisp > glass-tty-menus

;;; Copyright (C) 1985, 1986, 1987, 1988  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

(in-package :mumble)



;;;; Menus, specifically glass-tty menus.

(defparameter *valid-menu-item-types*
	'(:value :eval :funcall :menu :buttons)
  "The valid menu item types for glass-tty menu-choose.")

(defun valid-item? (type value)
  "Determine if VALUE of item of TYPE is valid or not:
    :value   - Any value for a :value item is okay.
    :eval    - Certain things aren't evaluable, but we can't easily
               check for those.
    :funcall - We can check that things are reasonably funcall-able.
    :menu    - The value must be a menu object.  If it's a symbol,
               it is evaluated.  Actually, the only thing it needs
               is to handle the :choose message, since that's all that
               will be done to it.
    :buttons - The value must be a list of length three.  Each element
               must be a valid menu item."
  (ecase type
    (:value   t)
    (:eval    t)
    (:funcall (or (and (symbolp value)
		       (fboundp value))
		  (functionp value)))
    (:menu    (progn (when (symbolp value)
		       (setq value (symbol-value value)))
		     (if (not *window-code?*)
			 (listp value)
			 (and (instance? value)
			      (send value :operation-handled-p :choose)))))
    (:buttons (and (listp value)
		   (= (length value) 3)
		   (every #'valid-menu-item? value)))))

(defun valid-menu-item? (item)
  (or (atom item)
      (and (listp item)
	   (atom (first item))
	   (keywordp (second item))
	   (member (second item) *valid-menu-item-types*)
	   (valid-item? (second item) (third item)))))

(defun valid-list-of-menu-items? (l)
  (and (listp l) (every #'valid-menu-item? l)))

(defun display-menu (item-list preamble stream)
  (format stream "~2&")
  (when preamble
    (format stream preamble)
    (format stream "~&"))
  (let ((index 1))
    (dolist (item item-list)
      (let ((name  (if (listp item) (car item) item)))
	(format stream "~5t~d.  ~a~%" index name)
	(incf index)))))

(defun tty-menu-choose
	      (item-list &optional preamble (stream *terminal-io*))

  "Like tv:menu-choose, except that it only requires a dumb terminal.  The
syntax for the item-list is similar, except that fewer options are allowed for
items' `execution' behavior:  only :value, :eval, :funcall, :menu and :buttons.
This leaves out :funcall-with-self, :no-select, :kbd, and :window-op.  The
items can also be bare atoms, in which case they are returned if selected.
Thus, the item 'foo is equivalent to '(foo :value foo)."

  (check-type item-list (satisfies valid-list-of-menu-items?))
  (check-type preamble  (or null string))
  (display-menu item-list preamble stream)
  (let ((number-of-items  (length item-list)))
    (format stream "Selection:  ")
    (do ((selection  (read stream) (read stream)))
	((and (numberp selection)
	      (<= 1 selection number-of-items))
	 (execute-menu-item (nth (sub1 selection) item-list) stream))
      (format stream "~&Bad selection.  Select again:  "))))
(export 'tty-menu-choose)

(defun execute-menu-item (item stream)
  (if (atom item)
      item
      (let ((type (second item))
	    (arg  (third item)))
	(ecase type
	  (:value    arg)
	  (:eval     (eval arg))
	  (:funcall  (funcall arg))
	  (:menu     (progn (if (symbolp arg) (setq arg (symbol-value arg)))
			    (if *window-code?*
				(send arg :choose)
				(tty-menu-choose arg "Sub-menu:" stream))))
	  (:buttons  (tty-menu-choose arg "Sub-options:" stream))))))


(defparameter menu-function #'tty-menu-choose
   "Pointer to function for execute for fancy menu choice")

(defun menu-choose
	      (item-list &optional preamble (stream *terminal-io*))
  "A menu-choose function which uses either TV:MENU-CHOOSE or 
TTY-MENU-CHOOSE, depending on the *WINDOW-CODE?* variable.  Using this menu
function keeps your program from depending on a fancy Lisp machine."
  (if *window-code?*
      (funcall menu-function item-list preamble)
      (tty-menu-choose item-list preamble stream)))
(export 'menu-choose)


;;; Menu Objects.  For this code to work, we don't need to assume a fancy 
;;; display, but we do need to assume flavors.  Perhaps Nancy Lehrer's
;;; Common Lisp implementation will do.

(defun print-to-string (x)
  "Returns its argument as a string, as if the object had been PRINTed.  This is
just a currying of (format nil \"~a\" x), but useful."
  (format nil "~a" x))
(export 'print-to-string)

(defun construct-menu-item-list
       (things
	&optional
	(string-function #'print-to-string)
	(documentation-format-string "Select item ~a"))
  "Useful function for creating simple :VALUE menu item lists.  You often have 
a list of things that you want to make into a menu, but you'd have to expand each
into a menu-item, with documentation, etc."
  (flet ((construct-one-menu-item (thing)
	   (let* ((name      (funcall string-function thing))
		  (mouse-doc (format nil documentation-format-string name)))
	     `(,name :value ,thing :documentation ,mouse-doc)))
	 )
    (nreverse (mapcar #'construct-one-menu-item things))))
(export 'construct-menu-item-list)


(defun tty-checklist-choose
	      (item-list &optional preamble (stream *terminal-io*))
  "Like tty-menu-choose, this is a glass-tty variant of the fancy checklist 
menus.  Like those fancy checklist menus, you only call this for value, so
only :value menu-items make sense.  (In fact, the fancy checklist menus do
allow side-effecting menu items, and so do we.  It still doesn't make a lot
of sense."

  (check-type item-list (satisfies valid-list-of-menu-items?))
  (check-type preamble  (or null string))
  (display-menu item-list preamble stream)
  (let ((number-of-items  (length item-list)))
    (format stream "List of Selections:  ")
    (do ((selections  (read stream) (read stream)))
	((and (listp selections)
	      (every #'(lambda (selection)
			 (and (numberp selection)
			      (<= 1 selection number-of-items)))
		     selections))
	 (mapcar #'(lambda (menu-item)
		     (execute-menu-item menu-item stream))
		 (mapcan #'(lambda (selection)
			     (list (nth (sub1 selection) item-list)))
			 selections))
      (format stream "~&Bad response.  Select again:  ")))))
(export 'tty-checklist-choose)

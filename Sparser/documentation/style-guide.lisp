-*- org -*-
#+STARTUP: showall
#+AUTHOR: David McDonald
#+DATE: October 23, 2016
#+TITLE: Sparser Lisp Style Guide

Developers of Sparser need to follow good practices in the Lisp code
they write. Easily read, reasonably documented code will make life
much easier for our users and ourselves. (Imagine reading your own code
a year after you wrote it.) To quote from one of the better style
guides (IMHO), https://www.cs.umd.edu/~nau/cmsc421/norvig-lisp-style.pdf, 
"Good style leads to programs that are understandable, reusable,
extensible, and easy to develop and debug." Good style is not optional.

I commend Norvig and Pitman's style tutorial to everyone. What follows
here some specific points of layout that I have found to make a big
difference in the quality of code. 

* indentation

** Never use tabs

Include this in your emacs init
(setq-default indent-tabs-mode nil)


** The clauses of an 'if' are indented two spaces

(if test
  (action1)
  (action2))

In your emacs init file this can be enforced by something like this
(defun ddm-indentation-quirks ()
  (interactive)
  (set-indent-hook 'if 1))
(add-hook 'lisp-mode-hook (function ddm-indentation-quirks))

* Use 'when' for single case 'if'

bad: (if test
       (action1))

good: (when test
        (action1))

* placement of conditions

The expression for the condition being tested in if, when, unless,
etc. should be on the same line as the operator.

(when (and (or foo bar)
           baz)
  (do-stuff))

* placement of let variables

The variables that are bound by a let must start on the same
line as the let. One variable per line, aligned.

(let ((v1 (function1))
      (v2 (function2)))
  ...)

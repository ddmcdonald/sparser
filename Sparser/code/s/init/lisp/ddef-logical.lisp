;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1997,2013,2015  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ddef-logical"
;;;   Module:  "init;Lisp;"
;;;  Version:  December 2015

;; This is a replacement for MCL's Def-logical-pathname
;; initiated 12/4/92, modified 12/16 to fix in heterogenious env.
;; 12/28 wrote revert routine.  1/27/93 reworked to make it permanent
;; given that MCL 2.0 has put the notion in it's 'going away soon'
;; category.   4/5/95 added 'reconstruction' routine.
;; 8/9 added gate to allow redefinition of logicals without the check.
;; 6/4/96 added a comment.  6/5 incorporated a sanity check before the
;; query about multiple definitions of the same logical. 10/11/97 fixed
;; a format glitch in Def-logical-pathname. 10/9/13 moved semicolon
;; check earlier in def-logical-pathname because ccl complained.
;; 12/22/15 reimplimented using Common Lisp logical pathnames.

(in-package :sparser)

(defvar *lisp-type* "lisp") ; cf. ANSI CL §19.3.1.1.4
(defvar *fasl-type* (pathname-type
                     (compile-file-pathname
                      (make-pathname :name :wild :type *lisp-type*))))

(defun lisp-file (filespec)
  (make-pathname :type *lisp-type* :defaults filespec))

(defun fasl-file (filespec)
  (make-pathname :type *fasl-type* :defaults filespec))

(defun **/* (root &rest args &key (name :wild) (type :wild) (version :wild))
  (merge-pathnames (apply #'make-pathname
                          :directory '(:relative :wild-inferiors)
                          :name name
                          :type type
                          :version version
                          :defaults root
                          args)
                   root))

(defun directory-p (pathname)
  (and (pathname-directory pathname)
       (not (pathname-name pathname))
       (not (pathname-type pathname))))

(defun logical-pathname-char-p (char)
  (or (alpha-char-p char)
      (digit-char-p char)
      (member char '(#\- #\. #\; #\*))))

(defun sparser-logical-pathname (pathspec)
  "Interpret pathspec as designating a Sparser logical pathname.
For compatibility with the old Sparser/MCL logical pathame syntax,
several simple transformations on such namestrings are performed:
1. Spaces are transformed into hyphens.
2. Characters that are not letters, digits, hyphens, semicolons (directory
   separators in the logical pathname namestring syntax; see §19.3.1),
   dots (type/version marker), or asterisks (wildcards) are removed.
3. Uppercase letters are downcased. Note that CCL's logical pathname parser
   preserves case in logical pathname namestrings (contrary to §19.3.1.1.7),
   but SBCL upcases them and then interpretes them using customary case
   (:lower on all modern systems). The names of all Sparser source files
   should thus be all lowercase."
  (etypecase pathspec
    (pathname pathspec)
    (string (handler-case (logical-pathname pathspec)
              (type-error ()
                (logical-pathname
                 (format nil "sparser:~(~a~)"
                         (remove-if-not #'logical-pathname-char-p
                                        (substitute #\- #\Space pathspec)))))))))

(defun def-logical-pathname (logical referent)
  "Define a translation for a set of Sparser logical pathnames.
Directories are interpreted as naming all files beneath them."
  (flet ((logical-filenames (pathspec &aux
                             (pathspec (sparser-logical-pathname pathspec)))
           (if (directory-p pathspec)
             (**/* pathspec)
             pathspec)))
    (pushnew (list (logical-filenames logical) (logical-filenames referent))
             (logical-pathname-translations "sparser")
             :test #'equal)))

(defun expand-logical-pathname (namestring)
  "Translate a Sparser logical pathname."
  (translate-logical-pathname (sparser-logical-pathname namestring)))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1997  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "ddef-logical"
;;;   module   "init;Lisp:"
;;;  version:  October 1997

;; This is a replacement for MCL's Def-logical-pathname
;; initiated 12/4, modified 12/16 to fix in heterogenious env.
;; 12/28 wrote revert routine.  1/27/93 reworked to make it permanent
;; given that MCL 2.0 has put the notion in it's 'going away soon'
;; category.   4/5/95 added 'reconstruction' routine.
;; 8/9 added gate to allow redefinition of logicals without the check.
;; 6/4/96 added a comment.  6/5 incorporated a sanity check before the
;; query about multiple definitions of the same logical. 10/11/97 fixed
;; a format glitch in Def-logical-pathname.

(in-package :sparser)


;;;-------------------------------------------------------
;;; parameterize the call so that we can overload it with
;;; different functions over directories
;;;-------------------------------------------------------
  
(unless (boundp '*check-for-not-purely-alphanumeric-namestrings*)
  (defparameter *check-for-not-purely-alphanumeric-namestrings* nil))
  

;;;----------------------------------------
;;; table where the correspondence is kept
;;;----------------------------------------

(defparameter *logical-to-absolute-table*
  (make-hash-table :test #'equal)
  "Takes strings naming logical pathnames into their full expansion")
  

;;;-------------------------------
;;; override of duplication check
;;;-------------------------------

(defparameter *warn-about-duplicate-ddef-logical-pathnames* t)


;;;----------------------
;;; Def-logical-pathname
;;;----------------------

(defun def-logical-pathname (logical referent)
  ;; assumes that the namestrings are given in MCL format, with
  ;; semicolons for the logical portion and colons as between directory
  ;; delimiters. The referent namestring must end with a colon.
  
  (unless (stringp referent)
    (if (listp referent)
      (setq referent (eval referent))
      (break "Wrong datatype in referent field. Should be a string ~
              or a form to be evaled.   ~A" referent)))
  
  (let ( length-of-logical logical-name 
                           referent-name-list )
    
    (setq length-of-logical (length logical))
    (unless (= (+ 1 (position #\; logical))
               length-of-logical)
      (break "The logical ~A does not end in a semicolon" logical))
    (setq logical-name (subseq logical 0 (1- length-of-logical)))
    
    (setq referent-name-list
          (decompose-namestring-into-list-of-directories referent))
    
    (unless *check-for-not-purely-alphanumeric-namestrings*
      (when (gethash logical-name *logical-to-absolute-table*)
        (when *warn-about-duplicate-ddef-logical-pathnames*
          (unless (equal (gethash logical-name *logical-to-absolute-table*)
                         referent-name-list)
            (break "The logical ~A is already defined as~
                    ~%  ~A~
                    ~%A second definition is being made as:~
                    ~%  ~A~
                    ~%If you continue, the new one will be used.~%"
                   logical
                   (gethash logical-name *logical-to-absolute-table*)
                   referent-name-list)))))
    
    (setf (gethash logical-name *logical-to-absolute-table*)
          referent-name-list)
    
    (when *check-for-not-purely-alphanumeric-namestrings*
      (dolist (name referent-name-list)
        (when (string-includes-non-alphanumerics name)
          (format t "~&\"~A\"~%" name))))
    
    referent-name-list ))


;;;-------------------------
;;; Expand-logical-pathname
;;;-------------------------

(defun expand-logical-pathname (namestring)
  (unless (= (+ 1 (position #\; namestring))
             (length namestring))
    (break "The namestring ~A is not a logical because it ~
            doesn't end in a semicolon" namestring))
  
  (let* ((namestring-w/o-semi
          (subseq namestring 0 (1- (length namestring))))
         (entry (gethash namestring-w/o-semi
                         *logical-to-absolute-table*)))
    (unless entry
      (break "The logical pathname ~A is not defined." namestring))
    entry ))




;;;--------------------------------------------
;;; swapping the root location of the logicals
;;;--------------------------------------------

(defparameter *load-time-location-of-sparser-directory*
              cl-user::location-of-sparser-directory
  "Used as a reference point in reconstructing the logicals at launch time
   when Sparser is being brought up in a different location then where
   it was when the application was made." )


(defparameter *logicals-original-expansion*
              (make-hash-table :test #'equal)
  "Takes strings naming logical pathnames into the expansions they
   had when first defined at application-construction time.")


(defun reconstruct-root-of-logical-directories ()
  ;; Called from Run-at-launch to do the work. The call is conditioned
  ;; on the flag *sparser-is-an-application?* and a check that the
  ;; load-time and launch-time locations of the Sparser directory are
  ;; different. 
  (multiple-value-bind (logical new-directories-prefix filename)
                       (decompose-lload-namestring
                        cl-user::location-of-sparser-directory)
    (declare (ignore logical filename))

    (let ((number-of-directories-to-remove
           (number-of-colons-in-string
            *load-time-location-of-sparser-directory*))
          tail  new-expansion )
      
      (maphash #'(lambda (logical-name expansion-list)
                   (setf (gethash logical-name *logicals-original-expansion*)
                         expansion-list)

                   (setq tail (nthcdr number-of-directories-to-remove
                                      expansion-list))
                   (when (equal (first tail) "code")
                     (setq tail (cddr tail)))

                   (setq new-expansion
                         (append new-directories-prefix tail))
                   (setf (gethash logical-name *logical-to-absolute-table*)
                         new-expansion)
                   ;(format t "~&~A~15,3T~A" logical-name new-expansion)
                   )

               *logical-to-absolute-table*)
      
      (hash-table-count *logical-to-absolute-table*))))



(defun number-of-colons-in-string (string)
  (let ((count 0)
        (substring string)
        index  )

    (loop
      (setq index (position #\: substring))
      (unless index (return))
      (incf count)
      (setq substring
            (subseq substring (1+ index))))

    count ))


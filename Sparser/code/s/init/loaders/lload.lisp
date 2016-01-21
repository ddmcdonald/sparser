;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1997,2012-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:  "lload"
;;;    Module:  "init;loaders;"
;;;   Version:  January 2016

;; initiated July 1990
;; 1.1  (7/19 v1.8.6)  Added capability to load .fasl or source, preferring
;;      fasls.
;; 1.2  (8/12 v1.9) Added Load-the-newest and patched Load-preferring-binaries
;;      to use it.
;; 1.3  (10/4 v2.0)  Reorganized the parameter design and added the facility
;;      for taking source files if they're newer than the fasl.
;; 1.4  (10/16 v2.0) fixed a bug in the computation of fasl namestrings, and
;;      added routines so that it wouldn't make a new fasl routine when there
;;      was one already there that was newer than the source.
;;      10/21 fixed use of "else", when it hadn't yet been defined
;;      10/22 Added the option for *just-note-changed-files*
;;      10/23 got the timing right on the reference to *time-of-image*
;; 1.5 (10/28 v2.0) wrote rest of routines needed to write copies of
;;     changed files to disk for transfer/backup.  11/1 added flags.
;; (11/25 v2.1) Added :compile keyword to LLoad, defaulted to T, so that
;;     some grammar files can be marked not to be compiled -- often avoiding
;;     wierd situations in the compiler.
;; 1.6 (12/4 v2.1) Folded in what Scott & I did at Brandeis, and modified
;;     it to also operate in non-MCL contexts.
;; 1.7 (2/10 v2.2)  Added "check-&-" to the bare calls to "load" that
;;     had been used in Compile-&-load. In Check-&-load added a form to
;;     push the file onto the files field of the current grammar module.
;;     Added Unless-bound-set to the end of the file so it could be included
;;     early and consistently in the loading process.
;; 2.0 (2/13/93) Converting to MCL2.0 -- reworking everything so that all
;;     operations are done in terms of namelists since the old Allegro
;;     notion of logicals is going away (no point in using the interim scheme
;;     they provide) and this already exists.
;; 2.1 (8/24) added Just-compile for the benefit of the compile-everything script
;;      and revitalized Special-hacks
;; 2.2 (9/8) tweeked Load-file? for benefit of incremental backup facility
;; 2.3 (9/28) wrote Copy-source-to-new-root and reorganized that whole notion
;; 2.3 (1/4/94) tweeking to make the raw form saved with the grammar module
;; 2.4 (3/24) updated Load-file? given changes to config;explicitly-loaded-files
;;      that added some more cases where the filename includes "load", and
;;      again 5/11
;;     (9/28) wrote Mac->Mac version of Copy-source-to-new-root
;; 2.5 (3/29/95) wrote Record-file-write-time facility. Added *raw-form-of-file*.
;;     (12/1) added *just-count-lines* and integrated it into LLoad
;; 2.6 (6/19/96) added another case of an explicit file to load when doing copy-files,
;;      and gave it a new keyword arg. to inhibit recursive loads 6/25.
;;     (8/18/97) and another case added to Load-file? for [bbn loader]
;; 2.7 (8/20) put a hack into Load-the-newest that when one of the files can't
;;      be found, load the other. Spelling bugs would be caught as in that
;;      neither would be found. 
;;     (8/24) modified Interpose-Unix-delimiter-in-namelist to add a slash at
;;      the very beginning of the filename, making the path absolute
;; 2.8 (10/3) Wrote Gload. (10/8) wrote Namestring-to-namelist. (12/6) extended
;;      the explicit list of files in Load-file?
;;     (1/5/07) Small tweaks to get a unix-based load on OSX.
;; 2.9 (1/23) Set of changes to get copy-file to work under Allegro. Goes through
;;      ACL's excl.shell:cp, but doesn't work. Didn't do further debugging.
;; 2.10 (8/29/07) Adding/modifying as needed to handle MSWindows file systems.
;;      (1/28/13) Added a guard for the file write dates existing in just-compile.
;;      (1/29/13) put #+allegro, #+openmcl around value of *prefer-binaries* to keep
;;       CCL from trying to understand ACL fasls.  (5/6/13) Put a check in expand-namestring
;;       for the possibility that it was passed a unix filestring. 


(in-package :sparser)

;;;---------------------
;;; globals for loading
;;;---------------------

(defvar *compile* t
  "If non-nil, lload looks for a .fasl version of a file (or whatever
is appropriate for the Lisp being used) and loads it if there is one
and it is newer than the source version; otherwise, the source file
is compiled and then loaded. The directory where the compiled files
are to be found is determined by the logical pathname translations
set up in the \"init;loaders;logicals\" file.")

(defvar *edit* nil
  "If non-nil, lload invokes the editor instead of loading a source file.")

(defvar *just-count-lines* nil
  "Controls whether the loading process is actually to be used as
an automatic way of counting source lines in the Sparser codebase.")

(defvar *lloaded-files* nil
  "The truenames of all the lloaded files.")

(defvar *file-being-lloaded* nil
  "Available to Sparser define forms.")

(defvar *suppress-duplicate-definition-warning* nil
  "If false, warn about duplicate definitions.")

;;;--------------
;;; the routine
;;;--------------

(defun lload (filespec &aux (filespec (sparser-logical-pathname filespec)))
  "Load, compile & load, edit, or count the lines in a Sparser source file."
  (cond (*edit* (ed (lisp-file filespec)))
        (*just-count-lines* (just-count-the-lines-of-code filespec))
        (*compile* (compile-&-load filespec))
        (t (check-&-load filespec))))

(defun check-&-load (filespec &rest args &aux
                     (filespec (if (pathname-type filespec)
                                 filespec
                                 (lisp-file filespec)))
                     (*file-being-lloaded* filespec))
  "Load a Sparser source file."
  (when (handler-bind (#+sbcl (style-warning #'muffle-warning))
          (apply #'load filespec args))
    (push (truename filespec) *lloaded-files*)
    filespec))

;;;--------------------------------
;;; recording definition locations
;;;--------------------------------

(define-condition redefinition-warning (warning)
  ((object :reader redefined-object :initarg :object)
   (previous-location :reader previous-location :initarg :previous-location)
   (new-location :reader new-location :initarg :new-location))
  (:documentation "An object is being redefined in a new file.")
  (:report (lambda (condition stream)
             (format stream "Redefining ~a~@[in ~a~].~%~
                             Previous definition was in ~a."
                     (redefined-object condition)
                     (new-location condition)
                     (previous-location condition)))))

(defmacro without-redefinition-warnings (&body forms)
  "Run FORMS with redefinition warnings muffled."
  `(handler-bind ((redefinition-warning #'muffle-warning))
     ,@forms))

(defun file-location (object)
  (get-tag :file-location object))

(defun note-file-location (object &optional (location *file-being-lloaded*))
  "Called from the definition routines for the various kinds of objects."
  (unless location
    (return-from note-file-location))
  (let ((previous-location (get-tag :file-location object)))
    (when (and previous-location (not (equal location previous-location)))
      (warn 'redefinition-warning
            :object object
            :previous-location previous-location
            :new-location location)))
  (setf (get-tag :file-location object) location))

;;;----------------------------
;;; fasl loading & compilation
;;;----------------------------

(defun compile-&-load (filespec &rest args &aux
                       (lisp-file (lisp-file filespec))
                       (fasl-file (fasl-file filespec)))
  "Compile the file if out of date, then load the fasl."
  (apply #'check-&-load
         (if (and (probe-file fasl-file)
                  (>= (file-write-date fasl-file)
                      (file-write-date lisp-file)))
           fasl-file
           (compile-file lisp-file
                         :output-file (ensure-directories-exist fasl-file)))
         args))

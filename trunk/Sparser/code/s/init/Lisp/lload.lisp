;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990-1997,2012-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "lload"
;;;    Module:   "init;Lisp:"
;;;   Version:   2.10 January 2013

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
;;       CCL from trying to understand ACL fasls. 


(in-package :sparser)

;;;---------------------------------------
;;;  default values for the control flags
;;;---------------------------------------
;; The boundp check allows the parameters to have been set in
;; the configuration file, which will have been loaded before
;; this one.

(or (boundp '*compile*)
    (defparameter *compile* nil    ;;...-if-source-is-newer*
      "Controls whether the loading process is actually to be taken as an
       automatic way of getting the whole system compiled"))

#|
  If you're on a machine where you run Sparser in both Franz's Allegro and
in Clozure, you probably have binaries that were compiled for ACL which
make absolutely no sense for CCL (which in any event will compile on
the fly). This feature setting sorts that out.  If we get another lisp
in the mix (this will blow out) we should revisit the whole treatment. 
|#
(or (boundp '*prefer-binaries*)
    (defparameter *prefer-binaries* 
      #+allegro t
      #+openmcl nil
      "If non nil, lload looks for a .fasl version of a file and loads
       it if there is one, otherwise it loads the source version."))

(or (boundp '*insist-on-binaries*)
    (defparameter *insist-on-binaries* nil
      "A flag read by LLoad that has it just load the fasl version
       of the files without ever looking at the sources."))

(or (boundp '*just-note-changed-files*)
    (defparameter *just-note-changed-files* nil
      "A flag that specializes LLoad to just do comparisons of the 
       write dates of files rather than load them."))

(unless (boundp '*just-count-lines*)
  (defparameter *just-count-lines* nil
    "A flag that specializes LLoad to just count the lines of code
     in the files it opens rather than load them."))


(or (boundp '*copy-file*)
    (defparameter *copy-file* nil))


(or (boundp '*suborn-non-unix-file-characters*)
    (defparameter *suborn-non-unix-file-characters* t))


(unless (fboundp 'special-hacks)
  (defun special-hacks (raw-namestring namestring)
    (declare (ignore raw-namestring namestring))))


;;;---------------
;;; other globals
;;;---------------

(defvar *file-being-lloaded* nil)
  ;; available to Sparser define forms

(defvar *raw-form-of-file* nil
  "Lload is called with a file descriptor that typically contains
   a ddef-logical directory.  It is shorter and easier to index
   off of.")


;;;--------------
;;; the routine
;;;--------------

(defun lload (namestring  &key (compile t))
  ;; the namestring has to be converted to the notation of the
  ;; file system being used.  This takes place at a different point
  ;; for each case since they need to made different observations.
  (setq *raw-form-of-file* namestring)
  (cond ;;special uses of lload
        (*insist-on-binaries*
         (load-fasl-only namestring))
        (*compile*
         (compile-&-load namestring compile))
        (*just-note-changed-files*
         (just-note-if-changed namestring))
        (*just-count-lines*
         (just-count-the-lines-of-code namestring))
        (*copy-file*
         (copy-source-to-new-root namestring))
        (*prefer-binaries*
	 ;; Why there's an optional argument is lost to history
	 ;; but since MCL always incrementally compiled it 
	 ;; probably wouldn't have mattered.
         (load-preferring-binaries namestring t)) ;;compile))
        (t (check-&-load namestring))))



;;;---------------------------------------------------------
;;; make sure the file exists before you load it, fail-soft
;;;---------------------------------------------------------

(defun check-&-load (raw-namestring  &key already-expanded? )
  (let ((namestring (if already-expanded?
                      raw-namestring
                      (expand-namestring raw-namestring))))

    (when (and (not (probe-file namestring))
	       (not (ends-in-dot-lisp namestring))
	       (not (ends-in-dot-fasl namestring)))
      (setq namestring (concatenate 'string namestring ".lisp")))

    (if (probe-file namestring)
      (let ((*file-being-lloaded* namestring))
        (load namestring)
        (special-hacks raw-namestring namestring)
        (record-file-write-time namestring)
        (when (and (boundp '*grammar-module-being-loaded*)
                   ;; have to also check if it's bound to allow LLoad
                   ;; to be used when the grammar module facility isn't
                   ;; yet loaded.
                   *grammar-module-being-loaded*)
          (record-file-in-grammar-module raw-namestring))
        namestring )
      (progn
        (unless (y-or-n-p "~%~%There is no file ~A.~
                           ~%    continue with the rest of the load?"
                          namestring )
          (break "You can load the file by hand and continue."))))))

(defun ends-in-dot-lisp (namestring)
  (let ((position-of-dot (position #\. namestring :from-end t)))
    (when position-of-dot
      (string-equal ".lisp" (subseq namestring position-of-dot)))))

(defun ends-in-dot-fasl (namestring)
  (let ((position-of-dot (position #\. namestring :from-end t)))
    (when position-of-dot
      (string-equal ".fasl" (subseq namestring position-of-dot)))))

(defun prune-extension-from-filename (string)
  (let ((position-of-dot (position #\. string :from-end t)))
    (when position-of-dot
      (subseq string 0 position-of-dot))))



;;;-----------------------------
;;; load fasl instead of source
;;;-----------------------------

(defun load-preferring-binaries (namestring
                                 &optional (compiled-available? t))
  ;; called straight from lload, so the namestring isn't expanded yet.
  (if compiled-available?
    (let* ((fasl-namelist (fasl-namestring namestring))
           (fasl-namestring (expand-namestring fasl-namelist
                                               :already-expanded? t)))
      ;(break "fasl-namelist = ~a~%fasl-namestring = ~a~%namestring = ~a" 
      ;	     fasl-namelist fasl-namestring namestring)
      (if (probe-file fasl-namestring)
        (load-the-newest fasl-namestring
                         (expand-namestring namestring))

        (check-&-load namestring :already-expanded? nil)))
    (check-&-load namestring :already-expanded? nil)))



(defun load-fasl-only (raw-namestring)
  (let* ((fasl-namelist (fasl-namestring raw-namestring))
         (fasl-namestring (expand-namestring fasl-namelist
                                             :already-expanded? t)))
    (if (probe-file fasl-namestring)
      (load fasl-namestring)
      (unless (y-or-n-p "~%~%There is no file ~
                         ~%    ~A.~
                         ~%    continue with the rest of the load?"
                        fasl-namestring )
        (break "You can load the file by hand and continue.")))))
  

;;;-----------------------------
;;; load the newer of two files
;;;-----------------------------

(defun load-the-newest (preferred alternate)
  (if (and (probe-file preferred)
           (probe-file alternate))
    (let ((date-of-preferred (file-write-date preferred))
          (date-of-alternate (file-write-date alternate)))
      
      (if (> date-of-preferred
             date-of-alternate)
        (check-&-load preferred :already-expanded? t)
        (check-&-load alternate :already-expanded? t)))

    ;; Otherwise we've rearranged the directories for some reason,
    ;; presumably a hack for a combination of source and binaries
    ;; in a license and we haven't yet gotten a flag set that does
    ;; the right thing.  In this case, load the one that exists.
    (else
      (when (not (or (probe-file preferred)
                     (probe-file alternate)))
        (break "Snafu: neither of the two variations of the file exist:~
                ~%  preferred: ~A~%  alternate: ~A~%"
               preferred alternate))
      (if (probe-file preferred)
        (check-&-load preferred :already-expanded? t)
        (check-&-load alternate :already-expanded? t)))))


;;;-----------------------------------
;;; compile the file and then load it
;;;-----------------------------------

(defun compile-&-load (raw-namestring compile?)
  (if compile?
    (let ((raw-output-file (fasl-namestring raw-namestring)))
      (let ((output-file
             (expand-namestring raw-output-file :already-expanded? t))
            (namestring (expand-namestring raw-namestring)))
        ;; check whether there an existing fasl and whether it is newer
        ;; than the source file, in which case we need do nothing.
	(unless (ends-in-dot-lisp namestring)
	  (setq namestring (concatenate 'string namestring ".lisp")))
        (if (probe-file output-file)
          (let ((date-of-fasl   (file-write-date output-file))
                (date-of-source (file-write-date namestring)))
            (if (> date-of-source
                   date-of-fasl)
              (progn
                (cl-user::routine-to-compile-file namestring output-file)
                (check-&-load output-file :already-expanded? t))
              (progn
                (format t "~&Existing fasl file is newest: ~A" output-file)
                (check-&-load output-file :already-expanded? t))))
          (progn
            (cl-user::routine-to-compile-file namestring output-file)
            (check-&-load output-file :already-expanded? t)))))

    (check-&-load raw-namestring)))


(defun just-compile (raw-namestring)
  (let ((raw-output-file (fasl-namestring raw-namestring)))
    (let ((output-file
           (expand-namestring raw-output-file :already-expanded? t))
          (namestring (expand-namestring raw-namestring)))
      
      ;; check whether there an existing fasl and whether it is newer
      ;; than the source file, in which case we need do nothing.
      (if (probe-file output-file)
        (let ((date-of-fasl   (file-write-date output-file))
              (date-of-source (file-write-date namestring)))
          (if (and (and date-of-source date-of-fasl)
                   ;; source date turned up nil during just-compile of
                   ;; config;grammar-modules
                   (> date-of-source
                      date-of-fasl))
            (progn
              (cl-user::routine-to-compile-file namestring output-file))
            (progn
              (format t "~&Existing fasl file is newest: ~A" output-file))))
        (progn
          (cl-user::routine-to-compile-file namestring output-file))))))



;;;----------------------------------------------
;;; getting the namestring into the right format
;;;----------------------------------------------

(defun expand-namestring (namestring &key already-expanded?)
  ;; The namestring is in the original Allegro format, almost invariably
  ;; incorporating a "logical" pathname in that sense, i.e. not the kind
  ;; introduced in Steele-2.  The logical has to have the appropriate
  ;; hard directory sequence substituted for it.
  ;;
  ;; Because we're also prepared to automatically generate the directory
  ;; separators used by other file systems, we do the expansion by
  ;; first 'expanding' the name string into a list where each component
  ;; of the name is an item.  We then rebuild the appropriate string
  ;; format, interposing the separators that go with the system in use.
  ;; If the file system calls for it, we also restrict the kinds of
  ;; characters in the names, doing substitutions where needed.

  (let ((*suborn-non-unix-file-characters*
         (cond ((or cl-user::*unix-file-system*
                    cl-user::*unix-file-system-inside-mac*)
                t)
	       (cl-user::*windows-file-system*
		t)
               (cl-user::*mac-file-system*
                nil)
               (t (break "File-system flags aren't set")))))

    (let ((expanded
	   (expand-namestring1 namestring
			       :already-namelist? already-expanded?)))
      (unless *compile*
	;; in which case we don't expect the file to exist
	(when (and (not (probe-file expanded))
		   (not (ends-in-dot-lisp expanded)))
	  ;; the namestring didn't include ".lisp"
	  (setq expanded (concatenate 'string expanded ".lisp"))))

      expanded)))


(defun expand-namestring1 (namestring &key already-namelist?)
  (let ((namelist
         (if already-namelist?
           namestring
           (namestring-to-namelist namestring))))
    
    (when *suborn-non-unix-file-characters*
      (let ( suborned-list )
        (dolist (name namelist)
          (push (suborn-non-unix-file-characters name)
                suborned-list))
        (setq namelist (nreverse suborned-list))))

    (namelist-to-namestring namelist)))


(defun namestring-to-namelist (namestring)
  ;; This is the guts of expand-namestring1
  (multiple-value-bind (logical directories filename)
                       (decompose-lload-namestring namestring)
    
    (if logical
      (append (expand-logical-pathname logical)
              directories
              (list filename))
      (append directories (list filename)))))


(defun namelist-to-namestring (namelist)
  (let ((namestring
         (cond (cl-user::*unix-file-system*
                (namelist-to-unix namelist))
               (cl-user::*unix-file-system-inside-mac*
                (namelist-to-Mac namelist))
	       (cl-user::*windows-file-system*
		(namelist-to-MSW namelist))
               (cl-user::*mac-file-system*
                (namelist-to-Mac namelist))
               (t (break "File system isn't defined")))))

      namestring ))


;;;----------------------------------------
;;; interposing the appropriate separators
;;;----------------------------------------

(defun namelist-to-unix (namelist)
  (let ((list-with-delimiters
         (interpose-Unix-delimiter-in-namelist namelist)))
    (apply #'concatenate 'string list-with-delimiters)))

(defun interpose-Unix-delimiter-in-namelist (namelist)
  (let ( list-with-interpositions )
    (dolist (name namelist)
      (push name list-with-interpositions)
      (push "/"  list-with-interpositions))

    (let ((end-cleaned-up
           ;; leave off the final "/"
           (nreverse (cdr list-with-interpositions))))

      ;; Make it an absolute pathname by ensuring that it begins
      ;; with a slash. Note that Mac pathnames start with volume names
      ;; without any sort of character in front of them.
      (cons "/" end-cleaned-up))))

(defun namelist-to-MSW (namelist)
  (let ((list-with-delimiters
	 (interpose-MSW-delimiter-in-namelist namelist)))
    (apply #'concatenate 'string list-with-delimiters)))

(defun interpose-MSW-delimiter-in-namelist (namelist)
  (let ( list-with-interpositions 
	(slash (make-string 1 :initial-element #\\)))
    (dolist (name namelist)
      (push name list-with-interpositions)
      (push slash  list-with-interpositions))
    (let ((end-cleaned-up
	   (nreverse (cdr list-with-interpositions))))
      ;; An absolute pathname on MSWindows starts with a volume letter
      ;; as well as a slash
      (cons cl-user::MSWindows-volume
	    (cons (make-string 1 :initial-element #\\)
		  end-cleaned-up)))))




(defun namelist-to-Mac  (namelist)
  ;; takes a list of directory elements and constructs the corresponding
  ;; namestring in MCL format
  (let ((list-with-delimiters
         (interpose-Mac-delimiter-in-namelist namelist)))
    (apply #'concatenate 'string list-with-delimiters)))

(defun interpose-Mac-delimiter-in-namelist (namelist)
  (let ( list-with-interpositions )
    (dolist (name namelist)
      (push name list-with-interpositions)
      (push ":"  list-with-interpositions))

    ;; leave off the final ":"
    (nreverse (cdr list-with-interpositions))))


(defun unix-namestring-to-mac (ns)
  ;; the input is a namestring in unix format, i.e. with slashes.
  ;; we construct the corresponding string with colons substituted
  ;; for all but the initial slash
  (let ((tmp (substitute #\: #\/ ns)))
    (subseq tmp 1)))

(defun mS-namestring-to-mac (ns)
  ;; Same idea, but with the slash in the other direction.
  (let ((tmp (substitute #\: #\\ ns)))
    (subseq tmp 1)))



;;------------------------------------------------------
;;-------------- move !!!!!!!!!!!!!!!!!
;;------------------------------------------------------

(defun note-file-location (object)
  ;; called from the definition routines for the various kinds of
  ;; objects.
  (let ((plist (plist-for object))
        (location *file-being-lloaded*))
    (when (null location)
      ;; there's no value for the file, so this instance must be
      ;; directly from the editor, in which case we shouldn't
      ;; warn them since they're presumably doing it on purpose.
      (return-from note-file-location))

    (let ((entry (cadr (member :file-location plist :test #'equal))))
      (if entry
        (progn
          (format t "~&~%Multiple definition of ~A~
                     ~%  earlier definition was in ~A"
                  object entry)
          (if (consp entry) ;; multiple sites already?
            (rplacd entry
                    (cons location
                          (cdr entry)))
            (push-onto-plist object
                             (list entry location)
                             :file-location)))
        (push-onto-plist object
                         location  ;; value
                         :file-location)))))


;;;-----------------------------------------------------
;;; constructing alternative versions of the namestring
;;;-----------------------------------------------------


(defun fasl-namestring (MCL1.3-namestring
                        &key (raw-file-style :namelist))

  (unless (boundp '*source-root*)
    (error "Global pointers to the directories for the source and binary ~
            have not~%been provided, e.g. \"*source-root*\""))

      
  (multiple-value-bind (logical directories filename)
                       (decompose-lload-namestring MCL1.3-namestring)
    (when (ends-in-dot-lisp filename)
      (setq filename (prune-extension-from-filename filename)))

    (ecase raw-file-style
      (:namestring
       (let* ((expanded-logical
               (namestring (expand-logical-pathname logical)))
              (expd-minus-root
               (subseq expanded-logical (length *source-root*))))


         (concatenate 'string
                      (if (equal *source-root* *root-for-binaries*)
			*source-root*
			*root-for-binaries*)  ;; ends in a ":"
                      expd-minus-root
                      (apply #'concatenate
                             'string
                             (mapcar #'(lambda (d)
                                         (concatenate
                                          'string
                                          d
                                          ":"))
                                     directories))
                      filename
                      "."
                      *fasl-extension*)))
      (:namelist
       (let* ((expanded-logical
               (if logical
                 (expand-logical-pathname logical)
                 nil))
              (expd-minus-root
               (progn
                 (when (stringp *source-root*)
                   (setq *source-root*
                         (decompose-directory-string-into-list
                          *source-root*)))
                 (nthcdr (length *source-root*)
                         expanded-logical))))

         (when (stringp *root-for-binaries*)
           (setq *root-for-binaries*
                 (decompose-directory-string-into-list *root-for-binaries*)))

	 (if (equal *source-root* *root-for-binaries*)
	   ;; This is a hack
	   (append expanded-logical
		   directories
		   (list
		    (concatenate 'string
				 filename "." *fasl-extension*)))    
	   
	   (append *root-for-binaries*
		   expd-minus-root
		   directories
		   (list
		    (concatenate 'string
				 filename "." *fasl-extension*)))))))))


;;;------------------------------------------------------
;;; decomposing MCL1.3 namestrings into their components
;;;------------------------------------------------------

(defun decompose-lload-namestring (namestring)

  ;; separate out the mcl1.3 logical, the sequence of directories (if any)
  ;; and the filename

  (let ((index-semicolon (position #\; namestring)))
    (let* ((logical
            (if index-semicolon
              (subseq namestring 0 (1+ index-semicolon))
              nil))
           (remainder
            (if index-semicolon
              (subseq namestring (1+ index-semicolon))
              namestring)))
      (multiple-value-bind (directories filename)
                           (decompose-directories-in-namestring remainder)
        (values logical
                directories
                filename)))))


(defun decompose-directories-in-namestring (namestring
                                            &key (directories-as-list?
                                                  t))

  (let* ((reversed-namestring (reverse namestring))
         (last-colon (or (position #\: reversed-namestring)
			 (position #\/ reversed-namestring)
			 (position #\\ reversed-namestring)))
         (filename
          (if last-colon
            (if (= last-colon 0)
              nil
              (reverse (subseq reversed-namestring 0 last-colon)))
            namestring))
         directories )
;    (break "reversed-namestring = ~a, last-colon = '~a'" 
;	   reversed-namestring last-colon)
    (setq directories
          (if directories-as-list?
            (decompose-directory-string-into-list
             (subseq namestring 0 (- (length namestring)
                                      (length filename))))
            (if last-colon
              (subseq namestring 0 (- (length namestring)
                                      (length filename)))
              nil)))

    (values directories
            filename)))



(defun decompose-directory-string-into-list (namestring)
  (if (equal namestring "")
    nil
    (let ((delimiter-char
	   (cond ((position #\: namestring) #\:)
		 ((position #\/ namestring) #\/) ;; can't use "/" in file names
		 ((position #\\ namestring) #\\)
		 (t (break "Cannot sus out what directory delimiter to use")))))
      (do* (directories
	    (next-colon (position delimiter-char namestring)
			(position delimiter-char remainder))
	    (next-directory (subseq namestring 0 next-colon)
			    (subseq remainder  0 next-colon))
	    (remainder (subseq namestring (1+ next-colon))
		       (if next-colon
			 (subseq remainder  (1+ next-colon))
			 nil)))
	   ((equal "" next-directory)
	    (nreverse directories))
	
	(push next-directory directories)))))



(defun decompose-directories-from-filename (namestring)
  (let* ((reversed-namestring (reverse namestring))
         (colon-index (position #\: reversed-namestring))
         (filename
          (if colon-index
            (reverse (subseq reversed-namestring 0 colon-index))
            namestring))
         (directories
          (if colon-index
            (subseq namestring 0 (- (length namestring)
                                    (length filename)))
            nil)))

    (values directories
            filename)))
           

(defun decompose-namestring-into-list-of-directories (namestring)
  (multiple-value-bind (logical directories filename)
                       (decompose-lload-namestring namestring)
    (when filename
      (break "namestring was expected to be a directory specification~
              ~%but it doesn't end with a colon: ~A" namestring))

    (if logical
      (append (expand-logical-pathname logical)
              directories)
      directories )))


(defun namestring-to-list (namestring)
  ;; might be a simpler way to do this, but in Copy-source-to-new-root
  ;; we get the unix form of the file using Expand-namestring, but we
  ;; need to manipulate a namelist to make the conversions, so we'll
  ;; have to go back to one of its intermediate representations when
  ;; we've already had it at one point during the initial expansion
  (multiple-value-bind (directories filename)
                       (decompose-directories-in-namestring namestring)
    (if filename
      (append directories (list filename))
      directories)))



;;;---------------------------
;;; is the file a load file ?
;;;---------------------------

(defun load-file? (raw-namestring)
  (unless (stringp raw-namestring)
    (break "Expected the namestring to be represented as a string~
            but it is ~A" raw-namestring))

  (when (search "load" raw-namestring)
    ;; this list goes along with the explicit calls to Just-change-if-noded
    ;; made from config;explicitly-loaded-files.
    (unless (or (equal raw-namestring "config;load")
                (equal raw-namestring "init;Lisp:lload")
                (equal raw-namestring "loaders;grammar")
                (equal raw-namestring "loaders;grammar modules")
                (equal raw-namestring "loaders;logicals")
                (equal raw-namestring "loaders;master-loader")
                (equal raw-namestring "loaders;model")
                (equal raw-namestring "loaders;save routine")
                (equal raw-namestring "loaders;stubs")
                (equal raw-namestring "config;explicitly-loaded-files")
                (equal raw-namestring "init;scripts:BBN loader")
                (equal raw-namestring "init;scripts:Apple loader")
                (equal raw-namestring "init;scripts:Academic loader")
                (equal raw-namestring "init;scripts:Magi loader")
                )
      t )))


;;;----------------------------------
;;; copying the source to a new root
;;;----------------------------------

(unless (boundp '*target-root-for-copy*)
  (defparameter *target-root-for-copy* nil))
(unless (boundp '*copy-to-unix-format?*)
  (defparameter *copy-to-unix-format?* nil))


(defun copy-source-to-new-root (raw-namestring  &key do-not-copy-contents )
  (let* ((cl-user::*unix-file-system-inside-mac* nil)
         (source-namestring (expand-namestring raw-namestring)))
    (unless (probe-file source-namestring)
      (break "There is no file named ~A" source-namestring))

    (if *copy-to-unix-format?*
      (let* ((cl-user::*unix-file-system-inside-mac* t))
        (copy-source-to-new-root1 raw-namestring source-namestring
                                  do-not-copy-contents))
      (copy-source-to-new-root1 raw-namestring source-namestring
                                do-not-copy-contents))))


(defun copy-source-to-new-root1 (raw-namestring source-namestring
                                 do-not-load-this-file )
  (let ((converted-namelist (namestring-to-list
                             (expand-namestring raw-namestring))))
    (let* ((*source-root*
            (if (listp *source-root*)
              *source-root*
              (namestring-to-list *source-root*)))
           (reusable-part
            (nthcdr (length *source-root*) converted-namelist))
           (target-namelist
            (append *target-root-for-copy* reusable-part))
           (target-namestring (namelist-to-mac target-namelist)))
      
      (format t "~&Copying ~A~%  to ~A~%~%"
              source-namestring target-namestring)
      
      #+mcl (copy-file source-namestring target-namestring
		       :if-exists :supersede )
      #+allegro ;;(excl.shell:cp source-namestring target-namestring)
      (break "No scheme for copying files using ACL has been worked out yet"))
      
    
    (when (load-file? raw-namestring)
      (unless do-not-load-this-file
        (load source-namestring)))
    
    ;; fighteningly inefficient, but simple.
    (when (equal raw-namestring "loaders;grammar")
      (load source-namestring))
    (when (equal raw-namestring "loaders;grammar modules")
      (load source-namestring))
    (when (search "grammar-configurations" raw-namestring)
      (load source-namestring))))


#|  original
(defun copy-source-to-new-root (raw-namestring)
  (let* ((cl-user::*unix-file-system-inside-mac* nil)
         (source-namestring (expand-namestring raw-namestring)))
    (unless (probe-file source-namestring)
      (break "There is no file named ~A" source-namestring))

    (if *copy-to-unix-format?*
      (let* ((cl-user::*unix-file-system-inside-mac* t)
             (converted-namestring (expand-namestring raw-namestring))
             (converted-namelist (namestring-to-list converted-namestring)))

        (let* ((*source-root*
                (if (listp *source-root*)
                  *source-root*
                  (namestring-to-list *source-root*)))
               (reusable-part
                (nthcdr (length *source-root*) converted-namelist))
               (target-namelist
                (append *target-root-for-copy* reusable-part))
               (target-namestring (namelist-to-mac target-namelist)))

          (format t "~&Copying ~A~%  to ~A~%~%"
                  source-namestring target-namestring)
          (copy-file source-namestring target-namestring
                     :if-exists :supersede ))

        (when (load-file? raw-namestring)
          (load source-namestring))

        ;; fighteningly inefficient, but simple.
        (when (equal raw-namestring "loaders;grammar")
          (load source-namestring))
        (when (search "grammar-configurations" raw-namestring)
          (load source-namestring)))

      (break "Write the version that writes to Mac format rather ~
              than Unix"))))  |#


;;;-------------------------------------------------
;;; note files that have changed since a given date
;;;-------------------------------------------------

(or (boundp '*reference-time-for-changed-files*)
    (if (boundp '*time-of-image*)
      (defparameter *reference-time-for-changed-files*
                    *time-of-image*
      "Any file written after this time will be included in the list.
       The default, *time-of-image*, is a symbol defined when an
       image is built by Everything." )
      (defparameter *reference-time-for-changed-files* nil)))

(or (boundp '*change-data*)
    (defparameter *change-data* t
      "This is the stream that the change information is written to."))


(defun just-note-if-changed (raw-namestring)
  (let ((namestring (expand-namestring raw-namestring)))
    (if (probe-file namestring)
      (let ((date-of-file (file-write-date namestring)))
        (if (> date-of-file
               *reference-time-for-changed-files*)
          (progn  ;; can't use "then" because it isn't loaded yet
            (format *change-data*
                    "~%(changed \"~A\" ~A)~%~15,5T\;\; ~A~%"
                    namestring
                    date-of-file
                    (date-as-formatted-string date-of-file)))))
      (format *change-data*
              "~&\;\; the file ~A doesn't exist~%" namestring))
    
    (when (load-file? raw-namestring)
      ;; since we're not loading the files, just doing this little calculation,
      ;; we have to do all the 'recursive' calls to load files ourselves.
      (load namestring)
      :foo  ;; keep the calls on the stack just to keep track of things
      ;; if a bug crops up.
      )))

;;;---------------
;;; time printers
;;;---------------
;; These are copies of routines in [tools;basics:time]. They need
;; to be here too because that file doesn't get loaded in some kinds
;; of Lload-sweeps through the system such as checking for changed files

(defun date-as-formatted-string (&optional time)
  (multiple-value-bind (second minute hour
                        date month year day-of-week
                        daylight-savings-time-p time-zone)
                       (if time
                         (decode-universal-time time)
                         (get-decoded-time))

    (declare (ignore second minute hour
                     day-of-week daylight-savings-time-p
                     time-zone))

    (let ((year-abbrev (mod year 100)))
      (format nil "~A/~A/~A" month date year-abbrev))))


(defun time-as-formatted-string (&optional time
                                 &key ((:dot dot-instead-of-colon)
                                       nil))
  (multiple-value-bind (second minute hour
                        date month year day-of-week
                        daylight-savings-time-p time-zone)
                       (if time
                         (decode-universal-time time)
                         (get-decoded-time))
    
    (declare (ignore date month year day-of-week
                     daylight-savings-time-p time-zone))
    
    (if dot-instead-of-colon
      (format nil "~A.~A.~A" hour minute second)
      (format nil "~A:~A:~A" hour minute second))))


;;;--------------------------------------------------------------------
;;; keeping a record of the versions (write dates) of the loaded files
;;;--------------------------------------------------------------------

(defparameter *image-file-record* nil
  "The accumulator used by Record-file-write-time. An alist with the
   'raw' version of the file as its key")

(defun record-file-write-time (namestring-as-loaded)
  ;; called from Check-&-load.  This version only works in Macintosh
  ;; format since it doesn't operate at the universal 'namelist'
  ;; level but at the level of actual namestrings and gets between
  ;; the source and fasl versions by direct substitution. 
  (let ((fasl-loaded? (search ":f:" namestring-as-loaded))
        (raw-form *raw-form-of-file*))
    (let ((source-namestring
           (if fasl-loaded?
             (expand-namestring raw-form)
             namestring-as-loaded))
          (fasl-namestring
           (if fasl-loaded?
             namestring-as-loaded
             (namelist-to-namestring (fasl-namestring raw-form)))))

      (push `(,raw-form
              ,(file-write-date source-namestring) ;; universal time
              ,(when fasl-loaded?
                 (file-write-date fasl-namestring)))
            *image-file-record*))))


(defun save-image-file-record ( &optional target-namestring )
  (unless target-namestring
    (setq target-namestring
          (concatenate 'string
                       cl-user::location-of-sparser-directory
                       "code:s:init:snapshots:"
                       "files loaded "
                       (date-as-formatted-string))))

  (with-open-file (stream target-namestring
                   :direction :output
                   :if-does-not-exist :create
                   :if-exists :error)  ;; name has to be unique

    (writeout-image-file-record stream)))

(defun writeout-image-file-record (stream)
  (let ( raw-namestring  source-univ-time  fasl-univ-time )    
    (dolist (list (reverse *image-file-record*))
      (setq raw-namestring   (first list)
            source-univ-time (second list)
            fasl-univ-time   (third list))
      (format stream
              "~&~%(~A~25,3T~A~35,2T~A"
              raw-namestring
              (date-as-formatted-string source-univ-time)
              (time-as-formatted-string source-univ-time))
      
      (if fasl-univ-time
        (format stream "~%~25,5T~A~35,2T~A"
                (date-as-formatted-string fasl-univ-time)
                (time-as-formatted-string fasl-univ-time))
        (format stream "~%~25,5T"))
      (format stream ")~%"))))
    



;;;-----------------------------------
;;; converting Mac file names to Unix
;;;-----------------------------------

(or (boundp '*case-conversion*)
    (defparameter *case-conversion* :no-conversion
      "This controls particulars within the mac->unix character conversion.
       Some transfer paths can shift all the pathnames to either all
       uppercase (value = :all-uppercase) or lowercase (:all-lowercase).
       The default (:no-conversion) assume that all filenames are case
       sensitive."))


;;----- constants for character boundaries

(defconstant ascii-for-space-character
              (char-code #\space))

(defconstant ascii-for-capital-A  (char-code #\A))  ;; 65
(defconstant ascii-for-small-A    (char-code #\a))  ;; 97

(defconstant ascii-for-capital-Z  (char-code #\Z))  ;; 90
(defconstant ascii-for-small-Z    (char-code #\z))  ;; 122

(defconstant ascii-for-zero  (char-code #\0))  ;; 48
(defconstant ascii-for-nine  (char-code #\9))  ;; 57


(defun category-of-character (character)
  (let ((ascii-value (char-code character)))
    (cond ((or (and (>= ascii-value ascii-for-small-A)
                    (<= ascii-value ascii-for-small-Z))
               (and (>= ascii-value ascii-for-capital-A)
                    (<= ascii-value ascii-for-capital-Z)))
           :alphabetic )
          ((and (>= ascii-value ascii-for-zero)
                (<= ascii-value ascii-for-nine))
           :digit )
          ((= ascii-value 32)
           :space )
          (t (break "The argument, ~A, is outside the range of ~
                     characters allowed for." character)))))



(defun string-includes-non-alphanumerics (string)
  (unless (stringp string)
    (break "Argument should be a string. ~A isn't." string))
  (let ( char non-alphanumeric? )
    (dotimes (i (length string))
      (setq char (elt string i))
      (case (category-of-character char)
        (:alphabetic )
        (:digit )
        (:space    (setq non-alphanumeric? t))
        (otherwise (setq non-alphanumeric? t))))
    non-alphanumeric? ))



(defun suborn-non-unix-file-characters (string)
  ;; passed one element of a namestring at a time, i.e. either a directory
  ;; or the filename
  (let ((char-list (coerce string 'list))
        clean-list )
    (dolist (char char-list)
      (ecase (good-unix-char? char)
        ;; transfering from ultrix vis vms from the mac will convert
        ;; all alphabetic characters to uppercase and periods to "$"
        (:uppercase
         (ecase *case-conversion*
           (:all-uppercase (push char clean-list))
           (:no-conversion (push char clean-list))
           (:all-lowercase
            (let* ((uc-ascii (char-code char))
                   (lc-ascii (+ uc-ascii 32))
                   (lc (code-char lc-ascii)))
              (push lc clean-list)))))

        (:lowercase
         (ecase *case-conversion*
           (:all-uppercase
            (let* ((lc-ascii (char-code char))
                   (uc-ascii (- lc-ascii 32))
                   (uc (code-char uc-ascii)))
              (push uc clean-list)))
           (:no-conversion (push char clean-list))
           (:all-lowercase (push char clean-list))))

        (:space  (push #\-  clean-list))
        (:digit  (push char clean-list))
        (:period ;(push #\$  clean-list)
         ;; there's a timing hassle when working from Compile-&-load
         ;; such that the filename goes through fasl-namestring, introducing
         ;; a period before the fasl extension, before it goes to vivify
         ;; and comes here.  That mean's we'd screw up if there really
         ;; had been a legitimate period in a filename and VMS converted
         ;; it to a $.  On the otherhand there probably aren't any and
         ;; so we're safe
                 (push char clean-list))
        (:colon  (push char clean-list))
        (:dash   (push char clean-list))
        (:slash  (push #\-  clean-list))
        (:other-characters
         ;;(break "Unexpected character seen in file name: \"~A\"" char)
         (push char clean-list))))

    (coerce (nreverse clean-list) 'string)))
      

(defun good-unix-char? (c)
  (let ((n (char-code c)))
    (if (= n (char-code #\space))
      :space
      (if (and (>= n (char-code #\a))
               (<= n (char-code #\z)))
        :lowercase
        (if (and (>= n (char-code #\0))
                 (<= n (char-code #\9)))
          :digit
          (if (and (>= n (char-code #\A))
                   (<= n (char-code #\Z)))
            :uppercase
            (if (= n (char-code #\-))
              :dash
              (if (= n (char-code #\:))
                :colon
                (if (= n (char-code #\.))
                  :period
                  (if (= n (char-code #\/ ))
                    :slash
                    :other-characters ))))))))))


;;;-----------------------------------------
;;; stray macro that is pretty useful sugar
;;;-----------------------------------------

(defmacro unless-bound-set (parameter value)
  (unless (symbolp parameter)
    (error "Should have been passed a symbol but got:~%  ~A"
           parameter))
  (if (boundp parameter)
    parameter
    `(defparameter ,parameter ,value)))




;;;--------------------------------------------------------
;;; variant on lload for source vs. compiled grammar files
;;;--------------------------------------------------------
#|
Gload should be used in place of lload for any file or module
that involves the grammar.

Gload provides a wrapper around a call to lload that does two things
in order to establish the alternative environments needed for
accomodating license deliveries where some of the grammar is
provided as source and consequently stored in a different place
that those parts of the delivered grammar (if any) that are
supplied as an unchangeable part of the image. 
|#

(defun gload (namestring)
  (if (not *some-gmods-are-public*)
    (lload namestring)
    
    (if (or *just-note-changed-files*
            *just-count-lines*
            *copy-file*)
      ;; These are the special conditions noted in lload that
      ;; do not actually involve loading the code.  They are also
      ;; only used in local development, never in a licenced
      ;; system.
      (lload namestring)
      
      ;; Are we loading a public module?  If not, the files will
      ;; be part of the image and stored and loaded in the usual
      ;; way.
      (if (not (and *loading-public-grammar-module*
                    *insist-on-binaries*))
        (lload namestring)

        ;; *insist-on-binaries* is the defacto signal that we're inside
        ;; a licensed system loading the fasls as part of someone else's
        ;; total system. If *insist-on-binaries* is not true, then we
        ;; use the regular lload without munging the pathnames.
        
        ;; The rebindings of these load flags are also done in Gate-grammar
        ;; which makes these ostensibly redundant, but it covers us for
        ;; the case of the occasional grammar file that isn't loaded as
        ;; part of a module, e.g. within the early part of the Master-loader.
        (let ((*insist-on-binaries* nil)
              (*prefer-binaries* nil)
              (*compile* nil)
              (namelist (namestring-to-namelist namestring))
              public-namestring )

          (setq public-namestring
                (substitute-public-for-private-grammar-location
                 namelist))

          (lload public-namestring))))))


(defun substitute-public-for-private-grammar-location (namelist)
  ;; This depends on every namelist it processes including the
  ;; symbol 'grammar'. It swaps the prefix of the list up to
  ;; that point, retaining the original path from there down.
  (let ((new-prefix
         (expand-logical-pathname "public-grammar;"))
        (preserved-portion
         (member "grammar" namelist :test #'equal)))
    (unless preserved-portion
      (break "No instance of \"grammar\" in~%   ~A~
              ~%This call should not have gone through gload.~%"
             namelist))
    (let ((new-namelist
           (append new-prefix preserved-portion)))
      (namelist-to-namestring new-namelist))))


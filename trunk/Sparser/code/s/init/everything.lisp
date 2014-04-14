;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1989-2005,2010-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "everything"
;;;    Module:   "init;"
;;;   Version:   October 2013
;;;
;;;  This is the preloader.  Launching this file loads one or
;;;  another version of the entire system, as determined by the
;;;  values given to its global variables. 
;;;
;;;  It needs several pathnames burned in here so that it can load and
;;;  deploy the indirect pathname names that the system overall is
;;;  based on.

;; Changelog:
;; 7/15/92 changed the version to 2.3
;; 1/26/93 starting changing over to MCL 2.0
;; 7/9 put in auto-search for the home directory
;; 8/2 made the master-loader a direct call to facilitate changed-file
;; 8/23 moved init; down under s;
;; 9/25 modularizing finding root directories
;; 3/28/93 added *image* and *sparser-is-an-application* and moved in more
;; from the launch config file. 4/19 added *apple*  5/10 added feature for
;; size of corpus.  5/11 ported to 900   9/14 added *monitor-size*
;; 3/18/95 added *load-dossiers-into-image* and *public-grammar*
;; 5/12 added *monitor-size*.  6/13 added location-of-text-corpora and flushed
;; default loading of [workspace;in progress].  7/13 setup a dm&p variation
;; within the standard load.  7/31 revised calculation of root directory to
;; be literal rather than use (user-homedir-pathname) which wouldn't let you
;; make fake location loads from the 8100.  8/8 added *known-machine* and
;; more values for the location of the corpus. 9/5 tweeked that.  12/11 put an
;; 'and' in the 2d defparameter that sets all the miscelanious site-specific
;; parameters since some keep turning up nil for no reason that's obvious. 
;; 5/31/96 added *academic-grammar*.  6/3 added flags to enable a two-stage
;; load of the engine/grammar/dossiers.  6/5 changed default on *load-dossiers
;; -into-image* to nil.  6/17 debugged some interactions when no images are
;; being done. 6/19 fixed default situation in binding of root location.
;; 6/25 broke apart the composite check for the initial globals since it had
;; the effect of overriding explicit sets to the location of the sparser directory
;; unless the full set was preset, which is unreasonable.  8/24/97 put an #+ignore
;; in front of cl-user::location-of-root-directory since it appears that nothing
;; is using it any more, and added a missing cl-user:: in front of location-of-
;; current-version-code just in case. Also pulled in a copy of Unix-namestring-to-mac
;; from lload and wrapped it around the #+unix cases in the definition of
;; *source-root* and *root-for-binaries*, thereby replicating the treatment that
;; done in logicals for the same sort of problem.   10/19 changed 
;; *load-dossiers-into-image* to T, can't imagine why, in this file, they were nil.
;; 11/29 added *lattice-points* and flushed the root directory's code as it's been
;; loading fine without it for a while now.  12/6 added *description-of-where-the-code-is*
;; 4/29/99 added most of the fixed locations for the g3 powerbook. ;; 6/14/00 added
;; *edges-from-referent-categories*.  1/31/05 Added location, etc. for the G4 desktop.
;; 2/1 Turned on the lattice-points switch. 2/17 added load-delayed-dossiers call
;; 1/6/07 Folded in more useful OSX/Allegro/Unix defaults. 1/9 Added explicit loading
;; of workspaces. 1/24 Patched Load/fasl-or-newest to be more clever about identifying
;; unix namestrings and to give a better error message. 2/26 Added bunch of external
;; hooks. 6/22 Added flag for the Fire system configuration. 6/29 added #+Allegro
;; option for *binaries-directory-name*. 8/10 added *speech* flag.
;; 8/29 Modified features and added things for runing on a PC.
;; 4/6/09 Added *checkpoint-ops* selection criterion for grammar config.
;; 6/17/09 added temporary cl-user::*psi-2009* flag.  7/17/09 the comment on the
;; defparameter for *binaries-directory-name* was pulled into its value. 
;; (8/31/09) added *grammar-configuration* as a way to start to get beyond the specific
;; 'application settings' unless they really are doing more than just controlling
;; the grammar configuration. (later) Realized that those setting include setting
;; the switches in final-session-setup, so relenting and defining *poirot-interface*
;; as a global. 9/1 added *external-referents*. 2/3/2010 added *use-SFL* and
;; cl-user::*bidirectional* to handle running Sparser on its own.
;; 11/9/10 added *CLOS* parameter. 1/12/11 Set its default to T. 1/24/11 commented
;; out the use-sfl here because of complaint from CCL about SFL's asd file that I don't
;; want to figure out. Instead just lifting out the relevant form and adding it
;; to util. 6/12/11 Making mods so we could load this directly w/o a script, which
;; means bringing in the content of the most-recent, best used scripts. 7/7/11 Added
;; initial check for whether we're running in an mlisp. 7/11 Added global for including
;; the generic lexicon. 9/23/11 Bumped the version to v4.0. 10/30/12 Small
;; cleanups, added *grok*.  11/24/12 Explicitly loading all the workspaces by name.
;; 1/28/13 Chanve the binaries directory for Allegro to "f" (1/29/13) put #+allegro, 
;; #+openmcl around value of *prefer-binaries* to keep CCL from trying to understand 
;; ACL fasls. 3/22/13 added *do-not-use-psi* flag, which is set to t in Grok mode.
;; 5/3/13 moved *allow-pure-syntax-rules* here. 5/7/13 Added Strider workspace.
;; 5/9/13 Cleaned up what appears to be deadwood and improved lots of comments.
;; 5/26/13 changed value of *do-not-use-psi* to t because the psi are not resolving
;; the sequences of two instances of a name correctly. 8/14/13 Commented out the 
;; explicit workspaces load to use the implicit one. 8/19/13 added a redeclare-permanent
;; at the very end since workspace items were being reclaimed. 9/16/13 Added *c3*.
;; 10/21/13 Switch the grammar config for fire to be the full grammar. 
;; 10/25/13 specialized the name of the C3 grammar configuration file.

(in-package :cl-user)

#|  Flags from *features*
  #+apple is MCL, which only works on PowerPC Macs
  #+openmcl is Clozure (note the z)
  #+allegro is Franz
|#

(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; Allegro comes in two favors: alist which is ansi compiliant and
  ;; not sensitive to case (like Clozure), and mlisp, which preserves case
  ;; and is excellent for working with Java. Franz neglected to distinguish
  ;; these with a feature since its just readtable hacking, so we have to
  ;; do it for them.
  #+allegro
  (if (eq (readtable-case *readtable*) :preserve)
    (push :mlisp *features*)
    (push :alisp *features*))) ;; corresponds to :upcase

;;;--------------------------
;;; create Sparser's package
;;;--------------------------

(unless (find-package :sparser)
  (make-package :sparser
                :use '(common-lisp
                       ddm-util
                       #+apple ccl
                       #+openmcl :ccl)))

;;;----------------
;;; hard filenames
;;;----------------

#|
    The hardwired filenames are the values for the parameterized 
calls to load that are made in this file.  All other files are loaded 
using Sparser's own loading facility, which is driven off the function 
"lload" and is parameterized to transparently permit compiling, checking 
what files have changed, preparing ftp scripts, etc.
|#

;;---  sparser::location-of-sparser-directory
;;     sparser::*known-machine*
;;     sparser::*description-of-where-the-code-is*
;;     sparser::location-of-text-corpora

(unless (boundp 'cl-user::location-of-sparser-directory)
  (defparameter cl-user::location-of-sparser-directory
    ;; Base reference point for all files -- The only hard pathname
    ;; that really has to be specified
    #+:apple
    (let ( string  pathname )
      ;; Have yet to find the equivalent of *load-truename* on MCL
      ;; so that this could be automatic like it is in the Unix (Allegro CL)
      ;; version.
      (cond ((probe-file  ;; location on D's G4 desktop
              (setq string "G4:Users:ddm:nlp:Sparser:"))  ;; note the final colon
             (defparameter sparser::*known-machine* :g4)
             string )
            ((probe-file  ;; location on ddm's G3 Powerbook
              (setq string "g3:mine:Sparser:"))
             (defparameter sparser::*known-machine* :br-700)
             string )
            (t
             (defparameter sparser::*known-machine* :no)
             (break "~%Can't find the Sparser directory in any ~
                     of the expected places~
                     ~%Please set the symbols cl-user::location-of-~
                     Sparser-directory~%and cl-user::location-of-text-~
                     corpora to their namestrings~%and ~
                        continue.~%"))))
     #+(or :allegro :openmcl)
     (namestring
      (merge-pathnames 
       ;; truename will be <Sparser-directory>/code/s/init/everything.lisp
       (make-pathname :directory 
                      '(:relative
                        :up ;; init
                        :up ;; s
                        :up ;; code
                        ))
       (make-pathname :directory (pathname-directory *load-truename*))))))


(unless (boundp 'sparser::*known-machine*)
  (defparameter sparser::*known-machine*
    ;; Used for sizing the workbench, so only relevant when running
    ;; under MCL on a Mac.
    (cond #+apple((string-equal cl-user::location-of-sparser-directory
                                "G4:Users:ddm:nlp:Sparser:")
                  :g4)
          #+:apple((string-equal cl-user::location-of-sparser-directory
                                 "Book:David:Sparser:")
                   :book)
          (t :no))))


(unless (boundp 'sparser::*description-of-where-the-code-is*)
  (defparameter sparser::*description-of-where-the-code-is*
    ;; Used for descriptive purposes in ancilary types of 'loads'
    ;; such as backups.
    (ecase sparser::*known-machine*
      (:g4 "ddm's G4 desktop")
      (:book "ddm & mwm's 160")
      (:no
       #|(format t "~3%!! Sparser is loading on a machine where ~
                  no value is available~%for *known-machine*. ~
                  Set sparser::*description-of-where-the-code-is* ~
                  ~%if you want backups to look right.~3%")|#
       "no predefined place"))))


          

(unless (boundp 'cl-user::location-of-text-corpora)
  (defparameter cl-user::location-of-text-corpora
    (ecase sparser::*known-machine*
      (:g4
       "G4:Users:ddm:nlp:Corpora:")
      (:book 
       ;; on the assumption that we're actually making this
       ;; load on the Zip drive rather than the Book (because
       ;; the book has too little memory), then we set this
       ;; flag so that it will wait on loading the files
       ;; that define the corpus items until the image
       ;; is launched on the book (see config;launch)
       (defparameter sparser::*connect-to-the-corpus* nil)
       "Book:David:Sparser:corpus:")
      (:no
       nil))))

(when cl-user::location-of-text-corpora
  ;; Used in conjunction with the MCL-based workbench
  (setq *features* (push :full-corpus *features*)))
  
      
          

            

;;---  *current-version*

(unless (boundp 'cl-user::*current-version*)
  (defparameter cl-user::*current-version*  "v4.0"
    "This string has to be the name of the directory where the 
     specifics for the current version are stored under init/versions/."))

   

             
;;;--------------------------------------------------------------------
;;; The globals from here on down are calculated from the earlier ones
;;;--------------------------------------------------------------------


;;---  location-of-Sparser-code-directory

(unless (boundp 'cl-user::location-of-Sparser-code-directory)
  (defparameter cl-user::location-of-Sparser-code-directory
    (concatenate 'string
                 cl-user::location-of-sparser-directory
                 #+:apple "code:"
                 #+:unix  "code/"
		 #+:mswindows "code\\" )))




;;;-----------------------------------------
;;; specific files to be loaded momentarily
;;;-----------------------------------------

(defparameter location-of-current-version-code
      (concatenate 'string
                   cl-user::location-of-Sparser-code-directory
                   #+:apple "s:init:versions:"
                   #+:unix  "s/init/versions/"
                   #+:mswindows "s\\init\\versions\\"
                   cl-user::*current-version*
                   #+:apple ":"
                   #+:unix  "/"
                   #+:mswindows (make-string 1 :initial-element #\\) ;;"\"
                   ))

(defparameter identify-the-lisp-&-specialize-preload
  (concatenate 'string
               location-of-Sparser-code-directory
               #+:apple "s:init:Lisp:kind-of-lisp"
               #+:unix  "s/init/Lisp/kind-of-lisp"
               #+:mswindows "s\\init\\Lisp\\kind-of-lisp"
               ))

(defparameter defining-logical-directories
      (concatenate 'string
                   location-of-Sparser-code-directory
                   #+:apple "s:init:Lisp:ddef-logical"
                   #+:unix  "s/init/Lisp/ddef-logical"
                   #+:mswindows "s\\init\\Lisp\\ddef-logical"
                   ))

(defparameter special-loader
      (concatenate 'string
                   location-of-Sparser-code-directory
                   #+:apple "s:init:Lisp:lload"
                   #+:unix  "s/init/Lisp/lload"
                   #+:mswindows "s\\init\\Lisp\\lload"
                   ))

(defparameter defining-grammar-modules
      (concatenate 'string
                   location-of-Sparser-code-directory
                   #+:apple "s:init:Lisp:grammar-module"
                   #+:unix  "s/init/Lisp/grammar-module"
                   #+:mswindows "s\\init\\Lisp\\grammar-module"
                   ))

(defparameter module-location-definitions
      (concatenate 'string
                   location-of-current-version-code
                   #+:apple "loaders:logicals"
                   #+:unix  "loaders/logicals"
                   #+:mswindows "loaders\\logicals"
                   ))

(defparameter master-loader
      (concatenate 'string
                   location-of-current-version-code
                   #+:apple "loaders:master-loader"
                   #+:unix  "loaders/master-loader"
                   #+:mswindows "loaders\\master-loader"
                   ))


;;;-----------------
;;; change packages
;;;-----------------

(in-package :sparser)

(defvar sparser::*sparser-source-package* (find-package :sparser))


;;;----------------------------
;;; parameterizing the loading
;;;----------------------------

#| N.b. these settings are setup to first check whether the parameter
has already been set by a script file that is calling the "everything"
file.  The defaults given here are appropriate to either loading only
source files (when no compiled files have been included in the directory
tree), or for loading all compiled files (when no source is included),
or for loading the newer of the compiled or source files.
|#

;;--------- standard load-control flags

(unless (boundp 'sparser::*loader-mode*)
  (defparameter sparser::*loader-mode* :everything
                                       ;; :just-the-all-edges-parser
    "Within the engine part of sparser (vs. the grammar used with
     it), there are several gross variations on what parts of it
     are needed with a given application, which this flag controls.
     This is analogous to the use of grammar-modules."))

(unless (boundp 'sparser::*no-image*)
  (defparameter sparser::*no-image* #+:apple nil
                                    #-:apple t
    "This flag controls whether, upon completing the load, we ask
     the user whether they want to save out an image of what has
     been loaded. If they do, a MCL 'application' is created and
     Lisp is exited in the process. What it means to make an image
     is specific to the vendor of the lisp and the operating system,
     so for the present this is only enabled for Mac versions."))

(defparameter sparser::*do-not-create-an-image* nil
  "This flag is set at the end of this file if we have answered No to
   any of the various prompts to create images. Its purpose is to block
   the calls in the Launch configuration file that would (under various
   conditions) automatically save out images, e.g., as when working from
   a fixed engine and saving out new versions of the grammar without
   dossiers.")

(unless (boundp 'sparser::*sparser-is-an-application?*)
  (defparameter sparser::*sparser-is-an-application?* nil
    "Controls where the run-on-launch routines look for the launch
     configuration file, i.e. at toplevel or within init.
     When making an image, this flag will block the inclusion of the
     compiler, since that is contrary to the MCL license."))

(unless (boundp 'cl-user::*end-user-owns-a-copy-of-mcl*)
  (defparameter cl-user::*end-user-owns-a-copy-of-mcl* nil
    "When making an image, this will override the effects of Sparser
     being marked as an Application, since it signifies that the
     person using the application has their own liscence to MCL and
     so is entitled to the use of the compiler."))

(unless (boundp 'sparser::*load-the-grammar*)
  (defparameter sparser::*load-the-grammar* t
    "The facilities for defining grammar rules are always loaded. This
     flag governs whether the instance objects and rules defined by
     the load file for the grammar are also loaded.  N.b. precisely
     which modules of the grammar are loaded is further specialized by
     the flags in the grammar config file."))


(unless (boundp 'sparser::*lattice-points*)
  (defparameter sparser::*lattice-points* t
    "This governs the loading of alternative versions of several
     core modules, versions that support fully developed lattice points"))


(unless (boundp 'sparser::*edges-from-referent-categories*)
  (defparameter sparser::*edges-from-referent-categories* nil
    "If non-nil, we look for edge label combinations off the labels provided
     by the referent (often more general than the category) including
     composite referents."))

(unless (boundp 'sparser::*allow-pure-syntax-rules*)
  (defparameter sparser::*allow-pure-syntax-rules* nil
    "Permits looking for combinations off the form labels of the two edges.
     Obviously this is dangerous, so the policy is to locally bind this
     flag inside treetop functions with clear dynamic scopes."))

(unless (boundp 'sparser::*external-referents*)
  (defparameter sparser::*external-referents* nil
    "Usually the model-level referents to rules or other schema are objects
     in Krisp that are internal to Sparser (and may later be exported). This
     flag signals that some referents are objects imported or linked to
     from other programs/processes and conditions some of the rule-making
     machinery to have few or no expectations about how it can manipulate
     them."))


(unless (boundp 'sparser::*load-dossiers-into-image*)
    (defparameter sparser::*load-dossiers-into-image* t
      "Controls whether, if the grammar is loaded, the files of individuals
       that instantiated the model are loaded as well during the process
       that sets up the files to go into an image."))

(unless (boundp 'sparser::*delayed-loading-of-the-grammar*)
  (defparameter sparser::*delayed-loading-of-the-grammar* nil
    "Used when making an application/image that will launch in either
     of two modes: without any grammar (in which case the designated
     grammar modules are to be loaded at launch) or with that grammar
     (effectively a second image built on the first) with the dossiers
     still to be loaded.  This is used with *load-the-grammar* set
     to nil to indicate that we came from an image launch rather than
     from a loading of the whole image. It distinguishes that situation
     from the one where the standard grammar is never intended to be
     included."))


(unless (boundp 'sparser::*connect-to-the-corpus*)
  (defparameter sparser::*connect-to-the-corpus* nil
    "Controls whether a file of logical pathnames is loaded that
     point to various established directories of texts. The directory
     for this file is pointed to by the 'corpus;' logical in the
     loader's logicals file, whose normal value is dictated by the
     value of cl-user::location-of-text-corpora. "))



(or (boundp 'sparser::*prefer-binaries*)
    (defparameter sparser::*prefer-binaries* ;; see note on this in lload
      #+allegro t
      #+openmcl nil
      "If non-nil, lload looks for a .fasl version of a file (or whatever
       is appropriate for the Lisp being used) and loads it if there 
       is one and if it is newer than the source version, otherwise it 
       loads the source version.
       The directory tree where the compiled files are to be found
       is indicated indirectly through the values of the logical
       pathnames for sparser-source and sparser-fasl, which are set
       in the <version>:loaders:logicals file."))

(or (boundp 'sparser::*insist-on-binaries*)
    (defparameter sparser::*insist-on-binaries* nil
      "A flag read by LLoad that has it just load the fasl version
       of the files without ever looking at the sources."))

(or (boundp 'sparser::*compile*)
    (defparameter sparser::*compile* nil
      "Controls whether the loading process is actually to be used as
       an automatic way of getting the whole system compiled.
       The directory tree where the compiled files are to be found
       is indicated indirectly through the values of the logical
       pathnames for sparser-source and sparser-fasl, which are set
       in the <version>:loaders:logicals file."))

(or (boundp 'sparser::*just-note-changed-files*)
    (defparameter sparser::*just-note-changed-files* nil
      "Controls whether the loading process is actually to be used as
       an automatic way of noting what files have been modified after
       a given date. Expected to be driven from the script file
       'list-changed-files', which binds the globals that are used
       to indicate the date and where the list of changes is to be
       stored"))

(or (boundp 'sparser::*copy-file*)
    (defparameter sparser::*copy-file* nil
      "Controls whether the loading process is actually to be used as
       an automatic way of copying all the files that go into a load
       of Sparser into another directory tree, as when specializing the
       system for delivery. The target directory tree to use is burned into
       Lload's subroutines and has to be changed by hand."))


(unless (boundp 'sparser::*dont-load-verbose*)
  (defparameter sparser::*dont-load-verbose* nil
    "Controls the Lisp *load-verbose* flag."))

(unless (boundp 'sparser::*monitor-size*)
  (defparameter sparser::*monitor-size* :14-inch
    "Read by workbench routines to establish the size of the
     windows."))


;;;-----------------------------------------------
;;; parameters controlling the shadowing binaries
;;;-----------------------------------------------

#+unix ;; This function is defined in [lisp;lload]. We copy it here
       ;; because we haven't yet loaded that file.
(defun unix-namestring-to-mac (ns)
  ;; the input is a namestring in unix format, i.e. with slashes.
  ;; we construct the corresponding string with colons substituted
  ;; for all but the initial slash
  (let ((tmp (substitute #\: #\/ ns)))
    (subseq tmp 1)))

#+:mswindows
(defun MS-namestring-to-mac (ns)
  (let ((tmp (substitute #\: #\\ ns)))
    (subseq tmp 1)))

;; find the source in
(or (boundp 'sparser::*source-root*)
    (defparameter sparser::*source-root*
                  (concatenate 'string
                    #+apple cl-user::location-of-Sparser-code-directory
                    #+unix  (sparser::unix-namestring-to-mac
                             cl-user::location-of-Sparser-code-directory)
                    #+:mswindows (sparser::MS-namestring-to-mac
                                  cl-user::location-of-Sparser-code-directory)
                    #+:apple "s:"
                    #+:unix  "s:" 
                    #+:mswindows "s:"
                    )))           ;; note this ends with a colon
                                  ;; rather than a slash. It undergoes
                                  ;; translation and has to look like 
                                  ;; an MCL filename. 

(or (boundp 'sparser::*binaries-directory-name*)
    (defparameter *binaries-directory-name*
      #+apple "f"
      #+openmcl "f"
      #+allegro "f"
      ))

;; put the binaries in
(or (boundp 'sparser::*root-for-binaries*)
    (defparameter sparser::*root-for-binaries*
                  (concatenate 'string
                    #+apple cl-user::location-of-Sparser-code-directory
                    #+unix  (sparser::unix-namestring-to-mac
                             cl-user::location-of-Sparser-code-directory)
                    #+mswindows (sparser::MS-namestring-to-mac
                                 cl-user::location-of-Sparser-code-directory)
                    #+:apple  "f:"
                    #-:apple   (concatenate 'string
                                            *binaries-directory-name* ":"))))

;; use this extension (type) for the binaries
(unless (boundp 'sparser::*fasl-extension*)
  (defparameter sparser::*fasl-extension*
    #+:apple  "FASL"
    #+:unix   "fasl" ;; "mbin"- Lucid
    #+:mswindows "fasl"
    ))

(unless (boundp 'cl-user::MSWindows-volume)
  (defparameter cl-user::MSWindows-volume "c:"))




;;;---------------------------------------------------
;;; application- or site- specific load-control flags
;;;---------------------------------------------------

(or (boundp 'sparser::*suborn-non-unix-file-characters*)
    (defparameter sparser::*suborn-non-unix-file-characters* nil
      "A possibly redundant flag that is on when namestrings are to be
       interpreted as for a unix filesystem rather than for the Mac."))

(or (boundp 'sparser::*case-conversion*)
    (defparameter sparser::*case-conversion* :no-conversion
      "This controls particulars within the mac->unix character conversion.
       Some transfer paths can shift all the pathnames to either all
       uppercase (value = :all-uppercase) or lowercase (:all-lowercase).
       The default (:no-conversion) assumes that all filenames are case 
       sensitive."))

(or (boundp 'sparser::*nothing-Mac-specific*)
    (defparameter sparser::*nothing-Mac-specific* #-:apple t
                                                  #+:apple nil
      "Some of the interface routines presuppose that we're loading on
       a Mac under MCL and use ccl: -specific routines. When this
       flag is on these routines are left out of the load."))



;;;---------------
;;; useful record
;;;---------------

(defvar sparser::*time-of-image* (get-universal-time))


;;;-------------------------------------------------------------------
;;; function to allow working with compiled versions of the preloader
;;;-------------------------------------------------------------------

;; n.b. The namestrings this operates on are all defined earlier in this
;; file and are already in either #+apple or #+unix format.

(defun load/fasl-or-newest (namestring)
  (let ((fasl-namestring
         (concatenate 'string namestring "." sparser::*fasl-extension*)))
    (let ((index-of-s
           (cond
	    ((or (eql #\/ (elt namestring 0)) ;; is it a unix filename?
		 (eql #\~ (elt namestring 0)))
             (search "/s/" fasl-namestring))
	    ((eql #\\ (elt namestring 0))
	     (search "\\s\\" fasl-namestring))
	    (t
             (search ":s:" fasl-namestring)))))
      (unless index-of-s
	(break "Could not find 's' directory in the namestring~%   ~a"
	       namestring))
      (setq fasl-namestring
            (concatenate 'string
                         (subseq fasl-namestring 0 (1+ index-of-s))
                         sparser::*binaries-directory-name*
                         (subseq fasl-namestring (+ 2 index-of-s))))

      (if sparser::*insist-on-binaries*
        (load fasl-namestring)
        #+openmcl
        (load namestring)
        #-openmcl
        (if (probe-file fasl-namestring)
          (if (probe-file namestring)
            (let ((date-of-source (file-write-date namestring))
                  (date-of-fasl   (file-write-date fasl-namestring)))
              (if (> date-of-source date-of-fasl)
                (load namestring)
                (load fasl-namestring)))
            (load fasl-namestring))
          (load namestring))))))



;;;------------------------------
;;; establish what lisp we're in
;;;------------------------------

(sparser::load/fasl-or-newest cl-user::identify-the-lisp-&-specialize-preload)
  ;; this file provides defaults for parameters that control what
  ;; file system (pre-OSX Macintosh or Unix) is presumed by the loader



;;;----------------------------------------------------------------
;;; load the pathname abbreviation facility  ("logical" pathnames)
;;;----------------------------------------------------------------

;;--- the special load routine, "lload" and a set of routines to
;;    emulate the original Allegro CL notion of 'logical directory'
;;
(sparser::load/fasl-or-newest cl-user::defining-grammar-modules)
(sparser::load/fasl-or-newest cl-user::defining-logical-directories)
(sparser::load/fasl-or-newest cl-user::special-loader)


;;;--------------------------------------------------------
;;; establish the directories where the modules are stored
;;;--------------------------------------------------------

(sparser::load/fasl-or-newest  cl-user::module-location-definitions)


;;;----------------------
;;; configure the loader
;;;----------------------

(sparser::load/fasl-or-newest
 (concatenate 'string
              cl-user::location-of-current-version-code
              #+:apple "loaders:lisp-switch-settings"
	      #+:unix  "loaders/lisp-switch-settings"
	      #+:mswindows "loaders\\lisp-switch-settings"
	      ))


;;----- trace loading
#+:apple (unless sparser::*dont-load-verbose*
           ;; override default from switch settings
           (setq *load-verbose* t))



;; This is the first file whose absolute name and format is constructed.
;; If this loads (compiles) successfully, we can be assured that all the
;; others will as well.

(sparser::lload "loaders;grammar modules")
  ;; the master definition of all the grammar modules.  Precisely which
  ;; of these modules is actually loaded is dictated by which config
  ;; file is selected below.


;;;-------------------------------------------
;;; flags for specific versions of the system
;;;-------------------------------------------

;; The flags are used for dispatch and selection later on in the file
;; and elsewhere. They have to be bound, so we bind them to nil (off)
;; unless some wrapping script file has already given them a value.

(unless (boundp 'sparser::*speech*)
  (defparameter sparser::*speech* nil
    "This flag indicates that the text we're parsing is transcribed
     speech rather than a written text. It affects how the text-
     based heuristics are handled and turns on other, speech-
     specific heuristics"))

(unless (boundp 'cl-user::*psi-2009*)
  (defparameter cl-user::*psi-2009* t
    "Controls the loading of the total make over of the PSI facility.
     This is the third rewrite that is a great simplification and solves
     the problem identified in the earlier code as 'sticky psi' where
     values from earlier parses were being retrieved for later ones."))

(unless (boundp 'sparser::*CLOS*)
  (defparameter sparser::*CLOS* t
    "If not nil, every category and individual is backed by the
     equivalent CLOS class and instance. Permits free use of type-
     specific compotional methods in referents."))

(unless (boundp 'sparser::*load-ad-hoc-rules*)
  (defparameter sparser::*load-ad-hoc-rules* nil
    "The ultimate goal of development on Sparser is integration into a
     fully bi-directional system (see Magi loader), which requires 
     painstaking care to route everything through a realization schema.
     If a purely analysis-driven project requires being more ad-hoc,
     then this switch will gate those rules."))

(unless (boundp 'sparser::*use-SFL*)
  (defparameter sparser::*use-SFL* t
    "We are gradually going to insert a full up CLOS backing behind KRISP.
     One first step in that direction is including SFL in the load so that
     we can use its CLOS wrappers."))

(unless (boundp 'cl-user::*bidirectional*)
  (defparameter cl-user::*bidirectional* t
    "Indicates that Sparser's analyses are going to be deployed by Mumble.
     If we are doing that live then Mumble will already have been loaded.
     If it is not, this flag enables setting up its package so that the
     coordinating code will be able to load."))

(unless (boundp 'sparser::*incorporate-generic-lexicon*)
  (defparameter sparser::*incorporate-generic-lexicon* nil
    "When non-nil, we finish off the loading of the grammar by including
     almost purely lexical knowledge about a horde of words."))

(unless (boundp 'sparser::*do-not-use-psi*)
  (defparameter *do-not-use-psi* t
   "There are circumstances when psi proliferate even in cases where they don't
    make sense (perhaps the 'simple criteria' need significant extension),
    and there is the problem that saturated psi don't convert to individuals.
    They are the correct long-run approach, but a given application may
    choose to not use them. When this flag is up, make/individual will only
    create individuals with regular bindings and never make psi.
    N.b. this is set by the *grok* configuration. If it's to be set it has
    to be done very early, before any model objects are constructed. Setting
    it with the configuration is a safe way to do it."))



;;--- Mutually exclusive application settings.
;; These correspond to alternative system configurations, some of them
;; now very old and mothballed (i.e. not incorporated in the present
;; codebase). They dictate choices of grammar modules to load and values
;; for initializations.

(unless (boundp 'sparser::*just-bracketing*)
  (defparameter sparser::*just-bracketing* nil
    "Leaves out all of the grammar except for the function words and
     the knowledge we have about them, e.g. none of the name grammar is
     included; no time, location, etc from core. None of the sublanguages."))

(unless (boundp 'sparser::*grok*)
  (defparameter sparser::*grok* nil
    "Includes the core grammar and selected sublanguages such as report.
     Note that this sets the *do-not-use-psi* flag."))

(unless (boundp 'sparser::*c3*)
  (defparameter sparser::*c3* nil
    "Uses minimal built-in grammar. Has its own protocol over the chart,
     and uses a set of document structures to maintain a 'situation' construct."))


(unless (boundp 'sparser::*checkpoint-operations*) ;; in mothballs
  (defparameter sparser::*checkpoint-operations* nil))

(unless (boundp 'sparser::*fire*) ;; essentially Grok going forward
  (defparameter sparser::*fire*  nil
    "Fire stands for 'Free-text Information and Relation Extraction'"))

(unless (boundp 'sparser::*public-grammar*)
  (defparameter sparser::*public-grammar*  nil))

(unless (boundp 'sparser::*academic-grammar*)
  (defparameter sparser::*academic-grammar*  nil))

(unless (boundp 'sparser::*pure-dm&p-load*)
  (defparameter sparser::*pure-dm&p-load*  nil))

(unless (boundp 'sparser::*da*)
  (defparameter sparser::*da*  nil))

(unless (boundp 'sparser::*assetnet*)
  (defparameter sparser::*assetnet* nil))

(unless (boundp 'sparser::*tipster*)
  (defparameter sparser::*tipster*  nil))

(unless (boundp 'sparser::*bbn*)
  (defparameter sparser::*bbn*  nil
    "Goes with a release of Sparser to BBN in the early 1990s to use
     in conjunction with an early version of Hark. Notable for using
     the 'all-edges' protocol and coming with next to no built-in
     grammar."))

(unless (boundp 'sparser::*sun*)
  (defparameter sparser::*sun*  nil))

(unless (boundp 'sparser::*apple*)
  (defparameter sparser::*apple*  nil))


;;--- Scheme for drawing on additional files not in Sparser's
;;    directory tree. Developed for the Answer project.

(unless (boundp 'sparser::*external-object-files*)
  (defparameter sparser::*external-object-files* nil
    "Provides a hook for specifying object files
     from outside Sparser's directory tree. Value should be a object
     that can be passed directly to load without requiring any sort
     of translation, e.g. a fully specified pathname or namestring."))

(unless (boundp 'sparser::*external-analyzer-files*)
  (defparameter sparser::*external-analyzer-files* nil
    "Provides a hook for specifying analysis files
     from outside Sparser's directory tree. Value should be a object
     that can be passed directly to load without requiring any sort
     of translation, e.g. a fully specified pathname or namestring."))

(unless (boundp 'sparser::*external-driver-files*)
  (defparameter sparser::*external-driver-files* nil
    "Provides a hook for specifying driver files
     from outside Sparser's directory tree. Value should be a object
     that can be passed directly to load without requiring any sort
     of translation, e.g. a fully specified pathname or namestring."))

(unless (boundp 'sparser::*external-interface-files*)
  (defparameter sparser::*external-interface-files* nil
    "Provides a hook for specifying interface files
     from outside Sparser's directory tree. Value should be a object
     that can be passed directly to load without requiring any sort
     of translation, e.g. a fully specified pathname or namestring."))

(unless (boundp 'sparser::*external-testing-files*)
  (defparameter sparser::*external-testing-files* nil
    "Provides a hook for specifying testing files
     from outside Sparser's directory tree. Value should be a object
     that can be passed directly to load without requiring any sort
     of translation, e.g. a fully specified pathname or namestring."))

(unless (boundp 'sparser::*external-workspace-files*)
  (defparameter sparser::*external-workspace-files* nil
    "Provides a hook for specifying workspace files
     from outside Sparser's directory tree. Value should be a object
     that can be passed directly to load without requiring any sort
     of translation, e.g. a fully specified pathname or namestring.")) 

(unless (boundp '*external-grammar-files*)
  (defparameter *external-grammar-files* nil
    "Provides a hook to load additional grammar rules of any sort.
     Value should be a string acceptable to load."))

(unless (boundp '*external-grammar-dossier-files*)
  (defparameter *external-grammar-dossier-files* nil
    "Provides a hook to load additional instances of items defined by
     the grammar.
     Value should be a string acceptable to load."))

(unless (boundp 'sparser::*external-grammar-config*)
  (defparameter sparser::*external-grammar-config* nil
    "Provides a hook for specifying the configuration of the grammar
     from outside Sparser's directory tree. Value should be a object
     that can be passed directly to load without requiring any sort
     of translation, e.g. a fully specified pathname or namestring."))


(unless (boundp 'sparser::*custom-launch-time-config-file*)
  (defparameter sparser::*custom-launch-time-config-file* nil
    "The contents of this file are loaded and executed as the
     penultimate step in loading the system. The default is
     <version>:config:launch. It sets switches, loads workspaces,
     and loads the grammar and/or the dossiers if that hasn't
     happened already."))

    

(unless (boundp 'sparser::*grammar-configuration*)
  (defparameter sparser::*grammar-configuration* nil
    "Checked for in the cond expression below. Provides a hook for
     a script to stipulate which file in the grammar-configurations;
     directory should be loaded without having to go through the
     heavy lifting of defining a full-up application setting that
     has much wider effects. Comes second to last in the checks
     just before the default of loading all the defined grammar
     modules."))


;;;---------------------------------------------------
;;; load the corresponding grammar configuration file
;;;---------------------------------------------------

(cond (sparser::*external-grammar-config*
       (load sparser::*external-grammar-config*)) ;; n.b. "load", not "lload"

      (sparser::*just-bracketing*
       (sparser::lload "grammar-configurations;just-bracketing"))

      (sparser::*grok*
       (setq *do-not-use-psi* t)
       (sparser::lload "grammar-configurations;grok"))

      (sparser::*c3*
       (sparser::lload "grammar-configurations;c3-configuration"))

      (sparser::*checkpoint-operations*
       (sparser::lload "grammar-configurations;checkpoint-ops"))

      (sparser::*fire*
       ;; Had been a configuration specific to fire, but that
       ;; file was reaped and this is essentially what it was.
       (sparser::lload "grammar-configurations;full grammar"))

      (sparser::*da*
       (sparser::lload "grammar-configurations;Debris analysis"))

      (sparser::*assetnet*
       (sparser::lload "grammar-configurations;AssetNet"))

      (sparser::*bbn*
       (sparser::lload "grammar-configurations;bbn"))

      (sparser::*sun*
       (sparser::lload "grammar-configurations;SUN"))

      (sparser::*apple*
       (unless (find-package :lingsoft)
         (make-package :lingsoft
                       :nicknames '(:ls)))
       (sparser::lload "grammar-configurations;partial grammar"))

      (sparser::*pure-dm&p-load*
       (sparser::lload "grammar-configurations;minimal dm&p grammar"))

      (sparser::*public-grammar*
       (sparser::lload "grammar-configurations;public grammar"))

      (sparser::*academic-grammar*
       (sparser::lload "grammar-configurations;academic grammar"))

      (sparser::*grammar-configuration*
       (let ((file (concatenate 'string
				"grammar-configurations;"
				sparser::*grammar-configuration*)))
         (sparser::lload file)))

      (sparser::*load-the-grammar*
       (sparser::lload "grammar-configurations;full grammar"))

      (t
       (unless sparser::*compile*
         (break "No grammar configuration file specified"))))



(unless (boundp 'sparser::*include-model-facilities*)
  (defparameter sparser::*include-model-facilities* t))



;;;-----------------
;;; doing the load
;;;-----------------

;; 1/24/11 CCL doesn't like the :around method in its asd file,
;; thinks that it's in the asdf package somehow. Haven't looked into it. 
;; (when sparser::*use-SFL*
;;   (require :asdf) 
;;   (asdf:operate 'asdf:load-op :sfl))

(when cl-user::*bidirectional*
  (unless (find-package :mumble) ;; it would load first
    (defpackage :mumble (:use :common-lisp :ddm-util))))

;; This call does the entire load
(sparser::load/fasl-or-newest cl-user::master-loader)

;; Provide definitions for function we know (given the configuration)
;; don't have definitions
(sparser::lload "loaders;stubs")


;; Set up basic sizing parameters
(if sparser::*sparser-is-an-application?*    ;; then we use the source version.
  (let ((sparser::*insist-on-binaries* nil)
        (sparser::*prefer-binaries* nil)
        (sparser::*compile* nil))
    (sparser::lload "config;load"))
  ;; otherwise we use the binaries or newer.
  (sparser::lload "config;load"))
  


;;;----------------------
;;; dumping out an image
;;;---------------------

#+:apple (unless (and (boundp 'sparser::*no-image*)
                      sparser::*no-image*)
           (sparser::lload "images;do-the-save"))




;;;--------------------------------------------------------
;;;--------------------------------------------------------
;;; doing what dumping the image and launching it would do
;;;--------------------------------------------------------
;;;--------------------------------------------------------

;; n.b. these forms will not be reached if the user elects
;; to saveout an image. They are what happens when an image
;; is launched. 

(let ((sparser::*do-not-create-an-image* t))
  (declare (special sparser::*salutation-string*))

  ;; If the grammar hasn't already been loaded, the calls in the config
  ;; routines will do it, and in either case it will have the dossiers
  ;; loaded and the corpus linked up. Also loads workspaces
  (let ((config (or *custom-launch-time-config-file*
		    "config;launch")))
    (if sparser::*sparser-is-an-application?*    ;; then we use the source version.
	(let ((sparser::*insist-on-binaries* nil)
	      (sparser::*prefer-binaries* nil)
	      (sparser::*compile* nil))
	  (sparser::lload config))
	(sparser::lload config)))   ;; otherwise we use the binaries or newer.
  
  
  (when *load-the-grammar*
    (when *include-model-facilities*
      (unless (or *just-note-changed-files*
                  *copy-file*)
        (sparser::load-delayed-dossiers)
	;; This call announces the # of individuals in all the defined categories
	;; that have instances (see *referential-categories*)
        (declare-all-existing-individuals-permanent))))
  
  
  
  ;;--- done as part of the launch
  
  (unless (or sparser::*nothing-Mac-specific*
              *just-note-changed-files*
              *copy-file*)
    (sparser::launch-sparser-menus))


#| If we want to tailor the workspaces to the application,
then the load-workspaces call in config/launch.lisp is the
place to do it. At this point in the overall load the config 
code has already executed so these are a duplication. 
|#
;;   ;;--- load workspaces
;;   (cond ;; This format gives us a hook to load workspaces
;;    ;; according to the system mode we're in. But for now
;;    ;; load them al
;;    (t
;;     (sparser::lload "init;workspaces:Grok")
;;     (sparser::lload "init;workspaces:ERN")
;;     (sparser::lload "init;workspaces:Darwin")
;;     (sparser::lload "init;workspaces:Mari")
;;     (sparser::lload "init;workspaces:med")
;;     (sparser::lload "init;workspaces:dm&p")
;;     (sparser::lload "init;workspaces:Strider")))
	
  
  (redeclare-permanent-individuals-if-necessary) ;; e.g. from workspaces
  
  ;;--- saluation
  
  (sparser::lload "version;salutation")
  
  (unless (or sparser::*just-note-changed-files*
              sparser::*copy-file*)
    (format *standard-output* "~A" sparser::*salutation-string*))
  
  #+:apple
  (defun trivial-save (month day)
    (let ((filename (format nil
                            "Sparser:Sparser ~A/~A"
                            month day)))
      (save-application filename)))
  #+:apple (format t "~%You can do (trivial-save <month> <day>)~%~%")
  
  )

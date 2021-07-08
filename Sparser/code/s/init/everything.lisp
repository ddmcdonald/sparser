;;; -*- Mode: LISP; Syntax: Common-Lisp -*-
;;; copyright (c) 1989-2005,2010-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "everything"
;;;    Module:   "init;"
;;;   Version:   April 2016
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
;; 6/15/14 Changed the default on *incorporate-generic-lexicon* to T so we always
;; prime Comlex. With fire as the default switch setting we were doing that anyway.
;; Also added *big-mechanism* as a grammar-load directing flag. 
;; 3/21/2015 minor reader conditionalization for SBCL, comparable to that for MCL and CCL
;; 4/18/15 added *track-incidence-count-on-bindings* because it's relevant to DM&P
;; which isn't part of most loads so can otherwise count on it having a value.
;; 10/7/15 added *CwC* and made a consistency pass for readability.
;; 1/11/16 radically refactored.

(in-package :cl-user)

(defpackage :sparser
  (:documentation "The Sparser source package.")
  (:nicknames :sp)
  (:use :common-lisp :ddm-util #+ccl :ccl)
  (:shadow :break :position)
  (:import-from :common-lisp-user :script)
  (:export
   :p :ie :e#
   :tr :deftrace :trace-msg
   :lload :def-logical-pathname
   :category-named :cat-realization :edge-referent
   :exploded-tree-family))

(in-package :sparser)

(defparameter *sparser-source-package*
  (find-package :sparser))

(defmacro position (&rest args)
  "Sparser has a data structure called position, which clashes
with the standard function of the same name. This macro aliases
the functional value of the former to that of the latter."
  `(common-lisp:position ,@args))

(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; Allegro comes in two favors: alisp, which has an ANSI-compiliant
  ;; case-folding reader, and mlisp, which preserves case during reading.
  ;; Franz neglected to distinguish these with a feature, so we do it
  ;; for them.
  #+allegro
  (if (eq (readtable-case *readtable*) :preserve)
    (push :mlisp *features*)
    (push :alisp *features*)) ; corresponds to :upcase
  #+sbcl
  (setq sb-impl::*default-external-format* :utf-8))

(defparameter *sparser-directory*
  (asdf:system-relative-pathname :sparser "Sparser/")
  "Base reference point for all Sparser source files.")

(defparameter *sparser-code-directory*
  (merge-pathnames "code/" *sparser-directory*)
  "Directory containing the Sparser source code.")

(let ((*default-pathname-defaults*
       (merge-pathnames "s/init/" *sparser-code-directory*)))
  (load "loaders/logical")
  (load "loaders/logicals")
  (load "loaders/lload"))

(lload "init;parameters")
(lload "loaders;scripts")
(lload "loaders;grammar-module")
(lload "loaders;grammar-modules")
(lload "loaders;master-loader")
(lload "loaders;stubs")
(lload "loaders;workspaces")
(lload "init;session")

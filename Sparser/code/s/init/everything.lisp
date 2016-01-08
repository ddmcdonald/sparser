;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1989-2005,2010-2015 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File:   "everything"
;;;    Module:   "init;"
;;;   Version:   October 2015
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

(in-package :sparser)

(defvar *sparser-source-package* (find-package :sparser)
  "The Sparser source package.")

(eval-when (:compile-toplevel :load-toplevel :execute)
  ;; Allegro comes in two favors: alisp, which is ANSI compiliant and
  ;; has a case-folding reader; and mlisp, which preserves case during
  ;; reading. Franz neglected to distinguish these with a feature since,
  ;; so we have to do it for them.
  #+allegro
  (if (eq (readtable-case *readtable*) :preserve)
    (push :mlisp *features*)
    (push :alisp *features*))) ;; corresponds to :upcase

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

(defvar *loader-mode* :everything ;; :just-the-all-edges-parser
  "Within the engine part of sparser (vs. the grammar used with it),
there are several gross variations on what parts of it are needed
with a given application, which this flag controls. This is analogous
to the use of grammar-modules.")

(defvar *no-image* #+:apple nil #-:apple t
  "This flag controls whether, upon completing the load, we ask
the user whether they want to save out an image of what has
been loaded. If they do, a MCL 'application' is created and
Lisp is exited in the process. What it means to make an image
is specific to the vendor of the lisp and the operating system,
so for the present this is only enabled for Mac versions.")

(defvar *do-not-create-an-image* nil
  "This flag is set at the end of this file if we have answered No to
any of the various prompts to create images. Its purpose is to block
the calls in the Launch configuration file that would (under various
conditions) automatically save out images, e.g., as when working from
a fixed engine and saving out new versions of the grammar without
dossiers.")

(defvar *load-the-grammar* t
  "The facilities for defining grammar rules are always loaded. This
flag governs whether the instance objects and rules defined by
the load file for the grammar are also loaded.  N.b. precisely
which modules of the grammar are loaded is further specialized by
the flags in the grammar config file.")

(defvar *lattice-points* t
  "This governs the loading of alternative versions of several
core modules, versions that support fully developed lattice points")

(defvar *track-incidence-count-on-bindings* nil
  "Unless we are working with very general individuals as we do
in DM&P, the number of times that a binding will be 'created'
more than once is vanishingly small. Small enough that when we
notice them we can determine whether they're real.
This flag is looked at in bind-variable/expr.")

(defvar *edges-from-referent-categories* nil
  "If non-nil, we look for edge label combinations off the labels provided
by the referent (often more general than the category) including
composite referents.")

(defvar *allow-pure-syntax-rules* nil
  "Permits looking for combinations off the form labels of the two edges.
Obviously this is dangerous, so the policy is to locally bind this flag
inside treetop functions with clear dynamic scopes.")

(defvar *external-referents* nil
  "Usually the model-level referents to rules or other schema are objects
in Krisp that are internal to Sparser (and may later be exported).
This flag signals that some referents are objects imported or linked to
from other programs/processes and conditions some of the rule-making
machinery to have few or no expectations about how it can manipulate
them.")

(defvar *load-dossiers-into-image* t
  "Controls whether, if the grammar is loaded, the files of individuals
that instantiated the model are loaded as well during the process
that sets up the files to go into an image.")

(defvar *delayed-loading-of-the-grammar* nil
  "Used when making an application/image that will launch in either
of two modes: without any grammar (in which case the designated
grammar modules are to be loaded at launch) or with that grammar
(effectively a second image built on the first) with the dossiers
still to be loaded.  This is used with *load-the-grammar* set
to nil to indicate that we came from an image launch rather than
from a loading of the whole image. It distinguishes that situation
from the one where the standard grammar is never intended to be
included.")

(defvar *connect-to-the-corpus* nil
  "Controls whether a file of logical pathnames is loaded that
point to various established directories of texts. The directory
for this file is pointed to by the 'corpus;' logical in the
loader's logicals file, whose normal value is dictated by the
value of cl-user::location-of-text-corpora. ")

(defvar *insist-on-binaries* nil
  "A flag read by lload that has it just load the fasl version
of the files without ever looking at the sources.")

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

(defvar *monitor-size* :14-inch
  "Read by workbench routines to establish the size of the windows.")

(defvar *nothing-Mac-specific*
  #-:apple t
  #+:apple nil
  "Some of the interface routines presuppose that we're loading
on a Mac and use MCL-specific routines. When this flag is on these
routines are left out of the load.")

;;;----------------
;;; hard filenames
;;;----------------

#|
The hardwired filenames are the values for the parameterized calls to load
that are made in this file.  All other files are loaded using Sparser's own
loading facility, which is driven off the function "lload".
|#

(defvar *sparser-directory*
  (or (assert (and (equal (pathname-name *load-truename*) "everything")
                   (equal (last (pathname-directory *load-truename*) 3)
                          '("code" "s" "init")))
              (*load-truename*)
              "Expected to be loaded from code/s/init/everything.")
      (truename
       (merge-pathnames
        (make-pathname :directory '(:relative
                                    :up ;; init
                                    :up ;; s
                                    :up ;; code
                                    ))
        (make-pathname :directory (pathname-directory *load-truename*)))))
  "Base reference point for all files.")

(defparameter *sparser-code-directory*
  (merge-pathnames
   (make-pathname :directory '(:relative "code"))
   *sparser-directory*))

;; Used in conjunction with the MCL-based workbench
(defvar cl-user::location-of-text-corpora nil)
(when cl-user::location-of-text-corpora
  (push :full-corpus *features*))

;;;--------------------------------------------------------------
;;; load source/grammar loaders and logical pathname definitions
;;;--------------------------------------------------------------

;; These are (nearly) the only files loaded by physical pathname.
(let ((*default-pathname-defaults* *sparser-code-directory*))
  (load "s/init/lisp/ddef-logical")
  (load "s/init/lisp/lload")
  (load "s/init/lisp/grammar-module")
  (load "s/init/loaders/logicals"))

;; This is the first file whose physical name format is constructed.
;; If this loads (compiles) successfully, we can be assured that the
;; others will as well.
(lload "loaders;grammar modules")

;;;-------------------------------------------
;;; flags for specific versions of the system
;;;-------------------------------------------

(defvar *speech* nil
  "This flag indicates that the text we're parsing is transcribed
speech rather than a written text. It affects how the text-based
heuristics are handled and turns on other, speech-specific heuristics.")

(defvar cl-user::*psi-2009* t
  "Controls the loading of the total make over of the PSI facility.
This is the third rewrite that is a great simplification and solves
the problem identified in the earlier code as 'sticky psi' where
values from earlier parses were being retrieved for later ones.")

(defvar *CLOS* t
  "If not nil, every category and individual is backed by the
equivalent CLOS class and instance. Permits free use of type-specific
compositional methods in referents.")

(defvar *load-ad-hoc-rules* nil
  "The ultimate goal of development on Sparser is integration into
a fully bi-directional system (see Magi loader), which requires
painstaking care to route everything through a realization schema.
If a purely analysis-driven project requires being more ad-hoc,
then this switch will gate those rules.")

(defvar *use-SFL* t
  "We are gradually going to insert a full up CLOS backing behind KRISP.
One first step in that direction is including SFL in the load so that
we can use its CLOS wrappers.")

(defvar cl-user::*bidirectional* t
  "Indicates that Sparser's analyses are going to be deployed by Mumble.
If we are doing that live then Mumble will already have been loaded.
If it is not, this flag enables setting up its package so that the
coordinating code will be able to load.")

(defvar *incorporate-generic-lexicon* t
  "When non-nil, we finish off the loading of the grammar by including
almost purely lexical knowledge about a horde of words.")

(defvar *do-not-use-psi* t
  "There are circumstances when psi proliferate even in cases where they
don't make sense (perhaps the 'simple criteria' need significant extension),
and there is the problem that saturated psi don't convert to individuals.
They are the correct long-run approach, but a given application may choose
to not use them. When this flag is up, make/individual will only create
individuals with regular bindings and never make psi. N.b. this is set by
the *grok* configuration. If it's to be set it has to be done very early,
before any model objects are constructed. Setting it with the configuration
is a safe way to do it.")


;;;-----------------------------------------------------------------------
;;; Mutually exclusive application settings.
;;; These correspond to alternative system configurations, some of them
;;; now very old and mothballed (i.e. not incorporated in the present
;;; codebase). They dictate choices of grammar modules to load and values
;;; for initializations.
;;;-----------------------------------------------------------------------

(defvar *just-bracketing* nil
  "Leaves out all of the grammar except for the function words and
the knowledge we have about them, e.g. none of the name grammar is
included; no time, location, etc from core. None of the sublanguages.")

(defvar *grok* nil
  "Includes the core grammar and selected sublanguages such as report.
Note that this sets the *do-not-use-psi* flag.")

(defvar *c3* nil
  "Uses minimal built-in grammar. Has its own protocol over the chart,
and uses a set of document structures to maintain a 'situation' construct.")

(defvar *big-mechanism* nil
  "Uses a tailored version of the full grammar to remove grammar modules
whose rules get in the way")

(defvar *CwC* nil
  "Uses a configuration similar a bit larger than the one for C3,
along with a grammar module (sublanguage) for the blocks world.")

(defvar *checkpoint-operations* nil) ;; in mothballs

(defvar *fire*  nil
  "Fire stands for 'Free-text Information and Relation Extraction'.
It is essentially Grok going forward.")

(defvar *pure-dm&p-load* nil)

(defvar *da* nil)

(defvar *assetnet* nil)

(defvar *tipster* nil)

(defvar *bbn* nil
  "Goes with a release of Sparser to BBN in the early 1990s to use
in conjunction with an early version of Hark. Notable for using the
'all-edges' protocol and coming with next to no built-in grammar.")

(defvar *sun* nil)

(defvar *apple* nil)


;;;------------------------------------------------------------
;;; Scheme for drawing on additional files not in Sparser's
;;; directory tree. Developed for the Answer project.
;;;------------------------------------------------------------

(defvar *external-object-files* nil
  "Provides a hook for specifying object files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-analyzer-files* nil
  "Provides a hook for specifying analysis files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-driver-files* nil
  "Provides a hook for specifying driver files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-interface-files* nil
  "Provides a hook for specifying interface files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-testing-files* nil
  "Provides a hook for specifying testing files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-workspace-files* nil
  "Provides a hook for specifying workspace files from outside Sparser's
directory tree. Value should be an object that can be passed directly
to load without requiring any sort of translation, e.g. a fully specified
pathname or namestring.")

(defvar *external-grammar-files* nil
  "Provides a hook to load additional grammar rules of any sort.")

(defvar *external-grammar-dossier-files* nil
  "Provides a hook to load additional instances of items defined by
the grammar.")

(defvar *external-grammar-config* nil
  "Provides a hook for specifying the configuration of the grammar
from outside Sparser's directory tree. Value should be an object
that can be passed directly to load without requiring any sort
of translation, e.g. a fully specified pathname or namestring.")

(defvar *custom-launch-time-config-file* nil
  "The contents of this file are loaded and executed as the
penultimate step in loading the system. The default is \"config;launch\".
It sets switches, loads workspaces, and loads the grammar and/or
the dossiers if that hasn't happened already.")

(defvar *grammar-configuration* nil
  "Checked for in the cond expression below. Provides a hook for
a script to stipulate which file in the grammar-configurations;
directory should be loaded without having to go through the
heavy lifting of defining a full-up application setting that
has much wider effects.")


;;;---------------------------------------------------
;;; load the corresponding grammar configuration file
;;;---------------------------------------------------

(cond (*grammar-configuration*
       (lload (merge-pathnames *grammar-configuration*
                               #P"sparser:grammar-configurations;")))

      (*external-grammar-config*
       (load *external-grammar-config*)) ;; n.b. "load", not "lload"

      (*just-bracketing*
       (lload "grammar-configurations;just-bracketing"))

      (*big-mechanism*
       (lload "grammar-configurations;bio-grammar"))

      (*grok*
       (setq *do-not-use-psi* t)
       (lload "grammar-configurations;grok"))

      (*c3*
       (lload "grammar-configurations;c3-configuration"))

      (*CwC*
       (lload "grammar-configurations;blocks-world"))

      (*checkpoint-operations*
       (lload "grammar-configurations;checkpoint-ops"))

      (*fire*
       ;; Had been a configuration specific to fire, but that
       ;; file was reaped and this is essentially what it was.
       (lload "grammar-configurations;full grammar"))

      (*da*
       (lload "grammar-configurations;Debris analysis"))

      (*load-the-grammar*
       (lload "grammar-configurations;full grammar"))

      (t
       (unless *compile*
         (break "No grammar configuration file specified"))))

(defun set-protocol-switches ()
  (cond
    (*grok* (grok-setting))
    (*big-mechanism* (bio-setting))
    (*CwC* (blocks-world-setting))
    (*bbn* (all-edges-setting))
    (*fire* (fire-setting))
    (*c3* (c3-setting))
    (*just-bracketing* (just-bracketing-setting))
;    (*checkpoint-ops* ;; oops -- points to a grammar module
;     (checkpoint-ops-setting))
    (t (fire-setting))))

(defvar *include-model-facilities* t)

;;;-----------------
;;; doing the load
;;;-----------------

;; 1/24/11 CCL doesn't like the :around method in its asd file,
;; thinks that it's in the asdf package somehow. Haven't looked into it. 
;; (when *use-SFL*
;;   (require :asdf) 
;;   (asdf:operate 'asdf:load-op :sfl))

(when cl-user::*bidirectional*
  (unless (find-package :mumble) ;; it would load first
    (defpackage :mumble (:use :common-lisp :ddm-util))))

;; This call does the entire load
(lload "loaders;master-loader")

;; Provide definitions for function we know (given the configuration)
;; don't have definitions
(lload "loaders;stubs")

(set-protocol-switches)

(push :sparser *features*)

;; Set up basic sizing parameters
(lload "config;load")

;;;--------------------------------------------------------
;;; doing what dumping the image and launching it would do
;;;--------------------------------------------------------

;; n.b. these forms will not be reached if the user elects
;; to saveout an image. They are what happens when an image
;; is launched. 

(let ((*do-not-create-an-image* t))
  ;; If the grammar hasn't already been loaded, the calls in the config
  ;; routines will do it, and in either case it will have the dossiers
  ;; loaded and the corpus linked up. Also loads workspaces.
  (let ((config (or *custom-launch-time-config-file* "config;launch")))
    (lload config))
  
  (when *load-the-grammar*
    (when *include-model-facilities*
      (load-delayed-dossiers)
      ;; This call announces the # of individuals in all the defined categories
      ;; that have instances (see *referential-categories*)
      (declare-all-existing-individuals-permanent)))
  
  ;; done as part of the launch
  (unless *nothing-Mac-specific*
    (launch-sparser-menus))

  ;; e.g., from workspaces. Should probably be moved to config.
  (redeclare-permanent-individuals-if-necessary)

  (lload "init;salutation"))

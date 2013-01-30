;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CL-USER COMMON-LISP) -*-
;;; copyright (c) 1991-1996,2010-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;      File:   "compile-everything"
;;;    Module:   "init;scripts:"
;;;   version:   0.4 January 2013

;; 0.1 (4/6) added probef's to simplify use on multiple systems
;;     (5/11) added one for 900.  (11/28/95) brought it all up to date
;; 0.2 (6/19/96) removed vestige of query for whether to do the single files and
;;      made it automatic. Removed explicit versioning in favor of the logical.
;;     (1/24/07) Incorporated current pathnames. (6/25) conditionalized the
;;      compiler directory.
;; 0.3 (11/10/10) Cleaned up dead wood, updated one-offs.
;; 0.4 (8/27/11) Reworked to only be used after Sparser has been loaded.
;;     (10/10/12) v3.1 => v4.0.  12/3/12 Added more doc and blocked grammar
;;     (1/28/13) Removed the explicit files that weren't there.

#|
  In a Lisp like Allegro that does not automatically compile forms
when they are loaded (which Clozure does), it is necessary to do it
by hand since the accidents of history mean that the loader does
do it for us automatically like a modern ASDF-style loader would.
  Instead we use Sparser's own machinery to do the compilation
by "loading" the system with a switch setting that directs the
load functions to compile files as needed (i.e. whenever the source
is newer than that fasl).

  To do this, first load Sparser, then load this file. It will sweep
through all of code that has already been loaded and generate the
fasl files.

Why compile
  In principle the only thing really gained by compiling the code is
compactness and speed. However for some lisps, notably Allegro, the
only way to have tail recursion is to use compiled code with particular
switch settings. Sparser requires tail recursion to execute texts
of any real length. Without it, it will blow out the stack after
about 40 words.

Location of the fasl:
  The intention has always been that the fasl is stored in a parallel
directory tree to the one under Sparser/code/s/ -- Sparser/code/f/.
That worked fine for MCL. I encountered a problem trying to do it
with Allegro the first time (in 2007) because the output file was
not accepted. It's worth trying again since the documentation says
it should be.
  The call to compile file is wrapped inside routine-to-compile-file
and specialized to the different Lisps. See init/versions/v4.0/loaders/
lisp-switch-settings.lisp.
  The location for the fasls is determined by *binaries-directory-name*,
which is set just below.  NOTE -- if it works on f, this has to be
correlated with the version of that global in init/everything.lisp
which is presently (12/3/12) set to "s" for Allegro.

Compiling the grammar
  For reasons I have not sorted out, Allegro gets confused when it tries
to compile many of the files in the grammar. None of these files have
code that is part of the tail-recursive state machine that drives Sparser
so they can be safely ignored. The code below does that by rebinding
the grammar-gating switch to nil.

|#

(eval-when (:load-toplevel :execute)
  (unless (and (find-package :sparser)
               (boundp 'user::location-of-sparser-directory))
    (error "The :sparser package must exist when this file loads.")))

(in-package :sparser)

;;;----------------------
;;; setup the parameters
;;;----------------------

(defparameter sparser::*compile*  t)

(defparameter sparser::*binaries-directory-name* "f"
  "This has not been recently checked. There are likely to be
   some missing directories. [2012/12/03:ddm]")



;;;--------------------------------------------------
;;; do the compilation (and load the compiled files)
;;;--------------------------------------------------

(setq *load-verbose* t)

(load #+:apple (concatenate 'string cl-user::location-of-sparser-directory
                   "code:s:init:versions:"
                   "v4.0:"
                   "loaders:lisp-switch-settings")
      #+:unix (concatenate 'string cl-user::location-of-sparser-directory
                           "code/s/init/versions/"
                           "v4.0/"
                           "loaders/lisp-switch-settings.lisp"))

(let ((*load-the-grammar* nil))
  (declare (special *load-the-grammar*))
  (load #+:apple (concatenate 'string
                    cl-user::location-of-sparser-directory
                   "code:s:init:"
                   "everything" )
        #+:unix (concatenate 'string
                   cl-user::location-of-sparser-directory
                   "code/s/init/"
                   "everything.lisp" )))


;; These files are either part of the preloader or only optionally
;; executed. We have to call the compiler on them individually

(just-compile "init;everything")

(just-compile "init;Lisp:ddef-logical")
;;  exports.lisp isn't fleshed out enough to be worth it
(just-compile "init;Lisp:kind-of-lisp")
(just-compile "init;Lisp:grammar-module")
(just-compile "init;Lisp:lload")

(just-compile "init;scripts:compile-everything")
(just-compile "init;scripts:copy-everything")
(just-compile "init;scripts:fire")
(just-compile "init;scripts:just-dm&p")
(just-compile "init;scripts:no-grammar")

(just-compile "version;loaders:grammar-modules")
(just-compile "version;loaders:grammar")
(just-compile "version;loaders:lisp-switch-settings")
(just-compile "version;loaders:logicals")
(just-compile "version;loaders:master-loader")
(just-compile "version;loaders:model")
(unless *nothing-mac-specific*
  (just-compile "version;loaders:save-routine"))
(just-compile "version;loaders:stubs")

(just-compile "version;salutation")
(just-compile "version;updating")

(just-compile "config;explicitly-loaded-files")
(just-compile "config;image")
(just-compile "config;launch")
(just-compile "config;load")

(just-compile "grammar-configurations;Debris-analysis")
(just-compile "grammar-configurations;full-grammar")
(just-compile "grammar-configurations;just-bracketing")
(just-compile "grammar-configurations;minimal-dm&p-grammar")
(just-compile "grammar-configurations;partial-grammar")

(just-compile "images;do-the-save")

(just-compile "init;workspaces:Darwin")
(just-compile "init;workspaces:dm&p")
(just-compile "init;workspaces:ERN")
(just-compile "init;workspaces:Mari")
(just-compile "init;workspaces:med")


:finished-compilation


Loading Sparser
6/30/21
(in-package :sparser) <--- to enable meta-.


As one might expect with a Lisp system that has been under mostly continuous development since 1990 with several changes in Lisp, loading Sparser involves a mixture of techniques from asdf to explicit load files


@------ start with asdf

We load Sparser using asdf, but since the system comes with many different configurations, the setup is more elaborate than the norm.

Different configurations entail different sets of grammar modules to provide the grammar and semantic model, as well as different switch settings to dictate how the Sparser engine will process them. These differences are packaged into 'scripts'.

At the heart of the asdf file -- ~/sparser/sparser.asd -- is a macrolet that defines a set of defsystem objects where each incorporates a different script. The design is due to Alex Plotnik, a Lisp wizard who is reponsible for much of the tighter code in Sparser's engine.

In your lisp init file, e.g. your ~/.sbclrc file when using SBCL, or wherever you store the code for loading Sparser, you should invoke a specific script defsystem. For example, this one loads the configuration for the Acumen project by using :sparser/acumen as the argument to the asdf:load-system call. It also sets up a pointer to the acumen code base (on ddm's system since init files are personalized) and an additional initialization step. 

(defmacro acumen ()
  (defparameter cl-user::*use-all-proteins* t)
  (handler-bind
      ((warning #'muffle-warning))
    (asdf:load-system :sparser/acumen))
  (defvar *acumen-base* "/Users/ddm/ws/Acumen/acumen/trunk/")
  (load (concatenate 'string *acumen-base* "code/sparser-driver.lisp"))
  (in-package :sparser)
  (initialize-acumen-file-names) ;; n.b symbol is in common-lisp-user
  :loaded-acumen-configuration)

The base :sparser defsystem looks like this. Notice the dependencies.

(defsystem :sparser
  :depends-on (:cl-json :ddm-util :mumble :cl-ppcre)
  :components ((:file "Sparser/code/s/init/everything"))
  :perform (load-op :after (o c) (pushnew :sparser *features*))
  :in-order-to ((test-op (test-op :sparser/tests))))

:ddm-util is a set of general utilities. :mumble is Sparer's companion language generation system (though just the realization component). These two are included in the Sparser system files. The other two libraries -- :cl-json and :cl-ppcre -- are not included, so you have to configure your source registry for asdf to point to where the are on your machine, e.g.

(asdf:initialize-source-registry 
 '(:source-registry
   (:tree (:home "sparser"))
   (:tree (:home "sift/lisp-utils/trunk"))
   etc. ))


@------ Scripts

In sparser.asd the different systems there are distinguished by the 'script' that they invoke. If you look closely at the macrolet expression in the .asd file you'll notice that the script is set before anything else happens. 


@------ package and preloaders

The file "Sparser/code/s/init/everything.lisp" is the only directly specified file in Sparser's base defsystem. The toplevel 'init' directory (for 'initialization') has the relevant control parameters (in parameters.lisp), the various grammar configurations (in the subdirectory 'config'), and a set of workspaces in two different directories. 'workspace' has files for operations that are generally applicable, notably abbreviations.lisp. 'workspaces' has a set of project or person specific work code. The directory init/loaders/ has the preloader files that everything loads.

The first thing done in everything.lisp is defining the :sparser package (with the nickname/short-form :sp). The principal thing it then does is to load the preloaders:

logical.lisp -- defines the code to manage Common Lisp logical pathnames. For the details consult the CL manual and the doc string on the sparser-logical-pathname function.

logicals.lisp -- specifies the logical pathname to every individual directory in the Sparser file tree.

lload.lisp -- A wrapper around the load function that does book keeping and checks the dates on the files, A source file that is newer than its corresponding compiled file (".fasl" for 'fast load') is recompiled. (Note that in SBCL redefining a function automatically compiles it. You are never working with interpreted code.)'

@------ logical pathnames

When the preloader has been loaded, using direct calls to the load function. We switch over to using calls to lload calls using logical pathnames. For example:

(lload "loaders;scripts")

The string "loaders;scripts" is a Common Lisp logical pathname that is decoded to identify a particular file (scripts.lisp) in a particular directory (~/sparser/code/s/init/loaders/). The intermediary directories 'code' and 's' are artifacts of the original distribution mechanism for Sparser (on floppy disks) where there was the option to only ship the compiled version (code/f/). That is moot given the move to opensource via GitHub, but the structure remains. I always setup my sparser directory to use links to the direct subdirectories of 's' ('analyzers', 'drivers', 'grammar', 'init', 'interface', 'objects', and 'tools').

@------ Scripts

In sparser.asd the different defsystem expressions are distinguished by the 'script' that they invoke. If you look closely at the macrolet expression in the .asd file you'll notice that the choice of script is set before anything else happens. This is the script for acumen. It dictates the grammar-configuration, the switch settings, and provides values for some strategic variables. The set of variables that could be set here are in init/parameters.lisp. 

(defscript acumen ()
  (:script-variable *acumen*)
  (:parameters
   (*description-lattice* t)
   (*ignore-literal-edges* nil)
   (*index-under-permanent-instances* t)
   (*index-bindings-to-variables* t)
   (*filter-vocabulary* :acumen))
  (:grammar-configuration "acumen-grammar")
  (:switches neo-fire-setting))

All the directories that can be loaded must have a logical pathname registered in the file init/loader/logicals.lisp. The syntax is not natural. I always just copy the pattern given by the other logical. For Acumen's grammar we have

(def-logical-pathname "motifs;"   "sl;motifs;")



@------ grammar modules

Virtually every directory of code or grammar/semantic-model includes a file called 'loader.lisp'. In that motifs directory the loader uses this form to load the (presently) single file. 

(gload "motifs;base-categories")

'gload' is a wrapper around lload that keeps even more records. In particular it links all the contents of the file to the grammar-module is was declared to be part of.

Grammar modules are a mechanism for deliberately constraining what parts of the engine and grammar we load, as dictated by the script. There is a note on these (see ~/sparser/Sparser/documentation/notes/note-on-grammar-modules.lisp), but the short form is that we register a new grammar module in init/loader/grammar-modules.lisp, e.g.

(define-grammar-module  *acumen-motifs*
                        :name "acumen motifs"
                        :parent *sublanguages*)

Broadly speaking the modules, like the logical pathnames, mirror the directory structure. 

To specify what grammar modules should be loaded, the script specifies one of the files in the directory init/config/grammar/. In acumen's case the file is called acumen-grammar.lisp, and includes this statement.

(include-grammar-module *acumen-motifs*)


@----- organizing the actual loading

The rest of the loading operation is set in motion when everything.lisp loads the 'master-loader' (init/loader/master-loader.lisp). Note that loading a file evaluates all of the forms within it. In this case the forms are direct calls to lload, or calls that are conditional on the presence of a grammar module, which principally happens with the grammar. The loader for the grammar is invoked close to the end of master-loader.lisp with a call to lload the grammar load file: init/loaders/grammar.lisp.

The order in which files are loaded is very deliberate. The super classes of Lisp (CLOS) classes must be loaded before their subclasses are. Similarly the categories that a Krisp category specializes or mixes in must be have been loaded (defined) before the category can be defined. In the case of categories, this is particularly strict in recent years because categories can be used as type specifiers in method invocations. (See the note in the documentation on defining-categories.)

This is the gated call to load the file with the categories for motifs.

(gate-grammar *acumen-motifs*
              (gload "motifs;loader"))


@----- initializations

The last thing that happens in the loading process is loading the file init/session.lisp. When it is loaded it does things like making the chart and the resource of edges, among other things. Its call to postprocess-grammar-indexes is responsible for printing out the statistics on what is in this particular load. E.g. 

-------------------------------------------
 6,432  Referential categories
 137  Syntactic form categories
 92   Mixin categories
 263  Non-terminal categories
 11,164   Individuals
               
-------------------------------------------
 26,057   Words
 8,141  Polywords
 23,280   Lexical rules
 8,752  Semantic rules
 16   Context sensitive rules
 304  Form rules
 924  Syntactic rules
 282  Debris analysis rules
 94   ETF tree schema
 321  Grammar modules loaded
-------------------------------------------

This is also where we stop the timer on the amount of time it took to do all this.

(stop-timer '*time-to-load-everything*)
(report-time-to-load-system)

That prints out, e.g., "System loaded in 22.9 seconds".

Finally it prints out the salutation:

Welcome to the Sparser natural language analysis system.
Copyright (c) David D. McDonald 1991-2005,2010-2021.
Distributed under the Eclipse Public License.

Type (in-package :sparser) to use Sparser symbols directly.




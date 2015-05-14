(in-package :sparser)

Notes on what happens when you load Sparser
Version 5/7/15


Once the specializing script is determined, what happens next is
goverened by the the operations and setting orchestrated by the
code in the file init/everything.lisp, which you will see is
aptly named.

Much of the early portino of that file is concerned with settings
for running with alternative Lisps and determining various file
locations. That is followed by a section of parameterizing the
loading process and what to do or not do at the end, such as
saving an image or loading the grammar. This code dates to the
early 1990 when Sparser was a commercially licensed system so you
will see setting which don't apply today. 

The next major operation is to setup the preloader, load/fasl-or-newest,
whose purpose is 
(a) to load setting about the lisp being used
(sparser::load/fasl-or-newest 
    cl-user::identify-the-lisp-&-specialize-preload)

(b) Setup the logical definitions of the location of the modules of
the grammar 
(sparser::load/fasl-or-newest  
   cl-user::module-location-definitions)

As well as ome ancilary files that they use, and the the master 
definitions of the grammar modules. 
  (sparser::lload "loaders;grammar modules")
Note the "logical filename" syntax there with the ";". Much of the
twists and turns in the loader code is concerned with moving back
and forth between the logical form of a filename and the form that
it takes on the OS we are using. 

The next set of switch settings governs some of the details of
what is or isn't loaded, and sets out the master set of alternative
configurations, such as *c3* or *big-mechanism*. These are consulted
in a call to cond that determines and loads the corresponding 
configuration of grammar modules to incude given that setting.

At that point we load the master loader with loads the rest of
the files of code. The function the-master-loader is at the top of
that file to make it easily to use meta-. with 

The master load file calls load-the-grammar when it is just about
done with the system code. After that is loads the files in the
worspace directory of the current version (init/versions/v4/workspace/*).

At that point we are back with the code in everything.lisp. Right now
we dont' have a setup defined for saving Sparser as an image (though
we need to), so do here what would alternatively have been done
when a saved image wakes up. 

(1) We load the load-time configuration file (v4/config/load.lisp),
which establishes the size of the major resources.

(2) we load lauch-time configuration file (config/launch.lisp). 
It consists of a set of function definitions. Notably this is
where all the user-level workspace files are loaded. That is every
liap file in init/workspaces/. The switch setting that goes with
the configuration is also applied, e.g. for *c3* vs. *big-mechanism*.


The function postprocess-grammar-indexes provides useful set of 
statistics besides doin what it's name implies. It is called as
the very last operation in load-the-grammar but could be called
later if desired. 


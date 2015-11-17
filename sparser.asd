;; ------------------------------------------------------------
;; WARNING: Only one of these should be loaded into any given Lisp
;; image. This load process has no way to unload or to intelligently
;; overwrite the results from a prior load.

(defpackage :sparser-asd
  (:use :asdf
        :sift-utils
        :common-lisp))
(in-package :sparser-asd)

;; ------------------------------------------------------------
;; Loads whatever the script var is set to. If no script var has been
;; set, it loads the default (everything).

(defsystem "sparser"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file "load-nlp.lisp")
                 )
    )

;; ------------------------------------------------------------
;; These load each of the known scripts.
;;
;; [jrye:20151112.1529CST] Implementation Note:
;;
;; The load-nlp.lisp script uses a defvar "script" in the
;; common-lisp-user package to control what grammar is loaded. The
;; subsystems below use INTERN to look up or create the script symbol.
;; The systems set the resulting symbol to a specific value,
;; overwriting a previous value if necessary.
;;
;; I checked the *package* variable in the load-op :before function to
;; verify that we are running in the common-lisp-user package.

(defsystem "sparser/fire"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :fire)
                             )
                           )
                  )
                 )
    )

(defsystem "sparser/biology"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :biology)
                             )
                           )
                  )
                 )
    )

(defsystem "sparser/blocks-world"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :blocks-world)
                             )
                           )
                  )
                 )
    )

(defsystem "sparser/grok"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :grok)
                             )
                           )
                  )
                 )
    )

(defsystem "sparser/c3"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :c3)
                             )
                           )
                  )
                 )
    )

(defsystem "sparser/no-grammar"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :no-grammar)
                             )
                           )
                  )
                 )
    )

(defsystem "sparser/just-dm&p"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :just-dm&p)
                             )
                           )
                  )
                 )
    )

(defsystem "sparser/default"
    :defsystem-depends-on ("sift-utils")
    :depends-on ("ddm-util")
    :components (
                 (:just-load-file
                  "load-nlp.lisp"
                  :perform
                  (load-op :before (o c)
                           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
                             (setf (symbol-value symbol) :default)
                             )
                           )
                  )
                 )
    )



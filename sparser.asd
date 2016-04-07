;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(defsystem :sparser
  :depends-on (:ddm-util :mumble)
  :components ((:file "Sparser/code/s/init/everything"))
  :perform (load-op :after (o c)
             (pushnew :sparser *features*) ; Sparser is now loaded
             (asdf:load-system :mumble/sparser)))

;; WARNING: Only one of these should be loaded into a given Lisp image.
;; This load process has no way to unload or to intelligently overwrite
;; the results of a prior load.

(defsystem :sparser/fire
  :perform (load-op :before (o c) (defparameter cl-user::script :fire))
  :perform (load-op (o c) (asdf:load-system :sparser)))

(defsystem :sparser/biology
  :perform (load-op :before (o c) (defparameter cl-user::script :biology))
  :perform (load-op (o c) (asdf:load-system :sparser))
  :perform (load-op :after (o c) (uiop:symbol-call :sparser :setup-bio)))

(defsystem :sparser/blocks-world
  :perform (load-op :before (o c) (defparameter cl-user::script :blocks-world))
  :perform (load-op (o c) (asdf:load-system :sparser)))

(defsystem :sparser/grok
  :perform (load-op :before (o c) (defparameter cl-user::script :grok))
  :perform (load-op (o c) (asdf:load-system :sparser)))

(defsystem :sparser/c3
  :perform (load-op :before (o c) (defparameter cl-user::script :c3))
  :perform (load-op (o c) (asdf:load-system :sparser)))

(defsystem :sparser/no-grammar
  :perform (load-op :before (o c) (defparameter cl-user::script :no-grammar))
  :perform (load-op (o c) (asdf:load-system :sparser)))

(defsystem :sparser/just-dm&p
  :perform (load-op :before (o c) (defparameter cl-user::script :just-dm&p))
  :perform (load-op (o c) (asdf:load-system :sparser)))

(defsystem :sparser/default
  :perform (load-op :before (o c) (defparameter cl-user::script :default))
  :perform (load-op (o c) (asdf:load-system :sparser)))

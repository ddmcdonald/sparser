;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2016-2019 SIFT LLC. All Rights Reserved.

;; These ASDF systems all simply punt to Sparser's loader, which uses the global
;; variable CL-USER::SCRIPT to control the load. So we set that before loading,
;; and we push a :SPARSER feature after loading. Only one of these systems
;; should be loaded into a Lisp image; the load process has no way to unload
;; or intelligently overwrite the results of a previous load.
(macrolet ((define-sparser-system (script)
             `(defsystem ,(format nil "~(sparser/~a~)" script)
                :depends-on (:ddm-util :mumble)
                :components ((:file "Sparser/code/s/init/everything"))
                :perform (prepare-op :before (o c) (defparameter cl-user::script ,script))
                :perform (load-op :after (o c) (pushnew :sparser *features*)))))
  (define-sparser-system :fire)
  (define-sparser-system :biology)
  (define-sparser-system :blocks-world)
  (define-sparser-system :grok)
  (define-sparser-system :c3)
  (define-sparser-system :no-grammar)
  (define-sparser-system :just-dm&p)
  (define-sparser-system :default))

(defsystem :sparser
  :depends-on ((:feature (:not :sparser) :sparser/default))
  :in-order-to ((test-op (test-op :sparser/tests))))

(defsystem :sparser/tests
  :depends-on ((:feature (:not :sparser) :sparser/default))
  :components ((:file "test/rt")
               (:file "test/k-methods")
               (:file "test/subcategorization"))
  :perform (test-op (o c)
             (let ((*package* (find-package :sparser)))
               (uiop:symbol-call :rt :do-tests))))

(defsystem :sparser/graph
  :depends-on ((:feature (:not :sparser) :sparser/default) :cl-dot)
  :components ((:file "Sparser/code/s/objects/model/categories/graph")))

;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2016 SIFT LLC. All Rights Reserved.

(defsystem :sparser
  :depends-on (:ddm-util :mumble)
  :components ((:file "Sparser/code/s/init/everything"))
  :perform (load-op :after (o c)
             (pushnew :sparser *features*) ; Sparser is now loaded
             (asdf:load-system :mumble/sparser))
  :in-order-to ((test-op (test-op :sparser-tests))))

(defsystem :sparser-tests
  :depends-on (:sparser)
  :components ((:file "test/rt")
               (:file "test/k-methods")
               (:file "test/subcategorization"))
  :perform (test-op (o c) (uiop:symbol-call :rt :do-tests)))

(defsystem :sparser/graph
  :depends-on (:sparser :cl-dot)
  :components ((:file "Sparser/code/s/objects/model/categories/graph")))

(macrolet ((define-sparser-system (script)
             "Only one of these should be loaded into a Lisp image.
The load process has no way to unload or to intelligently overwrite
the results of a prior load."
             `(defsystem ,(format nil "~(sparser/~a~)" script)
                :perform (load-op :before (o c) (defparameter cl-user::script ,script))
                :perform (load-op (o c) (asdf:load-system :sparser)))))
  (define-sparser-system :fire)
  (define-sparser-system :biology)
  (define-sparser-system :blocks-world)
  (define-sparser-system :grok)
  (define-sparser-system :c3)
  (define-sparser-system :no-grammar)
  (define-sparser-system :just-dm&p)
  (define-sparser-system :default))

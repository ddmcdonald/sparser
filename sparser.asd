;;; -*- Mode: Lisp; Syntax: Common-Lisp; -*-
;;; Copyright (c) 2016-2019 SIFT LLC. All Rights Reserved.

(defparameter cl-user::script :default)

(defsystem :sparser
  :depends-on (:ddm-util :mumble)
  :components ((:file "Sparser/code/s/init/everything"))
  :perform (load-op :after (o c) (pushnew :sparser *features*))
  :in-order-to ((test-op (test-op :sparser/tests))))

(macrolet ((define-sparser-system (script)
             `(defsystem ,(format nil "~(sparser/~a~)" script)
                :perform (prepare-op :before (o c) (setq cl-user::script ,script))
                :depends-on (:sparser))))
  (define-sparser-system :fire)
  (define-sparser-system :biology)
  (define-sparser-system :blocks-world)
  (define-sparser-system :grok)
  (define-sparser-system :c3)
  (define-sparser-system :no-grammar)
  (define-sparser-system :just-dm&p)
  (define-sparser-system :default))

(defsystem :sparser/tests
  :depends-on (:sparser)
  :components ((:file "test/rt")
               (:file "test/k-methods")
               (:file "test/subcategorization"))
  :perform (test-op (o c)
             (let ((*package* (find-package :sparser)))
               (uiop:symbol-call :rt :do-tests))))

(defsystem :sparser/graph
  :depends-on (:sparser :cl-dot)
  :components ((:file "Sparser/code/s/objects/model/categories/graph")))

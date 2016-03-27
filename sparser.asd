;; ------------------------------------------------------------
;; WARNING: Only one of these should be loaded into any given Lisp
;; image. This load process has no way to unload or to intelligently
;; overwrite the results from a prior load.

(defpackage :sparser-asd (:use :asdf :common-lisp))
(in-package :sparser-asd)

;; ------------------------------------------------------------
;; The LOAD-NLP function attempts to load a SPARSER. If given a config
;; value, it will set the common-lisp-user::script value to the given
;; config before loading.
;;
;; LOAD-NLP will only allow the load to happen once. With subsequent
;; calls, it warns if the new script value is different than before.
;;
;; The load-nlp.lisp script uses a defvar "script" in the
;; common-lisp-user package to control what grammar is loaded. Here we
;; use INTERN to look up or create the script symbol. Then we set the
;; resulting symbol to a specific value, overwriting a previous value
;; if necessary.

(defun load-nlp (&optional config)
  (cond ((member :sparser *features* :test #'eq)
         ;; SPARSER is already loaded.
         ;; (format t "SPARSER is already loaded.~%")
         (let ((prev-script (symbol-value (find-symbol "SCRIPT" :common-lisp-user))))
           (unless (eq prev-script config)
             (warn "Requested script is ~a, but SPARSER was already loaded with ~A -- all bets are off.~%"
                   config prev-script))))
        (t
         ;; SPARSER was not loaded, load it now.
         (when config
           (let ((symbol (intern "SCRIPT" :common-lisp-user)))
             (setf (symbol-value symbol) config)))
         (let ((load-nlp-file (system-relative-pathname :sparser "load-nlp.lisp")))
           ;; (format t "LOADING: ~a~%" load-nlp-file)
           (load load-nlp-file)))))

;; ------------------------------------------------------------
;; Loads whatever the script var is set to. If no script var has been
;; set, it loads the default (everything).

(defsystem "sparser"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp)))

;; ------------------------------------------------------------
;; These load each of the known scripts.

(defsystem "sparser/fire"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :fire)))

(defsystem "sparser/biology"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :biology)))

(defsystem "sparser/blocks-world"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :blocks-world)))

(defsystem "sparser/grok"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :grok)))

(defsystem "sparser/c3"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :c3)))

(defsystem "sparser/no-grammar"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :no-grammar)))

(defsystem "sparser/just-dm&p"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :just-dm&p)))

(defsystem "sparser/default"
    :depends-on ("ddm-util")
    :perform (load-op :before (o c) (load-nlp :default)))


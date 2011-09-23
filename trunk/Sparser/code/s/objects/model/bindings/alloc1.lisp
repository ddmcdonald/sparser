;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1996 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "alloc"
;;;   Module:  "objects;model:bindings:"
;;;  version:  1.0 March 2007

;; initiated 12/1 v2.1
;; 1.0 (7/17/92 v2.3) revised the definition.
;;     (8/8/94) drastic extension. Tweeking ...9/15. Added a case to
;;      Clean-up-non-individual-value 5/30/96.  3/9/07 added another
;;      case. 

(in-package :sparser)       ;; //// rename file "initialize"

;;;--------
;;; driver
;;;--------

(defun zero-individuals-bindings (&key binds bound-in)
  ;; called from Zero-out-individual
  ;; The individual is going to have all its bindings deleted. It
  ;; is the body of the 'binds' set and the value of the 'bound-in'
  ;; We reinitialize the bindings and accumulate and return the
  ;; variables and other individuals pointed to by them so that
  ;; they can have those bindings removed from their indexes all
  ;; at once rather than each time we clear a binding
  (let ( var  body bodies  value values )
    (dolist (b binds)
      (unless (deallocated-binding? b)
        ;; the individual being zero'ed is the body of this set
        (setq var (binding-variable b)
              value (binding-value b))
        (unindex-binding b var value)
        (if (individual-p value)
          (unless (member value values :test #'eq)
            (push value values))
          (clean-up-non-individual-value value b))
        (deallocate-binding b)))

    (dolist (b bound-in)
      ;; individual is the value of these
      (unless (deallocated-binding? b)
        (setq var (binding-variable b)
              value (binding-value b)
              body (binding-body b))
        (unindex-binding b var value)
        (if (individual-p body)
          (unless (member body bodies :test #'eq)
            (push body bodies))
          ;; only possibility here is a category
          (clean-up-non-individual-value body b))
        (deallocate-binding b)))

    (values values bodies)))




(defun clean-up-non-individual-value (obj b)
  ;; the object is typically the value or once in a while
  ;; the body of the binding and it is not an individual
  (typecase obj
    (word )
    (polyword )

    (cfr
     (when *trace-reclaimation*
       (format t "~&Deleting ~A~%" obj))
     (delete/cfr obj))

    (cons ) ;; a list of something or other. Since there's
            ;; no way for the members of this list to point
            ;; back to it, then if they have any link to
            ;; to the individual being zeroed it's via
            ;; a different binding.
     ;(dolist (item obj)
     ; (clean-up-non-individual-value item b)))

    (category );; then it doesn't have a binding field

    (referential-category )  ;;///ignoring them for now
    (mixin-category )
    (subtype-lattice-point)
    
    (integer )

    (number )  ;; like 3.0

    (pathname )

    (document-stream )

    (position )

    (section-marker )

    ;(individual
    ; ;; in case it's a list of individuals
    ; (delink-binding-from-bound-in-list b obj))

    (rule-set )
    ;; 5/96 running Darwin in sublanguage mode it made what looks like
    ;; a collection of two commas (the word objects), which led to this
    ;; case

    (symbol )

    (otherwise
     (break "New type of non-individual value to clean up: ~a~%~a"
	    (type-of obj) obj)))
  b )



;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "status"
;;;   Module:  "model;core:titles:"
;;;  version:  0.1 October 2009

;; initiated 6/16/93 v2.3. Pulled the print routine to help compilation 1/6/94
;; 8/2 put null-check in princ-title-qualifier.  10/3 wrote reclaimer.
;; 2/28/95 wrote string printer. 
;; 0.1 (10/12/09) Switched the realization of title-qualifier to adjective from
;;    name to get the correct brackets. 

(in-package :sparser)


;;;--------
;;; object
;;;--------

(define-category  title-qualifier
  :instantiates self
  :specializes nil
  :binds ((name  :primitive word))
  :index (:permanent :key name)
  :realization (:adjective name))


(defun princ-title-qualifier (obj stream)
  (let ((word (value-of 'name obj)))
    (if word
      (princ-word word stream)
      (write-string "<qualifier>" stream))))

(defun string/title-qualifier (tq)
  (let ((word (value-of 'name tq)))
    (typecase word
      (word (word-pname word))
      (polyword (pw-pname word))
      (otherwise "<qualifier>"))))



;;;------------------
;;; composite object
;;;------------------

(define-category  qualified-title       ;; e.g. "President emeritus"
  :instantiates self
  :specializes title
  :binds ((title . title)
          (qualifier . title-qualifier))
  :index (:special-case :find find/qualified-title
                        :index index/qualified-title
                        :reclaim reclaim/qualified-title))


;;;-------
;;; rules
;;;-------

(def-cfr title (title-qualifier title)
  :form n-bar
  :referent (:instantiate-individual qualified-title
               :with (title right-edge
                      qualifier left-edge)))



;;;--------------------------------
;;; operations on qualified-titles
;;;--------------------------------

(defun index/qualified-title (obj qt-cat bindings)
  (let ((instances (cat-instances qt-cat))
        (title (binding-value
                (find/binding-of-variable 'title bindings qt-cat)))
        (qualifier (binding-value
                    (find/binding-of-variable 'qualifier bindings qt-cat))))
    (if instances
      (let ((title-entry (assoc title instances)))
        (if title-entry
          (rplacd title-entry
                  `( (,qualifier . ,obj)
                     ,@(cdr title-entry) ) )

          (setf (cat-instances qt-cat)
                `( (,title
                    (,qualifier . ,obj))
                   ,@(cat-instances qt-cat)) )))

      (setf (cat-instances qt-cat)
            `( (,title
                (,qualifier . ,obj)) ) ))))

(defun reclaim/qualified-title (i alist qualified-title-category)
  (let ((title (value-of 'title i))
        (qualifier (value-of 'qualifier i)))
    (when alist  
      (let ((entry (assoc title alist)))
        (when entry
          (if (eq (caadr entry) qualifier)
            (then
              (rplacd entry (cddr entry)))
            (let ((last-cell (cdr entry))
                  (next-cell (caddr entry)))
              (break "Stub: instance isn't first -- check variables")
              (loop
                (when (null next-cell)
                  (break "No instance of ~A in the entry~%for ~
                          ~A in the qualified-title index"
                         qualifier title)
                  (return-from reclaim/qualified-title))
                (when (eq (caar next-cell) qualifier)
                  (rplacd last-cell
                          (cdr next-cell)))
                (setq last-cell next-cell
                      next-cell (cdr next-cell))))))))))


(defun find/qualified-title (qt-cat instructions)
  (let ((instances (cat-instances qt-cat))
        (title (value-of-instr 'title instructions))
        (qualifier (value-of-instr 'qualifier instructions)))
    (unless (and title qualifier)
      (break "You can't specify a qualified title without supplying ~
              both~%  a title and title-qualifier"))
    (when instances
      (let ((titles (cdr (assoc title instances))))
        (when titles
          (cdr (assoc qualifier titles)))))))


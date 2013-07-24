;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "position object"
;;;   Module:  "model;sl:pct:"
;;;  version:  February 2011

;; initiated 6/11/93 v2.3
;; (4/23/94) fixed substr.-shape bug in Index/position. 10/3 wrote reclaimer.
;; (3/16/05) Wrote 'title of company' realization for the object.
;; (2/21/11) Added "as" construction.

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  position-at-co
  :instantiates nil
  :specializes nil
  :binds ((title . title)
          (company . company))
  :index (:special-case :find find/position
                        :index index/position
                        :reclaim reclaim/position)
  :realization (:tree-family  of/genitive
                :mapping ((larger . company)
                          (smaller . title)
                          (np . :self)
                          (possessive . company)
                          (complement . company)
                          (base-np . title)
                          (result-type . :self))))


;;;----------------------
;;; cs rules with person
;;;----------------------

(def-csr  named-object person
  :right-context  COMMA-POSITION-AT-CO ;; defined in rspec for person
  :form appositive-prefix
  :referent (:function interpret-name-as-person left-edge))




;;;--------------------------
;;; preposition combinations
;;;--------------------------

(define-marker-category as-position-at-co
  :realization (:tree-family transparent-pp
                :mapping ((pp . as-position-at-co)
                          (preposition . "as")
                          (complement . position-at-co))))

;;;-----------------
;;; special printer
;;;-----------------


;;;------------
;;; operations
;;;------------

(defun index/position (position pos-cat bindings)
  (let ((instances (cat-instances pos-cat))
        (c-binding (find/binding-of-variable 'company bindings pos-cat))
        (t-binding (find/binding-of-variable 'title bindings pos-cat)))

    (unless (and c-binding t-binding)
      (break "Threading bug: rule hasn't supplied bindings for either/~
              both the company~%and title variables.~%"))

    (let ((company (binding-value c-binding))
          (title (binding-value t-binding)))

      (let ((known-companies
             (assoc company instances)))

        (if known-companies
          (unless (assoc title (cdr known-companies))
            ;; if the title is there then this object has been
            ;; seen and indexed before
            (rplacd known-companies
                    `( (,title . ,position)
                       ,@(cdr known-companies)) ))

          (setf (cat-instances pos-cat)
                `( (,company
                    (,title . ,position ))
                   ,@(cat-instances pos-cat) )  ))))))


(defun reclaim/position (i alist position-category)
  
  (let ((company (value-of 'company i))
        (title (value-of 'title i)))
    (when alist  
      ;;/// perhaps these should be breaks? but the bug
      ;; would be elsewhere
      (let ((entry (assoc company alist)))
        (when entry
          (if (eq (caadr entry) title)
            (then
              (rplacd entry (cddr entry)))
            (let ((last-cell (cdr entry))
                  (next-cell (caddr entry)))
              (break "Stub: instance isn't first -- check variables")
              (loop
                (when (null next-cell)
                  (break "No instance of ~A in the entry~%for ~
                          ~A in the position index"
                         title company)
                  (return-from reclaim/position))
                (when (eq (caar next-cell) title)
                  (rplacd last-cell
                          (cdr next-cell)))
                (setq last-cell next-cell
                      next-cell (cdr next-cell))))))))))
          

(defun find/position (pos-category instructions)
  (let ((instances
         (cat-instances pos-category)))
    (when instances
      (let ((company (value-of-instr 'company instructions))
            (title (value-of-instr 'title instructions)))

        (unless (and company title)
          (break "Threading bug: rule hasn't supplied ~
                  binding instructions for~%either/both ~
                  the company and title variables.~%"))

        (let ((companies (cdr (assoc company instances))))
          (when companies
            (cdr (assoc title companies))))))))



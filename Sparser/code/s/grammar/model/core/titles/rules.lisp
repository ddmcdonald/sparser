;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011-2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules"
;;;   Module:  "model;core:titles:"
;;;  version:  0.1 July 2013

;; initited 6/15/93, starting over from scratch. 3/17/05 These are
;; interacting with rules made automatically from the etf schemas,
;; so selectively commenting them out while sorting out the issues.
;; 1/22/11 Addresing the intereaction with the schemas to keep these
;; rules because references have to happen before they're created
;; haphadardly by order of ETF definition. Added case of 'to-title'
;; 0.1 (2/21/11) Reworked as marker categories. 
;;     (7/17/13) added age rule

(in-package :sparser)

;;;--------------------------
;;; preposition combinations
;;;--------------------------
;; Also defined by the etf for 'join', so that creation has to
;; accept this rule or be modified to make that possible

(define-marker-category as-title
  :realization (:tree-family transparent-pp
                :mapping ((pp . as-title)
                          (preposition . "as")
                          (complement . title))))

(define-marker-category in-title
  :realization (:tree-family transparent-pp
                :mapping ((pp . in-title)
                          (preposition . "in")
                          (complement . title))))

(define-marker-category to-title
  :realization (:tree-family transparent-pp
                :mapping ((pp . to-title)
                          (preposition . "to")
                          (complement . title))))


;;;-----
;;; age
;;;-----

;;--- unclear where this would go in a category's rspec
;;    But that category in in the object2 file
(def-cfr title (age title)
  :form np
  :referent (:instantiate-individual age+title
             :with (age left-edge
                    title right-edge)))


;;;-------------------
;;; (usually) country
;;;-------------------

(def-form-rule (possessive title)
  :form np
  :head :right-edge
  ;;//// Dropping the argument ("Iraq's .. minister")
  ;; on the floor for the moment. See syntax/possessive
  ;; for a method to use in this rule.
  ;;/// N.b. doesn't work in *iraqi-girl* because of timing
  ;; where the title has been swallowed before the country
  ;; could see it.  A heuristic might be entitled to lift
  ;; up the left edge on the grounds that it must compose
  ;; so it's only a question of which edge it composes
  ;; with -- a peek would get this rule and look for a
  ;; title.
  :referent (:head right-edge
             :function sort-out-passessive+title left-edge right-edge))

(defun sort-out-passessive+title (possessive title)
  (push-debug `(,possessive ,title)) ;;(break "check args")
  (cond
   ((itypep possessive 'pronoun)
    )
   ((itypep possessive 'country)
    )
   (t (push-debug `(,possessive ,title))
      (error "New type for possessive: ~a~%  ~a"
             (i-type-of possessive) possessive)))
  title)


;;;-----------------------
;;; then, now, (former ?)
;;;-----------------------

(def-cfr title (calculated-time title)
  :form np
  :referent (:head right-edge
             :function massage-deictic-time-in-title left-edge right-edge))

(defun massage-deictic-time-in-title (time title)
  "Provides a place to dereference the time or to provide a 
   more noticable data structure to do it on a second pass."
  ;;(push-debug `(,time ,title))
  (if (itypep title 'qualified-title)
    (then
     (bind-variable 'time time title)
     title)
    (let ((new-title ;; make it one
           (define-or-find-individual 'qualified-title
             :title title  :qualifier time)))
      new-title)))






;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "lists"
;;;   Module:  "model;core:names:"
;;;  version:  May 1995

;; initiated 5/29/95

(in-package :sparser)

;;;--------------
;;; entry points
;;;--------------

(defun pnf/check-if-conjunction-is-a-list (elmt1 elmt2 category)
  ;; Called from Make-collection-of-uncategorized-names.
  ;; The two elements have been identified as the two parts of a name
  ;; combined with "and".  The caller has determined that there is
  ;; a comma just before the position where the PNF scan started.
  ;; We look to the left of that position and see there are other
  ;; edges of this category, and if so, we incorporate them into
  ;; the collection. Otherwise we just make the two-item collection
  ;; that would have been made if the comma weren't there.
  ;;    N.b. this is a terminal point in the calculation of the
  ;; name that started in Examine, so it has to return a name object.

  #| Original motivating text:
(p "John Reichmuth, Roxanne Reeves, Steve Kerns, Wilson Haddow and Angela 
Hey have joined Input's Commercial Programs Research Team.")  |#

  ;;// initial no-op

  (let ((collection
               (define-individual 'collection
                 :items (list elmt1 elmt2)
                 :number 2
                 :type category)))
    collection ))



(defun company/check-if-conjunction-is-a-list (original-items)
  ;; Called from Make-company-name/check-for-parts-being-companies.
  ;; Same idea as above, but different criteria and issues

  (make-company-name-as-simple-sequence original-items))


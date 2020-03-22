;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "internet"
;;;   Module:  "model;core:mid-level:"
;;;  version:  March 2020

;; Initiated 3/21/20

(in-package :sparser)

;;;-------------------------------------
;;; overly simplistic treatment of URLs
;;;-------------------------------------

(define-category url
  :specializes index
  :binds ((string (:primitive word)))
  :documentation "The UR ፡string is just stored as at polyword
 and unanalyzed. Should use regex for delimiting components
 when we're serious about these")

#| 
Long-winded way to get around the problem of '//' 
 handling when there's a URL in the text

 To really do these there does have to be a mode in NS delimiting
or a follow-on that can cope with the the other punctuation -- periods,
colons, etc -- maybe it should run early?

To really do these there does have to be a mode in NS delimiting
or a follow-on that can cope with the the other punctuation -- periods,
colons, etc -- maybe it should run early?
e0                  "https://github"
                    period
e66   BIO-ENTITY    9 "com/rrwick/Porechop" 14
|#

(defparameter *url-prefixes* (list (resolve/make "http")
                                   (resolve/make "https")))

(defun url-prefix (start-pos)
  "Called from ns-pattern-dispatch when there's a slash in the pattern
   so that we should go to this handler rather than our standard set"
  (memq (pos-terminal start-pos) *url-prefixes*))

(defun package-url (start-pos end-pos)
  "We're called as an alternative within the no-space protocol
   so we need to span this region with an edge, and should make a full,
   if minimal treatement of the url per se."
  (let* ((string (actual-characters-of-word start-pos end-pos))
         (known? (resolve string))
         (pw (resolve/make string))
         (i (define-or-find-individual 'url :string pw)))
    (unless known?
      (let ((rule (define-cfr category::url `(,pw)
                    :form category::proper-name
                    :referent i)))
        ;;(break "Check rule lookup: ~a" rule)
        rule))
    (let ((rule (lookup/cfr category::url `(,pw))))
      (let ((edge (make-edge-over-long-span
                   start-pos end-pos
                   category::url
                   :rule rule
                   :form (category-named 'proper-name)
                   :referent i)))
        edge))))

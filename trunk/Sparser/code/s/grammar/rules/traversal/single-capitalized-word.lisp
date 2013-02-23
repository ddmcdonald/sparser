;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2011-2013 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "single-capitalized-word"
;;;   Module:  "grammar;rules:traversal:"
;;;  Version:  February 2013

;; Broken out from parenthesis so it could be gated by *proper-name*.
;; 8/28/11 Added more cases. 2/11/13 Removed duplicated code and reviewing
;; the setup for generalizations. Completely rewriting the 'elevator'.

(in-package :sparser)

;;;--------------
;;; hook routine
;;;--------------

;;--- category to use on the edge when we have one
(def-category  single-capitalized-word-in-parentheses 
  :lattice-position :non-terminal)


(defun elevate-fully-spanning-category/parentheses (edge
                                                    pos-before-open pos-after-close
                                                    pos-after-open pos-before-close 
                                                    layout )
  (declare (ignore pos-after-open pos-before-close))
  (push-debug `(,edge))

  (if (eq layout :single-span)
    (make-edge-over-long-span
     pos-before-open
     pos-after-close
     (category-named 'single-capitalized-word-in-parentheses)
     :form (edge-form edge) ;; ?????
     :referent (edge-referent edge))

    (make-edge-over-long-span
     pos-before-open
     pos-after-close
     (category-named 'parentheses)
     :form (edge-form edge) 
     :referent (edge-referent edge))))


;; older one
(define-interior-action  category::capitalized-word  :parentheses
  'elevate-fully-spanning-category/parentheses )

;; new one
(define-interior-action category::name-word :parentheses
  'elevate-fully-spanning-category/parentheses )





;;--- Routine to rework edge over ordinary word that in this context
;;    should be taken as a what we're targeting

;;/// Move somewhere that this can be found
(defun subvert-edge (edge category &key form referent)
  ;; The caller has a good reason to flush the content of this edge
  ;; and replace it with new content, and is in a context where the
  ;; usual move of respanning would lead to more complications
  ;; than committing this ugly hack.
  (setf (edge-category edge) category)
  (when form
    (setf (edge-form edge) form))
  (when referent
    (setf (edge-referent edge) referent))
  edge)

(defun convert-ordinary-word-edge-to-proper-name (edge)
  ;; See note in do-paired-punctuation-interior
  ;; The word spanned by this edge is either capitalized or in all-caps.
  ;; We find or make the corresponding name and supply that as
  ;; the new version of the edge
  (let ((word (edge-left-daughter edge)))
    (unless word
      ;; assumption that it's a single word is wrong
      (push-debug `(,edge))
      (error "Assumption violated in conversion to proper name"))
    ;; c.f. reify-spelled-name (words) which is similar in spirit
    (let* ((word-to-use
            (find-or-make/capitalized-word-to-fit-position 
             word (pos-edge-starts-at edge)))
           (nw (define-name-word word-to-use))) ;;//// revise to return the rule
                             ;; and pass that through as well
      ;; That makes the object and a rule that recognizes it
      ;; Now we just imagine that was what had happened here,
      ;; which will be the case next time around.
      ;; N.b. this runs for its side-effects on the edge
      (subvert-edge edge category::name-word
                    :form category::proper-noun
                    :referent nw))))


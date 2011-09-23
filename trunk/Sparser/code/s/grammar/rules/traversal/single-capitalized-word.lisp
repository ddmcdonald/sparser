;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2011 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "parentheses"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2009

;; Broken out from parenthesis so it could be gated by *proper-name*.
;; 8/28/11 Added more cases.

(in-package :sparser)

;;;--------------
;;; hook routine
;;;--------------

(define-interior-action  category::capitalized-word  :parentheses
  'elevate-fully-spanning-category/parentheses )


;;--- additional categories
(def-category  single-capitalized-word-in-parentheses 
  :lattice-position :non-terminal)


(defun elevate-fully-spanning-category/parentheses (first-edge
                                                    pos-before-open pos-after-close
                                                    pos-after-open pos-before-close 
                                                    layout )
  (declare (ignore pos-before-close))

  (ecase layout
    (:single-span
     (let ((label (edge-category first-edge))
           element-of-spanning-label  referent )

       (multiple-value-setq (element-of-spanning-label referent)
         (case (cat-symbol label)
           (category::capitalized-word
            (if (eq (pos-capitalization pos-after-open)
                    :all-caps)
              (values 'capitalized-word (edge-referent first-edge))
              (values 'parentheses nil)))
           (otherwise  (values 'parentheses nil))))

       (make-edge-over-long-span
        pos-before-open
        pos-after-close
        (case element-of-spanning-label
          (capitalized-word  (category-named 'single-capitalized-word-in-parentheses))
          (otherwise (category-named 'parentheses)))
        :referent referent
        :rule  :default-edge-over-paired-punctuation)))

    (:contiguous-edges )
    ((or :null-span
         :no-edges
         :has-unknown-words))))


;;;--------------
;;; hook routine
;;;--------------

(define-interior-action  category::capitalized-word  :parentheses
  'elevate-fully-spanning-category/parentheses )


;;--- additional categories
(def-category  single-capitalized-word-in-parentheses 
  :lattice-position :non-terminal)


(defun elevate-fully-spanning-category/parentheses (first-edge
                                                    pos-before-open pos-after-close
                                                    pos-after-open pos-before-close 
                                                    layout )
  (declare (ignore pos-before-close))

  (ecase layout
    (:single-span
     (let ((label (edge-category first-edge))
           element-of-spanning-label  referent )

       (multiple-value-setq (element-of-spanning-label referent)
         (case (cat-symbol label)
           (category::capitalized-word
            (if (eq (pos-capitalization pos-after-open)
                    :all-caps)
              (values 'capitalized-word (edge-referent first-edge))
              (values 'parentheses nil)))
           (otherwise  (values 'parentheses nil))))

       (make-edge-over-long-span
        pos-before-open
        pos-after-close
        (case element-of-spanning-label
          (capitalized-word  (category-named 'single-capitalized-word-in-parentheses))
          (otherwise (category-named 'parentheses)))
        :referent referent
        :rule  :default-edge-over-paired-punctuation)))

    (:contiguous-edges )
    ((or :null-span
         :no-edges
         :has-unknown-words))))

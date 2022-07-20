;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995-1999,2011,2016-2022  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "compass points"
;;;   Module:  "model;core:places:"
;;;  version:  July 2022

;; initiated in 1/9/95, 2/24 added string printer. 
;; 0.1 (11/27/99) reworked them using realizations and implicit indexing. 
;;      Note that the adjective forms are still old style and won't work.
;; 0.2 (9/5/07) Making it over in the same style as directions.
;; 0.3 (8/11/11) Adding the "of <location>" construction. 9/26 bunch
;;     of tweaking on that. Added abbreviations 10/3/11. Stashing the
;;     rules 1/4/16. 

(in-package :sparser)

;;--- object

(define-category  compass-point
  :instantiates  self
  :specializes   direction
  :binds ((name :primitive word)))

;;--- def form

;; These words compose with "the" and take complements that make the
;; direction more precise ("of the corn field").

(defun define-compass-point (string abbrev &optional ward)
  "Make a modern word-denotes-category definition, which embellishments
   for the abbreviation and the '-ern', '-ward' options. Previously these
   were all individuals rather than categories."
  (declare (special *common-noun-brackets*))
  (multiple-value-bind (category i cfr)
      (define-function-term string 'common-noun
        :super-category 'compass-point
        :rule-label 'direction)

    (let* ((abbrev-word (unless ward
                          (define-function-word abbrev 
                              :form category::common-noun
                              :brackets *common-noun-brackets*)))
           (abbrev-rule (unless ward
                          (define-cfr category::direction `(,abbrev-word)
                            :form category::common-noun
                            :referent i)))
           (adj (unless ward
                  (let ((word (resolve/make (string-append string "ern"))))
                    (assign-brackets-to-adjective word)
                    word)))
           (adj-rule
            (when adj
              (define-cfr category::direction `(,adj)
                :form category::adjective
                :referent i))))

      (when adj-rule (add-rule adj-rule i))
      (when abbrev-rule (add-rule abbrev-rule i))
      i)))

;;--- printer

(defun string/Compass-point (cp)
  (let ((name (value-of 'name cp)))
    (if name
      (word-pname name)
      "[compass point w/o name]" )))

;;--- interpretation

(defun make-direction-relative-location (compass-point reference-point)
  "Called from interpret-pp-adjunct-to-np for <compass-point> of <...>.
   
"  (format t "make direction: ~a ~a" compass-point reference-point)
   compass-point)


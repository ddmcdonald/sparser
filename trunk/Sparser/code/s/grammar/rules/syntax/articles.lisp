;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-2005  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "articles"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  April 2009

;; initiated 10/25/92 w/ mixin.  Given some content 5/17/95.  Added np cases
;; 4/1/05. Added common-noun 4/12/09

(in-package :sparser)

;;;----------
;;; category
;;;----------

(define-mixin-category  indefinite)
  ;; The idea is to be able to search off of this in the dh
  ;; to convert over any that are unresolved at the end.
  ;; //never exploited yet


;;;------------
;;; form rules
;;;------------

;;--- a/an

(def-form-rule ("a" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("an" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("a" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("an" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("a" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("an" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("a" np)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("an" np)
  :form np
  :referent (:daughter right-edge))


;;--- the

(def-form-rule ("the" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("the" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("the" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("the" np)
  :form np
  :referent (:daughter right-edge))


;;--- this

(def-form-rule ("this" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("this" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("this" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("this" np)
  :form np
  :referent (:daughter right-edge))


;;--- that

(def-form-rule ("that" common-noun)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("that" np-head)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("that" n-bar)
  :form np
  :referent (:daughter right-edge))

(def-form-rule ("that" np)
  :form np
  :referent (:daughter right-edge))

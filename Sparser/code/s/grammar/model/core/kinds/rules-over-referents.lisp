;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2018 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "rules-over-referents"
;;;   Module:  "model/core/kinds/"
;;;  version:  September 2018

;; initiated 3/18/13. Elaborated through 7/24/13, gradually moving out rules.

(in-package :sparser)

;;;------------------------------------------
;;; helper fns for categories in upper model
;;;------------------------------------------

(defun compatible-with-specified-part-type (object partonym)
  "Is the type of the object compatible with the type specified
   on the partonym?"
  ;; called from (interpret-pp-adjunct-to-np pobj-referent np)
  ;; when np is partonymic and we're working with an of-pp
  (let* ((variable (find-variable-for-category 'part-type partonym))
         (type (var-value-restriction variable)))
    (when (equal type '(:primitive category))
      ;; bound on the category? ///n.b. only valid for one level up
      (setq type (value-of 'part-type (itype-of partonym))))
    (if (itypep object 'collection)
      (let ((object-type (value-of 'type object)))
        (itypep object-type type))
      (itypep object type))))


(defun variable-for-attribute (av)
  "Answers the question of what variable to use
   for binding a particular attribute-value (e.g. 'red') to the
   individual it's an attribute of. "
  (declare (special category::collection category::attribute-value
                    category::qualified-attribute category::top))
  (cond
    ((itypep av category::collection)
     (let ((type (value-of 'type av)))
      (when type
        (let ((attribute (value-of 'attribute type)))
          (when attribute
            (value-of 'var attribute))))))
    
    ((itypep av category::qualified-attribute) ;; "more x"
     ;; n.b. these are also attribute-values, but without attributes
     (find-variable-in-category 'modifier category::top))
    
    ((itypep av category::attribute-value)
     (let ((attribute (value-of 'attribute (itype-of av))))
       (when attribute
         (value-of 'var attribute))))
    
    ((itypep av category::attribute) ;; e.g. color
     (let ((type (itype-of av)))
       (when type
         (value-of 'var type))))
    
    (t
     nil)))




;;;----------------------------------------------------------------
;;; rules over referents used in Grok and Strider. Need reanalysis
;;;----------------------------------------------------------------

;;--- for event

#| The category for event has these variables:
  time, location, purpose, modifier, participant
|#

;;//// Add schema -- from vp adjuncts perhaps

(def-cfr event (event time)
  :form s
  :referent (:head left-edge
             :bind (time right-edge)))

(def-cfr event (event location)
  :form s
  :referent (:head left-edge
             :bind (location right-edge)))


;;--- subject relative clauses ( rules/syntax/subject-relatives.lisp )

;;--- for dates
;;should we add these patterns to date-pattern in tree-families?

;;this cfr is for phrases like June 26 2013, added 6/6/13
;;Chomsky adjunction
(def-cfr date (date year)
  :form np
  :referent(:head left-edge
            :bind (year right-edge)))

;;this cfr is for phrases like Monday June 26 2013, added 6/6/13
;;Chomsky adjunction
(def-cfr date (time date)
  :form np
  :referent(:head right-edge
            :bind (time left-edge)))





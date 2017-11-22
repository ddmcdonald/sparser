;;; -*- Mode: Lisp; package: MUMBLE; Syntax: Common-lisp; -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved

;; /Mumble/derivation-trees/printers.lisp
;; June 2017

;; For pretty printers and similar code that needs the full set of Mumble object
;; types to already be defined so they can be referenced.

(in-package :mumble)

;;;--------------------------------
;;; derivation tree pretty-printer
;;;--------------------------------

(defgeneric pp-dtn (item)
  (:documentation "Given a dtn, produce an s-expression that
   displays its parts.")
  (:method ((dtn derivation-tree-node))
    `(:dtn ;;derivation-tree-node
      ,@(when (referent dtn)
          `((:referent ,(pp-dtn (referent dtn)))))
      (:resource ,(pp-dtn (resource dtn)))
      ,@(when (features dtn)
          `((:features ,(pp-dtn (features dtn)))))
       ,@(loop for an in (adjuncts dtn)
               collect (pp-dtn an))
       #+ignore
       (when (adjuncts dtn)
         `((:adjuncts
            ,(loop for an in (adjuncts dtn)
                   collect (pp-dtn an)))))
       ,@(loop for cn in (complements dtn)
               collect (pp-dtn cn))
       #+ignore
       (when (complements dtn)
          `((:complements
             ,(loop for cn in (complements dtn)
                    collect (pp-dtn cn)))))))

  ;; method for sp::individual is in
  ;; Sparser/.../interface/mumble/interface.lisp
  
  (:method ((list cons))
    (cond
      ((accessory-type-p (car list))
       (let ((ac-type (car list)))
         (if (cdr list)
           ;; (#<accessory-type tense-modal> . #<word should>)
           (let ((value (cdr list)))
             `(,(mname ac-type) ,(pp-dtn value)))
           (mname ac-type))))
      (t
       `(,@(loop for item in list
              collect (pp-dtn item))))))

  (:method ((s string)) s)
  (:method ((s symbol)) (string-downcase (symbol-name s))) ;; e.g.test referents
  (:method ((w word))
    (pname w))
  (:method ((p pronoun))
    (mname p))
  (:method ((tr ttrace))
    ":trace")
  (:method ((at accessory-type))
    (mname at))
  (:method ((av accessory-value))
    (mname av))
  (:method ((ap attachment-point))
    (mname ap))
  (:method ((p parameter))
    (mname p))
  
  (:method ((cn complement-node))
    (let ((param (phrase-parameter cn))
          (value (value cn)))
      ;;`(,(pp-dtn param) = ,(pp-dtn value))
      `(:complement ,(pp-dtn param) ,(pp-dtn value))))
  (:method ((an adjunction-node))
    (let ((ap (ap an))
          (value (value an)))
      ;;`(,(pp-dtn ap) ,(pp-dtn value))
      `(:adjunct ,(pp-dtn ap) ,(pp-dtn value))
      ))
  
  (:method ((lp saturated-lexicalized-phrase))
    (let ((phrase (phrase lp))
          (bound-args (bound lp)))
      `(:slp
        ,(mname phrase)
        ,(loop for cn in bound-args
               as parameter = (phrase-parameter cn)
               as value = (value cn)
               return `(,(mname parameter) ,(pp-dtn value))))))
  (:method ((p phrase))
    (mname p)))


;;;-----------------------------------------
;;; print methods for derivation-tree types
;;;-----------------------------------------

(defun phrase-name-for-printing (phrase)
  (or (when (typep phrase 'has-name) (mname phrase))
      (name phrase)))

(defgeneric pprint-value (value)
  (:documentation "Shared printer for simple objects in value fields.
     Returns a string.")
  (:method ((w word))
    (format nil "~s" (pname w)))
  (:method ((dtn base-dt-node))
    (format nil "<dtn for ~a>" (or (referent dtn) "null referent"))))


(defmethod print-object ((dtn base-dt-node) stream)
  (print-unreadable-object (dtn stream)
    (format stream "dtn for ~a" (or (referent dtn) "null referent"))))

(defmethod print-object ((slp saturated-lexicalized-phrase) stream)
  (print-unreadable-object (slp stream)
    (format stream "sat-lp ~a" (phrase-name-for-printing (phrase slp)))
    (print-lp-bound-values slp stream)))

(defmethod print-object ((lp partially-saturated-lexicalized-phrase) stream)
  (print-unreadable-object (lp stream)
    (format stream "ps-lp: ~a" (name (phrase lp)))
    (format stream " ~a" (mapcar #'name (free lp)))
    (print-lp-bound-values lp stream)))

(defmethod print-object ((lp lexicalized-phrase) stream)
  (print-unreadable-object (lp stream)
    (format stream "lp: ~a" (name (phrase lp)))))

(defmethod print-object ((la lexicalized-attachment) stream)
  (print-unreadable-object (la stream)
    (format stream "la: ~a ~a"
            (name (point la)) (pprint-value (value la)))))
            
(defgeneric print-lp-bound-values (lp stream)
  (:documentation "Shared subroutine of several object printers")
  (:method ((lp saturated-lexicalized-phrase) stream)
    (loop for pvp in (bound lp)
       do (format stream " ~a=~a"
                  (name (phrase-parameter pvp))
                  (pprint-value (value pvp))))))

(defmethod print-object ((pvp parameter-value-pair) stream)
  (print-unreadable-object (pvp stream)
    (format stream "pvp: ~a = ~a" 
            (name (phrase-parameter pvp))
            (pprint-value (value pvp)))))

(defmethod print-object ((cn complement-node) stream)
  (print-unreadable-object (cn stream)
    (let ((parameter (phrase-parameter cn))
          (value (value cn)))
      (format stream "complement ~a = ~a"
              (if parameter (name parameter) "null parameter")
              value))))

(defmethod print-object ((an adjunction-node) stream)
  (print-unreadable-object (an stream)
    (let ((ap (ap an)))
      (format stream "adjunct ~a = ~a"
              (if ap (name ap) "null AP") (value an)))))


(defmethod print-object ((pvp parameter-variable-pair) stream)
  (print-unreadable-object (pvp stream)
    (let ((param (corresponding-parameter pvp))
          (var (corresponding-variable pvp)))
      (format stream "~a : ~a" param var))))

(defmethod print-object ((vmp variable-mdata-pair) stream)
  (print-unreadable-object (vmp stream)
    (let* ((vars (mpair-vars vmp))
           (mdata (mpair-mdata vmp))
           (lp (linked-phrase mdata))
           (phrase (etypecase lp
                     (phrase lp)
                     (lexicalized-phrase (phrase lp)))))
      (format stream "pair ~a, ~a" (name phrase) vars))))



;;------------ copy
;;/// Why isn't there a copy-instance function? -- can't even find one is smop
;;/// much cleaner as an operation directly over the slots
(defgeneric copy-instance (instance-of-class)
  (:method ((rdata mumble-rdata))
    (make-instance
     'mumble-rdata
     :class (linked-category rdata)
     :lp (linked-phrase rdata)
     :map (parameter-variable-map rdata)
     :vars (variables-consumed rdata)
     :head (head-word rdata)))
  
  (:method ((rdata multi-subcat-mdata))
    (let ((copied-pairs
           (loop for pair in (mdata-pairs rdata)
              as var-list = (mpair-vars pair)
              as mdata = (mpair-mdata pair)
              collect (make-instance 'variable-mdata-pair
                                     :vars (copy-list var-list)
                                     :mdata (copy-instance mdata)))))
      (make-instance 'multi-subcat-mdata
                     :mpairs copied-pairs))))


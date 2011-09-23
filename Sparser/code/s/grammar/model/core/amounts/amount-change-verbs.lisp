;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995-2005 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "amount-change verbs"
;;;   module:  "model;core:amounts:"
;;;  Version:  December 1995

;; initiated 12/22/95. Finished 12/26
;; (3/31/05) Added noun variants in ad-hoc but workable way.

(in-package :sparser)

;;;-------------------------
;;; the verbs by themselves
;;;-------------------------

(define-category change-in-amount-verb
  :instantiates self
  :binds ((name  :primitive (:or word polyword))
          (direction . direction))
  :index (:permanent :key name)
  :realization (:main-verb name))

#| In a better world (one with vast amounts of time) these would be
   neatly linked and fall out from a more complex model of words
   and how to reference them in rspecs -- but this distinction lets
   us have a shart distinction between verb and nominal forms that
   will let form rules work cleanly.   --Note that the autodef for
   the noun form isn't done (should wait on the cleaner word treatment. |#

(define-category change-in-amount-noun
  :instantiates self
  :binds ((name  :primitive (:or word polyword))
          (direction . direction))
  :index (:permanent :key name)
  :realization (:common-noun name))


;;;---------
;;; autodef
;;;---------

(define-autodef-data 'change-in-amount-verb
  :module *amounts*
  :display-string "value-change verbs"
  :not-instantiable t
  :description "Verbs that indicate that the value of some quantity has changed. Defined into two kinds according to whether the change is up or down.  Note that these verbs tend to have nominal forms with many of the same set of arguments."
  :examples "\"rise\", \"increase\", \"plunge\"" )


;;--- Burn the direction in while making the definition by having them
;;    differentiated during the autodef.  The only purpose for these
;;    two categories is to do that. They don't have either a semantic
;;    or syntactic-patterning role to play

(define-category change-in-amount-verb/up
  :specializes change-in-amount-verb
  :instantiates change-in-amount-verb )

(define-category change-in-amount-verb/down
  :specializes change-in-amount-verb
  :instantiates change-in-amount-verb )



(define-autodef-data 'change-in-amount-verb/up
  :module *amounts*
  :display-string "upwards"
  :dossier "dossiers;change-in-amount verbs"
  :form 'define-change-in-amount-verb/up     ;;;/autodef
  ;;; :write-fn 'save-change-in-amount-verb/up
  :description "A verb that indicates an increase in some amount"
  :examples "\"rise\", \"increase\"")

(define-autodef-data 'change-in-amount-verb/down
  :module *amounts*
  :display-string "downwards"
  :dossier "dossiers;change-in-amount verbs"
  :form 'define-change-in-amount-verb/down    ;;;/autodef
  ;;; :write-fn 'save-change-in-amount-verb/down
  :description "A verb that indicates an decrease in some amount"
  :examples "\fall\", \"plunge\"" )

#|
(define-autodef-data '
  :module *amounts*
  :display-string ""
  :dossier ""
  :form 'xx
  :description ""
  :examples "" )  |#


;;--- The forms called from the dossier files
;;    (the ones used in the write routine)

(defun define-change-in-amount-verb/up (string)
  (let ((direction (find-individual 'standalone-direction :name "up")))
    (unless direction
      (break "Bug in the load order. Directions aren't defined yet"))
    (let ((individual-for-the-verb
           (define-individual 'change-in-amount-verb
             :name string
             :direction direction)))

      individual-for-the-verb )))
          

(defun define-change-in-amount-verb/down (string)
  (let ((direction (find-individual 'standalone-direction :name "down")))
    (unless direction
      (break "Bug in the load order. Directions aren't defined yet"))
    (let ((individual-for-the-verb
           (define-individual 'change-in-amount-verb
             :name string
             :direction direction)))

      individual-for-the-verb )))

(defun define-change-in-amount-noun/up (string)
  (let ((direction (find-individual 'standalone-direction :name "up")))
    (unless direction
      (break "Bug in the load order. Directions aren't defined yet"))
    (let ((individual-for-the-verb
           (define-individual 'change-in-amount-noun
             :name string
             :direction direction)))

      individual-for-the-verb )))
          

(defun define-change-in-amount-noun/down (string)
  (let ((direction (find-individual 'standalone-direction :name "down")))
    (unless direction
      (break "Bug in the load order. Directions aren't defined yet"))
    (let ((individual-for-the-verb
           (define-individual 'change-in-amount-noun
             :name string
             :direction direction)))

      individual-for-the-verb )))




;;--- The forms used by the autodef save routine

(defun save-change-in-amount-verb/up (stream)
  ;; !! irregular morph.
  (format stream
          "~&~%;; ~A~
           ~%(define-change-in-amount-verb/up ~S)~
           ~%" (date-as-formatted-string) *slvd/word-string*))


(defun save-change-in-amount-verb/down (stream)
  (format stream
          "~&~%;; ~A~
           ~%(define-change-in-amount-verb/down ~S)~
           ~%" (date-as-formatted-string) *slvd/word-string*))



;;--- The forms used within the autodef to setup the widget-state
;;    that gets the morphology of the verb checked, etc.

(defun define-change-in-amount-verb/up/autodef (string)
  (let ((direction (find-individual 'direction :name "up")))
    (unless direction
      (break "Bug in the load order. Directions aren't defined yet"))
    (let ((individual-for-the-verb
           (define-individual 'change-in-amount-verb
             :name string
             :direction direction)))

      (setq *predefined-partial-rdt-mapping*
            `((vp . ,category::change-in-amount)
              (vg . ,category::change-in-amount-verb)))

      (setq *slvd/referent* individual-for-the-verb
            *slvd/reference-category* category::change-in-amount
            *slvd/labeling-category* category::change-in-amount-verb
            *slvd/tree-family-restriction* (list category::vp))

      (launch-the-slvd-window)
      (initialize-slvd-state
       string                               ;; word string
       "amount change"                      ;; category string
       "for an amount that is increasing")  ;; purpose sting
                             
      :self-contained )))


(defun define-change-in-amount-verb/down/autodef (string)
  (let ((direction (find-individual 'direction :name "down")))
    (unless direction
      (break "Bug in the load order. Directions aren't defined yet"))
    (let ((individual-for-the-verb
           (define-individual 'change-in-amount-verb
             :name string
             :direction direction)))

      (setq *predefined-partial-rdt-mapping*
            `((vp . ,category::change-in-amount)
              (vg . ,category::change-in-amount-verb)))

      (setq *slvd/referent* individual-for-the-verb
            *slvd/reference-category* category::change-in-amount
            *slvd/labeling-category* category::change-in-amount-verb
            *slvd/tree-family-restriction* (list category::vp))

      (launch-the-slvd-window)
      (initialize-slvd-state
       string                               ;; word string
       "amount change"                      ;; category string
       "for an amount that is decreasing")  ;; purpose sting
                             
      :self-contained )))

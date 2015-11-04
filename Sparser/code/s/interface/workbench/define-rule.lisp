;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "define rule"
;;;   module:  "interface;workbench:"
;;;  Version:  March 1995

;; initiated 1/17/95, extended ...2/24.
;; 1.0 (2/27) reworked the visual layout extensively to accomodate verbs
;;      cont. ...3/6

(in-package :sparser)




;;;----------------------
;;; item on Sparser menu
;;;----------------------

(defparameter *define-rule-menu-item*
  (make-instance 'menu-item
    :menu-item-title "define rule"
    :menu-item-action 'launch-the-rule-defining-tableau
    :disabled  *rule-defining-window*
    :update-function 'check-if-rdt-is-up ))


(defun check-if-rdt-is-up (rdt-menu-item)
  (if *rule-defining-window*
    (ccl:menu-item-disable rdt-menu-item)
    (ccl:menu-item-enable rdt-menu-item)))


(defun launch-the-rule-defining-tableau ()
  ;; action for the 'define rule' button on the Sparser menu
  (setq *rule-defining-window*
        (launch-schema-selection-window)))












;;;---------
;;; actions
;;;---------

(defun rdt/Readout-rule-tableau (evaluate-button)
  (ccl:dialog-item-disable evaluate-button)
  (readout-tableau/write-cfr/save-result))


(defun rdt/Choose-a-different-schema (different-schema-button)
  (declare (ignore different-schema-button))
  (ccl:window-close *rdt/rule-populating-window*)
  (ccl:set-window-layer *rdt/schema-selection-window* 0)
  (initialize-schema-selection-state))


(defun rdt/Abort-rule-population-process (abort-button)
  (declare (ignore abort-button))
  (ccl:window-close *rdt/rule-populating-window*)
  (when *rdt/schema-selection-window*
    (ccl:window-close *rdt/schema-selection-window*))
  (when *slvd/referent*
    (slvd/canceled-out-of-rule-population)))

   







;;;----------------------------------------
;;; get the reference category established
;;;----------------------------------------

(defun rdt/get-reference-category (reference-category-button)
  (ccl:dialog-item-disable reference-category-button)
  (if *slvd/reference-category*
    (display-in-inspector *slvd/reference-category*)
    (let ((category (get-category-from-user)))
      (when category ;; this could have been aborted
        (setq *rdt/reference-category* category)
        (display-in-inspector category))))
  (ccl:dialog-item-enable reference-category-button))


(defun get-category-from-user ( &optional retry/last-string )
  (let ((category-string
         (catch-cancel 
           (if retry/last-string
             (get-string-from-user
              "This is not the name of a category, please change it"
              :size #@(335 70)
              :position #@(100 100)
              :initial-string retry/last-string)
             (get-string-from-user "Enter the name of a category"
                                   :size #@(335 60)
                                   :position #@(100 100))))))

    (if (eq category-string :cancel)
      ;; this is what you get when the 'catch-cancel' intercepts
      ;; the 'cancel' action from the dialog
      nil
      (let ((category (category-named
                       (intern category-string
                               *category-package*))))
        (if category
          category
          (get-category-from-user category-string))))))





;;;-------------
;;; final phase
;;;-------------

(defun readout-tableau/write-cfr/save-result ()
  ;; Called by rdt/Readout-rule-tableau when the 'evaluate'
  ;; button is pushed.
  (let ((mapping (rdt/construct-mapping-from-tableau)))
    (break)
    (write-cfr-from-rdt-tableau-values mapping)
    (rdt/save-new-rule mapping)))


(defun rdt/Construct-mapping-from-tableau ()
  ;; Called from Readout-tableau/write-cfr/save-result
  ;; The mapping is an alist of (schema-symbol . label)
  ;; Up to this point, the global *rdt/mapping* has gotten a record
  ;; of the names of the parameters that are used in the choosen
  ;; rule schema and have now gotten concrete values in the rule
  ;; tableau.  First we look up those values and substitute for
  ;; them in the global, and then we extend the mapping with the
  ;; populated syntactic information.

  (let ( rebuilt-mapping  parameter value )

    (dolist (pair *rdt/mapping*)
      (setq parameter (car pair))
      (setq value
            (ecase (cdr pair)
              (head-line-parameter *rdt/head-line-category*)
              (comp-parameter *rdt/comp-category*)
              (result-parameter *rdt/result-category*)))
      (when value
        ;; many referent patterns don't use every available field
        (push `(,parameter . ,value) rebuilt-mapping)))

    (let* ((rule (second *rdt/selected-schema-case*))
           (lhs (first rule))
           (rhs-left (first (second rule)))
           (rhs-right (second (second rule))))

      
      (ecase (cadr (member :length-of-rhs *rdt/case-descriptors*
                           :test #'eq))
        (1
         (setq rebuilt-mapping
               (cons `(,rhs-left . ,*rdt/rhs-left-label*)
                     rebuilt-mapping )))
        (2
         (setq rebuilt-mapping
               (append
                `((,rhs-left . ,*rdt/rhs-left-label*)
                  (,rhs-right . ,*rdt/rhs-right-label*))
                rebuilt-mapping ))))
      
      (setq *rdt/mapping*
            (cons `(,lhs . ,*rdt/lhs-label*)
                  rebuilt-mapping )))))




;;--- CFR

(defun write-cfr-from-rdt-tableau-values (mapping)
  ;; Called from Readout-tableau/write-cfr/save-result. When it 
  ;; returns there should be an executable form of the definition
  ;; in place.
  (break)
  (unless *selected-autodef*
    (break "Bad threading. There //////////////////////////////////")
    ))

(defun write-cfr-from-rdt-tableau-values/vanila (mapping)
  ;; handles the cases that don't require special forms,
  ;; just the definition of a single case on the basis of
  ;; the current settings of the globals populated from
  ;; the rule definition tableau. 
  (let ((lhs *rdt/lhs-label*)
        (left-label *rdt/rhs-left-label*)
        (right-label *rdt/rhs-right-label*)
        (form (rtd/compute-form-from-selected-schema mapping))
        (referent (rtd/construct-referent-from-tableau mapping))
        (relation (rtd/lookup-relation-from-selected-schema)))

    (let ((cfr
           (if (or (when (referential-category-p left-label)
                     (member :form-category (unit-plist left-label)))
                   (when (referential-category-p right-label)
                     (member :form-category (unit-plist right-label))))
             (def-form-rule/resolved (list left-label right-label)
               form referent lhs)
             (define-cfr lhs (list left-label right-label)
               :form form :referent referent))))

      (setf (cfr-plist cfr)
          `(:relation ,relation ,@(cfr-plist cfr)))

      cfr )))


(defun rtd/Lookup-relation-from-selected-schema ()
  (first *rdt/selected-schema-case*))

(defun rtd/compute-form-from-selected-schema (mapping)
  (let* ((lhs-schema-label
          (first (second *rdt/selected-schema-case*)))
         (form (category-named
                (strip-specializing-slash lhs-schema-label
                                          mapping))))
    (unless form
      (break "Why isn't a form label constructable from the schema?"))
    form ))

(defun rtd/Construct-referent-from-tableau (mapping)
  (let ((ref-schema
         (massage-referent-schema
          (cddr (second *rdt/selected-schema-case*)))))
    (let* (
         #|(call-form
            `(construct-referent
              ',mapping
              nil  ;; 'category-of-locals'
              ,@(quote-non-keyword-items-in-list
                 ref-schema)))
           (ref-exp (eval call-form)) |#

           (ref-exp
            (apply #'construct-referent
                   mapping
                   nil  ;; 'category-of-locals'
                   ref-schema))
           )

      ;(break "check ref-exp")
      ref-exp)))


(defun quote-non-keyword-items-in-list (list)
  (let ( new-list )
    (dolist (item list)
      (if (keywordp item)
        (push item new-list)
        (push `',item new-list)))
    (nreverse new-list)))



;;;--------------------------------
;;; Writing the rule out to a file
;;;--------------------------------

(defun rdt/Save-new-rule ( &key (mapping *rdt/mapping*)
                                (etf *rdt/selected-schema*) )
  ;; Called from Readout-tableau/write-cfr/save-result

  (with-open-file (outfile *dossier-file-for-new-rules*
                           :direction :output
                           :if-exists :append
                           :if-does-not-exist :create)
    
    (if *slvd/save-routine*
      ;; This global comes from Autodef routines. It is specified
      ;; on the autodef datum and set by Autodefine-word
      (funcall *slvd/save-routine* etf mapping)
      (write-realization-data outfile etf mapping))))



(defun write-realization-data (stream
                               &optional (etf *rdt/selected-schema*)
                                         (mapping *rdt/mapping*))
  (format stream
          "~&~
           ~%(define-realization ~A~
           ~%~9,3T~A~
           ~%"
          (string-downcase (cat-symbol *rdt/reference-category*))
          (string-downcase (etf-name etf)))
  (writeout-dereferenced-mapping-for-revival mapping stream)
  (write-string ")" stream)
  (terpri stream))



(defun writeout-dereferenced-mapping-for-revival (mapping stream)
  (format stream "~&~9,3T(")
  (do* ((remaining-pairs mapping (cdr remaining-pairs))
        (one-ahead (cdr mapping) (cdr one-ahead))
        (pair (car remaining-pairs) (car remaining-pairs))
        (symbol (car pair) (car pair))
        (value (cdr pair) (cdr pair)))
       
       ((null symbol)
        (write-string ")" stream))
    
    (format stream "(~A . "
            (string-downcase (symbol-name symbol)))
    (format stream "~A)"
            (etypecase value
              (lambda-variable
               `(,(var-name value)
                 ,(cat-symbol (first (var-binding-sites value)))))
              ((or referential-category mixin-category category)
               (cat-symbol value))
              (word
               (word-pname value))))
    
    (when one-ahead
      (format stream "~&~10,3T"))))


(defun vivify-mapping-exp (mapping-expression)
  (let ( mapping  symbol  value-exp  value )
    (dolist (pair mapping-expression)
      (setq symbol (car pair)
            value-exp (cdr pair))
      (setq value
            (etypecase value-exp
              (cons  ;; lambda variable
               (variable/category (first value-exp)
                                  (second value-exp)))
              (symbol
               (category-named value-exp))
              (string
               (define-word value-exp))))

      (unless value
        (break "Could not find a value for the expression~%~A"
               value-exp))

      (push `(,symbol . ,value)
            mapping))

    (nreverse mapping)))



;;;--------------------------------------------
;;; the input routine that reads these back in
;;;--------------------------------------------

(defmacro define-realization
          (category-name tree-family-name mapping-expression)
  `(define-realization/expr
     ',category-name ',tree-family-name ',mapping-expression))

(defun define-realization/expr (category-name
                                tree-family-name
                                mapping-expression )

  (let ((category (category-named category-name))
        (tree-family (exploded-tree-family-named tree-family-name))
        (mapping (vivify-mapping-exp mapping-expression)))

    (declare (ignore category))
    ;; ?? make a permanent hookup to the category ??
    ;; Could be useful if a word substitution is involved

    ;; copy of loop in Make-rules-for-rdata
    (dolist (cfr-template (etf-cases tree-family))
      (instantiate-rule-schema cfr-template mapping))))


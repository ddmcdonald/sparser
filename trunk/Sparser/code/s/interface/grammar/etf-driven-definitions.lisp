;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "etf-driven definitions"
;;;    Module:  "interface;grammar:"
;;;   version:  July 1995

;; initiated 7/26/95

(in-package :sparser)

;;;--------------------------------------------
;;; driving the definition process via the RDT
;;;--------------------------------------------

(defun define-by-filling-out-an-etf (&key ((:tree-family name-of-tree-family) nil)
                                          ((:category name-of-category) nil)
                                          phrase-text
                                          )
  ;; Called from the autodef 'form' functions of various model categories
  ;; such as kind-of-company/phrase.  We fire up the rule definition
  ;; tableau after setting up the context it would expect to have
  ;; if we'd just selected a schema from that window.

  (let ((tree-family (exploded-tree-family-named name-of-tree-family)))
    (unless tree-family
      (error "Called with something that doesn't name a tree family:~
              ~%   ~A~%" name-of-tree-family))

    (throw-up-what-happens-next-msg/filling-out-an-etf
     name-of-tree-family name-of-category phrase-text)

    (initialize-schema-selection-state)
    (setq *rdt/selected-schema* tree-family)

    (launch-rdt-rule-populating-window)
    (populate-rule-tableau-from-selected-schema)
    (ccl:dialog-item-disable *rdtrpw/change-schema-button*)))



(defun throw-up-what-happens-next-msg/filling-out-an-etf (name-of-tree-family
                                                          name-of-category
                                                          phrase-text )
  (ccl:message-dialog 
   (format nil "As a ~A,~
                ~%the phrase \"~A\"~
                ~%gets a compositional analysis using~
                ~%the tree family ~A~
                ~%
                ~%You specify this using the Rule Definition Tableau"
           name-of-category
           phrase-text
           name-of-tree-family)
   :size #@(450 150)
   :position #@(100 100)))



;;;------------------------
;;; standard save routines
;;;------------------------

(defun save-definition-of-a-category (s  ;; output stream
                                      category-symbol supercategory-symbol
                                      indexing-spec name-of-tree-family
                                      )
  ;; Standard work-routine for AutoDef 'write-fn's. Call is initiated
  ;; from Save-get-position-verb

  (format s "~&~%;; ~A~%" (day-month-&-year-as-formatted-string))

  (format s "~&(define-category  ")
  (format s "~A" (string-capitalize category-symbol))

  (format s "~&  :instantiates ~A"
          (string-capitalize category-symbol))
  (format s "~%  :specializes  ~A"
          (string-capitalize supercategory-symbol))
  (format s "~%  :index ~A" indexing-spec)

  (format s "~%  :realization~
             ~%     (:tree-family ")
  (format s "~A"
          name-of-tree-family)

  (format s "~%      :mapping (")
  (let ((subst-symbol (car (first *rdt/mapping*)))
        (value (cdr (first *rdt/mapping*))))
    (write-mapping-pair subst-symbol value s)

    (dolist (pair (rest *rdt/mapping*))
      (setq subst-symbol (car pair)
            value (cdr pair))
      (format s "~%                ")
      (write-mapping-pair subst-symbol value s))
    (format s ")"))

  (format s "))"))



(defun write-mapping-pair (subst-symbol value stream)
  (format stream "(~A . ~A)"
          (string-downcase (symbol-name subst-symbol))

          (string-downcase
           (etypecase value
             ((or referential-category category)
              (symbol-name (cat-symbol value)))
             (lambda-variable
              (symbol-name (var-name value)))
             (word
              (format nil "\"~A\"" (word-pname value)))))))


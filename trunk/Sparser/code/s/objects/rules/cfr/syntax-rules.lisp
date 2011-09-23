;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "syntax rules"
;;;    Module:   "objects;rules:cfr:"
;;;   Version:   December 1994

;; cloned from [form-rules form] 12/30/94  v2.3 

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun def-syntax-rule/expr (;;lhs-expression ??variant??
                             rhs-expressions
                             &key ((:form form-expression))
                                  ((:referent referent-expression))
                                  ((:head head-designator)))

  ;; Expansion of Def-syntax-rule, the form for creating cfrs that
  ;; are based on combinations of two "form" labels that reflect
  ;; standard syntactic categorizations as opposed to the "semantic"
  ;; categorizations used in the category field of a rule.

  (case (length rhs-expressions)
    (1 (error "A syntax rule has to have 2 terms in its righthand side.~
               ~%This one has just one: rhs = ~A"
                rhs-expressions))
    (2 )
    (otherwise
     (error "A syntax rule has to have 2 terms in its righthand side.~
             ~%This one has more:  rhs = ~A"
            rhs-expressions)))

  (unless head-designator
    (error "Missing ':head' argument:~
            ~%  One of the two edges must be designated as the ~
            head"))
  (case head-designator
    (:left-edge )
    (:right-edge )
    (otherwise
     (error "The :head must be specified as one of the keyword symbols~
             ~%  \":left-edge\" or \":right-edge\"~
             ~%You used ~A" head-designator)))

     
  (let ((rhs (mapcar #'(lambda (exp)
                         (resolve/make exp :source :def-category))
                     rhs-expressions))
        (form-category (when form-expression
                         (resolve-form-label form-expression)))
        (referent (when referent-expression
                   (resolve-referent-expression referent-expression))))

    (when form-expression
      (unless form-category
        (error "Syntax rule: There is no form category with ~
                the name ~A" form-expression)))

    (do-syntax-rule/resolved rhs head-designator
                             form-category referent)))





(defun do-syntax-rule/resolved (rhs head-designator form referent)
  
  ;; We're going to make a regular binary rule, except that the ids that
  ;; trigger it will be in form position rather than category position.
  ;; That is controlled by the routine used to knit in the rule.

    ;; 1st check whether there already a rule based on this rhs
    (let ((earlier-cfr
           (lookup-syntactic-rule rhs)))
      (if earlier-cfr
        (revise-cfr-ancilaries earlier-cfr form referent)
        (let ((cfr
               (construct-syntax-cfr rhs
                                     form
                                     referent)))

          (setf (cfr-completion cfr) head-designator)
          cfr ))))


;;;----------
;;; builders
;;;----------

(defun construct-syntax-cfr (rhs form referent)
  (let ((cfr (make-cfr :category :syntactic-form
                       :rhs rhs
                       :form form
                       :referent referent)))

    (setf (cfr-plist cfr) (list :syntax-rule))

    (note-file-location cfr)
    ;;// hack source (note-grammar-module cfr :source //// )

    (knit-form-rule-into-psg-tables cfr)

    (let ((r-symbol (gen-cfr-symbol)))
      (catalog/cfr cfr r-symbol))

    cfr ))




(defun syntactic-rule? (cfr)
  (when (cfr-p cfr)
    (member :syntax-rule (cfr-plist cfr))))



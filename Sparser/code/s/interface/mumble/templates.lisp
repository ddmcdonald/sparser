;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "templates"
;;;   Module:  "interface;mumble;"
;;;  Version:  September 2017

;; initiated 7/27/17
;; rewritten 9/27/17

(in-package :sparser)

;;;-----------------------------------------------------------
;;; Lifting the parameters out of a parsed text with brackets
;;;-----------------------------------------------------------

(defvar *parsing-to-make-template* nil
  "Flag to control the behavior of, e.g., square bracket handling.")

(defvar *template-parameters* nil
  "Conduit between the parse-time detection of parameterized
   text segments and their post-parse handling. Pushed onto by
   lift-out-variablized-segment")

(defun lift-out-variablized-segment (pos-before-open pos-after-open
                                     pos-before-close pos-after-close)
    "Called from span-square-brackets when we're doing templates.
     Since we should only be working with texts that parse
     completely, and we only delimit proper constituents, there
     should always be a single edge between the brackets.
     To continue the parse we respan around the brackets with
     what amounts to a copy of the edge that's between them."
    (let ((coverage (coverage-over-region pos-after-open pos-before-close))
          (edge (right-treetop-at/edge pos-after-open)))
      (unless (eq coverage :one-edge-over-entire-segment)
        (multiple-value-setq (coverage edge)
          (parse-between-boundaries pos-after-open pos-before-close))
        (unless (eq coverage :single-span) ;;/// unify coverage code
          (warn "Could not parse the text between the brackets: ~s"
                (extract-characters-between-positions pos-after-open pos-before-close))
          (return-from lift-out-variablized-segment nil)))
      (push (edge-referent edge) *template-parameters*)
      (make-edge-over-long-span
       pos-before-open pos-after-close
       (edge-category edge)
       :form (edge-form edge)
       :referent (edge-referent edge)
       :rule 'lift-out-variablized-segment)))

;;;-----------------------------------------------------
;;; Substituting new values for the template parameters
;;;-----------------------------------------------------

(defun count-brackets (text)
  (declare (type string text))
  (loop with brackets = 0
        and open = nil
        for char across text
        do (case char
             (#\[ (incf brackets)
                  (when open
                    (error "Nested brackets in template text ~s." text))
                  (setq open t))
             (#\] (unless open
                    (error "Unbalanced brackets in template text ~s." text))
                  (setq open nil)))
        finally
          (when open
            (error "Unclosed bracket in template text ~s." text))
          (return (values brackets text))))

(defun parse-template (text)
  "Return the top-level semantics and template parameters for TEXT."
  (let* ((brackets (count-brackets text))
         (*parsing-to-make-template* t)
         (*template-parameters* nil)
         (*return-a-value* t)
         (*what-value-to-return* :object)
         (individual (qpp text)))
    (assert (= (length *template-parameters*) brackets))
    (values individual (reverse *template-parameters*))))

(defun find-binding-for-value (individual value)
  "Recursively grovel in INDIVIDUAL for a binding whose value is VALUE."
  (dolist (binding (indiv-binds individual))
    (if (eq (binding-value binding) value)
      (return binding)
      (when (individual-p (binding-value binding))
        (let ((binding (find-binding-for-value (binding-value binding) value)))
          (when binding
            (return binding)))))))

(defun rebind (bindings values individual)
  "Recursively rebind BINDINGS to VALUES in INDIVIDUAL."
  (check-type individual individual)
  (assert (= (length bindings) (length values))
          (bindings values)
          "There must be as many values as bindings.")
  (let ((rebindings (make-hash-table)))
    (mapc (lambda (binding value) (setf (gethash binding rebindings) value))
          bindings values)
    (labels ((rebind-1 (individual)
               (dolist (binding (indiv-binds individual) individual)
                 (multiple-value-bind (value rebind-p) (gethash binding rebindings)
                   (when rebind-p
                     (setq individual
                           (rebind-variable (binding-variable binding)
                                            value individual))))))
             (rebind (individual)
               (dolist (binding (indiv-binds individual) (rebind-1 individual))
                 (let ((value (binding-value binding)))
                   (when (individual-p value)
                     (let ((new-value (rebind value)))
                       (unless (eq new-value value)
                         (setf (gethash binding rebindings) new-value))))))))
      (rebind individual))))

(defun templatize (text)
  "Prepare TEXT for template substitution."
  (multiple-value-bind (individual parameters) (parse-template text)
    (let ((bindings (mapcar (lambda (parameter)
                              (or (find-binding-for-value individual parameter)
                                  (error "Can't find binding for ~s in ~s."
                                         parameter text)))
                            parameters)))
      (lambda (&rest values)
        (rebind bindings values individual)))))

(defun template (text &rest values)
  "Substitute VALUES for the bracketed parameters in the semantics of TEXT."
  (apply (templatize text) values))

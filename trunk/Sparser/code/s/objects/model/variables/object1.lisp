;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991-1999 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;model:variables:"
;;;  version:  1.1 August 2000

;; initiated 11/18/91 v2.1
;; 7/17/92 v2.3 revised the definition
;; 0.1 (1/7/94) extended Find-variable... to look up the lattice
;;     (8/4) wrote Decode-variable-name to summarize a common block of code
;;     (5/29/95) tweeked the error msg when the indiv/cat doesn't have the var
;; 0.2 (9/19) added a flag to Decode-variable-name so it doesn't always break
;;      on ambiguous variables.
;;     (7/12) repaird use of lattice-point in find-variable-in-category/named.
;;      7/16 still buggy: added trace for load-time
;; 1.0 (2/14/99) modified Decode-variable-name to also work from psi.
;;     (5/18) modified find-variable-in-category/named to use the correct
;;      uplink path given real lattice-points.
;; 1.1 (8/5/00) tweaked Decode-variable-name to take the individual case before
;;      the category case if both are provided for disambiguation purposes.

(in-package :sparser)

;;;----------------------------
;;; composite access functions
;;;----------------------------

(defun decode-variable-name (name &key individual category
                                       caller-does-disambiguation )
  (etypecase name
    (lambda-variable name)
    (symbol
     (let ((category-specific-variable
            (cond ((and (null individual) (null category))
                   (lambda-variable-named name))
                  (individual
                   (etypecase individual
                     (psi
                      (find-variable-in-psi/named name individual))
                     (individual
                      (find-variable-in-category/named
                       name (first (indiv-type individual))))))
                  (category
                   (unless (or (referential-category-p category)
                               (mixin-category-p category))
                     (error "Decoding the variable name ~A~
                             ~%with respect to a 'category', but object ~
                             passed in was not one:~%  ~A"
                            name category))
                   (find-variable-in-category/named
                    name category)))))

       (if category-specific-variable
         category-specific-variable

         (let ((blind-lookup (lambda-variable-named name)))
           (when (consp blind-lookup)
             ;(unless caller-does-disambiguation
             ;  (if *break-on-unexpected-cases* 
             ;    (break "The lambda-variable named ~A~
             ;            ~%cannot be disambigutated from the supplied individual/category~
             ;            ~%  ~A~
             ;            ~%because that category does not have this variable.~%"
             ;           name (or category individual))
	     ;; ACL blows out on a recursive call to this break here (or so it appears
	     ;; from what prints out
                 (setq blind-lookup (first blind-lookup)))  ;))
           blind-lookup ))))))


(defun variable/category (var-name category)
  ;; shorter spelling
  (when (symbolp category)
    (setq category (category-named category)))
  (find-variable-in-category/named var-name category))


(defun find-variable-in-category/named (symbol category
                                        &optional original-category
                                                  (depth 0))
  ;(when (> depth 0)
  ;  (format t "~&~A: find-variable-in-category/named: ~a~
  ;             ~%     ~A~%" depth symbol category))
  (when (keywordp symbol)
    (setq symbol (intern (symbol-name symbol)
                         (find-package :sparser))))

  (when (= depth 10)
    (format t ">>> Bailing out~%")
    (return-from find-variable-in-category/named nil))

  (let ((variables (cat-slots category)))
    (dolist (var variables)
      (when (eq symbol (var-name var))
        (return-from find-variable-in-category/named var)))

    ;; if we get here the variable wasn't included.
    ;; It could be a misspelling, or it could be on a superc
    (let* ((lattice-point (cat-lattice-position category)))
      (when lattice-point
        (let ((super-category (lp-super-category lattice-point)))
          (when super-category
            (find-variable-in-category/named 
             symbol
             super-category
             (or original-category
                 category)
             (1+ depth))))))))


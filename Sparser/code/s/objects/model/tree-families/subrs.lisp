;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subrs"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  August 1992   

;; initiated 8/4/92 v2.3. Fleshed out 8/28
;; 0.1 (6/6/93) Added decoding of symbolic specializations like vg/+ed

(in-package :sparser)


(defun replace-from-mapping (label mapping allow-literals?)
  ;; Called by instantiate-rule-schema.
  ;; the label is a symbol from the parameter or labels list of
  ;; an exploded tree family.  This returns the corresponding
  ;; object from the alist implementing the mapping
  (if (word-p label)
    label
    (let ((target
           (cdr (assoc label mapping :test #'eq))))
      
      (if (null target)
        (cond
         ((and (symbolp label)
               (name-includes-slash label))
          (multiple-value-bind (stem specialization)
                               (strip-specializing-slash label)
            (setq target (cdr (assoc stem mapping :test #'eq)))
            (unless target
              (break "Slashed name on label, ~A~
                      ~%But no entry for its stem in the mapping"
                     label))
            (ecase specialization
              ;; just a check that there hasn't been a spelling error
              (+ed ))
            (let ((composed-name
                   (intern
                    (concatenate 'string
                                 (symbol-name (cat-symbol target))
                                 (symbol-name specialization)))))

              (find-or-make-category-object composed-name
                                            :def-category))))

         ((name-includes-plus label)
          (break))

         (allow-literals?
          ;; this will be true when we're instantiating a local
          ;; case where we directly mention categories rather than
          ;; go through the mapping -- in which case the label
          ;; should be the name of a category
          (unless (setq target (category-named label))
            (error "The rule schema term ~A is undefined.~
                    ~%There is no mapping entry or actual category ~
                    with that name" label))
          target )
         (t
          (error "No instance of ~A in the mapping~%  ~A"
                 label mapping) :foo ))

        target ))))



(defun strip-specializing-slash (possibly-slashed-symbol)
  ;; a slash is used to differentiate one instance of a given category
  ;; from another in the sentential forms of the exploded family.
  ;; This returns the symbol corresponding to any portion of the
  ;; argument symbol before its slash, or the whole original if
  ;; there's no slash in its pname
  (let* ((pname (symbol-name possibly-slashed-symbol))
         (index (position #\/ pname)))

    (if (null index)
      possibly-slashed-symbol
      (values (intern (subseq pname 0 index))
              (intern (subseq pname (1+ index)))))))

(defun name-includes-slash (symbol)
  (position #\/ (symbol-name symbol)))

#|
(defun strip-specializing-plus (symbol-
|#
(defun name-includes-plus (symbol)
  (position #\+ (symbol-name symbol)))


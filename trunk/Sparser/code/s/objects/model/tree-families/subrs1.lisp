;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "subrs"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  0.4 May 1995   

;; initiated 8/4/92 v2.3. Fleshed out 8/28
;; 0.1 (6/6/93) Added decoding of symbolic specializations like vg/+ed
;; 0.2 (10/14/94) changed the scheme slightly to allow for other constructed
;;      categories than just stems ..10/17
;; 0.3 (2/23/95) changed what Decode-slashed-label returns in the case where there
;;      isn't a slash but the caller says that's ok: real value is second after a
;;      nil in 'values'.
;; 0.4 (5/15) tweeked Strip-specializing-slash to return values.

(in-package :sparser)


(defun replace-from-mapping (label mapping allow-literals?)
  ;; Called by instantiate-rule-schema.
  ;; the label is a symbol from the parameter or labels list of
  ;; an exploded tree family.  This returns the corresponding
  ;; object from the alist implementing the mapping.

  (declare (ignore allow-literals?))
  ;; 10/17 if we allow a category like 'apostrophe-s' on the same
  ;; principle as allowing literal words, then there's nothing
  ;; to distinguish the regular case from the case of Additional-cases
  ;; for which this flag was designed.

  (if (word-p label)
    label
    (let ((target
           (cdr (assoc label mapping :test #'eq))))
      
      (if (null target)
        (cond
         ((and (symbolp label)
               (name-includes-slash label))
          (multiple-value-bind (prior-string base-label
                                following-string ending)
                               (decode-slashed-label label mapping)

            (let ((decoding
                   (cdr (assoc base-label mapping :test #'eq))))
              (unless decoding
                (break "There is no instance of ~A~%in the ~
                        realization data mapping:~%~A~%"
                       base-label mapping))

              (let ((composed-name
                     (intern
                      (concatenate 'string
                                   prior-string
                                   (symbol-name (cat-symbol decoding))
                                   (or ending
                                       following-string))
                      *sparser-source-package*)))

                (find-or-make-category-object composed-name
                                              :def-category)))))

         ((setq target (category-named label))
          target )

       #|(allow-literals?
          ;; this will be true when we're instantiating a local
          ;; case where we directly mention categories rather than
          ;; go through the mapping -- in which case the label
          ;; should be the name of a category
          (unless 
            (error "The rule schema term ~A is undefined.~
                  ~%There is no mapping entry or actual category ~
                  with that name" label))
          target )|#

         (t
          ;(error "No instance of ~A in the mapping~%  ~A"
          ;       label mapping) :foo 
          (error "The rule schema term ~A is undefined.~
                  ~%There is no mapping entry or actual category ~
                  with that name" label)))

        target ))))



(defun decode-slashed-label (label-with-slash mapping
                             &optional need-not-have-a-slash )

  ;; A slash is used as a way to customize a label parameter by adding
  ;; a specified character string to the right or left of one of the
  ;; specified labels.  A standard customization is the addition of
  ;; a stem such as the passive. Stems are following literals that start
  ;; with the character '+' and must be one of a predefined set///??///.
  ;;    The optional flag is needed because some of the callers use this
  ;; routine as a filter rather than checking for the slashes first.

  (let* ((pname (symbol-name label-with-slash))
         (index (position #\/ pname)))

    (unless index
      (when need-not-have-a-slash
        ;; e.g. for call from Strip-specializing-slash where the assumption
        ;; is that the symbol in front of the slash identifies the form
        ;; category. 
        (return-from decode-slashed-label
          (values nil label-with-slash)))
      (break "Data check: Argument was supposed to contain a slash:~
              ~%   ~A" label-with-slash))

    (let ((before (subseq pname 0 index))
          (after (subseq pname (1+ index)))
          side  label  added-string )

      (cond
       ((setq label  ;; "possessive/-s"
              (car (assoc before
                          mapping :key #'symbol-name :test #'equal)))
        (setq side :left   ;; which side of the slash is the label
              added-string after))

       ((setq label  ;; "of-/complement", "of-/np/after-of"
              (car (assoc after
                          mapping :key #'symbol-name :test #'equal)))
        (setq side :right
              added-string before))

       (t (break "Neither side of the slash in the constructed label:~
                  ~%~A~%corresponds to one of the labels in the mapping ~
                  for~%this realization data:~%~A~%"
                 label-with-slash mapping)))

      #| ?? How could this catch anything given the way the label
            is defined ??
      (unless (assoc label mapping :test #'eq)
        (break "Data check:  While decoding a slashed label in the ~
                mapping~%of a realization specification we identified ~
                the symbol~%  ~A   which should correspond to~%a label ~
                in the mapping, but it doesn't:~%~A" label mapping)) |#

      (when (eq side :left)
        (when (position #\+ added-string)  ;; "vg/+ed"
          (setq side :ending)))

      (ecase side
        ;; values pattern: prior-string base-label following-string ending
        (:left
         (values "" label after nil))
        (:right
         (values before label "" nil))
        (:ending
         (values "" label "" after))))))



(defun name-includes-slash (symbol)
  ;; used as the test for a constructed label in Replace-from-mapping
  (position #\/ (symbol-name symbol)))


(defun strip-specializing-slash (label mapping)
  ;; Called from eft-case-rule-form, which only wants the label
  ;; and the identify of any final specialization
  (multiple-value-bind (prior-string base-label
                        following-string ending)
                       (decode-slashed-label label mapping
                                             :no-slash-ok)
    (declare (ignore prior-string following-string))
    (values base-label
            ending)))


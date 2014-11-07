;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1998.2014 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "subrs"
;;;   Module:  "objects;model:tree-families:"
;;;  version:  3.1 November 2014

;; initiated 8/4/92 v2.3. Fleshed out 8/28
;; 0.1 (6/6/93) Added decoding of symbolic specializations like vg/+ed
;; 1.0 (10/14/94) changed the scheme slightly to allow for other constructed
;;      categories than just stems ..10/17
;; 1.1 (2/23/95) changed what Decode-slashed-label returns in the case where there
;;      isn't a slash but the caller says that's ok: real value is second after a
;;      nil in 'values'.
;; 1.2 (5/15) tweeked Strip-specializing-slash to return values.
;; 2.0 (6/22) added another, relatively complex option to decoding slashes
;; 2.1 (1/17/96) finished Strip-specializing-slash
;;     (3/13) made a note of possible extension to Appears-as-lhs-of-some-case
;; 2.2 (7/13/98) included possiblilty of multiple mappings for a constructed term.
;;     (4/13/09) Added polyword case to ccl/2e
;; 3.0 (7/24/09) Now that variables are lexicalized we have to pass the category
;;      down to the interpretation of the mapping to ensure that the correct,
;;      category-specific variables are used. 
;;     (6/11/14) Added a few debugging statements and a little reformatting.
;; 3.1 (11/7/14) Added the possibility using :self as label where we substitute
;;      the category for it. Came up in a standalone rule where there are
;;      no mappings. 

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun replace-from-mapping (label mapping category allow-literals?)
  ;; Called by instantiate-rule-schema 
  ;; The label is a symbol from the parameter or labels list of
  ;; an exploded tree family.  This returns the corresponding
  ;; object from the alist implementing the mapping.

  (declare (ignore category allow-literals?))
  ;; 10/17 if we allow a category like 'apostrophe-s' on the same
  ;; principle as allowing literal words, then there's nothing
  ;; to distinguish the regular case from the case of Additional-cases
  ;; for which this flag was designed.

  (macrolet ((compose-name (prior-string following-string ending
                            decoding)
               `(let ((composed-name
                       (intern
                        (concatenate 'string
                                     ,prior-string
                                     (symbol-name (cat-symbol ,decoding))
                                     (or ,ending
                                         ,following-string))
                        *sparser-source-package*)))
                  
                  (find-or-make-category-object composed-name
                                                :def-category))))
  (if (word-p label)
    label
    (let ((target
           (cdr (assoc label mapping :test #'eq))))
      ;(setq *mapping* mapping) 
      ;(break "label = ~a  target = ~a" label target)
      (if (null target)
        (cond
         ((and (symbolp label)
               (name-includes-slash label))
          (multiple-value-bind (prior-string base-label
                                following-string ending)
                               (decode-slashed-label label mapping)
            (if base-label
              (let ((decoding
                     (cdr (assoc base-label mapping :test #'eq))))
                (unless decoding
                  (break "There is no instance of ~A~%in the ~
                          realization data mapping:~%~A~%"
                         base-label mapping))
                (if (consp decoding)
                  ;; it's a list of categories
                  (mapcar 
                   #'(lambda (case)
                       (compose-name 
                        prior-string following-string ending case))
                   decoding)

                  (compose-name 
                   prior-string following-string ending decoding))

                #|(let ((composed-name
                       (intern
                        (concatenate 'string
                                     prior-string
                                     (symbol-name (cat-symbol decoding))
                                     (or ending
                                         following-string))
                        *sparser-source-package*)))
                  
                  (find-or-make-category-object composed-name
                                                :def-category))|#
                )
              (else
                ;; Returning a null base-label is a signal that
                ;; we're building a new label by composing the symbols
                ;; for two of the mapping items, e.g. "to-company"
                ;;    Here the two elements of the label we are to
                ;; create are passed in via the 'prior-string' and
                ;; 'following-string' variables. In this case we are
                ;; getting decoded labels rather than strings since
                ;; they had to check the mapping in the call to be
                ;; sure that the pattern of slashes was correctly
                ;; interpreted.
                (construct-composite-label/2-elements 
                 prior-string following-string)))))

         ((setq target (category-named label))
          target )

         ((and (symbolp label)
               (eq label :self))
          category)

         (t
          (push-debug `(,label ,category ,mapping))
          (error "The rule schema term ~A is undefined.~
                  ~%There is no mapping entry or actual category ~
                  with that name" label)))

        target )))))


;;--- subroutines

(defun construct-composite-label/2-elements (label1 label2)
  ;; Called from Replace-from-mapping when the pattern of slashes
  ;; in the eft symbol indicate that two elements from the mapping
  ;; are to be combined to form a new label. 
  ;;   The value is returned to the call in Instantiate-rule-schema,
  ;; which is prepared to get a list of labels rather than just one.
  ;; This would indicate that several rules are to be made.
  (let ( label  labels )
    (cond ((and (listp label1) (listp label2))
           (dolist (l1 label1)
             (dolist (l2 label2)
               (push (ccl/2e l1 l2) labels))))
          ((listp label1)
           (dolist (l1 label1)
             (push (ccl/2e l1 label2) labels)))
          ((listp label2)
           (dolist (l2 label2)
             (push (ccl/2e label1 l2) labels)))
          (t (setq label (ccl/2e label1 label2))))
    (or label labels)))

(defun ccl/2e (label1 label2)
  (let ((string1 (etypecase label1
                   (word (word-pname label1))
		   (polyword (hyphenated-string-for-pw label1))
                   ((or referential-category category) 
                    (symbol-name (cat-symbol label1)))))
        (string2 (etypecase label2
                   (word (word-pname label2))
		   (polyword (hyphenated-string-for-pw label2))
                   ((or referential-category category)
                    (symbol-name (cat-symbol label2))))))

    (let ((category
           (find-or-make-category-object
            (intern (concatenate 'string string1 "-" string2)
                    *sparser-source-package*)
            :def-category)))

      category )))


;;;---------
;;; decoder
;;;---------

(defun decode-slashed-label (label-with-slash mapping
                             &optional need-not-have-a-slash )

  ;; A slash is used as a way to customize a label parameter by adding
  ;; a specified character string to the right or left of one of the
  ;; specified labels.  A standard customization is the addition of
  ;; a stem such as the passive. Stems are following literals that start
  ;; with the character '+'.
  ;;    The optional flag is needed because some of the callers use this
  ;; routine as a filter rather than checking for the slashes first.

  (let* ((pname (symbol-name label-with-slash))
         (index (position #\/ pname)))
    (unless index
      (when need-not-have-a-slash
        ;; e.g. for call from strip-specializing-slash where the assumption
        ;; is that the symbol in front of the slash identifies the form
        ;; category. 
        (return-from decode-slashed-label
          (values nil label-with-slash)))
      (else
       (push-debug `(label-with-slash mapping))
       (break "Data check: Argument was supposed to contain a slash:~
             ~%   ~A" label-with-slash)))

    (let ((before (subseq pname 0 index))
          (after (subseq pname (1+ index)))
          side  label  added-string )

      (cond
       ((setq label  ;; e.g. "possessive/-s"
              (car (assoc before mapping 
                          :key #'symbol-name :test #'equal)))
        ;; The left side of the slash is in the mapping

        (if (assoc after mapping :key #'symbol-name :test #'equal)
          ;; Both sides are in the mapping, so we have a composite.
          (let ((first (cdr (assoc before
                                   mapping :key #'symbol-name :test #'equal)))
                (second (cdr (assoc after
                                    mapping :key #'symbol-name :test #'equal))))
            (unless (and first second)
              (break "The pattern of slashes in the symbol ~A~
                      ~%Indicate that it should be a composite of two labels,~
                      ~%but one or both of them do not appear to correspond ~
                      ~%to any of the labels in the mapping.~
                      ~%  ~A~%  ~A~%~%" label  mapping before after))
            (setq side :composite
                  before first
                  after second))

          ;; only the left side of the slash corresponds to a symbol
          (setq side :left ;; the side of the slash that is the label
                added-string after)))

       ;; if not the left or both, then maybe the right.
       ((setq label  ;; "of-/complement", "of-/np/after-of"
              (car (assoc after mapping 
                          :key #'symbol-name :test #'equal)))
        (setq side :right
              added-string before))

       ;; neither side by itself, but if there is more than one slash
       ;; in the label, then maybe we should ignore the item to the left
       ;; of the first slash as being a form category and look for a 
       ;; combosite.
       ((position #\/ after)
        (let* ((inner-index (position #\/ after))
               (first-string (subseq after 0 inner-index))
               (second-string (subseq after (1+ inner-index))))

          (let ((first (cdr (assoc first-string mapping 
                                   :key #'symbol-name :test #'equal)))
                (second (cdr (assoc second-string mapping 
                                    :key #'symbol-name :test #'equal))))
            (unless (and first second)
              (push-debug `(label-with-slash mapping))
              (break "The pattern of slashes in the symbol ~A~
                      ~%Indicate that it should be a composite of two labels,~
                      ~%but one or both of them do not appear to correspond ~
                      ~%to any of the labels in the mapping.~
                      ~%  ~A~%  ~A~%~%" first-string second-string))
            (setq side :composite
                  before first
                  after second))))

       (t (push-debug `(label-with-slash mapping))
          (break "Neither side of the slash in the constructed label:~
                  ~%~A~%corresponds to one of the labels in the mapping ~
                  for~%this realization data:~%~A~%"
                 label-with-slash mapping))) ;; end of the cond

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
        ;; values pattern: prior-string, base-label, following-string, ending
        (:left
         (values "" label after nil))
        (:right
         (values before label "" nil))
        (:ending
         (values "" label "" after))
        (:composite
         (values before nil after nil))))))



;;;--------------------------
;;; alternative entry points
;;;--------------------------

(defun name-includes-slash (symbol)
  ;; used as the test for a constructed label in Replace-from-mapping
  (position #\/ (symbol-name symbol)))

(defun constructed-eft-label? (symbol)
  ;; used by Populate-rule-tableau to distinguish between labels where
  ;; the category is going to be constructed from parts vs. labels that
  ;; are to be set by the user.  This has to be intelligent about
  ;; the convention for slashes.
  (declare (special *rdt/selected-schema*))
  (when (name-includes-slash symbol)
    (when (appears-as-lhs-of-some-case symbol *rdt/selected-schema*)
      t )))


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



(defun appears-as-lhs-of-some-case (symbol schema)
  (declare (special *break-on-unexpected-cases*))
  (unless (exploded-tree-family-p schema)
    (when *break-on-unexpected-cases*
      (break "Bad input -- ~S~%should be an exploded tree family~%" schema))
    (return-from appears-as-lhs-of-some-case nil))

  (let ((cases (etf-cases schema)))
    (dolist (case cases nil)
      (when (eq symbol (caadr case))
        (return-from appears-as-lhs-of-some-case case)))

    ;; It wasn't literally the lhs symbol of some case, perhaps it
    ;; appears in the lhs but with a form-category prefix attached
    ;; to it.
    ;; /// go through them again. Check for contains-a-slash, and then
    ;; pull off the initial prefix (e.g. pp/prep/prep-head) and do
    ;; a string-equal check.
    ))

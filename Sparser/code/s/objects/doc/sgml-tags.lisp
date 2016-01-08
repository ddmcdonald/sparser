;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "SGML tags"
;;;   Module:  "objects;doc:"
;;;  Version:  0.2 June 1994

;; initiated 10/91, 5/9/92 Made the ...-named fn. cannonical
;; 0.1 (5/15/92 v2.2)  Changed the semantics so that redefinition now
;;     keeps the old object while redoing its fields to fit the new
;;     definitions.
;; 0.2 (6/6/94) promulgated new argument to Populate-section-marker

(in-package :sparser)

#|  There is no object for SGML tags, instead they are implemented directly
as section markers.  These routines use those, and are supplied only
because (1) there is a def. form specific to them, and (2) they have
associated CFRs that have to be maintained and so need their own specific
routine for deletion.   |#


(defvar *SGML-tag-rule-index* nil
  "An alist of (section-marker . cfr) that provides a hook for
   completing the deletion of an SGML tag by deleting its cfr
   as well as its section-marker.")

(defun find/SGML-tag (word)
  (find/section-marker word))

(defun sGML-tag-named (string)
  (section-marker-named
   (concatenate 'string "sm-" string)))

(defun delete/SGML-tag (section-marker)
  (let ((cfr (cdr (assoc section-marker *SGML-tag-rule-index*))))
    (unless cfr
      (break "Bad threading. Expected the tag ~A to have a cfr"
             (sm-full-name section-marker)))
    (delete/cfr cfr)
    (delete/section-marker section-marker)))


;;;-------------------
;;; internal def-form
;;;-------------------

(defun define-sgml-tag/expr (string name initiate terminate close
                             &aux new? )
  (declare (special category::SGML-label))
  (declare (special category::SECTION-MARKER))
  (let* ((word (resolve-string-to-word/make string))
         (sm-word (define-word/expr
                    (concatenate 'string "sm-" string)))
         (sm (or (find/section-marker sm-word)
                 (progn (setq new? t)
                        (make-a-new-section-marker
                         sm-word (symbol-name name))))))

    (populate-section-marker sm initiate terminate close nil t)

    (when new?
      (let ((cfr
             (define-cfr category::SGML-label `(,word)
               :form category::section-marker
               :referent  sm )))

        (push `(,sm . ,cfr)
              *SGML-tag-rule-index*)))
    sm ))

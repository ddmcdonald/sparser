;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "operations"
;;;   Module:  "analyzers;context:"
;;;  Version:  January 1995

;; initiated 8/18/94 v2.3.  8/19 added table-of-contents-entry
;; 11/30 added token index locator.  1/3/95 refined it.

(in-package :sparser)

;;;----------------------------------------
;;; displaying daughters down from the top
;;;----------------------------------------

(defun section-structure ( &optional (so *root-section-object*) )
  (let ((*print-short* t))
    (walk-section-objects-daughters-print-indented so 0)))

(defun walk-section-objects-daughters-print-indented (so indentation)
  (let ((daughters (reverse (value-of 'daughters so))))

    (dolist (d (if (eq so *root-section-object*)
                 daughters
                 ;; the root so does not have a fake first daughter, 
                 ;; all the others do
                 (cdr daughters)))
      (format t "~&~A" (string-of-n-spaces indentation))
      (format t "~A" d)
      (when (value-of 'daughters d)
        (walk-section-objects-daughters-print-indented
         d (+ 5 indentation))))))



;;;---------------------------------------------------------
;;; table of contents style description of a section object
;;;---------------------------------------------------------

(defun table-of-contents-entry (so &optional
                                    (stream *standard-output*))
  (toc-section-object-entry (value-of 'parent so) stream)
  (format stream "~A" (value-of 'count so)))

(defun toc-section-object-entry (so stream)
  (let ((parent (value-of 'parent so))
        (count (value-of 'count so)))
    (unless (or (eq parent *root-section-object*)
                ;; symbol case comes up in the call from the print routine
                (eq parent :root))
      (toc-section-object-entry parent stream))
    (format stream "~A." count)
    count ))



(defun table-of-contents-entry/string (so)
  (let ((parent (value-of 'parent so)))
    (if (or (eq parent *root-section-object*)
            (eq parent :root))
      ;; this lookahead prevents a "NIL" getting into the string
      ;; when the so is a toplevel section
      (format nil "~A" (value-of 'count so))
      (concatenate 'string
                   (toc-section-object-entry/string (value-of 'parent so))
                   (format nil "~A" (value-of 'count so))))))

(defun toc-section-object-entry/string (so)
  (let ((parent (value-of 'parent so))
        (count (value-of 'count so)))
    (if (or (eq parent *root-section-object*)
                (eq parent :root))
      (format nil "~A." count)
      (concatenate 'string
                   (toc-section-object-entry/string parent)
                   (format nil "~A." count)))))



;;;---------------------
;;; token index locator
;;;---------------------

(defun section-object-containing-token-index (integer)
  ;; The integer is the starting token index of some item in the
  ;; text. We (ouch) search serially through the tree of
  ;; section objects to find the object that brackets that position.
  (let ((so
         (catch :found-containing-so
           (walk-section-siblings/locate-position
            integer (reverse (value-of 'daughters 
                                       *root-section-object*))
            :last-pos *number-of-next-position*  ;; last pos in the text
            :has-to-have-it t))))
    (unless (or (stringp so)  ;; for "?" when the search fails
                (itype so 'section-object)
                (itype so 'paragraph))
      (break "The throw passed back the wrong object"))
    so ))


(defun walk-section-siblings/locate-position (integer list-of-so
                                              &key has-to-have-it
                                                   last-pos )
  ;; the list is the daughters of the so being tracked by the caller.
  (let* ((prior-so (first list-of-so))
         (prior-start-index (value-of 'token-index prior-so))
         next-so  next-start-index )
    ;(format t "~& ~A is index of ~A" prior-start-index prior-so)

    (when (= integer prior-start-index)
      ;; it can't be in a lower section if we believe that there
      ;; will always be at least a little distance between the
      ;; start of a section and the first of its daughters
      (throw :found-containing-so prior-so))

    (dolist (so (cdr list-of-so))
      (setq next-so so
            next-start-index (value-of 'token-index next-so))
      ;(format t "~& ~A is index of ~A" next-start-index next-so)
      (cond
       ((null next-start-index)
        ;; the section object is missing its start index for some
        ;; reason -- rather than sort it out (1/3/95) just returning
        (throw :found-containing-so "?"))
       ((< integer next-start-index)
        ;; then it's between the prior-start-index and the
        ;; beginning of this section. If the prior-so has any
        ;; daughters we have to check whether it's in one of them,
        ;; otherwise its in that section.
        (walk-section-daughters/locate-position
         integer prior-so :last-pos next-start-index))
       (t
        ;; Check the fencepost position and then try the 
        ;; next pair of siblings
        (if (= integer next-start-index)
          (walk-section-daughters/locate-position integer next-so)
          (setq prior-so next-so
                prior-start-index next-start-index)))))

    (when (< integer last-pos)
      (walk-section-daughters/locate-position integer 
                                              (or next-so
                                                  prior-so)
                                              :last-pos last-pos))

    (when has-to-have-it
      (break "position ~A should have been contained in one of ~
              these daughters~%but is isn't:~%~A~%"
             integer list-of-so))))


(defun walk-section-daughters/locate-position (integer so
                                               &key last-pos)
  (let ((daughters (cdr (reverse (value-of 'daughters so)))))
    (if daughters
      (let* ((first-daughter (first daughters))
             (start-of-first-daughter
              (value-of 'token-index first-daughter)))
        ;(format t "~& ~A index of first daughter ~A"
        ;        start-of-first-daughter first-daughter)

        (when (< integer start-of-first-daughter)
          ;; this is the case of a gap between the parent and the
          ;; start of its first daughter section
          (throw :found-containing-so so))
        (walk-section-siblings/locate-position integer
                                               daughters
                                               :last-pos last-pos))
      (throw :found-containing-so so))))


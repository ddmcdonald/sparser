;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2010-2017  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "list hacking"
;;;    Module:   "util:"
;;;   Version:   July 2017

;; initiated 12/30/93 v2.3.  4/11/95 added nil-checkers. 
;; 8/24/10 moved in quote-every-second-one from forms/categories
;; (3/9/11) Reworked to fit in ddm-util. (7/31) Added lowercase-tree
;; (3/8/13) Changed pl to not return the list as its value. Very messy
;;  to deal with in case of list-per-run-init-forms. Added splice-out-nth-element
;; (3/24/16) Dropped unused functions, added some new ones, merged alists.

(in-package :ddm-util)

(defun ensure-list (object)
  "Return the list designated by OBJECT."
  (if (listp object)
    object
    (list object)))

(defun append-new (&rest lists)
  "Append lists together, suppressing duplicates."
  (let ((output-list (nreverse (copy-list (car lists))))
        (appended-lists-in-order (cdr lists)))
    (dolist (sublist appended-lists-in-order (nreverse output-list))
      (dolist (item sublist)
        (pushnew item output-list)))))

(defun mapappend (fn &rest args)
  "Like mapcar, but the results are appended together."
  (unless (some #'null args)
    (append (apply fn (mapcar #'car args))
            (apply #'mapappend fn (mapcar #'cdr args)))))

(defun pl (list &optional (number-them? t) (stream *standard-output*))
  "Print the elements of a list on successive lines, numbering them by default."
  (loop for item in list and index upfrom 1
        do (if number-them?
             (format stream "~&~2t~A.  ~A~%" index item)
             (format stream "~&~A~%" item))
        finally (terpri stream)))

(defun list-length* (list)
  "Return the length of LIST even if it is not a proper list.
Does not handle circular lists."
  (labels ((list-length* (list accumulator)
             (declare (fixnum accumulator) (optimize speed))
             (typecase list
               (null accumulator)
               (atom (the fixnum (1+ accumulator)))
               (cons (list-length* (cdr list) (1+ accumulator))))))
    (list-length* list 0)))

(defun tail-cons (item list)
  "Destructively cons an item onto the end of a list."
  (if list
    (rplacd (last list) (cons item nil))
    (setq list (list item)))
  list)

(define-modify-macro appendf (&rest args) append "Append to list in a place.")
(define-modify-macro nconcf (&rest args) nconc "Destructively append to list.")

(defun quote-every-other-one (list &optional (which :odd))
  "For hacking macros."
  (loop with quotep = (ecase which
                        (:even #'evenp)
                        (:odd #'oddp))
        initially (assert (evenp (length list)) (list) "Odd list length.")
        for item in list and index upfrom 0
        collect (if (funcall quotep index)
                  `(quote ,item)
                  item)))

(unless (fboundp 'assq) ;; already present in Clozure
  (defun assq (item alist)
    (assoc item alist :test #'eq)))

(declaim (inline memq))
(unless (fboundp 'memq)
  #+ignore
  (defmacro memq (item list)
    `(member ,item ,list :test #'eq))
  (defun memq (item list)
    (declare (optimize (speed 3)(safety 0)))
    (member item list :test #'eq)))

(defun memq/assq (item alist)
  "Scans the toplevel of the list, acting like assoc when it sees conses
and memq when it sees atoms."
  (do ((car (car alist) (car cdr))
       (cdr (cdr alist) (cdr cdr)))
      ((null car))
    (if (consp car)
      (when (eq (car car) item)
	(return-from memq/assq car))
      (when (eq car item)
	(return-from memq/assq (cons car cdr))))))

(defun alist-to-plist (alist)
  (loop for (tag . value) in alist
        collect tag
        collect value))

(defun plist-to-alist (plist &optional not-dotted?)
  (loop for (tag value) on plist by #'cddr
        collect (if not-dotted?
                  (list tag value)
                  (cons tag value))))

(defun reverse-plist (plist)
  (loop with reverse
        for (tag value) on plist by #'cddr
        do (setq reverse (list* tag value reverse))
        finally (return reverse)))

(defun sans (plist &rest keys)
  "Return a plist without the given keys.
By Erik Naggum."
  (let ((sans ()))
    (loop
      (let ((tail (nth-value 2 (get-properties plist keys))))
        ;; this is how it ends
        (unless tail
          (return (nreconc sans plist)))
        ;; copy all the unmatched keys
        (loop until (eq plist tail)
              do (push (pop plist) sans)
                 (push (pop plist) sans))
        ;; skip the matched key
        (setq plist (cddr plist))))))

(defun choose (sequence &optional (random-state *random-state*))
  "Return a random element of the sequence."
  (elt sequence (random (length sequence) random-state)))

(defun deep-copy (l)
  (if (consp l)
    (cons (deep-copy (car l))
          (deep-copy (cdr l)))
    l))

(defun flatten (list-of-lists)
  "Returns a single-level list of all the symbols or other non-cons
objects at the fringe of the tree in their pre-next order."
  (loop for item in list-of-lists
        nconc (if (consp item) (flatten item) (list item))))

(defun flattenc (cons-structure)
  "Returns a single-level list of all the non-cons objects at the
edge of the tree, except for nils. Can deal with non-list cdrs."
  (let* ((head (cons t nil))
         (tail head))
    (labels ((walk (l)
               (if (consp l)
                 (progn (walk (car l))
                        (walk (cdr l)))
                 (when l
                   (rplacd tail (cons l nil))
                   (setf tail (cdr tail))))))
      (walk cons-structure)
      (cdr head))))

(defun all-the-same (list &key (test #'eql))
  "Are all of the items in this single-level list the identical
   value? Can use :test parameter to change the comparison
   function, which defaults to eql."
  (let ((1st-item (car list)))
    (loop for item in (cdr list)
       unless (funcall test item 1st-item)
       do (return nil)
         finally (return t))))

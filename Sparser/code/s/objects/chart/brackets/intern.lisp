;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "intern"
;;;   Module:  "objects;brackets:"
;;;  Version:  1.2 July 1994

;; original version from October 1990
;; 1.1 (4/25/91 v1.8.4)  Reworked to separate the indexing of the brackets
;;      from their assignment to particular words.
;; 1.2 (7/19/94) added case of referential-category

(in-package :sparser)

;;;-------
;;; index
;;;-------

(defparameter *bracket-index* (make-hash-table :test #'eq )
  "table from words to assignments")


;;;-------
;;; find
;;;-------

(defun find-bracket (start/end before/after word/type)
  (multiple-value-bind (direction-symbol
                        placement-keyword
                        word
                        category)
                       
                       (resolve-bracket-components
                        start/end before/after word/type)
    (let ((assignment
           (or (gethash (or word category) *bracket-index*)
               (setf (gethash word/type *bracket-index*)
                     (make-bracket-assignment
                      :backpointer `(:index ,(or word category))))))
          (composite-key
           (decode-bracket nil
                           :direction  direction-symbol
                           :placement  placement-keyword)))
      
      (ecase composite-key
             (:ends-before (ba-ends-before assignment))
             (:ends-after  (ba-ends-after  assignment))
             (:begins-before (ba-begins-before assignment))
             (:begins-after  (ba-begins-after  assignment))))))


;;;---------
;;; intern
;;;---------

(defun intern-bracket (b)
  (let ((word/type (or (b-word b) (b-category b))))
    (unless word/type
      (break "back bracket: no word or type"))
    (let ((assignment
           (or (gethash word/type *bracket-index*)
               (setf (gethash word/type *bracket-index*)
                     (make-bracket-assignment
                      :backpointer `(:index ,word/type)))))
          (composite-key
           (decode-bracket nil
                           :direction (b-direction b)
                           :placement (b-placement b))))
      ;; index it
      (ecase composite-key
             (:ends-before
              (setf (ba-ends-before assignment) b))
             (:ends-after
              (setf (ba-ends-after assignment) b))
             (:begins-before
              (setf (ba-begins-before assignment) b))
             (:begins-after
              (setf (ba-begins-after assignment) b)))

      ;; gen its symbol
      (let ((symbol (gen-bracket-symbol composite-key
                                        word/type)))
        (set symbol b)
        (setf (b-symbol b) symbol)
        symbol ))))


;;;---------------------------------
;;; a composite location expression
;;;---------------------------------

(defun decode-bracket (b
                       &key  direction placement )

  (let ((ends-phrase (if direction
                       (eq :] direction)
                       (eq :] (b-direction b))))

        (goes-before (if placement
                       (eq :before placement)
                       (eq :before (b-placement b))))
        key )

    (setq key (cond ((and ends-phrase
                          goes-before)
                     :ends-before)
                    ((and ends-phrase
                          (null goes-before))
                     :ends-after)
                    ((and (null ends-phrase)
                          goes-before)
                     :begins-before)
                    ((and (null ends-phrase)
                          (null goes-before))
                     :begins-after)))
    key))


;;;-----------------
;;; bracket symbols
;;;-----------------

(defun gen-bracket-symbol (composite-key
                           word/type)

  (let* ((pname (etypecase word/type
                  (word (word-pname word/type))
                  ((or category referential-category)
                   (symbol-name (cat-symbol word/type)))))

         (bracket-pattern (case composite-key
                            (:ends-before "].")
                            (:ends-after  "].")
                            (:begins-before ".[")
                            (:begins-after  ".["))))
    (let ((string
           (cond ((or (eq composite-key :ends-before)
                      (eq composite-key :begins-before))
                  (concatenate 'string
                               bracket-pattern pname))

                 ((or (eq composite-key :ends-after)
                      (eq composite-key :begins-after))
                  (concatenate 'string
                               pname bracket-pattern)))))

      (let ((symbol (intern string ;*bracket-package*
                            *sparser-source-package*)))
        (funcall #'proclaim `(special ,symbol))
        symbol ))))


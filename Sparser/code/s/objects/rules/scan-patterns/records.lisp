;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "records"
;;;   Module:  "objects;rules:scan-patterns:"
;;;  version:  July 2020

;; initiated 7/18/20 to hold the representation on instances of rule-patterns
;; having occurred.

(in-package :sparser)

;; (trace-induction-sweep)

;;--- classes

(defclass pattern-instance (named-object)
  ()
  (:documentation "Superclass over particular kinds of patterns
    and what we record about their instances"))
;;// Move slots up when we see what generalizes

(defclass prep-pattern (pattern-instance)
  ((prep :initarg :p :accessor triggered-prep)
   (left-string :initarg :left-str :accessor left-string)
   (right-string :initarg :right-str :accessor right-string)
   (left-type :initarg :head-type :accessor head-type)
   (right-type :initarg :pobj-type :accessor pobj-type)
   ))
(setup-find-or-make prep-pattern)


(defun assemble-prep-pat-name (prep left right)
  "The 'name' for the find-or-make pattern that wants a symbol for the name"
  (intern (string-append (string-upcase prep) "+"
                         (string-upcase right) "/"
                         (string-upcase left))
          (find-package :sparser)))

;;--- invoking function

(defun record-instance-of-preposition-pattern (preposition pp-edge head-edge)
  "This is the point of connection between the recognition of an instance
   of a pattern and its long-term representation. We need to record enough
   information to both produce a rule -- with some sort of value restriction,
   and reconsider what to do (e.g. for the v/r) by reanalyzing the contexts."
  (let ((pobj-edge (find-pobj-edge pp-edge)))
    (unless pobj-edge (break "unknown-pobj in ~a" pp-edge))

    (flet ((type-for-ref (referent)
             (typecase referent
               (individual (itype-of referent))
               (category referent)
               (otherwise (break "Unexpected referent: ~a of type ~a"
                                 referent (type-of referent))))))

      (let* ((head-ref (edge-referent head-edge))
             (pobj-ref (edge-referent pobj-edge))
             (left-str (string-for-edge head-edge))
             (left-type (type-for-ref head-ref))
             (right-str (string-for-edge pobj-edge))
             (right-type (type-for-ref pobj-ref))
             (name (assemble-prep-pat-name
                    (pname preposition) left-str right-str)))
        
        (tr :prep-pattern preposition left-str right-str)
        (let ((r (find-or-make-prep-pattern name)))
          (setf (triggered-prep r) preposition
                (left-string r) left-str
                (right-string r) right-str
                (head-type r) left-type
                (pobj-type r) right-type)
          r)))))


;;--- save/restore

(defparameter *where-to-save-records-of-induced-rules*
  (asdf:system-relative-pathname
   :sparser "Sparser/code/s/interface/records/rule-patterns.lisp"))
                                 
(defun save-the-preposition-records (&optional
                                       (file-pathname
                                        *where-to-save-records-of-induced-rules*))
  (with-open-file (stream
                   file-pathname
                   :direction :output
                   :if-exists :supersede)
    (format stream "~&(in-package :sparser)~%~%") ;/// include the date, any meta data
    (let ((records (sort-prep-records)))
      (loop for r in records
         do (write-prep-record r stream)))))

(defun write-prep-record (r stream)
  (format stream "~&(define-prep-record ~s" (pname (triggered-prep r)))
  (format stream "~&  :left-string ~s~
                  ~%  :right-string ~s~
                  ~%  :head-type '~a~
                  ~%  :pobj-type '~a"          
          (left-string r) (right-string r) 
          (cat-name (head-type r))
          (cat-name (pobj-type r)))
  (format stream ")~%~%"))

(defun define-prep-record (pname &key
                                   ((:left-string left-str))
                                   ((:right-string right-str))
                                   ((:head-type left-type))
                                   ((:pobj-type right-type)))
  "This is the function that write-prep-record uses. It is the 'inflator'
   of the preposition records, and is charged with writing the actual rules"
  (let* ((name (assemble-prep-pat-name pname left-str right-str))
         (preposition (resolve pname))
         (r (find-or-make-prep-pattern name)))
    (setf (triggered-prep r) preposition ; straight copy 
          (left-string r) left-str
          (right-string r) right-str
          (head-type r) left-type
          (pobj-type r) right-type)
    ;;/// figure out how to formulate a rule
    r ))
   


(defun sort-prep-records ()
  "Sort the records alphabetically on preposition, then by left
   string and right string (if needed)"
  (let ((list (all-hash-vals *prep-pattern-table*)))
    (sort list
          #'(lambda (r1 r2)
              (let ((p1 (triggered-prep r1))
                    (p2 (triggered-prep r2)))
                (cond
                  ((string< (pname p1) (pname p2)) t)
                  ((string> (pname p1) (pname p2)) nil)
                  ((string= (pname p1) (pname p2))
                   (let ((l1 (left-string r1))
                         (l2 (left-string r2)))
                     (cond
                       ((string< l1 l2) t)
                       ((string> l1 l2) nil)
                       ((string= l1 l2)
                        (let ((rt1 (right-string r1))
                              (rt2 (right-string r2)))
                          (cond
                            ((string< rt1 rt2) t)
                            ((string> rt1 rt2) nil)))))))))))))

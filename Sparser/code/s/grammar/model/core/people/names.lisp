;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "names"
;;;   Module:  "model;core:names:people:"
;;;  version:  0.1 January 1994

;; initiated 6/8/93 v2.3, added indexes 6/15.
;; 0.1 (1/7/94) Beginning to simplify the indexing

(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  person-name
  :instantiates nil
  :specializes name
  :index (:special-case :find find/person-name
                        :index index/person-name
                        :reclaim reclaim/person-name)

  :binds ((first-name/s . sequence)
          (last-name . name-word)
          (standard-prefix . person-prefix)
          (version . person-version)))


;;;------------
;;; operations
;;;------------


(defun find/person-name (person-name-category binding-instructions)
  (let ((last-name    (value-of-instr 'last-name binding-instructions))
        (first-name/s (value-of-instr 'first-name/s binding-instructions))
        (prefix       (value-of-instr 'prefix binding-instructions))
        (version      (value-of-instr 'version binding-instructions)))
    (find/person-name/spread last-name first-name/s prefix version)))

(defun find/person-name/spread (last-name first-name/s prefix version)
  (let ((instances (cat-instances category::person-name)))
    (when instances
      ;; this is serial search, but it saves writing code and
      ;; provides hooks for being creative about name mergers
      (let ( with-last-name  with-first-name  with-version )
        (dolist (name instances)
          (when (eq last-name (value-of 'last-name name))
            (kpush name with-last-name)))
        (when with-last-name
          (if with-last-name
            (if with-last-name
              (when (null (cdr with-last-name))
                (return-from find/person-name/spread
                  (kpop with-last-name)))
              (return-from find/person-name/spread nil))
            (break "stub: more than one person with the same last name")
            ))))))
      

(defun index/person-name (name person-name-category bindings)
  (declare (ignore bindings))
  (let ((instances (cat-instances person-name-category)))
    (setf (cat-instances person-name-category)
          (if instances
            (kcons name instances)
            (kcons name nil)))))


#| old version
(defun index/person-name (name &optional item-list ;; aka category
                                         bindings  ;; as with cat., when called straight
                                         )
  ;; called from the various name-creator routines
  ;; //// 1/7 interim hack
  (if bindings
    nil
    (let ((instances (cat-instances category::person-name)))
      (if instances
        (let ((instances-with-this-n1 (assoc (first item-list)
                                             instances)))
          ;; there should always be a "find" before any "index",
          ;; so we can take this to be a new name
          (if instances-with-this-n1
            (then (rplacd instances-with-this-n1
                          `( (,(rest item-list) . ,name)
                             ,@(cdr instances-with-this-n1)) ))
            (else
              (setf (cat-instances category::person-name)
                    `( (,(first item-list)
                        (,(rest item-list) . ,name))
                       ,@instances )  ))))
        
        (setf (cat-instances category::person-name)
              `( (,(first item-list)
                  (,(rest item-list) . ,name)) )  )))))  |#

#| old version
(defun find/person-name (item-list)
  (let ((instances (cat-instances category::person-name)))
    (when instances
      (let ((instances-with-this-n1 
             (cdr (assoc (first item-list) instances))))
        (when instances-with-this-n1
          (cdr (assoc (rest item-list)
                      instances-with-this-n1 
                      :test #'equal ))))))) |#


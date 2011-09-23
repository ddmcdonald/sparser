;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "find/cs"
;;;   Module:  "model;core:names:companies"
;;;  version:  April 1991      (v1.8.1)

;; broken out from companies 3/28, finished 4/2

(in-package :CTI-source)


;;;--------------------------------------------------
;;; company corresponding to referent of [name] edge
;;;--------------------------------------------------

(defun find-or-make/company (edge-referent)
  ;; called to calculate the referent of a name that has been converted
  ;; to a company by a cs rule.
  (when (typep edge-referent 'company)
    (return-from Find-or-make/company edge-referent))

  (let ((name-list
         (etypecase edge-referent
           (name (list edge-referent))
           (person (let ((person-name (person-name edge-referent)))
                     (append (nop-first-names person-name)
                             (list (nop-last-name person-name)))))
           (list
            (if *debug-known-non-fatal-errors*
              (unless (eq (first edge-referent) category::name/unknown-referent)
                (break/debug "Bad format in name referent passed to ~
                              Find-or-make/company:~%  ~A~%" edge-referent))
              (return-from Find-or-make/company :oddity))))))

  (let ((company (find-partial/company name-list)))
    (unless company
      ;; the list doesn't include an inc-term or else we wouldn't
      ;; have needed a context-free rule to identify the edge as
      ;; a company
      (setq company
            (make-company
             :name (make-name-of-a-company :all-but-inc name-list
                                           :name1 (first name-list))))
      (index/company company name-list))

    (index/per-article/company company :from :find-or-make)
    company )))


;;;------------------------------
;;; partial-match lookup routine
;;;------------------------------

(defun find-partial/company (name-list)
  (if (= 1 (length name-list))
    (identify-most-likely-referent/company/name1 (car name-list))
    (identify-most-likely-referent/company name-list)))


(defun identify-most-likely-referent/company/name1 (name1)
  (let ((entry (gethash name1 (cat-index-of 'category::company)))
        company ambiguous? )
    (when entry
      (if (= 2 (length entry)) ;; there's only one company with that name
        (then   ;; get the company from the :all-cases list
          (setq company (car (cadr (cadr entry)))))
        (else (setq ambiguous? entry)))

      (if ambiguous?
        (look-for/per-article/company/name1-only name1)
        company))))


(defun identify-most-likely-referent/company (name-list)
  (let ((complete-match (find/company name-list)))
    (if complete-match
      complete-match
      (look-for/per-article/company name-list))))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "index"
;;;   Module:  "model;core:names:companies"
;;;  version:  April 1991      (v1.8.1)

;; broken out from companies 3/28
;; 1.1 (4/3) Repaired Search-entry/company which was accessing its company
;;     from the wrong spot in the table's substructure  "Dec 2;214"
;; 1.2 (4/11 v1.8.2) Patched error message in Add-to-entry/company to
;;     work when the company being indexed is an instance of a name1 that's
;;     already known but there's no namelist (just the inc-term).

(in-package :CTI-source)


(defun index/company (company name-list)
  (let* ((name1 (first name-list))
         (entry (gethash name1 (cat-index-of 'category::company))))

    (when (null (cdr name-list))
      ;; add the inc-term if there is one
      (let ((inc-term (noc-inc-term (company-name company))))
        (when inc-term
          (setq name-list (list name1 inc-term)))))

    (setf (gethash name1 (cat-index-of 'category::company))
          (if entry
            (add-to-entry/company entry company (cdr name-list))
            (initialize-entry/company company (cdr name-list))))))


(defun find/company (name-list)
  (let* ((name1 (first name-list))
         (entry (gethash name1 (cat-index-of 'category::company))))
    (if entry
      (search-entry/company entry (cdr name-list))
      nil)))


;;;----------------------
;;; entries in the index
;;;----------------------

(defun initialize-entry/company (company names-after-first)
  (if names-after-first
    `((,@names-after-first ,company)
      (:all-cases (,company)))
    `((:single-name ,company)
      (:all-cases (,company))) ))

(defun search-entry/company (entry name-list)
  (if name-list
    (let ((subentry (assoc (first name-list)
                           entry)))
      (when subentry
        (if (typep (car (last subentry)) 'company)
          (then ;; there's only one case in the subentry, we're either
            ;; equal to it or not
            (when (subentry-names-equal-list subentry name-list)
              (car (last subentry))))
          (else ;; there are several cases
            (dolist (subsubentry (cadr subentry))
              (when (subentry-names-equal-list subsubentry name-list)
                ;(break "third")
                (return-from search-entry/company
                             ;(third subsubentry)  ;; original
                             (car (last subsubentry))  ;;replacement 4/3
                             )))
            nil))))
    (else ;;the company has only one, non-inc name-element
      (let ((subentry (assoc :single-name entry)))
        (when subentry
          (second subentry))))))


(defun add-to-entry/company (entry company name-list)
  ;; we wouldn't be adding to this entry unless the company was't
  ;; on it already
  (let ((cons (cdr (assoc :all-cases entry))))
    (rplaca cons
            (cons company
                  (car cons))))

  (let ((subentry (assoc (first name-list)
                         entry)))
    (if subentry
      (if (typep (car (last subentry)) 'company)
        ;; this is the first time more than one company has had this
        ;; first name.  Take advantage of this being an alist and just
        ;; add an amended entry rather than change the existing one
        (push `(,(first name-list)
                ,(cons `(,@name-list ,company)
                       (list subentry)))
              entry)
        (else ;; we have to add to the list of cases in place already
          (let ((list-of-cases (cadr subentry)))
            (rplacd list-of-cases
                    (cons `(,@name-list ,company) (cdr list-of-cases)))
            entry)))

      (else ;; add a new toplevel subentry
        (unless name-list
          (break/debug "~&Shouldn't be indexing this company just on the~
                        basis of its first name,~
                        ~%  The name ~A is ambiguous.~%"
                       (noc-name1 (company-name company)))
          (return-from Add-to-entry/company nil))
        (push `(,@name-list ,company)
              entry)))))
 

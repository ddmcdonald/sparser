;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1991 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "CA"
;;;   Module:  "model;core:names:companies"
;;;  version:  1.3  March 1991

;; 1.1  (2/1 v1.8)  Folded in more options for checking when a company
;;      shows up as a treetop.
;; 1.2  (3/22 v1.8.1) broke out the case for [of-company] treetops
;; 1.3  (3/26)  Added a case for [of-company] to look for companies as
;;      left-neighbors that are defCos.

(in-package :sparser)

;;;-----------
;;; the hooks
;;;-----------

(set-ca-action (category-named 'company)
               'CA-checks-for-companies)


(set-ca-action (category-named 'at-company)
               'company/search/je-or-title)

(set-ca-action (category-named 'for-company)
               'company/search/je-or-title)

(set-ca-action (category-named 'with-company)
               'company/search/je-or-title)


(set-ca-action (category-named 'of-company)
               'company/search/je-or-title)

;(set-ca-action (category-named 'of-company)
;               'title/je_of_company)



(set-ca-action (category-named 'at-ThisCo)
               'company/search/je-or-title)

(set-ca-action (category-named 'for-ThisCo)
               'company/search/je-or-title)

(set-ca-action (category-named 'of-ThisCo)
               'company/search/je-or-title)

(set-ca-action (category-named 'with-ThisCo)
               'company/search/je-or-title)


;;;---------
;;; company
;;;---------

(defun cA-checks-for-companies (co-edge)

  ;; 1st be sure that we're the whole company name
  ;; Check for "[name], [co]" as in Goldman, Sachs & Co.
  (when (comma-just-to-its-left co-edge)
    (when (left-neighbor-is category::name co-edge :jump-word? t)
      (setq co-edge
            (extend-company-edge co-edge
                                 (edge-to-its-left/jump-word co-edge)
                                 (edge-to-its-left co-edge)))))
  (when *topic*
    (check-if-topic/company co-edge)) ;; see "rules;CA/HA:topic company"
  )

;;;------------
;;; of company
;;;------------

(defun title/je_of_company (of-co-edge)
  (let* ((starting-pos (pos-edge-starts-at of-co-edge))
         (left-neighbor (left-treetop-at starting-pos))
         title-edge defCo-edge )

    ;; we expect to have been stranded from a title, but another case
    ;; is a phrase like "the law firm of ..."

    (when (typep left-neighbor 'edge)
      (let ((neighbor-category (edge-category left-neighbor)))

        ;; no searching for the title, it has to be adjacent

        (cond ((eq neighbor-category category::job-event)
               (setq title-edge
                     (edge-with-label-at/ends-there?
                      category::title starting-pos))
               (setq defCo-edge
                     (edge-with-label-at/ends-there?
                      category::company starting-pos)))
              ((eq neighbor-category category::title)
               (setq title-edge left-neighbor))
              ((eq neighbor-category category::company)
               (setq defCo-edge left-neighbor)))
        
        (cond
         (title-edge
          (let ((uplink (edge-used-in title-edge))
                (new-title-edge
                 (make-default-binary-edge
                  title-edge
                  of-co-edge
                  (lookup/cfr/resolved category::title
                                       `(,category::title ,category::company)))))
            (when uplink
              ;(replace-from-below/rightwards
              ; uplink new-title-edge)
              ;;  3/22 using different routine because that one doesn't
              ;; promulgate the referent
              (replace-&-promulgate-edge uplink
                                         new-title-edge
                                         title-edge))))

         (defCo-edge
           (when (typep (edge-referent defCo-edge) 'company-anaphor)
             (let ((uplink (edge-used-in defCo-edge))
                   (new-company-edge
                    (make-binary-edge/explicit-rule-components
                     defCo-edge
                     of-co-edge
                     :category category::company
                     :referent (edge-referent of-co-edge))))

               (when uplink
                 (replace-&-promulgate-edge
                  uplink new-company-edge defCo-edge)))))
         )))))


;;;---------------------------------------
;;; searching leftwards from company pp's
;;;---------------------------------------
                            
(defparameter *maximum-scan-of-pp* 10)

(defun company/search/je-or-title (at-co-edge)
  (let ((position (pos-edge-starts-at at-co-edge))
        (tt-count 0)
        edge-found label-found rule spanning-edge )

    (when *trace-CA-search*
      (format t "~&Searching left from ~A for a job-event or title~%"
              at-co-edge))

    (catch  'boundary-condition-reached
      (loop
        (multiple-value-bind (edge label next-position)
                             (search/next-treetop/leftward position)

          (when *trace-CA-search*
            (format t "~&  found ~A~%" edge))

          (cond ((listp label)
                 (cond ((member category::job-event label)
                        (setq label-found category::job-event)
                        (setq edge-found (find category::job-event edge
                                               :key #'edge-category))
                        (return))
                       ((member category::title label)
                        (setq label-found category::title)
                        (setq edge-found (find category::job-event edge
                                               :key #'edge-category))
                        (return))
                       (t (setq position next-position))))

                ((eq label category::job-event)
                 (setq label-found category::job-event
                       edge-found edge)
                 (return))

                ((eq label category::title)
                 (setq label-found category::title
                       edge-found edge)
                 (return))


                ;; killers
                ((eq label word::period)
                 (return))

                ((eq label category::be)
                 (return))


                (t (when (> (incf tt-count)
                            *maximum-scan-of-pp*)
                     (return))
                   (setq position next-position))))))

    (if edge-found
      (then
        (setq rule
              (cond
               ((eq label-found category::job-event)
                (lookup/cfr/resolved category::job-event
                                     `(,category::job-event ,category::at-company)))
               ((eq label-found category::title)
                (lookup/cfr/resolved category::title
                                     `(,category::title ,category::at-company)))))
        (setq spanning-edge
              (make-CA-binary-edge edge-found at-co-edge
                                   :rule rule
                                   :matrix-edge edge-found
                                   :direction :left))
        ;; but that CA edge leaves the at+co naked and exposed to
        ;; the next round of CA, leading to a loop

        (setq spanning-edge
              (make-default-binary-edge
               edge-found at-co-edge rule))

        (when *trace-CA-search*
          (format t "~&   spanning with ~A~%" spanning-edge)))

      (else
        (when *trace-CA-search*
          (format t "~&   couldn't find it~%"))))))


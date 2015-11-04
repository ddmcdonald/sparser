;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "title CA"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  1.5  April 1991

;; initiated in February
;; 1.1  (3/19 v1.8.1)  Added a case searching to the right for the pers+title
;;      cases where the customary apposative has been reversed.
;; 1.2  (3/22)  Appreciated another case for and/title, fixed case where it
;;      expected an edge but got a verb
;; 1.3  (3/25)  Added case to notice "[name], [title]", and wrote Compose-
;;      title-into-composite-title, which was undefined.
;; 1.4  (3/26)  extended ",[title]" search to notice of-person
;; 1.5  (4/10 v1.8.2) Extended Search-left-over-conjunction/from-title to
;;      notice ", and"

(in-package :CTI-source)


(set-ca-action category::title    'search-out-from-title)

(set-ca-action category::title-pp 'nil)


(defun search-out-from-title (title-edge)
  (search-left-from-title title-edge))
  ;(when (treetop? title-edge)
  ;  ;; check that it hasn't been superceeded by the left-check
  ;  (search-right-from-title title-edge)))


;;;----------------
;;; searching Left
;;;----------------

(defun search-left-from-title (title-edge)
  (cond ;((comma-just-to-its-left title-edge)
        ; (search-left-over-comma/from-title title-edge))
        ((conjunction-just-to-its-left title-edge)
         (search-left-over-conjunction/from-title title-edge))
        ;(t (search-immediately-left/from-title title-edge))
        ))


;; does je + and/title
;;
(defun search-left-over-conjunction/from-title (title-edge)
  (let* ((left-tt (edge-to-its-left/jump-word title-edge))
         left-category rule edge)

    (when (typep left-tt 'edge)
      (cond
       ((eq (setq left-category (edge-category left-tt)) category::job-event)
        (setq rule (lookup/cfr/resolved category::job-event
                                        `(,category::job-event ,category::and/title)))
        (unless rule
          (break/debug "Established rule is now undefined"))
        (setq edge
             (make-default-binary-edge left-tt title-edge rule)))))))
      


#|
(defun search-left-over-comma/from-title (title-edge)  
  ;;look for a person
  (let ((neighbor-edge (edge-to-its-left/jump-word title-edge)))
    (when (typep neighbor-edge 'edge)
      (let ((neighbors-category (edge-category neighbor-edge)))
        (cond
         ((eq neighbors-category category::person)
          (let* ((rule (lookup/cfr/resolved category::person
                                            `(,category::person ,category::title)))
                 (new-edge
                  (make-default-binary-edge neighbor-edge
                                            title-edge
                                            rule)))
            new-edge))

         ((eq neighbors-category category::of-person)
          (let ((person-edge
                 (edge-with-label-at/ends-there?
                  category::person (pos-edge-ends-at neighbor-edge))))
            (unless person-edge
              (break "[of-person] edge does not end in a [person]~
                      ~%   ~A" neighbor-edge))
            (let*
              ((rule1 (lookup/cfr/resolved category::person
                                           `(,category::person ,category::title)))
               (spanning-edge1
                (make-default-binary-edge neighbor-edge title-edge rule1))
               (rule2 (lookup/cfr/resolved category::of-person
                                           `(,word::|of| ,category::person)))
               (spanning-edge2
                (make-default-binary-edge (edge-left-daughter neighbor-edge)
                                          spanning-edge1
                                          rule2)))
              (do-treetop spanning-edge2 :moment :ca))))

         ((eq neighbors-category category::name)
          (let* ((rule (lookup/cfr/resolved category::person
                                            `(,category::name ,category::title))))
            (when rule
              (do-explicit-rule-completion
               neighbor-edge
               (left-treetop-at (pos-edge-starts-at title-edge))
               rule)
              
              ;; now form the full edge
              (search-left-over-comma/from-title title-edge))))
         )))))


(defun search-immediately-left/from-title (title-edge)
  (let* ((pivot-position (pos-edge-starts-at title-edge))
         (treetop-to-the-left (left-treetop-at pivot-position)))
    (if (typep treetop-to-the-left 'edge)
      (then
        ;; look for an adjacent title, most likely a prematurely
        ;; incorporated standalone prefix like "executive"
        (let ((title-on-right-fringe
               (search-daughters/right treetop-to-the-left category::title)))
          (if title-on-right-fringe
            (let ((left-title (edge-referent title-on-right-fringe))
                  (right-title (edge-referent title-edge))
                  merged-title )
              (cond
               ((composite? left-title)
                (compose-title-into-composite-title
                 title-edge title-on-right-fringe
                 right-title left-title))
               ((setq merged-title
                      (titles-merge left-title right-title))
                (replace-by-merged-title-and-promulgate
                 merged-title title-on-right-fringe title-edge))
               (t (format t "~%Search-left-from-title: ~
                             no relationship between the titles~%")
                  ;(break "no relationship between the titles")
                  )))
            (else ;; no title to the left
              ))))
      (else ;; there's a word to the left, not an edge
        ))))  |#


;;;------------
;;; predicates
;;;------------

(defun titles-merge (left-title right-title)
  ;; syntactic sugar in case we want to separate out these functions
  (lookup/title left-title right-title))


;;;----------------------------------------
;;; drivers for the replacement operations
;;;----------------------------------------

(defun compose-title-into-composite-title (right-edge left-edge
                                           right-title composite-left-title)
  ;; have to extract the title from the composite before we can
  ;; check if it merges and do the promulgation
  (let* ((left-title
          (extract-title-from-composite composite-left-title))
         (merged-title (titles-merge left-title right-title)))
  
    (when merged-title
      (replace-by-merged-title-and-promulgate
       (replace-rightmost-title composite-left-title
                                merged-title)
       left-edge
       right-edge))))


(defun replace-by-merged-title-and-promulgate (merged-title
                                               left-edge
                                               right-edge)
  (declare (ignore merged-title))
  ;;/// would it save anything to have a variant edge routine that
  ;; could take advantage of our already knowning this?
  (let ((parent-edge (edge-used-in left-edge))
        (spanning-edge
         (make-default-binary-edge
          left-edge right-edge
          (lookup/cfr/resolved category::title `(,category::title ,category::title)))))
    (when parent-edge
      (replace-&-promulgate-edge
       parent-edge    ;; where the replacement occurs
       spanning-edge  ;; the replacement
       left-edge)     ;; what's replaced
      )))


(defun span-conjoined-treetop-titles (left-edge right-edge)
  ;; no parent, and the result is itself a treetop
  (let ((spanning-edge
         (make-binary-edge/explicit-rule-components
          left-edge
          right-edge
          :category  category::title
          :rule-name :title+and/title_by-CA
          :form nil
          :referent-function
             #'(lambda (left-edge right-edge)
                 (referent-from-rule left-edge right-edge nil
                                     *title+and/title_by-CA*))
             )))

    (do-treetop spanning-edge :moment :CA)))


(defun span-&-promulate-from-buried-title (buried-left-title-edge
                                           right-title-edge)
  ;; another case for and/title
  (let ((parent-edge (edge-used-in buried-left-title-edge))
        (spanning-edge
         (make-binary-edge/explicit-rule-components
          buried-left-title-edge
          right-title-edge
          :category  category::title
          :rule-name :title+and/title_by-CA
          :form nil
          :referent-function
             #'(lambda (left-edge right-edge)
                 (referent-from-rule left-edge right-edge nil
                                     *title+and/title_by-CA*))
             )))

    (when parent-edge
      (replace-&-promulgate-edge
       parent-edge
       spanning-edge
       buried-left-title-edge))))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991 David D. McDonald & the Brandeis - NMSU/CRL
;;;                    "Tipster" project  -- all rights reserved
;;;
;;;     File:  "event/agent"
;;;   Module:  "grammar;model:sl:JV:"    ("generative lexicon")
;;;  version:  November 1991    v2.1

;; initiated 11/25

(in-package :CTI-source)


(defun can-be-an-agent/subject (symbol)
  (let ((agent (category-named symbol)))
    (unless agent
      (error "No category named ~A has been defined" symbol))

    (define-cfr category::event
                (list  agent  category::event/agent)
      :form category::s
      :referent
         (resolve-referent-expression
          '(:daughter right-edge
            :binding (:object   right-edge
                      :variable agent
                      :value    left-edge))))))


(can-be-an-agent/subject 'person)
(can-be-an-agent/subject 'company)


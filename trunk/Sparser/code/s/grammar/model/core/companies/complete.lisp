;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "complete"
;;;   Module:  "model;core:names:companies"
;;;  version:  1.0  March 1991

;; initiated 3/19

(in-package :CTI-source)


(set-completion-action/edge/category category::company
                                     'company-completion-action)


(defun company-completion-action (co-edge)
  (unless (eq (edge-rule co-edge)
              :respan-over-pronoun)

    (let ((longer-co-edge
           (check-for-comma-based-CO-name co-edge)))

      (check-if-topic/company (or longer-co-edge
                                  co-edge)))))


;;;------------------------
;;; "Goldman, Sachs & Co."
;;;------------------------

#| The proper-name fsa isn't allowed to look across commas, so
we have to here once we have evidence that some segment of the
total name is a company and have completed that edge.  |#

(defun check-for-comma-based-CO-name (co-edge)
  ;; assumes that the segment that can be identified as a company
  ;; is at the right of the total company name, and so only looks
  ;; to its left.
  (let ((new-name-segments
         (snarf-name-element-after-comma co-edge nil)))

    (when new-name-segments
      (let ((new-co-edge
             (extend-company-edge co-edge new-name-segments)))
        new-co-edge))))


(defun snarf-name-element-after-comma (last-edge
                                       names-so-far)
  ;; when there's one name just to the left from a comma, there
  ;; are probably several.  This keeps going until there is no
  ;; further "name ," pattern and returns all the ones it's found

  (if (comma-just-to-its-left last-edge)
    (let* ((comma-edge
            (ev-top-node (pos-ends-here (pos-edge-starts-at last-edge))))
           (edges-ending-at-comma
            (pos-ends-here (chart-position-before
                            (pos-edge-starts-at last-edge))))
           (topnode (ev-top-node edges-ending-at-comma)))

      (cond
       ((null topnode) ;; no edge here
        names-so-far )
       ((eq topnode :multiple-initial-edges)
        (let ((array (ev-edge-vector edges-ending-at-comma))
              name-edge edge)
          (dotimes (i (ev-number-of-edges edges-ending-at-comma) nil)
            (setq edge (aref array i))
            (when (eq (edge-category edge) category::name)
              (setq name-edge edge)
              (return)))
          (if name-edge
            (snarf-name-element-after-comma
             name-edge (cons name-edge (cons comma-edge names-so-far)))
            names-so-far)))
       
       ((typep topnode 'edge)
        (if (eq (edge-category topnode) category::name)
          (snarf-name-element-after-comma
           topnode (cons topnode (cons comma-edge names-so-far)))
          names-so-far))
       
       (t (break/debug "Shouldn't have gotten here")
          :foo )))

    (else
      names-so-far)))


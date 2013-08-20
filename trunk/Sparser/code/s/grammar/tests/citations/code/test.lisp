;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "test"
;;;   Module:  "grammar;tests:citations:code:"
;;;  version:  0.1 August 2013

;; initiated 11/4/93 v2.3
;; 0.1 (12/22) Added appreciation of :multiple-initial edges
;;     (9/4/96) added more cases to the mismatch descriptions.
;;     (8/19/13) Added more printed results

(in-package :sparser)


(defvar *citation-report-stream* nil
  "set in Test-citation")


(defun test-citation (c &optional (stream *standard-output*))
  (let ((string (cite-string c))
        (official-tts (cite-edge-descriptors c))
        (official-bracketing (cite-bracketing c))
        (*citation-report-stream* stream))

    (format stream "~&~%Testing \"~A\"~
                    ~%   " string)

    ;; if we get a lisp error from this, tuffers.
    (pp string)
    (when official-bracketing
      (format stream "~&   bracketing:  ~a"
              (match-bracketing-to-citation official-bracketing)))
    (when official-tts
      (format stream "~&   treetops:  ~a"
              (match-chart-to-citation official-tts)))))

(defun match-bracketing-to-citation (official-bracketing)
  (let ((bracketing (bracketing-tree)))
    (cond ((equal official-bracketing bracketing)
           :match)
          (t
           (different-bracketing official-bracketing bracketing)))))

(defun match-chart-to-citation (official-tts)
  (let ((tts-this-time
         (scan-treetops-and-form-citation-exps)))

    (do ((reference-edge (pop official-tts)
                         (pop official-tts))
         (test-edge (pop tts-this-time)
                    (pop tts-this-time))
         (validated-edges nil
                          (push test-edge validated-edges))
         (count 1 (1+ count)))

        ((or (null test-edge)
             (null reference-edge))
         (when (or test-edge reference-edge)
           (if test-edge
             (test-is-longer-than-citation test-edge tts-this-time)
             (citation-is-longer-than-text reference-edge official-tts)))
         :matched )

      (match-edge-descriptors reference-edge test-edge
                              count))))



(defun match-edge-descriptors (reference-edge test-edge count)
  (declare (ignore count))
  (let ((off-start  (first reference-edge))   ;; "official-..."
        (off-end    (third reference-edge))
        (off-item (second reference-edge))
        (test-start (first test-edge))
        (test-end   (third test-edge))
        (test-label (second test-edge)))

    (cond ((symbolp off-item)
           (setq off-item (find-symbol (symbol-name off-item)
                                       *category-package*)))
          ((listp off-item) ;; multiple-edge
           (setq off-item
                 `(:multiple-edges
                   ,@(mapcar #'(lambda (item)
                                 (if (symbolp item)
                                   (find-symbol (symbol-name item)
                                                *category-package*)
                                   item))
                             (cdr off-item))))))

    (let ((test-item (match-edge/label-to-symbol test-label)))

      (cond ((and (= off-start test-start)
                  (= off-end test-end)
                  (equal off-item test-item))
             :match )

            ((and (= off-start test-start)
                  (= off-end test-end)
                  (not (equal off-item test-item)))
             (same-span-different-label reference-edge
                                        test-edge))

            ((and (or (not (= off-start test-start))
                      (not (= off-end test-end)))
                  (equal off-item test-item))
             (same-label-different-span reference-edge
                                        test-edge))

            ((and (or (not (= off-start test-start))
                      (not (= off-end test-end)))
                  (not (equal off-item test-item)))
             (different-span-different-label reference-edge
                                             test-edge))


            (t (break "new case in comparison"))))))



(defun match-edge/label-to-symbol (label)
  (etypecase label
    (referential-category (label-symbol label))
    (category (label-symbol label))
    (word (word-pname label))
    (polyword (pw-pname label))
    (list  ;; (:multiple-edges L1 L2 ...)
     `(:multiple-edges
       ,@(mapcar #'match-edge/label-to-symbol
                 (cdr label))))))



;;;------------------------
;;; Possible announcements
;;;------------------------

(defun same-span-different-label (reference-edge test-edge)
  (format *citation-report-stream*
          "~%   Mismatch -- same length of span but different labels~
           ~%     cited:  ~A~
           ~%     actual: ~A" reference-edge test-edge))

(defun same-label-different-span (reference-edge test-edge)
  (format *citation-report-stream*
          "~%   Mismatch -- same label but different length of span~
           ~%     cited:  ~A~
           ~%     actual: ~A" reference-edge test-edge))

(defun different-span-different-label (reference-edge test-edge)
  (format *citation-report-stream*
          "~%   Mismatch -- different labels and different length spans:~
           ~%     cited: ~A~
           ~%     actual: ~A" reference-edge test-edge))

(defun different-bracketing (reference-bracketing test-bracketing)
  (format *citation-report-stream*
          "~%   Mismatch -- different bracketing:~
           ~%     cited: ~A~
           ~%     actual: ~A" reference-bracketing test-bracketing))

(defun test-is-longer-than-citation (edge-just-checked remaining-edges)
  (format *citation-report-stream*
          "~%   Mismatch -- There are more edges in the actual analysis~
           ~%               than there were in the cited analysis.~
           ~%      extra edges: ")
  (format *citation-report-stream* "~A" edge-just-checked)
  (when remaining-edges
    (dolist (edge remaining-edges)
      (format *citation-report-stream*
              "~&                   ~A" edge))))


(defun citation-is-longer-than-text (edge-just-checked remaining-edges)
  (format *citation-report-stream*
          "~%   Mismatch -- There are more edges in the cited analysis~
           ~%               than there were in the actual analysis.~
           ~%      extra edges: ")
  (format *citation-report-stream* "~A" edge-just-checked)
  (when remaining-edges
    (dolist (edge remaining-edges)
      (format *citation-report-stream*
              "~&                   ~A" edge))))


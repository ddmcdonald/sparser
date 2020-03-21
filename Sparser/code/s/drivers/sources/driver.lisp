;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "driver"
;;;   Module:  "drivers;sources:"
;;;  Version:  March 2020

;; Created 3/20/20 to organize the marshalling and reading of json-based
;; documents with the same range of options as run-an-article has
;; for nxml documents.

(in-package :sparser)

;; When we exploring beyond just the defaults, setting this
;; will likely be part of the parameterization
(setq *default-json-processing-fn* 'make-document)

#|
 1. (collect-json-directory) -- prime the pump

Loading 803 file pathnames into the hopper.
To process the next one, call (sparser::do-next-json)
To see what the next is, call (sparser::peek-next-json)
To do the rest, call (sparser::do-remaining-json)
To do a batch of n using (sparser::do-remaining-json :n n)
Remaining list stored in sparser::*json-files-to-read*.


 2. (do-next-json) --> #<article >
  Sets *current-json-based-article* to the article

 3. (run-json-article *current-json-based-article* :quiet nil :show-sect t)

|#

(defun run-json-article (article &key (source :next)
                                   (sweep t) (read t)
                                   (quiet t) (skip-errors t)
                                   (show-sect nil) (stats nil))
  "Modeled directly on run-an-article in R3"
  (let ((*show-section-printouts* show-sect)
        (*trap-error-skip-sentence* skip-errors))
    (declare (special *show-section-printouts*
                      *trap-error-skip-sentence*))
    ;; If sweep is nil, this returns the raw document,
    ;; i.e. no section-of-sections or sentences.
    (when sweep
      ;; Make the sentences and implicit subsections.
      ;; Same as r3::sweep-article but w/o the handler.
      (sp::sweep-document article))
    (unless sweep ;; later pass contingent on first
      (setq read nil))
    (when read
      (if quiet
        (sp::with-total-quiet (sp::read-from-document article))
        (sp::read-from-document article)))
    (when stats
      (summary-document-stats article))
    article))

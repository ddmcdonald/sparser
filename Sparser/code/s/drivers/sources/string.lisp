;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990-1991  Content Technologies Inc.
;;; copyright (c) 1992,2013,2016,2023 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "string"
;;;   Module:  "drivers;sources:"
;;;  Version:  October 2023

;; Created February 1991 or earlier
;; 5/1/13 Added section and paragraph initialization that will not be
;;  in place in the normal use of this form via the abbreviation p.
;;  Might be overkill, but we don't want anything inhibited. 9/23/13
;;  added paragraph initialization
;; 0.1 (10/3/13) Reorganized the initialization. Push out to commmon path

(in-package :sparser)

(export 'analyze-text-from-string)

(defun analyze-text-from-string (string)
  "Entry point for parsing an explicit string, called in simple
 form by the abbreviation function 'p'. Comparable to the file
 parser analyze-text-from-file ('f') and the document analysis
 method read-paragraph-guts-internal."
  (declare (special *trap-error-skip-sentence*
                    *string-from-analyze-text-from-string*
                    *prescan-character-input-buffer*))
  (setq *string-from-analyze-text-from-string* string)
  (establish-character-source/string string)
  (when *prescan-character-input-buffer*
    (scan-and-swap-character-buffer))
  (cond
    (*trap-error-skip-sentence*
      (handler-case
          (analysis-core)         
        (error (e)
          (ignore-errors
            (format t "~&Error in ~s~%~a~%~%" (current-string) e)))))
    (t
     (analysis-core))))


(defun analyze-string-as-article (string
                                  &key name quiet skip)
 "Does the equivalent of finish-paragraph-based-article. Has the
 string parsed. In the normal case it will be a multi-sentence
 example. This will as always entail the creation of a paragraph
 around the text, and a vacuous section and article above it,
 which we want for their after-actions methods. Report the run time
 and other stats as determined by their gating globals. We also
 set the various fields on our paragraph that would normally have
 been done by new-ortho-paragraph such as its content string and
 end position.  Returns the article object.
 Keys are as in analyze-text-from-file:
   :name -- sets the name field of the article
   :quiet -- runs within with-total-quiet, suppresses error
   :skip -- errors within a sentence do not go to the debugger
"
  (clean-out-history-and-temp-objects)
  (set-initial-state :name name) ; for the article object

  (start-timer '*time-to-read-document*)

  (let ((*trap-error-skip-sentence* skip)
        (*show-runtime-stats* nil) ; instead we're doing this here
        (*paragraphs-from-orthography* (string-contains-newline string))
        (*cache-warnings-for-later-review* quiet))
    (declare (special *trap-error-skip-sentence*
                      *show-runtime-stats*
                      *paragraphs-from-orthography*
                      *cache-warnings-for-later-review*))

    (if quiet
      (with-total-quiet (analyze-text-from-string string))        
      (analyze-text-from-string string))

    (let ((article (article)))
      (unless *paragraphs-from-orthography*
        ;; When it turns out that we're doing paragraphs (rather than
        ;; a simple string without newlines in it), the analyse text
        ;; call will be directed in initiate-successive-sweeps to
        ;; parse-successive-paragraphs. That routine ends with a call
        ;; to finish-paragraph-based-article, which is what the
        ;; code here is based on.
        (let ((section (first-section article)))
          (unless section (error "threading bug: no section in ~a" article))
          (unless (every #'(lambda (c) (typep c 'paragraph)) (children section))
            (error "Something other than paragraphs in ~a" section))
          
          ;; terminate the paragraph
          (let ((p *current-paragraph*)
                (start-pos (position# 1))); cribbs from begin-new-paragraph
            (setf (starts-at-pos p) start-pos
                  (starts-at-char p) (pos-character-index start-pos))
            (setf (ends-at-pos p)
                  (chart-position-before (next-chart-position-to-fill)))
            (setf (ends-at-char p) (pos-character-index (ends-at-pos p)))
            (setf (content-string p) string)

            (after-actions p)
            (after-actions section)
            (after-actions article)

            (stop-timer '*time-to-read-document*)
            (report-time-to-read-article article)
            ;; wrap this call in appropriates parameter settings
            ;; depending on what stats you want to see.
            (summary-document-stats article))))

      article)))
  

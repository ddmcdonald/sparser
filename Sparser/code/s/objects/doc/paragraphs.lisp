;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "paragraphs"
;;;   Module:  "objects;doc:"
;;;  Version:  December 2018

#| Aggregates the special handling of paragraph objects that
are found incrementally during the handling of large texts.

Builds on the document objects developed for Big Mechanism
and the context and content handling of Grok and C3.

Lets us start fresh (12/18) rather than try to sift through
the original orthographic paragraph handling of the early 1990s

|#

(in-package :sparser)


;;; control flag

(defvar *paragraphs-from-orthography* nil
  "Flag used to indicate that we are getting our paragraphs
   while we are scanning the text, usually by interpreting
   the newlines as indicating paragraphs.")


;;; on/off

(defun ortho-paragraphs/on ()
  (setq *paragraphs-from-orthography* t))

(defun ortho-paragraphs/off ()
  (setq *paragraphs-from-orthography* nil))


;;; detection and initial handling

#|
 scan-next-position ()
   -- driver for incrementally populating the chart
      Works of state variables so it can robustly
      always pick up from where it left off.

 add-terminal-to-the-chart ()
   -- called by scan-next-position to get the next 
      word object (calls next-terminal).
      Does the advancing of the chart position to fill,
      wrapping it if necessary. Handles whitespace.
      Invokes the newline handler when the word
      denotes a newline. 

 sort-out-result-of-newline-analysis (position word)
   -- Defined in analyzers/psp/fill-chart/newline.lisp.
      Clearing house for all the old ways of handling
      this, including paragraph and sentence markup.
|# 

(defvar *prior-para-newline-pos* nil)
(define-per-run-init-form
    '(setq *prior-para-newline-pos* (position# 0)))

;; (trace-paragraphs)

(defun new-ortho-paragraph (end-pos)
  "Called from sort-out-result-of-newline-analysis when we
   are getting our paragraphs from the orthography (versus markup)"

  (if (eq end-pos (chart-position-after *prior-para-newline-pos*))
    (then ;; two (or more) newlines in a row
      (setq *prior-para-newline-pos* end-pos))
    
    (let ((terminating *current-paragraph*))
      (when *previous-paragraph*
        (setf (next *previous-paragraph*) terminating)
        (setf (previous terminating) *previous-paragraph*))
      
      ;; Much of this is slightly, but importantly, different from
      ;; what begin-new-paragraph does, so consider making a tailored
      ;; version of it.
      (setf (ends-at-pos terminating) end-pos)
      (setf (ends-at-char terminating) (pos-character-index end-pos))
      (install-contents terminating)
      (setq *prior-para-newline-pos* end-pos)

      (let ((starting (begin-new-paragraph end-pos)))
        ;; creating a new paragraph updates *previous-paragraph*
        ;; to the value of the current paragraph
      
        (setf (next terminating) starting)
        (setf (previous starting) terminating)
        (setf *current-paragraph* terminating)
      
        (let* ((start ;; Get the string of text
                (if terminating (starts-at-char terminating) 1))
               (end (pos-character-index end-pos))
               (string (extract-string-from-char-buffers start end)))
          ;; remove the leading #\newline characters
          (setq string (remove-leading-whitespace string))
          (setf (content-string terminating) string)
          
          (tr :nl-finished-paragraph terminating end-pos)
          terminating)))))


(defun parse-successive-paragraphs ()
  (let ((start-pos (position# 1))
        eos-pos  sentence  previous-paragraph )
    (loop
       (multiple-value-setq (eos-pos sentence)
         (scan-sentences-and-pws-to-eos start-pos))

       (when (eq (pos-terminal eos-pos) *end-of-source*)
         (tr :sp-eos-return)
         (return))

       (let* ((paragraph (parent sentence))
              (s1 (children paragraph)))
        
         (when (eq paragraph previous-paragraph)
           (error "Bad threading. Going to loop on ~a" paragraph))
         
         (tr :sp-para-content paragraph)
         (catch 'do-next-paragraph
           (sweep-successive-sentences-from s1))
          
         (when (null (next paragraph))
           (tr :sp-null-next-return paragraph)
           (return))
         
         ;;(push-debug `(,paragraph)) (break "After update: look around")

         (setq previous-paragraph paragraph)
         (setq start-pos (chart-position-after (ends-at-pos paragraph)))
         
         (setq *current-paragraph* (next paragraph))
         ;; Parent of initialized sentences is the current paragraph
         ;; so we update it before going around the loop
         (initialize-sentences :start-pos start-pos)))))



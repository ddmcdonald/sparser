;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "paragraphs"
;;;   Module:  "objects;doc:"
;;;  Version:  January 2019

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

(defvar *prior-para-newline-pos* nil
  "The position of the previous instance of paragraph-marking
   newline character. Used in setting the bounds of the paragraphs.")
(define-per-run-init-form
    '(setq *prior-para-newline-pos* (position# 0)))

;; (trace-paragraphs)

(defun new-ortho-paragraph (end-pos)
  "Called from sort-out-result-of-newline-analysis when we
   are getting our paragraphs from the orthography (versus markup).
   Interprets multiple newlines as delimiting the ongoing paragraph.
   'End-pos' is the position of the newline character and the end
   position of the ongoing paragraph ('terminating')."

  (if (eq end-pos (chart-position-after *prior-para-newline-pos*))
    (then ;; two (or more) newlines in a row
      (tr :nl-immediate-newline end-pos)
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
          (setq string (remove-trailing-whitespace string))
          ;;/// Replace newlines with paragraph section marker?
          (setf (content-string terminating) string)
          
          (tr :nl-finished-paragraph terminating end-pos)
          terminating)))))


(defun parse-successive-paragraphs ()
  "Called from the master driver, initiate-successive-sweeps when
   the flag is up indicating that we're constructing paragraphs
   on the basis of the orthography of the text (see new-ortho-paragraph).
   Orchestrates the parsing of successive, incrementally created
   paragraphs. Stops at eos or if there's no next paragraph.
   Note that the sentence scan knows to treat newlines as paragraph
   boundaries in this mode and doesn't cross them."
  
  (declare (special *tts-after-each-section*))
  
  (let ((start-pos (position# 1))
        eos-pos  sentence  previous-paragraph )
    
    (if (eq (pos-terminal start-pos) *end-of-source*)
      ;;/// possibly spurious event while debugging
      (tr :sp-eos-return)
      
      (loop
         (multiple-value-setq (eos-pos sentence) ;; eos = 'end of sentence'
           ;; Sweep to the end of the paragraph
           (scan-sentences-and-pws-to-eos start-pos))

#| The scan-sentences calls scan-next-position. Periodically that will
 scan a newline character, which will trigger new-ortho-paragraph to
 terminate the *current-paragraph* and begin a new one. Since it now
 knows the length of the ongoing (current) paragraph it can populate
 its content-string from the character buffer.
|#

         ;; (format t "~&>>> para-length = ~a~%"
         ;;         (length (content-string *current-paragraph*)))
         ;; (break "break?") 

         (when (or (eq (pos-terminal eos-pos) *end-of-source*)
                   (null sentence))
           (tr :sp-eos-return)
           (return))

         (when (eq (pos-terminal eos-pos) *end-of-source*)
           (tr :sp-eos-return)
           (return))

         (let* ((paragraph (parent sentence))
                (s1 (children paragraph)))
           
           (when (eq paragraph previous-paragraph)
             (error "Bad threading. Going to loop on ~a" paragraph))
           
           (tr :sp-para-content paragraph)

           (unless (= 0 (length (content-string *current-paragraph*)))
             (catch 'do-next-paragraph
               ;; Continue in rest of parsing starting with the first sentence
               (sweep-successive-sentences-from s1))

             (when *tts-after-each-section*
               (format t "~^&~%")
               (tts t (starts-at-pos paragraph) (ends-at-pos paragraph))
               (format t "~^&~%"))
           
             (when (null (next paragraph))
               (tr :sp-null-next-return paragraph)
               (return)))

           (unless (ends-at-pos paragraph)
             (error "paragraph ~a not terminated" paragraph))

           (setq previous-paragraph paragraph)
           (setq start-pos (chart-position-after (ends-at-pos paragraph)))
           ;;(push-debug `(,paragraph)) (break "After update: look around")
           
           (setq *current-paragraph* (next paragraph))

          #| ;; null-string?
           (when (= 0 (length (content-string (next paragraph))))
             (tr :sp-empty-paragraph)|#
           
           ;; Parent of initialized sentences is the current paragraph
           ;; so we update it before going around the loop
           (initialize-sentences :start-pos start-pos))))))

    



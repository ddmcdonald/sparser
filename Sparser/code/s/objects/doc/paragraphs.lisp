;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "paragraphs"
;;;   Module:  "objects;doc:"
;;;  Version:  June 2021

#| Aggregates the special handling of paragraph objects that
are found incrementally during the handling of large texts.

Builds on the document objects developed for Big Mechanism
and the context and content handling of Grok and C3.

Lets us start fresh (12/18) rather than try to sift through
the original orthographic paragraph handling of the early 1990s

|#

(in-package :sparser)

;;;--------------
;;; control flag
;;;--------------

(defvar *paragraphs-from-orthography* nil
  "Flag used to indicate that we are getting our paragraphs
   while we are scanning the text, usually by interpreting
   the newlines as indicating paragraphs.
   This flag is read by initiate-successive-sweeps the driver of
   the whole analysis. It signals that the text should be handled
   by parse-successive-paragraphs below.
   The usual protocol is for analyze-text-from-file to
   dynamically bind this to t.")

;;;--------
;;; on/off
;;;--------
;;  These are good if you're testing by hand

(defun ortho-paragraphs/on ()
  (setq *paragraphs-from-orthography* t))

(defun ortho-paragraphs/off ()
  (setq *paragraphs-from-orthography* nil))

;;;--------------------------------
;;; detection and initial handling
;;;--------------------------------

#|
 scan-next-position ()
   -- driver for incrementally populating the chart
      Works off state variables so it can robustly
      always pick up from where it left off.

 add-terminal-to-the-chart ()
   -- called by scan-next-position to get the next 
      word object. (Calls next-terminal).
      Does the advancing of the chart position to fill,
      wrapping it if necessary. Handles whitespace.
      Invokes the newline handler when the word
      denotes a newline. 

 sort-out-result-of-newline-analysis (position word)
   -- Defined in analyzers/psp/fill-chart/newline.lisp.
      Clearing house for all the old ways of handling
      this, including paragraph and sentence markup.
|#

;;;----------------
;;; state variable
;;;----------------

(defvar *prior-para-newline-pos* nil
  "The position of the previous instance of a paragraph-marking
   newline character. Used in setting the bounds of the paragraphs.")

(define-per-run-init-form
    ;; reset to inits initial value at the start of each pass through
    ;; analysis-core.
    '(setq *prior-para-newline-pos* (position# 0)))


;;;------------------------------------------------------
;;; close off the previous paragraph, start the next one
;;;------------------------------------------------------

;; (trace-paragraphs)

(defun new-ortho-paragraph (end-pos)
  "Called from sort-out-result-of-newline-analysis when we
   are getting our paragraphs from the orthography (versus markup),
   which is signalled by the flag *paragraphs-from-orthography* that
   is typically dynamically bound by analyze-text-from-file for
   the duration of reading the file.
     Interprets newlines as delimiting the ongoing paragraph.
   'End-pos' is the position of the newline character and the end
   position of the ongoing paragraph ('terminating').
      When this is called we are terminating an ongoing paragraph.
   The initial paragraph was created by initialize-paragraphs, which
   was called by initialize-sections via begin-new-article when
   per-article-initializations is called at the start of a run."

  (declare (special *prior-para-newline-pos*
                    *current-paragraph* *previous-paragraph*))

  (if (eq end-pos (chart-position-after *prior-para-newline-pos*))
    (then ;; two (or more) newlines in a row
      (tr :nl-immediate-newline end-pos)
      (setq *prior-para-newline-pos* end-pos))
    
    (let ((terminating *current-paragraph*))
      (when *previous-paragraph*
        (setf (next *previous-paragraph*) terminating)
        (setf (previous terminating) *previous-paragraph*))
      
      ;; Much of this is slightly, but importantly, different from
      ;; what begin-new-paragraph does. ///Consider making a tailored
      ;; version of that.
      (setf (ends-at-pos terminating) end-pos)
      (setf (ends-at-char terminating) (pos-character-index end-pos))
      (setq *prior-para-newline-pos* end-pos)

      (let ((starting (begin-new-paragraph end-pos)))
        ;; creating a new paragraph updates *previous-paragraph*
        ;; to the value of the paragraph that we're terminating
      
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
  "Called from the master driver, initiate-successive-sweeps, when
   the flag is up indicating that we're constructing paragraphs
   on the basis of the orthography of the text (see new-ortho-paragraph).
   Orchestrates the parsing of successive, incrementally created
   paragraphs. Stops at eos or if there's no next paragraph.
   Note that the sentence scan knows to treat newlines as paragraph
   boundaries in this mode and doesn't cross them.
   Invokes the standard after-actions methods on each paragraph.
   At the end it executes them on the higher document elements by
   calling finish-paragraph-based-article "
  
  (declare (special *tts-after-each-section* *current-paragraph*))
  
  ;; pump priming
  (let ((start-pos (position# 1))
        eos-pos  sentence  previous-paragraph )
    
    (if (eq (pos-terminal start-pos) *end-of-source*)
      ;;/// possibly spurious event encountered while debugging
      (tr :sp-eos-return)

      (else
        (loop
           (multiple-value-setq (eos-pos sentence) ;; eos = 'end of sentence'
             ;; Sweep to the end of the paragraph, return the final
             ;; sentence (= *current-sentence*)
             (scan-sentences-and-pws-to-eos start-pos))

           #| The scan sentences function calls scan-next-position. Periodically
           that will scan a newline character, which will trigger new-ortho-paragraph to
           terminate the *current-paragraph* and begin a new one. Since it now
           knows the length of the ongoing (current) paragraph it can populate
           its content-string from the character buffer.
           |#
           ;;--- check the terminating conditions before we
           ;;  start any parsing
           
           (when (or (eq (pos-terminal eos-pos) *end-of-source*)
                     (null sentence))
             (tr :sp-eos-return)
             (return))

           ;;--- parse the paragraph
           
           (let* ((p (parent sentence))
                  (s1 (children p)))
             ;; The sentence scan could have created any number
             ;; of sentences, so we go up to the paragraph to be sure
             ;; that we get the initial sentence
             
             (when (eq p previous-paragraph)
               (error "Bad paragraph threading. Going to loop on ~a" p))
             
             (tr :sp-para-content p)

             (unless (= 0 (length (content-string *current-paragraph*)))
               
               (catch 'do-next-paragraph
                 ;; Continue to do the rest of the parsing starting with
                 ;; the first sentence
                 (sweep-successive-sentences-from s1))

               (when *tts-after-each-section*
                 (format t "~^&~%")
                 (tts t (starts-at-pos p) (ends-at-pos p))
                 #+ignore(format t "~^&~%"))

               ;; Run the method in objects/content-methods
               (after-actions p)

               (when (null (next p))
                 (tr :sp-null-next-return p)
                 (return)))

             (unless (ends-at-pos p)
               (push-debug `(,p))
               (error "paragraph ~a not terminated" p))

             ;;--- bottom of the loop
             
             (setq previous-paragraph p)
             (setq start-pos (chart-position-after (ends-at-pos p)))
             ;;////skip over newline character
             ;;(push-debug `(,p)) (break "After update: look around")
             
             (setq *current-paragraph* (next p))

             ;; Parent of initialized sentences is the current paragraph
             ;; so we update it before going around the loop
             (initialize-sentences :start-pos start-pos)))

        (finish-paragraph-based-article)))))


#| This process was set in motion from initiate-successive-sweeps
because the *paragraphs-from-orthography* flag was up (e.g. having been
set by analyze-text-from-file). 
  Even though the orthographics rarely carries information about
sections and subsections, the initializations that are done by
per-article-initializations (called from analysis-core) will
always create an article object (begin-new-article), which then
will make a section (initialize-sections), which in turn will
create the first paragraph (initialize-paragraphs) and finally
set up the sentences state (initialize-sentences)  |#

(defun finish-paragraph-based-article ()
  "Called from parse-successive-paragraphs to organize the usual
   article-oriented tallying and reporting. We emulated what happens
   in document-driven parsing -- ripple the after actions up the
   document structure to the article. 
   The document timer that we stop here was started in analyze-text-from-file"
  (let* ((article (article))
         (section (first-section article)))
    (unless section (error "threading bug: no section in ~a" article))
    (unless (every #'(lambda (c) (typep c 'paragraph)) (children section))
      (error "Something other than paragraphs in ~a" section))

    ;; parameters for modulating after actions go here
    
    (after-actions section)
    (after-actions article)

    (stop-timer '*time-to-read-document*)
    (report-time-to-read-article article)
    (show-parse-performance article)
    (show-noted-categories article)

    article))
    
    


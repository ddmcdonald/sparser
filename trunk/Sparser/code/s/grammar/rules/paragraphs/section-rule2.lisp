;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996,2012  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;; 
;;;     File:  "section rule"
;;;   Module:  "grammar;rules:paragraphs:"
;;;  Version:   2.4 April 2012

;; initiated 8/90
;; 1.1 (10/26/91 v2.0) completely overhauled.
;;     (10/28) put in temporary hack for w::paragraph-start
;;     (7/13/92 v2.2) Inserted traces on *trace-paragraphs*
;; 1.2 (1/4/93 v2.3) made adjustments now that they're actually being used
;; 1.3 (1/13/94) added a global pointing to the section marker, and a flag
;;      to the start routine so it will call finish-para when there's no
;;      section-marker involved.
;; 1.4 (5/9/94) hooking it in to the different calling patter from sgml tags
;; 2.0 (8/17) accomodated to shift to section-objects
;; 2.1 (11/30) Adapted the section-object management code to index the object
;;      into the discourse history
;; 2.2 (1/5/95) sharpened coordination when there's no ongoing paragraph
;; 2.3 (1/1/96) put in a style flag to indicate that the paragraph markup is
;;      not paired and so the pause-check has to be done here.
;;     (1/9) added If-there-never-were-any-sections-do-after-para-actions
;; 2.4 (3/16/10) Folded in extension for prior/after pointers, reverted to the
;;      struct to avoid PSI propblems. 4/1/12 Wrong paragraph accessors fixed.

(in-package :sparser)


;;;----------------------------------------
;;; define the word and the section marker
;;;----------------------------------------

;; This is used in the FSA to point to the item it's supposed
;;   to return as the section marker.
;;
(defparameter word::paragraph-start
  (define-section-marking-word "paragraph-start"))


(define-section-marker "paragraph-start"
  ;; When the start of a paragraph is seen, finish the current
  ;; paragraph and start the next one.
  :initiation-action  'start-new-paragraph
  :termination-action 'finish-ongoing-paragraph
  :implicitly-closes  "paragraph-start" )

(defparameter *paragraph-start* (section-marker-named "paragraph-start"))


;;;-----------------
;;; action routines
;;;-----------------

(defparameter *paragraph-is-not-paired-sgml* t
  "In some styles paragraph markers are set off by paired markup, 
   in others the start of one paragraph indicates the end of the next.
   In the case of paired markup the check for 'pause' is done in
   a single location: End-sgml-section. When they aren't paired,
   (when this flag should be up), the paragraph routines themselves
   have to do the check.")


(defun start-new-paragraph (word
                            &optional position-before
                                      call-finish? )

  ;; called as a section marker from either Establish-section-within-
  ;; document or by Draw-paragraphing-conclusions, in which case we'll
  ;; need to do the finishing action from here rather than the section
  ;; driver doing it.   Also called via the edge completed over a
  ;; paragraph, in which case the distribution of the information 
  ;; across the parameters is different -- in that case the "word"
  ;; is actually an edge, and the other two arguments are omitted

  (let* ((number (incf *number-of-paragraphs-so-far*))
         (new-para (allocate-paragraph))
         (word-arg-is-an-edge? (edge-p word)))
    (setq *next-paragraph* new-para)

    (setf (paragraph-structure-number new-para) number)
    (setf (paragraph-structure-start new-para)
          (if word  ;; its omitted in a call from Draw...
            (typecase word  ;; but not from Establish...
              (word position-before)
              ;; and from Complete (sgml) it's really an edge
              (edge (setq position-before (pos-edge-ends-at word)))
	      (otherwise
	       (push-debug `(,word ,position-before))
	       (error "Expected 'word' to point to a word or an ~
                       edge but got a ~a~%  ~a" (type-of word) word)))
            position-before))

    (cond (call-finish?  ;; inline call from the NL-fsa
	   ;; 3/16/10 cann't find this in the code base. Leaving it in
	   ;; on the chance that its use becomes obvious.
	   (when *current-paragraph*
	     (finish-ongoing-paragraph position-before)))
	  (*current-paragraph*
	   (finish-ongoing-paragraph position-before))
	  (*current-section-type*
	   ;; n.b. this global is set to the new, being-started section
	   ;; before we're called, so the routine here has to be careful
	   ;; that there really is an ongoing section and we're not, e.g.
	   ;; at the very beginning of the text.
	   (consider-finishing-section-from-paragraph position-before)))

    (tr :paragraph-start new-para position-before)

    ;;--- replicates state calculations in [analyzer;context:manage sections]
    ;; 3/16/10 Commenting out this part, presumably from fall 1994 until
    ;; the paragraphs themselves are working
    #|
    (let ((ongoing *ongoing-section-object*))
      (if (null ongoing)
        (flesh-out-paragraph/first-section new-para)
        (let ((ongoing-type (value-of 'type ongoing)))
          (if (eq ongoing-type *paragraph-start*)
            (flesh-out-paragraph/sibling new-para ongoing)
            (flesh-out-paragraph/daughter new-para ongoing)))))
    (setq *ongoing-section-object* new-para)
    (let ((start-pos (if word-arg-is-an-edge?
                       (pos-edge-starts-at word)
                       position-before))
          (end-pos (if word-arg-is-an-edge?
                     (pos-edge-ends-at word)
                     (chart-position-after position-before))))
      (update-discourse-history category::section-object
                                new-para start-pos end-pos) |#

    (setq *current-paragraph* new-para)
    new-para ))


(defun consider-finishing-section-from-paragraph (pos-before)
  ;; used when the start of the paragraph is the evidence of the
  ;; termination of the prior section.  Called from Start-new-paragraph.
  (let ((sm *current-section-type*))
    (unless (section-marker-p sm)
      (break "Data mixup: Expected a section marker and got:~
              ~%~A" sm))
    (let ((sm-to-terminate? (sm-terminates-previous sm)))
      (when sm-to-terminate?
        (let ((termination-fn (sm-termination-action sm-to-terminate?)))
          (when termination-fn
            (funcall termination-fn pos-before)))))))




(defun finish-ongoing-paragraph (position-after
                                 &optional starting-edge)

  ;; When called via a NewLine routine (as a section marker) the
  ;; "position-after" is the position just before the word that
  ;; starts the next paragraph.  When called from completing a
  ;; sgml tag, the position argument is the completed edge (as it
  ;; the "starting-edge" argument, and the position we're after is
  ;; the start of that edge since it will be what bounds the
  ;; text of the paragraph. 

  (when *current-paragraph*
    (when starting-edge
      (unless (edge-p position-after)
        (break "Change in protocol: expected a call from Complete to ~
                pass in an edge~%as the first argument but got~%~A"
               position-after))
      (setq position-after (pos-edge-starts-at position-after)))
    
    (let* ((p *current-paragraph*)
           (start-pos (paragraph-structure-start p)))
      (tr :paragraph-finish p start-pos position-after)
      
      (if (eq position-after
              (chart-position-after start-pos))
        ;; which can happen when a newline criteria is used to
        ;; define paragraphs and a separate criteria is used to
        ;; define other section-types, e.g. header labels or tags
        (then
          ;; remove this paragraph from existence, as it doesn't
          ;; encompass anything.
          (tr :flushing-empty-paragraph p start-pos position-after)
          (decf *number-of-paragraphs-so-far*))
        
        (else
          (setf (paragraph-structure-end p) position-after)
          
          (unless *nothing-Mac-specific*
	    (update-workbench)
	    (when *paragraph-is-not-paired-sgml*
	      (synchronize/should-we-pause?
	       p (value-of 'start p))))

          (run-after-paragraph-actions p)
          
          (pop-ongoing-section)
          
          p )))))



(defun run-after-paragraph-actions (p)
  (when *after-paragraph-actions*
    (dolist (function *after-paragraph-actions*)
      (tr :after-paragraph-action function p)
      (funcall function p))))



;;;---------------------------------------------------------------------
;;; check that handles after-paragraph actions when there never was any
;;;---------------------------------------------------------------------

(defun if-there-never-were-any-sections-do-after-para-actions ()
  ;; Called from Do-the-last-things-in-an-analysis. If no sections
  ;; (includes paragraphs) were ever established, then there'll be
  ;; no final action to finish them, e.g. when we're running a simple
  ;; string as a test or citation.  This checks for that situation
  ;; and runs the after-para actions if it's occurred.
  (when (null (discourse-entry (category-named 'section-object)))

    ;; n.b. since there's no paragraph object, after-para actions that
    ;; depend on there being one (i.e. 'real' after para actions and
    ;; not just those that use that moment as a convenient hook)
    ;; will need to check for the paragraph before they start their
    ;; main routine.
    (run-after-paragraph-actions nil)))




;;;--------------
;;; sort routine
;;;--------------

(defun sort-paragraphs (i1 i2)
  ;; called from Sort-individuals-alphabetically
  (let ((number1 (paragraph-structure-number i1))
        (number2 (paragraph-structure-number i2)))
    (when (equal number1 number2)
      ;; if they're out of sync with the design the values could
      ;; be anything
      (break "Multiple paragraphs with the same number"))
    (< number1 number2)))




;;;-------------------------
;;; after-paragraph actions
;;;-------------------------

(defvar *after-paragraph-actions* nil)

(defun install-after-paragraph-action (fn-name)
  (push fn-name *after-paragraph-actions*))

(defun remove-after-paragraph-action (fn-name)
  (setq *after-paragraph-actions*
        (delete fn-name *after-paragraph-actions*
                :test #'eq)))

(defun list-after-paragraph-actions ()
  (pl *after-paragraph-actions*))

(defun clear-after-paragraph-actions ()
  (setq *after-paragraph-actions* nil))


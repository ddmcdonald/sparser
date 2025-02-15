;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013,2019-2020 David D. McDonald all rights reserved
;;;
;;;      File: "note-text-relations"
;;;    Module: "analyzers;SDM&P:
;;;   Version: August 2020

;; Initiated 3/9/13. Elaborated through 3/28/13. 7/15/13 Added gate
;; on new cases. Occasional fixes to edge cases through 9/16/13.
;; 10/2/13 Provided read content to note-country and its friends.
;; RJB 12/13/2014  for the moment parenthetical segments are uninteresting
;;   parentheticals should be handled better 

(in-package :sparser)

;;;--------
;;; driver
;;;--------

(defun note-text-relations-in-segment (coverage)
  "Invoked as part of the post-segment parsing operations
   when the flag *note-text-relations* is up."
  (declare (special *debug-segment-handling *dbg-print*))
  (unless (segment-denotes-interesting-object coverage)
    ;;(format-words-in-segment)
    (let* ((length (segment-length)))
      (if (eq coverage :one-edge-over-entire-segment)
        (then
          (unless (= length 1) ;; just a head, and we already did it.
           ;; head and word just before
           (note-immediate-relations-to-head))
         (when (>= length 3)
           ;; adjacent (left right) -- ignore determiners, etc
           (unless (segment-spanned-by-multi-word-edge?)
             (note-in-segment-adgacences))))
        (else
          (note-what-the-head-is) ; not sensible if all under one edge
          (case coverage
            (:all-contiguous-edges ;; has to have more than one
             (note-immediate-relations-to-head))
            (:no-edges
             ;; happened in #1 for the word "burnt" which is not in
             ;; Comlex's vocabulary. ///do by hand?
             (when *dbg-print*
               (format t "~&~%Ignoring the no-edges segment:")
               (format-words-in-segment)
               (terpri)))
            (:discontinuous-edges
             (when *dbg-print*
               (format t "~&~%Ignoring discontinuous segment:")
               (print-treetop-labels-in-current-segment)))
            (:some-adjacent-edges
             ;; "the deadly avian flu" where "avian" isn't in
             ;; Comlex and for some reason no edge over "deadly"
             (when *dbg-print*
               (format t "~&~%Ignoring 'some adjacent' segment:")
               (print-treetop-labels-in-current-segment)))
            (otherwise
             (when *debug-segment-handling*
               (break "Unanticipated value for segment coverage: ~A"
                      coverage))))))))
    (normal-segment-finished-options coverage))

;;;-------
;;; cases
;;;-------

(defun note-what-the-head-is ()
  ;; the gofers know the positions of the segment boundaries
  (declare (special *debug-segment-handling*))
  (let ((head-edge (edge-over-segment-head)))
    (unless (and head-edge
                 (noteworthy? head-edge))
      (let ((head-word (head-word-of-segment)))
        (when head-word ;; if assumptions are violated this
          ;; will be nil. 
          (unless (punctuation? head-word)
            (let ((form (when head-edge
                          (edge-form head-edge))))
              (when form
                ;; in [15 days earlier] there's no edge over
                ;; "earlier" becaues it's built-in and we've not
                ;; gotten there yet.
                (cond
                 ((or (noun-category? form)
                      (verb-category? form)
                      (modifier-category? form))
                  (note-relation 'head head-word))
                 ((or (pronoun-category? form) ;; ignore
                      (ignorable-category? form)))
                 (t
                  (when *debug-segment-handling*
                    (push-debug `(,head-word ,head-edge))
                    (break "New head form ~a for ~a"
                           form head-edge))))))))))))

(defun note-immediate-relations-to-head ()
  (let ((head-word (head-word-of-segment))
        (head-edge (edge-over-segment-head)))
    (when head-edge ;; see above
      (when (and (noun-category? head-edge)
                 (not (edge-starts-at-left-boundary? head-edge))
                 head-word) ;; null when a name is spanned
        (let* ((adjacent-word (word-to-left-of-head))
               (adjacent-edge (edge-to-left-of-head)))
          (cond
           ((noun-category? adjacent-edge)
            (note-relation 'classifier-head adjacent-word head-word))
           ((or (not (ignorable-category? adjacent-edge))
                (not (pronoun-category? adjacent-edge))) ;; really "the"
            (note-relation 'modifier-head adjacent-word head-word))))))))


(defun note-in-segment-adgacences ()
  ;; Start with the word just to the left of the head
  ;; and walk back until we get to the end of the segment
  ;; or hit a determiner or similar word that we're not
  ;; including in these relations.
  (let ((right-edge (edge-to-left-of-head))
        (word-to-the-right (word-to-left-of-head))
        word-just-to-the-left   edge-just-to-the-left )
    ;; The segment has to be at least 3 words long, so we
    ;; should be able to get a little into this loop anyway.
    (unless (or (null right-edge)
                (edge-starts-at-left-boundary? right-edge))
      ;; except in that case, first found with an "'s"
      (loop
        (setq edge-just-to-the-left
              (edge-just-to-left-of right-edge))

        (when (or (ignorable-category? edge-just-to-the-left)
                  (pronoun-category? edge-just-to-the-left)
                  (verb-category? edge-just-to-the-left)) ;; an aux
          ;; unlikely to be anything interesting further to
          ;; the left and still inside the segment
          (return))

        (if edge-just-to-the-left
          (then
           (setq word-just-to-the-left
                 (word-just-to-the-left edge-just-to-the-left))
           (note-relation 'adjacent word-just-to-the-left word-to-the-right)
           (if (edge-starts-at-segment-boundary edge-just-to-the-left)
             (return)
             (setq right-edge edge-just-to-the-left))))
         
        (return)))))



;;;--------------------------------------------------------------
;;; directly cataloging countries, names, dates, locations, ...
;;;--------------------------------------------------------------

(defparameter *break-on-new-possibly-interesting-objects* nil
  "After the first few major categories we quickly get down
   to cases that we don't want to explicitly note but are too
   scattered to characterize with a predicate. Turn this back
   on when looking at specifically targeted texts with good
   segment-internal markers/rules.")

(defparameter *edge-delivery-function* nil)

(defun segment-denotes-interesting-object (coverage)
  "N.b. This class-specific scheme, invoked from note-text-relations-in-segment
   was much too labor intensive. It has been replaced, wholesale, by the
   'note' machinery. See analyzers/sdmp/note.lisp"
  #+ignore(when (eq coverage :one-edge-over-entire-segment)
    (let ((edge (edge-over-segment)))
      (edge-denotes-interesting-object edge))))

(defun edge-denotes-interesting-object (edge)
  (declare (special category::parentheses category::name-word
                    category::name category::date category::weekday
                    category::time category::country category::company
                    category::person category::title))
  (let ((label (edge-category edge))
        (form (edge-form edge))
        (referent (edge-referent edge)))
    (cond
     ;; these are uninteresting
     ((derived-from-text-relation? label) nil)
     ((or 
       (eq label category::parentheses) ;; for the moment
       (pronoun-category? form)
       (verb-category? form)
       (ignorable-category? form)
       (punctuation? referent))
      nil)
     (t
      ;; It's iteresting.
      (when *edge-delivery-function*
        (funcall *edge-delivery-function* edge))
      (cond ;; these are, and are noted
       ((and *biology*
             (itypep referent 'biological))
        (note-biological referent))
       ((eq label category::name-word)) ;; ???? "Sulaimaniya" 1st pass
       ((eq label category::name)
        (note-name referent))
       ((or (eq label category::date)
            (eq label category::weekday)
            (eq label category::time))
        (note-date referent))
       ((eq label category::country)
        (note-country referent))
       ((eq label category::company)
        (note-company referent))
       ((eq label category::person)
        (note-name referent))
       ((eq label category::title)
        (note-title referent))
       (t
        (if *break-on-new-possibly-interesting-objects*
          (then  (push-debug `(,edge ,label ,referent))
                 ;; (setq edge (car *) label (cadr *) referent (caddr *))
                 (break "Is this an interesting object?~
                     ~%  referent = ~a~
                     ~%  category = ~a" referent label))
          nil)))))))

(defun note-country (country)
  (note-entity country))

(defun note-date (date)
  (note-entity date))

(defun note-name (name) 
  (note-entity name))

(defun note-title (title) 
  (note-entity title))

(defun note-company (company) 
  (note-entity company))




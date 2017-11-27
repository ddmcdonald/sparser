;;; -*-  Mode: LISP; Base: 10; Syntax: Common-lisp -*-

;;; MUMBLE-86  interpreters; text-output

;;; Copyright (C) 1985, 1986, 1987, 1988, 1995-2003  David D. McDonald
;;;   and the Mumble Development Group.  All rights
;;;   reserved. Permission is granted to use and copy
;;;   this file of the Mumble-86 system for
;;;   non-commercial purposes.
;;; Copyright (c) 2006 BBNT Solutions LLC. All Rights Reserved

;; ChangeLog
;;  6/7/95 uncommented fancy-browser option in flush-last-punctuation-mark-from-text-
;;    output-stream
;;  8/13/99 Introduced cases into Precede-item-with-space-if-appropriate to 
;;    accomodate new punctuation types that don't take spaces after themselves
;;  5/5/03 Added code-level documentation

(in-package :mumble)

; There are two kinds of things that have to happen in the management of
; the word stream: linguistic things and software things.  We try to layer
; this code so that the details needed to make the words actually appear on
; a screen are below the linguistic processing and can thus be relatively
; easily changed as the software environment is varied.

;; Overview
; The entry point is Send-to-output-stream. It recieves the print names
; of words as they are read out of the phrase structure via a call from 
; Morphologically-specialize-&-say-it in grammar>morphology.lisp. 
; The way out from this level is via send-item-to-physical-word-stream
; and its variants such as pass-a-space-to-the-text-output-stream.
;
; Calls to this entry point will also come in from word-stream actions
; that are associated with slot or node labels. These can pass in
; blips, punctuation marks, or a possessive-marker (see 
; objects/all-the-object-types.lisp in the section labeled "words").
;
; The rules that this level understands are hard coded and managed by
; dispatches on the word-object that has just come in and the prior
; object.


;; All the state we need is kept in the values of these three
;; globals.  They are initialized by initialize-output-stream
;; and managed by update-the-stream-vector.
;;
(defvar *last-item*         'beginning-of-utterance)
(defvar *last-item-printed* 'beginning-of-utterance)
(defvar *last-word*         nil)
; Last-item and last-item-printed are distinguished so that we can
; simply drop Blips from consideration in the algorithm for spaces
; between words etc.


;################################################################
;                    Initialization
;################################################################


(defun initialize-output-stream ()
  (reset-display *mumble-text-output*)
  (setq *last-item*          'beginning-of-utterance)
  (setq *last-item-printed*  'beginning-of-utterance)
  (setq *last-word* nil))

(defun update-the-stream-vector (item word-object)
    (setq *last-item* item)
    (setq *last-item-printed* (if (or (blipp item)
                                      (ttracep item))
                                *last-item-printed*
                                item))
    (when word-object
      (setq *last-word* word-object)))


(defun send-to-output-stream (item &optional word-object)
  (if (keywordp item)
    ;;e.g. :fresh-line
    (progn (send-item-to-physical-word-stream item *mumble-text-output*)   
           (update-the-stream-vector item nil))
    (let ((modified-item (adjust-if-interacts-with-last-item item)))
      ;;This both tests for an interaction and carries it out.
      ;;Responsible for such things as: ",."->".", "a"->"an",
      ;;capitalization, etc.
      (precede-item-with-space-if-appropriate item)
      (let ((string-to-actually-send
             (determine-output-stream-object-given-word-stream-object
              (or modified-item item))))
        (send-item-to-physical-word-stream string-to-actually-send *mumble-text-output*)

        ;;This is responsible for typographic matters: seeing that it fits
        ;;on the line, putting spaces between words, etc.
        ;;It also handles any data collection for mouse-sensitivity purposes.
        (if (and (blipp *last-item*)
                 (eq (name *last-item*) 'capitalize-and-regenerate)
		 ;; This blip is part of the machinery for capitalizing
		 ;; whole phrases such as proper names. It comes in via
		 ;; the node-label proper-name
                 (not (blipp item)))
          (then
            (update-the-stream-vector item word-object)
            (send-to-output-stream (blip-named 'capitalize-and-regenerate)))
          (else (update-the-stream-vector item word-object)))))))


;   At present there aren't so many items that have an influence on the item
; following them.  Consequently this is a hardwired state machine rather than
; an interpreter for a language of pair-wise interactions.  It is implemented
; as a two level dispatch -- by prior item and then by current item.


(defun adjust-if-interacts-with-last-item (item)
  "If there is an interaction between the current item and the last one
that should change the way the current one is printed (e.g. capitalization),
then the change is computed here and returned."
  (typecase *last-item*
    (blip              (dispatch-on-prior-blip item))
    (string            (dispatch-on-prior-word item))
    (punctuation-mark  (dispatch-on-prior-punctuation-mark item))))

(defun determine-output-stream-object-given-word-stream-object (item)
  "This may turn out to be one big no-op, but it's a useful hook while
waiting to see if there's an ultimately more cogent design for the whole
word-stream level of processing (e.g. muck with the flow through morphology)."
  (typecase item
    (string item)
    (possessive-marker item)
    (punctuation-mark (pname item))))

(defgeneric word-ends-in-s (word)
  (:method ((word word)) (word-ends-in-s (pname word)))
  (:method ((word string)) (char= (char word (1- (length word))) #\s)))

(defun vowel-like-onset (string &optional (vowels "aeiou"))
  (find (char string 0) vowels :test #'char=))

(defun convert-a-to-an ()
  (send-item-to-physical-word-stream "n" *mumble-text-output*))

(defun dispatch-on-prior-blip (item)
  (case (name *last-item*)
    ((capitalize-the-next-word capitalize-and-regenerate)
      (typecase item
	(string (string-capitalize item))
	(possessive-marker (compute-proper-form-of-possessive-marker *last-word*))))
    (otherwise
      (typecase item
	(possessive-marker (compute-proper-form-of-possessive-marker *last-word*))))))

(defun dispatch-on-prior-word (item)
  "Returns the actual word to send to the output stream, or nil if there
   is no need to change it."
  (typecase item
    (string (cond ((string-equal "a" *last-item*)
                   (when (vowel-like-onset item)
                     (convert-A-to-AN))
                   nil)
                  ((string-equal "not" item)
                   ;; hard-wired mandatory contraction
                   (check-for-contraction *last-item*))
                  (t nil))) ;; i.e., no interaction
    (possessive-marker (compute-proper-form-of-possessive-marker *last-word*))))

(defun check-for-contraction  (last-item)
  (cond ((or (string-equal "may" last-item)
             (string-equal "will" last-item))
	 ;; This should be generalized to any modal, which would require having
	 ;; access to the word object and not just its print name.
         " not")
        ((string-equal "can" last-item)
         "'t")
        (t "n't")))

(defun dispatch-on-prior-punctuation-mark (item)
  "Last-Item was a punctuation mark; now determine what to do with ITEM:
if it's not a punctuation mark, ignore it (maybe output a space?), else:
   ., -> ,      .? -> ?         .! -> !
   ,. -> .      ?. -> ?         !. -> !"
  (typecase item
    (punctuation-mark
      (case (name item)
	(period 
         (if (eq (name *last-item*) 'comma)
	      (flush-last-punctuation-mark-from-text-output-stream
               (pname *last-item*))
	      item))
	((comma question-mark exclamation-mark)
	  (flush-last-punctuation-mark-from-text-output-stream
	      (pname *last-item*))
	  item)
	(otherwise nil))) ;;no other interactions with other prior punctuation
    (otherwise nil))) ;;prior punctuation only influences following
                      ;;punctuation.

(defun flush-last-punctuation-mark-from-text-output-stream (mark)
  (declare (ignore mark))
  (send-item-to-physical-word-stream #\Backspace *mumble-text-output*))

(defun compute-proper-form-of-possessive-marker (last-word)
  "Should check whether the source of the phrase being marked is a
plural object, and if so return just apostrophe ... but it doesn't yet."
  (typecase last-word
    (word (if (word-ends-in-s last-word) "'" "'s"))
    (otherwise "")))

(defun precede-item-with-space-if-appropriate (item)
  (when (typecase item
          (string
           (typecase *last-item-printed*
             (string
              ;; This anticipates that we're going to contract it,
              ;; but we don't always (e.g. after modals), so it's
              ;; going to make mistakes. 
              (string-not-equal item "not"))
             (punctuation-mark
              (case (name *last-item-printed*)
                ((comma-without-following-space period-without-following-space) nil)
                (otherwise t)))
             (possessive-marker t)
             ((eql :fresh-line) nil)
             ((eql beginning-of-utterance) nil))))
    (pass-a-space-to-the-text-output-stream)))

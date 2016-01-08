;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "realizations"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  0.2 February 2007

;; initiated 11/14/94 v2.3.  Tweeked, added cases ... 12/1
;; 1/17/95 allowed for null object sequence. 1/30 revised wording of
;; warning break in rr/two-word-segment
;; 0.1 (2/13) using status-hook to convert to always recording keywords rather
;;      than categories and keywords, added a few traces
;; 0.2 (7/11/96) Added name-word to rr/NP-segment. Added rr/reduced-Verb-segment.
;;     (7/18) pointed two variant verb segment labels to that spot.
;;     (2/5/07) Added section-segment. Converted ecase's.

(in-package :sparser)



(defun record-realization-patterns (object-sequence
                                    segment-type segment
                                    start-pos end-pos)
  ;; called from Span-mined-segment

  (tr :rr-of-segment segment start-pos end-pos)

  (when object-sequence
    (unless (consp object-sequence)
      (break "Somebody passed the terms in without a list"))
    
    (when (cdr object-sequence)
      (break "Shouldn't be more than one treetop edge in a ~
              segment. There are ~A over~%\"~A\""
             (length object-sequence)
             (words-between start-pos end-pos)))
    
    (when (individual-p (car object-sequence))
      (case (cat-symbol segment-type)

        (category::verb-segment
         (rr/Verb-segment (first object-sequence) segment))

        (category::participle-segment
         (rr/reduced-Verb-segment (first object-sequence) segment))

        (category::past-tense-verb-segment
         (rr/reduced-Verb-segment (first object-sequence) segment))

        (category::np-segment
         (rr/NP-segment (first object-sequence) segment))

        (category::one-word-segment
         (add-rr/only-term-in-segment (first object-sequence)))

        (category::two-word-segment
         (rr/two-word-segment (first object-sequence)))

        (category::multi-word-segment
         (rr/multi-word-segment (first object-sequence)))

        (category::capitalized-segment
         (add-rr/only-term-in-segment (first object-sequence)))

        (category::adverb-segment
         (tr :no-rr-made))
        (category::proper-name 
         (tr :no-rr-made))
        (category::proper-noun 
         (tr :no-rr-made))
        (category::apple-key 
         (tr :no-rr-made))
        (category::pair-term 
         (tr :no-rr-made))
	(category::section-segment 
         (tr :no-rr-made))
	(otherwise
	 (break "New category of segment: ~a" (cat-symbol segment-type)))))))




;;;--------------------
;;; unlabeled segments
;;;--------------------

;;--- one word segments

(defun add-rr/only-term-in-segment (i)
  (let ((record (realization-record i)))
    (extend-rr i :only-term-in-segment record)))



;;--- unprefixed two-word segments

(defun rr/Two-word-segment (domain-term)
  (case (cat-symbol (itype-of domain-term))

    (category::pair-term
     (update-realization-record/pair-term/np domain-term))

    (category::unanalyzed-compound
     ;; there's nothing we can say that's sound unless we can get a
     ;; sharper analysis, in which case we wouldn't be working with
     ;; this kind of object.
     )
    (category::measurement ) ;; it's already a domain object
    (category::comparative ) ;; ditto

    (category::term
     ;; Spurious case caused by counting terminals rather than preterminals
     ;; when making a default label in Span-mined-segment. Probably the
     ;; prefix wasn't thought through, e.g. "too high"
     (let ((word (value-of 'word domain-term)))
       (unless (polyword-p word)
         (break "A two word 'term' passed in:~%  ~A~
                 ~%You can continue without any problems" domain-term))))

    (otherwise
     (when *break-on-pattern-outside-coverage?*
       (break "New object type in the two-word-segment realization records:~
               ~%  ~A~%" domain-term)))))


;;--- multiword segments

(defun rr/Multi-word-segment (domain-term)
  (case (cat-symbol (itype-of domain-term))
    (category::pair-term
     (update-realization-record/pair-term/np domain-term))
    (category::term  ;; "double-clicking" in S11
     )
    (category::unanalyzed-compound  ;; s12 "group related files"
     )
    (otherwise
     (when *break-on-pattern-outside-coverage?*
       (break "New object type in the multi-word-segment realization records:~
               ~%  ~A~%" domain-term)))))



;;;---------------
;;; Verb segments
;;;---------------

(defun rr/Verb-segment (domain-term segment)
  (let ((segment-form (value-of 'form segment)))
    (if segment-form
      (case (cat-symbol segment-form)
        (category::one-content-word-vg
         (extend-rr domain-term :main-verb))
	(otherwise
	 (break "New segment-form: ~a" (cat-symbol segment-form))))
      (break "No 'form' was recorded for this verb segment:~
              ~%~A~%" segment))))


(defun rr/reduced-Verb-segment (domain-term segment)
  ;; i.e. pariciples -- this is a hook in case we want to do something different
  (rr/verb-segment domain-term segment))


(defun term-has-appeared-as-a-mvb (individual)
  (unless (individual-p individual)
    (break "Assumption violation: expected an individual as an ~
            argument~%but got ~A" individual))
  (let ((rr (realization-record individual)))
    (member :main-verb rr :test #'eq)))



;;;-------------
;;; NP segments
;;;-------------

(defun rr/NP-segment (domain-term segment)
  (let ((prefix (value-of 'prefix segment))
        (status (value-of 'discourse-status segment)))

    ;; make observations about the whole
    (extend-rr-by-status domain-term status)
    
    ;; dispatch on the object type to make observations about the parts
    (case (cat-symbol (itype-of domain-term))
      (category::term
       (when prefix
         (extend-rr domain-term :only-term-in-NP)))

      (category::pair-term
       (update-realization-record/pair-term/np domain-term))

      (category::unanalyzed-compound )

      (category::name-word
       (when prefix
         (extend-rr domain-term :only-term-in-NP)))

      (otherwise
       (when *break-on-pattern-outside-coverage?*
         (break "New object type in the NP realization records:~
                 ~%  ~A~%" domain-term))))
      ;; check for the possibility of interesting linguistic/domain
      ;; relationships between the prefix and the term.  These could
      ;; be done by within-segment parsing presumably, but this is a
      ;; place to handle them in a more anticipated way so it's the
      ;; right thing to do for the moment.
      ))



;;;------------
;;; pair terms
;;;------------

(defun update-realization-record/pair-term/np (pt)
  (let ((head (value-of 'head pt))
        (other (value-of 'other pt)))
    (extend-rr head :classified)
    (extend-rr other :distinguisher)))


;;;-----------------------
;;; Capitalized sequences
;;;-----------------------

(defun rr/Capitalized (individual)
  ;; called from one of the capitalized-sequence routines,
  ;; e.g. dm&p/Single-Span-cap-seq
  (extend-rr individual :appears-as-a-name))




;;;-----------------
;;; go-fer routines
;;;-----------------

(defun extend-rr-by-status (domain-term status)
  ;; The status is often a category. This finds the equivalent symbol so that
  ;; the presentation machinery only has to work with one datatype.
  (when status
    (let ((symbol
           (typecase status
             ((or category referential-category mixin-category)
              (cat-symbol status))
             (keyword status)
	     (otherwise 
	      (break "New type of status: ~a~%~a"
		     (type-of status) status)))))      
      (extend-rr domain-term symbol))))
      


;;;---------------------
;;; low-level mechanics
;;;---------------------

(defun realization-record (individual)
  (get-tag-for :realization-record individual))

(defun extend-rr (individual realization-type &optional existing-record)
  (tr :adding-realization-type individual realization-type)
  (let ((record (or existing-record
                    (realization-record individual))))
    (if record
      (unless (member realization-type record :test #'eq)
        (push-onto-plist individual
                         realization-type
                         :realization-record))
      (push-onto-plist individual
                       (list realization-type)
                       :realization-record))))

;;;---------
;;; display
;;;---------

(defun display-rr (individual)
  (let ((list (realization-record individual)))
    (if list
      (pl list)
      :no-record)))


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "prefixes"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  0.2 February 2007

;; initiated 11/14/94 v2.3.
;; 0.1 (1/3/95) having approximators yield no information
;; 0.2 (1/23) added adverb? case to Analyze-segment-prefix/word, added case to 
;;      determiner stuff.  1/30 put in a check against dotted edges and added
;;      NP case for "the three.." and "the [X Imaging..]".  2/1 added more np prefixes
;;      7/18/96 commented out a query break.
;;      2/5/07 Added section-header to Analyze-segment-prefix and fixed ecases

(in-package :sparser)

;;;--------------
;;; entry points
;;;--------------

(defun analyze-segment-prefix/word (word)
  ;; Called from Scan-treetops/fn-word-prefixed when there is
  ;; a function word at the beginning of the segment by no edge
  ;; over it.  Returns the category of the segment and a 'status'
  ;; category that becomes the value of the 'discourse-status'
  ;; variable of the segment -- though this is presently only used
  ;; in the case of noun phrases
  (cond ((determiner? word)
         (subcategorize-determiner-prefix word))
        ((adverb? word)
         category::verb )))

(defun analyze-segment-prefix (prefix-edge starts-at)
  ;; Called from Scan-treetops/prefixed or dm&p/Some-known-cap-seq
  ;; Returns the most useful category description of the segment
  ;; given this edge which is its prefix.  Choices are coordinated
  ;; with the policy for labeling segments in Span-mined-segment.
  ;; If this edge isn't an informative prefix (i.e. one that indicates
  ;; the category of the whole segment), then we return Nil.

  (let ((form (edge-form prefix-edge))
        (label (edge-category prefix-edge)))

    (if (eq form :dotted-intermediary)
      (analyze-dotted-intermediary-segment-prefix prefix-edge starts-at)

      (cond ((eq form category::content-word)
             nil )
            
            ((eq label category::approximator)
             ;; has to precede the form-check against adverbs
             ;; in order to pick up "only".  It plainly can modify
             ;; both verbs and nouns, so we'll have to be more sophisticated.
             ;; This cures the phrase-initial usage of 'only' within
             ;; an np: "Only computer models", vs. "can only use" -- both in s6
             nil )
            
            (form
             (case (cat-symbol form)
               ((or category::det
                    category::possessive
                    category::quantifier
                    category::adjp
                    category::adjective
                    category::NP    ;; "the one..."
                    category::noun
                    category::proper-noun )
                (subcategorize-np-prefix form prefix-edge))
               
               (category::verb+s      category::verb)
               (category::verb+ed     category::verb)
               (category::verb+ing    category::verb)
               (category::verb        category::verb)
               (category::infinitive  category::verb)
               (category::modal       category::verb)
               (category::adverb      category::verb)
               (category::vg          category::verb)   ;; "do" ///??
               
	       (category::section-header
		(values category::section-header category::section-header))

               (otherwise
                (when *break-on-pattern-outside-coverage?*
                  (break "untrapped form prefix: ~A" form))
                nil )))
            
            ((eq label category::number)
             (values category::np category::denumerated))
            
            ((or (eq label category::comparative)  ;; "better sound"
                 (eq label category::measurement)) ;; "16-bit sound"
             (values category::np :quantified))
            
            ((polyword-p label)  ;; "... pop-up menu" (a bad segmentation)
             nil )
            
            ((and (one-word-long? prefix-edge)
                  (determiner? (pos-terminal starts-at)))
             (subcategorize-determiner-prefix (pos-terminal starts-at)))
            
            (t
             (when *break-on-pattern-outside-coverage?*
               (break "untrapped prefix: ~A" prefix-edge))
             nil )))))


;;--- subroutines

(defun analyze-dotted-intermediary-segment-prefix (prefix-edge starts-at)
  ;; the prefix is an edge but it is just some left-portion of a 
  ;; multi-element rule, often a polyword.  ///Maybe some examination
  ;; of the initial elements of this edge would be informative, but
  ;; for the moment (1/95) we can just declare it uninformative.
  ;; The caller is Scan-treetops/prefixed, and our return value
  ;; is bound to its 'segment-category' and a 'status' value for specifier
  ;; data.  Returning Nil will move it out of assuming it can dispatch
  ;; off a prefix.
  (declare (ignore prefix-edge starts-at))
  nil )




(defun subcategorize-np-prefix (form edge)
  (let ((label (edge-category edge))
        (referent (edge-referent edge)))
    (case (cat-symbol form)
      
      (category::det
       (let ((label (edge-category edge)))
         (typecase label
           (word (subcategorize-determiner-prefix label))
           ((or referential-category mixin-category category)
            (case (cat-symbol label)
              ((or category::quantity
                   category::ordinal)
               (values category::np category::denumerated))))
	   (otherwise
	    (break "New kind of edge label: ~a" label)))))
      
      (category::possessive
       (values category::np  category::possessive))
      
      (category::quantifier
       (values category::np :quantified))
      
      ((or category::adjective  category::adjp)
       (values category::np  category::modified))
      
      (category::noun
       ;; "sound playback" (vs. "a sound playback source")
       (values category::np nil))
      
      (category::NP
       (cond
        ((eq label category::capitalized-sequence)
         ;; inside the quotation: 'the "Highlight color" pop-up menu'
         (values category::np  category::classifier))

        ((eq label category::numerated-anaphor)
         (values category::np  category::denumerated))

        ((individual-p referent)
         (cond ((itypep (edge-referent edge) 'pair-term)
                (values category::np  category::classifier))
               ((itypep (edge-referent edge) 'term)
                (values category::np  category::classifier))
               (t (break "prefix is a noun phrase referring to an ~
                          individual.~%: \"~A\" ~A~
                          ~%Is this another case of a classifier or should ~
                          the status category~%be something else?~
                          ~%Continuing will make the status Nil.~%~%"
                         (string-of-words-between
                          (pos-edge-starts-at edge)
                          (pos-edge-ends-at edge)) referent)
                  (values category::np nil))))
        (t
         (break "prefix is a noun phrase: \"~A\"  ~A~
                 ~%Is this another case of a classifier or should ~
                 the status category~%be something else?~
                 ~%Continuing will make the status Nil.~%~%"
                (string-of-words-between
                          (pos-edge-starts-at edge)
                          (pos-edge-ends-at edge)) label)
         (values category::np nil))))
      
      (category::proper-noun
       (cond
        ((eq (edge-referent edge) *capital-a*)
         (values category::np  category::anonymous))

        ((eq label category::single-capitalized-letter)
         ;; e.g. "the X Imaging Library"
         nil )

        (t #+ignore
           (break "prefix is a proper-noun: ~A~
                   ~%Consider what status category should be ~
                   used.~%If you continue it will be Nil."
                  (edge-category edge))
           (values category::np nil)))))))



(defun subcategorize-determiner-prefix (determiner)
  (case (word-symbol determiner)
    (word::|the|
     (values category::np  category::det))
    ((or word::|a| word::|an|)
     (values category::np  category::anonymous))
    (word::|this|
     (values category::np  category::thematic))
    (word::|that|
     (values category::np  category::det))
    (word::|these|
     (values category::np  category::det))
    (otherwise
     (when *break-on-pattern-outside-coverage?*
       (break "New determiner prefix: ~A" determiner))
     (values category::np  nil))))

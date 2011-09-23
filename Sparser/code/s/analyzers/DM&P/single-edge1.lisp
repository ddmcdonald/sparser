;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "single edge"
;;;    Module:  "analyzers;DM&P:"
;;;   version:  1.1 June 1996

;; broken out as its own file 7/29/94 v2.3.  
;; Continually tweeking ...9/15.  9/29 added capitalized sequences.  10/24 added
;; a check in the case of polywords for them being function words.
;; 11/17 refined treatment of capitalized sequences. ditto on 11/30.
;; 0.1 (1/9/95) put #+apple-doc in front of the reference to 'apple-key',
;;     and 1/23 added it to second spot
;; 1.0 (2/1) trying an experiment with when the edge respanned with a new
;;      segment-level edge or just left alone to become a treetop
;;     (2/3) tweeked its criteria
;; 1.1 (6/28/96) cleared a stub on the case of a single capitalized word.

(in-package :sparser)

(unless (boundp '*checkout-new-cases-of-single-edge-segements*)
  (defparameter *checkout-new-cases-of-single-edge-segements* nil))

;;;---------------------------------
;;; one edge over the whole segment
;;;---------------------------------

(defun scan-under-edge-covering-whole-segment (starts-at ends-at)
  ;; called from dm/Analyze-segment when the coverage is 'one-edge-
  ;; -over-entire-segment.  Here we check for information that may
  ;; be buried in the form of the edge or elsewhere, and we use it
  ;; to form a new edge over the segment from the set of segment-edge
  ;; categories. 

  (let* ((edge (edge-between starts-at ends-at))
         (referent (edge-referent edge)))

    (when (if (individual-p referent)
            (dm&p-category-p (itype-of referent))
            t )

      ;; We don't respan segment-spanning edges that come from the
      ;; core or sublanguage grammars
      
      (let ((category (edge-category edge))
            (form (edge-form edge)))
        (tr :scan-under-edge-covering-whole-segment edge)
        
        (cond (;;(eq category category::capitalized-sequence)
               (eq form category::capitalized)
               (let ((segment (define-segment starts-at ends-at))
                     (terms (list (edge-referent edge))))
                 (categorize-segment segment terms)
                 (span-mined-segment segment
                                     starts-at ends-at
                                     terms
                                     :label category::capitalized-sequence
                                     :form category::np)))
              
              ((eq category category::capitalized-word)
               ;; capitalization isn't interesting, so redo it as
               ;; a word to be mined.
               ;; 6/28/96  This is the same thing that's done when the category
               ;; is a word that had been buried inside a polyword (see below)
               ;; and the example is capitalized
               (scan-one-word-segment/unknown starts-at ends-at))

               ;; 6/28/96 This is what used to be here circa 9/94, though
               ;; what prompted the outside-coverage break eludes me except
               ;; maybe that there's no mine-one-word routine now.
               ;  (when *break-on-pattern-outside-coverage?*
               ;    (break "caps"))
               ;  ;; this has to be replaced assuming this case is
               ;  ;; still relevant
               ;  ;(mine-one-word (define-segment starts-at ends-at)
               ;  ;               (pos-terminal starts-at)
               ;  ;               starts-at ends-at)
               
              
              ((or (eq form category::verb)
                   (eq form category::verb+s)
                   (eq form category::verb+ed)
                   (eq form category::verb+ing)
                   (eq form category::verb+present)
                   (eq form category::verb+passive)
                   (eq form category::infinitive)
                   (eq form category::modal)
                   (eq form category::vg)
                   (eq form category::noun)
                   (eq form category::np)
                   (eq form category::proper-noun)
                   (eq form category::content-word)
                   (eq category category::verb))
               
               (tr :whole-seg/anticipated-form form)
               (examine-single-unk-edge-for-segment-info
                edge starts-at ends-at))
              
              ((eq category word::|section|)
               ;; hack hack. This is because the word is defined for purposes
               ;; of the section marker of the same name.
               ;; We'll just leave it
               )
              
              (;; some literals will have information about their morphology
               ;; that should be kept
               (and (word-p category)
                    form )
               (when *break-on-pattern-outside-coverage?*
                 (break "literal"))
               (span-mined-segment (define-segment starts-at ends-at)
                                   starts-at ends-at
                                   (list (edge-referent edge))
                                   :form form))
              
              (;; an item that could be a treetop
               (or (eq form category::adverb)
                   #+apple-doc (eq form category::apple-key)
                   (eq category category::number)  ;; e.g. "[one] of ..."
                   ))
              
              (;; no further analysis of section markers
               (eq form (category-named 'section-marker))
               (when *break-on-pattern-outside-coverage?*
                 (break "section-marker"))
               )
              
              ((eq category category::numerated-anaphor)
               (when *break-on-pattern-outside-coverage?*
                 (format t " anaphor"))
               (examine-single-unk-edge-for-segment-info
                edge starts-at ends-at))
              
              ((eq category word::|there|)  ;;/// it's an anaphor too
               )
              
              ((polyword-p category)  ;; "by [double-clicking] a ..."
               (unless (function-word? category)  ;; "... how many colors or greys"
                 (scan-one-polyword-segment/unknown edge)))
              
              ((word-p category)  ;; "Click the ..."
               ;; we've gotten here (presumably) because this word is
               ;; also included in a polyword and so this edge is a
               ;; literal.  We treat it like just there was just the word.
               (scan-one-word-segment/unknown starts-at ends-at))
              
              
              ((not (individual-p (edge-referent edge)))
               ;; " [the first] matching ..."
               (if *break-on-pattern-outside-coverage?*
                 (break "Referent of single edge over segment is not ~
                         an individual~%  ~A" edge)
                 (throw :abort-segment-construction nil)))
              
              ;; checks for words as the label have to precede this check
              ;; or else the indiv-typep blows up with a data check
              ((itypep (edge-referent edge) 'pair-term)
               (let ((s (define-segment starts-at ends-at))
                     (terms (list (edge-referent edge))))
                 (categorize-segment s terms nil)
                 (span-mined-segment s starts-at ends-at terms
                                     :label (category-named 'pair-term))))
              
              (t
               (when *checkout-new-cases-of-single-edge-segements*
                 (break "new case of single-edge over a segment~
                         ~%  label: ~A~
                         ~%   form: ~A" category form))
               (let ((s (define-segment starts-at ends-at))
                     (terms (list (edge-referent edge))))
                 (categorize-segment s terms nil)
                 (span-mined-segment s starts-at ends-at terms)))
              )))))




(defun examine-single-unk-edge-for-segment-info (edge starts-at ends-at)
  ;; the edge has the label 'unknown-term'. There may have
  ;; been some useful information stored in the rule in its
  ;; form label (//or maybe also look at the type-status of
  ;; the term), and we want to use that to form the most
  ;; informative segment-label and segment characterization
  (let* ((s (define-segment starts-at ends-at))
         (form (edge-form edge))
         (term (edge-referent edge))
         (list-of-term (list term)))

    (if (or (eq form category::verb)
            (eq form category::verb+s)
            (eq form category::verb+ed)
            (eq form category::verb+ing)
            (eq form category::verb+present)
            (eq form category::verb+passive)
            (eq form category::infinitive)
            (eq form category::vg)
            (eq form category::np)
            (eq form category::np-head)
            (eq form category::proper-noun)
            ;(eq form category::noun/verb-ambiguous)
            (eq form category::proper-name)
            (eq form category::proper-noun)
            #+apple-doc (eq form category::apple-key)
            )
      (then
        (categorize-segment s list-of-term form)
        (bind-variable 'head term s)
        (span-mined-segment s
                            starts-at ends-at
                            list-of-term
                            :label form
                            :form form))
      (else
        (categorize-segment s list-of-term)
        (span-mined-segment s
                            starts-at ends-at
                            list-of-term )))))


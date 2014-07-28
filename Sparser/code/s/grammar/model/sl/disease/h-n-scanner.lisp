;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;      File:   "h-n-scanner"   e.g. "H5N1" or 
;;;    Module:   "sl;disease:"
;;;   version:   July 2014

;; initiated 5/6/13. Rebuilt as a no-space pattern fsa 7/28/14


#|  From http://www.agriculture.ny.gov/AI/AvianFlu.html
AI virus is an RNA virus (orthomyxovirus) and, as is typical of influenza viruses, 
often mutates producing different strains. As the virus infects and replicates 
in successive hosts it recombines genes with any other available influenza virus 
in unpredictable ways. The different strains are labeled according to the types of 
2 proteins (Hemagglutinin and Neuraminidase) on the surface of the virus that are 
instrumental in the virus’ ability to penetrate a cell and replicate itself. 
There are 16 different H types and 9 different N types so a multitude of 
combinations are possible e.g. H1N1, H7N2, H6N9 and etc.  |#

;;;----------
;;; Category 
;;;----------

(define-category avian-flu
  :specializes pathogen
  :instantiates self
  :binds ((H-number :primitive integer)
          (N-number :primitive integer))
  ;; we know this is a virus, but couldn't find the definition (ddm 7/28/14)
  :index (:permanent :sequential-keys H-number N-number))

(defun find-or-make-avian-flu (h n) (break "got here"))


;;;---------
;;; scanner
;;;---------
; This is an explicit no-space FSA, as opposed to a uniform no-space 
; sequence where we're just collecting all the words into edge.
; This is checked from just after the polyword check, by a call from
; check-for/initiate-scan-patterns when it was noticed that there
; was no space between the previous word and the one that was just
; scanned. The uniform scan is tried after this one.

(define-no-space-pattern avian-flu
  :acceptance-function 'find-or-make-avian-flu
  :transition-net ( (:initial + "H" -> :scanned-an-h)
                    (:scanned-an-h + digits -> :scanned-h-digit)
                    (:scanned-h-digit + "N" -> :scanned-h-digit-n)
                    (:scanned-h-digit-n + digits -> :scanned-h-digit-n-digit) )
  :accept-states ( :scanned-h-digit-n-digit ))

; (trace-ns-sequences)
  
#|  It doesn't work because of an ordering issue at the lowest level

? (trace-ns-sequences)
t

? (trace-network-flow)
t

? (p "it was H1N1 virus")
[scan] Inititate-top-edges-protocol
[scan] Setting status of p0 to :scanned
[scan] check-word-level-fsa-trigger #<position0 0 "">
[scan] Setting status of p0 to :word-level-fsa-triggers
[scan] cwlft-cont #<position0 0 "">
[scan] Setting status of p0 to :word-fsas-done
[scan] word-level-actions #<word SOURCE-START>
[scan] Setting status of p0 to :word-level-actions
[scan] No word at p1 yet. Calling scan-next-position
[scan] Setting status of p1 to :scanned
[scan] Setting status of p1 to :scanned-from-word-actions
[scan] Setting status of p0 to :word-completed
[scan] introduce-terminal-edges #<word SOURCE-START>
[scan] Setting status of p0 to :preterminals-installed
[scan] introduce-right-side-brackets: "#<word SOURCE-START>"
[scan] introduce-trailing-brackets "#<word SOURCE-START>"
[scan] Setting status of p1 to :brackets-from-prior-word-introduced
[scan] check-for-]-from-prior-word: p1
[scan] Setting status of p1 to :]-from-prior-word-checked
[scan] check-for-[-from-prior-word: p1
[scan] Setting status of p1 to :[-from-prior-word-checked
[scan] adjudicate-new-open-bracket phrase.[


[scan] scan-next-pos #<position1 1 "it">
[scan] introduce-leading-brackets "it"
[scan] Setting status of p1 to :brackets-from-word-introduced
[scan] check-for-]-from-word-after p1 "it"
[scan] Trailing-hidden-markup-check #<position1 1 "it">
[scan] Trailing-hidden-annotation-check #<position1 1 "it">
[scan] Setting status of p1 to :]-from-word-after-checked
[scan] bracket-ends-the-segment? ].pronoun
[scan] pts
[scan] segment-finished: p1 to p1
[scan] tidy-up-segment-globals
[scan] return-to-scan-level-from-null-span: p1

Returning to the word level at p1 from a null span
[scan] check-for-[-from-word-after p1 "it"
[scan] check for end of source #<position1 1 "it">
[scan] Setting status of p1 to :[-from-word-after-checked
[scan] adjudicate-new-open-bracket .[np
[scan] Leading-hidden-markup-check #<position1 1 "it">
[scan] check-for-polywords starting with "#<word "it">" at p1
[scan] Setting status of p1 to :polywords-check
[scan] check-for/initiate-scan-patterns: p1
[scan] Setting status of p1 to :no-space-patterns
[scan] no whitespace at p1. Initiating scan-pattern check.
[scan] check-for-uniform-no-space-sequence #<position1 1 "it">
[ns] first word: #<word SOURCE-START>, second word: #<word "it">
[scan] Setting status of p2 to :scanned
[ns] dropping out of the loop: whitespace before #<position2 2 "was">
[scan] check-word-level-fsa-trigger #<position1 1 "it">
[scan] Setting status of p1 to :word-level-fsa-triggers
[scan] cwlft-cont #<position1 1 "it">
[scan] Setting status of p1 to :word-fsas-done
[scan] word-level-actions #<word "it">
[scan] Setting status of p1 to :word-level-actions
[scan] Setting status of p1 to :word-completed
[scan] introduce-terminal-edges #<word "it">
[scan] Setting status of p1 to :preterminals-installed
[scan] Check-preterminal-edges #<position1 1 "it">
[scan] Introduce-leading-brackets-from-edge-form-labels #<position1 1 "it">
[scan] introduce-leading-brackets "pronoun"
[scan] Setting status of p1 to :brackets-from-word-introduced
[scan] check-edge-fsa-trigger it at p1
[scan] Setting status of p1 to :edge-fsa-checked
[scan] Setting status of p1 to :edge-fsas-done
[scan] introduce-right-side-brackets: "#<word "it">"
[scan] introduce-trailing-brackets "#<word "it">"
[scan] Setting status of p2 to :brackets-from-prior-word-introduced
[scan] check-for-]-from-prior-word: p2
[scan] Setting status of p2 to :]-from-prior-word-checked
[scan] bracket-ends-the-segment? np].
[scan] pts
[it]
[scan] segment-finished: p1 to p2
[scan] tidy-up-segment-globals
[scan] after-action-on-segments
[scan] normal-segment-finished-options
[scan] check-segment-finished-hook
[scan] sf-action/spanned-segment1
[scan] moved-to-forest-level: p2
[forest] PPTT
try-parsing-tt: #<edge0 1 pronoun/inanimate 2>
March-back-from-the-right/forest called at p1
March-back-one-position/forest at p1
March-back-from-the-right/forest called at p0
[forest] after-quiescence: p2
[forest] do-treetop-triggers
[forest] do-treetop-loop - #<word SOURCE-START>
[forest] do-treetop-loop - #<edge0 1 pronoun/inanimate 2>


[scan] scan-next-segment #<position2 2 "was">
[scan] figure-out-where-to-start #<position2 2 "was">
[scan] check-for-[-from-prior-word: p2
[scan] Setting status of p2 to :[-from-prior-word-checked
[scan] adjudicate-new-open-bracket pronoun.[
[scan] scan-next-pos #<position2 2 "was">
[scan] introduce-leading-brackets "was"
[scan] Setting status of p2 to :brackets-from-word-introduced
[scan] check-for-]-from-word-after p2 "was"
[scan] Trailing-hidden-markup-check #<position2 2 "was">
[scan] Trailing-hidden-annotation-check #<position2 2 "was">
[scan] Setting status of p2 to :]-from-word-after-checked
[scan] bracket-ends-the-segment? ].verb
[scan] pts
[scan] segment-finished: p2 to p2
[scan] tidy-up-segment-globals
[scan] return-to-scan-level-from-null-span: p2
Returning to the word level at p2 from a null span
[scan] check-for-[-from-word-after p2 "was"
[scan] check for end of source #<position2 2 "was">
[scan] Setting status of p2 to :[-from-word-after-checked
[scan] adjudicate-new-open-bracket .[verb
[scan] Leading-hidden-markup-check #<position2 2 "was">
[scan] check-for-polywords starting with "#<word "was">" at p2
[scan] Setting status of p2 to :polywords-check
[scan] check-for/initiate-scan-patterns: p2
[scan] Setting status of p2 to :no-space-patterns
[scan] check-word-level-fsa-trigger #<position2 2 "was">
[scan] Setting status of p2 to :word-level-fsa-triggers
[scan] cwlft-cont #<position2 2 "was">
[scan] Setting status of p2 to :word-fsas-done
[scan] word-level-actions #<word "was">
[scan] Setting status of p2 to :word-level-actions
[scan] No word at p3 yet. Calling scan-next-position
[scan] Setting status of p3 to :scanned
[scan] Setting status of p3 to :scanned-from-word-actions
[scan] Setting status of p2 to :word-completed
[scan] introduce-terminal-edges #<word "was">
[scan] Setting status of p2 to :preterminals-installed
[scan] Check-preterminal-edges #<position2 2 "was">
[scan] Introduce-leading-brackets-from-edge-form-labels #<position2 2 "was">
[scan] introduce-leading-brackets "verb"
[scan] Setting status of p2 to :brackets-from-word-introduced
[scan] check-edge-fsa-trigger was at p2
[scan] Setting status of p2 to :edge-fsa-checked
[scan] Setting status of p2 to :edge-fsas-done
[scan] introduce-right-side-brackets: "#<word "was">"
[scan] introduce-trailing-brackets "#<word "was">"
[scan] Setting status of p3 to :brackets-from-prior-word-introduced
[scan] check-for-]-from-prior-word: p3
[scan] Setting status of p3 to :]-from-prior-word-checked

[scan] bracket-ends-the-segment? aux].

[scan] check-for-[-from-prior-word: p3
[scan] Setting status of p3 to :[-from-prior-word-checked
[scan] Introduce-trailing-brackets-from-edge-form-labels #<position3 3 "h"> <=== filled already
[scan] introduce-trailing-brackets "#<ref-category VERB>"
[scan] Setting status of p3 to :brackets-from-prior-word-introduced


[scan] scan-next-pos #<position3 3 "h">
[scan] introduce-leading-brackets "h"
[scan] Setting status of p3 to :brackets-from-word-introduced
[scan] check-for-]-from-word-after p3 "h"
[scan] Trailing-hidden-markup-check #<position3 3 "h">
[scan] Trailing-hidden-annotation-check #<position3 3 "h">
[scan] Setting status of p3 to :]-from-word-after-checked
[scan] check-for-[-from-word-after p3 "h"
[scan] check for end of source #<position3 3 "h">
[scan] Setting status of p3 to :[-from-word-after-checked
[scan] Leading-hidden-markup-check #<position3 3 "h">
[scan] check-for-polywords starting with "#<word "h">" at p3
[scan] Setting status of p3 to :polywords-check
[scan] check-for/initiate-scan-patterns: p3
[scan] Setting status of p3 to :no-space-patterns
[scan] check-word-level-fsa-trigger #<position3 3 "h">
[scan] Setting status of p3 to :word-level-fsa-triggers
[scan] Check-PNF-and-continue #<position3 3 "h">
[scan] Setting status of p3 to :pnf-checked
[scan] Setting status of p3 to :pnf-checked
[scan] Setting status of p4 to :scanned
[scan] Setting status of p3 to :preterminals-installed
[scan] cwlft-cont #<position3 3 "h">
[scan] Setting status of p3 to :word-fsas-done
[scan] word-level-actions #<word "h">
[scan] Setting status of p3 to :word-level-actions
[scan] Setting status of p3 to :word-completed



[scan] introduce-terminal-edges #<word "h">
[scan] introduce-right-side-brackets: "#<word "h">"
[scan] introduce-trailing-brackets "#<word "h">"
[scan] Setting status of p4 to :brackets-from-prior-word-introduced
[scan] check-for-]-from-prior-word: p4
[scan] Setting status of p4 to :]-from-prior-word-checked
[scan] check-for-[-from-prior-word: p4
[scan] Setting status of p4 to :[-from-prior-word-checked
[scan] Introduce-trailing-brackets-from-edge-form-labels #<position4 4 "1">
[scan] introduce-trailing-brackets "#<ref-category PROPER-NOUN>"
[scan] Setting status of p4 to :brackets-from-prior-word-introduced
[scan] scan-next-pos #<position4 4 "1">
[scan] introduce-leading-brackets "1"
[scan] Setting status of p4 to :brackets-from-word-introduced
[scan] check-for-]-from-word-after p4 "1"
[scan] Trailing-hidden-markup-check #<position4 4 "1">
[scan] Trailing-hidden-annotation-check #<position4 4 "1">
[scan] Setting status of p4 to :]-from-word-after-checked

[scan] bracket-ends-the-segment? ].adjective  <===== premature check
[scan] pts
[ was h]

? (chart)
 0 source-start 1 "it" 2 "was" 3 "h" 4 "1"

[scan] parse-at-the-segment-level: p4
[scan] segment-parsed1
[scan] segment-finished: p2 to p4
[scan] tidy-up-segment-globals
[scan] after-action-on-segments
[scan] normal-segment-finished-options
[scan] sf-action/all-contiguous-edges
[scan] sf-action/all-contiguous-edges/no-more-heuristics ()
[scan] sf-action/spanned-segment1
[scan] scan-next-segment #<position4 4 "1">
[scan] figure-out-where-to-start #<position4 4 "1">
[scan] check-for-[-from-word-after p4 "1"
[scan] check for end of source #<position4 4 "1">
[scan] Setting status of p4 to :[-from-word-after-checked
[scan] adjudicate-new-open-bracket .[np
[scan] Leading-hidden-markup-check #<position4 4 "1">
[scan] check-for-polywords starting with "#<word "1">" at p4
[scan] Setting status of p4 to :polywords-check
[scan] check-for/initiate-scan-patterns: p4
[scan] Setting status of p4 to :no-space-patterns
[scan] no whitespace at p4. Initiating scan-pattern check.
[1st ns] At p4, checking "h" and "1"
[1st ns] "h" starts nil
[scan] check-for-uniform-no-space-sequence #<position4 4 "1">
> Break: Break
|#
 


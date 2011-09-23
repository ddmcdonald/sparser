;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-2005,2011  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;     File:  "do transitions"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  1.9 August 2011

;; -.3 (12/17/93) added a catch to handle the fact that the capitalization of
;;      headers will catch them up in the initial scan.  (12/22) fixed a ramification
;;      of all that. 
;; -.2 (12/30) extended fsa driver to filter out literals from multiple edges
;;      over words.
;; -.1 (1/6/94) adding cut-off switch to avoid running the network, etc.
;; 0.0 (1/27/94 v2.3) broken out from [classify]
;; 0.1 (2/24) fixed what is passed as the daughters to a name edge
;; 1.0 (4/1) completely rearranged as part of new classification design
;;     (4/6) more cleanup from that
;; 1.1 (4/23) hacked up defaults for Name-components-of. 4/29 finished the hack
;; 1.2 (7/22) flushed the hack as impossible to improve ///start over
;; 1.3 (10/3) change in args. to make proper-name edge.  10/31 changed default on
;;      break on outside coverage to Nil
;; 1.4 (12/11) tweeked Do-referent-and-edge.
;; 1.5 (4/30/95) added another case to adjudicating what the examine routine
;;      returns.
;; 1.6 (5/2) broke out calculation of edge label in Do-referent-and-edge to handle
;;      names as collections in a nice way.   5/3 put in check for PFWPNF extending
;;      the end position.
;; 1.7 (5/15) changed the early-ending cases to continue with classification 
;;      on the remainder.
;; 1.8 (7/5) added the case of Examine.. returning Nil for 'no items'
;; 1.9 (7/13) changed default on debugging flat to t.
;;     (2/11/05) Updated Do-referent-and-edge to handle psi. (3/4) when the company
;;     ends the text ("for Ajax Company Inc.") we're getting a :suffix-flushed
;;     result in Classify-&-record-span that's actually not going to do anything, so
;;     added a check.
;;    (8/28/09) Extensive case changes (crossed my threshold -ddm). Preping for overhaul
;;    (2/15/11) Added another case to category-for-edge-given-name-type. 7/13 fixed
;;     return (nil instead of the edge) from :suffix-flushed case in classify-&-
;;     record. 8/15 Installed named-location cases. 8/28 Modified do-referent-and-edge
;;     to incorporate "the" preceding location names.

(in-package :sparser)


;;;----------------------
;;; debugging parameters
;;;----------------------

(defparameter *break-on-pattern-outside-coverage?* nil)

(define-pnf-state :pattern-is-outside-coverage)

(define-category name/unknown-pattern)

;; or stop arbitrarily if we're avoiding all these calculations
(defparameter *end-pnf-early* nil)


;;;------------------------------------------------------------
;;; Organizing the analysis and classification of multi-word,
;;;             multi-edge capitalized sequences
;;;------------------------------------------------------------


(defun c&r-multi-word-span (starting-position ending-position)
  
  (when *of-appears-within-pnf-scan*
    (setq *of-appears-within-pnf-scan* nil))
    
    ;; run a version of the parser over the delimited span (respecting 
    ;;its end-point) and then see if that got anything.  Called from
    ;; Classify-and-record-name whenever the span involves more than
    ;; one word and there isn't a single span over them. 
    
  (let ((premature-termination?
         ;; in the course of the parse we can encounter words like Header
         ;; labels that are definitive name-terminators. We don't know that
         ;; they are until their fsas run and establish it (consider the
         ;; ambiguity of "an" vs. "AN"), which we don't know until this
         ;; parse. The throw is from the action routine of the fsa.
         (catch :early-termination-of-pnf-parse
           (tr :pnf/parsing-span  starting-position ending-position)
           (parse-from-within-pnf starting-position ending-position))))
    
    (cond (premature-termination?
           (setq ending-position premature-termination?
                 ;; we have to set this global because it's what is returned
                 ;; by PNF as the official ending point of the fsa
                 *pnf-end-of-span* ending-position))

          ((not (eq ending-position *pnf-end-of-span*))
           ;; If PFWPNF hit an fsa that took it beyond the end of the scan
           ;; as it was given it, then it will have set this global
           ;; and we need to reflect it here.
           (setq ending-position *pnf-end-of-span*)))

    
    (unless (eq starting-position ending-position)
      ;; which can happen with premature terminations, this 'unless'
      ;; has the effect of returning 'nil' for the c&r stage, which
      ;; will abort the PNF and declare that there was no name here.
      
      (let ((edge (span-covered-by-one-edge? starting-position
                                             ending-position)))
        (if edge
          (c&r-single-spanning-edge edge)
          
          (if *end-pnf-early*
            (make-chart-edge :starting-position starting-position
                             :ending-position ending-position
                             :category category::name
                             :form category::np
                             :referent nil
                             :rule :stopped-PNF-early)
            
            (classify-&-record-span starting-position
                                    ending-position)))))))
 



(defun classify-&-record-span (starting-position ending-position)

  ;; the span has had its word actions run by the embedded parsing
  ;; and consists of more than one span.  Now we run the transition
  ;; net over that sequence of words and edges. If the net accepts
  ;; the sequence it will return a final state, and we use that
  ;; to establish a referent and construct the edge over the whole
  ;; capitalized sequence. 

  (let ((result
         (catch :leave-out-prefix
           (examine-capitalized-sequence starting-position
                                         ending-position))))
    (if result
      (typecase result
        (individual  ;; i.e. a name -- this is the standard return value
         (do-referent-and-edge result
                               starting-position ending-position))
        (cons
         (if (eq (first result) :suffix-flushed)
           (let ((first-edge
                  (do-referent-and-edge (second result)
                                        starting-position
                                        *pnf-end-of-span*)))
             (if (eq (third result) ending-position)
               first-edge
               ;; if there's indeed something left to scan then do it.
               (classify&record-the-rest-of-the-sequence
                first-edge (third result) ending-position)))
           
           (break "Unexpected 'cons' return value from ~
                   Examine-capitalized-sequence:~%~A~%" result)))
        
        (position
         ;; from here, we fall through to return this value, the position,
         ;; to PNF, which takes any non-nil value to indicate success,
         ;; in that it should return *pnf-end-of-span* as the value
         ;; of the fsa overall.
         (tr :terminated-early-at result)
         
         (if (further-to-the-right ending-position result)
           ;; then we can just imagine that we had started at this
           ;; position and keep going.   Have to check for function words or
           ;; punctuation that might have been included in the original sequence
           ;; that are now stranded.
           (let ((new-first-word (pos-terminal result)))
             (if (word-at-this-position-is-lowercase? result)
               (then
                 (tr :c&r/continuing-at-p-after-skipping-lc-word
                     result new-first-word)
                 (setq result (chart-position-after result)))
               (tr :c&r/continuing-at-result-pos result))
             
             (if (eq ending-position (chart-position-after result))
               ;; the remaining tail is just one word long, so we
               ;; should pass it to the processing that's tailored for
               ;; that case.
               (c&r-single-word result ending-position)
               (classify-&-record-span result ending-position)))
           
           (else
             ;; we're at the end of the span, so we just return,
             ;; indicating (by setting this global) that the fsas
             ;; are done up to this point. ///Not strictly true -- look
             ;; at more cases than just "Including President Bush"
             (setq *pnf-end-of-span* result)
             result )))
        (otherwise
         (break "Unanticipated type for 'result': ~a~%~a"
                (type-of result) result)))

      (else
        ;; examine-capitalized-sequence returned nil, which means that
        ;; its item list was empty, which means that the first word
        ;; in the sequence (e.g. "of") kicked us out of the loop.
        (let ((second-position
               (chart-position-after starting-position)))

          (if (eq second-position ending-position)
            ;; Then there's nothing more to be done and we signal to
            ;; PNF that it should fail the fsa.
            nil
            ;; otherwise pick up where we left off
            (classify-&-record-span second-position ending-position)))))))





(defun do-referent-and-edge (name starting-position ending-position)
  (let* ((category-of-name (category-of name))
         (referent (establish-referent-of-pn category-of-name name)))

    (when (consp referent)
      ;; an uncategorized-name was passed in, and it's found a referent
      ;; for it with an interesting category
      (setq category-of-name (cdr referent)
            referent (car referent)))

    ;; Names of locations are often proceeded by uncapitalized "the"
    ;; so the edge over the name should include it.
    (when (itypep referent 'named-location)
      (when (eq (word-before starting-position) word::|the|)
        (setq starting-position (chart-position-before starting-position)))) 

    (let ((edge (edge-over-proper-name
                 starting-position
                 ending-position
                 (category-for-edge-given-name-type category-of-name referent)
                 category::proper-name
                 referent
                 :pnf  ;; the "rule"
                 (successive-treetops  ;; the daughters
                  :from starting-position
                  :to ending-position))))
        
        edge )))


(defun category-for-edge-given-name-type (category-of-name name)
  (case (cat-symbol category-of-name)
    (category::person-name   category::person)
    (category::company-name  category::company)
    (category::name-of-location category::location)
    (category::uncategorized-name category::name)
    (category::collection
     (let ((sample (first (value-of 'items name))))
       (category-for-edge-given-name-type (itype-of sample) sample)))
    (category::company  category::company)
    (category::generic-co-word category::company)
    (category::person   category::person)
    (otherwise
     (break "Unexpected value for category of edge: ~a"
	    (cat-symbol category-of-name)))))


;;;------------------------------------------
;;; special threading through classification
;;;------------------------------------------

(defvar *of-appears-within-pnf-scan* nil
  "set during scan process whenever there is at least one capitalized
   word after an 'of' found after a scan had already commenced")

;;/// redundant with list at the end of examine
(defparameter *name-word-for-of*
  (define-individual 'name-word :name word::|of|))


(defun special-of-scan (starting-position ending-position)
  ;; these are the positions that delimit the capitalized sequence.
  ;; The 'of' is in the middle somewhere. We form names from the
  ;; two parts and then combine them here.
  
  (let ((split-point *of-appears-within-pnf-scan*))
    (setq *of-appears-within-pnf-scan* nil)

    (let ((e1 (c&r-multi-word-span starting-position split-point))
          (e2 (c&r-multi-word-span (chart-position-after split-point)
                                   ending-position)))
      (break "of"))))
#|

      (let ((items1 (name-components-of (edge-referent e1) e1))
            (items2 (name-components-of (edge-referent e2) e2)))

        (let* ((new-seq (define-sequence
                          (append items1 (list *name-word-for-of*)
                                  items2)))
               (cname (def-individual 'company-name
                        :sequence new-seq)))
          (unless cname
            (break "Error somewhere: name isn't being formed"))
          (let* ((co (or (find/company-with-name cname)
                         (make/company-with-name cname)))
                 (edge
                  (edge-over-proper-name
                   starting-position
                   ending-position
                   category::company
                   category::proper-name
                   co
                   :special-of-scan
                   (successive-treetops  ;; the daughters
                    :from starting-position
                    :to ending-position))))
            edge ))))))|#



(defun name-components-of (ref edge)
  ;; this is where we learn what the two sides of the 'of' name
  ;; actually are. For now we just find their name-words/sequences
  ;; and return them. Later this will have to be reorganized since
  ;; it will include responsibility for categorizing the new individual.
  (typecase ref
    (referential-category  ;; e.g. "Bank"
     ;; then there won't be a record on the category object of the word
     ;; that realizes it since it will have been put straight into 
     ;; the rdata and now buried in a cfr.  We'll just reconstruct it.
     (name-words-for/silent (words-between (pos-edge-starts-at edge)
                                          (pos-edge-ends-at edge))))
    (individual
     (let ((name-field (value-of 'name ref)))
       (if name-field
         (etypecase name-field
           (individual
            (if (eq (car (indiv-type name-field))
                    category::name)
              (value-of 'items (value-of 'sequence name-field))
              (assemble-name-for-individual ref)))
           (word
            (let ((name-word (name-word-for-word name-field)))
              (if name-word
                (list name-word)
                (assemble-name-for-individual ref)))))
         (assemble-name-for-individual ref))))
    (otherwise
     (break "Unexpected type for 'ref': ~a~%~a"
	    (type-of ref) ref))))


(defun assemble-name-for-individual (i)
  (declare (ignore i))
  (list
   (or (name-word-for-word (define-word "dummy"))
       (make-name-word-for/silent (word-named "dummy")))))





;;-------------------------- 4/4 obsolete from here on down
;;---- data structures

(defvar *items-in-PN-sequence* nil
  "holds the actual sequence toplevel items -- edges or words -- as
   they are encountered by the fsa")


;;;-------------------------------------------------------------
;;; General state machine for classifying capitalized sequences
;;;                     as proper names
;;;-------------------------------------------------------------

(defun classification-fsa (state position final-position)

  (when (eq position final-position)
    (return-from classification-fsa state))

  (let* ((ev (pos-starts-here position))
         (edge/s (ev-top-node ev))
         (word (pos-terminal position)))

    (if (eq edge/s :multiple-initial-edges)
      (sort-out-multiple-edge-&-resume-classification-fsa
       word state position final-position)
      (classification-fsa/continued
       edge/s word state position final-position))))


(defun classification-fsa/continued (edge word state
                                     position final-position)
  (let ( item  item-type  item-is-an-edge? )
    (setq item-type
          (cond (edge
                 (setq item-is-an-edge? t
                       item (edge-referent edge))
                 (edge-category edge))
                ((null (word-capitalization word))
                 ;; quick test for punctuation
                 (setq item word)
                 word )
                (t (setq item word)
                   *unknown-word*)))

    (push (kcons item-type item)
          *items-in-PN-sequence*)

    (let ((transition (pnf-transition? state item-type))
          next-state  action )

      (unless transition
        (if *break-on-pattern-outside-coverage?*
          (break "Gap in the transition net for proper names:~
                  ~%No rule for the state ~A and the item type ~A"
                 state item-type)
          (return-from classification-fsa/continued
            (pnf-state-named :pattern-is-outside-coverage))))

      (setq next-state (car transition)
            action (cadr transition))

      (when action
        (eval action))

      ;; check for some exceptions. ///If this this list gets
      ;; too long move the information to some uniform place.
      ;; If the exception decides that we have to abort, it
      ;; will throw a position up to Classify-&-record, 
      ;; otherwise we'll just fall through this and continue
      ;; on to the next transition
      (case (pnf-state-symbol next-state)
        (:exception-check-for-titles
         (pnf/check-titles edge))
        (:exception-check-for-titles/prior-word
         (pnf/check-titles/prior-word position edge)))

      (classification-fsa next-state
                          (if item-is-an-edge?
                            (pos-edge-ends-at edge)
                            (chart-position-after position))
                          final-position))))



(defun pnf/check-titles (title-edge)
  ;; We've just noticed a title in the midst of a capitalized
  ;; sequence. It's probably a term of address: "President Mugabe",
  ;; so we want to rework the pnf processing so that the title
  ;; is left out as a separate constituent.
  (throw :transition-net-aborts-the-sequence
         (pos-edge-ends-at title-edge)))


(defun pnf/check-titles/prior-word (title-starts-at title-edge)
  ;;   In this case there is one, unknown, word in front of the
  ;; title. The question is whether this is a name or just a word
  ;; that's been capitalized because, e.g. it starts the sentence.

  (let ((1st-in-para? (first-item-in-its-paragraph
                       (chart-position-before title-starts-at))))
    (if 1st-in-para?
      ;; then we can ignore that 1st word before the title and
      ;; throw out to just after the title
      (throw :transition-net-aborts-the-sequence
             (pos-edge-ends-at title-edge))
      (break "stub"))))



;;;-------------
;;; subroutines
;;;-------------

(defun sort-out-multiple-edge-&-resume-classification-fsa
       (word state position final-position)
  ;; there is more than one edge over the terminal at this position.
  ;; We go through the vector and see if there's some applicable criteria
  ;; for selecting just one of the edges and continuing as normal.

  (let ((edges (edges-between position (chart-position-after position)))
        residue  preferred-edge )
    (dolist (edge edges) ;; get rid of any literal (there would just be one)
      (unless (eq :literal-in-a-rule
                  (edge-rule edge))
        (kpush edge residue)))

    (if (null (cdr residue))  ;; there's just one left
      (then
        (setq preferred-edge (kpop residue))
        (classification-fsa/continued
         preferred-edge
         word state position final-position))
      (else
        (break "Multiple edges over the word ~A~
                ~%even discounting a literal")))))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996,2011-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "examine"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  0.18 June 2013

;; initiated 4/1/94 v2.3
;; 0.1 (4/23) fixed change of where :literal-in-a-rule is in Sort-out-multiple-
;;      preterminals-for-pnf. Added case for single-capitalized-word in Examine...,
;;       and for literals.
;; 0.2 (5/2) fixing interpretation of initials so that a seq. of just initials is not
;;      taken as a person.  6/13 added check with ordinals that if it isn't in
;;      last position we just call the sequence a 'name', added check for function
;;      words.  6/14 added the flag.  Changed Def- to Define-individual
;; 0.3 (12/7) rearranged the order of tests w/in the :word case so particular words
;;      can be checked w/o their having to be mentioned in rules: fixes bug w/ "&"
;;     (1/16/95) added 'country'
;;     (2/23) added person-versions
;; 0.4 (4/13) added Occurs-in-names facility to avoid always extending the Cond
;;     (4/19) made adjustments to fit name-word changes. (4/23) made company names
;;      done by a subr just like person names
;; 0.5 (4/30) flushed company-generalization-word in favor of a name-word with
;;      :heuristic-company-word on its plist. 
;; 0.6 (5/2) tweeking name constructor re. "and".  ...5/11 tweeking and, of, etc.
;; 0.7 (5/15) changed the return value in those cases to include the pos. after
;;     (5/29) added "The" as internal evidence for companies
;; 0.8 (5/29) fixed a problem with "...of <city>"
;; 0.9 (7/5) added case for initial 'OF', which leads to 'no items' condition
;; 0.10 (7/7) reworked treatment of ordinals to fit in as person-versions
;;      (8/9) Refined :flush-suffix check for inc-terms. Gave 'the' a prefix 
;;       detector.
;; 0.11 (10/30) updated call to make person names to hack 'and'
;; 0.12 (12/4) tweeked treatment of person-versions  
;; 0.13 (12/29) tweeked treatment of titles.   (12/31) added an ad-hoc case
;;       to the Sort-out-multiple-preterminals-for-pnf thread
;; 0.14 (1/1/96) added section-marker as an edge referent possibility in 
;;       Referents-of-list-of-edges. Added to Reason-to-terminate-name-at-and? the
;;       case of 'and' being first in the sequence.
;; 0.15 (1/16) added co-activity as internal evidence.
;; 0.16 (6/18) removed "the" as a direct rationale for a company in Categorize-and-
;;       form-name.
;;      ---  Somewhere in there the monster loop was converted to flet's w/o a
;;       record of why.
;;      (6/21/07) Dealt with case of sentence-initial "an" (6/26) added 'word' as a
;;       possible 'referent' in Referents-of-list-of-edges. (7/6) for the case of a
;;       sentence-initial "the" (but we don't seem to be paying any attention to that)
;;       hacked the uncategorized-name case in Categorize-and-form-name to pop off
;;       any initial words in items that have rule sets.
;;      (11/13/08) Encountered "Bernard/Orleans" which ran into a break about whether
;;       to push the word onto the item list. Added a (unused) flag 'slash' to record
;;       this so we could potentially split it up again given evidence for it.
;;      (2/14/11) "Business Factory" was causing a parser design-limit reached error, 
;;       with an infinite loop in examine-capitalized-sequence, so I added a line to 
;;       walk through multiple-treetops properly to fix it. - cfg
;; 0.17 (8/11 -- 9/5/11) Added internal evidence for names that refer to locations
;;       e.g. "Benedict Pond". 10/3 Needs a heuiristic for "South Lee". 
;; 0.18 (11/6) removed the "The" check and removal from uncategorized names because
;;       is was written too broadly and sweeping up things it shouldn't have.
;;      (12/19/11) Adding "Hurricane" by analogy to how place names are done.
;;       Tweaking little things in lieu of a big makeover through 12/10/12. Fixed
;;       typo in that and finished off stub 1/18/13. Fixed probable tempest in a
;;       tea pot in the tt-backoff code 3/5/13. And fixed the fix 3/6/13. Fanout in
;;       the title elements 3/21/13.  (3/28/13) Added country to the set of locals
;;       in the monster loop and double-country-check that's called if more than
;;       one country is seen. Right now this always throws "not a name" to abort
;;       further processing. Could be considerably refined (e.g. for countries in
;;       adjective form), but need the cases. 6/14/13 Refactored call to make person
;;       name.

(in-package :sparser)

;;;-------------------------
;;; flag for error checking
;;;-------------------------

(defparameter *break-on-new-categories-in-cap-seq* nil)
 ;; controling whether to debug these


;;;-------------------------------------
;;; general property for the easy cases
;;;-------------------------------------

(defun occurs-in-names (category &optional kind-of-name)
  (etypecase category
    (symbol
     (setq category (category-named category))
     (unless category
       (break "No category named ~A has been defined" category)))
    ((or referential-category mixin-category category)))

  (push-onto-plist category
                   (or kind-of-name
                       t )
                   :category-is-valid-in-names))


(defun valid-name-category? (category)
  (get-tag-for :category-is-valid-in-names category))



;;;--------
;;; driver
;;;--------

(defun examine-capitalized-sequence (starting-position ending-position)
  
  ;; Called from classify-&-record-span
  ;; The span between the two positions has been parsed for polywords
  ;; and preterminals. Any known abbreviation or name-word in it will
  ;; thus have been identified.
  ;;    We make a pass over it and analyze it for any patterns or
  ;; inclusion of marker words/categories that would act as internal
  ;; evidence for its classification. 
  
  (tr :examine-capitalized-sequence starting-position ending-position)
  (let ((count 0)
        (position starting-position)
        tt  tt-category  label  items  next-position already-pushed?
        name-state  edge-labeled-by-word multiple-treetops
        &-sign  initials?  person-version  inc-term?  of  and  the  slash
        generic-co co-activity koc?  ordinal  flush-suffix 
        country
        location-head  location  hurricane)
    
    (flet
        ;; Check-cases is called after we've accumulated everything
        ((check-cases (tt label)
           (case label
             (:word
              (when (edge-p tt) 
                ;; The scope on the flet's and their treatment of mutually
                ;; referenced variables (or something like that) is such that
                ;; the setq of tt in label-for isn't having any effect here
                (setq tt (edge-category tt)))

              (case (word-symbol tt)
                (word::and-sign  
                 (setq &-sign items))
                  
                (word::|of|
                  (if items
                    (if (valid-of-context? items)
                      (setq of count)
                      (else
                       (tr :pnf/of-bad-prefix position)
                       (setq flush-suffix position)
                       ;; signal to the driver that the name ends here,
                       ;; then return from the loop so we'll fall through
                       ;; to the name constructor without looking at
                       ;; the rest of the items.
                       (return-from check-cases nil)))
                    (else
                     ;; If there are no 'items', then we're at the beginning
                     ;; of the capitalized sequence. This can happen if we're
                     ;; in a title or the like and the "of" is capitalized.
                     ;; We want to get out of the loop (as above) but there's
                     ;; no 'prefix' to be rendered into a name so we don't
                     ;; set 'flush-suffix'.
                     (return-from check-cases nil))))
                  
                  
                (word::|and|
                  (if (reason-to-terminate-name-at-and? items)
                    ;; Don't want to inadvertently mis-interpret a conjunction
                    ;; that happens to have capitalized words on either side of
                    ;; it as though it were a name. 
                    (then (setq flush-suffix position)
                          (return-from check-cases nil))
                    (setq and count)))
                  
                ((word::|the| word::|The|)
                 (if items
                   ;; Then it's not the first thing in the sequence
                   ;; s`o we have to throw out the prefix in front of it
                   (then
                    (tr :throwing-out-prefix tt)
                    (throw :leave-out-prefix position))
                   (setq the count)))

                ((word::|a| word::|an|)
                 ;; For whatever oddity of chance, this case hadn't been
                 ;; encountered in the hayday of this code ('92-'95).
                 ;; The case in point is sentence initial. It's just
                 ;; going to punt, which is probably inadequate.
                 (if items
                   (break "Capitalized sequence internal 'a'/'an' - what ~
                           do we do?")
                   (return-from examine-capitalized-sequence nil)))
                  
                (otherwise
                 (if (word-mentioned-in-rules? tt)
                   ;; Two cases are decoded above as giving us ":word"
                   ;; This case is the one where the word appears as the
                   ;; label on an edge
                   (cond
                    ((only-known-as-a-name tt))
                      
                    (edge-labeled-by-word
                     (cond ((edge-for-literal? edge-labeled-by-word)
                            (when (eq (edge-category edge-labeled-by-word)
                                      (punctuation-named #\/))
                              (setq slash count))
                            ;;(kpush (make-name-word-for/silent tt position) items)
                            ;; If we push on, e.g., a slash, then it appears twice.
                            ;;/// Need to re-appreciate this loop better to see
                            ;; if there are cases were it would need to be added
                            (setq edge-labeled-by-word nil))
                           (t 
                            (break "New case for a word labeling an edge in a ~
                                    capitalized sequence:~%~A" tt))))
                      
                    ((function-word? tt))
                      
                    (t
                     (when *break-on-new-categories-in-cap-seq*
                       (break "New case for a known word in a capitalized ~
                               sequence:~%~A" tt))))
                     
                     
                   ;; new word because it doesn't have a rules field.
                   (else
                    (setq already-pushed? t)
                    (kpush (make-name-word-for-unknown-word-in-name tt position)
                           items)
                    (if name-state
                      (if (eq (first name-state) :word)
                        (then (kpop name-state)
                              (kpush :words name-state))
                        (kpush :word name-state))
                      (kpush :word name-state)))))))
              
               ;;---- That was the end of the word cases, now we look at
               ;;  category edge labels
               
             (category::name-word
              (when (get-tag-for :heuristic-company-word
                                 (edge-referent tt))
                (setq koc? count)))
               
             #|(category::company-generalization-word
             (setq koc? t))|#
               
             (category::initial 
              (setq initials? t))
               
             (category::single-capitalized-letter)
             ;; dangerous to think of it as either an initial missing its
             ;; period (and so indicating a person), or going the other way.
               
             (category::generic-co-word
              (setq generic-co (if generic-co 
                                 (if (not (consp generic-co))
                                   (list count generic-co nil)
                                   (push count generic-co))
                                 count)))
               
             (category::company-activity-word
              (setq co-activity (if co-activity 
                                  (if (not (consp co-activity))
                                    (list count co-activity nil)
                                    (push count co-activity))
                                  count)))
               
             (category::inc-term
              (setq inc-term? t)
              (unless (if (eq word::period (pos-terminal next-position))
                        (eq (chart-position-after (chart-position-after position))
                            ending-position)
                        (eq next-position ending-position))
                ;; If this term isn't sequence final then we've presumably
                ;; included more in the scan than we should have.
                ;;   The presenting case (5/95) is ".. Inc. Shinderman joined ..."
                ;; where the abbreviation period is conflated with the end-of-
                ;; sentence period.
                ;;(setq flush-suffix (chart-position-after (chart-position-after position)))
                (setq flush-suffix (pos-edge-ends-at tt))
                (tr :scan-went-beyond-inc-term flush-suffix)
                (return-from check-cases nil)))
               
             (category::kind-of-company
              (setq koc? t))
               
             (category::city
              (if (and of
                       (= count (1+ of))  ;; the "of" is just to the left
                       (eq next-position ending-position))
                ;; "International Resources Group of Washington, D.C."
                (setq flush-suffix (chart-position-before position))))
               
             (category::region
              (kpush  `(,count . ,(edge-referent tt)) location))

             (category::region-type
              (kpush  `(,count . ,(edge-referent tt)) location))
                
             (category::compass-point   ;; "Southeast Bank"
              (kpush  `(,count . ,(edge-referent tt)) location))
             (category::direction   ;; "Southeast Bank"
              (kpush  `(,count . ,(edge-referent tt)) location))

             (category::path-type
              (kpush  `(,count . ,(edge-referent tt)) location))
              
             (category::US-state  ;; 8/11
              (kpush  `(,count . ,(edge-referent tt)) location))
               
             (category::country  ;; "American National Standards Institute"
              (if country
                (double-country-check tt items count)
                (setq country `(,count . ,(edge-referent tt)))))

             (category::hurricane  ;; "Hurricane Adrian"
              (setq hurricane `(,count)))
               
             (category::ordinal   ;; e.g. in "Thomas E. Paisley III"
              (setq ordinal `(,count . ,(edge-referent tt))))
               
             (category::person-prefix  ;; e.g. "Mr."
              ;; we don't want this included as part of the name, so we use
              ;; the escape route through the catch in Classify-&-record-span
              ;; and indicate that this part of the sequence should be rejected
              ;; from the proper name, leaving the rest of it to be picked up
              ;; again and resumed in a moment by an independent call to PNF.
              (throw :leave-out-prefix (pos-edge-ends-at tt)))
               
             (category::person-version    ;; e.g. "Jr."
              (setq person-version (cons count (edge-referent tt))))
               
             (category::title
              ;; While working on the Apple documentation, there was a check made
              ;; for where in the sequence of items the title appears so as to
              ;; distinguish between "President Clinton" (count = 1) and an
              ;; embedded, spurious reference to a word that in other contexts
              ;; would be a proper title: "Sound Manager 3.0". Now (12/95) we
              ;; have a case where the title is embedded in the sequence:
              ;; "Echlin Chairman and Chief Executive Officer Frederick J. Manceski"
              ;; so we're now doing the escape regardless of the position.
              ;; The "Sound Manager" problem will need an alternative treatment.
              (unless items
                (tr :throwing-out-prefix tt)
                (throw :leave-out-prefix (pos-edge-ends-at tt))))
               
             (category::be  ;; "Is AppleTalk ..."
              (if items
                (then
                 (tr :throwing-out-prefix tt)
                 (throw :leave-out-prefix (pos-edge-ends-at tt)))
                (break "'be' embedded within a capitalized-sequence")))
               
               
             (otherwise
              (or (valid-name-category? tt-category)
                  (if *break-on-new-categories-in-cap-seq*
                    (break "New category in capitalized sequence: ~A" label)
                    (kpush tt items))))))
         ;; That was the end of check-cases,

         (label-for (tt)
           (etypecase tt 
             (edge
              (if (word-p (edge-category tt))
                (then (setq edge-labeled-by-word tt
                            tt (edge-category tt))
                      ;;/// this set'ing of tt doesn't have any effect
                      ;; in the outer flet.  ddm 6/21/07
                      :word )
                (else
                 (setq tt-category (edge-category tt))
                 (cat-symbol tt-category))))
                 
             ;; n.b. edges can be labeled with words, and
             ;; this distribution of the items is thus
             ;; sensitive to whether a word is ever defined
             ;; as a literal in some rule
             (word :word)
                 
             (cons
              (unless (eq (car tt) :multiple-treetops)
                (break "Unexpected cons returned from pnf-treetop-at:~%~a" tt))
              (setq multiple-treetops (cdr tt))))))


      ;; That was the end of the two flets. This is where we start actually
      ;; executing something
        
      (loop
        ;; Loop over all the treetop constituents between the start and
        ;; end positions of this capitalized sequence that the scan phase
        ;; delimited. 
        (if (eq position ending-position)
          (return)
          (incf count))
          
        (setq tt (pnf-treetop-at position))
          
        (setq label (label-for tt)) ;; 2d flet definition above
          
        (tr :examining label tt)          
        ;; Look at the tt and set flags (indicators of the type of name)
        (if multiple-treetops
          (dolist (mtt multiple-treetops)
            ;; collect evidence from each of the cases
            (check-cases mtt (label-for mtt))) ;; 1st flet above
          (check-cases tt label))
          
        ;; Add to the items list
        (if already-pushed?
          (if multiple-treetops
            (break "Interaction between already-pushed? and multiple-treetops")
            (setq already-pushed? nil))
          (if multiple-treetops
            (let ((backoff-tt (backoff-multiple-treetops-for-pnf multiple-treetops)))
              ;; pick which one of the tt to use
              (kpush backoff-tt items))
            (kpush tt items)))
          
        (setq next-position
              (if multiple-treetops
                (pos-edge-ends-at (first multiple-treetops))
                (etypecase tt
                  (edge (pos-edge-ends-at tt))
                  (word (chart-position-after position)))))
          
        (setq position next-position)
        (setq multiple-treetops (cdr multiple-treetops))) ;; end of loop
        

      ;; Now clean up a bit, then call categorize-and-form-name
      ;; with all the evidence we've collected (the local variables)
      ;; and have it come up with the name object that we return.
        
      (when items
        (setq items (remove-duplicates items :test #'eq))
        ;; Need to review the item accumulator to see why name-words
        ;; are being accumulated twice

        (when location
          (when (= count (caar location))
            (setq location-head (cdar location))))

        (let ((name
               (categorize-and-form-name (referents-of-list-of-edges items)
                                         name-state country
                                         &-sign initials? person-version
                                         inc-term? of and the generic-co co-activity
                                         koc? ordinal location-head hurricane)))
          (if flush-suffix
            (then
             ;; Some item in the loop set this flag to the position where
             ;; it occurred and then return'd the loop. We pass the
             ;; information on to our caller, classify-&-record-span, by
             ;; feeding into its etypecase on our return value.
             (setq *pnf-end-of-span* flush-suffix)  ;; read by PNF-driver
             (list :suffix-flushed name flush-suffix))
              
            name ))))))


(defvar *break-before-creating-name* nil
  "Helpful in debugging PNF. Traps it before it's made any 
   real mistakes and built something we'll have to rip out.")


(defun categorize-and-form-name (items 
                                 name-state country
                                 &-sign initials? person-version
                                 inc-term? of and the generic-co co-activity
                                 koc? ordinal location-head hurricane)
  (declare (ignore hurricane name-state country))

  ;; Analyze the evidence and determine what sort of name this is
  ;; and make it [[ why not look for existing one? ]]. 
  ;; The referent of the edge is determined by our caller up in
  ;; classify-&-record-span using the fn do-referent-and-edge

  (when *break-before-creating-name*
    (push-debug `(,items)) ;; all of them?
    (break "Look around at what categorize-and-form-name will do"))

  (cond
   ((known-sequence items)) ;; throws if it succeeds
   ((item-already-linked-to-entity items)) ;; ditto
   (of
    (analyze-structure-of-name-with-of
     items of &-sign initials? inc-term?))
   (t
    ;;--- examine evidence for a way to categorize the name
    (let ( name
           (category
            (cond (inc-term? category::company-name)
                  (location-head category::location)
                  (&-sign    category::company-name)
                  ;;(the       category::company-name)
                  ;; 6/96 This is too strong for a genre that isn't company rich.
                  ;; ///Probably should have a switch that swaps between a set
                  ;; of criteria that are agressive vs. one that is cautious.
                  (initials?
                   (if (some-non-initial-in-items items)
                     category::person-name
                     category::name))
                  (generic-co category::company-name)
                  (koc? category::company-name)
                  (co-activity category::company-name)
                  (ordinal 
                   ;; this is weak evidence --> limited partnerships
                   category::person-name )
                  (person-version category::person-name)
                  ;;////(hurricane category::hurricane) ;; sl dependent
                  (t category::name))))
      ;; (break "1: category = ~a" category)
      ;;   With "U.N. officials, it's being seen as a person the
      ;;   second time through when classify&record-the-rest-of-the-sequence
      ;;   resumes this process starting with "U.N. ..." rather than the
      ;;   original that started eariler. 
      ;;--- Look for things that would restructure the elements of the name

      (when ordinal  ;; e.g. "III", "Fourth"
        ;; a cons of the count and an ordinal unit
        (if (= (car ordinal) (length items))
          ;; is it at the end of the sequence? If so we definitively
          ;; take it to be part of the name of a person. 
          (then
            (setq person-version (cdr ordinal))
            (setq items (all-but-last-item! items)))
          (else
            ;; we probably don't have a person here unless
            ;; there is independent evidence
            (unless (or initials? inc-term?)
              ;; "Grumman Hill Investments II L.P."
              (setq category category::name)))))

      (when the
        (when (= the 1) ;; it was first. Drop it from the items
          ;; and if it's really part of the name something can
          ;; put it back.  This will make for an odd relationship
          ;; with the start position of the edge that needs to be
          ;; sorted out at some point. 
          ;;//// look for the similar cases and rationalize
          (setq items (cdr items))))

      (when (title-elements-in-items items)
        (multiple-value-bind (title-elements name-elements)
                             (split-off-title-from-name items)
          ;; FIXME -- droping these on the floor ////////////////////
          ;; They really should have been picked up in the examination
          ;; of the scan. 
          (declare (ignore title-elements))
          (setq items name-elements)
          (setq name category::person-name)))          

    #|(when person-version  ;; e.g. "Jr."
        ;; substitute the object for the index that Examine... has passed in
        (setq person-version (nth (1- person-version) items))
        ;; excise it from the item list
        (if (eq (car (last items)) person-version)
          (setq items (all-but-last-item! items))
          (when *break-on-new-cases*
            (break "New case: The person-version is not at the end of the ~
                    list of name items.~%It's probably a conjunction of ~
                    names.~%  ~A~%  ~A" person-version items))))|#

      ;;--- Make the name
      (tr :name-category-is category)

      (setq name
            (ecase (cat-symbol category)
              (category::name 
               ;; ignoring the :and for now, though that would go through
               ;; (make-uncategorized-name-from-items items :and and)
               (or (find/uncategorized-name items)
                   (make/uncategorized-name items)))

              ;; Why don't these do find's first?
              (category::person-name
               (if and
                 (make-a-collection-of-person-names items and person-version)
                 (make-person-name-from-items items :version person-version)))
              (category::company-name
               (make-company-name-from-items items
                 :&-sign &-sign          :ordinal ordinal
                 :inc-term? inc-term?    :of of   :and and  :the the
                 :generic-co generic-co  :koc? koc?
                  ))
              (category::location
               (make-location-name items location-head))
;              (category::hurricane
;               (make-hurricane-name items hurricane))
;;     Hurricane SL development interrupted. Should design and build the
;;   general pattern for this instead. Perhaps some code-generating macros
              ))
      name ))))



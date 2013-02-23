;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1996,2011-2013  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2007-2008 BBNT Solutions LLC. All Rights Reserved
;;; $Id$
;;;
;;;     File:  "examine"
;;;   Module:  "model;core:names:fsa:"
;;;  version:  0.18 January 2013

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
;;       (2/14/11) "Business Factory" was causing a parser design-limit reached error, with an infinite loop in examine-capitalized-sequence, so I added a line to walk through multiple-treetops properly to fix it. - cfg
;; 0.17 (8/11 -- 9/5/11) Added internal evidence for names that refer to locations
;;       e.g. "Benedict Pond". 10/3 Needs a heuiristic for "South Lee". 
;; 0.18 (11/6) removed the "The" check and removal from uncategorized names because
;;       is was written too broadly and sweeping up things it shouldn't have.
;;      (12/19/11) Adding "Hurricane" by analogy to how place names are done.
;;       Tweaking little things in lieu of a big makeover through 12/10/12. Fixed
;;       typo in that and finished off stub 1/18/13.

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
  
  ;; Called from Classify-&-record-span
  ;; The span between the two positions has been parsed for polywords
  ;; and preterminals. Any know abbreviation or name-word in it will
  ;; thus have been identified.
  ;;    We make a pass over it and analyze it for any patterns or
  ;; inclusion of marker words/categories that would act as internal
  ;; evidence for its classification. 
  
  (tr :Examine-capitalized-sequence starting-position ending-position)
  (let ((count 0)
        (position starting-position)
        tt  tt-category  label  items  next-position already-pushed?
        name-state  edge-labeled-by-word multiple-treetops
        &-sign  initials?  person-version  inc-term?  of  and  the  slash
        generic-co co-activity koc?  ordinal  flush-suffix 
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
                  (word::and-sign  (setq &-sign items))
                  
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
                  
                  ((or word::|the|
                       word::|The|)
                    (if items
                      ;; Then it's not the first thing in the sequence
                   ;; s`o we have to throw out the prefix in front of it
                      (then
                       (tr :throwing-out-prefix tt)
                       (throw :leave-out-prefix position))
                      (setq the count)))

                  ((or word::|a| word::|an|)
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
                      (t (break "New case for a word labeling an edge in a ~
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
               
               (category::country)  ;; "American National Standards Institute"

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
                      (kpush tt items)))))))

      (flet ((label-for (tt)
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
        
        (loop
          (if (eq position ending-position)
            (return)
            (incf count))
          
          (setq tt (pnf-treetop-at position))
          
          (setq label (label-for tt))
          
          (tr :examining label tt)
          
          (if multiple-treetops
            (dolist (mtt multiple-treetops)
              ;; collect evidence from each of the cases
              (check-cases mtt (label-for mtt)))
            (check-cases tt label))
          
          (if already-pushed?
            (if multiple-treetops
              (break "Interaction between already-pushed? and multiple-treetops")
              (setq already-pushed? nil))
            (if multiple-treetops
              (let ((backoff-tt (backoff-multiple-treetops-for-pnf multiple-treetops)))
                (kpush backoff-tt items))
              (kpush tt items)))
          
          (setq next-position
                (if multiple-treetops
                  (pos-edge-ends-at (first multiple-treetops))
                  (etypecase tt
                    (edge (pos-edge-ends-at tt))
                    (word (chart-position-after position)))))
          
          (setq position next-position)
          (setq multiple-treetops (cdr multiple-treetops)))
        
        
        (when items

          (setq items (remove-duplicates items :test #'eq))
          ;; Need to review the item accumulator to see why name-words
          ;; are being accumulated twice

          (when location
            (when (= count (caar location))
              (setq location-head (cdar location))))

          (let ((name
                 (categorize-and-form-name (referents-of-list-of-edges items)
                                           name-state
                                           &-sign initials? person-version
                                           inc-term? of and the generic-co co-activity
                                           koc? ordinal location-head hurricane)))
            (if flush-suffix
              (then
                ;; Some item in the loop set this flag to the position where
                ;; it occurred and then return'd the loop. We pass the
                ;; information on to our caller, Classify-&-record-span, by
                ;; feeding into its etypecase on our return value.
                (setq *pnf-end-of-span* flush-suffix)  ;; read by PNF-driver
                (list :suffix-flushed name flush-suffix))
              
              name )))))))



(defun categorize-and-form-name (items name-state
                                 &-sign initials? person-version
                                 inc-term? of and the generic-co co-activity
                                 koc? ordinal location-head hurricane)
  (declare (ignore hurricane name-state))

  ;; Analyze the evidence and determine what sort of name this is
  ;; and make it [[ why not look for existing one? ]]. 
  ;; The referent of the edge is determined by our caller up in
  ;; classify-&-record-span using the fn do-referent-and-edge

  (cond
   ((item-already-linked-to-entity items)) ;; throws if it succeeds
   (of
    (analyze-structure-of-name-with-of items of
                                       &-sign initials? inc-term?))
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

      (setq name
            (ecase (cat-symbol category)
              (category::name 
               ;; ignoring the :and for now, though that would go through
               ;; (make-uncategorized-name-from-items items :and and)
               (or (find/uncategorized-name items)
                   (make/uncategorized-name items)))

              ;; Why don't these do find's first?
              (category::person-name
               (make-person-name-from-items
                items :version person-version :and and))
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



;;;--------------------------------------------------------------
;;; Checking out cases where the word might breakup the sequence
;;;--------------------------------------------------------------

;;--- "and"

(defun reason-to-terminate-name-at-and? (items-in-reverse-order)
  (if (null items-in-reverse-order)
    ;; if there aren't any items, then the "and" is the first item
    ;; in the sequence.
    t
    (let* ((previous-item (first items-in-reverse-order))
           (label-on-last-item
            (etypecase previous-item
              (edge (edge-category previous-item))
              (word previous-item)
              (individual
               (ecase (cat-symbol (itype-of previous-item))
                 (category::name-word
                  (value-of 'name previous-item)))))))
      (cond
       ;; basically, we want to flag any known name head

       ((eq label-on-last-item category::generic-co-word) ;; "Corporation"
        t )

       ((eq label-on-last-item category::inc-term) ;; "Inc."
        t )

       ((eq label-on-last-item category::country) ;; "Britain and Europe"
        t )

       (t  nil)))))


;;--- "of"

(defun valid-of-context? (items)
  ;; Called from Examine-capitalized-sequence when the word "of"
  ;; is seen. If it likes the context to the left (reflected in
  ;; the list of processed items and the state of the various
  ;; globals), then it returns t.  Otherwise it returns nil and
  ;; the name will be truncated at that point.
  (let* ((item1 (first items))
         (label-on-prior-item
          (etypecase item1
            (edge (edge-category item1))
            (word item1)
            (individual
             (ecase (cat-symbol (itype-of item1))
               (category::name-word
                (value-of 'name item1)))))))

    (case (cat-symbol label-on-prior-item)
      (category::kind-of-subsidiary t )   ;; "Department"
      (category::kind-of-company t)       ;; "Ministry"
      (otherwise nil ))))
        


#| original that dispatches on length
    (cond
     ((> (length items) 2) nil)

     ((= (length items) 2)  ;; "The Department of ..."
      ;; broken out from length 1 just in case its useful to do 
      ;; something else like look at the prior word
      (case (cat-symbol label-on-prior-item)
        (category::inc-term         nil)
        (category::generic-co-word  nil)
        (category::name-word        nil)
        (category::kind-of-subsidiary t )
        (category::kind-of-company t)
        (otherwise
         (break "new two word -of- case")
         nil)))

     (t  ;; most typical situation
      (case (cat-symbol label-on-prior-item)
        (category::inc-term         nil)
        (category::generic-co-word  nil)
        (category::name-word        nil)

        (category::kind-of-subsidiary t )   ;; "Department"
        (category::kind-of-company t)       ;;

        (otherwise
         (if *break-on-new-categories-in-cap-seq*
           (then
             (format t "~%~%---------- new 'of' context ------------~
                        ~%  prior label = ~A~%" label-on-prior-item)
             (break "Stub: consider this case"))
           nil )))))  |#


(defun analyze-structure-of-name-with-of (items of
                                          &-sign initials? inc-term?)

  ;; Called from Categorize-and-form-name if the "of" gets through
  ;; the filter.  It's called here rather than in company names 
  ;; because of the possibility of "Anne of Arragon" and the like.

  (declare (ignore of &-sign initials? inc-term?))
  ;; ignoring it all for the moment given this stub

  (let ((sequence (define-sequence items)))
    (define-individual 'company-name
      :sequence sequence)))




;;;-------------------------------------------------------
;;; recording interesting, category-specific, patternings
;;;-------------------------------------------------------

(defun some-non-initial-in-items (items)
  ;; the initials flag was up, but there is the danger of interpreting
  ;; an unknown abbreviation as a person: "M.B.A." if we don't do
  ;; this check. ///Having a notion of a 'patern' for the item 
  ;; sequence would probably be more elegant.
  (dolist (item items nil)
    (unless (and (individual-p item)
                 (eq (first (indiv-type item))
                     category::initial))
      (return-from some-non-initial-in-items t))))


(defun title-elements-in-items (items)
  (unless (every #'(lambda (o) (typep o 'individual)) items)
    (push-debug `(,items))
    (error "Unexpected: not every item in a name is an individual"))
  (let ((categories (mapcar #'cat-symbol
                            (mapcar #'i-type-of items))))
    (push-debug `(,categories ,items))
    (or (memq 'category::title-modifier categories)
        (memq 'category::single-word-title categories)
        (memq 'category::military-rank categories))))

(defun split-off-title-from-name (items)
  (flet ((title-element? (e)
           (or (itypep e category::title-modifier)
               (itypep e category::single-word-title)
               (itypep e category::military-rank))))
    (let ( title  name )
      (dolist (item items)
        (if (title-element? item)
          (push item title)
          (else
           (setq name (memq item items))
           (return))))
      (values (nreverse title) name))))

;;;-------------
;;; subroutines
;;;-------------

;;///////// move this
(defun all-but-last-item! (list)
  (nreverse (cdr (nreverse list))))



(defun pnf-treetop-at (position)
  (let ((top-node-field (ev-top-node (pos-starts-here position))))
    (cond ((eq top-node-field :multiple-initial-edges)
           (sort-out-multiple-preterminals-for-pnf position))
          (top-node-field ;; i.e. an edge
           top-node-field)
          (t (pos-terminal position)))))




(defun sort-out-multiple-preterminals-for-pnf (position)
  ;; there is more than one edge over the terminal at this position.
  ;; We go through the vector and see if there's some applicable criteria
  ;; for selecting just one of the edges and return it.
  (let ((edges (edges-between position
                              (chart-position-after position)))
        residue )
    (dolist (edge edges)
      ;; get rid of any literal (there would just be one)
      (unless (eq :literal-in-a-rule
                  (edge-right-daughter edge))
        (kpush edge residue)))

    (if (null (cdr residue))  ;; there's just one left
      (kpop residue)
      (pnf/remove-name-words-from-preterminals residue position))))


(defun pnf/remove-name-words-from-preterminals (edges position)
  ;; have to be at least two edges or we wouldn't have gotten here
  (let ( residue )
    (dolist (edge edges)
      (unless (eq (edge-category edge) category::name-word)
        (kpush edge residue)))
    (if (null (cdr residue))
      (kpop residue)
      (pnf/prefer-heads-over-modifiers edges position))))


(defun pnf/prefer-heads-over-modifiers (edges position)
  ;; if one of the edges is labeled as an np-head it is to be prefered
  ;; over a modifier on the (weak) rationale that if the modifier was
  ;; the right interpretation it would have already been parsed up into
  ;; a phrase, whereas the heads are often in composition with terms
  ;; outside the grammar and are less likely to have parsed up under
  ;; a larger edge
  (let ( residue  head  multiple-heads  form-label )
    (dolist (edge edges)
      (setq form-label (edge-form edge))
      (if form-label
        (if (eq form-label category::np-head)
          (then
            (if head
              (setq multiple-heads
                    (etypecase head
                      (cons (cons edge multiple-heads))
                      (edge (list edge head))))
              (setq head edge)))
          (push edge residue))
        (push edge residue)))

    (cond (multiple-heads
           (break "The word ~A has more than one interpretation ~
                   as a head~%" (pos-terminal position)))
          (head  head)
          (residue
           `(:multiple-treetops ,@residue))
          (t ;; shouldn't get here
           (break "Threading bug: none of the defined cases cover ~
                   the situation")))))


(defun backoff-multiple-treetops-for-pnf (treetops)
  ;; This scheme will only work if we're spanning just one word
  (let* ((first-tt (first treetops))
         (start-vector (edge-starts-at first-tt))
         (end-vector (edge-ends-at first-tt))
         name-word-individual )
    (unless (= 1 (- (pos-token-index (ev-position end-vector))
                    (pos-token-index (ev-position start-vector))))
      (break "Multiple-tt backoff: seems to span more than one word"))

    ;; Does this word project to a name-word? If so we'll use that, otherwise
    ;; we have to make one for it.
    (let ((word (edge-left-daughter first-tt)))
      (unless (typep word 'word)
        (break "Assumption violated: daughter of first-tt isn't a word"))
      (let* ((rules (rs-single-term-rewrites (word-rule-set word)))
             (name-word-rule (find category::name-word rules
                                   :test #'eq :key #'cfr-category)))
        (if name-word-rule
          (break "Stub: Got a name-word-rule")
          (setq name-word-individual
                (make-name-word-for-unknown-word-in-name word (ev-position start-vector))))

        ;; Make an ad-hoc edge based just on the word -- sort of a way to back off from
        ;; the specific, irreducable treetops we've got.
        ;; Cribbed from Make-completed-unary-edge
        (let ((edge (next-edge-from-resource)))
          (knit-edge-into-positions edge start-vector end-vector)
          (setf (edge-starts-at edge) start-vector)
          (setf (edge-ends-at edge) end-vector)
          
          (if (= 2 (length treetops))
            (then (setf (edge-left-daughter edge) (first treetops))
                  (setf (edge-right-daughter edge) (second treetops)))
            (break "More than two residual treetop edges to back off from.~
                    Does it matter if we can't set the daughters of the backoff edge?"))
          
          (setf (edge-rule edge) :pnf-residue-backoff)
          (setf (edge-form edge) category::proper-noun)
          (setf (edge-referent edge) name-word-individual)
          (setf (edge-category edge) category::name-word)
          edge )))))

      





(defun referents-of-list-of-edges (reversed-list-of-edges)
  ;; called by Examine-capitalized-sequence to make the item list
  ;; for Categorize-and-form-name. Returns a list of terms from
  ;; the model to put into the name object
  (let ( value  referents )
    (dolist (item reversed-list-of-edges)
      ;; Collect one item per pass through this loop and
      ;; kpush it onto the referents. Note that the edges coming
      ;; in are already reversed, so this push restores the
      ;; proper order
      (setq value
            (typecase item
              (edge
               (let ((referent (edge-referent item)))
                 (if (null referent)
                   (get-name-referent-of-odd-edge item :pnf)
                   (typecase referent
                     (individual  referent)

                     ((or referential-category category mixin-category)
                      (find/make-silent-nw-for-word-under-edge item))

                     ((or word section-marker)
                      ;; This is here for "ORANGE-CO, INC.", where the
                      ;; "CO" is interpreted as a header.
                      referent)

                     (otherwise
                      (push-debug `(,referent ,item ,reversed-list-of-edges))
                      (break "Unexpected type of edge referent: ~a~%~a"
                             (type-of referent) referent))))))
                   
              (individual ;; e.g. the name-word that is made for
               ;; an unknown capitalized word
               item)

              (word ;(or (name-word-for-word item)
               ;    (make-name-word-for/silent item))
               (let ((nw (name-word-for-word item)))
                 (unless nw
                   (break "Unexpected threading: the word \"~A\" ~
                           was passed in.~%Expected that it would ~
                           have already been redone as a name-word."
                          item))
                 nw ))

	      (otherwise
               (push-debug `(,item ,reversed-list-of-edges))
	       (break "Unexpected type of item in list of 'edges' ~
                       for a proper name: ~a~%~a"
		      (type-of item) item))))

      (unless value
        (push-debug `(,reversed-list-of-edges))
        (break "No referent for item in PNF treetop sequence:~
                ~%  ~A" item))
      (kpush value referents))

    referents ))


(defun get-name-referent-of-odd-edge (edge purpose)
  "Some edges are built by processes that aren't model-directed, 
   so we have to figure out what they should be given the purpose
   this is being called (just :pnf right now)"
  (unless (eq  purpose :pnf)
    (error "Function hasn't been generalized beyond proper names"))
  (let ((label (edge-category edge)))
    (cond
     ((eq label category::hyphenated-sequence) ;; "Rolls-Royce"
      ;;/// It ought to be a hyphenated name, but extending the set of
      ;; name categories is not a trivial project. Even making a name-
      ;; word based on a polyword isn't trivial
      (unless (eq (edge-rule edge) :hyphen-routine)
        (push-debug `(,edge))
        (error "Unexpected source of a hyphenated sequence"))
      ;; Now we know what's in it. We'll make a sequence and return that.
      ;; It looses the hyphen, but it's a start. 
      (let* ((words (edge-spanned-words edge))
             (name-words (mapcar #'(lambda (w)
                                     (define-individual 'name-word :name w))
                                 words))
             (sequence (define-sequence name-words category::name-word)))
        sequence))

     (t (push-debug `(,edge ,purpose))
        (error "New label on odd edge in pnf: ~a" edge)))))


;;;-------------------------------------------------
;;; If we anticipate a word as appearing in a name, 
;;;          it should have a name-word
;;;-------------------------------------------------

(make-name-word-for/silent (word-named "&")
                           nil  ;; the position
                           :use-lowercase-word t)

(make-name-word-for/silent (word-named "and")
                           nil  ;; the position
                           :use-lowercase-word t)

(make-name-word-for/silent (word-named "of")
                           nil  ;; the position
                           :use-lowercase-word t)

(make-name-word-for/silent (word-named "the")
                           nil  ;; the position
                           :use-lowercase-word t)

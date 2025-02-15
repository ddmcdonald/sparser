;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; Copyright (c) 2013-2021 David D. McDonald all rights reserved
;;;
;;;      File: "gofers-for-examine"
;;;    Module: model/core/names/fsa/
;;;   Version: September 2021

;; Initiated 3/28/13 by pulling out the odd tests and checks 
;; from examine. 
;; 0.1 (7/7/13) Rewrote sort-out-multiple-preterminals-for-pnf to prefer
;;      name-words rather than ignore them. Since that was the old policy
;;      there could be repurcussions. 
;; 0.2 (7/22/13) fixed pnf-treetop-at to return nil if its heuristics
;;      don't return something, and tweaked its subroutines, which do need
;;      work. (7/25/13) Added silent NW for #\'
;;     (9/9/13) Finished shorter-from-longer-name, which complements the
;;      recent hack on 'of' add-longer-name-to-entity when the names share
;;      a prefix.  (7/21/14) commented out direct reference to military-rank
;;      which needs to somehow be conditionalized to the available grammar
;;      modules. (10/7/15) Removed special decls what had nasty fan-out

(in-package :sparser)


;;;--------------------------------------------------------------
;;; Checking out cases where the word might breakup the sequence
;;;--------------------------------------------------------------

;;--- "and"

(defun reason-to-terminate-name-at-and? (items-in-reverse-order)
  (declare (special category::generic-co-word category::inc-term
                    category::country category::name-word))
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
  (declare (special category::name-word category::kind-of-subsidiary
                    category::kind-of-company))
  (let* ((item1 (first items))
         (label-on-prior-item
          (etypecase item1
            (edge (edge-category item1))
            (word item1)
            (individual
             (ecase (cat-symbol (itype-of item1))
               (category::name-word
                (value-of 'name item1)))))))
    (etypecase label-on-prior-item
      (word nil)
      (category
       (case (cat-symbol label-on-prior-item)
         (category::kind-of-subsidiary t )   ;; "Department"
         (category::kind-of-company t)       ;; "Ministry"
         (otherwise nil))))))
        
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



;; Originally we had analyze-name-with-of that included
;; more arguments but really was just a stub that created
;; a company form the sequence.
;; A noted said it was for names like of "Anne of Arragon" 
;; and such, but when we want that we can revisit the layout

(defun shared-name-prefix (items of)
  ;; Called from categorize-and-form-name. If there's no
  ;; shared prefix then we return nil and fall through
  ;; to regular name construction. If there is, then we
  ;; assume this is just a longer version of that name
  ;; and set that up. Throwing the entity (usually a company)
  ;; that we've found to :already-decoded-name to the catch
  ;; in classify-&-record-span
  (push-debug `(,items ,of)) ;;(break "analyze name with of")

  ;; Names that include "of" are often shortened by dropping
  ;; the of-part. Is there already such a sequence?
  (let* ((prefix (subseq items 0 (1- of)))
         (prefix-seq (find-sequence prefix)))
      (when prefix-seq
        (let ((names (names-based-on-sequence prefix-seq)))
          (when names
            (let ((entities (entities-with-names names)))
              (when entities
                (when (cdr entities)
                  (ambiguous-name-stub names entities))
                (add-longer-name-to-entity
                 (car entities) prefix names items)
                (throw :already-decoded-name (car entities)))))))))

(defun add-longer-name-to-entity (entity prefix names items)
  (push-debug `(,entity ,prefix ,names ,items))
  (let ((longer-name (make-company-name-as-simple-sequence items)))
    (setq longer-name (bind-dli-variable 'prefix prefix longer-name))
    (index-company-name-to-company longer-name entity)

    ;; This call is suspect. It goes straight to 
    ;; spread-sequence-across-ordinals but examples involve
    ;; feeding it a name yet spread takes a sequence
    ;(map-name-words-to-name items longer-name)

    ;; Could take the original, shorter name and make it
    ;; an alias so there's only one "name". This makes there two
    (bind-variable 'name longer-name entity) ;; needs to be checked in DLI case
    longer-name))

(defun shorter-from-longer-name (list-of-names)
  ;; Called from known-sequence (in turn called from categorize-and-form-name)
  ;; when the sequence it has a name that it corresponds to, but that
  ;; name has no associated company or other sort of NE. 
  ;; The case that motivates it is a shorter reference to an university
  ;; that's already been introduced in a longer form. 
  ;; "he Shahid Beheshti University of Teheran" => "Shahid Beheshti University"
  ;; Only deals with case of one name. Returns a list.
  (declare (special category::company-name))
  (when (null (cdr list-of-names)) 
    ;; or call a variant on (ambiguous-name-stub names entities)
    (let ((name (car list-of-names)))
      (when (itypep name 'company-name)
        ;;/// we don't know how to factor other sorts of names, though using
        ;; the first nw in the sequence might be reasonable
        (let* ((sequence (value-of 'sequence name))
               (first-word (value-of 'first-word name))
               (instances (cat-instances category::company-name))
               (sequences-with-same-start
                (loop for s in instances
                   as items = (value-of 'items s)
                   when (eq (car items) first-word)
                   collect s)))

          (let ((candiates (loop for s in sequences-with-same-start
                              when (> (value-of 'number s)
                                      (value-of 'number sequence))
                              collect s)))
            (when candiates
              (let ((candiate-names
                     (loop for s in candiates
                        collect (bound-in s :body-type 'company-name))))

                (let ((companies
                       (loop for cn in candiate-names
                          as co = (bound-in cn :body-type 'company)
                          when co  collect co)))

                  (let ((company (car companies)))
                    ;; They all have the same name, or close enough,
                    ;; so the choice doesn't matter. 
                    ;; One examined case had two companies in this
                    ;; list, but they were both the same one
                    (setq company (bind-dli-variable 'name name company))
                    
                    (list company)))))))))))
            
      

;;--- hyphen

(defun reify-hyphenated-pair (items tt-before-hyphen hyphen)
  "During the scan we encountered a hyphen between two capitalized words.
   We want to form a polyword from the triple. We edit and return
   the items list to reflect this."
  (push-debug `(,items ,tt-before-hyphen ,hyphen))
  ;; The revised item list has to run the gauntlet of referents-of-list-of-edges
  ;;   which wants to return name-words -- but there doesn't seem to be
  ;;   a provision for a polyword making a name-word from a pw. Just individual words.
  ;; While sorting that out, just splice the hyphen out of list.
  (let ((hyphen-edge (ev-top-node (pos-starts-here hyphen))))
    (unless hyphen-edge
      (break "no hyphen edge")) ; throw
    (setq items (remove hyphen-edge items))
    items))


;;--- countries

(defun double-country-check (country-tt items count end-pos)
  "This is called from the check-cases sweep in examine-capitalized-sequence
   if a country is encountered and there already has been one.
   e.g. 'the Irish Coast Guard and Irish Lighthouses'
   If this is a list of countries it should be left for
   the conjunction routine to sweep up, not coerced into 
   a name, though if they are adjectives that's ok" 
  (push-debug `(,country-tt ,items ,count))
  ;; FIXME -- should loop through the items, expecting just
  ;; countries and probably the word "and". If all the countries
  ;; are proper-adjective's then we may leave them in,
  ;; and if some other word is involved that would be odd too
  (throw :abort-examination-not-a-name
         `(:not-a-name ,(pos-edge-ends-at end-pos))))

(defun only-country-in-items (items start-pos end-pos)
  (declare (special category::country word::hyphen)(ignore start-pos end-pos))
  ;(unless *non-country-categories
  (let ((just-countries t)
        label )
    (dolist (tt items)
      (when (edge-p tt)
        ;; FIXME -- comes from bad list passed in by examine-capitalized-sequence
        ;; on "South Korea and Japan" when something is screwed up with the PW
        ;; handling in the larger sentence it is part of.
        (setq label (edge-category tt))
        (cond
          ((eq label category::country))
          ((eq label word::hyphen))
          ;;((or (eq label category::digest-kind) ;;//// language of newspapers
          ;; (setq just-countries nil))
          (t
           (push-debug `(,label ,tt ,items))
;;       (break "Continue unless these are just country stuff:~%~a~%~a"
;;              (words-between start-pos end-pos) items)
           (setq just-countries nil))))
      just-countries)))



;;;-------------------------------------------------------
;;; recording interesting, category-specific, patternings
;;;-------------------------------------------------------

(defun some-non-initial-in-items (items)
  "Called from categorize-and-form-name when the initials flag is up.
   Guards against misconstruing a sequence like 'M.B.A' as the
   name of a person"
  (loop for i in items unless (itypep i 'initial) return t))

#| The original version here (1st version after moving away
 from a transition net) is trying to see if it can find
 patterns. Need to examine all the use cases to see whether
 something more complicated or stateful like this has any value now,
 but since it messed up on 'George L. Ball' there's something
 wrong with this code as is.
  (let ((item-is-an-initial? nil)
        (state :start)) ;; :collecting-initials, :after-initials
     (flet ((initial? (item)
             (and (individual-p item)
                  (eq (first (indiv-type item))
                      category::initial))))
      (dolist (item items nil)
        (setq item-is-an-initial? (initial? item))
        (case state
          (:start
           ;; fail if we get a non-initial before an initial
           (if item-is-an-initial?
             (setq state :collecting-initials)
             (return-from some-non-initial-in-items nil)))
          (:collecting-initials
           (unless item-is-an-initial?
             (setq state :after-initials)))
          (:after-initials
           (when item-is-an-initial?
             ;; something else is weird that we might (someday)
             ;; want to take a look at
              (return-from some-non-initial-in-items nil)))
          (otherwise
           (error "bad state -- spelling error?"))))

       ;; Returning t says it's ok to construe the initials
       ;; as part of a name because the initials were
       ;; followed by something 
       t)))   |#
  


(defgeneric title-element? (item)
  (:documentation "Is this item semantically a possible component
    of a title?")
  (:method ((e edge))
    (let ((referent (edge-referent e)))
      (when referent
        (when (individual-p referent)
          (title-element? referent)))))
  (:method ((i individual))
    (declare (special category::title category::title-modifier))
    (let ((c (itype-of i)))
      (memq c `(,category::title-modifier
                ,category::title
                ;;,category::country
                ;;  "American Foreign Relations Council"
                ;;/// Need to be more deliberate about this
                ;;   ,category::military-rank
                ))))
  (:method ((w word)) nil)
  (:method ((pw polyword)) nil))

(defun title-elements-in-items (item-edges)
  ;; Called from examine-capitalized-sequence
  (dolist (item item-edges)
    (when (edge-p item)
      (when (title-element? item)
        (return t)))))

(defun split-off-title-from-name (reversed-list-of-edges)
  ;; Remove any title edges and return the rest.
  ;; We know there is at least one title element in here
  ;; because we're gated by title-elements-in-items
  (let ((title-index 0))
    (let ((name-edges
           (loop for edge in reversed-list-of-edges
             until (title-element? edge) collect edge
             do (incf title-index))))
      ;;(break "split-off-title intex = ~a" title-index)
      (values (nthcdr title-index reversed-list-of-edges)
              name-edges))))




;;;-------------
;;; subroutines
;;;-------------

(defun pnf-treetop-at (position)
  "Called by Examine-capitalized-sequence, position by position,
   to determine what treetop edge to pass through the loop."
  (let ((top-node-field (ev-top-node (pos-starts-here position))))
    (let ((tt (cond
               ((eq top-node-field :multiple-initial-edges)
                (sort-out-multiple-preterminals-for-pnf position))
               (top-node-field ;; i.e. an edge
                top-node-field)
               (t (pos-terminal position)))))
      (unless tt
        (push-debug `(,position))
        (error "Did not compute a treetop for position ~a~
              ~%Extend/fix the algorithm." 
               (pos-array-index position)))
      tt)))


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
      ;; (pnf/remove-name-words-from-preterminals residue position)
      ;; The explicit definitions of NE are all in terms of name-words.
      ;; The possibility that a word might carry additional (relevant)
      ;; meanings is ignored (like "Israeli" as the adjective form
      ;; of the country.
      ;; //// If we revisit this, it has to be all the way through,
      ;; since as it stands, ignoring (vs. prefering) the name-words
      ;; causes predefined entities to be lost to PNF
      (pnf/prefer-name-words edges position))))


(defun pnf/prefer-name-words (edges position)
  (declare (special category::name-word))
  (dolist (edge edges)
    (when (eq (edge-category edge) category::name-word)
      (return-from pnf/prefer-name-words edge)))
  (pnf/prefer-kinds-over-modifiers-or-events edges position))

(defun pnf/prefer-kinds-over-modifiers-or-events (edges position)
  ;;/// where's the info on type?
  (pnf/prefer-heads-over-modifiers edges position))

#+ignore ;; see note just above
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
  (declare (special category::np-head category::noun 
                    category::common-noun category::common-noun/plural))
  (let ( residue  head  noun  form-label )
    (dolist (edge edges)
      (setq form-label (edge-form edge))
      (if form-label
        (case (cat-symbol form-label)
          (category::np-head
           (setq head edge))
          ((category::noun 
            category::common-noun 
            category::common-noun/plural)
           (setq noun edge)) ;; could get more than one
          (otherwise
           (push edge residue)))

        ;; no form label
        (push edge residue)))

    (or head 
        noun
        (pnf/throw-up-hands residue position))))

(defun pnf/throw-up-hands (edges position)
  (if *debug-pnf*
    (then
      (push-debug `(,edges ,position))
      (error "Have run out of criteria for prefering one edge over another~
        ~%when a word is spanned by more than one edge and we need~
        ~%a PNR treetop label.~%position = ~a~%remaining edges = ~a"
             position edges))
    (first edges)))


(defun backoff-multiple-treetops-for-pnf (treetops)
  ;; This scheme will only work if we're spanning just one word
  (declare (special category::name-word category::proper-noun))
  (let* ((first-tt (first treetops))
         (start-vector (edge-starts-at first-tt))
         (end-vector (edge-ends-at first-tt))
         name-word-individual )
    (unless (= 1 (- (pos-token-index (ev-position end-vector))
                    (pos-token-index (ev-position start-vector))))
      (push-debug `(,treetops ,start-vector ,end-vector))
      (break "Multiple-tt backoff: seems to span more than one word"))

    ;; Do we already have a name-word edge on the list?
    (let ((nw-edge (search-ev-for-edge start-vector category::name-word)))
      (or nw-edge

          ;; Does this word project to a name-word? If so we'll use that, otherwise
          ;; we have to make one for it.
          (let ((word (edge-left-daughter first-tt)))
            (unless (typep word 'word)
              (push-debug `(,first-tt ,treetops))
              (error "Assumption violated: daughter of first-tt isn't a word"))
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
          
                (case (length treetops)
                  (1 (setf (edge-left-daughter edge) (first treetops))
                     (setf (edge-right-daughter edge) :single-term))
                  (2 (setf (edge-left-daughter edge) (first treetops))
                     (setf (edge-right-daughter edge) (second treetops)))
                  (otherwise ;; we might want to be concerned, but right now
                   ;; (3/5/13) that's down in the noise level.
                   (setf (edge-left-daughter edge) (first treetops))
                   (setf (edge-right-daughter edge) (second treetops))))
          
                (setf (edge-rule edge) :pnf-residue-backoff)
                (setf (edge-form edge) category::proper-noun)
                (set-edge-referent edge name-word-individual)
                (setf (edge-category edge) category::name-word)
                edge )))))))


#| According to make-name-word-for-unknown-word-in-name, it was called
when the Examine sweep encountered an unknown word, i.e. a word without
a rule-set. Now (May 2020) that will never happen since we always create
a minimal category and rule set for every word.
|#

(defun referents-of-list-of-edges (reversed-list-of-edges)
  "Called by Examine-capitalized-sequence to make the item list
   for Categorize-and-form-name. Returns a list of terms from
   the model to put into the name object. Wants name-words rather
   than raw individuals. Makes them  on the fly when it's clear how to.
     This is also a place to catch things that pass the checks in
   examine but should not be part of a name. If the typecase returns
   the value :drop, a final check will not add that item to the
   return list"
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
                 (cond
                   ((null referent)
                    (get-name-referent-of-odd-edge item :pnf))
                   ((itypep referent 'pronoun)
                    :drop)
                   ((eq (edge-cat-name item) 'motif-trigger)
                    :drop)
                   ((memq (form-cat-name item)
                          '(preposition ; 'except for'
                            reflexive/pronoun ; 'each other'
                            det ; "more than"
                            adverb ; "as well"
                            subordinate-conjunction ; "not only"
                            ))
                    :drop)
                   (t
                    (typecase referent
                      (individual
                       (find/make-silent-nw-for-word-under-edge item))

                      ((or referential-category category mixin-category)
                       (find/make-silent-nw-for-word-under-edge item))

                      ((or word section-marker)
                       ;; This is here for "ORANGE-CO, INC.", where the
                       ;; "CO" is interpreted as a header.
                       referent)

                      (otherwise
                       (when *debug-pnf*
                         (push-debug `(,referent ,item ,reversed-list-of-edges))
                         (break "Unexpected type of edge referent: ~a~%~a"
                                (type-of referent) referent))))))))
                   
              (individual ;; e.g. the name-word that is made for
               ;; an unknown capitalized word
               (if (itypep item 'name-word)
                 item
                 (else
                   (when *debug-pnf* ; otherwise drop it
                     (push-debug `(,item ,reversed-list-of-edges))
                     (break "Loose individual in the item list. ~
                             Expected a name-word:~%~a" item)))))

              (word
               (let ((nw (name-word-for-word item))) ;accesses word's plist
                 (cond
                   (nw nw)
                   ((and (= 1 (length (pname item))) ;;/// reify
                         *arabic-names*)
                    ;;/// at this leve we've lost the actual
                    ;; edge it seems, so can't reconstruct the
                    ;; capitalization correctly
                    (define-name-word/actual item))
                   (t
                    (when *debug-pnf*
                      (break "Unexpected threading: the word \"~A\" ~
                           was passed in.~%Expected that it would ~
                           have already been redone as a name-word."
                             item))))))
              
	      (otherwise
               (when *debug-pnf*
                 (push-debug `(,item ,reversed-list-of-edges))
                 (break "Unexpected type of item in list of 'edges' ~
                         for a proper name: ~a~%~a"
                        (type-of item) item)))))

      (unless value
        (when *debug-pnf*
          (push-debug `(,reversed-list-of-edges))
          (break "No referent for item in PNF treetop sequence:~
                ~%  ~A" item)))
      (when value ;; raw individuals are dropped if we're not debugging
        (unless (eq value :drop)
          (kpush value referents))))

    referents ))


(defparameter *categories-that-appear-in-names* nil
  "Given an edge with one of these labels we use their referent directly.")

(defun populate-categories-that-appear-in-names ()
  (declare (special category::phase-of-day))
  (setq *categories-that-appear-in-names*
        (list category::phase-of-day  ;; "Morning", in a newspaper's name
        )))

(defun get-name-referent-of-odd-edge (edge purpose)
  "Some edges are built by processes that aren't model-directed, 
   so we have to figure out what they should be given the purpose
   this is being called (just :pnf right now)"
  (declare (special category::hyphenated-sequence))
  (unless (eq  purpose :pnf)
    (error "Function hasn't been generalized beyond proper names"))
  (unless *categories-that-appear-in-names*
    (populate-categories-that-appear-in-names))
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
             (sequence (define-sequence name-words)))
        sequence))

     ((eq label category::apostrophe-s)
      ;; It's a possessive that wasn't recognized as such.
      ;;  "Guinness' international affiliates"
      :drop)

     ((memq label *categories-that-appear-in-names*)
      (let ((ref (edge-referent edge)))
        (unless ref
          (break "New referent for odd edge in name that doesn't have one:~
                ~%  ~a" edge))
        ref))

     (t (push-debug `(,edge ,purpose))
        (error "New label on odd edge in pnf: ~a" edge)))))


;;;-------------------------------------------------
;;; If we anticipate a word as appearing in a name, 
;;;          it should have a name-word
;;;-------------------------------------------------

(make-name-word-for/silent (word-named "&")
                           nil  ;; the position
                           :use-lowercase-word t)

(make-name-word-for/silent (word-named "'")
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

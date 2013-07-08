;;; Copyright (c) 2013 David D. McDonald all rights reserved
;;;
;;;      File: "gofers-for-examine"
;;;    Module: model/core/names/fsa/
;;;   Version: July 2013

;; Initiated 3/28/13 by pulling out the odd tests and checks 
;; from examine. 
;; 0.1 (7/7/13) Rewrote sort-out-multiple-preterminals-for-pnf to prefer
;;      name-words rather than ignore them. Since that was the old policy
;;      there could be repurcussions. 

(in-package :sparser)


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



(defun double-country-check (country-tt items count)
  (push-debug `(,country-tt ,items ,count))
  ;; If this is a list of countries it should be left for
  ;; the conjunction routine to sweep up, not coerced into 
  ;; a name, though if they are adjectives that's ok
  ;; FIXME -- should loop through the items, expecting just
  ;; countries and probably the word "and".  If all the countries
  ;; are proper-adjective's then we may leave them in,
  ;; and if some other word is involved that would be odd too
  (throw :abort-examination-not-a-name
         `(:not-a-name . ,(pos-edge-ends-at country-tt))))



;;;-------------------------------------------------------
;;; recording interesting, category-specific, patternings
;;;-------------------------------------------------------

(defun some-non-initial-in-items (items)
  ;; the initials flag was up, but there is the danger of interpreting
  ;; an unknown abbreviation as a person: "M.B.A." if we don't do
  ;; this check. ///Having a notion of a 'patern' for the item 
  ;; sequence would probably be more elegant, which is another
  ;; reason to consider shifting back to the transition net
  ;; The "non-initial" has to follow the initials, and they
  ;; have to be first in the sequence. ///Need to look at titles
  ;; and prefixes like "Mr."
  ;;(push-debug `(,items)) (break "items = ~a" items)
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
       t)))

  


(defun title-elements-in-items (items)
  (when (some #'word-p items)
    ;; then remove them so rest will go through
    (setq items (loop for item in items
                  when (individual-p item)
                  collect item)))
  (unless (every #'(lambda (o) (typep o 'individual)) items)
    (push-debug `(,items))
    (error "Unexpected: not every item in a name is an individual"))
  (let ((categories (mapcar #'cat-symbol
                            (mapcar #'i-type-of items))))
    (push-debug `(,categories ,items))
    (or (memq 'category::title-modifier categories)
        (memq 'category::title categories)
        (memq 'category::country categories)
        (memq 'category::military-rank categories))))


(defun split-off-title-from-name (items)
  (flet ((title-element? (e)
           (or (itypep e category::title-modifier)
                 (itypep e category::title)
                 (itypep e category::country)
                 (itypep e category::military-rank))))
    (let ( title  name )
      (dolist (item items)
        (cond
         ((word-p item) ;; "and" in "Greece and Germany"
          ) ;; ignore it
         ((title-element? item)
          (push item title))
         (t (setq name (memq item items))
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
  (let ( residue )
    (dolist (edge edges)
      (if (eq (edge-category edge) category::name-word)
        (return-from pnf/prefer-name-words edge)
        (kpush edge residue))
      (pnf/prefer-heads-over-modifiers edges position))))

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
                (setf (edge-referent edge) name-word-individual)
                (setf (edge-category edge) category::name-word)
                edge )))))))

      





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
             (sequence (define-sequence name-words)))
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

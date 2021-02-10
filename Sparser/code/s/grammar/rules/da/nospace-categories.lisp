;;;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2020 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "nospace-categories"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  May 2020

;; Created 10/7/14 to hold categories and routines used by the
;; nospace character specialists (analyzers/psp/patterns/) since
;; the categories they refer to aren't yet loaded. 12/10/14 added
;; slashed-sequence setup. 
;; 2/2//2015 add new no-space default category number-colon-number 
;;  and method for creating an edge spanning things like "1:500" 
;;  this is done so that a later context sensitive rule can determine 
;;  if this is a ratio or something else
;; added code for similar GAP:Ras structure
;; 3/18/15 Fleshed out package-approximation-number but without a
;;  treatment of it being approximate. 
;; 6/8/2015 patched David's hack for -WT
;; 7/28/15 Added package-number-plus-error
;; 2/5/16 Rewrote reify-two-part-label to just use the words. Settles
;;  hassled with unknown single letters.

(in-package :sparser)


(defparameter *inhibit-big-mech-interpretation* nil
  "Localy bound to t when the context knows it's inappropriate")

(defun ns-category-for-reifying (default-category)
  (declare (special category::bio-entity))
  (if (and *big-mechanism*
           (null *inhibit-big-mech-interpretation*))
    category::bio-entity
    default-category))


;;;-----------------
;;; pair categories
;;;----------------

(define-category hyphenated-pair
  :specializes collection
  ;; inherits items, item, type, number
  :instantiates :self
  :index (:sequential-keys left right)
  :binds ((left) ;; of the hyphen
          (right)))


;;;; The category is in sl/biology/taxonomy.lisp 
;;;; because of it's inheritance pattern
;;;;/// Has to be some refactoring sooner than later. 
#|
(define-category no-space-pair
  :specializes bio-pair
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left)
          (right))
  :index (:sequential-keys left right)
  :documentation
  "Trust the pattern matching to correctly handle the
  value restrictions. This cuts down on the variation
  in how to define a pair which should reduce the possibilities
  for error.") |#

(define-category qualifying-pair
  :specializes collection
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((head) ;; 'Ras'
          (qualifier)) ;; 'mediated'
  :documentation "Inadequate name. This is for phrases
   like 'Ras-mediated' for the cases where we don't know
   or can't figure out the correct relationship (variable).")

(define-category hyphenated-triple
  :specializes collection
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left)
          (middle)
          (right)))


;;;-------------------------
;;; routines that make them 
;;;-------------------------

(defun package-qualifying-pair (left-edge right-edge)
  ;; as called from resolve-protein-hyphen-pair for
  ;; something like EGFR-positive as the default when
  ;; nothing stronger applied
  (let ((left-ref (maybe-make-individual (edge-referent left-edge)))
        (right-ref (maybe-make-individual (edge-referent right-edge))))
    (let* ((label (edge-category left-edge))
           (i (find-or-make-individual 'qualifying-pair
                 :head left-ref
                 :qualifier right-ref
                 :type label
                 :items `(,left-ref ,right-ref)))
           (edge (make-ns-edge
                  (pos-edge-starts-at left-edge)
                  (pos-edge-ends-at right-edge)
                  label
                  :referent i
                  :rule 'package-qualifying-pair
                  :constituents (list left-edge right-edge))))
      edge)))

(defun make-hyphenated-structure (left-edge right-edge)
  ;; called from nospace-hyphen-specialist or from
  ;; resolve-hyphen-between-two-words when it has no better 
  ;; idea for what to do.
  (let ((left (edge-referent left-edge))
        (right (edge-referent right-edge))
        (start-pos (pos-edge-starts-at left-edge))
        (end-pos (pos-edge-ends-at right-edge)))
    (cond
      ((and (itypep left 'fractional-term) ; "quarter-million"s
            (itypep right 'multiplier))
       (make-edge-over-fraction-of-illion left right start-pos end-pos))
      (t
       (let ((i (find-or-make-individual 'hyphenated-pair
                                         :left (maybe-make-individual left)
                                         :right (maybe-make-individual right)))
             (category
              (ns-category-for-reifying category::hyphenated-pair)))

         (when (eq (edge-category left-edge)
                   (edge-category right-edge))
           ;;/// when does this ever happen? this happens when both edges are same type, e.g., "S1A-S1D"
           (setq i (bind-variable
                    'type (edge-category left-edge) i category::sequence)))
         
         (let ((edge (make-ns-edge
                      start-pos end-pos                
                      category
                      :form (edge-form right-edge)
                      :rule 'make-hyphenated-structure
                      :referent i
                      :constituents `(,left-edge ,right-edge))))
           (revise-form-of-nospace-edge-if-necessary edge right-edge)
           (tr :two-hyphen-default-structure i edge)
           edge))))))


(defun make-ns-pair (category-name left-edge right-edge pos-before pos-after)
  "Instantiate a particular kind os no-space-pair according
   to the indicated category. Make the edge, using the left-edge 
   as the source of the labels."
  ;;/// This loses the fact that, e.g., these were separacted
  ;; by a slash. If the subcat machinery does all the work
  ;; then we could record that in the edge category
  (let ((category (etypecase category-name
                    (category category-name)
                    (symbol
                     (category-named category-name :break-if-none))))
        (left-ref (maybe-make-individual (edge-referent left-edge)))
        (right-ref (maybe-make-individual (edge-referent right-edge))))
    (tr :making-ns-pair-on category)

    (when (or (word-p left-ref)
              (word-p right-ref))
      (push-debug `(,left-ref ,right-ref))
      (error "A word leaked through to make-ns-pair"))

    (let ((i (find-or-make-individual 'no-space-pair
                                      :left left-ref
                                      :right right-ref)))
      (setf (indiv-type i)
            ;; Subcat checks are on the referent, so we make
            ;; sure that it has the expected type
            (push category (indiv-type i)))
      (let ((edge (make-ns-edge
                   pos-before pos-after category
                   :form (edge-form left-edge)
                   :referent i
                   :rule 'make-ns-pair
                   :constituents `(,left-edge ,right-edge)
                   :words (effective-words-given-edges pos-before pos-after))))
        ;; trace
        edge))))


(defun make-protein-pair (left-edge right-edge pos-before pos-after)
  ;; called from resolve-hyphen-between-two-terms
  (make-hyphenated-pair 'protein left-edge right-edge pos-before pos-after))

(defun make-bio-pair (left-edge right-edge pos-before pos-after)
  ;; called from resolve-hyphen-between-two-terms
  (make-hyphenated-pair 'bio-pair left-edge right-edge pos-before pos-after))

;; RBD-Ras -- second is a protein, nothing interesting
;; known about the first yet.
(defun make-pair-with-protein (left-edge right-edge pos-before pos-after)
  (make-hyphenated-pair 'paired-protein left-edge right-edge pos-before pos-after))


(defun make-hyphenated-pair (cat-name left-edge right-edge pos-before pos-after)
  "Instantiate one of the pair categories, according to the category
   that's specified which becomes the label on the edge."
  (declare (special category::protein))
  (when (and (edge-p left-edge)
             (edge-p right-edge))
    (let ((label (if (eq cat-name 'paired-protein)
                     category::protein
                     (category-named cat-name :break-if-none)))
          (pair-category
           (case cat-name 
             (protein 'protein-pair)
             (paired-protein 'pair-with-protein)
             (bio-pair 'bio-pair)
             (otherwise
              (error "Unanticipated type of hyphenated-pair: ~a" cat-name))))
          (left-ref (maybe-make-individual (edge-referent left-edge)))
          (right-ref (maybe-make-individual (edge-referent right-edge))))

      (let* ((i (find-or-make-individual pair-category 
                                         :left left-ref
                                         :right right-ref
                                         :type label
                                         :items (list left-ref right-ref)))
             (edge (make-ns-edge
                    pos-before pos-after label
                    :form category::n-bar
                    :rule 'make-hyphenated-pair
                    :referent i
                    :constituents `(,left-edge ,right-edge)
                    :words (effective-words-given-edges pos-before pos-after))))
        (tr :made-hyphenated-pair pair-category edge)
        edge))))


(defun make-hyphenated-number (left-edge right-edge)
  "Called from one-hyphen-ns-patterns intended to label the pattern
   (:digits :hyphen :digits). However there are several alternative
   interpretations depending on what the edge actually denote"
  ;;What this does needs to correspond to what digit-FSA does in 
  ;; the same situation. ;///
  (declare (special category::hyphenated-number category::number))
  (cond
    ((and (eq (edge-cat-name left-edge) 'year) ; "2019-20"
          (or (eq (edge-cat-name right-edge) 'year)
              (eq (edge-cat-name right-edge) 'number)))
     (look-for-year-expression left-edge right-edge))

    ((and (edge-over-number-word? left-edge) ; "twenty-three"
          (edge-over-number-word? right-edge))
     (two-edge-number left-edge right-edge))

    (t (let* ((i (find-or-make-individual
                  'hyphenated-number
                  :left (find-or-make-number (edge-referent left-edge))
                  :right (find-or-make-number (edge-referent right-edge))))
              (edge (make-ns-edge
                     (pos-edge-starts-at left-edge)
                     (pos-edge-ends-at right-edge)
                     category::hyphenated-number
                     :rule 'make-hyphenated-number
                     :form category::number
                     :referent i
                     :constituents `(,left-edge ,right-edge)
                     :words `(,left-edge ,right-edge))))
         edge))))



(defun make-hyphenated-triple (left-edge middle-edge right-edge)
  "This makes the same type of individual as digit-FSA does, but
   of course from a different source"
  (let ((i (find-or-make-individual 'hyphenated-triple
             :left (maybe-make-individual (edge-referent left-edge))
             :middle (maybe-make-individual (edge-referent middle-edge))
             :right (maybe-make-individual (edge-referent right-edge))))
        (category
         (ns-category-for-reifying category::hyphenated-triple)))
     (let ((edge (make-ns-edge
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category
                   :rule 'make-hyphenated-triple
                   :form category::n-bar
                   :referent i
                   :constituents `(,left-edge ,middle-edge ,right-edge))))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :three-hyphen-default-edge edge)
        edge)))
                             


;;;------------------
;;; stranded hyphens
;;;------------------

(defun resolve-trailing-stranded-hyphen (pattern start-pos end-pos)
  ;; called from one-hyphen-ns-patterns for (:lower :hyphen),
  ;; e.g. "mono-"
  (declare (special *salient-hyphenated-literals*))
  (let* ((words (effective-words-given-edges start-pos end-pos))
         (word (car words)))
    (tr :resolve-hyphen-trailing word)
    (cond
     ((memq word *salient-hyphenated-literals*)
      (compose-salient-hyphenated-literals pattern start-pos end-pos))
     (t   ;; "p53- independent manner" (even though it's a typo)
      ;; Same as in initial hyphens We cover the edge
      (let* ((edge-to-elevate (first (treetops-between start-pos end-pos)))
             (new-edge(when (edge-p edge-to-elevate)
                        (make-edge-over-long-span
                         start-pos end-pos
                         (edge-category edge-to-elevate)
                         :rule 'resolve-trailing-stranded-hyphen
                         :form (edge-form edge-to-elevate)
                         :referent (maybe-make-individual
                                    (edge-referent edge-to-elevate))
                         :constituents (treetops-between start-pos end-pos)))))
        (tr :no-space-made-edge new-edge)
        new-edge)))))

;; e.g. "-tagged" in
;; "green fluorescent protein (GFP)-tagged ERK1" (ERK #4)
(defun resolve-initial-stranded-hyphen  (pattern start-pos end-pos)
  "It connects to something on its left. At the level of no-space
   handling we're not in a posiion to know what that is.
   /// Instead we should note that we have one of these and where
   so that a follow-on process can make the connection.
   Right now just do the first step and swallow the hyphen
   in the manner of a daughter rule."
  (declare (special category::verb+ed category::adjective))
  (let* ((edges (treetops-between start-pos end-pos))
         (edge-to-elevate (second edges))
         (form (and (edge-p edge-to-elevate)
                    ;; preventing error in "CXCL3 silencing inhibited tumor growth in the CD133 + population, although there was no significant difference in the tumor mass between CD133 + -shCXCL3 and CD133 - cells groups (), suggesting that CXCL3 promoted CD133 + HCC CSC maintenance in vivo"
                    (edge-form edge-to-elevate))))
    
    (tr :resolve-hyphen-before edge-to-elevate)
    (when (eq form category::verb+ed)
      ;; As the final element in a hyhenated phrase this is almost
      ;; certainly going to function as a premodifier. 
      (setq form category::adjective))
    (when (edge-p edge-to-elevate)
      (let ((new-edge (make-edge-over-long-span
                       start-pos end-pos
                       (edge-category edge-to-elevate)
                       :rule 'resolve-initial-stranded-hyphen
                       :form form
                       :referent (maybe-make-individual
                                  (edge-referent edge-to-elevate))
                       :constituents edges)))
        (tr :no-space-made-edge new-edge)
        new-edge))))

#| Define the notion of a prefix (or no-space-prefix) that
can compose with its suffix and apply a general-purpose
operator to its suffix to compute the meaning. 
//// for the moment that could be identity and we drop
the operator on the floor. Same style of treatment as
quantifiers and prepositions (etc.) where we create individuals
for each case and define a k-method to make sense of it all.
|#
(define-category no-space-prefix
  :specializes linguistic
  :instantiates nil
  :binds ((word :primitive word)))

(defun define-no-space-prefix (string)
  (let* ((word (resolve/make string))
         (category (category-named 'no-space-prefix :break))
         (i (find-or-make-individual 'no-space-prefix :word word))
         (cfr (def-cfr/expr category (list word)
                :form category::common-noun ;; odd, but what alternative?
                :referent i)))
    (setf (get-rules i) (list cfr))
    word)) ;; to go on the list

(defparameter *salient-hyphenated-literals*
  `(
     ,(define-no-space-prefix "auto")
     ,(define-no-space-prefix "co") ;; co-occurring
     ,(define-no-space-prefix "de") ;; de-repressing 
     ,(define-no-space-prefix "di")
     ,(define-no-space-prefix "mono")
     ,(define-no-space-prefix "non") ;; non-radioactive
     ,(define-no-space-prefix "re") ;; "re-activate"
     ))
;; "anti" defined in biology/terms as an adjective

(defun some-word-is-a-salient-hyphenated-literal (words)
  ;; called as a test cond in resolve-hyphen-between-two-words
  ;; that gates compose-salient-hyphenated-literals to 
  ;; ensure that it has something to work with.
  (some #'(lambda (word) (memq word *salient-hyphenated-literals*))
        words))

(defun compose-salient-hyphenated-literals (pattern pos-before pos-after
                                            &aux (words (effective-words-given-edges pos-before pos-after)))
  ;; Called from resolve-hyphen-between-two-words and from
  ;; one-hyphen-ns-patterns when the label prefix sees the literal
  (tr :salient-hyphenated-literal)
  (unless (= 3 (length words))
    (when *work-on-ns-patterns*
      (push-debug `(,words ,pattern ,pos-before ,pos-after))
      (break "new case: ~a words" (length words)))
    (reify-ns-name-and-make-edge pos-before pos-after)
    (return-from compose-salient-hyphenated-literals t))

  (let* ((word1 (car words))
         (word2 (caddr words))
         (pname (string-append (word-pname word1) (word-pname word2)))
         (composite-word (resolve pname)) ;; "co-operate" => "cooperate"
         left  right  )
    ;;(lsp-break "composite = ~a" composite-word)
    (cond
     (composite-word
      ;; Lookup its unary rule / rule-set and make those edges
      (let ((word-rule (when word2 (find-single-unary-cfr word2))))
        (if word-rule
          (let ((edge (install-preterminal-edge
                       word-rule composite-word pos-before pos-after)))
            edge)
          (else
            (reify-ns-name-and-make-edge pos-before pos-after)))))

     ((when (or (prog1 (memq word1 *salient-hyphenated-literals*)
                  (setq left t))
                (prog1 (memq word2 *salient-hyphenated-literals*)
                  (setq right t)))
        ;;//// do something clever, but for now just tie off
        (let ((edge (or (and left
                             (left-treetop-at/only-edges pos-after))
                        (and right
                             (right-treetop-at/only-edges pos-before)))))
          ;;(lsp-break "edge = ~a" edge)
          (cond
           ((null edge)
            (when *work-on-ns-patterns*
              (push-debug `(,words ,pos-after ,pos-before ,pattern))
              (error "Neither of these words is spanned by an edge. ~
                      No way to proceeded."))
            (reify-ns-name-and-make-edge pos-before pos-after))
          
          ;; Should add the literal as a modifier or some such in 
          ;; syntax function that will call-compose such as
          ;; interpret-premod-to-np (depending on the type of
          ;; the edge but the constraint in subcategorized-variable
          ;; is too presumptive of "in as location" to work
          ;; So dropping it on the floor

           (edge
            (let ((new-edge
                   (make-edge-over-long-span
                    pos-before
                    pos-after
                    (edge-category edge)
                    :rule 'compose-salient-hyphenated-literals
                    :form (edge-form edge)
                    :referent (maybe-make-individual (edge-referent edge))
                    :words words)))
              new-edge))))))

     (*work-on-ns-patterns*
      (push-debug `(,words ,pos-after ,pos-before ,pattern))
      (lsp-break "Nothing worked for composing literal"))
     (t 
      (reify-ns-name-and-make-edge words pos-before pos-after)))))

#| Kills compose-salient-hyphenated-literals when no edges in "anti-actin"
"Antibodies used for immunoblotting were: anti-EGFR (#2232, Cell Signaling Technologies), 
anti-phospho-EGFR Y1173 (#05–483, Upstate), anti-phospho-EGFR Y1068 (#2234, 
Cell Signaling Technologies), anti-phospho-EGFR Y845 (Cell Signaling Technologies, 
Beverly, Massachusetts, United States; #2231), anti-phospho-EGFR Y1045 (Cell Signaling 
Technologies; #2237), anti-actin (Santa Cruz Biotechnology, Santa Cruz, California, 
United States; #sc-1615), anti-Shc (Upstate; #06–203), anti-phospho-Shc Y317 
(Upstate; #05–668), anti-Stat3 (Cell Signaling Technologies; #9132), and 
anti-phospho-Stat3 Y705 (Cell Signaling Technologies; #9131), anti-phospho-Akt S473 
(Cell Signaling Technologies; #9271), and anti-Akt (Cell Signaling Technologies; #9272)."
=
|#

;;;--------
;;; colons
;;;--------

(define-category number-colon-number
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the colon
          (right))
  :index (:sequential-keys left right))

(define-category word-colon-word
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the colon
          (right))
  :index (:sequential-keys left right))

(defun make-word-colon-word-structure (left-edge right-edge)
  ;; called from one-colon-ns-patterns
  (make-number-or-word-colon-structure :word left-edge right-edge))

(defun make-number-colon-number-structure (left-edge right-edge)
  (make-number-or-word-colon-structure :number left-edge right-edge))

(defun make-number-or-word-colon-structure (type left-edge right-edge)
  (let* ((category (ecase type
                     (:word category::word-colon-word)
                     (:number category::number-colon-number)))
         (i (find-or-make-individual 
             (ecase type
               (:word 'word-colon-word)
               (:number 'number-colon-number))
             :left (maybe-make-individual (edge-referent left-edge))
             :right (maybe-make-individual (edge-referent right-edge))
             :items (list (maybe-make-individual (edge-referent left-edge))
                          (maybe-make-individual (edge-referent right-edge))))))
    (ecase type
     (:number
      (setq i (bind-dli-variable 'type category::number
                                 i category::sequence)))
     (:word
      (when (eq (edge-category left-edge)
                (edge-category right-edge))
        (setq i (bind-dli-variable 'type (edge-category left-edge)
                                 i category::sequence)))))

    (let ((edge (make-edge-over-long-span
                 (pos-edge-starts-at left-edge)
                 (pos-edge-ends-at right-edge)
                 category
                 :rule 'make-number-or-word-colon-structure
                 :form category::n-bar
                 :referent i
                 :constituents `(,left-edge ,right-edge))))
      (revise-form-of-nospace-edge-if-necessary edge right-edge)
      (ecase type
        (:word (tr :word-colon-word-default-edge edge))
        (:number (tr :number-colon-number-default-edge edge)))
      edge)))




;;;---------
;;; slashes
;;;---------

;; identical to hypenated-pair -- consolidate?  Mostly want the category
(define-category slashed-pair
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left) ;; of the slash
          (right))
  :index (:sequential-keys left right))

(define-category slashed-sequence
  :specializes sequence
  ;; inherits items, item, type, number
  ;; the sequence of the items follows the sequence of the slashes
  :instantiates :self
  :index (:permanent :key items))

(defun package-slashed-sequence (start-pos end-pos
                                 &aux (edges (treetops-between start-pos end-pos)))
  (push-debug `(,edges ,start-pos ,end-pos))
  (let* ((elements (loop for edge in edges
                     collect (maybe-make-individual (edge-referent edge))))
         (i (find-or-make-individual 'slashed-sequence :items elements))
         (common-category
          (when (eq (edge-category (first edges))
                    (edge-category (second edges))) ;; makes a trend
            (edge-category (first edges)))))
    (when common-category
      (setq i (bind-dli-variable 'type (edge-category (first edges)) i
                     category::slashed-sequence)))

    (let ((edge (make-edge-over-long-span
                 start-pos
                 end-pos
                 (or common-category
                     category::slashed-sequence)
                 :rule 'package-slashed-sequence
                 :form category::proper-noun
                 :referent i
                 :constituents edges)))
      (revise-form-of-nospace-edge-if-necessary edge (third edges))
      ;;/// trace
      edge)))

;;;-----------------
;;; two part labels
;;;-----------------
; See resolve-ns-pattern
; We can't find anything interesting about the letter so
; we end up here.

(define-category two-part-label
  :specializes label
  :binds ((part-one)
          (part-two))
  :index (:sequential-keys part-one part-two))

(defun reify-two-part-label (start-pos end-pos which-is-first)
  "Called from resolve-ns-pattern. Both words are one character long.
   The digit may be first or it may be the letter. In the digit case
   we use its individual in the object. Single lower-case letters don't
   have categories, so we just use the word. In this case there won't
   be an edge over the word."
  (declare (ignore which-is-first))
  ;; which-is-first is either :digit-first or :cap-first

  (let* ((words (effective-words-given-edges start-pos end-pos))
         (i (find-or-make-individual 'two-part-label
                                     :part-one (first words)
                                     :part-two (second words))))
    (tr :making-two-part-label start-pos end-pos)
    (let ((edge (make-ns-edge
                 start-pos end-pos category::two-part-label
                 :rule 'reify-two-part-label
                 :form category::common-noun
                 :referent i)))
      edge)))


(defun resolve-protein-prefix (prefix-edge protein-edge start-pos end-pos)
  "This piece of code MUST be generalized to handle the prefixes specified by HMS"
  (declare (special prefix protein start-pos end-pos category::protein))
  (if (or (null (head-string prefix-edge))
          (null (head-string protein-edge))
          (and (or (category-p (edge-referent prefix-edge))
                   (individual-p (edge-referent prefix-edge)))
              (not (find-variable-for-category 'substrate (edge-referent prefix-edge)))))
      nil ;;(lsp-break "null string"))
      (let* ((predicate 
              (create-predication-and-edge-by-binding 
               ;; create-predication-by-binding
               ;; possibly change to make pred edge
               'substrate
               (edge-referent protein-edge)
               (edge-referent prefix-edge)
               prefix-edge))
             (i (bind-dli-variable 'predication predicate (edge-referent protein-edge)))
             (edge (make-ns-edge
                    start-pos end-pos category::protein
                    :rule 'resolve-protein-prefix
                    :form category::n-bar
                    :referent i
                    )))
        edge)))


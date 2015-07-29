;;;-*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2015 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "nospace-categories"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  July 2015

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

(in-package :sparser)


(defparameter *inhibit-big-mech-interpretation* nil
  "Localy bound to t when the context knows it's inappropriate")

(defun ns-category-for-reifying (default-category)
  (if (and *big-mechanism*
           (null *inhibit-big-mech-interpretation*))
    (bio-category-for-reifying)
    default-category))

;;;----------
;;; hyphens
;;;----------

(define-category hyphenated-pair
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :index (:sequential-keys left right)
  :binds ((left) ;; of the hyphen
          (right)))

(defun make-hyphenated-structure (left-edge right-edge)
  ;; called from nospace-hyphen-specialist or from
  ;; resolve-hyphen-between-two-words
  (push-debug `(,left-edge ,right-edge))
  (let ((i (find-or-make-individual 'hyphenated-pair
             :left (edge-referent left-edge)
             :right (edge-referent right-edge)))
        (category
         (ns-category-for-reifying category::hyphenated-pair)))

    (when (eq (edge-category left-edge)
              (edge-category right-edge))
      (setq i (bind-dli-variable 'type (edge-category left-edge)
                             i category::sequence)))
    (let ((edge (make-edge-over-long-span
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category
                   :rule 'nospace-hyphen-specialist
                   :form category::n-bar
                   :referent i
                   :constituents `(,left-edge ,right-edge))))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :two-hyphen-default-structure i edge)
        edge)))


;;;; The category is in sl/biology/taxonomy.lisp 
;;;; because of it's inheitance pattern
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

(defun make-ns-pair (category-name left-edge right-edge
                     words pos-before pos-after)
  "Instantiate a no-space-pair. Add the indicated category to
   the new individual. Make the edge, using the left-edge as
   the source of the labels."
  ;;/// This loses the fact that, e.g., these were separacted
  ;; by a slash. If the subcat machinery does all the work
  ;; then we could record that in the edge category
  (let ((category (etypecase category-name
                    (category category-name)
                    (symbol
                     (category-named category-name :break-if-none))))
        (left-ref (edge-referent left-edge))
        (right-ref (edge-referent right-edge)))
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
      (let ((edge (make-edge-over-long-span
                   pos-before
                   pos-after
                   category
                   :form (edge-form left-edge)
                   :referent i
                   :rule 'make-ns-pair
                   :constituents `(,left-edge ,right-edge)
                   :words words)))
        ;; trace
        edge))))

(defun make-protein-pair/convert-bio-entity (start-pos end-pos 
                                             edges words edge-to-convert)
  "Make a protein pair, but first convert the designated edge/referent
  from a bio-entity to a protein."
  (push-debug `(,start-pos ,end-pos ,edges ,words ,edge-to-convert))
  (break "Stub: convert bio-entity and make pair"))

;    (let ((protein2 (convert-bio-entity-to-protein 
 ;                    (left-treetop-at/edge pos-after))))





(defun make-hyphenated-pair (cat-name left-ref right-ref
                             left-edge right-edge
                             words pos-before pos-after)
#|  (unless (and (individual-p left-ref)
               (individual-p right-ref))
    (unless (individual-p left-ref)
      (typecase left-ref
        (rule
    (break "One of the referents is not an individual")) |#

  (let ((category (category-named cat-name :break-if-none))
        (daughter (edge-left-daughter right-edge))
        i )
    ;; special case simplifications
    (when (and (word-p daughter)
               (or
                (eq daughter (word-named "WT"))
                (eq daughter (word-named "wt"))))
      ;; That's "wild type". Ought to make a specialization but
      ;; the facility isn't finished, so just change the
      ;; referent instead simplify the referent since "WT"
      ;; as a name-word won't fit the value restrictions.
      (setq i left-ref)) ;; pesumably the protein

    (unless i
      (setq i (find-or-make-individual category 
                                      :left left-ref
                                      :right right-ref)))
 
    (let ((edge (make-edge-over-long-span
                 pos-before 
                 pos-after
                 category
                 :form category::n-bar
                 :rule 'make-hyphenated-pair
                 :referent i
                 :constituents `(,left-edge ,right-edge)
                 :words words)))
      ;; trace
      edge)))


(defun make-protein-pair (left-ref right-ref words
                         left-edge right-edge
                          pos-before pos-after)
  (make-hyphenated-pair 'protein-pair left-ref right-ref 
                        left-edge right-edge
                        words pos-before pos-after))

(defun make-amino-acid-pair (left-ref right-ref words
                             left-edge right-edge
                             pos-before pos-after)
  (make-hyphenated-pair 'amino-acid-pair left-ref right-ref 
                        left-edge right-edge
                         words pos-before pos-after))

(defun make-bio-pair (left-ref right-ref words
                      left-edge right-edge
                      pos-before pos-after)
  (make-hyphenated-pair 'bio-pair left-ref right-ref 
                        left-edge right-edge
                        words pos-before pos-after))

(define-category qualifying-pair
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((head) ;; 'Ras'
          (qualifier)) ;; 'mediated'
  :documentation "Inadequate name. This is for phrases
   like 'Ras-mediated' for the cases where we don't know
   or can't figure out the correct relationship (variable).")

(defun make-qualifying-pair (left right)
  (find-or-make-individual 'qualifying-pair
     :head left
     :qualifier right))




(define-category hyphenated-triple
  :specializes sequence
  ;; inherits items, item, type, number
  :instantiates :self
  :binds ((left)
          (middle)
          (right)))

(defun make-hyphenated-triple (left-edge middle-edge right-edge)
  (let ((i (find-or-make-individual 'hyphenated-triple
             :left (edge-referent left-edge)
             :middle (edge-referent middle-edge)
             :right (edge-referent right-edge)))
        (category
         (ns-category-for-reifying category::hyphenated-triple)))
     (let ((edge (make-edge-over-long-span
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category
                   :rule 'nospace-hyphen-triple-specialist
                   :form category::n-bar
                   :referent i
                   :constituents `(,left-edge ,middle-edge ,right-edge))))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :three-hyphen-default-edge edge)
        edge)))
                             





(defun resolve-stranded-hyphen (pattern words start-pos end-pos)
  ;; called from one-hyphen-ns-patterns for (:lower :hyphen),
  ;; e.g. "mono-"
  (declare (special *salient-hyphenated-literals*))
  (let* ((word (car words))
         (known? (memq word *salient-hyphenated-literals*)))
    (when *work-on-ns-patterns*
      (push-debug `(,known? ,pattern))
      (break "stranded hyphen: define the category etc"))))

(defun resolve-initial-stranded-hyphen  (pattern words start-pos end-pos)
  ;; e.g. "-tagged"
  (when *work-on-ns-patterns*
    (push-debug `(,pattern ,words ,start-pos ,end-pos))
    (break "do initial stranded hyphen")))

#| Define the notion of a prefix (or no-space-prefix) that
can compose with its suffix and apply a general-purpose
operator to its suffix to compute the meaning. 
//// for the moment that could be identity and we drop
the operator on the floor. Same style of treatment as
quantifiers and prepositions (etc.) where we create individuals
for each case and define a k-method to make sense of it all.
|#
(define-category no-space-prefix
  :specializes abstract
  :instantiates nil
  :binds ((word :primitive word)))

(defun define-no-space-prefix (string)
  (let* ((word (resolve/make string))
         (category (category-named 'no-space-prefix :break))
         (i (find-or-make-individual 'no-space-prefix
                                     :word word)))
    (let* ((cfr (def-cfr/expr category (list word)
                  :form category::common-noun ;; odd, but what alternative?
                  :referent i)))
      (push-onto-plist i (list cfr) :rules)
      word))) ;; to go on the list

(defparameter *salient-hyphenated-literals*
  `(
    ,(define-no-space-prefix "auto")
    ,(define-no-space-prefix "co") ;; co-occurring
    ,(define-no-space-prefix "di")
    ,(define-no-space-prefix "mono")
    ,(define-no-space-prefix "re") ;; "re-activate"
    ))

(defun some-word-is-a-salient-hyphenated-literal (words)
  ;; called as a test cond in resolve-hyphen-between-two-words
  ;; that gates compose-salient-hyphenated-literals to 
  ;; ensure that it has something to work with.
  (some #'(lambda (word) (memq word *salient-hyphenated-literals*))
        words))

(defun compose-salient-hyphenated-literals (pattern words
                                            pos-before pos-after)
  ;; Called from resolve-hyphen-between-two-words and from
  ;; one-hyphen-ns-patterns when the label prefix sees the literal
  (tr :salient-hyphenated-literal)
  (unless (= 3 (length words))
    (when *work-on-ns-patterns*
      (push-debug `(,words ,pattern ,pos-before ,pos-after))
      (break "new case: ~a words" (length words)))
    (reify-ns-name-and-make-edge words pos-before pos-after)
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
      (let ((word-rule (find-single-unary-cfr word2)))
        (if word-rule
          (let ((edge (install-preterminal-edge
                       word-rule composite-word pos-before pos-after)))
            edge)
          (else
            (reify-ns-name-and-make-edge words pos-before pos-after)))))

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
          (unless edge
            (when *work-on-ns-patterns*
              (push-debug `(,words ,pos-after ,pos-before ,pattern))
              (error "Neither of these words is spanned by an edge. ~
                      No way to proceeded."))
            (reify-ns-name-and-make-edge words pos-before pos-after))
          
          ;; Should add the literal as a modifier or some such in 
          ;; syntax function that will call-compose such as
          ;; interpret-premod-to-np (depending on the type of
          ;; the edge but the constraint in subcategorized-variable
          ;; is too presumptive of "in as location" to work
          ;; So dripping it on the floor

          (let ((new-edge
                 (make-edge-over-long-span
                   pos-before
                   pos-after
                   (edge-category edge)
                   :rule 'compose-salient-hyphenated-literals
                   :form (edge-form edge)
                   :referent (edge-referent edge)
                   :words words)))
            new-edge))))

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
  ;; called from nospace-colon-specialist
  (push-debug `(,left-edge ,right-edge))
  (let ((i (find-or-make-individual 'word-colon-word
             :left (edge-referent left-edge)
             :right (edge-referent right-edge)))
        (category category::word-colon-word))

    (when (eq (edge-category left-edge)
              (edge-category right-edge))
      (setq i (bind-dli-variable 'type (edge-category left-edge)
                                 i category::sequence)))
    (let ((edge (make-edge-over-long-span
                   (pos-edge-starts-at left-edge)
                   (pos-edge-ends-at right-edge)
                   category
                   :rule 'nospace-colon-specialist
                   :form category::n-bar
                   :referent i
                   :constituents `(,left-edge ,right-edge))))
        (revise-form-of-nospace-edge-if-necessary edge right-edge)
        (tr :word-colon-word-default-edge edge)
      edge)))

;;/// abstract out the constructor
(defun make-number-colon-number-structure (left-edge right-edge)
  (make-word-colon-word-structure left-edge right-edge))


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

(defun package-slashed-sequence (edges words start-pos end-pos)
  (push-debug `(,edges ,words ,start-pos ,end-pos))
  (let* ((elements (loop for edge in edges
                     collect (edge-referent edge)))
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
  :specializes sequence ;; though we won't use it
  :binds ((part-one)
          (part-two))
  :index (:sequential-keys part-one part-two))

(defun reify-two-part-label (words start-pos end-pos)
  ;; called from resolve-ns-pattern on (:single-digit :single-lower)
  ;; and (:single-digit :single-cap)
  ;; N.b. this code -knows- that the 2d element is a letter
  (push-debug `(,start-pos ,end-pos ,words))
  (let* ((edges (treetops-between start-pos end-pos))
         (elements (loop for edge in edges
                     when (edge-p edge) collect (edge-referent edge)
                     when (word-p edge) collect edge))
         (letter-word (second elements)))
    (let* ((letter
            (typecase letter-word
              (individual letter-word) ;;/// check type?
              (word (find-individual 'single-capitalized-letter 
                                     :letter letter-word))
              (otherwise
               (push-debug `(,letter-word ,elements ,edges ,words))
               (error "Unexpected type for letter in two-part label: ~
                       ~a~%  ~a" (type-of letter-word) letter-word))))
           (i (find-or-make-individual 'two-part-label
                 :part-one (first elements)
                 :part-two letter)))
      (let ((edge (make-edge-over-long-span
                   start-pos
                   end-pos
                   category::two-part-label
                   :rule 'reify-two-part-label
                   :form category::common-noun
                   :referent i
                   ;;:constituents edges
                   )))
        edge))))



;;;---------------------------------
;;; tilda + number => approximation
;;;---------------------------------

(defun package-approximation-number (words start-pos end-pos)
  (push-debug `(,words ,start-pos ,end-pos))
  ;; (setq words (car *) start-pos (cadr *) end-pos (caddr *))
  ;; The matching patterns indicates that it's "~<number>"
  ;; so just trust that. 
  (let* ((num-word (second words))
         (number (find-or-make-number num-word)))
    ;;///// dropping the approximation on the floor
    ;; see model/core/adjuncts/approx/object.lisp for where to 
    ;; start the process of doing it right. 
    (tr :ns-made-approximation number)
    (let ((edge (make-edge-over-long-span
                 start-pos
                 end-pos
                 category::number
                 :rule 'package-approximation-number
                 :form category::number
                 :referent number
                 :words words)))
      ;;/// trace
      edge)))

;;  (p "2.22±0.25.")
(defun package-number-plus-error (edges words start-pos end-pos)
  (let* ((base-edge (car edges))
         (base (edge-referent base-edge))
         (range-edge (cadr edges))
         (range (edge-referent range-edge)))
    ;;///////// dropping the range on the floor
    ;; and not continuing with proper representation 
    (tr :ns-make-number-plus-error base range)
    (let ((edge (make-edge-over-long-span
                 start-pos
                 end-pos
                 category::number
                 :rule 'package-number-plus-error
                 :form category::number
                 :referent base
                 :words words)))
      (tr :no-space-made-edge edge)
      edge)))





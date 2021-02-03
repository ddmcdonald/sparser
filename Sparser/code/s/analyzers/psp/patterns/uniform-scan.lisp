;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2021 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  February 2021

;; Broken out from driver 2/5/13. This code was developed with some
;; difficulty and confusion for the JTC/TRS project. Throwing out most
;; of it and reconstruing these results as names. 
;; 0.4 2/25/14 Modified to retain the interior punctuation.
;; 0.5 7/28/14 Turned parse-between-boundaries back on for "Ser1507"
;;     8/7/14 Debugged edge case (EOS) in sentence-final-punctuation-pattern?
;; 0.6 9/9/14 refactoring to make management simpler.
;; 0.7 10/9/14 Added scare quotes, debugged edge cases. 
;; 1.0 11/18/14 Bumped number to permit major revamp to fit into multi-
;;   pass scanning. 12/4/14 moved out the patterns to their own file.
;;   Tweeking through 1/18/15. Cleaned up specials for character 3/10/15
;;   4/19/15 Added safe characters to punctuation-terminates-no-space-sequence
;;    and established notion of other-punct for them. 
;; 1.1 4/23/15 Fixed bug in dispatch to slash. Added arrow.
;;   5/3/15 Added way to keep the sequence from extending over punctuation
;;   it didn't do a lookahead on. 
;; 1.2 5/15/15 Incorporating edges if they're more than one word long
;;   6/1/15 fixed bug in single multi-word edge case. Added some sectioning
;;    to make it easier to navigate
;; 6/28/2015 Mechanism to collect all examples of nospace segments, 
;;    keyed on *ns-examples*
;; 1/3/16 Tweaked final-colon handling to deal with fencepost.

(in-package :sparser)
(defvar category::protein)
;;;----------------
;;; gating globals
;;;----------------

(unless (boundp '*uniformly-scan-all-no-space-token-sequences*)
  (defparameter *uniformly-scan-all-no-space-token-sequences* nil
    "Gates this simpler alternative / complement to the pattern-driven
     scheme. Sort of a generic 'super' tokenizer"))

(unless (boundp '*parser-interior-of-no-space-token-sequence*)
  (defparameter *parser-interior-of-no-space-token-sequence* t
    "Controls whether we try to parse the edges of the words
     inside the span."))

;;;-------------------
;;; collection global
;;;-------------------

(defparameter *collect-ns-examples* nil
  "if non-null, collect all ns examples.
   Called from collect-no-space-segment-into-word just before
   it sets up the dispatch.")





;;;------------
;;; new driver
;;;------------

(defun collect-no-space-sequence-into-word (position-before) 
  ;; scan3's call
  (break "Call to find a no-space sequences at ~a~
        ~%Change your code to use collect-no-space-segment-into-word"
         position-before))

;; (trace-ns-sequences)  for ns patterns
;; (trace-scan-patterns)  for large scale

(defparameter *in-collect-no-space-segment-into-word* nil)

(defun collect-no-space-segment-into-word (start-pos end-pos)
  "As called from do-no-space-collection At this point all of the
   words in the sentence have been spanned with unary edges, and there
   are multi-word edges over polywords or created by an FSA (e.g. numbers).
   This 'position-after' is the position that has no-space recorded
   on it, indicating that it and the previous word (or multi-word edge)
   are not separated."
  (declare (special start-pos end-pos))
  (let* ((*in-collect-no-space-segment-into-word* t)) ;; used to block one anaphora, when numbers appear in an NS pattern)
    (declare (special *in-collect-no-space-segment-into-word* leftmost-edge long-edge))
        
    (tr :no-space-sequence-started-at start-pos)
      
    ;; Redundant for the modern caller, but relevant for earlier ones
    #+ignore
    (when (or (word-is-bracket-punct (pos-terminal end-pos))
              (word-never-in-ns-sequence (pos-terminal end-pos)))
      (return-from collect-no-space-segment-into-word nil))
      

    ;; If the sweep encountered any more edges we have to fold 
    ;; them in or else we'll get the wrong pattern
    (when (is-phosphorylated-protein? start-pos end-pos)
      (return-from collect-no-space-segment-into-word
        (span-phosphorylated-protein start-pos end-pos)))
        
    (tr :looking-at-ns-segment start-pos end-pos)

    (multiple-value-bind (layout edge)
        (parse-between-nospace-scan-boundaries start-pos end-pos)
      (multiple-value-bind (ns-pattern)
          (sweep-ns-region start-pos end-pos)
        (tr :ns-segment-layout layout)
        ;;(lsp-break "layout = ~a edge = ~a" layout edge)
        (cond
          ((or (eq layout :single-span) ;; Do nothing. It's already known
               (eq layout :one-edge-over-entire-segment))
           (tr :ns-spanned-by-edge edge)
           (revise-form-of-nospace-edge-if-necessary edge :find-it)
           #+ignore(when *collect-ns-examples*
                     (update-ns-examples start-pos))
           (when *collect-ns-examples* 
             (save-ns-example start-pos end-pos)))
          (t
           ;; TO-DO -- review this code -- issues occurred when there
           ;; are multiple edges at the end of the pattern
           ;; (ambiguity) and only one of the edges satisfies a
           ;; pattern this is not done cleanly, and needs some
           ;; pair-programming
           (when *collect-ns-examples* 
             (save-ns-example start-pos end-pos))
           (catch :punt-on-nospace-without-resolution
             (let* ((edges (treetops-between start-pos end-pos))
                    (end-edge (car (last edges)))
                    (end-cat (when (and (edge-p end-edge)
                                        (category-p (edge-category end-edge)))
                               (cat-symbol (edge-category end-edge)))))
               (or
                (when (punctuation-final-in-ns-span? end-pos)
                  ;; n.b. only fires on colons
                  (setq end-pos (chart-position-before end-pos))
                  (ns-pattern-dispatch ns-pattern start-pos end-pos :final-colon))
                (when (memq (car (last ns-pattern))
                            '(:protein :protein-family
                              :small-molecule :ion :nucleotide))
                  (ns-protein-pattern-resolve  ns-pattern start-pos end-pos))
                (when (eq end-cat 'category::amino-acid)
                  (ns-amino-pattern-resolve  ns-pattern start-pos end-pos))
                (ns-pattern-dispatch ns-pattern start-pos end-pos)))))))
            
      (when *collect-ns-examples*
        (update-ns-examples start-pos))
        
      end-pos)))


;;;----------
;;; Dispatch
;;;----------

(defun ns-pattern-dispatch (ns-pattern start-pos end-pos  &optional final-colon?)
  ;; Subroutine of collect-no-space-segment-into-word that does the
  ;; dispatch. Every path is expected to form an edge over the
  ;; span one way or another.
  (let* ((edges (treetops-between start-pos end-pos))
         (pattern ns-pattern))
    
    (when final-colon?
      ;; If the span to the left of the colon is a single word then
      ;; we have nothing to do. If this is not enough of a check
      ;; then the next thing to do is to look for whether the 
      ;; non-colon punctuation parameters have values.
      (when (null (cdr edges))
        (tr :single-word-followed-by-colon (car edges))
        (return-from ns-pattern-dispatch t)))
    
    #+ignore
    (when edges
      (tr :ns-pattern-includes-edges edges)
      (setq pattern (convert-mixed-pattern-edges-to-labels pattern)))
    
    (tr :segment-ns-pattern pattern)

    (cond 
      ((eq :double-quote (car pattern))
       (tr :ns-scare-quote)
       (scare-quote-specialist start-pos ;; leading-quote-pos
                               end-pos))

      ((and (member :forward-slash pattern)
            (member :hyphen  pattern))
       (tr :ns-slash-hyphen-combination)
       (divide-and-recombine-ns-pattern-with-slash pattern start-pos end-pos))

      ((member :forward-slash pattern)
       (if (url-prefix start-pos)
         (package-url start-pos end-pos)
         (else
           (tr :ns-looking-at-slash-patterns)
           (when (eq (car pattern) :forward-slash) ; it's initial
             (setq start-pos
                   (if (top-edge-at/ending start-pos) 
                     (edge-starting-position (top-edge-at/ending start-pos))
                     (chart-position-before start-pos)))
             (setq pattern (sweep-ns-region start-pos end-pos)))
           (or (resolve-slash-pattern pattern edges start-pos end-pos)
               (reify-ns-name-and-make-edge start-pos end-pos)))))

      ((and (member :hyphen pattern)
            (member :colon pattern))
       (tr :ns-hyphen-and-colon-patterns)
       (divide-and-recombine-ns-pattern-with-colon pattern start-pos end-pos))

      ((member :colon pattern)
       (tr :ns-looking-at-colon-patterns)
       (or (resolve-colon-pattern pattern start-pos end-pos)
             (reify-ns-name-and-make-edge start-pos end-pos)))
     
      ((member :hyphen pattern)
       (tr :ns-looking-at-hyphen-patterns)
       (or (resolve-hyphen-pattern pattern start-pos end-pos)
           (reify-ns-name-and-make-edge start-pos end-pos)))
      ((find-if #'(lambda(x)(other-punct? x)) pattern)
       ;; this probably has to be spread over the other cases
       ;; in some sort of combination, but this is a start
       ;;(tr :ns-other-punct other-punct)
       (resolve-other-punctuation-pattern pattern start-pos end-pos))
      (t 
       (tr :ns-taking-default)
       (or (resolve-ns-pattern pattern start-pos end-pos)
           (reify-ns-name-and-make-edge start-pos end-pos))))))


;; tally the odd punctuation noticed in the pattern dispatch
(defparameter *other-punct* nil)
(defun other-punct? (x)
    (pushnew x *other-punct*)
    nil)

(defun ns-apostrophe-check (pos-after  start-pos end-pos)
  "Is the terminal on the position an apostrophe and did an FSA already
   handle it and the word following it to make a one of the known
   apostrophe-x edges?"
  (declare (special *categories-based-on-apostrophe*))
  (when (eq (pos-terminal pos-after)
            (punctuation-named #\'))
    (let ((edges (treetops-between start-pos end-pos)))
      (when (null (cdr edges))
        (let* ((edge (car edges))
               ;; (car edges) is null in "We used 2' deoxythymidines..."
               (label (and (edge-p edge)(edge-category edge))))
          (and (category-p label)
               (memq label *categories-based-on-apostrophe*)))))))



;;;-------------------------------------------
;;; Default -- basic definition plus polyword
;;;-------------------------------------------

(defun reify-ns-name-and-make-edge (pos-before next-position)
  ;; We make an instance of a spelled name with the words as its sequence.
  ;; We make a rule that treats the pnames of the words as a polyword,
  ;; and we make a category for that rule with that same spelling,
  ;; form is 'proper-name'.  Something makes me think this could
  ;; be problem down the line, but we can deal with it when it emerges.
  (declare (special *big-mechanism* *positions-with-unhandled-unknown-words*))
  (cond ((eq pos-before next-position)
         (error "Upstream mistake in no-space routine. ~
            the position before is EQ to the position after")
         nil)
        (t
         (let ((reason (reason-to-not-span-ns pos-before next-position)))
           (when reason
             (tr :not-reifying-because-there-was-a-reason reason)
             (throw :punt-on-nospace-without-resolution reason)))

         (unless *big-mechanism*
           (unless (fboundp 'reify-spelled-name)
             ;; It's in the grammar module for names
             (throw :punt-on-nospace-without-resolution :no-reify-method)))

         (multiple-value-bind (category rule referent)
             (if *big-mechanism*
                 (reify-ns-name-as-bio-entity pos-before next-position)
                 (reify-spelled-name pos-before next-position))
           (tr :reified-ns-name referent pos-before next-position)
           (let ((edge
                  (make-edge-over-long-span
                   pos-before
                   next-position
                   category
                   :rule rule
                   :form (category-named 'proper-name)
                   :referent referent
                   :constituents (treetops-between pos-before next-position)
                   ;; :words (effective-words-given-edges pos-before next-position)
                   ;; don't try to create words here
                   ;; this creates bogus words in
                   ;; "Thr49/Thr20" where the words have no referent...
                   )))
             (setq *positions-with-unhandled-unknown-words*
                   (remove-if
                    #'(lambda (pos)
                        (and (position/< pos-before pos)
                             (position/> next-position pos)))
                    *positions-with-unhandled-unknown-words*))
             (tr :made-edge edge)
             edge)))))


(defparameter *bio-entity-initial-string* "not-a-word-end-marker"
  "A labeled value makes it easy to remove from the list later")

(defparameter *bio-entity-strings* (list *bio-entity-initial-string*)
  "If this has a value then the words string for every newly created
   bio-entity will be pushed onto this list")

(defparameter *bio-entity-count-ht* nil)

(defun collect-bio-entity-strings ()
  (setq *bio-entity-strings* (list *bio-entity-initial-string*))
  (setq *bio-entity-count-ht* (make-hash-table :size 1000 :test #'equal)))

(defun reify-ns-name-as-bio-entity (pos-before pos-after)
  "Called from reify-ns-name-and-make-edge when *big-mechanism*
   flag is up. Responsible for returning the category to use,
   the rule, and the referent so that the caller can make an edge.
     Looks for the possibility that we already know something
   about this span of characters. (a) perhaps we know the uppercase
   version, (b) maybe we can find it in the OBO data, (c) it corresponds
   to a known polyword, perhaps an already encountered bi-entity,
   and (d) we package it as a bio-entity."
  (declare (special category::bio-entity words))
  (let* ((words-string (actual-characters-of-word pos-before pos-after))
         (obo (corresponding-obo words-string))
         (uc-word (resolve (string-upcase words-string))))
    (declare (special words-string))
    (cond
      ((and uc-word
	    (rule-set-for uc-word)
	    ;; have cases where there is no rule! (e.g. for the word <word ASTERISK>
	    (car (rs-single-term-rewrites (rule-set-for uc-word))))
       ;; If a full caps version of this character string is defined,
       ;; then define this other case pattern of the string to mean 
       ;; the same thing. 
       (let* ((rs (rule-set-for uc-word))
	      (uc-rule (and rs (car (rs-single-term-rewrites rs))))
	      (cfr 
	       (when uc-rule
		 (define-cfr/resolved (cfr-category uc-rule)
		     (list (resolve/make words-string))
		   (cfr-form uc-rule)
		   (cfr-referent uc-rule)
		   (cfr-schema uc-rule)))))
	 (values (cfr-category uc-rule)
		 cfr
		 (cfr-referent uc-rule))))
      
      (obo
       ;; OBO check/handling matches what is done when it comes in as
       ;; an unknown word via make-word/all-properties/or-primed
       (assemble-category-rule-and-referent-for-an-obo obo (resolve/make words-string)))

      ((resolve words-string) ;; known (poly)word
       ;; Did we define it as a bio-entity on a previous pass?
       (let* ((w (resolve words-string))
	      (bio-entity (find-individual 'bio-entity :name w)))
         (when (and (hash-table-p *bio-entity-count-ht*)
                    (gethash words-string *bio-entity-count-ht*))
           (incf (gethash words-string *bio-entity-count-ht*)))
	 (if bio-entity
             (values category::bio-entity
                     'reify-ns-name-as-bio-entity
                     bio-entity)
             (let* ((rs (rule-set-for w))
                    (rule (and rs (car (rs-single-term-rewrites rs)))))
               (cond
                 (rule
                  (values (cfr-category rule)
                          rule
                          (etypecase (cfr-referent rule)
                            (individual (cfr-referent rule))
                            ;;SARS-Cov2 is interpreted as a category::SARS-COV-2
                            (referential-category (cfr-referent rule))
                            (cons 
                             ;;(lsp-break "bad referent ~s for bio-entity" (cfr-referent rule))
                             (evaluate-unary-ref-actions (cfr-referent rule))))))
                 ((punctuation? w) ;; e.g. asterix
                  (throw :punt-on-nospace-without-resolution
                    :single-character-punctuation))
                 (t 
                  (values category::bio-entity
                          'reify-ns-name-as-bio-entity
                          (find-or-make-individual 'bio-entity :name w))))))))

      (t ;; by default make a bio-entity
       ;; Open-code key part of handle-unknown-word-as-bio-entity,
       ;; which does -not- reify this case in a rule.
       (let* ((word (resolve/make words-string))
	      (i (find-or-make-individual 'bio-entity :name word)))
         (when *bio-entity-strings*
           (pushnew words-string *bio-entity-strings* :test #'equal)
           (unless (hash-table-p *bio-entity-count-ht*)
             (setq *bio-entity-count-ht* (make-hash-table :size 1000 :test #'equal)))
           (incf (gethash words-string *bio-entity-count-ht* 0)))
	 (values category::bio-entity
		 'reify-ns-name-as-bio-entity
		 i))))))


(defun reason-to-not-span-ns (start-pos end-pos)
  (declare (special word::|s|))
  (let* ((edges (treetops-between start-pos end-pos))
         (form-labels
          (loop for e in edges
             when (edge-p e)
             collect (or (edge-form e)
                         ;; the only cases this happens seem to be
                         ;;(PRONOUN/FEMALE APOSTROPHE-S SINGLE-QUOTE HYPHEN
                         ;; PERCENT-SIGN FORWARD-SLASH)
                         (let* ((ec (edge-category e))
                                (symbol
                                 (if (word-p ec)
                                   (word-symbol ec)
                                   (intern (string-upcase (pname ec))
                                           (find-package :sparser)))))
                           ;;(pushnew symbol *no-form-cats*)
                           symbol))))
         (form-symbols (loop for l in form-labels
                             when l collect (if (category-p l) (cat-symbol l) l))))
    (or (and (edge-p (car edges))
             (itypep (edge-referent (car edges)) 'year)
             (edge-p (second edges))
             (eq (edge-category (second edges)) word::|s|))
        (loop for symbol in form-symbols
              thereis (or (memq symbol
                                '(category::pronoun category::modal
                                  pronoun/female apostrophe-s word::single-quote)))))))
         
   
    
(defun is-phosphorylated-protein? (start end)
  (let* ((extr-string (extract-characters-between-positions start end))
         (sur-str  (when (> (length extr-string) 0) (trim-whitespace extr-string)))
         (pro-string? (cond ((equal extr-string "") ;; couldn't get it
                             nil)
                            ((eq #\p (aref  sur-str 0))
                             (subseq sur-str
                                     (if (eq 0 (search "p-" sur-str)) 2 1)))
                            ((and (eq #\P (aref  sur-str 0))
                                  (and (> (length sur-str) 1)
                                       (eq #\- (aref  sur-str 1))))
                             (subseq sur-str 2))))
         (pro-word? (when pro-string? (resolve pro-string?)))
         (pro-cfr? (when pro-word? (find-single-unary-cfr pro-word?)))
         (pro? (when (and pro-cfr?
                          (itypep (cfr-referent pro-cfr?) category::protein)
                          ;; block things like "pAb" (polyclonal antibody) getting phosphorylated
                          (not (category-p (cfr-referent pro-cfr?))))
                 (cfr-referent pro-cfr?))))
    (declare (special sur-str pro-string? pro-word? pro-cfr? pro?))
    ;;(lsp-break "is-pro")
    (when pro? (values pro? start end pro-cfr? sur-str))))

;;;---------------------
;;; specific edge types
;;;---------------------

(defun span-phosphorylated-protein (start end &optional cat form)
  (multiple-value-bind (protein start end cfr sur-string)
      (is-phosphorylated-protein? start end)
    (make-edge-over-long-span
     start
     end
     (or cat (cfr-category cfr))
     :rule 'span-phosphorylated-protein
     :form (or form (cfr-form cfr))
     :referent (make-phosphorylated-protein protein sur-string))
    end))
                            

(defun make-edge-over-rate (e1 e2 start-pos end-pos)
  "Called from one-slash-ns-patterns for rates, e.g. 'hours/day'.
   Instantiates the rate and then makes an edge over the span"
  (declare (special category::rate))
  (let* ((unit (edge-referent e1))
         (per-unit (edge-referent e2))
         (i (make-a-rate unit per-unit)))
    (make-edge-over-long-span
     start-pos end-pos
     category::rate
     :form (category-named 'np)
     :referent i
     :rule 'make-edge-over-rate
     :constituents (treetops-between start-pos end-pos))))


;;;------------------------------------
;;; saving examples to look at offline
;;;------------------------------------

(defun collect-ns-examples (&optional reset (n 0))
  "Turn on collecting no-space examples if it's off, or reset
*collect-ns-examples* if you want to flush it; if a number is
included, collect ns from n june articles"
  (when (or reset 
            (null *collect-ns-examples*))
    (setf *collect-ns-examples* (list nil))
    (when (> n 0)
      (compare-to-snapshots)
      (funcall (intern "DO-JUNE-NO-CARDS" (find-package :r3))
               :n n))))

(defparameter *ns-sub-patterns* (list nil))

(defun save-ns-example (start-pos end-pos)
  (let* ((ns-sentence (current-string))
         (nsitem (actual-characters-of-word start-pos end-pos)) 
         (ns-edge-pattern
          (list (characterize-words-in-region start-pos end-pos)
                (sweep-ns-region  start-pos end-pos))))
    (declare (special ns-item ns-edge-pattern))
    ;;(when (or (search "-" nsitem) (search "/" nsitem))
    ;;(lsp-break "collect-no-space-sequence-into-word")
    ;;(setq ns-edge-pattern (edge-pattern-to-cats ns-edge-pattern))
    (push (list 
           ns-edge-pattern 
           nsitem
           ns-sentence)
          *collect-ns-examples*)
    (let* ((edges (treetops-between start-pos end-pos))
           (edge-strings (mapcar #'get-string-from-edge-word edges))
           (ns-patt-edges (interleave-edge-pattern edge-strings ns-edge-pattern))
           (ns-split (ns-punct-pattern-split ns-patt-edges))
           (ns-undef-patt (get-undefined-ns-patterns ns-split)))
      (declare (special edge-strings ns-patt-edges ns-split ns-undef-patt))
;      (lsp-break "save-ns post 2nd let")
      (loop for i in ns-undef-patt
            do (pushnew i *ns-sub-patterns* :test #'equal))))
  )

(defun edge-pattern-to-cats (ns-edge-pattern)
  (convert-mixed-pattern-edges-to-labels ns-edge-pattern))

(defun interleave-edge-pattern (edge-strings pattern)
  "Given a list of edges and patterns, interleave them with the patterns first"
  (when (eq (length edge-strings) (length pattern))
    (loop for p in pattern
            as s in edge-strings
            append (list p s) into edge-pats
            finally (return edge-pats))))

(defun ns-punct-pattern-split (pattern)
  "Given an interleaved list of pattern and edges from the prior
funtion, split it into sublists removing hyphens, colons, and slashes"
  (loop for (i j) on pattern
        as n from 0
        when (memq i '(:HYPHEN :COLON :FORWARD-SLASH))
          return (if (eq n 0)
                     (ns-punct-pattern-split (cddr pattern))
                     (list (subseq pattern 0 n)
                           (car (ns-punct-pattern-split (nthcdr (+ n 2) pattern)))))
        finally (return (list pattern))))

(defun get-undefined-ns-patterns (pattern-list)
  "Given a list of patterns from the above, only keep those patterns
that either have more than one item or are a bio-entity"
  (loop for l in pattern-list
          when (or (third l)
                   (eq (car l) :BIO-ENTITY))
          collect l))

(defun update-ns-examples (start-pos)
  "Adds in the rule that was used by no-space" 
  ;; results are of the form: 

  ;; (((:LOWER :HYPHEN #<edge5 5 probability 6>) \"phospho­MAPK1\") \"==>\"
  ;;   (RESOLVE-PROTEIN-PREFIX PROTEIN N-BAR))

  ;; which is ((characterization of the words/edges to be combined and
  ;; their edge form and category) 'actual text' ==> (rule to form edge
  ;; edge-form and edge-category of created edge))

  (setf (car *collect-ns-examples*)
        `(,(car *collect-ns-examples*) 
           "==>"
           ,(let ((edge (right-treetop-at start-pos)))
                ; (declare (special edge))
                ; (lsp-break "update-ns-example edge set")
                 (if (edge-p edge)
                     (list 
                      (if (cfr-p (edge-rule edge))
                          (then ; (lsp-break "cfr-p")
                                (cfr-symbol (edge-rule edge)))
                          (edge-rule edge))
                      (simple-label (edge-category edge))
                      (simple-label (edge-form edge)))
                     (list :no-edge)))
           )))

;; Remainder of ns analysis stuff moved to ns-analysis.lisp


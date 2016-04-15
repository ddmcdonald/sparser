;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  Feb ruary2016

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
  "if non-null, collect all ns examples that contain #\- or #\/.
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

;; (trace-scan-patterns)

(defun collect-no-space-segment-into-word (position-after)
  ;; As called from do-no-space-collection . At this point all of the
  ;; words in the sentence have be spanned with unary edges, and there
  ;; are multi-word edges over polywords or created by an FSA (e.g. numbers).
  ;; This 'position-after' is the position that has no-space recorded
  ;; on it, indicating that it and the previous word (or multi-word edge)
  ;; are not separated.  
  (when nil (tts))
  
  (let* ((leftmost-edge (left-treetop-at/only-edges position-after))
         ;; There's always an edge. The question is how long it is.
         (long-edge (when leftmost-edge
                      (unless (one-word-long? leftmost-edge)
                        leftmost-edge))))
    
    ;    ;; but that 'edge' could be a word, e.g. "... (Figure ..."
    ;    (when (word-p leftmost-edge)
    ;      (when (first-word-is-bracket-punct leftmost-edge)
    ;        (return-from collect-no-space-segment-into-word nil)))
    
    (let ((start-pos (if leftmost-edge
                         (pos-edge-starts-at leftmost-edge)
                         (chart-position-before position-after))))
      
      (tr :no-space-sequence-started-at start-pos)
      (when long-edge
        (tr :no-space-initial-long-edge long-edge))
      
      ;;//// tune to the possibility we don't care about the first
      ;; word because it's covered by an edge. 
      (when (or (word-is-bracket-punct (pos-terminal position-after))
                (word-never-in-ns-sequence (pos-terminal position-after)))
        (return-from collect-no-space-segment-into-word nil))
      
      (multiple-value-bind (end-pos hyphen-positions slash-positions
                            colon-positions other-punct edges)
                           (sweep-to-end-of-ns-regions start-pos long-edge)
        ;; Sweep from the very beginning just to be sure we catch any
        ;; marked punctuation there. 
        
        ;; If the sweep encountered any more edges we have to fold 
        ;; them in or else we'll get the wrong pattern
        (setq edges (sort-out-edges-in-ns-region edges long-edge))
        
        ;;// The sweep will only notice edges if the leftmost-edge
        ;; is 'long'  But we want to see all the edges now (11/15),
        ;; so as a backup we collect them below after the parse
        
        (when *collect-ns-examples* 
          (save-ns-example start-pos end-pos))
        
        ;;(push-debug `(,start-pos ,end-pos))
        ;; on this sentence: (p "Pre-clinical studies have demonstrated that 
        ;;   B-RAFV600E mutation predicts a dependency on the mitogen activated 
        ;;   protein kinase (MAPK) signaling cascade in melanoma 
        ;;   [1–5] —an observation that has been validated by the success of 
        ;;   RAF and MEK inhibitors in clinical trials 6–8.")
        ;; and perhaps others, the sweep to the end routine returns a string
        ;; as the value of end-pos, e.g. "6 - 8. "
        ;; Rather than figure it out just now (12/18/14) I'm just dropping it
        ;; on the floor.
        (when (stringp end-pos) ;; may be bad display in backtrace
          (tr :bailing-from-ns/end-pos-is-the-string end-pos)
          (return-from collect-no-space-segment-into-word nil))
        (when (stringp start-pos) ;; This one is weirder
          (tr :bailing-from-ns/start-pos-is-the-string start-pos)
          (return-from collect-no-space-segment-into-word nil))
        (unless (position-precedes start-pos end-pos) ;; bug may actually be this
          (tr :bailing-from-ns/end-pos-less-than-start-pos start-pos end-pos)
          (return-from collect-no-space-segment-into-word nil))
        
        (tr :looking-at-ns-segment start-pos end-pos)
        
        (multiple-value-bind (layout edge)
                             (parse-between-nospace-scan-boundaries start-pos end-pos)
          (tr :ns-segment-layout layout) ;;(break "layout = ~a" layout)
          (cond
           ((eq layout :single-span)  ;; Do nothing. It's already known
            (revise-form-of-nospace-edge-if-necessary edge :find-it)
            (when *collect-ns-examples*
              (update-ns-examples start-pos)))
           (t
            ;; This may be overkill, especially for punctuation,
            ;; but it may also be more informative
            (setq edges (treetops-between start-pos end-pos))
            ;;(break "input edges = ~a" edges)
            ;; TO-DO -- review this code -- issues occurred when there are multiple edges at the end of 
            ;;  the pattern (ambiguity) and only one of the edges satisfies a pattern
            ;; this is not done cleanly, and needs some pair-programming
            (catch :punt-on-nospace-without-resolution
              (let* ((end-edge (car (last edges)))
                     (end-cat (when (and
                                     (edge-p end-edge)
                                     (category-p (edge-category end-edge)))
                                (cat-symbol (edge-category end-edge)))))
                (or
                 (when (punctuation-final-in-ns-span? end-pos) ;; only fires on colons
                   (setq end-pos (chart-position-before end-pos))
                   (ns-pattern-dispatch start-pos end-pos edges
                                        hyphen-positions slash-positions
                                        colon-positions other-punct
                                        :final-colon))
                 (when (memq end-cat '(category::protein category::protein-family
                                                         category::small-molecule category::ion 
                                                         category::nucleotide))
                   (ns-protein-pattern-resolve  start-pos end-pos edges
                                                hyphen-positions slash-positions
                                                colon-positions other-punct))
                 (when (eq end-cat 'category::amino-acid)
                   (ns-amino-pattern-resolve  start-pos end-pos edges
                                              hyphen-positions slash-positions
                                              colon-positions other-punct))
                 (ns-pattern-dispatch start-pos end-pos edges
                                      hyphen-positions slash-positions
                                      colon-positions other-punct)))))))
            
        (when *collect-ns-examples*
          (update-ns-examples start-pos))
        end-pos))))


;;;----------
;;; Dispatch
;;;----------

(defun ns-pattern-dispatch (start-pos end-pos unsorted-edges
                            hyphen-positions slash-positions
                            colon-positions other-punct
                            &optional final-colon?)
  ;; Subroutine of collect-no-space-segment-into-word that does the
  ;; dispatch. Every path is expected to form an edge over the
  ;; span one way or another.
  (let* ((edges (remove-non-edges unsorted-edges))
         (pattern (characterize-words-in-region start-pos end-pos edges))
         (words (words-between start-pos end-pos)))
    (when final-colon?
      ;; If the span the left of the colon is a single word then
      ;; we have nothing to do. If this is not enough of a check
      ;; then the next thing to so is to look for whether the 
      ;; non-colon punctuation parameters have values.
      (when (null (cdr words))
        (tr :single-word-followed-by-colon (car words))
        (return-from ns-pattern-dispatch t))) ;; 
    (when edges
      (tr :ns-pattern-includes-edges edges)
      (setq pattern (convert-mixed-pattern-edges-to-labels pattern)))
    (tr :segment-ns-pattern pattern)

    (cond 
     ((eq :double-quote (car pattern))
      (tr :ns-scare-quote)
      (scare-quote-specialist start-pos ;; leading-quote-pos
                              words start-pos end-pos))

     ((and slash-positions
           hyphen-positions)
      (tr :ns-slash-hyphen-combination)
      (divide-and-recombine-ns-pattern-with-slash 
       pattern words edges slash-positions hyphen-positions start-pos end-pos))

     (other-punct
      ;; this probably has to be spread over the other cases
      ;; in some sort of combination, but this is a start
      (tr :ns-other-punct other-punct)
      (resolve-other-punctuation-pattern
       pattern words edges other-punct start-pos end-pos))

     (slash-positions
      (tr :ns-looking-at-slash-patterns)
      (or (resolve-slash-pattern 
           pattern words edges slash-positions hyphen-positions start-pos end-pos)
          (reify-ns-name-and-make-edge words start-pos end-pos)))

     ((and hyphen-positions
           colon-positions)
      (tr :ns-hyphen-and-colon-patterns)
      (divide-and-recombine-ns-pattern-with-colon
       pattern words edges colon-positions hyphen-positions start-pos end-pos))

     (colon-positions
      (tr :ns-looking-at-colon-patterns)
      (or (resolve-colon-pattern pattern words edges colon-positions start-pos end-pos)
          (reify-ns-name-and-make-edge words start-pos end-pos)))
     
     (hyphen-positions
      (tr :ns-looking-at-hyphen-patterns)
      (or (resolve-hyphen-pattern 
           pattern words edges hyphen-positions start-pos end-pos)
          (reify-ns-name-and-make-edge words start-pos end-pos)))

     (t 
      (tr :ns-taking-default)
      (or (resolve-ns-pattern pattern words edges start-pos end-pos)
          (reify-ns-name-and-make-edge words start-pos end-pos))))))
 


;;;-------------------------------------------
;;; Default -- basic definition plus polyword
;;;-------------------------------------------

(defun reify-ns-name-and-make-edge (words pos-before next-position)
  ;; We make an instance of a spelled name with the words as its sequence.
  ;; We make a rule that treats the pnames of the words as a polyword,
  ;; and we make a category for that rule with that same spelling,
  ;; form is 'proper-name'.  Something makes me think this could
  ;; be problem down the line, but we can deal with it when it emerges.
  (declare (special *big-mechanism*))
  (when (eq pos-before next-position)
    (error "Upstream mistake in no-space routine. ~
            the position before is EQ to the position after"))
  (multiple-value-bind (category rule referent)
                       (if *big-mechanism*
                         (reify-ns-name-as-bio-entity 
                          words pos-before next-position)
                         (reify-spelled-name words))
    (tr :reified-ns-name referent pos-before next-position)
    (let ((edge
           (make-edge-over-long-span
            pos-before
            next-position
            category
            :rule rule
            :form (category-named 'proper-name)
            :referent referent
            :words words)))
      (tr :made-edge edge)
      edge)))


(defun reify-ns-name-as-bio-entity (words pos-before pos-after)
  ;; called from reify-ns-name-and-make-edge when *big-mechanism*
  ;; flag is up. Responsible for returning the category to use,
  ;; the rule, and the referent so that the caller can make an edge
  (let* ((words-string (actual-characters-of-word pos-before pos-after words))
         (obo (corresponding-obo words-string))
         (uc-word (resolve (string-upcase words-string))))
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
			  (cfr-referent rule)))
		 (t (push-debug `(,w))
		    (break "Known word, but no associated rule. Figure out what to do")))))))

      (t ;; by default make a bio-entity
       ;; Open-code key part of handle-unknown-word-as-bio-entity,
       ;; which does -not- reify this case in a rule.
       (let* ((word (resolve/make words-string))
	      (i (find-or-make-individual 'bio-entity :name word)))     
	 (values category::bio-entity
		 'reify-ns-name-as-bio-entity
		 i))))))


;;;------------------------------------
;;; saving examples to look at offline
;;;------------------------------------

(defun save-ns-example (start-pos end-pos)
  (let ((nsitem (actual-characters-of-word start-pos end-pos nil)))
    ;;(when (or (search "-" nsitem) (search "/" nsitem))
    ;;(lsp-break "collect-no-space-sequence-into-word")
    (push (list 
           (let
               ((end-edge (left-treetop-at end-pos)))
             (cond
              ((edge-p end-edge)
               (list  (simple-label (edge-form end-edge))
                      (simple-label (edge-category end-edge))))
              ((eq end-edge :MULTIPLE-INITIAL-EDGES)
               (loop for e in (ev-edges  (pos-ends-here end-pos))
                 collect
                 (list  (simple-label (edge-form e))
                        (simple-label (edge-category e)))))
              ((word-p end-edge)
               (list end-edge))
              (t
               (lsp-break "strange situation in NS"))))
           nsitem)
          *collect-ns-examples*)))

(defun update-ns-examples (start-pos)
  (setf (car *collect-ns-examples*)
        `(, 
          (let ((edge (right-treetop-at start-pos)))
            (when (edge-p edge)
              (list 
               (edge-rule edge)
               (simple-label (edge-category edge))
               (simple-label (edge-form edge)))))
          "<=="
          ,.(car *collect-ns-examples*))))

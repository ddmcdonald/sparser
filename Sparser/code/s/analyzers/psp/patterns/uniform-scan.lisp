;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "driver"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  September 2016

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
(defun collect-no-space-segment-into-word (position-after)
  "As called from do-no-space-collection At this point all of the
   words in the sentence have been spanned with unary edges, and there
   are multi-word edges over polywords or created by an FSA (e.g. numbers).
   This 'position-after' is the position that has no-space recorded
   on it, indicating that it and the previous word (or multi-word edge)
   are not separated."
  
  (let* ((*in-collect-no-space-segment-into-word* t) ;; used to block one anaphora, when numbers appear in an NS pattern
         (leftmost-edge (left-treetop-at/only-edges position-after))
         ;; There's always an edge. The question is how long it is.
         (long-edge (when leftmost-edge
                      (unless (one-word-long? leftmost-edge)
                        leftmost-edge))))
    (declare (special *in-collect-no-space-segment-into-word* long-edge))
        
    (let ((start-pos (if leftmost-edge
                       (pos-edge-starts-at leftmost-edge)
                       (chart-position-before position-after))))
      (declare (special start-pos))
      (tr :no-space-sequence-started-at start-pos)
      (when long-edge
        (tr :no-space-initial-long-edge long-edge))
      
      ;; Redundant for the modern caller, but relevant for earlier ones
      (when (or (word-is-bracket-punct (pos-terminal position-after))
                (word-never-in-ns-sequence (pos-terminal position-after)))
        (return-from collect-no-space-segment-into-word nil))
      
      (multiple-value-bind (end-pos hyphen-positions slash-positions
                            colon-positions other-punct edges)
                           (sweep-to-end-of-ns-regions start-pos long-edge)
        (declare (special edges end-pos))
        ;; Sweep from the very beginning just to be sure we catch any
        ;; marked punctuation there.
       ; (lsp-break "collect-ns post edges bind")
        (when (ns-apostrophe-check position-after edges)
          (tr :returning-because-its-a-conjunction)
          (try-all-contiguous-edge-combinations start-pos end-pos) ;; see note with fn
          (return-from collect-no-space-segment-into-word nil))

        ;; If the sweep encountered any more edges we have to fold 
        ;; them in or else we'll get the wrong pattern
        (setq edges (sort-out-edges-in-ns-region edges long-edge))
       
        
        
        ;;(push-debug `(,start-pos ,end-pos))
        ;; on this sentence: (p "Pre-clinical studies have demonstrated that 
        ;;   B-RAFV600E mutation predicts a dependency on the mitogen activated 
        ;;   protein kinase (MAPK) signaling cascade in melanoma 
        ;;   [1–5] —an observation that has been validated by the success of 
        ;;   RAF and MEK inhibitors in clinical trials 6–8.")
        ;; and perhaps others, the sweep to the end routine returns a string
        ;; as the value of end-pos, e.g. "6-8. "
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
               (save-ns-example start-pos end-pos edges)))
           (t
            ;; This may be overkill, especially for punctuation,
            ;; but it may also be more informative
            (setq edges (treetops-between start-pos end-pos))
            ;;(break "input edges = ~a" edges)

            ;; TO-DO -- review this code -- issues occurred when there
            ;; are multiple edges at the end of the pattern
            ;; (ambiguity) and only one of the edges satisfies a
            ;; pattern this is not done cleanly, and needs some
            ;; pair-programming
            (when *collect-ns-examples* 
              (save-ns-example start-pos end-pos edges))
            (catch :punt-on-nospace-without-resolution
              (let* ((end-edge (car (last edges)))
                     (end-cat (when (and (edge-p end-edge)
                                         (category-p (edge-category end-edge)))
                                (cat-symbol (edge-category end-edge)))))
                (or
                 (when (punctuation-final-in-ns-span? end-pos)
                   ;; n.b. only fires on colons
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
         (words (if edges
                  (effective-words-given-edges unsorted-edges start-pos end-pos)
                  (words-between start-pos end-pos))))
    
    (when final-colon?
      ;; If the span to the left of the colon is a single word then
      ;; we have nothing to do. If this is not enough of a check
      ;; then the next thing to do is to look for whether the 
      ;; non-colon punctuation parameters have values.
      (when (null (cdr words))
        (tr :single-word-followed-by-colon (car words))
        (return-from ns-pattern-dispatch t)))
    
    (when edges
      (tr :ns-pattern-includes-edges edges)
      (setq pattern (convert-mixed-pattern-edges-to-labels pattern)))
    
    (tr :segment-ns-pattern pattern)

    (unless hyphen-positions
      (when (memq :hyphen pattern)
        ;; Final hyphen isn't being recorded by the scan.
        ;; "p53- independent" in ASPP2 #65
        (setq hyphen-positions (list (chart-position-before end-pos)))))

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


(defun ns-apostrophe-check (pos-after edges)
  "Is the terminal on the position an apostrophe and did an FSA already
   handle it and the word following it to make a one of the known
   apostrophe-x edges?"
  (declare (special *categories-based-on-apostrophe*))
  (when (eq (pos-terminal pos-after)
            (punctuation-named #\'))
    (when (null (cdr edges))
      (let* ((edge (car edges))
             ;; (car edges) is null in "We used 2' deoxythymidines..."
             (label (and (edge-p edge)(edge-category edge))))
        (and (category-p label)
             (memq label *categories-based-on-apostrophe*))))))



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
  (cond ((eq pos-before next-position)
         (error "Upstream mistake in no-space routine. ~
            the position before is EQ to the position after")
         nil)
        (t

         (let ((reason (reason-to-not-span-ns pos-before next-position)))
           (tr :not-reifying-because-there-was-a-reason)
           (when reason
             (throw :punt-on-nospace-without-resolution reason)))

         (unless *big-mechanism*
           (unless (fboundp 'reify-spelled-name)
             ;; It's in the grammar module for names
             (throw :punt-on-nospace-without-resolution :no-reify-method)))

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
             edge)))))


(defun reify-ns-name-as-bio-entity (words pos-before pos-after)
  ;; called from reify-ns-name-and-make-edge when *big-mechanism*
  ;; flag is up. Responsible for returning the category to use,
  ;; the rule, and the referent so that the caller can make an edge
  (declare (special *sentence-in-core* category::bio-entity))
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
               ((punctuation? w) ;; e.g. asterix
                (throw :punt-on-nospace-without-resolution
                  :single-character-punctuation))
               (t (push-debug `(,w))
                  (when nil
                    ;; probably no longer need this warning
                    (format t "~&^^^^^^ Known word ~s, but no associated rule. ~
                              Probably a part of a polyword, now defining it ~
                              as a bio-entity~%  in ~s~%"
                            w (sentence-string *sentence-in-core*)))
                  (values category::bio-entity
                          'reify-ns-name-as-bio-entity
                          (find-or-make-individual 'bio-entity :name w))))))))


      (t ;; by default make a bio-entity
       ;; Open-code key part of handle-unknown-word-as-bio-entity,
       ;; which does -not- reify this case in a rule.
       (let* ((word (resolve/make words-string))
	      (i (find-or-make-individual 'bio-entity :name word)))     
	 (values category::bio-entity
		 'reify-ns-name-as-bio-entity
		 i))))))


(defun reason-to-not-span-ns (start-pos end-pos)
  (let* ((edges (treetops-between start-pos end-pos))
         (form-labels (loop for e in edges
                            when (edge-p e)
                            collect (or (edge-form e)
                                        ;; the only cases this happens seem to be
                                        ;;(PRONOUN/FEMALE APOSTROPHE-S SINGLE-QUOTE HYPHEN PERCENT-SIGN FORWARD-SLASH)
                                        (let* ((ec (edge-category e))
                                               (symbol
                                                (if (word-p ec)
                                                    (word-symbol ec)
                                                    (intern (string-upcase (pname ec))
                                                            (find-package :sparser)))))
                                          ;;(pushnew symbol *no-form-cats*)
                                          symbol))))
                                          
         (form-symbols (loop for l in form-labels
                             when l collect (if (category-p l)(cat-symbol l) l))))
    (loop for symbol in form-symbols
          thereis (or (memq symbol '(category::pronoun category::modal
                                     PRONOUN/FEMALE APOSTROPHE-S WORD::SINGLE-QUOTE))))))
         
   
    


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

(defun save-ns-example (start-pos end-pos edges)
  (declare (special *sentence-in-core* edges))
  (let* ((ns-sentence (sentence-string *sentence-in-core*))
         (nsitem (actual-characters-of-word start-pos end-pos nil))
         (real-edges (remove-non-edges edges)) 
         (ns-edge-pattern (characterize-words-in-region start-pos end-pos real-edges)))
    (declare (special ns-item ns-edge-pattern real-edges))
    ;;(when (or (search "-" nsitem) (search "/" nsitem))
    ;;(lsp-break "collect-no-space-sequence-into-word")
    (setq ns-edge-pattern 
          (edge-pattern-to-cats ns-edge-pattern))
    (push (list 
           ns-edge-pattern 
           nsitem
           ns-sentence)
          *collect-ns-examples*)
    (let* ((edge-strings (mapcar #'get-string-from-edge-word edges))
           (ns-patt-edges (interleave-edge-pattern edge-strings ns-edge-pattern))
           (ns-split (ns-punct-pattern-split ns-patt-edges))
           (ns-undef-patt (get-undefined-ns-patterns ns-split)))
      (declare (special edge-strings ns-patt-edges ns-split ns-undef-patt))
;      (lsp-break "save-ns post 2nd let")
      (loop for i in ns-undef-patt
            do (pushnew i *ns-sub-patterns* :test #'equal))))
  )

(defun edge-pattern-to-cats (ns-edge-pattern)
  (convert-mixed-pattern-edges-to-labels ns-edge-pattern)
  #+ignore(loop for i in ns-edge-pattern
        collect  
                  (if (edge-p i)
                    (list  (simple-label (edge-form i))
                           (simple-label (edge-category i)))
                    i)))

(defun interleave-edge-pattern (edges pattern)
  "Given a list of edges and patterns, interleave them with the patterns first"
  (when (eq (length edges) (length pattern))
    (loop for p in pattern
            as n from 0
            append (list p (nth n edges)) into edge-pats
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


;;; --------------------------------------------------------
;;; Code to explore the results of the NS example collection
;;; --------------------------------------------------------

(defun ns-examples-file (&optional (filename "~/projects/cwc-integ/sparser/Sparser/code/s/tools/ns-examples.lisp"))
  "Save the collected ns examples to a file"
  (with-open-file (stream filename :direction :output :if-exists :supersede)
    (pprint *collect-ns-examples* stream))
  filename)

;; slightly more explanatory function name
(defun ns-examples->file (&optional (filename "~/projects/cwc-integ/sparser/Sparser/code/s/tools/ns-examples.lisp"))
  (ns-examples-file filename))

(defun clean-up-ns-collection ()
  "Just some clean up to group things by pattern and rule once we've
collected a set of ns-examples"
  ;; results are of the form:

  ;; (((ADJECTIVE IN-VITRO) :HYPHEN :LOWER)
  ;; ((DO-RELATION-BETWEEN-FIRST-AND-SECOND PHOSPHORYLATE VP+ED) \"in vitro–phosphorylated\")
  ;; ((DO-RELATION-BETWEEN-FIRST-AND-SECOND LABELE VP+ED) \"in vitro–labeled\")
  ;; ((DO-RELATION-BETWEEN-FIRST-AND-SECOND TRANSLATE VP+ED) \"in vitro–translated\"))

  ;; which is (pattern of words/edges) followed by sets of ((rule to
  ;; form edge and edge-form and edge-category) \"actual text
  ;; examples\") for each type of (rule edge set) that exists
  (loop for i in (group-by (remove nil *collect-ns-examples*) #'caar)
        when (equal "==>" (second (first (second i)))) 
        ;; cases with no rules get dropped at this point e.g., >20% -- will need to catch these later
        collect 
        (let ((grouped (group-by (second i) #'third #'cdar)))
          (cons (car i)
                (loop for g in grouped
                      collect 
                      (cons (car g)
                            (remove-duplicates (mapcar #'car  (second g)) :test #'equal)))))))

(defun ns-pattern-rules (cleaned-ns)
  "Given the output of clean-up-ns-collection, just pull out the patterns and unique rules"
  (loop for i in cleaned-ns
        collect (list (car i) 
                      (remove-duplicates (loop for j in (cdr i)
                            collect (caar j))))))

(defun ns-multiple-rule-patterns (rule-patterns)
  "Given the output of ns-pattern-rules, return those patterns that have multiple rules"
  (loop for rp in rule-patterns
        when (second (second rp)) ;; checking there is more than one rule
        collect rp
          #+ignore (let ((psr-rules 0))
                  (cons (car rp)
                         (loop for r in (second rp)
                              do (if (eq (symbol-package r) (find-package 'rule))
                                     (incf psr-rules)
                                     collect r))
                         (format t "psr rules: ~s" rules-psr)))
          ))

#+ignore
(length (setq *ns-multiple* (ns-multiple-rule-patterns (setq *rule-patterns* (ns-pattern-rules (setq *cleaned-ns* (clean-up-ns-collection)))))))

(defparameter *ns-unknown-sublist* nil)
(defun ns-unknown-sublist (&optional (ns-examples *collect-ns-examples*))
  (length (setq *ns-unknown-sublist*
         (loop for n in ns-examples
                ; do (print (car (third n)))
                ; do (print (caar n))
               unless
               (or (not (stringp (second (car n))))
                   (and (consp (third n))
                        (or (memq (car (third n)) 
                                  (list
                                   'DO-RELATION-BETWEEN-FIRST-AND-SECOND
                                    'MAKE-PROTEIN-COLLECTION
                                    'MAKE-BIO-COMPLEX
                                    'MAKE-AMINO-COLLECTION
                                    'COMPOSE-SALIENT-HYPHENATED-LITERALS
                                    'RESOLVE-TRAILING-STRANDED-HYPHEN
                                    'RESOLVE-INITIAL-STRANDED-HYPHEN
                                    'MAKE-EDGE-OVER-MUTATED-PROTEIN
                                    'RESOLVE-PROTEIN-PREFIX
                                    :REIFY-RESIDUE
                                    :REIFY-POINT-MUTATION-AND-MAKE-EDGE
                                    'PACKAGE-APPROXIMATION-NUMBER
                                    'MAKE-NS-PAIR ;; these are mostly not of interest, but may have some false-negs
                                    :NUMBER-FSA
                                    ))
                            (when (symbol-package (car (third n)))
                              (equal "RULE" (package-name (symbol-package (car (third n))))))
                            ))
                   (member (caaar n) 
                           (list :ASTERISK :GREEK_LUNATE_EPSILON_SYMBOL :HYPHEN :TILDA :PLUS-SIGN :EQUAL-SIGN
                                 :GREATER-THAN_OR_SLANTED_EQUAL_TO :GREATER-THAN_OR_EQUAL_TO :GREATER-THAN 
                                 :LESS-THAN_OR_SLANTED_EQUAL_TO :LESS-THAN_OR_EQUAL_TO :LESS-THAN
                                 :SHARP-SIGN :DIGITS :NUMBER :VERTICAL-BAR :UNDER-BAR :AND-SIGN 
                                 :LEFT-POINTING-DOUBLE-ANGLE-QUOTATION_MARK
                                 '(COMMON-NOUN |HTTP://|))
                         :test #'equal) 
                   ;; removed :SINGLE-DIGIT because there are several things of interest starting with 5α
                   (and (eq (length (caar n)) 1)
                        (memq (caaar n) '(:LOWER :SINGLE-CAP :SINGLE-LOWER :LITTLE-P)))
                   (and (eq (length (caar n)) 2)
                        (or (and (memq (second (caar n)) '(:HYPHEN :COLON))
                                 (memq (first (caar n)) '(:LOWER :SINGLE-LOWER :SINGLE-CAP
                                                         :SINGLE-DIGIT :PROTEIN :FORWARD-SLASH :HYPHEN)))
                            (and (eq (first (caar n)) :DOUBLE-QUOTE)
                                 (memq (second (caar n)) '(:LOWER :SINGLE-DIGIT :PROTEIN :CELLULAR-PROCESS 
                                                          :ACTIVATION-LOOP :CAPITALIZED))))))
               collect (list (caar n) (second (car n)) (car (third n)))))))

(defun ns-unknown-sublist->file (&optional (filename 
                                            "~/projects/cwc-integ/sparser/Sparser/code/s/tools/ns-unknown-sublist.lisp"))
  "Save the collected ns examples to a file"
  (with-open-file (stream filename :direction :output :if-exists :supersede)
    (pprint *ns-unknown-sublist* stream))
  filename)

(defparameter *ns-unknown-items* nil)
(defun ns-unknown-items (&optional (ns-unknown-sublist *ns-unknown-sublist*))
  (length (setq *ns-unknown-items*
                (loop for n in ns-unknown-sublist
                        append (ppcre:split "[/:]" (second n))))))

(defparameter *rd-ns* nil)
(defun ns-unknown-rd-items (&optional (ns-unknown-items *ns-unknown-items*))
  (length (setq *rd-ns*
                (sort
                 (remove-duplicates
                  (loop for x in ns-unknown-items
                         ; do (print (length x))
                          unless
                          (or (search " " x)
                              (ppcre:scan "^[-~+#0-9_&«]" x)
                              (search "—" x) 
                              ;; we need to not make em dashes
                              ;; equivalent to hyphens before no-space
                              ;; but that hasn't been done yet
                              (> 2 (length x))) ;; apparently > is actually ≥
                          collect x)
            :test #'equal) #'string<))))

(defun ns-unknown-rd-items->file (&optional (filename 
                                            "~/projects/cwc-integ/sparser/Sparser/code/s/tools/ns-unknown-rd-items.lisp"))
  "Save the collected ns examples to a file"
  (with-open-file (stream filename :direction :output :if-exists :supersede)
    (pprint *rd-ns* stream))
  filename)
          
(defparameter *prefixes* nil)        
(defun ns-prefixes (&optional (rd-ns *rd-ns*))
  (length (setq *prefixes* 
                (remove-duplicates 
                 (loop for x in *rd-ns* 
                       when (and (search "-" x) 
                                 (not (resolve (subseq x 0 (search "-" x))))) 
                       collect (subseq x 0 (search "-" x)))
                 :test #'equal))))

#+ignore
(lsetq *ns-list*                       
   append  (ppcre:split "[/:]" (second (car n))))
#+ignore
(lsetq *rd-ns*
     (sort
        (remove-duplicates
          (loop for x in *ns-list*
               unless
                  (or (search " " x)
                  (loop for c in '("-" "~" "+" "=" "≥" ">" "<" "≤" "#" "%" "*" "&" "°" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0") thereis (eq 0 (search c x))))
               collect x)
            :test #'equal) #'string<))
#+ignore
(lsetq *prefixes* (remove-duplicates (loop for x in *rd-ns* when (and (search "-" x) (not (resolve (subseq x 0 (search "-" x))))) collect (subseq x 0 (search "-" x))) :test #'equal))

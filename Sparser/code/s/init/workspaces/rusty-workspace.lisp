;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "rusty-workspace"
;;;  Module: "init/workspaces/
;;; version: May 2015

;;remove (bio-traps) and (bf-on) in (rusty) -- no longer defined
;; 7/19/2015 Code to load all the sentences in the 1000 articles and search for patterns like no-space 
;;  words with dashes (or slashes)
;; add new utility methods for understanding non-card producing articles
;; ras2-proteins-in-sentences  show-sentences r2-proteins-in (n)


(in-package :sparser)


(defun rusty()
  (setup-bio) ;; load the bio model etc.
  ;;(bio-traps) ;; turn off forest level parsing and this presently problematic parameter

  (bio-setting)
  (setq *kind-of-chart-processing-to-do* :successive-sweeps)
  (what-to-do-with-unknown-words :capitalization-digits-&-morphology/or-primed)

  ;;(load "~/sparser/Sparser/code/s/grammar/rules/words/one-offs/comlex-def-forms.lisp")
  ;;(setq *trace-treetops-sweep* t)

  ;;(ddm-ed "drivers/forest/sweep.lisp")
  ;;(ddm-ed "drivers/chart/psp/pts5.lisp")
  ;;(ddm-ed "grammar/rules/syntax/categories.lisp")
  ;;(ddm-ed "drivers/chart/psp/chunker.lisp")
  ;;(ddm-ed "drivers/forest/new-forest-protocol.lisp")
  ;;(ddm-ed "drivers/forest/sweep.lisp")
  (ddm-ed "drivers/chart/psp/no-brackets-protocol.lisp")
  ;;(ddm-ed "grammar/rules/syntax/syntactic-rules.lisp")
  ;;(ddm-ed "objects/traces/psp1.lisp")
  ;;(ddm-ed "objects/traces/DA.lisp")
  (ddm-ed "objects/traces/treetops.lisp")
  (ddm-ed "grammar/model/sl/biology/verbs1.lisp")
  (ddm-ed "grammar/model/sl/biology/terms1.lisp")
  (ddm-ed "grammar/model/sl/biology/taxonomy.lisp")
  ;;(ddm-ed "grammar/model/sl/biology/drugs.lisp")
  ;;(ddm-ed "init/workspaces/Biology-workspace.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
 
  ;;  (setq *trace-network-flow* t)
  ;;(bf-on)
  (ddm-load "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/erk-translocation.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/aspp2-whole.lisp")
  (ddm-load "grammar/model/sl/biology/cureRAS/load-test-sents.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/load-test-sents.lisp")

  (trace-lexicon-unpacking) 
  (trace-morphology)
  ;;(setq *do-anaphora* nil)
  (setq *note-text-relations* nil)
)

(defun pos (n)(chart-array-cell n))
(defun np (l &optional (stream t))
  (loop for ll in l do (print ll stream)))
(defun ht-to-alist (ht)
  (let
      ((alist nil))
    (maphash #'(lambda(l h) (push (list l h) alist)) ht)
    (sort alist #'(lambda (x y)(string< (format nil "~s" x)(format nil "~s" y))) :key #'car)))

(defun show-brackets (end)
  (np 
   (loop for i from 1 to end
	 collect
	 (list
	  i
	  (ev-boundary (pos-ends-here (pos (- i 1))))
	  (ev-boundary (pos-starts-here (pos i)))
	  (pos-terminal (pos i))
	  )))
  )

#+ignore ;; now just use CCL file search
(defun caller-tree (fn &optional (levels 3) seen)
  (let
      ((callers
	(loop for xref in (get-relation :direct-calls :wild  fn)
	      collect
	      (xref-entry-name xref))))
    (cons
     fn
     (if (> levels 0)
	 (loop for caller in callers 
	       collect
	       (if (memq caller seen)
		   (list caller "...")
		 (progn
		   (setq seen (cons caller seen))
		   (caller-tree caller (- levels 1) seen)))
	       )))
    )
  )

#+ignore ;; for cross-ref -- now just use search through files
(defun call-tree (fn &optional (levels 3) seen)
  (let
      ((called
	(loop for xref in (get-relation :direct-calls  fn :wild)
	      collect
	      (xref-entry-name xref))))
    (cons
     fn
     (if (> levels 0)
	 (loop for callee in called 
	       collect
	       (if (memq callee seen)
		   (list callee "...")
		 (progn
		   (setq seen (cons callee seen))
		   (call-tree callee (- levels 1) seen))))
       )
     )
    )
  )

#||
*bracketing-progress* has a list of bracket positions
||#

#||
(analysis-core...)
(chart-based-analysis)
(lookup-the-kind-of-chart-processing-to-do)
(inititate-top-edges-protocol)
(check-word-level-fsa-trigger ss p0)
(check-PNF-and-continue word position-before)
(continuation-after-pnf-returned-nil word position-before)
(introduce-right-side-brackets
        word (chart-position-after position-before))
   (introduce-trailing-brackets word position-after)
   (check-for-]-from-prior-word position-after word)
      (check-for-[-from-prior-word position-after prior-word))
          ([-on-position-because-of-word? position-after prior-word)
          (adjudicate-new-open-bracket [ position-after)
          (scan-next-pos position-after)            ;;; Main line of the control network

            ;; Called from Scan-and-assess
             ;; Intended to be the only means of advancing through the chart.
             ;; Always working at the chart's right-fringe.
             ;; Does its own calls to Add-terminal to keep the chart always
             ;;  full one position out.
          (scan-next-position)     --->> scan3.lisp
            (add-terminal-to-chart)
            (continue-scan-next-pos position))
                (introduce-leading-brackets word position)     ---------> place-brackets1.lisp
                       (place-boundary/ends-before label position-before ends-before) ;; update the ending bracket at this position
                            (place-boundary/begins-before label position-before begins-before))
                       (place-boundary/begins-before label position-before begins-before));; update the endingbeginning bracket at this position
                  ;;  has trace "[scan] introduce-leading-brackets \"~A\""
                (check-for-]-from-word-after word position)))



||#

(defun all-words ()
  (let
      ((words nil))
    (do-symbols (s *word-package*) (push s words))
    words))

(defun wrs (w)
  (let
      ((wrs
        (cond
         ((symbolp w)
          (and (boundp w) (word-p (eval w))
               (word-rule-set (eval w))))
         ((word-p w)
          (word-rule-set w)))))
    (and
     wrs
     (rule-set-p wrs)
     wrs)))


(defun all-rule-words ()
  (loop for w in (all-words)
    when 
    (wrs w)
    collect w))

(defun rls (w)
  (and (wrs w)
       (or
        (rs-right-looking-ids (wrs w))
        (rs-fsa (wrs w)))))

#+ignore
(defun simple-parse (str)
  (setq chart (create-lexical-level-chart str)) ;; includes running FSA and other rewrite rules over the entire chart
  (setq bchart (bracketize chart)) ;; this is a chart with all the right bracket structures inserted
  (setq parsed-bracket-chart (parse-segments bchart))
  (setq forest-chart (process-forest parsed-bracket-chart)))

(defun all-sparser-functions ()
  (let*
      ((sfns (all-package-fns :sparser))
       (clfns (all-package-fns :cl))
       (clufns (all-package-fns :cl-user)))
    (loop for s in sfns
      unless (or (memq s clfns)(memq s clufns))
      collect s)))

(defun all-package-fns (packname)
  (let* ((pack (find-package packname))
         (fns nil))
    (do-symbols (s pack)
      (when (fboundp s) (push s fns)))
    fns))
      
(defun mark-examples ()
  (load "~/r3/code/integration/cycorp/aspp2-examples"))

#+:sbcl
(defvar *profns*)

#+:sbcl
(defun timings(&optional (n 1))
  (setq *profns*
        '( all-subs-link
          dli-ref-cat
          interesting-super?
          make-hash-table
          make-individual
          ;;BINDING-BODY
          IS-IN-COMLEX? MAKE-AND-STORE-NOMINAL-INSTANCE NEXT-ID TR/EXPR
          MAKE-BACKING-CLOS-CLASS KCONS NEXT-TREETOP/RIGHTWARD COMPOSE DEALLOCATE-KONS
          ADJACENT-EDGES? VP-CATEGORY? CLEANOUT-EDGE-VECTOR-ARRAY CLEAN-BINDS-FIELD
          STEM-FORM ONE-OFF-SPECIALIZATION SUBJECT-VARIABLE MAKE-SENTENCE-LAYOUT
          MAKE-SENTENCE-CONTAINER VERB-CATEGORY? POS-EDGE-STARTS-AT
          UNAMBIGUOUS-COMLEX-PRIMED-DECODER PUSH-BINDING-ONTO-INSTANCES-FIELD
          INITIALIZE-EDGE-RESOURCE CREATE-SHADOW ADD-TENSE/ASPECT PLIST-FOR GET-TAG-FOR
          RELEASE-EDGE-TO-RESOURCE ALPHABETIZE FRESH-CONTENTS MAKE-UNINDEXED-INDIVIDUAL
          CLEAR FORM-IDS/RIGHTWARD WHERE-TT-ENDS  NG-HEAD?
          ALLOCATE-A-RASHER-OF-INDIVIDUALS INITIALIZE-DOCUMENT-SET TOP-EDGE-STARTING-AT
          STRING-APPEND FORM-MULTIPLIER ACCUMULATE-SPACES CHARACTER-ENTRY
          SET-SENTENCE-STATUS RIGHT-TREETOP-AT/EDGE CLEAN-TREETOPS MULTIPLY-LABELS
          CHART-POSITION-AFTER ASSIGN-BRACKET/EXPR  POS-CAPITALIZATION
          CAPITALIZED-VERSION START-SENTENCE NO-SPACE-BEFORE-WORD? SUBCAT-RESTRICTION
          WORD-IS-SPANNED?  KNIT-EDGE-INTO-POSITIONS GET-NOMINAL-INSTANCE
          ANNOTATE-INDIVIDUAL WORD-IS-BRACKET-PUNCT CATEGORY-IDS GET-SENTENCE-CORPUS
          SCAN-PATTERN-STARTING-PAIR-1 DATE-AS-FORMATTED-STRING DEALLOCATE-CONS-TREE
          STOP-TIMER INITIALIZE-STATE-OF-MORPHOLOGY-FSA ASSIGN-NOUN-VERB-BRACKETS
          ESTABLISH-CHARACTER-SOURCE/STRING RETRIEVE-SINGLE-RULE-FROM-INDIVIDUAL
          MARK-OPEN-PAREN PACKAGE-APPROXIMATION-NUMBER NEXT-TREETOP/LEFTWARD
          CHECK-IMPACT-ON-QUIESCENCE-POINTER MAKE-CFR RULE-SET-FOR CATALOG/WORD
          PUSH-POST-MVS-VERBS THERE-ARE-CONJUNCTIONS?
          NOTE-PERMANENCE-OF-CATEGORYS-INDIVIDUALS TOKENIZER-ENTRY OBJECT-VARIABLE
          KNOWN-IN-CONTEXT SETUP-MULTIPLE-INITIAL-EDGES I/R/S-MAKE-THE-RULE
          POLYWORD-DOESNT-NEED-ROLLOUT CATEGORY-NAMED IDENTIFY-SALIENT-TEXT-STRUCTURE
          CHECK-RIGHT-FOR-FORM-RULE TERMINALS-IN-SEGMENT SEGMENT-LENGTH TAIL-CONS
          EDGE-OF-DOTTED-INTERMEDIARY RESOURCE-STORE COMPATIBLE-FORM
          INDEFINITE-DETERMINER? TERMINALS-IN-SEGMENT/ONE-STRING
          RUN-REAL-PER-ARTICLE-INITIALIZATIONS MULTIPLY-THROUGH-POSITIONS
          MAKE-HYPHENATED-STRUCTURE POPULATE-WORD-LOOKUP-BUFFER/STRING
          SUPER-CATEGORIES-OF-LIST-TYPE TAKES-PREPOSITION? INITIALIZE-SENTENCES
          NEW-SECTION-IN-ARTICLE FIND-VARIABLE-IN-CATEGORY NP-OVER-THAT?
          GENERALIZE-SEGMENT-EDGE-FORM-IF-NEEDED  DEFINITE-DETERMINER? SUBCAT-VARIABLE
          TREETOPS-BETWEEN VALUE/VAR CHART-POSITION DEALLOCATE-BINDING LOOKUP/CFR
          RIGHT-TREETOP-AT CHUNK-EV-LIST INITIALIZE-FIELDS/BINDING
          WORD-THAT-FITS-POSITION GET-TAGS-CELL ALLOCATE-NEXT-INSTANCE CAT-NAME
          POSITION-BEFORE-SEGMENT-FINAL-MULTI-WORD-EDGE
          ASSIGN-MORPH-BRACKETS-TO-UNKNOWN-WORD MULTIPLY-IDS
          PUSH-BINDING-ONTO-BINDS-FIELD HIGHEST-EDGE CHECK-SEGMENT-FINISHED-HOOK
          TRIE-FOR-1ST-ITEM GET-SCLASS CATEGORY-P RIGHT-TREETOP-EDGE-AT ASSQ
          LEFT-TREETOP-AT/EDGE PUSH-BINDING-ONTO-BIND-IN-FIELD ADJG-HEAD?
          KNIT-INTO-PSG-TABLES NG-COMPATIBLE? INITIALIZE-EDGE EV-TOP-NODE 
          SUBCAT-PATTERNS HAS-TAG? SF-ACTION/SPANNED-SEGMENT1
          CHECK-FOR-COMPLETION-ACTIONS/WORD LAYOUT LEFT-EDGE-FOR-REFERENT
          CHART-POSITION-BEFORE WORD-RULES THE-NEXT-POSITION-TO-SCAN
          WORD-NEVER-IN-NS-SEQUENCE CLEAN-BOUND-IN-FIELD MODIFIER+NOUN
          NOT-ALL-SAME-CHARACTER-TYPE PUNCTUATION? SUCCESSIVE-TREETOPS VAR-NAME
          PRONOUN-CATEGORY? VG-HEAD? MEMQ PUSH-DEBUG IS-PASSIVE?
          STARTING-EDGE-JUST-UNDER ARTICLES WHEN-BINDING-HOOK SUBCAT-LABEL
          INDIV-TYPEP RIGHT-EDGE-FOR-REFERENT DOTTED-RULE
          CHECK-RULE-RESULT-FORM-AGAINST-CHUNK MAYBE-SUPPRESS-DAUGHTERS-DH-ENTRY
          INITIAL-PATTERN-TRANSITION? SEGMENT-FINISHED MAKE-PP REFERENT-FROM-RULE
          MAKE-CATEGORY-INDEXED-INDIVIDUAL NEXT-EDGE-FROM-RESOURCE RECLAIM-ALL-INSTANCES
          DO-PUNCTUATION SEGMENT-COVERAGE CAPITALIZATION-FSA COMPATIBLE-EDGE-FORM?
          ALL-TTS |POSITION#| TREETOPS-IN-CURRENT-SEGMENT ALLOCATE-SENTENCE
          SIMPLE-EOS-CHECK CONJUNCTIONS PUSH-PREPOSITION 
          DECODE-CATEGORY-SPECIFIC-BINDING-INSTR-EXPS DO-JUST-TERMINAL-EDGES
          POSITION-PRECEDES VALID-RULE? JUST-COVER-SEGMENT DO-SINGLE/LEFT
          PERMANENT-INDIVIDUAL? COLLECT-TRIPLES-IN-SEGMENT ITYPEP COMPLETE-EDGE/HUGIN 
          COMPLETE FIND-SELF-NODE  INTERPRET-PP-ADJUNCT-TO-NP INSTANCE-COUNTER
          CONVERT-REFERENT-TO-INDIVIDUAL SUPER-CATEGORIES-OF1 LOOKUP-WORD-SYMBOL
          FORM-RULE-COMPLETION LOOK-FOR-DA-PATTERN SET-STATUS SF-ACTION/SPANNED-SEGMENT
          DECODE-VALUE-FOR-VARIABLE ALLOCATE-BINDING CHECK-VARIANTS-FOR-WORD-FSAS
          DO-POLYWORD-FSA DOC-SET COMPATIBLE-EDGE? DISPATCH-ON-UNARY-REF-ACTIONS
          FITS-CRITERIA-FOR-SIMPLE-INDIVIDUALS MAKE-EDGE-VECTOR-ARRAY
          CHECK-KNOWN-WORD-FOR-WORD-FSAS PARSE-AT-THE-SEGMENT-LEVEL
          ADD-TERMINAL-TO-CHART RULE-LHS-FORM   ALLOCATE-A-RASHER-OF-CONS-CELLS
          CHUNK-FORMS VALUE-OF SCHR-RELATION MARCH-BACK-FROM-THE-RIGHT/SEGMENT
          MAKE-A-PERMANENT-INDIVIDUAL FIRST-WORD-IS-BRACKET-PUNCT PUSH-SUBCAT
          DECODE-VALUE-FOR-PRIMITIVE-V/R RESET-CATEGORY-COUNT NOUN-NOUN-COMPOUND
          MAYBE-COPY-INDIVIDUAL I-TYPE-OF USE-SPECIALIZED-NP-PARSER?
          ESTABLISH-RULE-SET-FOR ANALYZE-SEGMENT-LAYOUT DETERMINER?
          COLLECT-NO-SPACE-SEGMENT-INTO-WORD LITERAL-EDGE? MULT/IDS-ON-FORM-LABEL
          REFERENT-FROM-UNARY-RULE INITIALIZE-RESOURCE ASSIMILATE-SUBCAT
          SUBCATEGORIZED-VARIABLE  INCLUDES-STATE  NUMBER-OF-TERMINALS-BETWEEN
          POS-EDGE-ENDS-AT GET-SUBCATEGORIZATION CHUNK-START-POS
          FILL-WHITESPACE-AND-LOOP  DEFINE-OR-FIND-INDIVIDUAL MAKE-BINDING PARENTHESES
          SYNTACTIC-RULE? FILL-WHITESPACE NEXT-INDEXICAL-NAME
          KNOWN-PRETERMINALS/CHECK-CAPS KNOWN-SUBCAT-PATTERN ASSIMILATE-SUBJECT
          LOOSE-NPS ADJG-COMPATIBLE? EV-NUMBER-OF-EDGES EDGE-BETWEEN PUSH-ONTO-CAT-PLIST
          TEST-SUBCAT-RULE MAKE-INDIVIDUAL FIND-HEAD-WORD EDGE-ENDING-AT
          CONTINUE-FROM-SDM/ANALYZE-SEGMENT GEN-CFR-SYMBOL DELIMIT-NEXT-CHUNK
          MAKE-RULE-SET STARTS-AT-POS LONG-TERM-IFY/EDGE-REFERENTS/AT FUNCTION-WORD?
          EDGE-FOR-REFERENT PUSH-LOOSE-NP FIND-OR-MAKE-CATEGORY-OBJECT ADJACENT-TTS
          SUPER-CATEGORY-HAS-VARIABLE-NAMED INITIALIZE-POSITION NEXT-TERMINAL
          CAPITAL-LETTER EV-EDGES KNOWN-SUBCATEGORIZATION? CARRY-OUT-ACTIONS
          COMPATIBLE-HEAD? MAKE-EDGE-OVER-LONG-SPAN PARSE-FROM-TO/TOPMOST REF/HEAD
          INDICATE-HEAD AFTER-ACTION-ON-SEGMENTS INITIALIZE-FIELDS/INDIVIDUAL
          WORD-TRAVERSAL-HOOK INITIATES-POLYWORD1
          MULT/RIGHT-CATEGORY-LEFT-FORM_CATEGORY-ID INITIALIZE-SEGMENT-STATE-VARIABLES 
          CALL-COMPOSE INDEX/BINDING EDGE-SPANNING PARSING-STATUS
          ARE-ANY-LETTERS-CAPITALIZED EV-EDGE-VECTOR DO-NO-SPACE-COLLECTION
          CATEGORY-MULTIPLIER MAKE-COMPLETED-BINARY-EDGE SENTENCE TREETOPS-IN-SEGMENT
          FIND/BINDING VG-COMPATIBLE? MULT/FORM-LABEL-LOOKING-LEFT
          REFERENTIAL-CATEGORY-P MULTIPLY-WORDS/CASE-FROM-POSITION RULE-FORMS
          BEST-TREETOP-RULE SUCESSIVE-SWEEPS? BIND-VARIABLE INTERP-BIG-MECH-CHUNK
          MAKE/BINDING TRY-COMBINATION-TO-THE-LEFT/BOUNDED FIND/INDIVIDUAL/KEY/HASH
          EXTEND-MC-PW REMAINING-FORMS PTS CATEGORY-IDS/RIGHTWARD
          DO-PUNCTUATION-FROM-CONTINUE COVERAGE-OVER-REGION NG-START?
          LOOP-THROUGH-SEGMENT-FOR-SOME-EDGES  EDGE-OVER-SEGMENT COMPATIBLE-HEADS
          PRETERMINALS/WORD TRY-MULT/LEFT-CATEGORY-RIGHT-FORM_CATEGORY-ID
          REST-OF-SCAN-NEXT-POSITION INITIALIZE-EDGE-VECTOR DEFINE-CFR KRECLAIM
          DECODE/CHECK-VALUE CHECK-FOR-COMPLETION-ACTIONS/CATEGORY
          MAKE-COMPLETED-UNARY-EDGE SUPERCATEGORY-OF-CONSTRUCTED-CATEGORY
          RESOURCE-CLASS-NAME MULT/CHECK-FORM-OPTIONS DECODE-VALUE-FOR-VAR/LIST
          FINISH-TOKEN CALL-REDISTRIBUTE-IF-APPROPRIATE WALK-DOWN-RIGHT-HEADLINE
          DO-EDGE-LEVEL-FSAS ASSESS-EDGE-LABEL MULTIPLY-CATEGORIES ALL-INSTANCES
          POS-EV-ENDS-AT MULTIPLY-THROUGH-TERMS-OF-RHS RULE-FOR-EDGE-PAIR
          CATEGORY-IDS/LEFTWARD WORD-NAMED REPLACE-FROM-MAPPING
          MULT/FORM-LABEL-LOOKING-RIGHT PUSH-ONTO-PLIST SCAN-PATTERN-STARTING-PAIR
          INSTALL-PRETERMINAL-EDGE PARSE-CHUNK-INTERIOR CATALOG/CFR FIND-VERB
          INDICATE-ARG CHECK-RULE-FORM CONTINUE-TOKEN MAKE-EDGE-OVER-LITERAL
          SEGMENT-RULE-CHECK CANONICAL-REF-VAR FORM-IDS/LEFTWARD FIND-PREPOSITION
          ENDS-AT-POS SEARCH-WORD-FOR-FSAS END-OF-SEGMENT-MEASUREMENTS
          NOTE-GRAMMAR-MODULE CONTENTS BINDING-VARIABLE DEALLOCATED-BINDING?
          FIND/INDIVIDUAL INSTALL-TERMINAL-EDGES POLYWORD-CHECK RUN-TOKEN-FSA
          EXECUTE-TRIPLE CHUNK-HEAD? NEXT-TOKEN SCAN-NEXT-POSITION CHECK-CAPS-VARIATIONS
          WORDS-TO-COUNT STARTING-FORMS GET-RESOURCE DO-EXPLICIT-RULE-COMPLETION
          WORD-CAPITALIZATION SET-USED-BY ZERO-CATEGORY-INDEX BIND-VARIABLE/EXPR
          ONE-WORD-LONG? DECODE-BRACKET DEREFERENCE-SHADOW-INDIVIDUAL REDISTRIBUTE
          CHUNK-END-POS RESOLVE-STRING-TO-WORD/MAKE CLEANUP-CALL-TO-CAPS-FSA
          ANNOTATE-REALIZATION/BASE-CASE FIND-VARIABLE-FOR-CATEGORY DO-FSA-FIELD
          COMPLETE-ANY-SINGLE-TERM-EDGES CHARACTERIZE-WORD-TYPE PREPOSITIONS
          PRETERMINALS-FOR-KNOWN LOSING-COMPETITION? INDIV-PLIST
          SUBSUMPTION-CHECK/COMPLETE DISPATCH-ON-RULE-FIELD-KEYS FIND-CONSISTENT-EDGES 
          ADJOIN-PP-TO-VG SPAN-ENDING-AT INDIVIDUALS-OF-THIS-CATEGORY-ARE-PERMANENT
          MULTIPLY-LABEL-AND-WORD/CASE-FROM-POS TRAVERSAL-ACTION
          ANNOTATE-REALIZATION-PAIR INDIVIDUAL-INHERITS-TYPE? ITYPE-OF
          EXECUTE-ONE-ONE-RULE CAPITALIZED-CORRESPONDENT1 FIND-WORD
          KNIT-EDGE-INTO-POSITION CATEGORY-INHERITS-TYPE? BUMP-&-STORE-WORD
          DO-WORD-LEVEL-FSAS REIFY-IMPLICIT-INDIVIDUALS-IN-SEGMENT
          NORMAL-SEGMENT-FINISHED-OPTIONS ALLOCATE-INDIVIDUAL PNAME-FOR
          SDM/ANALYZE-SEGMENT ASSIMILATE-OBJECT CHECK-FOR-EITHER-FORM-RULE
          PUNCTUATION-NAMED SCAN-TERMINALS-LOOP CHECK-ONE-ONE BIND-CATEGORY-OF-INSTANCE
          SELECT-BEST-TRIPLE BEST-HEAD MULTIPLY-EDGES DO-ANY-CATEGORY-FSAS
          FIND-BINDINGS-VALUE-FOR-VAR PBB-SINGLE-RIGHT/LOOKING-LEFT STILL-IN-THE-CHART
          ADJACENT-SEGMENT-TTS SEGMENT-PARSED1 CAN-START? NOTE-FILE-LOCATION
          FILTER-RULES-BY-LOCAL-COMPETITION  COMPLETE-WORD/HUGIN MARCH-BACK/SEGMENT/2
          CHECK-FORM-FORM RECORD-ANY-DETERMINER REF/FUNCTION TIDY-UP-SEGMENT-GLOBALS
          CHECK-FOR-PATTERN FIRST-WORD-IN-SEGMENT CHECK-LEFT-FOR-FORM-RULE
          SUPER-CATEGORIES-OF
          ;; description lattice operations
          print-dl-indiv find-or-make-dlvv-ht-from-variable find-or-make-dlvv-from-var-val
          find-or-make-dlvv print-dl-variable+value-structure get-dli
          set-dli place-referent-in-lattice fom-lattice-description find-or-make-lattice-description
          base-and-new-bindings find-or-make-lattice-description-for-ref-category make-dli
          add-downlink add-uplink find-or-make-lattice-description-for-multi-categories
          find-or-make-dl-join find-or-make-dl-join-2 shared-supercs find-or-make-lattice-description-for-individual
          find-or-make-lattice-description-for-collection filter-bindings immediate-supers
          find-or-make-lattice-subordinate link-to-other-parents link-to-existing-children
          head-referent? same-category? survey-bindings
          ))
  (eval `(sb-profile::profile ,@*profns*))
  (setq *allow-tr-tracing* nil)
  (loop for i from 1 to n do
    (compare-to-snapshots))
  (sb-profile:report))

(defparameter *nht* (make-hash-table :test #'eql))
(defparameter *vht* (make-hash-table :test #'eq))
(defparameter *lht* (make-hash-table :test #'equal))
(defparameter *val* nil)
(defparameter *name-variables* (find-variable 'name))

(defun make-dummy-v+v()
  (let* ((v+v (allocate-v+v))
         (v (cdr (nth (unit-plist v+v) *name-variables*)))
         (value (car (nth (unit-plist v+v) *name-variables*))))
    (setf (vv-variable v+v) v)
    (setf (vv-value v+v) value)
    (setf (var-v+v-table v)
          (push `(,value . ,v+v) 
                (var-v+v-table v)))
    (tr :made-v+v v+v)
    v+v))

(defparameter *vvs* (loop for i from 1 to 20 collect (make-dummy-v+v)))
#|
(setq vk (fifth *vvs*))
(setq nk (unit-plist vk))
(setq lk (list (vv-variable vk)(vv-value vk)))
|#

(defun load-vv-tables ()
  (loop for vv in *vvs* do
    (setf (gethash (unit-plist vv) *nht*) vv)
    (setf (gethash vv *vht*) (unit-plist vv))
    (setf (gethash (cons (vv-value vv)(vv-variable vv)) *lht*) vv)
    (setf (getf *val* vv) (unit-plist vv))))

(defparameter *rr* nil)

(defun ht (n key ht)
  (loop for i from 1 to n do (setq *rr* (gethash key ht))))

(defun htnull (n key ht)
  (declare (ignore key ht))
  (loop for i from 1 to n do (setq *rr* (cons n n))))

(defun vt (n key)
  (loop for i from 1 to n do (setq *rr* (getf *val* key))))

#|? 
time (ht 10000 nk *nht*))
;Compiler warnings :
;   In an anonymous lambda form at position 16: Undeclared free variable NK
(HT 10000 NK *NHT*)
took   630 microseconds (0.000630 seconds) to run.
During that period, and with 8 available CPU cores,
     1,301 microseconds (0.001301 seconds) were spent in user mode
         9 microseconds (0.000009 seconds) were spent in system mode
NIL
? (time (ht 10000 lk *lht*))
;Compiler warnings :
;   In an anonymous lambda form at position 16: Undeclared free variable LK
(HT 10000 LK *LHT*)
took 3,371 microseconds (0.003371 seconds) to run.
During that period, and with 8 available CPU cores,
     7,330 microseconds (0.007330 seconds) were spent in user mode
        47 microseconds (0.000047 seconds) were spent in system mode
 752 bytes of memory allocated.
NIL
? (time (vt 10000 vk))
;Compiler warnings :
;   In an anonymous lambda form at position 16: Undeclared free variable VK
(VT 10000 VK)
took   913 microseconds (0.000913 seconds) to run.
During that period, and with 8 available CPU cores,
     1,897 microseconds (0.001897 seconds) were spent in user mode
        21 microseconds (0.000021 seconds) were spent in system mode
NIL


|#



(defun parse-sentence-carefully (sent-string)
  (let ((*trap-error-skip-sentence* t))
    (declare (special *trap-error-skip-sentence*))
    (let* ((length (length sent-string)))
      (unless (eql #\. (char sent-string (1- length)))
        (setq sent-string (string-append sent-string ".")))
      (establish-character-source/string sent-string)
      (if *trap-error-skip-sentence*
          (handler-case
              (analysis-core)
            (error (e)
                   (ignore-errors ;; got an error with something printing once
                    (format t "~&Error in ~s~%~a~%~%" (current-string) e))))
          (analysis-core)))))

(defun ras2-sentence (s)
  (with-total-quiet
      (when
          (parse-sentence-carefully s)
        (loop for i in (second (car *all-sentences*))
          thereis (and (individual-p i)(itypep i 'protein)(value-of 'ras2-model i))))))

(defun all-bind-prots (i)
  (loop for bb in (indiv-binds i)
    when (and
          (memq (var-name (binding-variable bb)) '(bindee direct-bindee binder))
          (value-of 'name (binding-value bb)))
    collect (binding-value bb)))

(defun all-prots (a)
  (loop for i in (second a) when (and (individual-p i)
                                      (or (itypep i 'protein)(itypep i 'protein-family))
                                      (value-of 'name i))
    collect i))

(defun bind-and-prots ()
  (loop for a in *all-sentences* 
    append
    (loop for i in (second a)
      when (and (individual-p i)(itypep i 'binding))
      collect (list i (all-bind-prots i)(all-prots a) (car a)))))

(defun bind-and-bio-entity ()
  (declare (special category::bio-entity))
  (loop for a in *all-sentences* 
    append
    (loop for i in (second a)
      when (and (individual-p i)
                (itypep i 'binding)
                (loop for ii in (all-bind-prots i) thereis (eq (itype-of ii) category::bio-entity)))
      collect (list i (all-bind-prots i)(all-prots a) (car a)))))

(defun all-bio-entities ()
  (declare (special category::bio-entity))
  (loop for a in *all-sentences* 
    append
    (loop for i in (second a)
      when (and (individual-p i)(eq (itype-of i) category::bio-entity))
      collect i)))
  
(defun test-bind-sents ()
  (declare (special bind-sents))
  (load-pmc-sent-lists)
  (loop for i from 1 to 3000 as s in bind-sents do (eval `(with-total-quiet (epp ,s)))))

(defun ras2-proteins-in-sentences (&optional (with-sentence? t))
  (loop for a in *all-sentences*
    append
    (loop for i in (second a)
      when (and (individual-p i)(itypep i 'protein) (in-ras2-model? i))
      collect
      (if
       with-sentence?
       (list i (car a))
       i))))

(defun show-sentences ()
  (np (reverse (mapcar #'first *all-sentences*))))

(defun r2-proteins-in (n)
  (run-june-articles 1 :from-article (- n 1))
  (let
      ((r2p (ras2-proteins-in-sentences)))
    (if r2p
        (np r2p)
        (show-sentences))))
      


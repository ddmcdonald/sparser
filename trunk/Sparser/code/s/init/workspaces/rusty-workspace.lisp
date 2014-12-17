;;(require "xref")
;;(in-package :xref)
;;(setq *RECORD-XREF-INFO* t)
(in-package :COMMON-LISP-USER)

#|

;;(with-xref

  (defvar script :biology) ;; For customizing what gets loaded
  (load "~/sparser/load-nlp.lisp")


;;  )

(in-package :sparser)




(defun rusty()
  (setup-bio) ;; load the bio model etc.
  (bio-traps) ;; turn off forest level parsing and this presently problematic parameter
  (setq *note-text-relations* nil)
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
  (ddm-ed "grammar/model/sl/biology/terms.lisp")
  (ddm-ed "grammar/model/sl/biology/taxonomy.lisp")
  (ddm-ed "grammar/model/sl/biology/drugs.lisp")
  (ddm-ed "init/workspaces/Biology-workspace.lisp")
  (ddm-ed "grammar/model/sl/biology/cureRAS/December-text-passages.lisp")
 
  ;;  (setq *trace-network-flow* t)
  (ql:quickload "cl-ppcre")
  (bf-on)
  (load (concatenate 'string
                   "~/sparser/Sparser/code/s/"
                   "grammar/model/sl/biology/cureRAS/December-text-passages.lisp"))
  (trace-lexicon-unpacking) 
  (trace-morphology)


)

(defun pos (n)(chart-array-cell n))
(defun np (l)(loop for ll in l do (print ll)))

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
  (setq wrs
        (cond
         ((symbolp w)
          (and (boundp w) (word-p (eval w))
               (word-rule-set (eval w))))
         ((word-p w)
          (word-rule-set w))))
  (and
   wrs
   (rule-set-p wrs)
   wrs))


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


(defun simple-parse (str)
  (setq chart (create-lexical-level-chart str)) ;; includes running FSA and other rewrite rules over the entire chart
  (setq bchart (bracketize chart)) ;; this is a chart with all the right bracket structures inserted
  (setq parsed-bracket-chart (parse-segments bchart))
  (setq forest-chart (process-forest parsed-bracket-chart)))

|#


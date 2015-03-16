Note on single-term edges


assess-edge-label (in analyzers/psp/assess/switch2.lisp)
is a switchable function according to the choice of 
parsing protocol -- :all-edges vs. :treetops -- which is
set by a call to establish-version-of-assess-edge-label.

Every edge-creating routine calls assess-edge-label at
the end of its operation to see whether the edge it
just created should be respanned by one or more single-term 
edges based on the edge's label. 

The edge creators are all in analyzers/psp/edges/.

Davidsmcbookpro:s ddm$ grep assess-edge-label *.lisp **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
grep: *.lisp: No such file or directory
drivers/inits/switches2.lisp:  (establish-version-of-assess-edge-label :all-edges)
drivers/inits/switches2.lisp:  (establish-version-of-assess-edge-label :treetops)
drivers/inits/switches2.lisp:  (establish-version-of-assess-edge-label :treetops) ;; vs. all-edges
analyzers/psp/assess/nonterminals1.lisp:(defun assess-edge-label/all (label edge)
analyzers/psp/assess/nonterminals1.lisp:(defun assess-edge-label/top (label edge)
analyzers/psp/assess/switch2.lisp:;;; assess-edge-label switch, offshot of the edge protocol
analyzers/psp/assess/switch2.lisp:(defun assess-edge-label (label edge)
analyzers/psp/assess/switch2.lisp:  (break No definition established for assess-edge-label~
analyzers/psp/assess/switch2.lisp:(defun establish-version-of-assess-edge-label (keyword)
analyzers/psp/assess/switch2.lisp:     (setf (symbol-function 'assess-edge-label)
analyzers/psp/assess/switch2.lisp:           (symbol-function 'assess-edge-label/top))) ;; change if needed
analyzers/psp/assess/switch2.lisp:     (setf (symbol-function 'assess-edge-label)
analyzers/psp/assess/switch2.lisp:           (symbol-function 'assess-edge-label/top)))))
analyzers/psp/edges/binary-explicit-all-keys2.lisp:    (assess-edge-label category edge)
analyzers/psp/edges/binary-explicit-all-keys3.lisp:    (assess-edge-label category edge)
analyzers/psp/edges/binary-explicit2.lisp:               (assess-edge-label category edge))))
analyzers/psp/edges/binary-explicit2.lisp:      (assess-edge-label category edge))
analyzers/psp/edges/binary-explicit2.lisp:      (assess-edge-label category edge)))
analyzers/psp/edges/binary-explicit3.lisp:               (assess-edge-label category edge))))
analyzers/psp/edges/binary-explicit3.lisp:      (assess-edge-label category edge))
analyzers/psp/edges/binary-explicit3.lisp:      (assess-edge-label category edge)))
analyzers/psp/edges/binary.lisp:    (assess-edge-label category edge)
analyzers/psp/edges/binary1.lisp:          (assess-edge-label category edge)
analyzers/psp/edges/binary2.lisp:          (assess-edge-label category edge)
analyzers/psp/edges/cs2.lisp:      (assess-edge-label category edge)
analyzers/psp/edges/cs3.lisp:      (assess-edge-label category edge)
analyzers/psp/edges/long-scan1.lisp:      (assess-edge-label category edge) 
analyzers/psp/edges/polyw1.lisp:    (assess-edge-label polyword edge)
analyzers/psp/edges/single-new1.lisp:  ;; called from assess-edge-label/top
analyzers/psp/edges/single-new1.lisp:    (assess-edge-label (or category (cfr-category rule))
analyzers/psp/edges/single-new2.lisp:  ;; called from assess-edge-label/top
analyzers/psp/edges/single-new2.lisp:    (assess-edge-label (cfr-category rule) edge)
grammar/rules/edges/CA.lisp:    (assess-edge-label category edge)
grammar/rules/edges/digits.lisp:    (assess-edge-label category::number edge)
grammar/rules/edges/digits.lisp:    (assess-edge-label category::number edge)
grammar/rules/edges/form-rules.lisp:         (assess-edge-label promulgated-label edge)
grammar/rules/edges/form-rules.lisp:    (assess-edge-label promulgated-label edge)
grammar/rules/edges/pnf.lisp:    (assess-edge-label category edge)
grammar/rules/edges/pronouns1.lisp:    (assess-edge-label category edge)
grammar/model/core/companies/extend-edge.lisp:      (assess-edge-label category new-edge)
grammar/model/core/numbers/fsa-digits6.lisp:      (assess-edge-label category::number edge)
init/versions/v4.0/workspace/switch-settings.lisp:(establish-version-of-assess-edge-label :all-edges)
init/versions/v4.0/workspace/switch-settings.lisp:(establish-version-of-assess-edge-label :treetops)

(trace-network)

install-terminal-edges
  -> preterminals-for-known
      -> either known-preterminals/check-caps
          if the word has variant spellings: (word-capitalization-variants word)
         or preterminals/word

preterminals/word returns the edges that it created

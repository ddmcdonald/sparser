;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2019 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "seg-parse-aux"
;;;   Module:  "drivers;chart:psp:"    ;;  in a segment
;;;  Version:  March 2019

;; Broken out from march-seg 3/14/19 to make that file easier to read


(defun absorb-parentheses ()
  "Run at the beginning of interp-big-mech-chunk"
  (let ((paren-pair (loop for ttl on (treetops-in-current-chunk)
                          when (let ((tt (second ttl)))
                                 (and tt
                                      (edge-p tt)
                                      (category-p (edge-category tt))
                                      (eq (cat-name (edge-category tt)) 'parentheses)))
                       do (return ttl))))
    ;;/// need to handle interior of parens as in
    ;; "a class ii (inactive conformation binder) drug"
    (when paren-pair ;; this just stashes it
      (knit-parens-into-neighbor (car paren-pair) (second paren-pair)))))



;;--- filters

(defun rule-is-for-a-verb? (rule)
  "Used as a filter in segment-rule-check when it's making an np"
  (declare (special *vg-head-categories* *vp-categories*))
  (or (member (car (cfr-rhs rule))
              *vg-head-categories*)
      (member (car (cfr-rhs rule))
              *vp-categories*)
      (member (car (cfr-rhs-forms rule))
              *vg-head-categories*)
      (member (car (cfr-rhs-forms rule))
              *vp-categories*)))


(defun compatible-with-chunk (edge chunk)
  (declare (special *vg-word-categories* *adjg-word-categories*))
  (cond
   ((null (edge-form edge)))
   ((equal (chunk-forms chunk) '(vg))
    (member (cat-symbol (edge-form edge)) *vg-word-categories*))
   ((equal (chunk-forms chunk) '(adjg))
    (or
     (member (cat-symbol (edge-form edge)) *adjg-word-categories*)
     ;; following is both an ADJ and a PREPOSITION (for clausal relations)
     (member (edge-cat-name edge) '(following))
     ))
   ((equal (chunk-forms chunk) '(ng))
    (not (member (cat-symbol (edge-form edge)) *vg-word-categories*)))
   (t t)))



;;--- Used in Select-best-chunk-triple

(defparameter *show-priority-NG-rules* nil)

(defun priority-triple? (triple chunk)
  (declare (special *n-bar-categories*))
  (or (priority-rule? (triple-rule triple))
      (when (current-script :biology) (domain-priority-triple? triple))
      (and (memq 'ng (chunk-forms chunk))
           (edge-p (left-edge-of-triple triple))
           (edge-p (right-edge-of-triple triple))
           (category-p (edge-form (left-edge-of-triple triple)))
           (category-p (edge-form (right-edge-of-triple triple)))
           (member
            (cat-symbol (edge-form (left-edge-of-triple triple)))
            *n-bar-categories*)
           (member
            (cat-name (edge-form (right-edge-of-triple triple)))
            `(verb+ing verb+ed vg+ing vg+ed
                       number ;; added this for "study 2 participants" so that "study 2" is given priority
                       ))
           (or 
            (null *show-priority-NG-rules*)
            ;; this gives an indication of where internal NG priority rules fire
            (format t "~%~s in ~s~%" triple chunk)))))

(defun domain-priority-triple? (triple)
  (declare (special category::protein category::post-translational-modification
                    category::depend))
  (or (and (itypep (edge-referent (second triple)) category::protein)
           (itypep (edge-referent (third triple)) category::post-translational-modification))
      (and (itypep (edge-referent (second triple)) category::protein)
           (itypep (edge-referent (third triple)) category::depend))))
               
(defun priority-rule? (rule)
  (and (cfr-p rule)
       (category-p (car (cfr-rhs rule)))
       (member (cat-name (car (cfr-rhs rule)))
	       '(adverb comparative superlative))))


(defun rightmost-triple (list-of-triples)
  (if (null (cdr list-of-triples))
    (car list-of-triples)
    (let ((rightmost (first list-of-triples)))
      (loop for triple in (cdr list-of-triples)
         when (to-the-right-of triple rightmost)
         do (setq rightmost triple))
      rightmost)))

(defun triple-length (triple)
  "How many words (= chart positions) does it span"
  (number-of-terminals-between
   (pos-edge-starts-at (left-edge-of-triple triple))
   (pos-edge-ends-at (right-edge-of-triple triple))))



;;------------------

(defun add-chunk-edges-snapshot ()
  "Called in interp-big-mech-chunk"
  (push (loop for edge in (treetops-in-current-chunk)
          collect 
          (list (and (edge-form edge)
                     (intern (symbol-name (cat-symbol (edge-form edge)))))
                (let ((str (edge-string edge)))
                  (subseq str 0 (- (length str) 1)))))
        *all-chunk-edges*))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "infinitives"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  0.1 September 1994

;; initiated 8/2/94 v2.3.  8/25 added an object and more cases
;; tweeked ...9/6
;; 0.1 (9/12) put in gates for when to do the conversion to verbs automatically
;;      and when to query first.

(in-package :sparser)


#| Acting on information gained from the context in which a segment
   appears.  |#

;;;---------------------------------
;;; infinitives as an item to track
;;;---------------------------------

;;--- rules to find more of them being as how they're supra segmental

(def-cfr infinitive-segment ("to" verb-segment)
  :form infinitive
  :referent (:function establish-infinitive-contextual-relation right-edge))


(def-cfr infinitive-segment ("to" verb+object-segment)
  :form infinitive  ;;///bigger??
  :referent (:function establish-infinitive-contextual-relation right-edge))


;;--- object

#| citations:   "NP uses to highlight NP"    |#

(define-category  infinitive-relation
  :specializes nil
  :instantiates self
  :binds ((verb))
  :index (:temporary :key verb))



(defun establish-infinitive-contextual-relation (verb-segment)
  (let ((verb-head
         (head-of-verb-segment verb-segment)))
    (establish-infinitive-contextual-relation/term verb-head)))


(defun establish-infinitive-contextual-relation/term (head)
  ;; alternative entry point for different ways of arriving at the verb
  (let ((inf
         (find-individual 'infinitive-relation
                        :verb head)))
    (unless inf
      (setq inf
            (make-an-individual'infinitive-relation
               :verb head)))
    inf ))




;;;-------------------------------------------------------
;;;  a one word segment preceded by "to" has to be a verb
;;;-------------------------------------------------------

(def-cfr infinitive-segment ("to" one-word-segment)
  :form infinitive
  :referent (:function convert-segment-word-to-verb right-edge))


(unless (boundp '*hack-verb-conversion-stop-words*)
  (defparameter *hack-verb-conversion-stop-words* nil
    "Holds a list of words, indentified by hand, that are -not- to be
     interpreted as verbs when they appear after the word 'to'.
     Provides a standin for a more considered linguistic model of
     reasonable verb-indicating contexts."))


(defun convert-segment-word-to-verb (segment)
  ;; Since this is a referent function, it has to return the
  ;; value that is to be the referent of the edge - here the
  ;; segment edge.
  (let* ((term (first (value-of 'terms segment)))
         (rewrite-rules (all-values-for 'rewrite-rule term))
         (start-pos (chart-position (value-of 'starts-at segment)))
         (word (pos-terminal start-pos))
         ;(end-pos (chart-position (value-of 'ends-at segment)))
         ;(word-after (pos-terminal end-pos))
         )

    (if (member word *hack-verb-conversion-stop-words*
                    :test #'eq)
      (throw :abort-edge :abort-edge)

      (else
        (dolist (cfr rewrite-rules)
          (when (eq word (first (cfr-rhs cfr)))
            (convert-term-rule-to-verb-form cfr)))
        
        (let ((inf (establish-infinitive-contextual-relation/term term)))
          inf  ;; referent of the edge
          )))))



(unless (boundp '*query-before-inferring-verbs*)
  (defparameter *query-before-inferring-verbs* nil
    "If this is non-nil, the user is asked whether the word should be
     interpreted as a verb.  If they answer no then the rule is aborted."))


(defun convert-term-rule-to-verb-form (cfr)
  ;; The cfr has a term as its referent and some term label as
  ;; its lhs.  We change its form to be one of the verb form labels,
  ;; which will cause it to be seen as a verb by the dm&p scanners.

  (unless (and (word-p (first (cfr-rhs cfr)))
               (null (cdr (cfr-rhs cfr))))
    (break "Rule does not appear to be for a term~%  ~A~%" cfr))

  (let* ((word (first (cfr-rhs cfr))))

    (unless (verb? word) ;; was done before
      (let ((morph (word-morphology word)))

        (if (eq morph :ends-in-ly)
          (then
            (setf (cfr-form cfr) category::adverb)
            (when (readout-segments?)
              (format t "converted term to adverb ~A"
                      (cfr-symbol cfr))))

          (if (if *query-before-inferring-verbs*
                (y-or-n-p "~%~%~%~%converting ~A to verb -- Is that ok?~%~%"
                          word)
                t )
            (then
              (terpri)
              (setf (cfr-form cfr)
                    (if morph
                      (ecase morph
                        (:ends-in-s    category::verb+s)
                        (:ends-in-ed   category::verb+ed)
                        (:ends-in-ing  category::verb+ing))                      
                      category::infinitive))
              
              (assign-brackets-as-a-main-verb word)
              (when (readout-segments?)
                (format t "converted term to verb form ~A"
                        (cfr-symbol cfr))))

            (else
              (terpri)
              (throw :abort-edge :abort-edge))))
        
        cfr ))))


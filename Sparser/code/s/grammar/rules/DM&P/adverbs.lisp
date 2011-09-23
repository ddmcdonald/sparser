;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "adverbs"
;;;   Module:  "grammar;rules:DM&P:"
;;;  version:  January 1994

;; initiated 12/1/94.  Added syntax rule 12/30.  Fixed edge-vector case 1/3/95

(in-package :sparser)


(def-syntax-rule  (adverb infinitive)
  :head :right-edge
  :form infinitive
  :referent (:daughter right-edge))


;;;--------
;;; object
;;;--------

(define-category  adverb-verb
  :specializes nil
  :instantiates self
  :binds ((verb)
          (adverb))
  :index (:sequential-keys adverb verb))


(defun sort-adverb-verb (av1 av2)
  (let ((adv1 (value-of 'adverb av1))
        (adv2 (value-of 'adverb av2)))
    (if (eq adv1 adv2)
      (let ((v1 (value-of 'verb av1))
            (v2 (value-of 'verb av2)))
        (sort-individuals-alphabetically v1 v2))
      (sort-individuals-alphabetically adv1 adv2))))



;;;-----------------------------------------
;;; finding them within verb group segments
;;;-----------------------------------------

(defun scoop-up-adverbs-in-vg (start-pos end-pos)
  ;; Called from Parse-vg-interior-content-terms when the coverage 
  ;; is ':continuous-edges'
  ;;   If the penultimate edge in the sequence of treetops has 
  ;; the form 'adverb' we'll declare a relationship between it and
  ;; the ultimate (last) edge, and so on recursively if there are
  ;; more than two edges.
  (let ((treetops (treetops-between start-pos end-pos)))
    (case (length treetops)
      (1 ;; shouldn't get here
       (first treetops))
      (2
       (look-for-adverb-verb-combination (first treetops)
                                         (second treetops)))
      (3
       (break "three or more treetops among the content words ~
               of a verb group:~%\"~A\"~%"
              (string-of-words-between start-pos end-pos))))))


(defun look-for-adverb-verb-combination (left-edge right-edge)
  (when (edge-vector-p left-edge)
    (setq left-edge (single-best-edge-from-vector left-edge)))
   (when (edge-vector-p right-edge)
    (setq left-edge (single-best-edge-from-vector right-edge))) 

  (let ((left-form (edge-form left-edge)))
    ;(break)
    (when (eq left-form category::adverb)
      (when (verbal-form? right-edge)
        (make-adverb-verb-combination/edges
         left-edge right-edge)))))


(defun make-adverb-verb-combination/edges (left-edge right-edge)
  (let ((left-referent (edge-referent left-edge))
        (right-referent (edge-referent right-edge)))

    (let ((obj (define-individual 'adverb-verb
                 :adverb left-referent
                 :verb right-referent))
          (label
           (label-for-pair-term (edge-category right-edge)
                                (edge-category left-edge)))
          cfr )

      (setq cfr (define-cfr label
                            (list (edge-category left-edge)
                                  (edge-category right-edge))
                  :form (edge-form right-edge)
                  ;;///this form is no good in general because the
                  ;; category of the right edge will be the same
                  ;; regardless of the particular variant on the verb
                  ;; that engenders it -- needs to be dynamic and take
                  ;; the form off the edge at runtime
                  :referent `((:head ,obj)
                              (:funcall remove-history-of-daughters))))

      (bind-variable 'rewrite-rule cfr obj)
      (make-default-binary-edge left-edge right-edge cfr))))



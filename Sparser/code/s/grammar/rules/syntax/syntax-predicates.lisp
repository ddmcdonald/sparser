



;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2016  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "syntax-predicates"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  August 2016

;; Simple function lifted from syntax-functions 8/30/16

(in-package :sparser)

(defun get-word-for-prep (prep-val)
  (resolve/make ;; needs to be a word for the subcat frame!
   (string-downcase
    (symbol-name
     (cat-symbol prep-val)))))

(defun takes-adj? (head adjective)
  (and ;; had strange case with "some cases this" -- head was "this"
   ;; so rule out these cases
   (not (and (individual-p head) (itypep head category::determiner)))
   (not (itypep head  category::determiner))

   ;; Positive reasons to assume we can compose
   (or (subcategorized-variable head :m adjective)
       (subcategorized-variable adjective :subject head)
       (itypep adjective 'attribute-value))))


(defun adjective-phrase? (e)
  (declare (special category::adjective))
  (let ((re (and (edge-p e)
                 (edge-right-daughter e))))
    (and (edge-p re)
         (eq category::adjective (edge-form re)))))


(defun has-adverb-variable? (vg-or-adjg vg-or-adjg-phrase adverb)
  (cond
   ((individual-p vg-or-adjg)
     (loop for category in (indiv-type vg-or-adjg)
       thereis
       (find-variable-for-category 'adverb category)))
    ((referential-category-p vg-or-adjg)
     (find-variable-for-category 'adverb vg-or-adjg))
    (t
     #+ignore
     (error "Trying to add adverb to verbal element whose semantics won't take ~s.~% Semantics is ~s, ~%surface string is ~s"
	    adverb
	    vg-or-adjg-phrase
	    (sur-string vg-or-adjg))
     nil)))

(defun can-fill-vp-subject? (vp subj &optional (left-edge (left-edge-for-referent)))
  (and
   ;; vp has a subject
   (missing-subject-vars vp) ;; which is not bound
   (or
    ;; can't be a reduced relative, no available object-var
    (not (missing-object-vars vp)) ;; (not (object-variable vp)) (bound-object-var vp)
    ;; or a statement (clausal complement)
    (value-of 'statement vp)
    (preceding-that-whether-or-conjunction? left-edge))
   (subcategorized-variable vp :subject subj)))
       
(defun can-fill-vp-object? (vp subj)
  (and ;; vp has a bound subject -- NP can fill object
   (bound-subject-var vp)
   (subcategorized-variable vp :object subj)))


(defun preceding-that-whether-or-conjunction? (left-edge)
  (declare (special left-edge))
  (when (and (edge-p left-edge)
             (position-p (pos-edge-starts-at left-edge)))
    (let* ((previous-treetop (left-treetop-at/only-edges (pos-edge-starts-at left-edge)))
	   (prev-form (and (edge-p previous-treetop)
			   (edge-form previous-treetop)))
	   (prev-cat (and (edge-p previous-treetop)
			  (edge-category previous-treetop))))
      (declare (special previous-treetop prev-form prev-cat))
      (cond
	((or
	  (and (category-p prev-form)
	       (member (cat-name prev-form)
                       '(SUBORDINATE-CONJUNCTION CONJUNCTION
                         SPATIO-TEMPORAL-PREPOSITION ADVERB)))
	  (and (category-p prev-cat)
	       (member (cat-name prev-cat) '(THAT))))
        
	 t)
	(t
	 ;;(format t "preceding-that-or-whether? prev-form=~s and prev-cat=~s~&" prev-form prev-cat)
	 nil)))))

;;;-----------------------
;;; type-queries on edges
;;;-----------------------

(defun is-passive? (edge)
  (declare (special category::subordinate-clause))
  (cond
    ((eq (edge-form edge) category::subordinate-clause)
     (is-passive? (edge-right-daughter edge)))
    (t
     (let ((cat-string (symbol-name (cat-name (edge-category edge)))))
       (and (> (length cat-string) 3)
	    (equalp "+ED" (subseq cat-string (- (length cat-string) 3))))))))

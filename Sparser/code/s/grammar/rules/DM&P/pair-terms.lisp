;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994,1995  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;; $Id:$
;;;
;;;      File:  "pair terms"
;;;    Module:  "grammar;rules:DM&P:"
;;;   version:  1.3 February 1995

;; broken out 8/5/94 v2.3
;; 1.0 (8/4) Redesigning the category structure for terms.
;; 1.1 (11/13) having an edge made along with the construction of the object
;; 1.2 (11/21) the pair term now deletes the discourse-history instance records
;;      of the two edges that make it up.
;; 1.3 (11/30) added sort/subsumption routines. Finishing them 1/3/95
;; 1.4 (1/23) gave Construct-pair-term the option of getting the labels of the
;;      two daughters off their edges when their referent's don't have rewrite-rule
;;      variables, which will be the case for most of the core vocabulary of the model.
;;     (2/16) tweeked length-of-pair-term.
;;     (1/22/07) Put a guard on the call to make the edge in Construct-pair-term. 
;;      Accidently ran the "aaaa" test when in dm&p mode and for some reason the
;;      caller didn't supply the two edges for the pair. 


(in-package :sparser)

;;;--------
;;; object
;;;--------

(define-category  pair-term
  :specializes term
  :instantiates self
  :binds ((head)  ;; . (:or term pair-term))
          (other))  ;; . (:or term pair-term)))
  :index (:temporary :sequential-keys head other))


;;;-------------
;;; building it
;;;-------------

(defun construct-pair-term (head-term other-term  
                            &key form left-edge right-edge )
  ;(format t "~&pt: head-term = ~A~
  ;           ~%   other-term = ~A~%" head-term other-term)
  (let ((pair-term (find-individual 'pair-term
                                    :head head-term  :other other-term)))

    (when (and (individual-p head-term)
               (individual-p other-term)
               (or (value-of 'rewrite-rule head-term) right-edge)
               (or (value-of 'rewrite-rule other-term) left-edge))

      (if pair-term
        pair-term
        (let* ((head-label
                (or (and (value-of 'rewrite-rule head-term)
                         (cfr-category (value-of 'rewrite-rule head-term)))
                    (edge-category right-edge)))
               (other-label
                (or (and (value-of 'rewrite-rule other-term)
                         (cfr-category (value-of 'rewrite-rule other-term)))
                    (edge-category left-edge)))
               (pair-label (label-for-pair-term head-label other-label)))
          ;(format t "~&  head-label = ~A~
          ;           ~% other-label = ~A~%" head-label other-label)

          (setq pair-term
                (define-individual 'pair-term
                  :head head-term
                  :other other-term))
          
          (let ((cfr (define-cfr pair-label (list other-label head-label)
                       :form form
                       :referent
                         `((:head ,pair-term)
                           (:funcall remove-history-of-daughters))
                         )))
            
            (bind-variable 'rewrite-rule cfr pair-term)
            (tr :anounce-pair-term)

	    (when (and left-edge right-edge)
	      (make-default-binary-edge left-edge right-edge cfr))

            pair-term ))))))



(defun label-for-pair-term (head-label other-label)
  ;; concatenate the two names
  (let ((name (intern
               (concatenate
                'string
                (etypecase other-label
                  ((or category referential-category)
                   (symbol-name (cat-symbol other-label)))
                  (polyword
                    (symbol-name (pw-symbol other-label))))
                "-"
                (etypecase head-label
                  ((or category referential-category)
                   (symbol-name (cat-symbol head-label)))
                  (polyword
                    (symbol-name (pw-symbol head-label)))))
               *category-package*)))
    (find-or-make-category-object name :dm&p)))



;;--- cleaning up the discourse history to hide the instances of
;;    the daughter objects

(defun remove-history-of-daughter (edge)
  ;; sugar to the real call in case we want to add anything specific
  ;; to dm&p or pair-terms
  (remove-history-of-instance/edge edge))

(defun remove-history-of-daughters ()
  (let ((left-edge *left-edge-into-reference*)
        (right-edge *right-edge-into-reference*))
    ;(break)
    (remove-history-of-daughter left-edge)
    (remove-history-of-daughter right-edge)))


;;;----------------------------
;;; predicates over pair terms
;;;----------------------------

(defun length-of-pair-term (pt)
  (let ((head (value-of 'head pt))
        (other (value-of 'other pt)))
    (+ (if (itype head 'term)
         1
         (length-of-pair-term/or-other head))
       (if (itype other 'term)
         1
         (length-of-pair-term/or-other other)))))

(defun length-of-pair-term/or-other (i)
  ;; pair terms usually form up on terms or other pair terms,
  ;; but there are other possibilities as well, and this is
  ;; the escape that looks for them.
  (if (itypep i 'pair-term)
    (length-of-pair-term i)
    (number-of-terminals-in-dm&p-object i)))



;;;-------------------------------------------
;;; aggregations within the discourse history
;;;-------------------------------------------

(defun the-Pair-terms/dh ()
  (discourse-entry category::pair-term))

(defun the-Pair-terms ()
  (let ( bare-pts )
    (dolist (pt/dh (the-pair-terms/dh))
      (push (first pt/dh) bare-pts))
    (nreverse bare-pts)))

(defun the-Pair-terms-and-nominal-terms/dh ()
  (append (the-pair-terms/dh)
          (the-nominal-terms/dh)))

(defun the-Pair-terms-and-nominal-terms ()
  (append (the-pair-terms)
          (the-nominal-terms)))


;;;-------------------------------
;;; sorting the discourse history
;;;-------------------------------

(defun order-the-pair-terms ()
  (let ((new-list (copy-list (the-pair-terms))))
    (let ((sorted-list
           (sort new-list
                 #'sort-pair-terms-alphabetically)))
      (bubble-subterms-up-to-containing-terms sorted-list))))

(defun order-the-pair-terms/dh ()
  (let ((new-list (copy-list (the-pair-terms/dh))))
    (sort new-list
          #'sort-pair-terms/dh-alphabetically)))

(defun order-the-pair-terms-and-nominal-terms ()
  (let ((new-list (copy-list (the-pair-terms-and-nominal-terms))))
    (let ((sorted-list
           (sort new-list
                 #'sort-pair-terms-and-terms-alphabetically)))
      (bubble-subterms-up-to-containing-terms sorted-list))))



;;;------------------
;;; sorting routines
;;;------------------

(defun sort-pair-terms-alphabetically (pt1 pt2)
  (let ((length1 (length-of-pair-term pt1))
        (length2 (length-of-pair-term pt2)))
    (cond
     ((> length1 length2)
      t )
     ((< length1 length2)
      nil )
     (t
      (let ((head-1 (value-of 'head pt1))
            (head-2 (value-of 'head pt2)))
        (cond
         ((eq head-2 pt1)
          (break "1")
          t )
         ((eq pt2 head-1)
          (break "2")
          t )
         ((eq head-1 head-2)
          (let ((other-1 (value-of 'other pt1))
                (other-2 (value-of 'other pt2)))
            (sort-individuals-alphabetically other-1 other-2)))
         (t
          (sort-individuals-alphabetically head-1 head-2))))))))


(defun sort-pair-terms-and-terms-alphabetically (i1 i2)
  (cond ((and (itype i1 'pair-term)
              (itype  i2 'pair-term))
         (sort-pair-terms-alphabetically i1 i2))
        ((and (itype i1 'term)
              (itype i2 'term))
         (sort-terms-alphabetically i1 i2))
        ((and (itype i1 'pair-term)
              (itype i2 'term))
         t )
        ((and (itype i1 'term)
              (itype i2 'pair-term))
         nil )
        (t (break "Unanticipated case"))))



(defun sort-pair-terms/dh-alphabetically (pt/dh1 pt/dh2)
  (sort-pair-terms-alphabetically (first pt/dh1)
                                  (first pt/dh2)))


(defun bubble-subterms-up-to-containing-terms (list-of-pair-terms)
  ;; assumes the list has already been sorted alphabetically,
  ;; and that longer pair terms precede shorter ones.  Goes through
  ;; the list looking for pts that are contained in other pts, then
  ;; calls the subroutine to move the pts just after their containers.
  (let ((temp-list (copy-list list-of-pair-terms)))
    (dolist (pt list-of-pair-terms)
      (when (bound-in pt :body-type 'pair-term)
        ;(format t "~%---------~%moving ~A~%~%" pt)
        (setq temp-list
              (bubble-subterm-up-to-containing-term pt temp-list))
        ;(pl temp-list)
        ))
    temp-list ))


(defun bubble-subterm-up-to-containing-term (pt list-of-pair-terms)
  ;; The pt is part of another, 'containing', pt in the list.
  ;; A revised version of the list is returned where the position
  ;; of the pt has been moved to just after its container
  (let ((containing-pt (bound-in pt :body-type 'pair-term)))
    (if containing-pt
      (if (eq (first list-of-pair-terms) containing-pt)
        (then
          ;(break "0")
          ;; splice the pt into place and then walk down the list
          ;; and splice it out of where it was
          (unless (eq (second list-of-pair-terms) pt)
            ;; don't move the pt if it's already in the right place
            (rplacd list-of-pair-terms
                    (cons pt (cdr list-of-pair-terms)))
            ;(break "first check")
            (let ((prior-cons (cdr list-of-pair-terms))
                  (containing-cons (cddr list-of-pair-terms))
                  (next-item (caddr list-of-pair-terms)))
              ;(break "check")
              (loop
                (when (null next-item)
                  (return))
                (when (eq next-item pt)
                  (rplacd prior-cons
                          (cdr containing-cons)))
                (setq prior-cons containing-cons
                      containing-cons (cdr containing-cons)
                      next-item (car containing-cons))
                ;(break "end")
                )))
          list-of-pair-terms )
        (else
          (bsutch containing-pt pt list-of-pair-terms)))

      ;; if there isn't a containing pair term then this step
      ;; is a no op so just return the original list.
      list-of-pair-terms )))


(defun bsutch (containing-pt pt list-of-pair-terms)
  (if (member containing-pt list-of-pair-terms :test #'eq)
    (bsutct-not-first-item containing-pt pt
                           list-of-pair-terms)
    (bsutch-missing-middle containing-pt pt
                           list-of-pair-terms)))


(defun bsutch-missing-middle (containing-pt pt list-of-pair-terms)
  ;; The pair-term that pt is part of is not included in the
  ;; list. This is most likely because the only place that that
  ;; parent occurs is as itself part of a still larger pair term
  ;; (and as a result the discourse history of the containing pt
  ;; has always been removed). Find the next parent up and try
  ;; with it.
  (let ((parent-pt
         (bound-in containing-pt :body-type 'pair-term)))
    (if parent-pt
      (bsutch parent-pt pt list-of-pair-terms)
      (else
        (break "Stub: There is no parent pair-term, add check ~
                for other kinds of parents.~%If you continue ~
                this, the sort will just ignore this case~%")))))



(defun bsutct-not-first-item (containing-pt pt list-of-pair-terms)
  (let ((containing-cons/c (cdr list-of-pair-terms))
        (next-item/c (cadr list-of-pair-terms)))
    (loop
      ;; find the containing term
      (when (null next-item/c)
        (break "no instance of the containing term in the list"))
      (when (eq next-item/c containing-pt)
        (return))
      (setq containing-cons/c (cdr containing-cons/c)
            next-item/c (car containing-cons/c)))

    ;; now splice in the pt and then splice it out from where it was
    (unless (eq (cadr containing-cons/c) pt)
      (rplacd containing-cons/c
              (cons pt (cdr containing-cons/c)))
      (let ((prior-cons (cdr containing-cons/c))
            (containing-cons (cddr containing-cons/c))
            (next-item (caddr containing-cons/c)))
        (loop
          (when (null next-item)
            (return))
          (when (eq next-item pt)
            (rplacd prior-cons
                    (cdr containing-cons)))
          (setq prior-cons containing-cons
                containing-cons (cdr containing-cons)
                next-item (car containing-cons)))))
    list-of-pair-terms ))


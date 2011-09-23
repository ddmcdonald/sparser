;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "topic company"
;;;   Module:  "grammar;rules:CA:"
;;;  Version:   January 1996

;; redone from scratch 1/8/96. Fixed omission 1/13. Added a filter
;; for ignoring background companies (dh-format) 1/16.
;; 0.1 (1/17) redesigned the flow so that if the count isn't definitive
;;      it passes back an indicator and a different heuristic is used.

(in-package :sparser)

;;;-------------------
;;; context variables
;;;-------------------

(define-context-variable *topic-company* nil)

(define-context-variable *background-companies* nil)


;;;---------------------------------------
;;; establishing the background companies
;;;---------------------------------------

#| These companies will appear in the datelines, copyrights, etc. that will
 occur with most any article in a given style and must be marked as such
 so they don't confuse any routine that are studying the 'actual' companies
 that are mentioned in the article. |#

(defun establish-companies-as-part-of-the-background (list-of-company-name-strings)
  ;; called from a style setup routine
  (let ((companies (recover-list-of-companies-from-their-names
                    list-of-company-name-strings)))

    (dolist (c companies)
      ;; don't override any that are already here from other calls,
      ;; just add to the list
      (push c *background-companies*))))



;;;---------------
;;; query routine
;;;---------------

#| Barring an obvious moment at which to establish a topic company,
 we're going to wait until somebody want's to know and only then
 examine what companies have been mentioned ///and where and make the
 judgement. |#

(defun topic-company ()
  (or *topic-company*
      (try-to-determine-the-articles-topic-company-if-any)))


(defun try-to-determine-the-articles-topic-company-if-any ()
  (let ((more-frequent-company
         (one-of-the-articles-companies-is-very-frequent)))

    (when (consp more-frequent-company)
      ;; Then it couldn't adjudicate the difference just on 
      ;; frequency alone
      (setq more-frequent-company
            (adjudicate-comparably-frequent-companies-as-topic-company
             more-frequent-company)))

    ;; add more cases using a succession of 'if's here
    (when more-frequent-company
      (setq *topic-company* more-frequent-company))))


(defun one-of-the-articles-companies-is-very-frequent ()
  (let ((companies/dh (discourse-entry (category-named 'company)))
        forground-companies/dh  co )

    (if (null (cdr companies/dh)) ;; only one on the list
      (car (first companies/dh))

      (else
        (dolist (c/dh companies/dh)
          (setq co (first c/dh))
          (unless (member co *background-companies* :test #'eq)
            (push c/dh forground-companies/dh)))
        
        (when forground-companies/dh
          (if (null (cdr forground-companies/dh)) ;; there's only one
            (caar forground-companies/dh))  ;; co is first of dh entry
          
          ;; otherwise go through them and get comparisons
          (let ((most-frequent-co (caar forground-companies/dh))
                (highest-count (length (cdar forground-companies/dh)))
                (second-highest-count 0)
                dh-count  next-most-frequent-co )
            
            (dolist (c/dh (cdr forground-companies/dh))
              (setq co (first c/dh)
                    dh-count (length (rest c/dh)))
              (cond
               ((> dh-count highest-count)
                ;; switch which one is the most-frequent and
                ;; record the formerly most freq. as the next-most-freq.
                (setq next-most-frequent-co most-frequent-co
                      most-frequent-co co)
                (setq second-highest-count highest-count
                      highest-count dh-count))

               ((< dh-count highest-count))
                ;; no change

               ((= dh-count highest-count)
                ;; make a list out of the highest count and leave it
                ;; for the caller to apply another heuristic to make
                ;; its choice
                (if (consp most-frequent-co)
                  (push co most-frequent-co)
                  (setq most-frequent-co (list co most-frequent-co))))

               (t (when *break-on-unexpected-cases*
                    (break "Algorithm is bad. Shouldn't have gotten ~
                            to this point in the conditional.")))))
                
            
            ;; Now decide if there's enough separation
            (cond
             ((= 0 second-highest-count)
              ;; was only one company (?wouldn't this thread have been caught above?)
              most-frequent-co )

             ((consp most-frequent-co)
              ;; there's a tie
              `(:tie-for-highest-count ,most-frequent-co))

             ((>= (- highest-count second-highest-count)
                  2)
              most-frequent-co )

             ((>= (- highest-count second-highest-count)
                  1)
              `(:only-off-by-one ,most-frequent-co ,next-most-frequent-co
                                 ,highest-count ,second-highest-count))

             (t
              (when *break-on-unexpected-cases*
                (break "Shouldn't have falled through this cond."))
              most-frequent-co ))))))))



(defun adjudicate-comparably-frequent-companies-as-topic-company (list)
  (ecase (first list)
    (:tie-for-highest-count
     (earliest-in-the-discourse (second list) (third list)))
    (:only-off-by-one
     (earliest-in-the-discourse (second list) (third list)))))





;;;---------------------------------------------------------
;;; filtering background companies from a list of companies
;;;---------------------------------------------------------

(defun filter-out-background-companies/dh (list-of-companies)
  ;; Called from Respan-pn-with-most-recent-company-anaphor with a list
  ;; of company discourse entries.  Returns entries that then go through
  ;; a 'most-recent' filter.
  (let ( forground-companies/dh  company )
    (dolist (c/dh list-of-companies)
      (setq company (first c/dh))
      (unless (member company *background-companies*)
        (push c/dh forground-companies/dh)))
    (nreverse forground-companies/dh)))

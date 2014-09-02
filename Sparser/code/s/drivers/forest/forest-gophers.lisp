;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "forest-gophers"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/30/14. To hold predicates and other little computations
;; done by the forest-level sweeping and island-driving. Also a good
;; place to put the local state variables.

(in-package :sparser)

;;;-----------------
;;; state variables
;;;-----------------

(defvar tt nil
  "The next item to look at in the sentence sweep. Could be an
   edge or a word (or multiword).")

(defvar prior-tt nil
  "Holds the treetop that was just looked at. Begins as nil
   since nothing as been sweep yet.")

(defvar subject-seen? nil)
(defvar main-verb-seen? nil)

(defun clear-sweep-sentence-tt-state-vars ()
  (setq tt nil
        prior-tt nil
        subject-seen? nil
        main-verb-seen? nil
))


;;; go-fers

(defun set-subject (tt)
  ;; Sugar to make the main line easier to read
  (setf (subject (layout)) tt)
  (setq subject-seen? t))

(defun set-main-verb (tt)
  (setf (main-verb (layout)) tt)
  (setq main-verb-seen? t))

(defun push-post-mvs-verbs (tt)
  (push tt (post-mvb-verbs (layout))))

(defun there-are-post-mvb-verbs? ()
  (post-mvb-verbs (layout)))

(defun push-loose-np (tt)
  (push tt (loose-nps (layout))))

(defun there-are-loose-nps? ()
  (loose-nps (layout)))

(defun push-preposition (tt)
  (push tt (prepositions (layout))))

(defun there-are-prepositions? ()
  (prepositions (layout)))


(defun push-conjunction (tt)
  (push tt (conjunctions (layout))))

(defun there-are-conjunctions? ()
  (conjunctions (layout)))


(defun right-bounded-np? (np-edge)
  (let* ((pos-after-np (pos-edge-ends-at np-edge))
         (right-edge
          (right-treetop-at/edge pos-after-np)))
    (typecase right-edge
      (edge
       (if (or (edge-over-conjunct? right-edge)
               (edge-over-period? right-edge))
         t
         nil))
      (otherwise
       (push-debug `(,np-edge ,right-edge))
       (error "Unexpected type of treetop to the ~
               right of ~a:~%~a"
              right-edge (type-of right-edge))))))

(defun edge-over-period? (edge)
  (eq (edge-category edge) 
      *the-punctuation-period*))

(defun edge-over-conjunct? (edge)
  (eq (edge-form edge) ;; "and" & "or"
      ;; which have their own category labels
      (category-named 'conjunction)))


         



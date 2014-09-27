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
  (tr :setting-subject-to tt)
  (setf (subject (layout)) tt)
  (setq subject-seen? t))


(defun push-loose-clauses (tt)
  (push tt (clauses (layout))))

(defun there-are-loose-clauses ()
  (let ((original-list  (clauses (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun set-main-verb (tt)
  (setf (main-verb (layout)) tt)
  (setq main-verb-seen? t))

(defun push-post-mvs-verbs (tt)
  (push tt (post-mvb-verbs (layout))))

(defun there-are-post-mvb-verbs? ()
  (let ((original-list (post-mvb-verbs (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-verb-phrase (tt)
  (push tt (verb-phrases (layout))))

(defun there-are-verb-phrases ()
  (let ((original-list (verb-phrases (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-loose-np (tt)
  (push tt (loose-nps (layout))))

(defun there-are-loose-nps? ()
  (let ((original-list (loose-nps (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-loose-adjective (tt)
  (push tt (loose-adjectives (layout))))

(defun there-are-loose-adjectives? ()
  (let ((original-list (loose-adjectives (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-loose-adverb (tt)
  (setf (loose-adverbs (layout)) tt))

(defun there-are-loose-adverbs ()
  (let ((original-list (loose-adverbs (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-preposition (tt)
  (push tt (prepositions (layout))))

(defun there-are-prepositions? ()
  (let ((original-list (prepositions (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-of (tt)
  (push tt (of-mentions (layout))))

(defun there-are-of-mentions? ()
  (let ((original-list (of-mentions (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun starts-with-prep? ()
  (starts-with-prep (layout)))


(defun push-prepositional-phrase (tt)
  (push tt (prepositional-phrases (layout))))

(defun there-are-prepositional-phrases ()
  (let ((original-list (prepositional-phrases (layout))))
    (loop for edge in original-list
      unless (edge-used-in edge)
      collect edge)))


(defun push-conjunction (tt)
  (push tt (conjunctions (layout))))

(defun there-are-conjunctions? ()
  (conjunctions (layout)))


(defun push-parentheses (tt)
  (push tt (parentheses (layout))))

(defun there-are-parentheses? ()
  (parentheses (layout)))


(defun push-that (tt)
  (push tt (includes-that (layout))))

(defun there-is-a-that? ()
  (includes-that (layout)))


(defun push-subcat (tt)
  (push tt (known-subcat-pattern (layout))))

(defun there-are-known-subcat-patterns? ()
  (known-subcat-pattern (layout)))


(defun find-head-word (tt)
  "Walk down the head line (not so obvious) and return
   the word at the bottom, e.g. the verb."
  (let* ((head-edge (walk-down-right-headline tt))
         (left-daughter (edge-left-daughter head-edge)))
    (unless (word-p left-daughter)
      (push-debug `(,tt ,head-edge))
      (error "right headline does not terminate in a word: ~a"
             head-edge))
    left-daughter))

(defun walk-down-right-headline (edge)
  "Given an edge, presumed to be the result of a binary composition,
   walk down its right-daughter chain until you reach a edge that
   single term, which we return."
  (let ((daughter (edge-right-daughter edge)))
    (cond
     ((edge-p daughter)
      (walk-down-right-headline daughter))
     ((symbolp daughter)
      (cond
       ((eq daughter :single-term)
        edge)
       ((eq daughter :long-span)
        (let ((constituents (edge-constituents edge)))
          (unless constituents (error "no constituents on long span ~a" edge))
          (car (last constituents))))
       (t (push-debug `(,edge ,daughter))
          (error "Unexpected symbol in headline walk: ~a" daughter))))
     (t (push-debug `(,edge ,daughter))
        (error "Unexpected case in headline walk: ~a" daughter)))))


(defun find-copular-vp (vp-edges)
  (loop for edge in vp-edges
    when (copular-vp edge)
    return edge)) ;;/// else ?? suppose none of them ar
  
(defun find-non-copular-vps (vp-edges)
  (loop for edge in vp-edges
    unless (copular-vp edge)
    collect edge))

(defun copular-vp (edge)
  ;; The main verb under this edge is a form of the verb
  ;; 'to be' or its equivalent (seems, appears, ...)
  (let ((verb-edge (find-verb edge)))
    (when (eq (edge-category verb-edge) *the-category-to-be*)
      verb-edge)))


(defun find-verb (edge)
  (let ((form (edge-form edge)))
    (unless (vp-category? form)
      (push-debug `(,edge))
      (error "Not a VP category: ~a in e~a"
             form (edge-position-in-resource-array edge)))
    (if (and (vp-category? (edge-form edge))
             (word-p (edge-left-daughter edge)))
      edge
      (let* ((left (edge-left-daughter edge))
             (left-form (edge-form left))
             (right (edge-right-daughter edge))
             (right-form (when (edge-p right) ;; vs. a symbol
                           (edge-form right))))
        (cond
         ((vp-category? left-form)
          (find-verb left))
         ((and right-form (vp-category? right-form))
          (find-verb right))
         ((eq left-form (category-named 's))
          (find-verb left))
         ((eq left-form (category-named 'adjective)) ;; "responsible"
          left)
         ((eq right-form (category-named 'verb))
          right)
         (t (push-debug `(,left ,right ,left-form ,right-form))
            (break "find-verb: new case")))))))




;;;-------
;;; tests
;;;-------

(defun expansion-boundary? (edge)
  ;; used by look-for-short-leftward-extension
  ;; This is the edge just to the left of one we're considering
  ;; extending leftwards, i.e. composing them. This lists cases
  ;; that should block attempting the composition
  (typecase edge
    (word
     (if (eq edge word::source-start)
       t
       (error "Unexpected word: ~a" edge)))
    (edge
     (or (edge-over-punctuation? edge)
         (edge-over-bounding-word? edge)))
    (otherwise
     (push-debug `(,edge))
     (error "expansion-boundary? -- unexpected type of treetop"))))
            
      
(defparameter *expansion-bounding-form-categories* nil
  "The form categories of edges that should block phrase extension.
   Set the first time it's accessed since the categories aren't
   available when this loads.")
(defun set-expansion-bounding-form-categories ()
  (setq *expansion-bounding-form-categories*
        `(,(category-named 'conjunction)
          ,(category-named 'preposition))))

(defun edge-over-bounding-word? (edge)
  (unless *expansion-bounding-form-categories*
    (set-expansion-bounding-form-categories))
  (memq (edge-form edge) *expansion-bounding-form-categories*))



(defun right-bounded-np? (np-edge)
  (let ((pos-after-np (pos-edge-ends-at np-edge)))
    (is-a-boundary? pos-after-np)))

(defmethod is-a-boundary? ((pos position))
  (is-a-boundary? (right-treetop-at/edge pos)))

(defmethod is-a-boundary? ((edge edge))         
  (or (expansion-boundary? edge)
      ;(eq (edge-form edge) category::vg)
      ;; more like copula or tensed
      ;(eq (edge-form edge) category::vp)
      ))




(defun np-over-that? (tt)
  ;;/// horrific hack that should be resolved by a better
  ;; treatment that reconciles determiner and subordinate
  ;; conjunction uses. It's a literal in some rules and
  ;; has an NP for form (which itself is weird) so it
  ;; ends up in the NP form case.
  (and (word-p (edge-left-daughter tt))
       (eq (edge-left-daughter tt) (word-named "that"))))
         



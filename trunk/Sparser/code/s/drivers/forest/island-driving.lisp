;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "island-driving"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/30/14. Controls the forest-level parsing under the
;; new 'whole sentence at a time, start anywhere' protocol

(in-package :sparser)

(defun island-driven-forest-parse (layout)
  (tr :island-driven-forest-parse) ;;//// add sentence-span
  (push-debug `(,layout))

  ;; short things in parentheses bind to the left

  (try-simple-subj+verb)

  ;;/// conjunctions inside two words? 

  (when (there-are-loose-nps?)
    (look-for-np-extensions))

  (when (there-are-post-mvb-verbs?)
    (try-simple-vps))

  (when (there-are-prepositions?)
    (try-simple-pps))

  (when (there-are-conjunctions?)
    (try-spanning-conjunctions))
)


(defun try-simple-subj+verb ()
  (let* ((layout (layout))
         (subject-edge (subject layout))
         (verb-group-edge (main-verb layout)))
    (if (and subject-edge verb-group-edge)
      (when (adjacent-edges? subject-edge verb-group-edge)
        ;; multiply-edges returns the rule, and is sensitive
        ;; to *edges-from-referent-categories* and
        ;; *allow-pure-syntax-rules*
        ;; Or alternatively we just know what the right rule
        ;; is and apply it. check-one-one packages up the
        ;; check for a rule plus make-completed-binary-edge
        ;; to create the edge.
        (let ((edge (check-one-one subject-edge verb-group-edge)))
          ;; good spot for a trace
          ;; set form to subj+vg or whatever that is.
          edge))
      (tr :no-subject-or-verb-edges))))

(defun look-for-np-extensions ()
  ;; if there's an edge to the righ of each 'loose' np,
  ;; see if the two compose. Depends a lot on timing I suspect
  (dolist (np-edge (loose-nps (layout)))
    (let* ((pos-after-np (pos-edge-ends-at np-edge))
           (edge-to-the-right (right-treetop-at/edge pos-after-np)))
      (if (edge-p edge-to-the-right)
        (when (multiply-edges np-edge edge-to-the-right)
          ;; Redundant, but makes the point.
          ;; 1. How to we know this is the longest version
          ;; of the NP? We're coming from the right which makes
          ;; me /think/ that's the case, but how do we Know?
          ;; 2. Should we now look left like the else clause
          ;; does? How to we keep this NP in play going forward.
          (check-one-one np-edge edge-to-the-right))
        (else
         ;; it doesn't compose to the right. Is an np like this
         ;; a good anchor? Should we look to the left while
         ;; we're here? Or wait?
         (let* ((pos-before-np (pos-edge-starts-at np-edge))
                (edge-to-the-left (left-treetop-at/edge pos-before-np)))
           (when edge-to-the-left
             (check-one-one edge-to-the-left pos-before-np))))))))


(defun try-simple-vps ()
  ;; Go through the verbs. There is probably an np following
  ;; each, though if we deliberately consulted the subcat patterns
  ;; of the verb we'd know that definitively.
  ;; If there's a bounded np then compose them.
  (dolist (vg-edge (post-mvb-verbs (layout)))
    (look-for-bounded-np-after-verb vg-edge)))

(defun look-for-bounded-np-after-verb (vg-edge)
  (let* ((right-neighbor (right-treetop-at/edge 
                          (pos-edge-ends-at vg-edge)))
         (form (when (edge-p right-neighbor)
                 (edge-form right-neighbor))))
    (when (and form
               (eq form category::np))
      (when (right-bounded-np? right-neighbor)
        (let ((edge (check-one-one vg-edge right-neighbor)))
          edge)))))


(defun try-simple-pps ()
  ;; go through the list of prepositions.
  ;; Stipulate (for now) that we've handled an verb-owned pps
  ;; before this
  ;; If there's a 'bounded' np to the right of the preposition
  ;; compose them. 
  ;;////  what's the fall back if that condition isn't satisfied?
  (dolist (prep-edge (prepositions (layout)))
    ;; n.b. it's a push list, so we're going right to left
    (look-for-bounded-np-after-prep prep-edge)))



(defun look-for-bounded-np-after-prep (prep-edge)
  (let* ((pos-after-prep (pos-edge-ends-at prep-edge))
         (right-neighbor (right-treetop-at/edge pos-after-prep))
         (form (when (edge-p right-neighbor)
                 (edge-form right-neighbor))))
    ;;/// prepositions can end sentences. What do we make of that?
    ;; e.g. the form could be nil because we're up against a period or EOS
    ;; Probably make that another sister 'try' routine.
    (when (and form
               (eq form category::np))
      (when (right-bounded-np? right-neighbor)
        ;; then it safe to make the pp
        (let ((edge (check-one-one prep-edge right-neighbor)))
          edge)))))


(defun try-spanning-conjunctions ()
  ;; For now do the easy thing of looking only for the same
  ;; labels to either side
  (let* ((conjuncts (conjunctions (layout)))
         (count (length conjuncts)))
    (push-debug `(,count ,conjuncts)) (break "work out conjunctions")))
#|    (when (= count 2)
      ;; The question is how to determine what patterns of
      ;; conjunction we have within this sentence. 
      (let ((c1 (car conjuncts))
            (c2 (cadr conjuncts)))
        (let ((edge-to-the-right-of-c1
  |#
        
    

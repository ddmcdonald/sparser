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

  ;; preposed adjuncts
  (when (starts-with-prep?)
    (try-parsing-leading-pp))

  (try-simple-subj+verb)

  ;;/// conjunctions inside two words? 
  ;; though the regular conjunction routine seems to get these
  ;; in-line if they're really simple: "GDP or GTP"

  (when (there-are-prepositions?)
    (look-for-prep-binders))

  (when (there-are-of-mentions?)
    (try-to-compose-of-complements))

  (when (there-are-loose-nps?)
    (look-for-np-extensions))

  (when (there-are-post-mvb-verbs?)
    (try-simple-vps))

  (when (there-are-prepositions?)
    (try-simple-pps))

  (when (there-are-conjunctions?)
    (try-spanning-conjunctions))
)


;;--- subject + verb group

(defun try-simple-subj+verb ()
  (let* ((layout (layout))
         (subject-edge (subject layout))
         (verb-group-edge (main-verb layout)))
    (if (and subject-edge verb-group-edge)
      (if (adjacent-edges? subject-edge verb-group-edge)
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
          (tr :subject+verb edge subject-edge verb-group-edge)
          edge)
        (tr :subject-not-adjacent))
      (tr :no-subject-or-verb-edges))))


;;--- extending out from NPs

(defun look-for-np-extensions ()
  ;; if there's an edge to the righ of each 'loose' np,
  ;; see if the two compose. Depends a lot on timing I suspect so that
  ;; we get the best edge to the right (i.e. has it expanded too)
  (dolist (np-edge (loose-nps (layout)))
    (tr :np-extends-rightwards? np-edge)
    (let* ((pos-after-np (pos-edge-ends-at np-edge))
           (edge-to-the-right (right-treetop-at/edge pos-after-np))
           edge  )
      (when (edge-p edge-to-the-right)
        (tr :np-check-right-expansion edge-to-the-right)
        (setq edge (check-one-one np-edge edge-to-the-right))
        ;; 1. How to we know this is the longest version
        ;; of the NP? We're coming from the right which makes
        ;; me /think/ that's the case, but how do we Know?
        ;; 2. Should we now look left like the else clause
        ;; does? How to we keep this NP in play going forward.
        (if edge
          (tr :np-extended-rightward edge)
          (tr :np-did-not-extend-rightward)))

      ;; Is an np like this a good anchor? 
      ;;Should we look to the left while
      ;; we're here? Or wait?
      (let* ((base-edge (or edge np-edge))
             (pos-before-np (pos-edge-starts-at base-edge))
             (edge-to-the-left (left-treetop-at/edge pos-before-np)))
        (if edge-to-the-left
          (then
           (tr :looking-leftward-from-np-at base-edge edge-to-the-left)
           (let ((new-edge (check-one-one edge-to-the-left base-edge)))
             (if new-edge
               (tr :np-leftwards-composed new-edge)
               (tr :np-leftwards-did-not-compose))))
          (tr :no-edge-to-the-left-of base-edge))))))


;;--- expanding out from verbs

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
    (when form ;; therefore there's an edge
      (tr :looking-at-edge-after-verb form right-neighbor)
      (cond
       ((eq form category::np)
        (tr :looking-for-bounded-np-after vg-edge)
        (if (right-bounded-np? right-neighbor)
          (let ((edge (check-one-one vg-edge right-neighbor)))
            (if edge
              (tr :verb-composed-with-np edge)
              (tr :verb-did-not-compose-with-np vg-edge right-neighbor)))
          (tr :np-not-right-bounded right-neighbor)))
       ((multiply-edges vg-edge right-neighbor)
        ;; Does a syntax rule apply?
        ;; Example at hand is "is slow"
        (let ((edge (check-one-one vg-edge right-neighbor)))
          (if edge
            (tr :verb-composed-with-neighbor right-neighbor edge)
            (tr :verb-did-not-compose-with-np vg-edge right-neighbor))))))))


;;--- looking for prepositions that are extensions of the predicate

(defun look-for-prep-binders ()
  (dolist (prep-edge (prepositions (layout)))
    (unless (edge-used-in prep-edge)
      (let ((preposition (edge-left-daughter prep-edge))
            (left-neighbor (next-treetop/leftward prep-edge)))
        (when left-neighbor ;; could be sentence-initial
          (let ((head-word (find-head-word left-neighbor)))
            (unless head-word
              (error "can't find head word in ~a" left-neighbor))
            (push-debug `(,prep-edge ,left-neighbor
                          ,preposition ,head-word))
            ;; (setq prep-edge (car *) left-neighbor (cadr *) preposition (caddr *) head-word (cadddr *))
            (if (takes-preposition? head-word preposition)
              (let ((edge (check-one-one left-neighbor prep-edge)))
                ;; New master shortcuts will make a rule for vg+prep
                ;; that's specific to the case and allows for 
                ;; recategorizing. For now we cheat with a syntactic rule
                (if edge
                  (tr :took-preposition left-neighbor preposition edge)
                  (tr :does-not-take-preposition left-neighbor preposition)))
              (tr :does-not-take-preposition left-neighbor preposition))))))))


;;---- leading prepositional adjunct, possible comma

(defun try-parsing-leading-pp ()
  (let ((prep-tt (starts-with-prep (layout))))
    (look-for-bounded-constituent-after-prep prep-tt)
    (let ((edge (edge-used-in prep-tt)))
      ;; We succeeded. Could also have the look for return it's
      ;; edge. //// Now what do we do? This is a property of
      ;; the whole rest of the clause (which we don't have yet)
      ;; and we need to establish that.
      (when edge
        ;;///// to do: swallow any comma that's there
        ))))
        
    
;;--- of

(defun try-to-compose-of-complements ()
  (dolist (of-edge (of-mentions (layout)))
    (push-debug `(,of-edge))
    (break :stub)))



;;--- trying to form prepositional phrases: np or vp complements

(defun try-simple-pps ()
  ;; go through the list of prepositions.
  ;; Stipulate (for now) that we've handled an verb-owned pps
  ;; before this
  ;; If there's a 'bounded' np to the right of the preposition
  ;; compose them. 
  ;; Also look for a vp, which should be a participle, but need
  ;; to modify some verb-creation rules to endure that. 
  ;;////  what's the fall back if that condition isn't satisfied?
  (dolist (prep-edge (prepositions (layout)))
    ;; n.b. it's a push list, so we're going right to left
    (tr :trying-the-preposition prep-edge)
    (look-for-bounded-constituent-after-prep prep-edge)))

(defun look-for-bounded-constituent-after-prep (prep-edge)
  (let* ((pos-after-prep (pos-edge-ends-at prep-edge))
         (right-neighbor (right-treetop-at/edge pos-after-prep))
         (form (when (edge-p right-neighbor)
                 (edge-form right-neighbor))))
    ;;/// prepositions can end sentences. What do we make of that?
    ;; e.g. the form could be nil because we're up against a period or EOS
    ;; Probably make that another sister 'try' routine.
    (if form
      (then
       (tr :prep-followed-by form right-neighbor)
       (cond 
        ((eq form category::np)
         (if (right-bounded-np? right-neighbor)
           ;; then it safe to make the pp
           (let ((edge (check-one-one prep-edge right-neighbor)))
             (if edge
               (tr :prep-composes-to-form edge)
               (tr :does-not-compose-with prep-edge right-neighbor)))
           (tr :np-not-right-bounded right-neighbor)))
        ((eq form category::vp)
         (let ((edge (check-one-one prep-edge right-neighbor)))
           (if edge
             (tr :prep-composes-to-form edge)
             (tr :does-not-compose-with prep-edge right-neighbor))))))
      (tr :no-edge-to-the-right-of prep-edge))))


;;--- conjunction

(defun try-spanning-conjunctions ()
  ;; For now do the easy thing of looking only for the same
  ;; labels to either side
  (let* ((conjuncts (conjunctions (layout)))
         (count (length conjuncts)))
    (push-debug `(,count ,conjuncts)) (break "work out conjunctions")
    (when (= count 2)
      ;; The question is how to determine what patterns of
      ;; conjunction we have within this sentence. 
      (let ((c1 (car conjuncts))
            (c2 (cadr conjuncts)))
        (let ((edge-to-the-right-of-c1 (next-treetop/rightward c1))
              (edge-to-the-left-of-c1 (next-treetop/leftward c1))
              (edge-to-the-right-of-c2 (next-treetop/rightward c2))
              (edge-to-the-left-of-c2 (next-treetop/leftward c2)))
          (push-debug `(,edge-to-the-left-of-c1 ,edge-to-the-left-of-c2
                        ,edge-to-the-right-of-c1 ,edge-to-the-right-of-c2))
          (cond
           ((eq edge-to-the-left-of-c1 edge-to-the-right-of-c2)
            ;; we have a sequence of conjoinable elements
            (let ((h1 (conjunction-heuristics edge-to-the-left-of-c1
                                              edge-to-the-right-of-c1))
                  (h2 (conjunction-heuristics edge-to-the-left-of-c2
                                              edge-to-the-right-of-c2)))
              (if (and h1 h2)
                (then
                 (conjoin-multiple-edges ;;/// pre-build for comma-delimited list
                  `(,edge-to-the-left-of-c2
                    ,edge-to-the-left-of-c1
                    ,edge-to-the-right-of-c1)))
                (break "conjunts not consistent"))))
           (t (break "different conjunction pattern"))))))))
        
    

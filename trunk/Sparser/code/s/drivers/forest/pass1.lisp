;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2-15 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "pass1"
;;;   Module:  "drivers;forest:"
;;;  Version:  March 2015

;; Broken out of island-driving 10/23/14.
;; RJB 12/14/2014 -- simple fix to prevent failure in simple-subject-verb when subject is a pronoun -- need to treat pronouns better <<DAVID>>
;; 1/1/2015 fix bug in check-for-subcatorized-pps -- result of a push-debug passed through as the value of a the function in case when the break
;;  was #+ignored
;; 3/12/15 Rewrote try-spanning-conjunctions to leave out the special cases and not
;;  worry about how many conjunction edges there are. 

(in-package :sparser)
      
(defvar CATEGORY::VP)
(defvar CATEGORY::SUBJ+VERB)
(defvar CATEGORY::S)
(defvar PAREN-REFERENT)
(defvar *THE-PUNCTUATION-PERIOD*)
;;;----------------------
;;; subject + verb group
;;;----------------------

(defun try-simple-subj+verb ()
  (tr :try-simple-subj+verb)
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
          (if edge
              (then 
                (tr :subject+verb edge subject-edge verb-group-edge)
                (setf (edge-form edge) (category-named 'subj+verb))
                edge)
              (tr :no-subject-or-verb-edges)))
        (tr :subject-not-adjacent subject-edge verb-group-edge))
      (tr :no-subject-or-verb-edges))))
 
     
;;;------------------------
;;; extending out from NPs
;;;------------------------

(defun look-for-np-extensions ()
  ;; if there's an edge to the righ of each 'loose' np,
  ;; see if the two compose. Depends a lot on timing I suspect so that
  ;; we get the best edge to the right (i.e. has it expanded too)
  (dolist (np-edge (there-are-loose-nps?)) ;; filtered by used-in
    (tr :np-extends-rightwards? np-edge)
    (let* ((pos-after-np (pos-edge-ends-at np-edge))
           (edge-to-the-right (right-treetop-at/edge pos-after-np))
           edge  )
      (when (and (edge-p edge-to-the-right)
                 (null (edge-used-in edge-to-the-right)))
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
        (if (and edge-to-the-left
                 (null (edge-used-in edge-to-the-left)))
          (then
           (tr :looking-leftward-from-np-at base-edge edge-to-the-left)
           (let ((new-edge (check-one-one edge-to-the-left base-edge)))
             (if new-edge
               (tr :np-leftwards-composed new-edge)
               (tr :np-leftwards-did-not-compose))
             ;; if we found one, maybe we'll find more
             (when new-edge
               (look-for-short-leftward-extension new-edge))))
          (tr :no-edge-to-the-left-of base-edge))))))



;;;--------------------------
;;; expanding out from verbs
;;;--------------------------

(defun try-simple-vps ()
  ;; Go through the verbs. There is probably an np following
  ;; each, though if we deliberately consulted the subcat patterns
  ;; of the verb we'd know that definitively.
  ;; If there's a bounded np then compose them.
  (dolist (vg-edge (post-mvb-verbs (layout)))
    (unless (edge-used-in vg-edge)
      (let ((edge (look-for-bounded-np-after-verb vg-edge)))
        ;; if we now have a vp, lets see if we can extend it
        ;; to the left
        (when edge
          (look-for-short-leftward-extension edge))))))

(defun look-for-bounded-np-after-verb (vg-edge)
  (tr :trying-to-extend-vg vg-edge)
  (let* ((right-neighbor (right-treetop-at/edge 
                          (pos-edge-ends-at vg-edge)))
         (form (when (edge-p right-neighbor)
                 (edge-form right-neighbor))))
    (when form ;; therefore there's an edge
      (tr :looking-at-edge-after-verb form right-neighbor)
      (cond
       ((eq form category::np)
        ;;(tr :looking-for-bounded-np-after)
        (if (right-bounded-np? right-neighbor)
          (let ((edge (check-one-one vg-edge right-neighbor)))
            (tr :edge-after-np-is-a-boundary) 
            (then
             (if edge
               (tr :verb-composed-with-np edge)
               (tr :verb-did-not-compose-with-np vg-edge right-neighbor))
             edge))
          (else (tr :np-not-right-bounded right-neighbor)
                nil)))
       ((multiply-edges vg-edge right-neighbor)
        ;; Does a syntax rule apply?
        ;; Example at hand is "is slow"
        (let ((edge (check-one-one vg-edge right-neighbor)))
          (if edge
            (tr :verb-composed-with-neighbor right-neighbor edge)
            (tr :verb-did-not-compose-with-np vg-edge right-neighbor))
          edge ))))))


;;;---------------------------------------------------
;;; prepositions that are extensions of the predicate
;;;---------------------------------------------------

(defun look-for-prep-binders ()
  (dolist (prep-edge (prepositions (layout)))
    (unless (edge-used-in prep-edge)
      (let ((preposition (find-preposition prep-edge))
            (left-neighbor (left-treetop-at/edge prep-edge)))
        (when (and left-neighbor ;; could be sentence-initial
                   (not (word-p left-neighbor)))
          ;; The 'not' is for when the actually is no left-neighbor
          ;; because this preposition is at the beginning of the
          ;; sentence.
          ;;/// that deserves an independent check
          (let ((head-word (find-head-word left-neighbor)))
            (when head-word
              (push-debug `(,prep-edge ,left-neighbor
                            ,preposition ,head-word))
              ;; (setq prep-edge (car *) left-neighbor (cadr *) preposition (caddr *) head-word (cadddr *))
              ;(when (eq preposition (word-named "as")) ;; J3
              ;  (break "binder"))
              (unless (punctuation? head-word) ;; comma before "such as")
                (if (or (takes-preposition? head-word preposition)
                        (takes-preposition? left-neighbor preposition))
                  (let ((edge (check-one-one left-neighbor prep-edge)))
                    (if edge
                      (tr :took-preposition left-neighbor preposition edge)
                      (tr :does-not-take-preposition left-neighbor preposition)))
                  (tr :does-not-take-preposition left-neighbor preposition))))))))))


;;;-----------------------------------------------
;;; leading prepositional adjunct, p ossible comma
;;;-----------------------------------------------

(defun try-parsing-leading-pp ()
  (let ((prep-tt (starts-with-prep (layout))))
    (look-for-bounded-constituent-after-prep prep-tt)
    (let ((edge (edge-used-in prep-tt)))
      (if edge
        (tr :parse-leading-pp edge)
        (tr :could-not-parse-leading-pp edge))
      (when edge
        ;; //// Now what do we do? This is a property of
        ;; the whole rest of the clause (which we don't have yet)
        ;; and we need to establish that.
        ;;///// to do: swallow any comma that's there
        edge))))
   
;;;---- 
;;; of
;;;---- 

(defun try-to-compose-of-complements ()
  ;; Presumes that by the time this runs that the two constituents
  ;; to either side of the 'of' are maximal. 
  (dolist (of-edge (of-mentions (layout)))
    (unless (edge-used-in of-edge)
      (tr :of-mention of-edge)
      (push-debug `(,of-edge))
      (let ((leftward-edge (left-treetop-at/edge of-edge))
            (rightward-edge (right-treetop-at/edge of-edge))
            result-edge  )
        (tr :left-right-of-of leftward-edge rightward-edge)
        (push-debug `(,of-edge ,leftward-edge ,rightward-edge))
        ;; Sometimes the left edge wants the 'of', so look
        ;; at that case first.
        (let ((left-composition (check-one-one leftward-edge of-edge)))
          (if left-composition
            (tr :of-left-composition left-composition)
            (tr :of-left-failed))
          (let ((right-composition
                 (unless left-composition
                   (check-one-one of-edge rightward-edge))))
            (if right-composition
              (tr :of-right-composition right-composition)
              (tr :of-right-failed))

            (setq result-edge
               (cond
                (left-composition
                  (tr :trying-to-compose left-composition rightward-edge)
                  (let ((new-edge
                         (check-one-one left-composition rightward-edge)))
                    (if new-edge
                      (tr :composition-succeeded new-edge)
                      (tr :composition-failed))
                    new-edge))
                 (right-composition
                  (tr :trying-to-compose leftward-edge right-composition)
                  (let ((new-edge
                         (check-one-one leftward-edge right-composition)))
                    (if new-edge
                      (tr :composition-succeeded new-edge)
                      (tr :composition-failed))
                    new-edge))))
            ;;(setf (edge-form result-edge) category::np)
            ;; This should be looked at
            ))
          ;;(break "of")
          result-edge))))



;;;------------------------------------------------------------
;;; trying to form prepositional phrases: np or vp complements
;;;------------------------------------------------------------

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
    (unless (edge-used-in prep-edge)
      (tr :trying-the-preposition prep-edge)
      (look-for-bounded-constituent-after-prep prep-edge))))

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
        ((or (eq form category::vp)
             (eq form category::vg) ;; maybe the vg should be elevated?
             (eq form category::subj+verb) ;; "GTP loading"
             (eq form category::s)) ;; that after edge elevation
         (let ((edge (check-one-one prep-edge right-neighbor)))
           (if edge
             (tr :prep-composes-to-form edge)
             (tr :does-not-compose-with prep-edge right-neighbor))))))
      (tr :no-edge-to-the-right-of prep-edge))))


;;;-------------
;;; conjunction
;;;-------------

(defun look-for-short-obvious-conjunctions ()
  (let ((conjuncts (there-are-conjunctions?)))
    (when (null (cdr conjuncts))
      (let* ((c1 (car conjuncts))
             (left-edge (next-treetop/leftward c1))
             (right-edge  (next-treetop/rightward c1)))
        (push-debug `(,left-edge ,right-edge ,c1))
        (tr :trying-to-conjoin left-edge right-edge)
        ;; this isn't "short" so much as "what would have worked
        ;; before", which certainly counts. This code is
        ;; in conjunction8
        (unless (or (literal-edge? left-edge) ;; comma
                    (literal-edge? right-edge))
          (let ((heuristic (conjunction-heuristics left-edge right-edge)))
            (if heuristic
              ;; conjoin/2 looks for leftwards
              (let ((edge (conjoin/2 left-edge right-edge heuristic)))
                (tr :conjoined-edge edge)
                edge)
              (tr :no-heuristics-for left-edge right-edge))))))))

(defun try-spanning-conjunctions ()
  ;; This is the version used in later situations and applying to
  ;; much larger phrases that may only be composable on the basis
  ;; of having a common form (both NPs, both clauses, etc.)
  (let ((conjunction-edges (there-are-conjunctions?)))
    (when conjunction-edges
      (dolist (conj-edge conjunction-edges)
        ;; given how the list was accumulated this moves right to left
        ;; through the sentence
        (let ((edge-to-the-left (left-treetop-at/edge conj-edge))
              (edge-to-the-right (right-treetop-at/edge conj-edge)))
          (unless (or (literal-edge? edge-to-the-left) ;; comma
                      (literal-edge? edge-to-the-right))
            (tr :trying-to-conjoin  edge-to-the-left edge-to-the-right)
            (push-debug `(,edge-to-the-left ,edge-to-the-right))
            (let ((*allow-form-conjunction-heuristic* t))
              (declare (special *allow-form-conjunction-heuristic*))
              (let ((heuristic (conjunction-heuristics edge-to-the-left 
                                                       edge-to-the-right)))
                (if heuristic
                  (let ((edge 
                         (conjoin-two-edges edge-to-the-left edge-to-the-right heuristic)))
                    (tr :conjoined-edge edge)
                    edge)
                  (else
                   (tr :no-conjunction-heuristics-applied)
                   nil))))))))))

#| This was a special case that came up in the Julie sentences. 
   It would be better to make this part of the search that conjoin-two-edges
   already does for comma-separated conjuncts.
(count (length conjuncts))
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
                (tr :two-conjuncts-not-consistent))))
           (t (tr :different-two-conjunction-pattern))))))  |#
 

;;;-------------
;;; parentheses
;;;-------------

(defun handle-parentheses ()
  ;; For the moment, just glom these on to the np to their immediate
  ;; left. The parser runs between the parens, and we'll want to use
  ;; the information it finds, e.g. for this case
  ;;   Guanine nucleotide Exchange Factors (GEFs)
  ;; it sees the GEFs and spans it as a bio-entity since it happens
  ;; to be known. That's the typical usage though references also show
  ;; up within parentheses and even real parenthetical comments. They all
  ;; bind to their left though.
  ;;/// Mine from model/core/names/parens-after-name.lisp
  (dolist (paren-edge (parentheses (layout)))
    (let ((left-neighbor (left-treetop-at/edge paren-edge)))
      (when left-neighbor ;; conceivably it could be sentence initial
        ;; but its more likely to be an edge than not        
        (knit-parens-into-neighbor left-neighbor paren-edge)))))

(defun knit-parens-into-neighbor (left-neighbor paren-edge)
  (declare (special left-neighbor paren-edge))
  (tr :parens-after left-neighbor paren-edge)
  (let* ((referent (edge-referent left-neighbor))
         (constituents (edge-constituents paren-edge))
         (count (when constituents ;;///review the code to guarentee this
                  ;; count is a crude 1st-cut distinction in what's inside 
                  ;; the parens
                  (- (length constituents) 2)))
         (paren-referent (referent-of-parentheticial-expression
                          count paren-edge)))

    (push-debug `(,left-neighbor ,paren-edge))
    (unless (individual-p referent)
      (error "Referent of left-neighbor to parentheses is not an individual"))
    #+ignore
    (bind-variable (lambda-variable-named 'trailing-parenthetical) ;; in terms
                   paren-referent
                   referent)
    ;;// now knit it in. A form rule would be best. It could handle the
    ;; binding as well, but j9 shows that the neighbor is not always
    ;; going to be obvious.
    (let ((edge (make-chart-edge ;; very drawn out version. More reason for rule
                 :left-edge left-neighbor
                 :right-edge paren-edge
                 :starting-position (pos-edge-starts-at left-neighbor)
                 :ending-position (pos-edge-ends-at paren-edge)
                 :category (edge-category left-neighbor)
                 :form (edge-form left-neighbor)
                 :rule-name 'knit-parens-into-neighbor
                 :referent referent)))
      (tr :new-edge-incorporating-parens edge)
      edge )))

(defun referent-of-parentheticial-expression (count paren-edge)
  ;; If there's one interior edge return it's referent. 
  ;; If there are more edges then try to categorize them but
  ;; for now returning nil is ok. In general the content of the
  ;; interior dictates the relationship that we bind so we would
  ;; pass that back as a value
  (if (null count) ;; no constituents were recorded
    nil
    (let* ((all-constituents (edge-constituents paren-edge))
           ;; caller already checked that these exist
           (interior-edge/s (subseq (cdr all-constituents)
                                    0 count)))
      ;;(break "interior-edge/s = ~a" interior-edge/s)           
      (case count
        (1 (edge-referent (car interior-edge/s)))
        (otherwise
         ;;//// defacto stub
         nil)))))
    

;;;----------------------------
;;; subcategorization patterns
;;;----------------------------

(defun apply-subcat-patterns ()
  (let ((edges (known-subcat-pattern (layout))) ;; right to left
        new-edges )
    ;; When we have several alternative patterns, 
    ;; we'll try them until one of them succeeds.
    (dolist (tt edges)
      ;; for each treetop that have subcategorization information
      (let ((prep-entries (known-subcategorization? tt)))
        (when prep-entries
          (let ((edge (check-for-subcatorized-pps tt prep-entries)))
            (when edge
              (push edge new-edges))))))
              ;;/// having completed one, look for another
    new-edges))

(defun check-for-subcatorized-pps (head-tt prep-entries)
  (push-debug `(,head-tt ,prep-entries))
  (let* ((next-position (pos-edge-ends-at head-tt))
         (next-tt (right-treetop-at/edge next-position)))
    (when (eq next-tt *the-punctuation-period*)
      ;; nothing beyond here. Don't look
      (return-from check-for-subcatorized-pps nil))

    (let ((word (edge-left-daughter next-tt))
          (following-tt (right-treetop-at/edge next-tt)))

    (when (and word (word-p word))
      (let ((subcat (assq word prep-entries)))
        (when subcat
          (let ((v/r (subcat-restriction subcat))
                (np-ref (when following-tt (edge-referent following-tt))))

            (if (and np-ref (itypep np-ref v/r))
              (let ((head-ref (edge-referent head-tt))
                    (variable (subcat-variable subcat)))
                (bind-variable variable np-ref head-ref)
                (let ((edge (make-edge-over-long-span 
                        (pos-edge-starts-at head-tt)
                        (pos-edge-ends-at following-tt)
                        (edge-category head-tt)
                        :rule subcat
                        :form (edge-form head-tt) ;;/// This will be vg. Needs to becomes vp.
                        :referent head-ref
                        :constituents `(,head-tt ,next-tt ,following-tt))))
                  (tr :subcat-pattern-succeeded edge)
                  (elevate-form-given-subcat edge head-tt subcat)
                  edge))
              (else
               (push-debug `(,np-ref ,v/r ,following-tt))
                #+ignore
                (break "Subcat of ~s: ~a is not a ~a Should that change?"
                      (word-pname word) np-ref v/r)
                (print `(!!! subcat of , (word-pname word) ":" ,np-ref is not a ,v/r Should that change))
                ;; MUST RETURN A NIL, and not the result of the push-debug
                nil)))))))))

#+ignore
(defun follow-out-pattern (start-pos tt-sequence)
  (let ( nps-seen  tts )
    (do* ((next-position start-pos
                         (pos-edge-ends-at next-tt))
          (next-tt (right-treetop-at/edge next-position)
                   (right-treetop-at/edge next-position))
          (next-term (car tt-sequence) (car remaining-tts))
          (remaining-tts (cdr tt-sequence) (cdr remaining-tts)))
         ((null next-term) ;; or eos or no next-tt
          )
      (push-debug `(,next-term ,next-tt))
      ;; (setq next-term (car *) next-tt (cadr *))
      ;; (break "next-term = ~a~%next-tt = ~a" next-term next-tt)
      (push next-tt tts)
      (etypecase next-term
        (word (unless (eq (edge-left-daughter next-tt)
                          next-term)
                (return-from follow-out-pattern nil)))
        (category
         (let ((label (if (form-category? next-term)
                        (edge-form next-tt)
                        (edge-category next-tt)))) ;; super categories?
           (if (eq label next-term)
             (push next-tt nps-seen)
             (return-from follow-out-pattern nil))))))
    (values (nreverse nps-seen)
            (nreverse tts))))

#+ignore
(defun follow-out-binding-pattern (referent variables tts-to-bind)
  (do ((next-var (car variables) (car other-vars))
       (next-tt (car tts-to-bind) (car other-tts))
       (other-vars (cdr variables) (cdr other-vars))
       (other-tts (cdr tts-to-bind) (cdr other-tts)))
      ((null next-var))
    (bind-variable next-var (edge-referent next-tt) referent))
  referent)

#+ignore
(defun check-subcat-pattern (pattern head-edge)
  (let ((tt-sequence (car pattern))
        (variables (cadr pattern)))
    (tr :trying-subcat-pattern tt tt-sequence)
    (multiple-value-bind (tts-to-bind tts)
                         (follow-out-pattern 
                          (pos-edge-ends-at tt) tt-sequence)
      (if tts-to-bind
        (let ((referent (edge-referent tt))
              (last-tt (car (last tts))))
          (follow-out-binding-pattern referent variables tts-to-bind)
          (let ((edge (make-edge-over-long-span 
                       (pos-edge-starts-at tt)
                       (pos-edge-ends-at last-tt)
                       (edge-category tt)
                       :rule pattern
                       :form (edge-form tt) ;;/// This will be vg. Needs to becomes vp.
                       :referent referent
                       :constituents tts)))
            (tr :subcat-pattern-succeeded edge)
            (elevate-form-given-subcat edge head-edge pattern)
            edge))
        (else
         (tr :subcat-pattern-failed)
         nil)))))
  


;;;-----------------------------------------------
;;; roll up from the right until boundary reached
;;;-----------------------------------------------

(defun look-for-short-leftward-extension (edge)
  ;; This is rolling up from the right after identifying an edge
  ;; that was created by particularly trustworthy means. 
  ;; Assuming there are rules allowing it (usually the case
  ;; when syntac rules are included), this will keep making
  ;; compositions to the left until a boundary is reached. 
  (tr :trying-for-short-extension-leftward edge)
  (let ((left-neighbor (left-treetop-at/edge edge)))
    (tr :short-leftward-neighbor left-neighbor)
    (if (or (word-p left-neighbor) ;; a period
            (expansion-boundary? left-neighbor))
      (tr :short-leftward-neighbor-is-boundary)
      (let ((new-edge (check-one-one left-neighbor edge)))
        (if new-edge
            (then 
              (tr :short-leftward-composition new-edge)
              (look-for-short-leftward-extension new-edge))
            (tr :short-leftward-did-not-compose))))))


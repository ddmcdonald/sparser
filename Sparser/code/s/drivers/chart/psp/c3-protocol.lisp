;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2016 David D. McDonald  -- all rights reserved
;;; This file is part of the SIFT-Brandeis C3 project
;;;
;;;     File:  "C3-protocol"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  March 2016

;; Initiated 9/18/13 by analogy to inititate-top-edges-protocol.
;; 10/9/13 started putting meat on its bones. Debugging segement 
;; scan through 1/21/14. Debugging extension of scan into next
;; segment through 4/7/14. Tweaking to get all the way to end of
;; source through 5/11/14. Bug fix 12/15/15 Tweaked segment scanner
;; a lot through April. 

(in-package :sparser)

(defvar *reached-eos* nil
  "In the regular protocol, its much easier to know what
   remains to be done once you've scanned the the eos word.
   Here things change as we work out how things should be
   done. Until they are (or we've moved all this back to
   some variation on the regular protocol) we punt and use
   this flag that read-through-segment-to-end sets.")

(defun initiate-c3-protocol ()
  ;; Called from lookup-the-kind-of-chart-processing-to-do
  ;; We pull in the start marker and check that we're in the
  ;; right place, then we start the actual scan.
  (let* ((p0 (scan-next-position))  ;; status = :scanned
         (ss (pos-terminal p0)) ;; #<word SOURCE-START>
         (p1 (scan-next-position)))
    (declare (ignore ss))
    ;; need them to just to keep straight what the scan does

    (setq *reached-eos* nil) ;; initialize
    (scan-segment p1)))


(defun determine-edge-form-for-state-changes (edges pos-before)
  "Subroutine of state-sensitive-rightward-march that buries the
   details of having one or more edges created for the word."
  (cond
   ((null (cdr edges))
    (edge-form (car edges)))
   ((eq :multiple-initial-edges (top-edge-at/starting pos-before))
    ;; two cases. "a" => a literal edge and a real one
    ;;/// not going to worry about it yet
    (let ((top-edge (highest-edge-starting-at pos-before)))
      (edge-form top-edge)))
   ;; Case here for two or more "real" edges that reflect
   ;; different senses of the word -- "one" is strong case in point
   (t 
    (error "Need new way to determine edge form at ~a~
          ~%for ~a" pos-before edges))))

(defun setup-and-delimit-next-chunk (pos-before)
  "Return the position just after the last item"
  (declare (special *chunk-forms* *reached-eos*))
  ;; Caller should check for eos since we're always 
  ;; going to end one position ahead of the end
  ;; of the chunk

  ;; 1st prime the pump
  (unless (pos-terminal pos-before)
    (scan-next-position))

  (let ((word (pos-terminal pos-before))
        (pos-after (chart-position-after pos-before)))
    (tr :incseg-start word pos-before)

    ;; eos check -- eos terminates its segment
    #+ignore(when (eq word *end-of-source*)
      (setq *reached-eos* t)
      (lsp-break "1st reached eos")
      (return-from setup-and-delimit-next-chunk pos-before))

    (install-terminal-edges word pos-before pos-after)

    (let* ((ev (pos-starts-here pos-before))
           (forms (starting-forms ev *chunk-forms*)))

      ;; "black" could start an adjp
      ;(assert (null (cdr forms)))
      (tr :inseg-chunk-start-form (car forms))

      (loop
        ;; The word we just made the edges for is
        ;; part of the segment. The question is whether
        ;; the next word is
        (setq pos-before pos-after
              pos-after (chart-position-after pos-before))

        (unless (pos-terminal pos-before)
          (scan-next-position))

        (setq word (pos-terminal pos-before))
        (tr :inseg-loop-scan word pos-before)

        (when (eq word *end-of-source*)
          (setq *reached-eos* t)
          ;;(lsp-break "reached eos in loop")
          ;; have to handle the final segnent
          (return-from setup-and-delimit-next-chunk pos-before))

        (let* ((next-edges
                (install-terminal-edges word pos-before pos-after))
               (form (determine-edge-form-for-state-changes next-edges pos-before)))
          (tr :inseg-installed-edges next-edges)
          (tr :inseg-next-form form)

          ;; given what the form of the (edge over the) previous word
          ;; was. If the form of this new edge compatible with it?
          ;; If so, extend the chunk, if not we're done.

          (when (null forms)
            ;; we've scanned something that is not an np, vg, or adjp
            ;; so we should skip over it. That means leaving
            ;; this loop returning the position after the word/edges
            ;; we're skipping. Prepositions will do this
            (tr :inseg-finished-on-null-form)
            (return-from setup-and-delimit-next-chunk :skip))

          ;; When we get an incompatible form we've gone
          ;; one word further that the end of the segment,
          ;; e.g. to the "has" in the standard example
          (unless (compatible-form? (car forms) form)
            (tr :inseg-finish-incompatible pos-before)
            (return-from setup-and-delimit-next-chunk pos-before))

          (tr :inseg-loop-with-at (car forms) form pos-before))))))


(defun compatible-form? (form-type form)
  ;; compare to compatible-head?
  (declare (special *vg-word-categories*
                    category::det category::approximator
                    category::number category::adjective
                    category::common-noun category::proper-noun))
  (assert (category-p form))
  (let ((form-name (cat-symbol form)))
    (ecase form-type
      (ng ;; cf. ng-compatible? or *ng-head-categories*
       (memq form-name '(category::det
                         category::approximator
                         category::number
                         category::adjective
                         category::common-noun
                         category::proper-noun)))
      (vg
       (memq form-name *vg-word-categories*))
      (adjp
       (lsp-break "not ready to handle an adjp")))))
    

;;; incremental routines

(defgeneric escan (chart-item)
  (:documentation "'e' as in Earley. The item will be
       a word eventually. Right now it's an edge.
       Move the dot to the other end of the item and move
       other aspects of the state as appropriate"))

(defmethod escan ((e edge))
  (let ((end-pos (pos-edge-ends-at e))
        (state (current-incremental-state)))
    (setf (dot state) end-pos)
    (pop-predicted-path e)))

(defgeneric pop-predicted-path (item)
  (:documentation "Look at the predicted path. Depending on what
    the item is (roughly a word vs. an edge), pop off the successive
    elements of the path until we reach either the lexicalized word
    or a parameter."))

(defmethod pop-predicted-path ((e edge))
  (push-debug `(,e)) (break "starting the pop"))


(defgeneric epredict (item)
  (:documentation
   "Given the item, set up its prediction"))

(defmethod epredict ((e edge))
  "Depending on what state we're in, Look up the phrase 
  that goes with the referent of this edge and set up
  its projection."
  (let* ((state (current-incremental-state))
         (interp-state (state-of-interpretation state)))
    (case interp-state
      (:initial
       (let* ((referent (edge-referent e))
              (type (etypecase referent
                      (individual (itype-of referent))
                      (category referent)))
              (mapping (mumble::krisp-mapping type)))
         (assert mapping)
         (push-debug `(,mapping))
         (instantiate-predictions mapping)))
      (otherwise
       (push-debug `(,state ,e))
       (error "Don't know what to predict in the state ~a"
              interp-state)))))

(defun instantiate-predictions (mapping) ;; a category-linked-phrase
  "Look up the phrase and run its phrase structure
   and variable restriction out into the context."
  ;; Ignore possibility of several trees
  ;; Starting with the simplest starting state, i.e. sentence
  ;; start, which fits the situation in the caller right now
  (let* ((state (current-incremental-state))
         (lp (mumble::linked-phrase mapping)) ;; lexicalized phrase
         (phrase (mumble::phrase lp))         
         (alist (mumble::parameter-variable-map mapping)))
    (setf (predicted-path state) 
          (copy-list
           ;; make a copy so we don't munge the version that Mumble uses
           (car (mumble::definition phrase))))
    (setf (predicted-path state)
          (incorporate-lexicalizations-into-predicted-path lp))
    (setf (predicted-parameter-bindings state) alist)))


(defgeneric ecomplete (item)
  (:documentation
   "We've just finished the analysis of item."))




(defun scan-segment (start-pos)
  ;; Looks like state-sensitive-rightward-march while
  ;; using the criteria of the chunker to delimit the segment
  (tr :starting-c3-segment start-pos)
  (let* ((last-position (setup-and-delimit-next-chunk start-pos))
         (head-position (chart-position-before last-position))
         (position start-pos)
         edge )

    (tr :delimited-c3-segment start-pos last-position)
    (when (eq start-pos last-position)
      (push-debug `(,last-position))
      (error "Empty segment?"))

    ;; Loop over the successive (single-word) edges in the
    ;; segment. Bind *this-is-the-head* over the final one.
    ;; This takes the place of the hook in referent-from-unary-rule
    ;; that was based the prior design where we delimited
    ;; the segment before we made its edges
    (loop
      (setq edge (top-edge-at/starting position))
      (let ((*this-is-the-head* (eq position head-position))
            (referent (edge-referent edge))
            (rule (edge-rule edge)))
        (declare (special *this-is-the-head*))
        (incorporate-referent-into-the-situation 
         referent rule edge)
        (when (eq position head-position)
          (return))
        (setq position (chart-position-after position))))

    ;; After it gets to the head (assumed to be the last constituent
    ;; but verb groups are more interesting with adverbs and such)
    ;; are drops out of the loop, we need to span the whole
    ;; segment with an edge and update the sentential state
    (let ((edge (c3-process-segment-and-update-state
                 start-pos last-position)))

      ;; Now that we have analyzed the segment we need to fold in
      ;; the edge to the left. Like moving to the forest level
      ;; after every segment. For the ISR experiment there will
      ;; always be an edge here
      (roll-up-edges-to-the-left edge) ;; also updates state

      ;; presumably we now just scan the next segment
      (if *reached-eos*
        (terminate-chart-level-process)
        (scan-segment last-position)))))




(defun introduce-next-word (position-before head-word?)
  ;; called from scan-segment word-by-word
  (let ((word (pos-terminal position-before)))
    (unless (word-with-single-edge-rules? word)
      (push-debug `(,position-before ,word))
      (error "C3 only runs on known words. The word ~s at p~a is unknown"
             (word-pname word) (pos-token-index position-before)))
    (let ((*this-is-the-head* head-word?))
      (declare (special *this-is-the-head*))    
      (let ((position-after (chart-position-after position-before)))
        ;; All the good stuff now happens in the referent processing
        (install-terminal-edges word position-before position-after)))))



(defun read-through-segment-to-end (start-pos)
  (flet ((starting-bracket (p)
           (ev-boundary (pos-starts-here p))))
    ;; We're starting here because the previous segment ended here
    (let ((start-bracket (starting-bracket start-pos))
          (position-before start-pos) ;; for the loop
          (skip-]-check t) ;; for operating on the first word
          word-after  ] )
      (push-debug `(,start-pos ,start-bracket)) 
      ;;(break "start at ~a" start-pos)
      (tr :c3-segment-scan-start start-pos start-bracket)
      (unless start-bracket
        (if (= 1 (pos-character-index start-pos)) ;; p1
          (setq start-bracket phrase.[)
          (else
           (push-debug `(,start-pos))
           (error "Threading bug: no starting bracket"))))
      (interpret-open-bracket-as-segment-start start-bracket start-pos)
   
      (loop
        ;;  position-before -> word-after 
        (unless (pos-terminal position-before)
          (scan-next-position))
        (setq word-after (pos-terminal position-before))
        ;;(break "new position-before = ~a" position-before)

        (when (eq word-after *end-of-source*)
          (push-debug `(,start-pos ,position-before))
          (setq *reached-eos* t)
          (tr :read-through-scanned-eos)
          (if *left-segment-boundary*
            ;; there's more processing to do
            (return-from read-through-segment-to-end
              position-before)
            ;; else we're done
            (terminate-chart-level-process))) ;; does a throw

        (unless skip-]-check
          ;; we introduced the leading brackets as 
          ;; we ended the previous segment. We also wait one word
          ;; before checking for end-brackets
          ;; This does set-status :brackets-from-word-introduced on the position
          (introduce-leading-brackets word-after position-before)
          (setq ] (]-on-position-because-of-word? position-before word-after))
          (set-status :]-from-word-after-checked position-before)
          (setq skip-]-check nil))

        (push-debug `(,] ,position-before))
        ;;  (setq ] (car *) position-before (cadr *))
        (lsp-break "position = ~a" position-before)

        (if (and ] (bracket-ends-the-segment? ] position-before))                     
          (then
           (tr :c3-segment-scan-ended word-after position-before)
           (when (eq start-pos position-before)
             (push-debug `(,] ,position-before))
             (break "still not fixed: ~a" position-before))
           ;; bracket-check set the right-boundary global
           (unless (start-bracket-on? position-before)
             ;; Gets around stupid issue about how proper names
             ;; are labeled, which never came up because PNF
             ;; always got them.
             (add-nominal-start-bracket position-before))
           (return position-before))

          (else ;; loop around
           (setq skip-]-check nil)
           (setq position-before 
                 (chart-position-after position-before))
           (tr :c3-segment-advancing-to position-before)))))))
 

(defun c3-process-segment-and-update-state (start-pos last-pos)
  ;; called by scan-segment just after it gets out of its
  ;; accumulation loop, which includes the head edge. 
  ;; Can make the edge by fiat. Take the referent from the
  ;; head edge as put there by incorporate-phrasal-head and
  ;; take the form from the state and the label from the head edge
  ;; Now we can make a legitimate sentence-level state update.
  ;;//// What we need to do going forward is to parse within
  ;; the segment (with the normal machinery abstracted out from
  ;; pt) so those relations can be incorporated into the situation
  ;; and we have a normally formed edge instead of this silly
  ;; long-span
  (let ((edge (c3-segment-parse start-pos last-pos)))
    (push-debug `(,edge))
    (set-phrasal-state :initial-state) ;; reset phrase level
    (let* ((new-state (update-situation-state edge 'sentence))
           (var (indexical-for-state new-state))
           (referent (edge-referent edge)))
      (add-indexical-to-situation var referent)
      ;; Expand it here, now that it's got all it's parts
      (add-entity referent)
      edge)))


(defun roll-up-edges-to-the-left (edge)
  ;; Called from scan segment with responsibility to update the state
  (let ((right-edge edge) ;; easier to keep straight
        (left-edge (edge-ending-at (pos-edge-starts-at edge))))
    (when left-edge ;;///convert to if to add traces
      (let ((*edges-from-referent-categories* t)
            (*allow-pure-syntax-rules* t))
        (declare (special *allow-pure-syntax-rules*
                          *edges-from-referent-categories*))
        (let ((spanning-edge (check-one-one left-edge right-edge)))
          (unless spanning-edge
            (push-debug `(,left-edge ,right-edge))
            (error "e~a and e~a didn't compose"
                   (edge-position-in-resource-array left-edge)
                   (edge-position-in-resource-array right-edge)))
          ;; presumably we should update the state, but for
          ;; suv + enter the edge's form is sentence, which 
          ;; I suppose would move us to the discourse level
          ;; and I don't want to do that yet (5/12/14)
          spanning-edge)))))


(defun c3-segment-parse (start-position end-position)
  ;; This is a clone of parse-at-the-segment-level, which can't be
  ;; used as-is because it knits back to segment-parsed1 of the
  ;; standard protocol. Also we can make different assumptions
  ;; because, e.g., we know there is only one edge over every
  ;; word because we're going to do ambiguity in the situation,
  ;; and indeed that there is an edge over every word.
  (declare (special *trace-c3*))
  (tr :c3-segment-parse start-position end-position)
  (let* ((head-edge (edge-ending-at end-position))
         (head-starts-at (pos-edge-starts-at head-edge))
         (edge-just-to-the-left (edge-ending-at head-starts-at))
         (*edges-from-referent-categories* t)
         (*allow-pure-syntax-rules* t))
    (declare (special *allow-pure-syntax-rules* 
                      *edges-from-referent-categories*))
    (when *trace-c3* (tts))

    (when (eq (pos-edge-starts-at head-edge)
              start-position)
      (tr :c3-segment-parse-value head-edge)
      (return-from c3-segment-parse head-edge))
              
    ;; everthing acrues to the head, ///no provision yet for
    ;; composition of pre-head constituents
    ;;(break "before the loop")
    (let ((right-edge head-edge)
          (left-edge edge-just-to-the-left)
          edge  rule )
      (loop
        ;(break "Looking at e~a + e~a"
        ;      (edge-position-in-resource-array left-edge)
        ;      (edge-position-in-resource-array right-edge))
        ;; Open-coding check-one-one so can see what rule is used
        (setq rule (multiply-edges left-edge right-edge))
        (unless rule
          (tr :c3-no-rule left-edge right-edge))
        (setq edge (execute-one-one-rule rule
                                         left-edge
                                         right-edge))
        ;; N.b. there's a call to compose in there after the referent's
        ;; computed. 
        (unless edge
          (push-debug `(,left-edge ,right-edge))
          (error "e~a and e~a didn't compose"
                 (edge-position-in-resource-array left-edge)
                 (edge-position-in-resource-array right-edge)))
        (tr :c3-segment-edge left-edge right-edge edge rule)
        (if (eq (pos-edge-starts-at edge) start-position)
          (return)
          (else
           (setq right-edge edge)
           (setq left-edge (edge-ending-at (pos-edge-starts-at edge))))))
      (tr :c3-segment-parse-value edge)
      (generalize-segment-edge-form-if-needed edge)
      edge)))


;;;----------
;;;  gofers
;;;----------

(defun determine-from-from-phrasal-state ()
  ;; called from c3-process-segment-and-update-state and just does
  ;; a inline table lookup.
  ;; //// if this get's too big move it out to the states,
  ;; which might be easier for fledglings anyway.
  (let ((state (phrasal-state)))
    (case (name state)
      (:assembling-np (category-named 'np))
      (otherwise
       (push-debug `(,state))
       (error "No form category listed for ~a" state)))))


(defun start-bracket-on? (position)
  (let* ((edge-vector (pos-starts-here position))
         (bracket (ev-boundary edge-vector)))
    (when bracket
      ;; if they're laid down uniformly then this is all we need
      ;; but for now keeping this hook
      bracket)))

(defun add-nominal-start-bracket (position)
  (push-debug `(,position))
  ;; This open-codes do-boundary/begins-before which wants the
  ;; label (word or category) that's introducing the bracket so that
  ;; it can annotate the source of the bracket, which matters when
  ;; assessing stronger-bracket of one that might be already there.
  (let ((vector (pos-starts-here position)))
    (setf (ev-boundary vector) phrase.[)))


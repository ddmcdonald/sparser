;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER) -*-
;;; copyright (c) 2018-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "q-patterns"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  December 2019

;; Broken out from questions.lisp 8/7/18 to have all the formulation
;; heuristics in one place irrespective of what invokes them.

(in-package :sparser)


(defun make-question-and-edge (statement start-pos end-pos
                               &key ((:head head-edge)) wh rule)
  "Wrap the referent in an instance of a wh-question as its statement.
   Make an edge over the whole span using whatever pieces the callers
   have supplied.
     The 'head' argument is required. It shapes the final edge.
     The 'wh' argument is required to create the wh individual. "
  (labels ((decode-wh (wh)
             "Identify and return an individual we can feed to
              make-wh-object as its wh argument, i.e. either one of
              the wh categories or an already build instance of wh-question
              that we'll extend."
             (typecase wh
               (null (error "no value passed in for wh"))
               (category
                (if (itypep wh 'wh-pronoun)
                  wh (error "WH is an individual but not a wh-pronoun: ~a" wh)))
               (individual
                (cond
                  ((itypep wh 'wh-pronoun) wh)
                  ((has-wh-determiner? wh) ;; "what proteins"
                    wh) ; use whole phrase
                  (t (warn "New case of a WH individual: ~a~%   in sentence: ~s~%"
                           wh (sentence-string (sentence)))
                     nil)))
               (edge
                (decode-wh (edge-referent wh)))
               (otherwise
                (error "unexpected object passed in for wh: ~a" wh)))))
    (when (null (decode-wh wh))
      (when *debug-questions*
        (push-debug `(,head-edge ,wh ,statement ,start-pos ,end-pos))
        (break "decode-wh returned nil"))
      (return-from make-question-and-edge nil))
    (let* ((wh-base (decode-wh wh))
           (q (cond ((or (itypep wh-base 'wh-pronoun)
                         ;; as in "what genes"
                         (has-wh-determiner? wh-base))
                     (make-wh-object
                      wh-base
                      :statement statement
                      :variable
                      (loop for binding in (indiv-old-binds statement)
                            when (eq (binding-value binding) wh-base)
                            do (return (binding-variable binding)))))
                    ((itypep wh-base 'wh-question)
                     (extend-wh-object wh-base :statement statement))
                    (t (break "Unexpected value returned by decode-wh: ~a" wh-base)))))
      (let ((edge (make-edge-over-long-span
                   start-pos end-pos
                   (edge-category head-edge) ;; category
                   :form category::s ; question?
                   :referent q
                   :rule (or rule 'make-question-and-edge)
                   :constituents
                   (treetops-between start-pos end-pos) ;; (list head-edge)
                  )))
        edge))))

(defun make-edge-over-question (rule-label i head start-pos end-pos)
  "The caller has done all the work. The question referent is 'i'. The
   category label on the new edge comes from the 'head' edge."
  (make-chart-edge
   :category (edge-category head)
   :form category::s
   :referent i
   :rule rule-label
   :starting-position start-pos
   :ending-position end-pos
   :constituents (treetops-between start-pos end-pos)))

;;;--------------------------
;;; polar questions (yes/no)
;;;--------------------------

(defun make-polar-question (statement)  
  "Standard referent constructor for polar questions -- wraps the statement"
  (tr :wh-walk "make-polar-question")
  (find-or-make-individual
   'polar-question :statement statement))

(defun make-how-question (how statement)  
  "Standard referent constructor for polar questions -- wraps the statement"
  (tr :wh-walk "make-polar-question")
  (let* ((how-statement (bind-dli-variable 'manner how statement)))
    how-statement
    ))

(defun make-how-question-and-edge (how statement edges)
  (make-edge-over-long-span
   (start-pos (car edges))
   (end-pos (car (last edges))) 
   (edge-category (third edges))
   :form category::s
   :referent (make-how-question how statement)
   :rule 'make-how-question-and-edge
   :constituents edges))

(defun make-polar-question-edge (label rule i start-pos end-pos)
  (tr :wh-walk 'make-polar-question-edge)
  (let* ((q (make-polar-question i))
         (edge
          (make-edge-over-long-span
           start-pos end-pos label
           :rule rule
           :form category::s
           :referent q
           )))
    edge))

(defun make-polar-edge (statement-edge)
  "The pattern for doing a polar question is that the function
   for the specific case does its work and makes an edge over the
   its constituents. Then it calls this function to wrap their result
   in a polar question."
  (tr :wh-walk 'make-polar-edge)
  (let* ((start-vec (edge-starts-at statement-edge))
         (end-vec (edge-ends-at statement-edge))
         (pred (edge-referent statement-edge))
         (edge
          (make-completed-unary-edge
           start-vec end-vec
           'make-polar-edge ;; rule
           statement-edge
           (itype-of (edge-referent statement-edge))
           category::s ;; form
           (make-polar-question (edge-referent statement-edge)))))
    edge))


;;--- there questions

(defun make-initial-there-is-edge (preposed-aux-edge)
  "Called by detect-early-information when there is a preposed auxillary
   followed by the word 'there'. We select the correct edge over the
   'there' and  form a there-exists constituent"
  (tr :wh-walk "make-initial-there-is-edge")
  (let* ((start-pos (pos-edge-starts-at preposed-aux-edge))
         (there-pos (pos-edge-ends-at preposed-aux-edge))
         (ev (pos-starts-here there-pos))
         (there-edge (loop for edge in (all-edges-on ev)
                        when (eq (edge-category edge) category::syntactic-there)
                        return edge)))
    (assert there-edge)
    (let ((rule (multiply-edges there-edge preposed-aux-edge)))
      ;; n.b. we switch the order of the edges to make the rule happy
      (assert rule (preposed-aux-edge)
              "no rule composes a there edge with ~a" preposed-aux-edge)
      (let ((edge (make-completed-binary-edge preposed-aux-edge
                                               there-edge
                                               rule)))
        edge))))


;;//// actually pattern is [ s s preposition ]
;; DA: there-s-prep  "Are there any genes stat3 is upstream of?"
;;         chunking:  are there [any genes ][stat3 ][is ][upstream ]of
(defun there-question/stranded-prep (is-there-edge s-edge prep-edge start-pos end-pos)
  "The there-exists instance is already in place on the is-there edge.
   Putting the complement of the preposition back together is an
   independent problem. That whole expression becomes the 'value'
   of the there-exists."
  (tr :wh-walk "there-question/stranded-prep")
  (let* ((*rule-being-interpreted* 'there-question/stranded-prep)
         (there-ref (edge-referent is-there-edge))
         (s-ref (edge-referent s-edge))
         (focus-edge
          (cond ((edge-p (edge-right-daughter is-there-edge))
                 (edge-right-daughter is-there-edge))
                ((consp (edge-constituents is-there-edge))
                 (car (last (edge-constituents is-there-edge))))
                ))                           ;;/// check
         (focus (value-of 'value there-ref)) ;; "any genes"
         (pp-edge (flesh-out-stranded-prep prep-edge focus-edge)))
         
    (declare (special *rule-being-interpreted*))
    
    (let ((rule (multiply-edges s-edge pp-edge))) ; e.g. be+pp for copular pp
      ;;/// looking at the type of the s-ref might guide us to the choice of rule.
      (when rule
        (let* ((statement-edge (make-completed-binary-edge
                                s-edge pp-edge rule))
               (statement (edge-referent statement-edge))
               (there-exists
                (find-or-make-individual
                 'there-exists
                 :value (edge-referent focus-edge)
                 :predicate statement))
               (there-exists-edge
                (respan-edge-for-new-referent
                 statement-edge
                 there-exists)))
          
          (make-polar-question-edge
           category::s
           'there-question/stranded-prep
           there-exists start-pos end-pos
           ))))))
         

(defun da/preposed+s (aux-edge s-edge)
  ;;(break "aux = ~a, s = ~a" aux s)
  "Goes with DA rule for [preposed-auxiliary s ifcomp] except that
   we left off the ifcomp to be handled by separate rules."
  (tr :wh-walk "da/preposed+s")
  (let* ((s-ref (edge-referent s-edge))
         (q (make-polar-question s-ref))
         (start-pos (pos-edge-starts-at aux-edge))
         (end-pos (pos-edge-ends-at s-edge)))
    (mask-preposed-aux)
    (make-edge-over-long-span
     start-pos end-pos
     (itype-of s-ref)
     :rule 'da/preposed+s
     :form (edge-form s-edge) ;; category::question
     :referent q)))

(defun da/how-preposed+s (how-edge? aux-edge? s-edge)
  ;;(break "aux = ~a, s = ~a" aux s)
  "Goes with DA rule for [preposed-auxiliary s ifcomp] except that
   we left off the ifcomp to be handled by separate rules."
  (tr :wh-walk "da/preposed+s")
  (let* ((s-ref (edge-referent s-edge))
         (aux (edge-referent aux-edge?))
         (how-ref (edge-referent how-edge?)))
    (when (and (itypep how-ref 'how)
               (itypep aux 'do))
      (let* ((q (make-how-question how-ref s-ref))
             (start-pos (pos-edge-starts-at aux-edge?))
             (end-pos (pos-edge-ends-at s-edge)))
        (mask-preposed-aux)
        (make-edge-over-long-span
         start-pos end-pos
         (itype-of s-ref)
         :rule 'da/preposed+s
         :form (edge-form s-edge) ;; category::question
         :referent q)))))

(defun polar-copula-question-object ()
  "A dummy so that we can find thefunction that creates an edge with
  that rule-name")

(defun polar-copula-question-subject ()
  "A dummy so that we can find thefunction that creates an edge with
  that rule-name")

;; ;; called from make-this-a-question-if-appropriate
(defun make-polar-copular-question (start-pos end-pos edges)
  "Construct an instance of 'be' by directly invoking the rules"
  ;; (is) (Selumetinib) (an inhibitor of MEK1)
  (tr :wh-walk "make-polar-copular-question")
  (let* ((be (edge-referent (first edges)))    ;; is
         (subj (edge-referent (second edges))) ;; Selumetinib
         (obj (edge-referent (third edges)))   ;; an inhibitor of MEK1
         ;; re-order creation of edges and referents to be consistent with normal "X is Y"
         ;;  create the VP first, by adding an object, and then create the S by adding the subject
         (copular-meaning
          (assimilate-object be obj))
         (copula-edge
          (when copular-meaning
            (make-binary-edge/explicit-rule-components
             (first edges)
             (third edges)
             :rule-name 'polar-copula-question-object
             :form category::s
             :category category::be
             :referent copular-meaning)))
         (be+subj
          (with-referent-edges (:l (second edges) :r copula-edge)
            (assimilate-subject subj copular-meaning copula-edge)))
         ;;(push-debug `(,be ,subj ,obj ,be+subj)) (break "1")
         (subj-vg-edge
          (when be+subj
            (make-binary-edge/explicit-rule-components
             (first edges) copula-edge
             :rule-name 'polar-copula-question-subject
             :form category::transitive-clause-without-object
             :category category::be
             :referent be+subj))))
    ;;(push-debug `(,be ,subj ,obj ,subj-vg-edge ,copula-edge ,copular-meaning))
    ;;(break "copular")
    (make-polar-edge (or subj-vg-edge
                         copula-edge))))

;; called from make-this-a-question-if-appropriate
(defun make-polar-adjective-question (start-pos end-pos edges)
  (tr :wh-walk "make-polar-adjective-question")
  (when (> (length (all-tts start-pos end-pos)) 3)
    (setq end-pos (pos-edge-ends-at (third (all-tts start-pos end-pos)))))
  (let* ((be (edge-referent (first edges)))  ;; is
         (np (edge-referent (second edges))) ;; the ball
         (adj (edge-referent (third edges))) ;; red
         (copular-adj
          (let ((*left-edge-into-reference* (first edges))
                (*right-edge-into-reference* (third edges)))
            (make-copular-adjective be adj)))
         (copular-adj-edge
          (when copular-adj
            (make-edge-over-long-span
             start-pos end-pos
             (edge-category (third edges))
             :rule 'make-polar-adjective-question-1
             :form category::vg ;;question
             :referent copular-adj)))
         (copular-pred-edge
          (when copular-adj
            (let ((*left-edge-into-reference* (first edges))
                  (*right-edge-into-reference* copular-adj-edge))
              (declare (special *left-edge-into-reference*
                                *right-edge-into-reference*))
              (let ((interp (assimilate-subject np copular-adj nil)))
                (make-edge-over-long-span
                 start-pos
                 end-pos
                 (itype-of interp)
                 :referent interp
                 :rule 'make-polar-adjective-question-2
                 :form category::s))))))
    (declare (special copular-adj))
    (make-polar-edge copular-pred-edge)))

;; (p "is ATM in a pathway with MTOR")
;;
(defun polar-copular-pp-question (aux np pp start-pos end-pos)
  "Invoked by decompose-np-for-polary-question which did the checking
   so we can be confident that we have the requisite pieces."
  (let ((vp-edge (rule-to-edge aux pp)))
    (when vp-edge
      (mask-preposed-aux)
      (let* ((s-edge (rule-to-edge np vp-edge)))
        (when s-edge
          (extend-to-boundaries s-edge start-pos end-pos)
          (make-polar-edge s-edge))))))

  


;; (p/s "Is stat3 expressed in liver?")
;; (p/s "is the BRAF-NRAS complex sustained in time?")
;; (p "Is phosphorylated MAPK1 sustained at a high level?")
;; called from make-this-a-question-if-appropriate
(defun make-polar-participle-question (start-pos end-pos edges)
  (tr :wh-walk "make-polar-participle-question")
  (let* ((be-edge (first edges))  ;; is
         (be (edge-referent be-edge))
         (np-edge (second edges)) ;; the BRAF-NRAS complex
         (np (edge-referent np-edge))
         (vp+ed-edge (third edges)) ;; sustained in time
         (predicate (edge-referent vp+ed-edge)))
    
    ;; This doesn't work in the question case
    ;; (is-passive? vp+ed-edge)
     
    (let* ((i (incorporate-displaced-aux-into-predicate
               be predicate :left be-edge :right vp+ed-edge))

           ;; We know this a passive clause because of the
           ;; triggering pattern
           (j (with-referent-edges (:l be-edge :r vp+ed-edge :p nil)
                (assimilate-object i np))))

      (unless j ; maybe it's not passive?
        ;; With "Is miR-145 associated with urinary bladder cancer?"
        ;; the verb is intransitive
        (let ((open-variable (open-core-variable i)))
          (if open-variable
            (setq j (bind-variable open-variable np i))
            (when *debug-questions*
              (break "assimilate-object and open-variable of ~a and ~a failed"
                     i np)))))

      (let ((edge 
             (make-edge-over-long-span
              start-pos end-pos
              (itype-of predicate) ;; category
              :rule 'make-polar-participle-question
              :form category::s
              :referent (or j i))))
        (make-polar-edge edge)))))

;; Does phosphorylated MAP2K1 being high follow phosphorylated BRAF reaching a high value?"
(defun polar-sentential-subject (aux-edge s-edge vp-edge start-pos end-pos)
  "The main verb is in the vp and the s is its subject.
   The s is invariably in an oblique aspect like the progressive (+ing)
   which probably should be checked for."
  (let* ((s-ref (edge-referent s-edge))
         (vp-ref (edge-referent vp-edge))
         (variable (open-core-variable vp-ref)))
    (when variable
      (let* ((q (bind-variable variable s-ref vp-ref))
             (edge (make-edge-over-long-span
                    start-pos end-pos
                    (edge-category vp-edge)
                    :rule 'polar-sentential-subject
                    :form category::s
                    :referent q)))
        (make-polar-edge edge)))))

;; (p/s "Is the amount of MAPK1 phosphorylated eventually high?")
;; "Is MAP2K1 bound to MAPK1 eventually high?"
;;
(defun polar-reduced-relative (aux-edge np-edge vp+ed-edge adj-edge start-pos end-pos)
  "We assume the vg (vp) is a reduced relative on the np, and the reconstructed
   form is np+relative aux adj -- 'the amount is eventually high'.
   Borrows heavily from np-vg+ed DA function."
  (tr :wh-walk "polar-reduced-relative")
  (if (eq (form-cat-name vp+ed-edge) 'vg+ed)
    (then ; we can be (relatively) sure the vg is a reduced relation
      ;; So see if the aux and the adjective compose
      (let ((aux+adj-rule (multiply-edges aux-edge adj-edge)))
        (if aux+adj-rule
          (let* ((copular-edge
                  (make-discontinuous-edge aux-edge adj-edge aux+adj-rule))
                 (reduce-var (vg-is-reduced-relative? np-edge vp+ed-edge copular-edge)))
            (if reduce-var
              ;; compose the np and the vp as a reduced relative
              (let* ((np-ref (edge-referent np-edge))
                     (vg-ref (edge-referent vp+ed-edge))
                     (vp-ref (create-predication-by-binding
                              reduce-var np-ref vg-ref))
                     (i (bind-variable 'predication vp-ref np-ref))
                     (respanned-vp+ed-edge
                      (respan-new-referent i :head-edge vp+ed-edge :rule 'polar-reduced-relative))
                     (larger-np-edge
                      (make-chart-edge
                       :referent i
                       :left-edge np-edge
                       :right-edge respanned-vp+ed-edge
                       :category (edge-category np-edge)
                       :form (edge-form np-edge)
                       :rule 'polar-reduced-relative)))
                (let* ((full-spanning-edge (rule-to-edge larger-np-edge copular-edge)))
                  (when full-spanning-edge
                    (make-polar-question-edge
                     (edge-category full-spanning-edge) ; label
                     'polar-reduced-relative ; rule
                     (edge-referent full-spanning-edge) ; i
                     start-pos end-pos))))
              (else
                (when *debug-questions*
                  (break "~a is not a reduced relative" vp+ed-edge)))))
          (else
            (when *debug-questions*
              (break "The aux and adj don't compose: ~a ~a" aux-edge adj-edge))))))
    (else
      (when *debug-questions*
        (push-debug `(,aux-edge ,np-edge ,vp+ed-edge ,adj-edge))
        (break "Is ~a a reduced relative? or what" vp+ed-edge)))))




;;;-----------------------------------------------------------------
;;; wh-initial? dispatches from make-this-a-question-if-appropriate 
;;;-----------------------------------------------------------------

(defgeneric find-wh-element (edge)
  (:documentation "Caller belives there is a wh-pronoun to be found at this
    location, so we look for it. We're looking for a wh-pronoun since that's
    what's expected as the base of a wh-question variable.")
  (:method ((e edge))
    (if (or
         ;; added tests to account for "why"
         (itypep (edge-form e) 'wh-pronoun)
         (itypep (edge-category e) 'wh-pronoun)
         (itypep (edge-referent e) 'wh-pronoun))
      e
      (if (initial-wh?) ;; it's there somewhere
        (let ((fringe-edges (left-fringe e)))
          (loop for f in fringe-edges
             when (itypep (edge-referent f) 'wh-pronoun)
             return f))
        nil))))


;; "What drugs are inhibitors of GRB2"
;; "What is the mutation significance of TP53 for prostatic adenocarcinoma?"
;;
(defun wh-initial-one-edge (edge start-pos end-pos)
  "Called from make-this-a-question-if-appropriate when the whole sentence
   is spanned by this single edge, and the initial-wh? flag is up.
   Strong assumption that the wh term is the subject of the sentence
   and the first constituent edge."
  (tr :wh-walk 'wh-initial-one-edge)
  (let ((left-edge (edge-left-daughter edge)))
    (unless (edge-p left-edge)
      ;; happens for "why"
      (setq left-edge edge))
    (unless (find-wh-element left-edge)
      (warn "find-wh-element couldn't find a wh in ~a~%within ~s"
            left-edge (current-string))
      (when *debug-questions*
        (break "Maybe find-wh-element is bad? edge = ~a" edge))
      (return-from wh-initial-one-edge nil))
    (make-question-and-edge
     (edge-referent edge) ; statement
     start-pos end-pos
     :head edge
     :wh left-edge
     :rule 'wh-initial-one-edge)))
         


(defun wh-initial-two-edges (wh-initial? edges start-pos end-pos)
  "One edge after the WH edge. Take it to be the statement."
  ;; called from DA wh-vp-edge
  (tr :wh-walk 'wh-initial-two-edges)
  (let* ((wh (edge-referent wh-initial?))
         (complement (edge-referent (second edges)))
         (q (compose wh complement))) ;;//// do the fold manouver
    ;; "Which pathways use these" -- though that ex has problems
    (if (null q)
      (when *debug-questions*
        (push-debug `(,wh ,complement ,edges))
        (error "Composition with ~a failed" complement))
      (make-edge-over-long-span
       start-pos end-pos
       (edge-category (second edges)) ;; ??
       :rule 'make-this-a-question-if-appropriate
       :form category::s ;;question
       :referent q))))


(defun wh-initial-three-edges (wh-edge edges start-pos end-pos)
  "Dispatch over DA patterns where there are two edges after the WH edge.
   called from wh-three-edges DA rule and the 3 edge count in
   make-this-a-question-if-appropriate.
   The first of the edges is the wh-edge."
  (tr :wh-walk "wh-initial-three-edges")
  (when (not (every #'edge-p edges))
    (if *debug-questions*
      (lsp-break "something in 'edges' isn't an edge")
      (when *warn-when-can-not-formulate-question*
         (warn "something in 'edges' isn't an edge: ~a" edges)))
    (return-from wh-initial-three-edges nil))
  (let* ((e2 (second edges))
         (e3 (third edges))
         (e2-form (form-cat-name e2))
         (e3-form (form-cat-name e3))
         (e2-ref (edge-referent e2))
         (e3-ref (edge-referent e3))
         (wh (edge-referent wh-edge))
         (other (value-of 'other wh)))
    (cond
      ((how? wh-edge)
       (cond
         ((eq 'adjective e2-form) ; "how important" "how often" ...
          ;;/// move initial aux? But timing means it would force
          ;; a reparse: "... is Scc1 phophorylation in vivo" is read
          ;; as a copular predicate. Moving the aux would make it a clause
          ;; "Scc1 phophorylation <is important> in vivo"
          ;; This is a case where hacking the WH from the beginning
          ;; is more obvious
          (let ((q (wrap-in-whq-attribute wh e2-ref e3-ref)))
            (make-edge-over-question
             'wh-initial-three-edges q e3 start-pos end-pos)))
         ((edge-over-aux? e2) ; e.g. "how does ..."
          (let* ((ida (incorporate-displaced-aux-into-predicate
                     e2 e3 :left e2 :right e3))
                 (i-edge (make-how-question-and-edge wh ida edges))
                 (i (edge-referent i-edge))
                 (q (make-wh-object wh :statement i)))
            (make-edge-over-question
             'wh-initial-three-edges q e3 start-pos end-pos)))
         ((da/how-preposed+s wh-edge e2 e3))
         (t (when *debug-questions*
              (tr :wh-3-edges edges)
              (break "New 3-edge case with 'how'")))))

      ((and (eq e2-form 'vp) ;; stranded preposition
            (preposition-category? (third edges))
            other)
       ;; The question is who takes that preposition, which determines
       ;; what the corresponding declarative form would be.
       ;; It could be any of the heads along the right spine of VP
       ;; so it may well have been buried -- classic DA
       (if *debug-questions*
         (lsp-break "Figure out whether ~a needs reformulation" (second edges))
         (when *warn-when-can-not-formulate-question*
           (warn "Standed preposition wh question case needs more work"))))

      ;; Reduced relative: could consider a DA rule here, but to do the 
      ;; right thing we need to reach into the WH phrase
      ;;//// test on attributes, test on compound (multi-word) other's
      ((and other
            (eq e2-form 'vp+ed)
            (eq e3-form 'vp))
       (let* ((other-edge (find-edge-for-wh-other wh-edge other))
              (rule (multiply-edges other-edge (second edges))))
         (when rule
           (let ((new-edge (make-completed-binary-edge other-edge (second edges) rule))
                 (old-wh (edge-referent wh-edge)))
             ;; swap out the existing other-edge for this new one
             (rebuild-wh-other-edge wh-edge other-edge new-edge)
             ;; update the value of other
             (let* ((new-ref (edge-referent new-edge))
                    (new-wh-referent (bind-variable 'other new-ref old-wh)))
               (setf (edge-referent wh-edge) new-wh-referent)
               ;; at this point we have wh+vp so we dispatch to have it handled
               (wh-initial-two-edges wh-edge (list wh-edge (third edges))
                                     start-pos end-pos))))))
      
      ((edge-over-aux? (second edges))
       ;; "How many blocks did you add to the row?"
       (wh-initial-followed-by-modal wh-edge edges start-pos end-pos))
      ;;da/how-preposed+s
      ;; (and (eq e2-form vg+passive)
      ;;      (and (eq e3-form pp)
      ;;           == prep is 'by'
      
      ((and (eq e2-form 'vg+passive)
            (eq e3-form 'vp))
       (wh-with-reduced-relative wh-edge edges start-pos end-pos))

      ((and (eq e2-form 'preposed-auxiliary)
            (eq e3-form 'np))
       ;; "Which pathways use these"
       (revert-preposed-aux))
      
      (t
       (if *debug-questions*
         (lsp-break "Could not resolve 3 edges into a WH question: ~a" edges)
         (when *warn-when-can-not-formulate-question*
           (warn "Could not resolve 3 edges into a WH question: ~a" edges)))))))


(defun wh-initial-four-edges (wh-edge edges start-pos end-pos)
  ;; called by wh-four-edges DA rule
  (tr :wh-walk "wh-initial-four-edges")
  (let ((wh-type (edge-category wh-edge)))
    (if (memq (cat-name wh-type) '(how why where when))
      (wh-initial-four-edges/adjunct wh-edge edges start-pos end-pos)
      (when *debug-questions*
        (push-debug `(,wh-edge ,edges ,start-pos ,end-pos))
        (break "new 4 edge case wh-type: ~a" wh-type)))))

;; "How is stat3 used to regulate apoptosis?"
;;
(defun wh-initial-four-edges/adjunct (wh-edge edges start-pos end-pos)
  "The wh being asked is an adjunct, so the edges should make a clause"
  (tr :wh-walk "wh-initial-four-edges/adjunct")
  (let* ((e2 (first edges))  ; "is"
         (e3 (second edges)) ; "stat3"
         (e4 (third edges))  ; "used to ..."
         (e2-form (form-cat-name e2))
         (e3-form (form-cat-name e3))
         (e4-form (form-cat-name e4)))
    (cond
      ((and (edge-over-aux? e2)
            (noun-category? e3))
       (let ((vp-edge (rule-to-edge e2 e4)))
         (if (null vp-edge)
           (when *debug-questions*
             (push-debug `(,wh-edge ,edges ,start-pos ,end-pos))
             (break "vg and adjunct don't compose, ~a ~a"
                    (first edges) (third edges)))

           (let ((edge-over-s (rule-to-edge e3 vp-edge)))
             (if (null edge-over-s)
               (when *debug-questions*
                 (push-debug `(,wh-edge ,edges ,start-pos ,end-pos))
                 (break "subj & predicate don't compose, ~a ~a"
                        (second edges) vp-edge))

               ;; Add the wh adjunct and make the question
               (fold-in-initial-wh-adjunct wh-edge edge-over-s
                                           start-pos end-pos))))))

      (t (when *debug-questions*
           (push-debug `(,wh-edge ,edges ,start-pos ,end-pos))
           (break "New pattern for WH 4 edges/adjunct"))))))


(defun fold-in-initial-wh-adjunct (wh-edge edge-over-s start-pos end-pos)
  ;; continuation of wh-initial-four-edges/adjunct
  (tr :wh-walk 'fold-in-initial-wh-adjunct)
  (let* ((stmt (edge-referent edge-over-s))
         (wh (edge-referent wh-edge))
         (wh-cat (cat-name (itype-of wh))))
    
    (unless (memq wh-cat '(how why where when))
      (when *debug-questions*
        (break "unhandled initial adjunct type ~s" wh-cat)))
    (let* ((variable (value-of 'variable (itype-of wh))) ; var is on category
           (edge-with-adjunct
             (make-edge-over-long-span
              start-pos
              end-pos
              (itype-of stmt)
              :rule 'fold-in-initial-wh-adjunct
              :form (category-named 's)
              :referent (bind-dli-variable variable wh stmt))))
      (make-question-and-edge (edge-referent edge-with-adjunct) ;;stmt
                              start-pos end-pos
                              :head edge-over-s
                              :wh wh
                              :rule 'wh-initial-four-edges/adjunct))))


(defun wh-initial-four-edges/vp+ed (wh-edge vg-edge np-edge vp+ed-edge
                                    start-pos end-pos)
  ;; from wh-four-edges/vp in DA
  (tr :wh-walk "wh-initial-four-edges/vp+ed")
  (unless (edge-over-aux? vg-edge)
    (when *debug-questions*
      (break "Expected ~a to be an aux" vg-edge))
    (return-from wh-initial-four-edges/vp+ed nil))
  (let (;; add the wh as a determiner to the np-edge
        (i (bind-variable 'has-determiner (edge-referent wh-edge)
                          (edge-referent np-edge)))
        (vp-ref (edge-referent vp+ed-edge)))
    (cond
      ((open-core-variable vp-ref) ; i.e. subject or object
       (cond
         ((and (is-passive? vp+ed-edge)
               (find-subcat-var i :object vp-ref))
          ;; open in object since there's a by-phrase
          (unless (missing-object-vars vp-ref)
            (error "Why isn't passive open in its object?"))
          (let ((j (bind-variable (find-subcat-var  i :object vp-ref)
                                  i vp-ref)))
            (make-edge-over-question
             'wh-initial-four-edges/vp+ed
             j vp+ed-edge start-pos end-pos)))
         
         ((itypep vp-ref 'attributing-verb) ; 'named', 'called'
          ;; ought to see what -is- bound to be sure
          ;; "What is insulin's gene named?" -- we're questioning the attribute
          (let ((j (bind-variable 'patient i vp-ref)))
            (make-edge-over-question
             'wh-initial-four-edges/vp+ed
             j vp+ed-edge start-pos end-pos)))))
         
      (t (when *debug-questions*
           (break "New case for the vp+ed"))))))



;; (p/s "What genes is stat3 upstream of?")
;; (p/s "What tissues is STAT3 expressed in?") <== doesn't tuck
;; 
(defun wh-initial-four-edges/be (wh-edge edges start-pos end-pos)
  ;; called from make-this-a-question-if-appropriate with 2d edge
  ;; known to be 'be' or 'modal'
  ;; --- now a DA rule sees this pattern ---
  (tr :wh-walk "wh-initial-four-edges/be")
  (let ((e2-form (form-cat-name (second edges)))
        (e3-form (form-cat-name (third edges)))
        (e4-form (form-cat-name (fourth edges))))
    (flet ((ok-aux (form-name)
             (member form-name
                     '(preposed-auxiliary modal
                       verb+present)))
           (ok-main (form-name)
             (member form-name
               '(s transitive-clause-without-object)))
           (ok-prep (form-name)
             (member form-name ;; also add to takes-preposition?
                     '(preposition spatial-preposition
                       approximator)))) ;; about
      (cond
        ((and (ok-aux e2-form) (ok-main e3-form) (ok-prep e4-form))
         (wh-stranded-prep wh-edge (third edges) (fourth edges) start-pos end-pos))
        (t
         (when *debug-questions*
           (break "new 4-edge wh case~%e2: ~a  e3: ~a  e4: ~a"
                  e2-form e3-form e4-form)) )))))


;; "What is STAT3 expressed in?" whpn-vp-noun-vg+ed+prep
(defun wh-initial-five-edges (wh-edge vg1 np vg2-edge prep-edge)
  ;; called by  whpn-vp-noun-vg+ed+prep DA rule
  (tr :wh-walk "wh-initial-five-edges")
  (unless (and (wh-edge? wh-edge)
               (edge-over-aux? vg1))
    (when *debug-questions*
      (when *debug-questions*
        (break "five-edges: Wrong conditions"))
      (return-from wh-initial-five-edges nil)))
  (let ((full-pp-edge (flesh-out-stranded-prep prep-edge wh-edge)))
    (let* ((extended-vp (compose-fleshed-out-pp-and-knit vg2-edge full-pp-edge))
           (aux+vp-rule (multiply-edges vg1 extended-vp)))
      (if aux+vp-rule
        (let* ((vp3 (make-completed-binary-edge vg1 extended-vp aux+vp-rule))
               (np+vp-rule (multiply-edges np vp3))
               (full-span (when np+vp-rule
                            (make-completed-binary-edge np vp3 np+vp-rule))))
          (when full-span
            (make-question-and-edge
             (edge-referent full-span) ; statement
             (pos-edge-starts-at wh-edge)
             (pos-edge-ends-at full-span)
             :head full-span
             :wh wh-edge
             :rule 'wh-initial-five-edges)))))))


(defun whnp-initial-five-edges (whnp aux-vp np vg+ed prep-edge start-pos end-pos)
  ;; "What tissues is STAT3 expressed in? from whnp-is-prop-vg-prep
  ;; Initial np has been checked by wh-edge? and aux-vp by edge-over-aux?
  (tr :wh-walk 'whnp-initial-five-edges)
  (let ((full-pp-edge (flesh-out-stranded-prep prep-edge whnp)))
    (when full-pp-edge
      (let* ((longer-vp ; "expressed in x" -- adjp if vg+ed is an adjective
              (rule-to-edge vg+ed full-pp-edge))
             ;; make sure that longer-vp is passed for v-max, not vg+ed
             (v-max (formulate-aux-vg-combination aux-vp longer-vp)))
        (let ((s-edge (rule-to-edge np v-max)))
          (if s-edge
            (make-question-and-edge
             (edge-referent s-edge)
             start-pos end-pos
             :wh whnp
             :head s-edge
             :rule 'whnp-initial-five-edges)
            (when *debug-questions*
              (push-debug `(,v-max ,np ,full-pp-edge))
              (break "Something upstream didn't compose"))))))))

(defun formulate-aux-vg-combination (aux-edge vg-edge)
  "The aux and the vg it composes with are not adjacent. Implicitly an NP
   is present that will compose with the VP we produce here.
   There are two possibilities (so far) depending on what the 'vg' is.
   If it's a proper vg with a verb then we go one route. If it's actually
   an adjp then we go another."
  (cond
    ((vp-category? vg-edge)
     (let ((i (incorporate-displaced-aux-into-predicate
               aux-edge vg-edge :left aux-edge :right vg-edge)))
       (respan-new-referent i :head-edge vg-edge)))
    ((adjg-head? vg-edge) ; "upstream"
     (let ((aux+adjp (rule-to-edge aux-edge vg-edge)))
       (or aux+adjp
           (when *debug-questions*
             (break "aux and adjp did not compose")))))
    (t (when *debug-questions*
         (break "new case vg-edge: ~a aux: ~a" vg-edge aux-edge)))))
    



;;-----------------------------------
;; (p "Can you find any apoptotic pathways that stat3 is involved in?")
;;
(defun polar-aux-s-stranded-prep (aux-edge s-edge prep-edge start-pos end-pos)
  "The constituents we have to more are largely buried inside the s-edge.
   At the beginnng of the edge we are likely to have fluffy wording like
   'find' or 'know' that is just getting in the way, and could complicate
   the effort to locate the constituent we have to compose with the stranded
   preposition."
  (tr :wh-walk 'polar-aux-s-stranded-prep)
  (let* ((edge-taking-prep
          (lowest-edge-taking-stranded-prep s-edge prep-edge))
         (complement-edge
          (identify-complement-of-stranded-prep s-edge edge-taking-prep)))
    (cond
      ((and complement-edge edge-taking-prep)
       (let ((full-pp-edge (flesh-out-stranded-prep prep-edge complement-edge)))
         (let ((e (compose-fleshed-out-pp-and-knit
                   edge-taking-prep full-pp-edge)))
           (when e
             (make-polar-question-edge
              (edge-category s-edge) ; label
              'polar-aux-s-stranded-prep ; rule
              (edge-referent e) ; i
              start-pos end-pos)))))
      (t
       (when *debug-questions*
         (push-debug `(,aux-edge ,s-edge ,prep-edge))
         (break "need another approach"))))))

(defparameter *fluffy-predicates*
  '(bio-find tell))

(defgeneric fluffy-prefix? (edge)
  (:documentation "Many questions and tacit question ('tell me whether...')
   begin with 'fluffy' wording like 'find' or 'know' that is just getting in
   the way of seeing the general patterns")
  (:method ((e edge))
    (memq (edge-cat-name e) *fluffy-predicates*)))

(defun identify-complement-of-stranded-prep (s-edge edge-taking-prep)
  "Find the participant in the clause that should 'move'. It has to be
   somewhere to the left of the edge that gets the prep. If the predicate
   that's the referent of the s is known to be lightweight ('do you know of..'
   'are there any..') then we can lift out its 'object'. "
  (let ((predicate (edge-referent s-edge))
        (fluffy? (fluffy-prefix? s-edge)))
    (cond
      (fluffy?
       ;; A nice generalization to introduce as part of reworking the bio verbs,
       ;; with a more apt name of course
       (let ((obj-var (object-variable predicate)))
         (ecase (car fluffy?)
           (bio-find
            (let ((i (value-of obj-var predicate)))
              (search-tree-for-referent s-edge i))))))
      (t 
       (when *debug-questions*
         (break "Need another heuristic to find the complement"))))))
  
      
(defun lowest-edge-taking-stranded-prep (main-edge prep-edge)
  "The edge we return is going to ultimately be composed with a pp.
   That means we need to return a vg of some sort, and not return
   any word-level edge like verb-present"
  (let ((fringe-edges (right-fringe main-edge))) ;; largest to smallest
    (loop for edge in fringe-edges
       when (and (takes-preposition? edge prep-edge)
                 (memq (edge-form edge) *verb-group-level-categories*))
       return edge)))

(defun flesh-out-stranded-prep (prep-edge displaced-pobj-edge)
  "Makes a pp when we have a stranded preposition but have determined what 
   np complement it should have"
  (let ((pp-rule (multiply-edges prep-edge displaced-pobj-edge)))
    (unless pp-rule
      (when *debug-questions*
        (break "no rule for prep+np~%  ~a  +  ~a"  prep-edge displaced-pobj-edge))
      nil)
    (when pp-rule
      (let* ((displaced-pobj (edge-referent displaced-pobj-edge))
             (pp-rule-category (cfr-category pp-rule))
             (pp-category (etypecase pp-rule-category
                            (category pp-rule-category)
                            (symbol
                             (if (eq :syntactic-form pp-rule-category) ;; form rule
                               (cfr-form pp-rule)
                               (error "Category of ~a is an unrecognized symbol" pp-rule)))))
             (preposition (edge-left-daughter prep-edge))
             (pp-ref (make-pp (edge-referent prep-edge) displaced-pobj)))
        (make-chart-edge
         :category pp-category
         :form (cfr-form pp-rule)
         :rule pp-rule
         :referent pp-ref
         :starting-position (pos-edge-starts-at prep-edge)
         :ending-position (pos-edge-ends-at prep-edge)
         :left-daughter prep-edge
         :right-daughter displaced-pobj-edge
         :ignore-used-in t)))))


#|
(p/s "What tissues can I ask about?") ;; da: wh-three-edges+prep 
|#

(defun wh-modal-s-prep-add-aux ()
  "dummy for adding as rule-name")

(defun wh-modal-s-prep (wh-edge modal-edge s-edge prep-edge start-pos end-pos)
  (tr :wh-walk 'wh-modal-s-prep)
  (push-debug `(,wh-edge ,modal-edge ,s-edge ,prep-edge))
  (let ((s+pp-edge
         (common-core-wh-modal-s-prep wh-edge modal-edge s-edge prep-edge)))
    (when s+pp-edge
      (make-question-and-edge
       (edge-referent s+pp-edge)
       start-pos end-pos
       :head s+pp-edge
       :wh wh-edge
       :rule 'wh-modal-s-prep))))

(defun common-core-wh-modal-s-prep (wh-edge modal-edge s-edge prep-edge)
  (tr :wh-walk 'common-core-wh-modal-s-prep)
  (let* ((pp-edge (flesh-out-stranded-prep prep-edge wh-edge))
         (s+pp-rule (multiply-edges s-edge pp-edge)))
    (unless s+pp-rule
      (when *debug-questions*
        (break "no rule to compose s+pp: ~a + ~a" s-edge pp-edge))
      nil)
    (when s+pp-rule
      (let* ((s+pp-edge (make-completed-binary-edge s-edge pp-edge s+pp-rule))
             (i (incorporate-displaced-aux-into-predicate
                 modal-edge s+pp-edge :left modal-edge :right s+pp-edge)))
        (respan-new-referent i
                             :start (pos-edge-starts-at s+pp-edge)
                             :end (pos-edge-ends-at s+pp-edge)
                             :head-edge s+pp-edge
                             :rule 'common-core-wh-modal-s-prep
                             :constituents (list s+pp-edge))))))

;; "what transcription factor databases do you rely on?"
;;
(defun wh-aux-s-stranded-prep (wh-edge aux-edge main-edge prep-edge start-pos end-pos)
  "Really similar to wh-modal-s-prep-pp"
  (tr :wh-walk 'wh-aux-s-stranded-prep)
  (let ((inner-span
         (common-core-wh-modal-s-prep wh-edge aux-edge main-edge prep-edge)))
    (unless inner-span
      (when *debug-questions*
        (break "no inner-span"))
      nil)
    ;; That covers everything except the first two constiuents
    (let ((i (incorporate-displaced-aux-into-predicate
              aux-edge inner-span :left aux-edge :right inner-span)))
      (make-question-and-edge
       i start-pos end-pos
       :head inner-span
       :wh wh-edge
       :rule 'wh-aux-s-stranded-prep))))


;; "What diseases can I ask about for microRNA?"
;; "What databases do you rely on for pathway questions?")
;;
(defun wh-modal-s-prep-pp (wh-edge modal-edge s-edge prep-edge pp-edge
                           start-pos end-pos)
  (tr :wh-walk 'wh-modal-s-prep-pp)
  (let ((inner-span
         (common-core-wh-modal-s-prep
          wh-edge modal-edge s-edge prep-edge)))
    (unless inner-span
      (when *debug-questions*
        (break "no inner-span"))
      nil)
    (let ((s+pp-rule (multiply-edges inner-span pp-edge)))
      (unless s+pp-rule
        (when *debug-questions*
          (break "no rule composing ~a with ~a" inner-span pp-edge))
        nil)
      (when s+pp-rule
        (let ((full-span (make-completed-binary-edge
                          inner-span pp-edge s+pp-rule)))
          (make-question-and-edge
           (edge-referent full-span)
           start-pos end-pos
           :head full-span
           :wh wh-edge
           :rule 'wh-modal-s-prep-pp))))))
          
 


#| "Are there any genes stat3 is upstream of?" |#

#| (p "What genes is stat3 upstream of?") ;; via s+prep
|#
(defun wh-stranded-prep (wh-edge main-edge prep-edge start-pos end-pos)
  "Intended for use with every case of short questions
   that end in a preposition. (Presumably not functioning as a particle
   though we don't check that these days - 8/2018.)"
  ;; called from four-edges/be just above, and from s+prep DA rule
  (tr :wh-walk 'wh-stranded-prep)
  (let ((pp-edge (flesh-out-stranded-prep prep-edge wh-edge)))
    (when pp-edge
      ;; two cases -- regular subcategorization by a head and copulas
      (let* ((main-ref (edge-referent main-edge))
             (wh (edge-referent wh-edge)) ;;(find-wh-element wh-edge))
             
             (fringe-edges (right-fringe main-edge)) ;; largest to smallest
             (head-edge (loop for edge in fringe-edges
                           when (takes-preposition? edge prep-edge)
                           return edge))
             (predicate (when head-edge (edge-referent head-edge)))
             (preposition (get-word-for-prep (value-of 'prep (edge-referent pp-edge))))
             (wh-item (value-of 'pobj (edge-referent pp-edge)))
             (variable (when head-edge (subcategorized-variable
                                        predicate preposition wh-item))))      
        (cond
          ((itypep main-ref 'be) ;;// broader?
           (wh-copula-stranded-prep wh wh-edge main-edge pp-edge start-pos end-pos))
          ((null head-edge)
           ;; If we have the correct head, the variable will have a value.
           ;; /// Else keep moving downward
           (tr :wh-stranded/no-head main-edge (edge-left-daughter prep-edge))
           nil) ;; fail
          ((null variable)
           (tr :wh-stranded/no head-edge preposition)
           nil)
          (variable
           (tr :wh-stranded/yes head-edge preposition variable)
           (wh-subcat-stranded-prep main-edge head-edge pp-edge  start-pos end-pos))
          (t (when *debug-questions*
               (error "Fell through cond in wh-stranded-prep"))))))))

(defun compose-fleshed-out-pp-and-knit (edge-taking-prep pp-edge)
  ;; subroutine of stranded prep variants
  (let ((parent-of-head (edge-used-in edge-taking-prep))
        (rule (multiply-edges edge-taking-prep pp-edge)))
    (unless rule
      (when *debug-questions*
        (break "No rule for ~a + ~a" edge-taking-prep pp-edge))
      (return-from compose-fleshed-out-pp-and-knit nil))
    (let ((extended-edge
           (make-completed-binary-edge edge-taking-prep pp-edge rule)))
      (if parent-of-head
        (tuck-new-edge-under-already-knit
         edge-taking-prep ; subsumed-edge
         extended-edge    ; new-edge
         parent-of-head   ; dominating-edge
         :right)
        extended-edge))))

(defun wh-subcat-stranded-prep (main-edge head-edge pp-edge start-pos end-pos)
  (tr :wh-walk 'wh-subcat-stranded-prep)
  (let ((parent-of-head (edge-used-in head-edge))
        (rule (multiply-edges head-edge pp-edge)))
    ;; compose the head and the pp
    (unless rule
      (error "No rule for ~a + ~a" head-edge pp-edge))
    (let* ((extended-head-edge
            (make-completed-binary-edge head-edge pp-edge rule))
           (subsumed-edge head-edge) ;; rename to make tuck operation clear
           (new-edge extended-head-edge)
           (dominating-edge parent-of-head))
      (when parent-of-head
        (tuck-new-edge-under-already-knit
         subsumed-edge new-edge dominating-edge :right))
      (let* ((final-tts (treetops-between start-pos end-pos))
             (edge-count (length final-tts)))
        (cond
          ((= 3 edge-count)
           ;; All the treetops are used in part of the main edge
           ;; but need an edge over it all
           (make-chart-edge
            :category (edge-category main-edge)
            :form category::s
            :rule 'wh-stranded-prep
            :starting-position start-pos
            :ending-position end-pos
            :referent (edge-referent main-edge)
            :constituents (treetops-between start-pos end-pos)
            :ignore-used-in t))
          ((= 1 edge-count)
           (car final-tts))
          (t
           (when *debug-questions*
             (push-debug `(,new-edge ,head-edge))
             (break "Wrong number of edges to cover"))))))))

;; (p "what pathways is ERK1 in?")
(defun wh-copula-stranded-prep (wh wh-edge main-edge pp-edge start-pos end-pos)
  "Separate out the main edge (just after the wh-element and ending before
   the preposition) to get a predicate and a focused item for the copular
   predication. We know the main-edge is copular because that was the gate
   that got us here."
  (tr :wh-walk 'wh-copula-stranded-prep)
  (let* ((vg-edge (edge-left-daughter main-edge))
         (focal-np-edge (edge-right-daughter main-edge))
         (np (edge-referent focal-np-edge))
         (pp-ref (edge-referent pp-edge))
         (prep (get-word-for-prep (value-of 'prep pp-ref)))
         (pobj (value-of 'pobj pp-ref))
         (cop-cat (category-named 'copular-predication-of-pp)))
    
    (unless (and (vg-category? vg-edge)
                 (np-category? focal-np-edge))
      (when *debug-questions*
        (break "New case in copula-stranded-prep: vg = ~a~%np = ~a"
               vg-edge focal-np-edge))
      (return-from wh-copula-stranded-prep nil))
    (let* ((copular-pp-rule (multiply-edges vg-edge pp-edge)))
      ;; N.b. resulting edge will -not- include the focal-np. It was parsed
      ;; as a direct object even though in a question like this it is subject
      (cond
        (copular-pp-rule
         (let ((copular-pp-edge (make-completed-binary-edge
                                 vg-edge pp-edge copular-pp-rule))
               (var (subcategorized-variable np prep pobj)))
           ;; open-coding test-and-apply-simple-copula-pp since 
           ;; we're not in a normal rule-application content
           (cond
             (var ;; value, prep, and predicate are bound
              (when (edge-p (edge-used-in wh-edge))
                (remove-edge-from-chart (edge-used-in wh-edge))
                (setf (edge-used-in wh-edge) nil))
              (let* ((copular-pp (edge-referent copular-pp-edge))
                     (new-np (bind-variable var pobj np))
                     ;; create an edge for the new (extended)np
                     ;;  and thereby create a mention (for clausal form)
                     (new-np-edge
                      (respan-top-edge pp-edge ;; focal-np-edge
                                       new-np
                                       :form (category-named 'np)
                                       :internal t))
                     (predicate (semtree (find-head-edge main-edge)))
                     (dependencies
                      `((,(find-variable-for-category 'item cop-cat)
                          ,(edge-mention focal-np-edge))
                        (,(find-variable-for-category 'value cop-cat)
                          ,(edge-mention new-np-edge))
                        (,(find-variable-for-category 'pobj cop-cat)
                          ,(edge-mention wh-edge))
                        (,(find-variable-for-category 'prep cop-cat)
                          ,(edge-referent (edge-left-daughter pp-edge)))
                        (,(find-variable-for-category 'predicate cop-cat)
                          ,(edge-referent (find-head-edge vg-edge)))))
                     (s-edge
                      (make-edge-over-long-span
                       start-pos end-pos
                       cop-cat
                       :rule 'wh-copula-stranded-prep
                       :form (category-named 's)
                       :dependencies dependencies)))
                (tr :stranded-copular-pp (edge-referent s-edge))
                ;;(break "edge = ~a" s-edge)
                (make-question-and-edge (edge-referent s-edge)
                                        start-pos end-pos
                                        :wh wh                                          
                                        :head s-edge
                                        :rule 'wh-copula-stranded-prep)))
             
             (t ;; we could make the copular-pp edge but the focal np
              ;; doesn't take the preposition so we make a simpler
              ;; predication object without the cross-threading
              (tr :stranded-copular/no-var np prep pobj)
              nil
              #+ignore(vanilla)))))
        
        (t ;; the main edge and pp-edge can't compose
         (tr :stranded-copular/no-rule vg-edge pp-edge)
         nil
         #+ignore(vanilla))))))

#| safe, but no explicit subject
                ;; This makes the edge for the revised referent but
                ;; it's not in the tree. 
                    (let ((j (bind-variable 'item np i)))
                      (respan-top-edge focal-np-edge new-np :internal t)
                      (respan-top-edge
                       copular-pp-edge j
                       :start-pos start-pos ;; goes to start of sentence
                       :form category::s))  |#
 
  
#| Should we do something for the other two cases?
    (flet ((vanilla ()
             ;; We're being called from debris analysis so we have
             ;; to return an edge. This is the escape path for the
             ;; two cases we don't (yet) have a better analysis for.
             (let ((ref (make-copular-predication-of-pp
                         np vg-edge pp-edge (value-of 'prep pp-ref))))
               (make-chart-edge
         :category (edge-category main-edge)
         :form category::s
         :rule 'wh-copula-stranded-prep
         :starting-position start-pos
         :ending-position end-pos
         :referent referent
         :constituents (treetops-between start-pos end-pos)
         :ignore-used-in t)))) |#




;; (p "where should I put the block?") <-- won't parse if 'block' is only a verb
;; (p/s "What does MEK phosphorylate?")
;;
(defun wh-initial-followed-by-modal (wh-edge edges start-pos end-pos)
  "The second argument is an aux or a modal that has to be
   folded in to the statement (third edge) for its tense or
   aspect contribution. Not bothering to explicitly hook
   the aux edge into the tree."2
  ;; continuation from wh-initial-three-edges
  (tr :wh-walk "wh-initial-followed-by-modal")
  (let* ((wh (edge-referent wh-edge))
         (aux-edge (second edges))
         (aux (edge-referent aux-edge))
         (stmt-edge (third edges))
         (stmt (edge-referent stmt-edge)))
    (with-referent-edges (:l aux-edge :r stmt-edge)
      ;;/// replace with incorporate-displace-aux-into-predicate, but only
      ;; after reconciling its different approach to setting the tense
      (setq stmt (add-tense/aspect-info-to-head aux stmt))) ;; binds tense
    (let ((q (fold-wh-into-statement wh stmt wh-edge aux-edge stmt-edge)))
      ;; If the folding is successful, the wh will have been bound
      ;; to a variable in the statement
      (when q
        (let ((respan-edge
               (respan-new-referent
                q :start start-pos :end end-pos
                :form category::s
                :rule 'respan_wh-initial-followed-by-modal
                :head-edge stmt-edge
                :constituents edges)))
        #+ignore ;; replaced by call to respan-new-referent
        (make-edge-over-long-span
         start-pos end-pos
         (itype-of q)
         :rule 'wh-initial-followed-by-modal
         :form category::s
         :referent q
         :constituents edges)
        (make-question-and-edge
         q ; statement
         start-pos end-pos
         :head respan-edge
         :wh (edge-referent wh-edge)
         :rule 'wh-initial-followed-by-modal))))))
 

;; "Which genes regulated by stat3 are kinases?"
;;
(defun wh-with-reduced-relative (wh-edge edges start-pos end-pos)
  "The second edge is a reduced relative, so the wh-edge had better have
   something to attach it to."
  ;; continuation from wh-initial-three-edges
  (tr :wh-walk "wh-with-reduced-relative")
  (let* ((wh-object (edge-referent wh-edge))
         (head-np (value-of 'other wh-object))
         (reduced-edge (second edges))
         (main-verb-edge (third edges)))
    (unless head-np (lsp-error "no 'other' in ~a" wh-object))
    ;; compose the head & relative
    ;; and compose that with the vp
    (if *show-wh-problems*
      (lsp-break "DA should do this")
      (when *warn-when-can-not-formulate-question*
        (warn "DA should do question with reduced relative")))))


;;;-------------------------
;;; from other entry points
;;;-------------------------

;;--- no callers 5/23/19
;; (p/s "What color is the block?")
(defun apply-question-marker (wh-edge vg-edge np-edge)
  "Called by DA rule, wh-be-thing, since parsing is going to be stymied by
   the aux/vg being in the wrong place. We take our cue from
   the verb and do it by hand, going directly to the interpretation"
  ;; meta-dot on compose-preposed-aux-into-predicate-adjp to get near
  ;; the right place in rules/DA/da-rules.lisp
  (declare (special category::copular-predicate category::s))
  (tr :wh-walk "apply-question-marker")
  (let ((vg (edge-referent vg-edge))
        (np (edge-referent np-edge))
        (wh (edge-referent wh-edge)))
     (cond ((itypep vg 'be)
           ;; we're asking about an attribute of the np
           ;; so we have to instantiate the copular-predication
           (let ((i (define-or-find-individual 'copular-predication
                        :predicate vg
                        :item np)))
             (let ((edge (make-binary-edge/explicit-rule-components
                          vg-edge ;; left
                          np-edge ;; right
                          :category category::copular-predicate
                          :form category::s  ;; vp? order is odd for a vp
                          :referent i)))
               (tr :wh-apply-question-marker edge)
               edge)))
           
           ((itypep vg 'do)
            ;; (p/s "What proteins does PLX-4720 target?")
            (if *debug-questions*
              (break "DA do -- two edges: ~a, ~a" vg-edge np-edge)))

           (t
            (if *debug-questions*
              (lsp-break "Don't know how to formulate a wh question whose vg is ~a" vg)
              (warn "Don't know how to formulate a wh question whose vg is ~a" vg))))))




;;------- compose methods on WH-question

;; This is the second time around after we're assembled
;; the pieces of the question. We can now set it up.
;; The call to compose is in make-subordinate-clause
;;   (p/s "What color is the block?")

(def-k-method compose ((wh category::wh-question) (i individual))
  (tr :wh-walk "compose wh-question + individual")
  (add-statement-to-wh-question wh i))

(def-k-method compose ((wh category::wh-question/attribute) (i individual))
  (tr :wh-walk "compose wh-question/attribute + individual")
  (add-statement-to-wh-question wh i))

(defun add-statement-to-wh-question (wh stmt)
  (declare (special category::question))
  (let ((q (extend-wh-object wh :statement stmt)))
    (revise-parent-edge :form category::question
                        :referent q)
    (tr :wh+individual-method q)
    q))


;;;-----------------------
;;; preposed-of questions
;;;-----------------------

(defun dig-for-embedded-which (spanning-edge)
  "This depends on just what the rules that formed the edge have done.
 Any change to the attach-leading-pp-to-clause DA function or to
 compose-wh-with-vp that fends off the relative clause interpretation
 could effect the heuristic walk done here."
  (when (eq (edge-rule spanning-edge) 'attach-leading-pp-to-clause)
    (let ((top-edges (edge-constituents spanning-edge)))
      (when (= 3 (length top-edges))
        (let* ((main-edge (third top-edges))
               (wh-edge (edge-left-daughter main-edge)))
          (when (eq (edge-form wh-edge) category::wh-pronoun)
            ;; respan the edge, having moved the parts back together
            (let* ((pp-edge (first top-edges))
                   (p-obj-edge (edge-right-daughter pp-edge))
                   (vp-edge (edge-right-daughter main-edge))
                   (vp (edge-referent vp-edge))
                   (open-var (open-core-variable vp))
                   (rule (multiply-edges p-obj-edge vp-edge)))
              ;; Open-core-variable returns the first 'subject' option
              ;; that it encounters in the list, which happens to be
              ;; wrong for "regulate"
              (when rule
                (let* ((edge (make-completed-binary-edge 
                              p-obj-edge vp-edge rule))
                       (i (edge-referent wh-edge))
                       (new-subj-edge (edge-left-daughter edge))
                       (j (edge-referent new-subj-edge)))
                  ;; fold-in WH-element
                  (let ((k (bind-variable 'has-determiner i j))
                        (s (edge-referent edge)))
                    (set-edge-referent new-subj-edge k)
                    ;; k is the new value for the subject

                    (let ((modified-s (rebind-value j k s)))
                      (set-edge-referent edge modified-s)

                      ;; We have stranded the initial 'of' and the
                      ;; interior ',' but to make the downstream
                      ;; per-sentence operations, often based on
                      ;; all-tts, the start of the new edge has
                      ;; to be the same as the start of the original
                      ;; spanning-edge.
                      (stipulate-edge-position (pos-edge-starts-at spanning-edge)
                                               (pos-edge-ends-at edge)
                                               edge)
                      edge)))))))))))
          


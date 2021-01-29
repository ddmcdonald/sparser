;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2019-2021 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "da-rules-aux"
;;;   Module:  "grammar;rules:DA:"
;;;  Version:  January 2021

;; Initiated 1/15/19 to break out the predicates and work functions
;; from da-rules to make them both easier to read

(in-package :sparser)

;;--- looking through the tree

(defun get-subject-from-s-edge (s-edge)
  (declare (special s-edge))
  (let ((real-s-edge (find-base-np-vp-edge s-edge)))
    (when (and (edge-p real-s-edge)
               (edge-p (edge-left-daughter real-s-edge)))
      (edge-referent (edge-left-daughter real-s-edge)))))

(defun find-base-np-vp-edge (e)
  "Walk down the left side of 'e'. Return the first subject-like edge
   you encounter (including participles), or nil if you encounter a vp-like
   edge."
  (declare (special *show-failed-find-base-np-vp-edge*))
  (cond ((member (form-cat-name (edge-left-daughter e))
                 '(np proper-noun proper-name
                   common-noun common-noun/plural
                   pronoun wh-pronoun
                   vg+ing vp+ing))
         e)
        ((or (member (form-cat-name e) '(subordinate-s subordinate-clause))
             (member (form-cat-name (edge-left-daughter e))
                     '(adverb pp to-comp
                       subordinate-clause)))
         (let ((viable-edges
                (loop for ee in (edges-under e)
                     unless (or (not (edge-p ee))
                                (word-p (edge-left-daughter ee)) ; dry#26 "mechanistically"
                                (word-p (edge-category ee))) ; "and"
                   collect ee)))
           (when viable-edges
             (find-base-np-vp-edge (or (second viable-edges) ; skip over 1st edge
                                       (car viable-edges)) ; 1st filtered out
                                   ))))
        ((or (member (form-cat-name e)
                     '(vp vg vp+past vp+ed))
             (member (cat-name (edge-category (edge-left-daughter e)))
                     '(vp vg vp+past vp+ed there-exists)))
         nil)
        ((member (form-cat-name (edge-left-daughter e))
                 '(s subordinate-s)) ;; possible/likely conjunction
         (find-base-np-vp-edge (edge-left-daughter e)))
        
        (t (when *show-failed-find-base-np-vp-edge*
             (warn "find-base-np-vp-edge failed for ~s in ~s" e (current-string)))
           nil)))


;;--- predicates

(defun np-conjunction-edge? (e)
  (and (eq (form-cat-name e) 'np)
       (individual-p (edge-referent e))
       (is-basic-collection? (edge-referent e))))



;;--- Standard constructors

(defun create-event-relation (event-edge sub-clause-edge
                              &optional
                                (conj (value-of 'subordinate-conjunction
                                                (edge-referent sub-clause-edge))))
  (make-edge-spec
   :category category::event-relation
   :form category::s
   :referent (make-event-relation
              conj
              (edge-referent event-edge)
              (edge-referent sub-clause-edge)
              event-edge
              sub-clause-edge)))


(defun make-event-relation (conj event sub-event &optional event-edge sub-event-edge)
  (cond ((itypep event 'polar-question)
         (let ((event-relation
                (make-simple-individual
                 category::event-relation
                 `((relation ,conj)
                   (event ,(value-of 'statement event))
                   (subordinated-event ,sub-event)))))
           ;; create the edge needed to hold the mention for
           ;;  event-relation
           (make-edge-over-long-span
            (pos-edge-starts-at sub-event-edge)
            (pos-edge-ends-at sub-event-edge)
            category::event-relation
            :rule 'make-event-relation
            :form (edge-form sub-event-edge)
            :referent event-relation)
         (make-simple-individual
          category::polar-question
          `((statement , event-relation)))))
        (t
         (let ((event-relation
                (make-simple-individual
                 category::event-relation
                 `((relation ,conj) (event ,event) (subordinated-event ,sub-event)))))
           (make-edge-over-long-span
            (pos-edge-starts-at sub-event-edge)
            (pos-edge-ends-at sub-event-edge)
            category::event-relation
            :rule 'make-event-relation
            :form (edge-form sub-event-edge)
            :referent event-relation)
           event-relation))))
;;--- Common subroutines

(defun fix-da-ending-pos (da-end-pos)
  (if (or (eq (pos-terminal da-end-pos) *end-of-source*)
          (null (pos-terminal da-end-pos)))
    (chart-position-before da-end-pos)
    da-end-pos))

(defun update-edge-as-lambda-predicate (vp-edge np
                                        &optional (syntactic-label :subject)
                                        &aux (vp-indiv (edge-referent vp-edge)))
  ;; update-edge-as-lambda-predicate now returns NIL if there is
  ;;  no available binding for the variable (s-var or t-var) on srel-edge
  (declare (special category::wh-question))
  (cond ((null np)
         (lsp-break "null np in update-edge-as-lambda-predicate")
         (return-from update-edge-as-lambda-predicate nil))
        ((edge-p np) (setq np (edge-referent np))))
  (when (and (eq :subject syntactic-label)
             (member (form-cat-name vp-edge) '(vp+passive object-relative-clause)))
    ;; example "is mediated by caspase-3, which is also activated by GzmB"
    (setq syntactic-label :object))
  (cond ((itypep vp-indiv category::wh-question)
         (update-wh-question-as-lambda-predicate vp-edge np syntactic-label))
        ((is-basic-collection? vp-indiv)
         (update-conjunctive-edge-as-lambda-predicate vp-edge np syntactic-label))
        (t (let* ((svar (best-variable-for-syntactic-label vp-edge np syntactic-label)))
             (cond 
               ((null svar)
                ;;(break "update-edge-as-lambda-predicate fails~
                ;;to find a subject-variable for ~s~%" vp-edge)
                ;; (edge-referent vp-edge)
                nil)
               ((null (value-of svar (edge-referent vp-edge)))
                ;; now creates a new edge, so doesn't have to set
                ;; the referent separately
                (create-predication-and-edge-by-binding
                 svar np (edge-referent vp-edge) vp-edge)))))))
 
(defun ref-from-edge (ref)
  (if (edge-p ref) (edge-referent ref) ref))

(defun best-variable-for-syntactic-label (vp-item item syntactic-label)
  (let ((vp (ref-from-edge vp-item))
        (np (ref-from-edge item)))
    (if (and np vp) ;; can get null vp for cases like "which might be more impressive"
        (subcategorized-variable vp syntactic-label np)
        (subject-variable vp))))


(defun copular-predication-clause? (clause clause-referent)
  (or 
   (itypep clause-referent 'copular-predication)
   ;; we are no longer creating copular-predication
   ;;  for copular adjecives
   (adjective-phrase? (edge-right-daughter clause))
   ;; DAVID -- this is how we now detect copular-adjective-clauses
   ;;  see make-copular-adjective
   (value-of 'copula clause-referent)))

(defun failed-pp-attachment (pp clause-referent)
  (declare (special *show-failed-fronted-pp-attachment*))
  (when *show-failed-fronted-pp-attachment*
    (format t "~&~&<<<<<<<>>>>>> attaching leading PP ~s to clause ~s without defined variable~&"
	    (retrieve-surface-string pp)
	    (retrieve-surface-string clause-referent)))
  nil)



(defun update-wh-question-as-lambda-predicate (vp-edge np syntactic-label)
  (let ((new-pred (update-edge-as-lambda-predicate
                   (edge-right-daughter vp-edge)
                   np
                   syntactic-label)))
    ;(set-edge-referent vp-edge new-pred)
    new-pred))

(defun update-conjunctive-edge-as-lambda-predicate (vp-edge np syntactic-label)
  (declare (special vp-edge))
  ;;  (lsp-break "vp-edge")
  (let ((conj-preds (value-of 'items (edge-referent vp-edge))))
    (unless (loop for cpred in conj-preds
                  always (best-variable-for-syntactic-label cpred np syntactic-label))
      ;; BAIL unless all conjunctive clauses can be predicates on the np
      (let* ((new-preds
              (loop for cpred in conj-preds
                    collect
                      (create-predication-by-binding
                       (best-variable-for-syntactic-label cpred np syntactic-label)
                       np cpred)))
             (new-conj (create-collection new-preds (itype-of (edge-referent vp-edge)))))
        (make-predication-edge vp-edge new-conj) ;; make one predication edge over all
        new-conj))))

(defun conjunction-glue (e)
  "conjunction or comma that glues a conjunction edge together"
  (or
   (eq (form-cat-name e) 'conjunction)
   (eq (edge-category e) word::comma)))

(defun find-target-satisfying (fringe pred)
  (loop for edge in fringe
     when (and (not (eq (edge-mention edge) t))
               ;; only want maximal projections
               ;; not subsumed by a larger projection on the fringe/head-line
               (funcall pred edge))
     return edge))

(defun right-fringe-of (edge)
  "Always used in conjunction with find-target-satisfying to supply
   the candidate right fringe of edges that is anticipated to include
   the target edge."
  (connected-fringe (pos-ends-here (pos-edge-ends-at edge))))

(defun np-target? (edge)
  (and
   (member (form-cat-name edge) '(proper-noun np))
   ;; test below is because of some strange cases where an item in the
   ;;  fringe in not in the tree
   (or (null (edge-used-in edge))
       (and
        ;; test below is to block finding of "FAK" below "phosphorylated FAK"
        (not (np-target? (edge-used-in edge)))
        (not (member (form-cat-name (edge-used-in edge))
                     '(n-bar np)))))))

(defun clause-target? (edge)
   (member (form-cat-name edge) '(thatcomp s)))

(defun verb-target? (edge)
  (member (form-cat-name edge) '(s vg vg+ing vg+ed lambda-form)))

(defun takes-adjunct-target? (edge)
  (or (np-target? edge) (verb-target? edge)))
  

(defun adverb-at? (position)
  (loop for e in (all-edges-on (pos-starts-here position))
        thereis (and (edge-p e) (eq (form-cat-name e) 'adverb))))

(defun adjective-at? (position)
  (loop for e in (all-edges-on (pos-starts-here position))
        thereis (and (edge-p e) (member (form-cat-name e) '(adjective adjg)))))

(defun to-be-at? (position)
  (loop for e in (ev-top-edges (pos-ends-here position))
     thereis (and (edge-p e) (eq (edge-cat-name e) 'be))))

(defun respan-edge-around-one-word (word-edge left-term right-term)
  (let ((word-category (edge-category word-edge))
        (word-form (edge-form word-edge))
        (word-referent (edge-referent word-edge))
        (new-start-pos (chart-position-before (pos-edge-starts-at word-edge)))
        (new-end-pos (chart-position-after (pos-edge-ends-at word-edge))))
    (let ((edge (make-completed-unary-edge
                 ;; We're ignoring the commas in the edge structure
                 ;;/// this is usually an interjection, how could we
                 ;; indicate that
                 (pos-starts-here new-start-pos) ;; the edge vector
                 (pos-ends-here new-end-pos)
                 :respan-edge-around-one-word ;; rule
                 word-edge ;; daughter
                 word-category 
                 word-form
                 word-referent)))
      (setf (edge-constituents edge) `(,left-term ,word-edge ,right-term))
      ;; (push-debug `(,edge)) (break "look at edge")
      edge)))



;;--- Functions for attaching trailing participles

(defun attach-trailing-participle-to-clause-with-conjunction (s-edge conj vp-edge)
  ;; The participle (vp+ing) is presumably missing it's subject,
  ;; which we'll take to be the whole clause. 
  ;;//// motivated by second sentence in figure-7 where the participle
  ;; is a conjunction, as is the clause. Semantically that one reads
  ;; as the entire clause being the cause of (each of) the elements of
  ;; the participle. But this should be reconsidered if other cases
  ;; have a different relationship.
  (attach-trailing-participle-to-clause-or-object-with-comma s-edge vp-edge))

(defun attach-trailing-participle-to-clause-or-object (s-edge vp-edge)
  (let* ((s (edge-referent s-edge))
         (vp (edge-referent vp-edge))
         (target
          (find-target-satisfying
           (right-fringe-of s-edge)
           #'(lambda(x)
               (and (np-target? x)
                    (subcategorized-variable vp :subject (edge-referent x))))))
         ;; update-edge-as-lambda-predicate now returns NIL if there is
         ;;  no available binding for the variable (s-var or t-var) on vp-edge
         (t-pred (when target
                   (update-edge-as-lambda-predicate vp-edge target))))
    (cond (t-pred
           (make-edge-spec 
            :category (edge-category target)
            :form (edge-form target)
            :referent (bind-dli-variable :predication t-pred (edge-referent target))
            :target target
            :direction :right))
          ((let ((s-pred (update-edge-as-lambda-predicate vp-edge s)))
             (when s-pred
               (make-edge-spec 
                :category (edge-category s-edge)
                :form (edge-form s-edge)
                :referent (bind-dli-variable 'predication s-pred s)
                )))))))

(defun attach-trailing-participle-to-clause-or-object-with-comma (s-edge vp-edge)
  "the comma makes it more likely as a modifier of the s" ;;/// ????
  (let* ((s (edge-referent s-edge))
         (vp (edge-referent vp-edge))
         (s-pred
          ;; update-edge-as-lambda-predicate now returns NIL
          ;; if there is no available binding for the variable
          ;; (s-var or t-var) on vp-edge
          (update-edge-as-lambda-predicate vp-edge s)))
    (if s-pred
        (make-edge-spec 
         :category (edge-category s-edge)
         :form (edge-form s-edge)
         :referent (bind-dli-variable 'predication s-pred s))
        (let* ((target (find-target-satisfying
                        (right-fringe-of s-edge)
                        #'(lambda(x)
                            (and (np-target? x)
                                 (subcategorized-variable
                                  vp
                                  :subject (edge-referent x))))))
               (t-pred
                (when target
                  (update-edge-as-lambda-predicate vp-edge target))))
          (when t-pred
            (make-edge-spec 
             :category (edge-category target)
             :form (edge-form target)
             :referent (bind-dli-variable :predication t-pred (edge-referent target))
             :target target
             :direction :right))))))


;;;------------------------
;;; adjunctive attachments
;;;------------------------

(defparameter *do-adjunctive-attachments* nil
  "Gate on whether we do these")

(defparameter *adjunctive-attachments* nil
  "Collects case where this applied")

(defparameter *ambiguous-adjuncts* nil)
(defparameter *break-adjunctive-pp* nil)

(defun add-adjunctive-pp (head-edge pp-edge)
  (declare (special *do-adjunctive-attachments*
                    *reduced-known-adjunct-attachments*))
  (when *do-adjunctive-attachments*
    (let* ((prep-word (identify-preposition pp-edge))
           (*pobj-edge* (edge-right-daughter pp-edge))
           (pobj-referent (identify-pobj pp-edge))
           (right-fringe (right-fringe-of head-edge))
           (edge-taking-adjunct (find-target-satisfying right-fringe #'takes-adjunct-target?))
           (ambigs 
             (remove-duplicates
              (loop for fringe in right-fringe when (and (edge-p fringe)
                                                         (individual-p (edge-referent fringe))
                                                         (assoc (cat-name (itype-of (edge-referent fringe)))
                                                                *reduced-known-adjunct-attachments*))
                    collect (list (cat-name (itype-of (edge-referent fringe)))
                                  (intern (pname prep-word))))
              :test #'equal)))
      (declare (special right-fringe ambigs)) ; for debugging

      (cond ((cdr ambigs)
             (when *break-adjunctive-pp*
               (lsp-break "breaking add-adjunctive-pp for ~%s=~s, ~% fringe: ~s~%"
                          (sentence-string (current-sentence))
                          right-fringe))
             (push (list ambigs (sentence-string (sentence))) *ambiguous-adjuncts*)
             nil)
            (edge-taking-adjunct
             (push (list (list
                          (intern (string-upcase (pname prep-word)) :sp)
                          (cat-name (itype-of (edge-referent edge-taking-adjunct)))
                          (cat-name (itype-of pobj-referent))
                          (cat-name (edge-form edge-taking-adjunct)))
                         (format nil "~a ~a in sentence ~s"
                                 (retrieve-surface-string (edge-referent head-edge))
                                 (retrieve-surface-string (edge-referent pp-edge))
                                 (sentence-string (sentence)))
                         (edge-referent head-edge)
                         pobj-referent)
                   *adjunctive-attachments*)
             (make-edge-spec
              :category (edge-category edge-taking-adjunct)
              :form (edge-form edge-taking-adjunct)
              :target edge-taking-adjunct
              :direction :right
              :referent (bind-dli-variable 'adjunctive-modifier
                                           pobj-referent
                                           (edge-referent edge-taking-adjunct)
                                           )))))))

(defun find-adjunctive-attachments (head &optional prep)
  (declare (special *adjunctive-attachments*))
  (loop for ss in *adjunctive-attachments*
     when (and (eq head (second (car ss)))
               (or (null prep)
                   (eq prep (caar ss))))
     collect ss))


(defparameter *reduced-known-adjunct-attachments*
  '((INTAKE WITH) (INSTRUCTION IN) (RMB UPON) (ADULT-ENDURANT FROM) (ADDRESS IN) (TRAIT |NEXT TO|)
    (MULTIPLE-LINEAR-REGRESSION INCLUDING) (BEHAVIOR |IN THE LIGHT OF|) (CONSTRAINT TO) (TEND VIA)
    (LEVEL IN) (TEND IN) (AGREEABLENESS VS.) (TRAITDIMENSIONS |IN LINE WITH|) (MAN WITH) (FACTOR OF)
    (ACCEPTANCE OF) (AUTHORITY AROUND) (RESOURCE FOR) (DISEASE AT) (WILLINGNESS IN) (SUBSTANCE DURING)
    (ATTENDANCE AT) (PARTICIPATE IN) (LOAD-ENDURANT ON) (RELEVANCE OF) (CARE-ENDURANT IN)
    (PERCENT VS.) (PARENT OF) (EMAILS WITH) (TIME-UNIT AT) (ROLE-BASED-PERSON PER)
    (CASES-PATHOGEN PER) (ANALYZE ON) (NECESSITY OF) (ASPECT ABOUT) (OVERWHELM BY) (PROVIDER IN)
    (TIME PER) (EMPLOYMENT AT) (FEAR OF) (ADAPTATION OF) (EDUCATION ON) (COMMUNICATION OF) (KEY TO)
    (PANDEMIC |SUCH AS|) (REJECT |DUE TO|) (DIFFERENCE FROM) (SCALE-CL-VERB TO) (RECOMMENDATION OF)
    (INFECT FOR) (DEMOGRAPHICS OF) (UNAWARE OF) (THEIRPRESENTATIONS TO) (SIMILARTRENDS IN)
    (INFLUENCEEXACERBATIONS OF) (ATTITUDE AT) (SAMPLE-SIZE-STAT-MEASURE IN) (INCONGRUENCE BETWEEN)
    (ATTITUDE TO) (DANGEROUS TO) (CONSIDER |IN LIGHT OF|) (CARE-ENDURANT ABOUT) (DISCORD BETWEEN)
    (ROLE-BASED-PERSON ACROSS) (AREA ABOVE) (EMERGE IN) (TEST WITH) (ELIGIBLE FOR)
    (ANXIETY |AS A RESULT OF|) (EMOTION-AUTO |SUCH AS|) (BIO-ACT IN) (WOMAN IN) (BIO-STATE WITH)
    (ENOUGH FOR) (BIGOTRY TOWARDS) (VIEW-AUTO |IN CONTRAST TO|) (PERCENT BETWEEN)
    (RHETORIC THROUGHOUT) (DYNAMICS BETWEEN) (XENOPHOBIA IN) (PERCENT WITHIN) (COMMERCE AT)
    (PUBLICIZE IN) (NOT FROM) (HOSTILITY TOWARDS) (PROLIFERATION OF) (EXPERIMENTAL-SYSTEM VERSUS)
    (RESULT FROM) (FREQUENCY REGARDING) (Z-SCORE-STAT-MEASURE ABOVE) (COLLECTION ON) (REPRESENT WITH)
    (ADMINISTER IN) (RECOMMENDATION BY) (DISAGREEMENT BETWEEN) (CATEGORY OF) (BELIEF |SUCH AS|)
    (RECOMMENDATION |SUCH AS|) (ANCHORAGE AT) (SCALE WITH) (INDICATE AT) (CORONAVIRUS FROM)
    (ANGST FOR) (DAMAGE TO) (THREATEN BY) (PEOPLE ACROSS) (INSIGHT ABOUT) (PROVIDE TO)
    (FRAMEWORK |ALONG WITH|) (TARGET AT) (OVERALL-ENDURANT DURING) (MINDFULNESS DURING) (ATTENTION ON)
    (MINDFULNESS TO) (ASSET TO) (DISTRESS AT) (CONTAINMENT OF) (ANOTHER WITH) (WELL-BEING ON)
    (FRAUGHT WITH) (NATIONALISM AS) (PREPRINT AT) (CHARACTERISTICS TO) (SEMITISM IN) (SIDE OF)
    (COMPARE FOR) (SENSEMAK DURING) (THEORY AS) (TOBELIEVE IN) (CATEGORIZE AS)
    (STANDARD-DEVIATION-STAT-MEASURE ABOVE) (BALANCE IN) (REPRESENTATIVE FOR) (VALUE TO)
    (ALSOCONSISTENT WITH) (RESULTS AS) (SUGGEST FROM) (PLAY-CL-VERB IN) (THEORY INTO) (IDENTIFY FROM)
    (VARIABLE/TERM AS) (DISTINGUISHABLE FROM) (ROBUSTNESS OF) (RIGOR IN) (GAP IN) (THEORY |SUCH AS|)
    (ALIGNMENT ON) (EVIDENCE ON) (RESULTS FROM) (RESIDENT-ENDURANT WITH) (ILLUSTRATE BY)
    (EXPERIMENTAL-SYSTEM FROM) (CHANGE TO) (SPECIALIST FROM) (BELIEF BY) (CONSTRUCT AFTER)
    (BIO-EVENT WITH) (RESPONSE |WITH REGARD TO|) (DISPROVEN BY) (SITUATION ON) (MEANING-ENDURANT IN)
    (ARTICLE-FIGURE OF) (ROLE-BASED-PERSON TO) (WORKER DURING) (BACK BY) (PHENOMENON DESPITE)
    (DISPROPORTION IN) (RELY IN) (MORE-ROBUST TO) (PUNISHMENT TO) (INVOLVE OF) (WORRY IN)
    (MORE-PRONE TO) (ANXIETY ON) (SUGGEST TO) (SHOW ABOUT) (ITEM BY) (SURVIVOR FROM) (WORKER FROM)
    (POPULATION FROM) (SITUATION IN) (HIDDEN FROM) (COMMUNICATION FROM) (FREEDOM |IN VIEW OF|)
    (PREVENT FROM) (ONES WITH) (SCARCITY OF) (PUT-SOMETHING-SOMEWHERE AT) (ODDS FOR) (GROUP AS)
    (FREEDOM IN) (BIO-QUESTION AS) (FREEDOM FOR) (ADEQUATE TO) (WORRY BY) (PERCENT ABOUT)
    (SCARE ABOUT) (EFFECT |BY MEANS OF|) (BEENDETECT IN) (AREA BETWEEN) (COMPARE |BY MEANS OF|)
    (SMOKE PER) (INVITE AT) (VACCINE IN) (TIME-UNIT PER) (PARTICIPATE TO) (DIFFERENCE WITH)
    (SITUATION FOR) (WORKER IN) (EVIDENT IN) (BED-ENDURANT IN) (DESTINE TO) (CARE-ENDURANT ON)
    (RESPONSIBLE OF) (INTERVENTION TO) (EXPOSITION TO)
    (CORRELATION-COEFFICIENT-STAT-MEASURE |SUCH AS|) (PANDEMIC WITH) (ADJUSTMENT TO) (NOT AS)
    (DIFFICULTY IN) (MUSTSTAY AT) (FRIEND AT) (MENTION AS) (UNCERTAINTY IN) (COMPATIBLE WITH)
    (FEMALE PER) (DISCUSSION |ACCORDING TO|) (POPULATION ABOUT) (ROLE-BASED-PERSON ABOUT) (SHOE AT)
    (MEASUREMENT FROM) (PROCEDURE IN) (GROUP AT) (ANSWER/INFO THROUGHOUT) (ANSWER/INFO ALONG)
    (CHARACTERIZE OF) (DECREE IN) (EMPOWERMENT THROUGH) (DESCRIBE BY) (NUMBER-SEQUENCE FROM)
    (RECEIVE FOR) (TREATMENT FOR) (COMMUNITY ON) (BIO-PROMOTE OF) (STUDY DURING) (DELIVERY FROM)
    (EXAMPLE INCLUDING) (RATIONALE FOR) (STRATEGY INCLUDING) (QUARTER OF) (SUSCEPTIBILITY OF)
    (ADOPTION OF) (RAISE ABOUT) (EFFECTIVENESS OF) (INTERMEDIATE-ENDURANT TO) (TEST BETWEEN)
    (COMPUTER AT) (THEPRESENCE OF) (SPOKEN AT) (PLACE INTO) (PHRASE-CL-VERB AS) (AVAILABLE UPON)
    (APPROVAL FOR) (BEHAVIOR ON) (COUNTRY AROUND) (HUMIDITY IN) (CONVENTION FOR) (CONTRIBUTE FROM)
    (TATSUMI FOR) (NAKAGAWA FOR) (TEJIMA FOR) (MITSUYA FOR) (BIO-METHOD DURING) (ALIVE IN)
    (DIFFERENCE OF) (MORTALITY OF) (PERSON WITH) (HOMOGENEOUS ACROSS) (RETRIEVABLE FROM)
    (ASSUMPTION OF) (TEMPERATURE IN) (RETRIEVE ON) (RESEARCHER IN) (RATIO BETWEEN) (RESPECT FOR)
    (TIME-CL-VERB OF) (INCIDENCE OF) (SELECT AS) (SPREAD WITHIN) (ENDORSE BY) (THREATEN AMONG)
    (BEHAVIOR WITHIN) (PERSPECTIVE FROM) (EFFORT AS) (DEVIATION FROM) (FACT OF) (SOURCE THROUGH)
    (CHARACTERISTICS |SUCH AS|) (EXCLUDE FOR) (ANALOGOUS TO) (REGRESS ON) (IDEOLOGY AS)
    (INACCURACY IN) (COVERAGE OF) (KNOW IN) (VIEW ON) (JUDGEMENT OF) (URGENCY IN) (LIBERALS FROM)
    (TRANSFORMATION OF) (FACILITY IN) (MINORITY-AUTO IN) (STRENGTHEN-CL-VERB AFTER)
    (HOME-ENDURANT DESPITE) (OVERREPRESENT IN) (OCCUR AT) (THOSE FROM) (EVENT-RELATION FOR)
    (ALGORITHM TO) (CONDITION ON) (MORTALITY |AS OF|) (MALE VS.) (OCCUR IN) (VARY BY) (AFFAIR BETWEEN)
    (AFFAIR |AS OF|) (95-PERCENT-CONFIDENCE-INTERVAL-STAT-MEASURE BETWEEN) (MORTALITY AMONG)
    (BASELINE TO) (BASELINE FOR) (REPORT FROM) (STUDY TO) (OUTCOME FROM) (SITE OF) (WEBSITE |SUCH AS|)
    (ENCOURAGE BY) (COLLECTION AS) (INDICE FOR) (ESTIMATOR THROUGHOUT) (SCORE BY) (TREATMENT AS)
    (COLLECT DURING) (PAY TO) (VARIABLE/TERM AMONG) (ANTECEDENT-ENDURANT OF) (OUTCOME AMONG)
    (HYGIENE AMONG) (CARE-ENDURANT THROUGH) (ALL ABOUT) (REPRESENTATIVE OF) (CONTENT WITH)
    (RANGE BELOW) (MOTIVATION BY) (COVID-19 TO) (EMPATHY FOR) (COMPANY TO) (ISSUE OF) (APPROACH AT)
    (DIFFERENT IN) (DISEASE FROM) (RENDER |AS TO|) (PATTERN-ENDURANT IN) (ENCOURAGEMENT OF)
    (CANCELLATION OF) (IMPLEMENT ON) (COUNTRY IN) (INSIGHT FROM) (HIGHER FOR) (VALUE-IS-NEGATIVE WITH)
    (SPECIFIC ACROSS) (PERCEPTION FOR) (POSE BY) (AMOUNT-OF-TIME IN) (PATION BY) (STOCKPILE OF)
    (CONFIDENCE IN) (COUNTRY ON) (MOLECULAR-LOCATION OF) (ITY TO) (FACEBOOK IN) (WORLDWIDE |AS OF|)
    (OUTLOOK FOR) (ATTITUDE IN) (GOAL IN) (SAMPLE ACROSS) (ROLE-BASED-PERSON THROUGH) (SPONSE TO)
    (GAP BY) (CATEGORY BY) (IDENTICAL FOR) (RANDOMIZE WITH) (MEASURE FOR) (SAMPLE TO) (EACH IN)
    (ARGUMENT-SUPPORT PAST) (MUCH LIKE) (SOPHISTICATION FOR) (BEHAVIOR AS)
    (BIO-QUESTION |WITH RESPECT TO|) (PREDICT BY) (MISPERCEPTION IN) (ORGANIZATION-AUTO ON)
    (INTENTION |REGARDLESS OF|) (EVIDENT AMONG) (PEOPLE ABOUT) (POLITICIZATION OF) (IDEOLOGY ACROSS)
    (DISAGREEMENT ABOUT) (CONSERVATIVES IN) (MEMBER FROM) (OUTLET |SUCH AS|) (LABEL AS) (ALL VIA)
    (PUBLICATION OF) (FUND FROM) (OBTAIN VIA) (EFFECT IN) (RELATIONSHIP ACROSS) (ACCURACY IN)
    (MIDPOINT IN) (PARADIGM ON) (EVIDENCE IN) (HEADLINE |AS FOR|) (BIO-QUESTION AT) (PREFERENCE FOR)
    (SEE WITH) (RESPONSESBELIEF IN) (RESPONSE BY) (IMPORTANCE AMONG) (TYPE OF) (SEVERE AMONG)
    (NECESSITY WITHIN) (WHICHRELIES ON) (EMERGENCY ON) (ALTRUISM DURING) (EPIDEMIC AMONG)
    (LESSON FROM) (LONELINESS IN) (SYMPTOMATOLOGY IN) (EMPATHY AS) (RESPONDERS TO) (COUPLE BETWEEN)
    (DISCONNECTION AS) (PROCLIVITY FOR) (INDUCE OF) (MEDIATE THROUGH) (LONELINESS WITH)
    (ISSUE-CL-VERB AT) (EXCEPTION FROM) (CONFIDENCE-INTERVAL-STAT-MEASURE FOR) (COMPLAINT IN)
    (FACTOR IN) (EXAMINE WITH) (EVALUATION OF) (DISCONNECTION FROM) (COLLECTION TOWARDS)
    (COMPLIANCE TO) (OVERLAY ON) (PROHIBIT BY) (WASTHSANCTION BY) (COMPLIANCE FROM) (IMPLEMENT AT)
    (CAPTURE |DUE TO|) (AWARENESS AMONGST) (CONTRIBUTOR TO) (PREVALENT AMONG) (IN-LINE WITH)
    (DEPRESSION BY) (RESOURCE INCLUDING) (PREVALENT ACROSS) (USS DURING) (EVENT-RELATION AS)
    (DISEASE WITH) (SAMPLE WITHIN) (RESOURCE IN) (NEWS OF) (OXYGENATION AT) (FRIEND ABOUT)
    (FACILITY FOR) (TEND TO) (DISEASE FOR) (THOSE UNDER) (ROLE-BASED-PERSON OVER) (PASSENGER FROM)
    (IMPLEMENT BY) (PARENT WITH) (PROPORTIONAL TO) (BOTH AS) (DISTRIBUTION AMONG) (GOODS WITH)
    (HYPHENATED-PAIR |IN ADDITION TO|) (INTERACT FOR) (WARD IN) (DISTANCE FOR) (BIO-ENHANCE OF)
    (REVISE FOR) (CARE-ENDURANT FOR) (UNDERTAKEN IN) (ESTABLISH OF) (DAMAGE FROM) (COVID-19 OVER)
    (CORONAVIRUS IN) (BEHAVIOR UNDER) (COUNTERMEASURE AGAINST) (EXTENSIVE IN) (LOCATION WITH)
    (REGRESSION OF) (MUCH |IN TERMS OF|) (COST-ENDURANT |IN TERMS OF|) (WINDOW OF) (PRETATION OF)
    (IMPACT IN) (CHOICE-ENDURANT |SUCH AS|) (RESULTS FOR) (CLASSIFY INTO) (DENSITY IN)
    (MEAN-STAT-MEASURE TO) (EXPERIMENTAL-CONDITION IN) (AUTOCORRELATION OF) (VALUE AS) (CELL-LINE FOR)
    (PANEL OF) (MEASURE-AS-MEASUREMENT FROM) (SERVE BY) (MEMBER OF) (STRONGHOLD IN) (ONSET OF)
    (DIE AS) (TRIBUTION |IN TERMS OF|) (BIO-STATE AFTER) (ARGUMENT-SUPPORT THROUGH) (COUNTY WITH)
    (NUMBER-SEQUENCE WITHIN) (PERSON UNDER) (DATE AS) (CALCULATE AFTER) (MEAN-STAT-MEASURE AT)
    (TEMPERATURE DURING) (PREVALENT IN) (POLLUTION ACROSS) (DISPARITY BETWEEN) (VULNERABILITY OF)
    (CONFOUNDERS AT) (SYNONYMOUS WITH) (BOTH BETWEEN) (FATALITY IN) (DETERMINE BY) (NUMBER ON)
    (OUTBREAK-OF-DISEASE IN) (SMEETS FOR) (CONSIST TO) (CONDUCT WITHIN) (HELPFUL IN)
    (COMMUNICATION REGARDING) (PROVIDE WITHOUT) (LIKELY-ADJ |DUE TO|) (MORE-AFRAID OF) (THOSE OF)
    (ANSWER/INFO OF) (RELEVANT FOR) (R-STAT-MEASURE BETWEEN) (DISRUPT IN) (NOT FOLLOWING)
    (RESPONSE FROM) (CONDUCT INCLUDING) (R-STAT-MEASURE FOR) (ANSWER/INFO TO) (DESCRIBE ABOVE)
    (INTOLERANCE OF) (INFORMATION OF) (SAMPLE-SIZE-STAT-MEASURE OF) (CONDUCT BETWEEN) (DESCRIBE AS)
    (DISPOSE TO) (BOTH AT) (PERHAPS IN) (EFFECT BETWEEN) (SUGGEST AS) (LINK THROUGH) (EFFECT VIA)
    (EFFECT THROUGH) (COMPLY WITH) (BEHAVIOUR LIKE) (DISENGAGEMENT IN) (RECOMMENDATION ON)
    (PSYCHOLOGY AS) (THAT OF) (EMPATHY TOWARDS) (CITIZEN IN) (PREVENT ABOUT) (ORDINAL IN) (SYMPTOM AS)
    (BIO-RANGE BETWEEN) (MEDICINE FOR) (ALL ACROSS) (GOVERNANCE AT) (CHALLENGE INCLUDING) (DRUG FROM)
    (ORGANIZATION-AUTO IN) (OUTBREAK-OF-DISEASE BY) (DYNAMICS IN) (PERIOD AS) (RESTRICTION IN)
    (CAPABILITY OF) (PERCENT TO) (TIME FROM) (DYNAMICS WITH) (STATISTIC ACROSS) (PRIOR-ENDURANT FOR)
    (IMPLEMENT IN) (CALCULATE AS) (TRANSMIT BY) (COUNT-OF AT) (CASES-PATHOGEN FROM) (STATUS WITH)
    (DRUG OF) (CONTROL UNDER) (CASES-PATHOGEN WITH) (PROVINCE IN) (CONTROLLABILITY ABOUT) (DANGER IN)
    (SYMPTOM IN) (CELLULAR-PROCESS IN) (APPRAISAL AS) (PROBLEM BEFORE) (DESIRABLE FOR) (ESTIMATION OF)
    (MOLECULE IN) (APPRAISAL OF) (MONITOR OF) (CENTRE WITHIN) (VARIABLE/TERM ON) (BIO-USE AS)
    (HISTORY OF) (SEVERITY ABOUT) (WRITTEN BY) (PARTICIPATION REGARDING) (TOOKPARTICIPANTS ABOUT)
    (SEVERITY AS) (REGARD AS) (CHEMICAL-REACTION TOWARDS) (ESTIMATION ABOUT) (RISK TO) (EFFECT BY)
    (MEASURE-AS-MEASUREMENT |SUCH AS|) (LINK FOR) (RESPONSE REGARDING) (GLMMTMB FOR) (PORTRAY WITH)
    (ANALYZE |TOGETHER WITH|) (ENDORSE AS) (MEASURE-AS-MEASUREMENT ON) (LIKELIHOOD OF) (LIMIT TO)
    (CONCERN OVER) (PRACTICE OVER) (FINDING REGARDING) (INTERVENTION |SUCH AS|) (DIFFERENT FROM)
    (CONCERN OF) (DISEASE AS) (CONVERGE IN) (REGRESS ONTO) (RECOMMENDATION FOR) (DISTANCE DURING)
    (DISCREPANCY BETWEEN) (PANDEMIC BY) (CLASSIFICATION BY) (MORTALITY FOR) (TERM-NAME FOR) (BEGIN OF)
    (COLLECTION BY) (STRATIFY BY) (SUGGEST IN) (MOLECULE ABOUT) (OPTIMISM FOR) (KNOW AS) (OPTIMISM TO)
    (BIO-PROCESS BEHIND) (SUBSTANTIAL IN) (ASSESS AS) (MODEL WITH) (PRESENCE VERSUS)
    (STANDARDIZE ACROSS) (COHESION IN) (MEAN-STAT-MEASURE PER) (SEND AT) (PRONOUN/PLURAL WITH)
    (REMINDER FOR) (COMPLETE-CL-VERB |UP TO|) (PROGRAM IN) (CODEBOOK WITH) (METHODOLOGY IN)
    (CORROBORATE BY) (CHEMICAL-REACTION IN) (THOSE AT) (DYNAMICS DURING) (HEALTH AT) (PERCENTAGE FOR)
    (REGRESSION FOR) (EMPLOYMENT IN) (PERCENTAGE WITH) (COUNTY PER) (DECREASE BY) (DISTANCE AMONG)
    (UNACAST FOR) (FINDING WITH) (DECREASE AFTER) (CONCEPTUALIZE AS)
    (THISSTUDYEXAMINESTHESOCIOECONOMICANDPOLITICALDETERMINANTSOFENGAGEMENT IN) (EVENT-RELATION BY)
    (PROMINENT IN) (OBSERVATION FROM) (SKA OVER) (CONDUCT FOR) (PRESENTATION TO) (NOMINATE BY)
    (RELIABILITY OF) (INTERVAL OF) (ANXIETY TO) (SALIENCY OF) (PEOPLE TO) (HUMAN FROM) (END OF)
    (TACKLE IN) (LIBERALIZATION OF) (ANALYZE |WITH RESPECT TO|) (EXCEPTION TO)
    (FRAME-CL-VERB |WITH RESPECT TO|) (WINDOW TO) (ENTER IN) (SHOW BELOW) (REGISTRATION AT)
    (IDEOLOGY IN) (VALIDATE OF) (PSYCHOLOGY OF) (INVENTORY OF) (INEQUALITY BY) (THIS PAST)
    (UNCERTAINTY AS) (PEOPLE OF) (THREAT AMONGST) (GEAR AT) (IDENTITY IN) (PATTERN-ENDURANT OF)
    (CORRELATION OF) (INVARIANCE OF) (ARGUMENT-SUPPORT OF) (AFFIRMATION IN) (ADHESION WITH)
    (OUTCOME WITH) (LIFE IN) (MAINTAIN OF) (FRAME-CL-VERB WITH) (VALIDITY OF) (METHOD FOR)
    (SPECTER OF) (TWITTER IN) (LITERACY FOR) (POPULAR AMONG) (ENOUGH ABOUT) (TOPIC IN) (SUGGEST BY)
    (VARIABILITY ACROSS) (SIGNIFICANCE |EXCEPT FOR|) (POPULARITY OF) (DISCUSSION ON) (MARK BY)
    (SEASONALITY OF) (PREVALENCE IN) (ANALYZE IN) (INTRODUCTION IN) (PROVIDE WITH)
    (REPRODUCIBILITY OF) (ENGINE AFTER) (PUBLISHED-ARTICLE WITH) (INTENSITY FROM) (PICK BY)
    (INTERNET TO) (KEYWORD IN) (XENOPHOBIA AGAINST) (CONSTRUCT WITH) (VALUE AT) (COUNTRY UNTIL)
    (DEFINITION IN) (ASSESS WITH) (NOTEWORTHY AS) (WEAKER FOR) (CELL-LINE TO) (HYPOTHESIS ON)
    (CORRELATION FOR) (BEHAVIOR WITH) (LOAD-PERDURANT ON) (PREDICT OF) (CONSTRUCTION OF)
    (FEEL-PERDURANT BY) (EFFECT-SIZE-STAT-MEASURE OF) (COMPLETE-CL-VERB ON) (INVITATION WITHIN)
    (INCLUSION OF) (COVID-19 AS) (REASON-AUTO BEHIND) (WORLD AS) (VARIANT OF) (EXPLANATION OF)
    (PEOPLE ON) (INCREASE OF) (MAN FROM) (MODEL OF) (ANALYZE INCLUDING) (FESTIVAL IN) (VULNERABLE TO)
    (ARTICLE-FIGURE IN) (INFECT BY) (COEFFICIENT IN) (TIME-UNIT BY) (EXPERIMENTATION WITH)
    (CHARACTERIZE BY) (TRANSMISSION IN) (OCCUR THROUGH) (COUNTRY OF) (SYNDROMESFIRST |OUTSIDE OF|)
    (TRANSMISSION OF) (BIO-MECHANISM OF) (CHANCE OF) (TAKEN BY) (CONNECTION WITH) (BIO-MECHANISM TO)
    (BORDER WITH) (ALL ON) (EXPERIMENT WITH) (IMPORTANCE |IN THE LIGHT OF|) (RESPONSE AGAINST)
    (ANXIOUSNESS AMONG) (BELIEF LIKE) (RESTRICTION THROUGHOUT) (DISTRIBUTION IN) (INFORMATION LIKE)
    (EXPLORATION BY) (SENSITIVITY IN) (SYMPTOM REGARDING) (INFORMATION FROM) (OVERESTIMATION IN)
    (HYPOTHESIS REGARDING) (WERESATISFACTORY WITH) (RESULTS IN) (EXAMINE BY) (PROPERTY OF)
    (DISTRIBUTION OF) (EXCLUDE |DUE TO|) (DRIVE BY) (STATUS FOR) (CONSISTENCY OF) (VALIDITY FOR)
    (ADOPT FROM) (SENSITIVITY TOWARDS) (CHECKLIST FOR) (CONSISTENCY FOR) (INSPIRE BY) (ASSURE BY)
    (DURATION FOR) (NOTICE FROM) (COLLECTION THROUGH) (SENSITIVITY |ALONG WITH|) (PROPOSE AS)
    (STORY OF) (REPORT ACROSS) (CASES-PATHOGEN OF) (RESEARCH OF) (DEAL THROUGH)
    (DISCUSS |IN THE LIGHT OF|) (TEND OF) (ROLE-BASED-PERSON FROM) (COLLECT AT) (COLLECTION AMONG)
    (EMOTION-AUTO IN) (PREDICTOR FOR) (DESCRIPTIVE-STAT-MEASURE FOR) (ORIENTATION ON) (HEALTH THROUGH)
    (AVERAGE FOR) (BIO-QUESTION |IN LIGHT OF|) (ANXIETY IN) (PREDICTOR OF) (MEMBER IN) (FEELING AT)
    (IMPLICATE IN) (INSTILL ACROSS) (FEATURE OF) (BODY OF) (WORK FROM) (THOSE WITHOUT) (CLOSURE OF)
    (COUNTRY AS) (COUNTRY ACROSS) (SYMPTOM OF) (RANGE FROM) (PROCESSING OF) (INTENSITY OF)
    (SIMILAR ACROSS) (ANXIETY AT) (ESTIMATOR WITH) (REGRESSION WITH) (EXPOSURE TOWARD)
    (PRESENTATION IN) (DISCUSSION OF) (FEELING TOWARD) (CONSISTENT ACROSS) (OPENNESS TO)
    (COMPETITION OVER) (DISTANCE TO) (EXPOSURE IN) (PANDEMIC OF) (SCATTERPLOTS AT) (DATA AT)
    (PRELIMINARY |DUE TO|) (CONCLUSION AT) (RHO-STAT-MEASURE BETWEEN) (RHO-STAT-MEASURE OF)
    (COMPUTE FOR) (POPULATION ON) (DIE |DUE TO|) (ACCESSIBLE FROM) (COUNTRY WITH)
    (BIO-MAKE-STATEMENT WITH) (OUTBREAK-OF-DISEASE |SUCH AS|) (PROXIMITY WITH) (AWARE OF)
    (PREDICTIVE OF) (AMERICANS WITH) (CORRELATION FROM) (MATERIALS FOR) (VISIBLE AMONG) (PROXIMITY TO)
    (BIO-ACT AS) (VULNERABILITY TO) (PREDICTOR BETWEEN) (SUPPORTIVE OF) (DECLARATION OF) (MAKER IN)
    (MOTIVE-ENDURANT FOR) (INTERPRETATION OF) (DANGER TO) (OPTIMISM |ALONG WITH|) (TIME-UNIT INTO)
    (RESPONSE AT) (DIVERGENCE BETWEEN) (SPEND UNDER) (PESSIMISM |IN RELATION TO|) (SATISFACTION WITH)
    (RESIDUALS FROM) (INDICATE OF) (SIDE BY) (REPORT FOR) (PESSIMISM FROM) (EFFECTIVENESS IN) (BE AT)
    (BE WITH) (SCALE FROM) (LOCATION OF) (COMMITTEE AT) (WELL-BEING DURING) (IMPORTANCE AS)
    (SAMPLE |IN COMPARISON WITH|) (PREPAREDNESS IN) (VULNERABILITÄTEN IN) (LEBENSMITTELVERSORGUNG IN)
    (MOLECULE FOR) (ASSISTANCE IN) (ADVICE LIKE) (DATABASE ON) (HOPE-ENDURANT FOR) (THING IN)
    (THINK-ENDURANT ABOUT) (AFRAID OF) (PEOPLE FOR) (CHARACTERISTICS OF) (DISEASE OF) (PERCENT IN)
    (REMAIN IN) (STRATEGY FOR) (BIO-QUESTION |WITH REGARD TO|) (COVID-19 FROM) (PANDEMIC AS)
    (RECOMMENDATION INTO) (BIO-AGENT IN) (PAYOFF IN) (PAYOFF OVER) (CONNECT IN) (TIME-UNIT IN)
    (PEOPLE PER) (LIKELIHOOD BY) (MORTALITY FROM) (ANALYZE FOR) (VALUE THROUGH) (NUCLEOTIDE PER)
    (BIO-FUNCTIONALITY WITH) (INDEX-CL-VERB THROUGH) (BIO-PROCESS FOR) (TIGHTNESS THROUGH)
    (TRAJECTORY OF) (NATION WITH) (DATA IN) (CELLULAR-PROCESS TO) (VERIFY OF) (ATTITUDE AS)
    (MORE-AWARE OF) (FREQUENCY IN) (SENSE OF) (NATURAL TO) (AFOREMENTIONEDCONCERN FOR)
    (WASASSOCIAT WITH) (APPEAR OF) (LIMITATION TO) (MEAN-STAT-MEASURE IN) (EVENT-RELATION OF)
    (VARIABLE/TERM FROM) (DISEASE OUT) (NOT FOR) (VISUALIZE IN) (OBTAIN FOR) (REPORT IN) (ENTER AS)
    (RUN INCLUDING) (RUN FOR) (ERROR IN) (MEET BY) (GENERALIZATION BY) (NOISE IN) (LEVEL VS.)
    (ATTENTION TO) (PREDICT ON) (TUN OF) (CHECK BY) (PERFORM |IN RELATION TO|)
    (DESIGN |IN ACCORDANCE WITH|) (QUALITY OF) (GROUP-PERDURANT INTO) (ROLE-BASED-PERSON INTO)
    (AVAILABLE IN) (OPPORTUNITY FOR) (LOSE OF) (STATUS BEFORE) (CONSIDER AS) (INTENTION AMONG)
    (COLLECTION INTO) (PSYCHOLOGICALREACTION TO) (EMERGENCY LIKE) (STRESSOR AS) (CHEMICAL-REACTION TO)
    (PERCEIVE AS) (DURATION |ALONG WITH|) (PLAY-CL-VERB BY) (LITERATURE ON) (LOCK DOWN) (COUNTRY LIKE)
    (BE FOR) (FEEDBACK ON) (DEPICT IN) (CHOICE-ENDURANT OF) (BOTH |IN TERMS OF|) (INCONSISTENT WITH)
    (LIMIT IN) (EFFECT ON) (FINDING ON) (BELIEF VIA) (ANALYZE WITH) (INTERACT ON) (THINK-ENDURANT OF)
    (COLLECT BETWEEN) (THEORY IN) (WORK IN) (PERIOD FOR) (MEASURE-AS-MEASUREMENT LIKE) (HOC FOR)
    (CONCLUSION FROM) (TECHNIQUE ON) (BEHAVIOR THROUGH) (MOLECULE TO) (BIO-PROCESS ABOUT) (DENOTE AS)
    (CALCULATE ON) (PREDICTOR IN) (PREDICTOR FROM) (MODEL AS) (DESCRIPTIVE-STAT-MEASURE OF)
    (RELATION WITH) (KNOW ON) (INTERCORRELATIONS AMONG) (BELIEF OF) (INTERVENTIONPRIOR TO)
    (INTRODUCTION TO) (AOT WITH) (TAKEN FROM) (ANXIETY WITH) (CONSPIRACY REGARDING) (REPORT ON)
    (GROUP ON) (INTERVENTION ON) (OUTCOME FOR) (ENDORSEMENT OF) (SEEM BY) (ACTOR BEHIND)
    (FRUITFUL FOR) (STRAIN OF) (UPTAKE OF) (TECHNIQUE IN) (FLATTEN-AUTO OF) (LIMIT |DUE TO|)
    (WORSEN OF) (CHANGE |DUE TO|) (LIFE WITH) (HEALTH TO) (NOT IN) (ISOLATE IN) (RESULTS REGARDING)
    (RESULTS ON) (DISCUSS BY) (PEARSON-CORRELATION OF) (HYPHENATED-PAIR IN) (ROLE-BASED-PERSON OF)
    (SCALE BY) (STANDARD-ERROR-STAT-MEASURE OF) (ROLE-BASED-PERSON ON) (EVALUATE WITH) (SIMILAR IN)
    (POLICY ON) (T-TEST OF) (HIGHER IN) (OUTDEGREE IN) (VARIABLE/TERM WITH) (VALUE IN) (ITEM ON)
    (DISCUSS IN) (T-TEST WITH) (CAPTURE BY) (SOCIABILITY WITH) (ITEM WITH)
    (CRONBACHS-ALPHA-STAT-MEASURE OF) (LIST IN) (MIDPOINT OF) (COMPETITION AMONG) (ITEM IN) (ASK IN)
    (WORD-CL-VERB OF) (RELATION TO) (QUESTIONNAIRE IN) (COMPENSATION FOR) (POINT FOR)
    (BIO-PROCESS WITHIN) (STRESSOR |SUCH AS|) (NETWORK BETWEEN) (MINIMIZE |DUE TO|) (RELATIONSHIP OF)
    (PRONE TO) (BIO-MAKE-STATEMENT OF) (ISOLATION IN) (PANDEMIC IN) (HABIT |SUCH AS|) (EFFICACY IN)
    (COMMUNITY AGAINST) (IMPLICATE OF) (COVID-19 WITH) (INDICATE BY) (DATA OF) (INFORMATIVE FOR)
    (ALL OVER) (R-SQUARED-STAT-MEASURE FOR) (DIE BEYOND) (DIE FOR) (DIE PER) (SIZE PER)
    (MEAN-STAT-MEASURE FOR) (PROBABILITY OF) (DIE FROM) (RESPONSE IN) (DOCUMENT ACROSS) (SEVERITY OF)
    (IDEOLOGY WITHIN) (RESOURCE |ON ACCOUNT OF|) (PANDEMIC THROUGH) (REGRESSION ON) (RELEVANT TO)
    (DWARF BY) (QUESTIONNAIRE BY) (WEAKER IN) (MARKER OF) (EMERGE FOR) (AVERAGE INTO)
    (REPUBLICAN-ENDURANT AT) (DEMOCRAT AT) (STORYLINES FOR) (MOTIVE-ENDURANT REGARDING)
    (INTERFACE WITH) (DISMISSIVE TOWARDS) (APATHETIC TO) (WORK AT) (CURIOUS |IN LIGHT OF|)
    (APATHY TOWARDS) (INTENTION AS) (RELATION BETWEEN) (MEDIATE BY)
    (95-PERCENT-CONFIDENCE-INTERVAL-STAT-MEASURE FOR) (ITEM FROM) (NORM TO) (CORRELATION BETWEEN)
    (RELATION AMONG) (HYPHENATED-PAIR ON) (BEHAVIOUR IN) (PANDEMIC TO) (EMERGENCY |SUCH AS|)
    (ATTITUDE UNDER) (PESSIMISM AS) (COMPLEMENT WITH) (ROBUST TO) (SUSCEPTIBILITY TO) (COMPUTE BY)
    (MOLECULE TOWARDS) (STIMULUS FOR) (SEPARATE IN) (FRAMEWORK FOR) (THRESHOLD FOR) (GOAL OF) (NOT TO)
    (NORM |IRRESPECTIVE OF|) (WAY OF) (PROPOSE BY) (THINK-PERDURANT |TOGETHER WITH|) (ANALYZE ABOVE)
    (INFORMATION IN) (LOCATION ON) (CORRELATE WITH) (BOTH AGAINST) (FACT FROM) (OBSERVE WITH)
    (CORRELATION AMONG) (RELATIONSHIP AMONG) (BIO-METHOD FOR) (PERCENTAGE OF) (BIO-METHOD AGAINST)
    (SCALE ON) (ASK FOR) (AGE-CL-VERB BETWEEN) (RELATIONSHIP TO) (COLLECT AS) (BEHAVIOR AGAINST)
    (LINK BETWEEN) (COVER BY) (DIE OF) (CONNECTION BETWEEN) (REASON-AUTO WITH) (REFLECT IN)
    (DRAWN FROM) (ABILITY TO) (REASON-AUTO VS.) (VACCINE FOR) (EXPERT-ENDURANT FROM) (BOTH BY)
    (DISCRIMINATE DURING) (BIO-QUESTION IN) (STATUS WITHIN) (NETWORK OF) (AVAILABLE FROM) (FEELING ON)
    (ASK TO) (QUESTIONNAIRE AT) (PERFORMER IN) (PRECONDITION FOR) (SUBSCALES BETWEEN)
    (ROLE-BASED-PERSON AT) (AMAZE AT) (KNOW OF) (ATTENTION IN) (NATURE OF) (INFORMATION WITH)
    (EMPATHY IN) (STIGMA FROM) (PEOPLE NEAR) (TAKEN INTO) (COMPARE BETWEEN) (CONTAGION AS)
    (OBSERVE IN) (TEST UNDER) (ANXIETY FROM) (BIO-FUNCTION AS) (ANXIETY OF) (RELATIONSHIP FROM)
    (STANDARDIZE IN) (WILLINGNESS AS) (LEVEL AS) (ANALYZE AS) (DISTRIBUTION REGARDING)
    (OVEREXPOSURE TO) (BEHAVIOUR FOR) (OBSERVE DURING) (ROLE-BASED-PERSON AS) (OBSERVE THROUGHOUT)
    (MOTIVATOR FOR) (NETWORK FOR) (DIVISION OF) (COVID-19 BY) (SAY OF) (ACCEPTABILITY THROUGH)
    (BIO-CONTEXT OF) (ORGANIZATION OF) (GROUP TO) (COLLECT WITHIN) (CATEGORIZE INTO) (PARTY VS.)
    (GATHER OF) (RECRUIT FROM) (IDEOLOGY |IN TERMS OF|) (GOVERN BY) (GOVERNOR TO) (NEWS IN)
    (ACQUIRE OF) (REASON-AUTO |ACCORDING TO|) (NEW IN) (BACK TO) (RELATIVE-ENDURANT TO)
    (RELATIONSHIP BETWEEN) (ASPECT OF) (VARIANCE BEYOND) (CONFIRM BY) (EMERGE BETWEEN)
    (APPRECIATION OF) (CHANGE OF) (ADJUSTMENT FOR) (STRUCTURE OF) (VARIANCE OVER) (PROVINCE OF)
    (LAUNCH DURING) (APPROVE BY) (RECRUIT VIA) (PERCENT FOR) (SERVE AS) (OUTCOME IN) (REDUCE OF)
    (CRISIS IN) (KIND-ENDURANT OF) (THEORY ON) (CONGRUENT WITH) (ROLE-BASED-PERSON |OUT OF|)
    (ANSWER ON) (OPINION ON) (INTRODUCE BY) (ATTITUDE TOWARDS) (MENTALITY AS) (DISTINCT FROM)
    (BIO-PROMOTE BY) (TEST AS) (BOTH TO) (INTRODUCE AS) (ITEM |DUE TO|) (ATTITUDE TOWARD)
    (ADVICE FROM) (VIRUS FROM) (POLICY DURING) (QUALIFY BY) (REFLECT BY) (TIGHTNESS VS.) (ONSET IN)
    (REPROGRAM OF) (ROLE-BASED-PERSON FOR) (HYPHENATED-PAIR OF) (PRODUCT PER) (DIE DURING)
    (PERSPECTIVE ON) (INEQUITY IN) (BIO-UTILIZE BY) (RESPONSIBILITY IN) (CONSIDER REGARDING)
    (HYPHENATED-PAIR CA.) (BIO-PROCESS IN) (THANKFUL FOR) (PARTICIPATION IN) (ARGUMENT-SUPPORT BY)
    (ENROL AT) (MORTALITY IN) (AWARENESS OF) (DISEASE IN) (OBSTACLE FOR) (ACCESSIBILITY FOR)
    (PREDICT IN) (RISK OF) (BED-ENDURANT PER) (REQUIRE OF) (REMAIN AS) (TREATMENT IN) (AGE ON)
    (EFFECT WITH) (MUNICIPALITY WITH) (COMORBIDITY IN) (SEVERITY IN) (OCCUR BETWEEN) (COVID-19 IN)
    (COMORBIDITY ON) (EFFECT FOR) (APPROXIMATION WITHIN) (PLOT AGAINST) (AVAILABLE FOR)
    (COLLECTION TO) (DEFINE AS) (CASES-PATHOGEN IN) (EXPERIMENTAL-CONDITION INCLUDING)
    (POPULATION WITH) (LINK TO) (STUDY WITH) (SUBSTANCE OF) (BOTH FOR) (RESPONSE ABOUT)
    (INDICATOR FOR) (DISTANCE WITHIN) (CLINICS WITH) (DETERMINANT OF) (ARGUMENT FOR) (EMERGENCY UNDER)
    (THOUGHTLESSNESS BY) (TEMPERATURE THROUGHOUT) (CITY IN) (PROCESS-RATE IN) (SHOW AT)
    (DISTRIBUTION ACROSS) (BIAS TOWARDS) (CASES-PATHOGEN TO) (CAPITAL-ENDURANT |SUCH AS|) (EXAMPLE OF)
    (TRANSMISSION BEFORE) (PEOPLE FROM) (REPORT |OUTSIDE OF|) (COMBINATION OF) (PROHIBITION OF)
    (DEVELOPMENT OF) (CONTROVERSIAL FROM) (NOT WITH) (BIO-FIT TO) (PERFORM IN) (SUMMARIZE OF)
    (CONTROL FOR) (BIO-EXCHANGE OF) (AIRPORT WITH) (CITY WITH) (CONNECTION TO) (ROUTE AS)
    (INFORMATION ON) (VALUE FOR) (DATA FOR) (TRANSPORTATION AMONG) (CELL-GROWTH OF) (SURVIVAL OF)
    (BIO-PROCESS AT) (LIST AS) (RESTRICTION ON) (CONDUCT IN) (THOSE WITH) (CAUSE BY) (DECISION FOR)
    (OUTBREAK-OF-DISEASE OF) (MEAN-STAT-MEASURE OF) (AWARENESS DURING) (RESOURCE |SUCH AS|)
    (RESULT IN) (EXAMINE OF) (MAJORITY-AUTO OF) (IDEATION WITH) (EXPOSURE AS) (ANXIETY |DUE TO|)
    (THEORY OF) (RAMIFICATION OF) (AGREEMENT WITH) (LOGISTIC-REGRESSION WITH) (BIO-QUESTION REGARDING)
    (NOT AT) (GATHER OVER) (DISRUPT |DUE TO|) (ASSESS THROUGH) (EXPOSURE TO) (EXPLORATORY IN)
    (FOUNDATION FOR) (DEPRESSION AMONG) (MOST-RELEVANT UNDER) (DIE BY) (DIE AMONG) (DISRUPT TO)
    (NEED FOR) (BEHAVIOR AMONG) (COLLECTION FROM) (APPROACH TO) (EFFECT-SIZE-STAT-MEASURE FOR)
    (BEHAVIOUR BY) (ET-AL. OF) (AREA FOR) (TIME-UNIT DURING) (INCREASE IN) (ENFORCE |AS A RESULT OF|)
    (BEHAVIOUR BEFORE) (SUM WITHIN) (DATA FROM) (BEHAVIOR DURING) (BEFOREAND DURING) (BOTH IN)
    (LIFESTYLE AT) (DETAIL OF) (ARGUMENT-SUPPORT FROM) (BOOSTRESEARCH BY) (GRATEFUL TO)
    (IMPORTANCE TO) (ENFORCE BY) (CONFINEMENT ON) (EXPERIMENTAL-SYSTEM INCLUDING) (INTERVENTION IN)
    (WELLBE THROUGH) (PERIOD IN) (TIME-UNIT OF) (DESCRIBE OF) (GROUP THROUGH) (QUESTIONNAIRE FOR)
    (COLLECTION OF) (FOCUSSES ON) (INFORMATION FOR) (PLATFORM |SUCH AS|) (INVITATION VIA)
    (ACADEMICS AT) (GROUP FOR) (WELLBE VIA) (BEHAVIOUR DURING) (GENERATE OF) (DISRUPT OF) (FACULTY OF)
    (UNIVERSITY FOR) (SCIENCE AT) (STANDARD-DEVIATION-STAT-MEASURE OF) (REPORT BY)
    (ROLE-BASED-PERSON ABOVE) (HIGH IN) (PREVALENCE OF) (ROLE-BASED-PERSON DURING) (SHUTDOWN OF)
    (HALF OF) (STANDARD-DEVIATION-STAT-MEASURE FOR) (REPORT AS) (CONFIDENCE-INTERVAL-STAT-MEASURE OF)
    (ESTIMATE BY) (SCORE FROM) (SERIES OF) (BIO-AGENT FOR) (CONFIRM IN) (INTERACT DURING)
    (ASSISTANCE DURING) (A-LITTLE DURING) (COMMITMENT TO) (CHARACTERIZE AS) (TIME OF)
    (PEARSON-CORRELATION AMONG) (FREQUENCY FOR) (SPECIFY AS) (SCALE INCLUDING) (REPORT WITH)
    (PRESENTATION WITH) (NEED BEFORE) (GIVE ON) (RESPONSE FOR) (ALL IN) (MONEY-AUTO FOR)
    (GRADERS WITH) (VARIABILITY IN) (UNDERSTAND OF) (BUFFER AGAINST) (BURDENSOMENESS ON)
    (COMPLIANCE WITH) (VIEW OF) (CONSEQUENCE FOR) (CITY OF) (BEHAVIOR IN) (RELIANCE ON) (ROLE IN)
    (EXPLANATION BY) (END TO) (BELIEF TO) (SAMPLE FROM) (MEASURE-AS-MEASUREMENT IN) (CORRELATION WITH)
    (UNRELATE TO) (FILL OUT) (SCALE TO) (ITEM OF) (VERSION OF) (IMPULSIVITY IN) (GENE-CODE AS)
    (DATA BY) (CRONBACHS-ALPHA-STAT-MEASURE FOR) (STRATEGY BEFORE) (TAKEN AGAINST)
    (BEHAVIOR |REGARDLESS OF|) (PEOPLE WITH) (EVIDENCE FROM) (FAITH IN) (GROUP IN) (AFFLICT BY)
    (FINDING FROM) (WORK-ON IN) (UNFOLD AMONGST) (EXTENT TO) (STUDY BY) (SOCIALIZATION THROUGH)
    (ASPECT DURING) (DECISION AT) (FREQUENCY AMONG) (COLLECTION FOR) (RESPONSE WITH)
    (COPE-ENDURANT WITH) (BIO-QUESTION ABOUT) (MOTIVATION AT) (SHOW IN) (CATEGORY BETWEEN)
    (CATEGORIZATION BY) (HOLDER FOR) (DETAIL FOR) (CRITERION FOR) (CONDUCT |ACCORDING TO|)
    (MOTIVATION FOR) (ISSUE WITH) (BIO-USE OF) (CURFEW IN) (BIO-ACTIVITY DURING)
    (CHOICE-ENDURANT WITH) (BIO-QUESTION OF) (STATUS |ALONG WITH|) (COME INTO) (LEVEL AT) (GROUP OF)
    (DISTRIBUTE ACROSS) (QUESTIONNAIRE OF) (DISCOVERY IN) (BRIEN FROM) (POWELL FROM) (COLLECTION IN)
    (ABODOLLAHI FOR) (POLICY FOR) (AREDRIVEN BY) (COUNT-OF IN) (COEFFICIENT FOR)
    (STANDARD-ERROR-STAT-MEASURE AT) (CHANGE IN) (POLICY WITH) (GATHER AT) (QUARANTINE FOR)
    (DIVISION INTO) (POLICY IN) (DATE OF) (MOVEMENT FOR) (STATISTIC FOR) (DRUG FOR) (GATHER BY)
    (DATA ON) (CASES-PATHOGEN FOR) (MOBILITY IN) (POLICY |SUCH AS|) (CHANGE-TO IN) (CAUSE OF)
    (INDICATOR IN) (PRESENCE AT) (PEOPLE IN) (DECISION TO) (PROCESS-RATE BEYOND) (LEVEL BELOW)
    (INCONSISTENCY IN) (BIO-RANGE FROM) (STAY AT) (ITEM FOR) (AGE-CL-VERB FROM) (AVOIDANCE OF)
    (IMPLEMENTATION OF) (TIME-OF-DAY OF) (BIO-FIND IN) (INSTRUCT BY)))


(defparameter *known-adjunct-attachments*
  '((QUANTITY (AS)) (INTAKE (WITH)) (WEBSITE (|SUCH AS| IN AT)) (MINDFULNESS (TO DURING ON))
    (RECORD (BY)) (INSTRUCTION (AT IN)) (RMB (UPON)) (MONTH (OF TO))
    (AMOUNT-OF-TIME (IN FOR INTO AFTER BY AT |DUE TO| AS BETWEEN))
    (MONTH-OF-THE-YEAR (BY FOR TO IN |DUE TO|)) (START (FROM)) (CITY (OF WITH TO IN FOR DURING))
    (ADULT-ENDURANT (AS WITHOUT DURING WITH FROM)) (LOCKDOWN (FOR IN)) (ADDRESS (IN)) (RELY (IN FROM))
    (TRAIT (IN |NEXT TO|)) (TERM-NAME (FOR OF)) (MULTIPLE-LINEAR-REGRESSION (INCLUDING))
    (COVID-19
     (AS IN BY WITH ACROSS ABOVE OVER FROM AT ON WITHIN AMONG FOR TO |AS OF| AMONGST |TOGETHER WITH|
      |BY MEANS OF| |DUE TO| BETWEEN VIA))
    (BEHAVIOR
     (|SUCH AS| DURING |REGARDLESS OF| IN AMONG BY AGAINST WITH REGARDING VIA THROUGH |WITH REGARD TO|
      WITHIN ON AS FOR UNDER |IN LIGHT OF| AMONGST AT |ACCORDING TO| |IN THE LIGHT OF|))
    (CONSTRAINT (TO)) (TEND (OF TO TOWARD IN VIA)) (AGREEABLENESS (VS.))
    (TRAITDIMENSIONS (|IN LINE WITH|)) (MAN (FROM WITH)) (FACTOR (IN OF))
    (POPULATION
     (WITH DURING OVER ON AS BELOW AMONG AT ACROSS IN ABOUT FROM |ALONG WITH| |WITH REGARD TO|))
    (COST-ENDURANT (|IN TERMS OF| TO)) (ACCEPTANCE (OF AT)) (AUTHORITY (AROUND)) (WILLINGNESS (AS IN))
    (SUBSTANCE (OF DURING)) (ATTENDANCE (AT)) (GRANT (FROM)) (PARTICIPATE (TO IN))
    (UNCLEAR (|DUE TO|)) (LOAD-ENDURANT (ON)) (RELEVANCE (IN OF))
    (REPORT (WITH AS BY |OUTSIDE OF| ON IN FOR ACROSS FROM |IN CASE OF| OF))
    (CARE-ENDURANT (FOR THROUGH |AS OF| ON ABOUT IN))
    (PERCENT (TO ACROSS FOR IN BY ABOUT WITHIN BETWEEN VS.)) (PARENT (WITH OF)) (EMAILS (WITH))
    (GROUP (OF IN FOR THROUGH TO ON AT AS WITH))
    (TIME-UNIT (OF DURING BEFORE FOR PER WITH TO IN INTO BY FROM FOLLOWING AFTER AT))
    (ASPECT (DURING OF AFTER ABOUT IN)) (NECESSITY (WITHIN OF)) (OVERWHELM (BY)) (PROVIDER (IN))
    (STRESS (THROUGHOUT OF AS)) (AGREEMENT (WITH ON TO AT)) (EMPLOYMENT (IN AT)) (DRIVER (FOR))
    (ADAPTATION (OF)) (TARGET-PROTEIN (FOR OF)) (BE (IN AT OF FOR WITH WITHOUT ON BETWEEN))
    (EDUCATION (IN ON)) (COMMUNICATION (ABOUT REGARDING FROM OF)) (CHARACTERIZE (AS BY OF TO))
    (KEY (TO)) (PANDEMIC (TO WITH AMONG ON THROUGH IN AS OF BY |SUCH AS|)) (REJECT (|DUE TO|))
    (ITEM (FOR OF |DUE TO| |OUT OF| FROM AS IN WITH ON BY ABOVE TO INTO)) (DISENGAGE (|IN TERMS OF|))
    (DIFFERENCE (ON WITH OF FROM)) (SCALE-CL-VERB (TO)) (REPEAT (IN))
    (RECOMMENDATION (FOR INTO ON BY |SUCH AS| OF)) (INFECT (BY FOR)) (FOLLOW (BY UP))
    (EVENT-FOLLOWS (UP)) (RISK (OF TO TOWARDS FROM)) (DEMOGRAPHICS (OF)) (KIND-ENDURANT (OF FOR))
    (UNAWARE (OF)) (THEIRPRESENTATIONS (TO)) (SIMILARTRENDS (IN)) (INFLUENCEEXACERBATIONS (OF))
    (CHARACTERISTICS (OF FROM |SUCH AS| TO AFTER))
    (MOLECULE (TO TOWARDS FOR IN |WITH RESPECT TO| REGARDING ABOUT OF FROM)) (VISIT (FROM TO))
    (EXAMINE (OF BY WITH |TOGETHER WITH| IN)) (ORDER-AUTO (DURING)) (DEPARTMENT (IN |AS A RESULT OF|))
    (DISEASE (IN AS BY OF OUT PER AT WITH INCLUDING ACROSS DURING FROM AMONG AFTER TO))
    (TRANSITION (OF FROM)) (ATTITUDE (TOWARD TOWARDS UNDER AS THROUGH IN OF TO AT))
    (COMPLEMENT (WITH BY)) (SAMPLE-SIZE-STAT-MEASURE (FOR WITH OF IN)) (EMERGE (BETWEEN FOR IN AS))
    (INCONGRUENCE (BETWEEN)) (GROUP-ENDURANT (IN WITHIN FOR OF ABOUT)) (DANGEROUS (AT TO))
    (CONSIDER (REGARDING IN AS TO |IN LIGHT OF|)) (DISCORD (BETWEEN))
    (MEASURE-AS-MEASUREMENT
     (IN AS AGAINST ON LIKE FROM ALONG WITH DURING TO |SUCH AS| FOR WITHIN INCLUDING))
    (SHOP (IN)) (GO (OUT))
    (COUNTRY
     (|IN ADDITION TO| DURING AMONG AT |DUE TO| |AS OF| LIKE BETWEEN OF WITH FOR TO ACROSS AS INTO
      |APART FROM| BY UNTIL BEYOND IN OVER ON AROUND |IN CONTRAST TO|))
    (MEDIAN-STAT-MEASURE (OF)) (AREA (FOR VERSUS WITH BETWEEN ABOVE))
    (BIO-CONCERN (DURING WITH OF TOWARD)) (LEARNING (ABOUT FROM)) (LEARN (FROM)) (DIFFER (FOR FROM))
    (CONJUNCTION (WITH)) (TEST (AS UNDER ACROSS AMONG PER BETWEEN WITH)) (ELIGIBLE (FOR))
    (ANXIETY (DURING AMONG |DUE TO| OF FROM WITH ON AT IN TO AS |AS A RESULT OF|))
    (EMOTION-AUTO (IN |SUCH AS|)) (BIO-ACT (FOR ON AS IN)) (CONTINENT (|IN TERMS OF| WITH))
    (WOMAN (IN))
    (PEOPLE
     (IN WITHOUT AT WITH ACROSS AMONG FROM NEAR DURING AGAINST PER FOR ON OF TO |IN NEED OF| ABOUT
      TOWARD))
    (SENTIMENT (ON)) (CORONAVIRUS (AS BY FROM |SUCH AS| FOR IN ON)) (ENOUGH (ABOUT FOR))
    (TIMEFRAME (FROM)) (BIGOTRY (TOWARDS)) (VIEW-AUTO (|IN CONTRAST TO|))
    (FIND-CL-VERB (WITH FOR AT TO)) (RHETORIC (THROUGHOUT)) (DYNAMICS (DURING WITH IN BETWEEN))
    (XENOPHOBIA (AGAINST IN)) (COMMERCE (AT)) (MEET-PERDURANT (FOR WITH)) (PUBLICIZE (IN))
    (BIO-FIND (IN TO BY)) (BIO-MECHANISM (IN TO OF AT))
    (EVENT-RELATION (BY TO OF FOR LIKE AT DURING FROM AS AGAINST WITH |IN TERMS OF|))
    (OPINION (ON OF)) (NOT (AT WITH TO IN FOR FOLLOWING AS FROM)) (HOSTILITY (TOWARDS))
    (PROLIFERATION (OF)) (EXPERIMENTAL-SYSTEM (INCLUDING FROM VERSUS)) (FACT (FROM OF DURING))
    (RESULT (IN ON FROM)) (PREPOSITIONAL-PHRASE (WITH OF ABOUT))
    (VARIANCE (OVER BEYOND BY |IN COMPLIANCE WITH| ACROSS))
    (ANALYZE (AT TO AS ABOVE WITH FOR INCLUDING IN |WITH RESPECT TO| |TOGETHER WITH| |DUE TO| ON))
    (NUMBER (FOR TO ON |OUT OF|)) (FREQUENCY (AMONG FOR ON IN REGARDING))
    (Z-SCORE-STAT-MEASURE (ABOVE)) (PROBLEM (DURING BEFORE IN FROM AS)) (REPRESENT (WITH))
    (ADMINISTER (IN)) (DISAGREEMENT (ABOUT BETWEEN))
    (BELIEF (TO BY VERSUS ACROSS OF VIA LIKE DESPITE ON |IN COMPARISON WITH| WITH AS |SUCH AS|))
    (NOSE (WITH)) (ANCHORAGE (AT)) (SCALE (DURING TO FROM INCLUDING ON BY IN WITH))
    (INDICATE (BY OF AT)) (AGE (IN ON WITH FROM)) (THREAT (FROM AMONGST TO AMONG |DUE TO|))
    (QUESTIONNAIRE (OF FOR AT IN INCLUDING |EXCEPT FOR| BY ON |IN REFERENCE TO|)) (ANGST (FOR))
    (EMERGENCY (UNDER |SUCH AS| LIKE AS ON BY IN)) (THREATEN (FOR AMONG BY)) (DISTRESS (AT DURING))
    (WELL-BEING (DURING ON BY)) (INSIGHT (TO REGARDING FROM ABOUT))
    (PROVIDE (IN NEAR WITH WITHOUT TO)) (FRAMEWORK (FOR |ALONG WITH|)) (UNCERTAINTY (AS IN WITH))
    (OPTIMISM (|ALONG WITH| TO FOR WITH)) (ORGANIZATION (OF AT))
    (ROLE-BASED-PERSON
     (FROM DURING ABOVE OF WITHOUT FOR |OUT OF| ON AS AT WITHIN INTO ACROSS TO PER OVER THROUGH BY
      ABOUT INCLUDING AFTER VIA))
    (TARGET (AT)) (OVERALL-ENDURANT (DURING)) (ACCESSIBLE (TO FROM VIA)) (ATTENTION (IN TO UNTIL ON))
    (COPE-PERDURANT (DURING)) (ASSET (TO)) (CONTAINMENT (OF)) (ANOTHER (WITH))
    (RESOURCE (|SUCH AS| IN |ON ACCOUNT OF| INCLUDING FOR OF DURING)) (FRAUGHT (WITH))
    (NATIONALISM (AS)) (PREPRINT (AT)) (SEMITISM (IN)) (SIDE (BY OF))
    (COMPARE (BETWEEN |IN TERMS OF| |REGARDLESS OF| |BY MEANS OF| FOR)) (SENSEMAK (DURING))
    (TOBELIEVE (IN))
    (BIO-QUESTION
     (OF ABOUT WITH ON REGARDING IN |WITH REGARD TO| |IN LIGHT OF| AT |WITH RESPECT TO| AS INCLUDING))
    (CATEGORIZE (|IN TERMS OF| INTO AS)) (STANDARD-DEVIATION-STAT-MEASURE (FOR OF ABOVE))
    (BALANCE (IN)) (PREDICTOR (OF IN ON FROM BY BETWEEN AMONG FOR AGAINST AS))
    (VALUE (FOR IN THROUGH AT ACROSS AS TO)) (SKEPTICISM (TOWARDS)) (ALSOCONSISTENT (WITH))
    (RESULTS (|IN LIGHT OF| FROM ABOUT ON REGARDING FOR IN TO AMONG |IN THE LIGHT OF| AS))
    (PLAY-CL-VERB (BY IN)) (NARCISSISM (AS)) (THEORY (OF ON IN |SUCH AS| INTO AS)) (PRODUCT (PER OF))
    (BE-CL-VERB (OF AT IN)) (IDENTIFY (WITH FROM)) (ROBUSTNESS (OF)) (RIGOR (IN))
    (EXPLANATION (BY AT OF IN)) (FACILITATOR (TO)) (GAP (BY IN)) (ALIGNMENT (ON))
    (PEARSON-CORRELATION (AMONG OF BETWEEN)) (EXPECT (OF)) (TASK (WITH)) (POWER (FROM OF))
    (TURK (FOR)) (RATE-PERDURANT (ON ABOVE)) (RUN (FOR INCLUDING IN WITHIN ACROSS)) (ILLUSTRATE (BY))
    (CONTROL (FOR REGARDING AS UNDER ABOUT |WITH REGARD TO| AMONG))
    (IMPORTANCE (TO AS |IN THE LIGHT OF| DURING AMONG IN)) (SPECIALIST (FROM)) (WELL (WITH))
    (RESPONSE (FOR WITH ABOUT IN TO AT AMONG AGAINST FROM REGARDING BY |WITH REGARD TO| AS))
    (PERCEPTION (FROM FOR BETWEEN AS)) (LACK (WITH BY ON)) (CONSTRUCT (FOR WITH AFTER)) (SOME (PAST))
    (BIO-EVENT (BY REGARDING FROM WITH)) (DISPROVEN (BY)) (SITUATION (WITH DURING IN FOR ON))
    (ARTICLE-FIGURE (IN OF)) (PRECIOUS (IN)) (WORKER (IN FROM DURING)) (BACK (TO BY))
    (PHENOMENON (IN DESPITE)) (DISPROPORTION (IN)) (KNOW (OF ON AS IN TO)) (MORE-ROBUST (TO))
    (PUNISHMENT (IN TO)) (INVOLVE (OF)) (ODDS (FOR IN)) (WORRY (FOR BY IN)) (MORE-PRONE (TO))
    (ADOPT (FROM IN)) (POWERLESS (AGAINST)) (MEDICINEAND (ON)) (RESPECT (FOR TO))
    (SHOW (IN AT TO OF BELOW BY ABOUT)) (SURVIVOR (FROM)) (STUDY (BY WITH TO |BY MEANS OF|))
    (HIDDEN (FROM)) (FREEDOM (FOR IN |IN VIEW OF|)) (ACCESS (TO)) (PREVENT (ABOUT FROM))
    (ONES (AS BEFORE WITH)) (SCARCITY (OF)) (PUT-SOMETHING-SOMEWHERE (AT)) (ADEQUATE (TO))
    (SCARE (ABOUT)) (EFFECT (BY TO FOR WITH THROUGH ON IN VIA BETWEEN |BY MEANS OF|))
    (BEENDETECT (IN)) (CHI-SQUARED-TEST (WITHIN))
    (VARIABLE/TERM (BEFORE FOR WITH INCLUDING ON FROM AT AMONG AS)) (SMOKE (PER)) (INVITE (AT))
    (VACCINE (FOR IN)) (GENDER (IN)) (CIGARETTE (PER))
    (MODEL (TO OF AS |IN ADDITION TO| WITH FOR WITHOUT AT)) (EVIDENT (AMONG IN))
    (BED-ENDURANT (AT PER IN)) (DESTINE (TO)) (IMBALANCE (BETWEEN)) (SECTOR (|DUE TO|))
    (ALARM (THROUGHOUT)) (RESPONSIBLE (OF)) (INTERVENTION (IN ON |SUCH AS| VIA TO)) (EXPOSITION (TO))
    (CORRELATION-COEFFICIENT-STAT-MEASURE (|SUCH AS|)) (ADJUSTMENT (FOR TO))
    (VIRUS (FROM AMONG ON IN WITH)) (DIFFICULTY (IN)) (MUSTSTAY (AT)) (FRIEND (ABOUT AT))
    (MENTION (AS)) (COMPATIBLE (WITH)) (FEMALE (WITH PER)) (DISCUSSION (OF ON |ACCORDING TO|))
    (ANSWER/INFO (AMONG TO OF ALONG THROUGHOUT FOR)) (SHOE (AT)) (MEASUREMENT (FROM))
    (NORDESTE (BETWEEN)) (DECREE (IN)) (HYPHENATED-NUMBER (IN)) (EMPOWERMENT (THROUGH))
    (UNDERLYINGPATHOLOGIES (|SUCH AS|)) (DESCRIBE (OF AS ABOVE BY)) (AFFECTINDIVIDUALS (OF))
    (NUMBER-SEQUENCE (WITHIN FROM)) (COHORT (IN FROM)) (RECEIVE (FOR)) (MEET (BY FOR))
    (APPEAR (OF TO)) (TREATMENT (IN OF ON AS FOR)) (WAY (FOR TO OF FROM)) (TWITTER (IN UNDER))
    (COMMUNITY (AGAINST WITH INCLUDING ON)) (BIO-PROMOTE (DURING BY OF)) (BORN (|OUTSIDE OF|))
    (ACTOR (BEHIND IN)) (MODEL-CL-VERB (BY)) (DELIVERY (FROM)) (EXAMPLE (OF INCLUDING))
    (RATIONALE (FOR)) (STRATEGY (BEFORE FROM IN FOR |WITH REGARD TO| AS AT WITH INCLUDING))
    (HYPHENATED-PAIR
     (VERSUS OF CA. IN TO ON WITH THROUGH ACROSS BY |ON THE PART OF| |IN ADDITION TO| AS AT))
    (QUARTER (OF)) (SUSCEPTIBILITY (IN TO OF)) (ADOPTION (OF)) (RAISE (ABOUT)) (RECOMMEND (BY))
    (EFFECTIVENESS (IN OF)) (INTERMEDIATE-ENDURANT (TO)) (COMPUTER (AT)) (THEPRESENCE (OF))
    (SPOKEN (AT)) (PLACE (ON INTO)) (SCORE (FROM ON FOR WITHOUT BY AS)) (PHRASE-CL-VERB (AS))
    (AVAILABLE (FROM FOR PER IN TO WITH UPON)) (APPROVAL (FOR)) (HUMIDITY (IN))
    (THOSE (OF WITH WITHOUT AT UNDER FROM IN)) (CONVENTION (FOR)) (CONTRIBUTE (FROM)) (TATSUMI (FOR))
    (NAKAGAWA (FOR)) (TEJIMA (FOR)) (MITSUYA (FOR)) (BIO-METHOD (AS AGAINST FOR DURING))
    (VALIDATE (OF BY)) (ALIVE (IN)) (STEEPNESS (IN)) (MORTALITY (IN FROM FOR AMONG BY |AS OF| OF))
    (CORRECT (BY)) (HOMOGENEOUS (ACROSS)) (RETRIEVABLE (FROM))
    (DATA (ON FOR BY VIA FROM OF IN BETWEEN AT |IN RELATION TO| PER)) (ASSUMPTION (OF))
    (TEMPERATURE (THROUGHOUT DURING IN)) (RATE-ENDURANT (OF BY IN ON FOR ACROSS PER)) (RETRIEVE (ON))
    (RESEARCHER (IN)) (RATIO (BETWEEN)) (BIO-STATE (WITHOUT WITH AS DURING AFTER FROM OVER))
    (INCIDENCE (OF)) (LIBERALS (FROM IN)) (SELECT (FROM AS)) (ENDORSE (AS BY))
    (NORM (|IRRESPECTIVE OF| TO IN FOR)) (PERSPECTIVE (ON IN FROM)) (EFFORT (IN AT AS))
    (ESTIMATE (BY OF)) (HEALTH (DURING FROM |IN COMPARISON WITH| THROUGH AT TO)) (SKEW (OF))
    (SOURCE (THROUGH)) (ARTICLE-TABLE (INCLUDING)) (EXCLUDE (|DUE TO| FOR)) (ANALOGOUS (TO))
    (MOBBS (IN)) (REGRESS (ONTO ON)) (IDEOLOGY (|IN TERMS OF| ON WITHIN IN WITH ACROSS AS))
    (INACCURACY (IN)) (VIEW (OF |IN FAVOR OF| ON)) (PROCESS-CL-VERB (OF)) (URGENCY (IN))
    (COLLECTION
     (FOR WITHIN IN ON TO OF AMONG WITH DURING FROM AROUND BEYOND AS TOWARD |IN TERMS OF| BY AGAINST
      BETWEEN OVER BEFORE THROUGH ACROSS ABOUT INTO REGARDING PER AT UNDER TOWARDS |SUCH AS|
      FOLLOWING))
    (TRANSFORMATION (OF)) (FACILITY (FOR IN)) (MINORITY-AUTO (IN)) (STRENGTHEN-CL-VERB (AFTER))
    (HOME-ENDURANT (THROUGH IN |EXCEPT FOR| DESPITE)) (OVERREPRESENT (IN))
    (OCCUR (AS BETWEEN THROUGH IN AT)) (ALGORITHM (TO)) (CONDITION (ON)) (URBAN (VS.)) (MALE (VS.))
    (PROCESS-RATE (BEYOND IN BY PER)) (RESID (IN)) (INCREASE (|CLOSE TO| AMONG IN OF FROM WITH))
    (VARY (BY)) (PROPORTION (BY AMONG WITH)) (AFFAIR (|AS OF| BETWEEN)) (SIMILAR (AMONG IN ACROSS BY))
    (RELATIVE-TIME (BEFORE AFTER ON OF)) (95-PERCENT-CONFIDENCE-INTERVAL-STAT-MEASURE (FOR BETWEEN))
    (BASELINE (FOR TO)) (DATE (OF AS FROM TO THROUGH BY)) (DATABASE (BY ON OF))
    (OUTCOME (IN FOR WITH AMONG FROM)) (DEATH (|AS OF| BY OF IN)) (SITE (OF)) (ENCOURAGE (BY))
    (ADHESION (WITH VIA)) (GUIDELINE (AS)) (INDICE (FOR)) (ESTIMATOR (WITH THROUGHOUT))
    (COLLECT (WITHIN AS BETWEEN AT DURING)) (MEDIATOR (|EXCEPT FOR| ON BETWEEN)) (PAY (TO))
    (ANTECEDENT-ENDURANT (OF)) (HYGIENE (AMONG)) (BIO-PATIENT (DURING IN))
    (ALL (TO IN OVER ON ACROSS VIA ABOUT)) (DISTANCE (AMONG WITHIN UNDER TO DURING VIA FOR WITH))
    (REPRESENTATIVE (FOR OF)) (CONTENT (DURING OF WITH)) (RANGE (FROM BY BELOW))
    (MOTIVATION (FOR AT BY)) (EMPATHY (ON AS IN TOWARDS FOR)) (COMPANY (TO))
    (POINT (FOR TOWARDS ACROSS)) (ISSUE (WITH DURING ON OF)) (APPROACH (TO IN NEAR WITHOUT AT))
    (DIFFERENT (FROM IN)) (RENDER (|AS TO|)) (PATTERN-ENDURANT (WITH OF ACROSS IN)) (HIGH (IN FROM))
    (GOVERNMENT (ABOUT WITH IN)) (ENCOURAGEMENT (OF)) (CANCELLATION (OF)) (EVIDENCE (FROM IN TO ON))
    (INTERPRETATION (OF |IN LIGHT OF|)) (HIGHER (IN FOR)) (VALUE-IS-NEGATIVE (WITH))
    (SPECIFIC (TO ACROSS)) (MEDIANVALUE (OF)) (THAT (OF FOR)) (POSE (BY)) (SPHERE (TO)) (PATION (BY))
    (STOCKPILE (FROM OF)) (ABILITY (TO WITH)) (CONFIDENCE (IN)) (MOLECULAR-LOCATION (OF)) (ITY (TO))
    (FACEBOOK (IN)) (WORLDWIDE (|AS OF|)) (OUTLOOK (FOR)) (RECRUIT (VIA FROM THROUGH)) (GOAL (OF IN))
    (SAMPLE (FROM BETWEEN |IN COMPARISON WITH| TO ACROSS)) (SPONSE (TO)) (CATEGORY (OF BETWEEN BY))
    (PROFUNDITY (OF)) (IDENTICAL (FOR)) (RANDOMIZE (WITH)) (MEASURE (FOR)) (ORDER (OF))
    (EACH (|SUCH AS| IN)) (COMPETENCY (IN)) (ARGUMENT-SUPPORT (TO FROM BY OF THROUGH PAST))
    (MUCH (UNDER AS |IN TERMS OF| LIKE)) (SOPHISTICATION (IN FOR)) (PREDICT (IN OF ON BY))
    (INOCULATION (|IN THE FACE OF|)) (MISPERCEPTION (ACROSS IN))
    (INTENTION (AS AMONG |REGARDLESS OF|)) (SCIENCE (TO AT BEHIND)) (POLITICIZATION (OF))
    (FALSEHOOD (AMONG)) (STANDARDIZE (IN ACROSS WITHIN)) (CONSERVATIVES (IN)) (MEMBER (IN OF FROM))
    (OUTLET (|SUCH AS|)) (LABEL (AS)) (PUBLICATION (OF)) (FUND (FROM)) (ARECHAR (FOR))
    (FINDING (FROM ON WITH REGARDING TO)) (OBTAIN (FOR VIA)) (MAKE-UP (UNDER OF)) (TRUE (VERSUS))
    (DISCERNMENT (FOR BETWEEN)) (RATE-AS-EVALUATE (ON FROM))
    (RELATIONSHIP (BETWEEN FROM TO AMONG OF ACROSS)) (ACCURACY (VERSUS INTO IN)) (MIDPOINT (OF IN))
    (PARADIGM (ON)) (HEADLINE (AT |AS FOR|)) (PARTY (VS. OVER)) (PREFERENCE (OF FOR)) (SEE (WITH))
    (RESPONSESBELIEF (IN)) (NOTE (BELOW)) (NEWS (IN OF AT)) (TIME (FOR OF WITH IN BEFORE FROM PER))
    (SEVERE (AMONG)) (EQUIPMENT (FOR)) (WHICHRELIES (ON)) (ADOLESCENTS (DURING)) (ALTRUISM (DURING))
    (EPIDEMIC (ACROSS WITH AMONG)) (LESSON (FROM)) (BIO-ASSOCIATE (FOR)) (LONELINESS (AT OF WITH IN))
    (SYMPTOMATOLOGY (IN)) (RESPONDERS (TO)) (COUPLE (OF BETWEEN)) (DISCONNECTION (FROM AS))
    (FEEL-PERDURANT (BY OF)) (PROCLIVITY (FOR)) (INDUCE (OF)) (DRAWN (FROM IN)) (MEDIATE (BY THROUGH))
    (CELL-LINE (BETWEEN TO FOR THROUGH)) (CONTRAST (BETWEEN)) (ISSUE-CL-VERB (AT))
    (EXCEPTION (|SUCH AS| TO FROM)) (R-SQUARED-STAT-MEASURE (FOR WITH))
    (CONFIDENCE-INTERVAL-STAT-MEASURE (OF FOR)) (COMPLAINT (IN)) (EVALUATION (OF))
    (COMPLIANCE (WITH BY FROM TO)) (TIME-CL-VERB (OF)) (OVERLAY (ON)) (PROHIBIT (BY))
    (WASTHSANCTION (BY)) (IMPLEMENT (ON IN BY AT)) (MONITOR (OF BY)) (CAPTURE (BY |DUE TO|))
    (AWARENESS (DURING OF AMONGST)) (HAVE (AS WITH TO IN)) (CONTRIBUTOR (TO)) (HELPLESS (|DUE TO|))
    (PREVALENT (IN ACROSS AMONG)) (IN-LINE (WITH)) (DEPRESSION (AMONG DURING BY)) (PHARMACY (IN))
    (USS (DURING)) (DISADVANTAGE (TO)) (RESIDENT-ENDURANT (WITH)) (OXYGENATION (AT)) (HANDWASH (WITH))
    (DRINK (FOR)) (PASSENGER (IN FROM)) (PROPORTIONAL (TO))
    (BOTH (IN FOR TO BY AGAINST |IN TERMS OF| AT BETWEEN AS)) (VERSION (BY OF FOR))
    (DISTRIBUTION (ACROSS REGARDING OF IN AMONG)) (GOODS (WITH)) (SEEM (OF BY IN))
    (INTERACT (DURING |FOR THE SAKE OF| IN ON FOR)) (SCANNER (IN)) (WARD (IN)) (DIRECT-CONTROL (OF))
    (BIO-ENHANCE (OF)) (REVISE (FOR)) (UNDERTAKEN (BY IN)) (ESTABLISH (OF)) (DAMAGE (TO FROM))
    (COUNTERMEASURE (|SUCH AS| AGAINST)) (EXTENSIVE (IN))
    (LOCATION (|SUCH AS| ON DURING OF BETWEEN WITH)) (REGRESSION (ON BY WITH FOR OF))
    (COMPLEXITY (WITHOUT)) (PERIOD (IN AS FOR FROM)) (WINDOW (TO OF)) (PRETATION (OF))
    (CHOICE-ENDURANT (WITH AS OF |SUCH AS|)) (CLASSIFY (INTO)) (DENSITY (IN))
    (MEAN-STAT-MEASURE (OF ON FOR IN PER AT TO)) (EXPERIMENTAL-CONDITION (INCLUDING IN))
    (AUTOCORRELATION (OF)) (SUSCEPTIBLE (TO AT)) (PANEL (OF)) (DAY-OF-THE-MONTH (TO AS THROUGH))
    (REGION-OF-MOLECULE (OF BY)) (AIRPORT (WITH IN)) (SERVE (AS BY)) (ERROR (OF ON IN FOR))
    (PARAMETER (IN FOR)) (CASES-PATHOGEN (FOR AMONG BY TO IN PER TILL AMONGST WITH OF FROM ACROSS AS))
    (STRONGHOLD (IN)) (DIE (AMONG BY DURING OF FROM PER FOR BEYOND |DUE TO| AS))
    (TRIBUTION (|IN TERMS OF|)) (ET-AL. (OF AT FOR)) (COUNTY (PER IN WITHIN WITH))
    (PERSON (WITH OUTSIDE UNDER)) (CALCULATE (ON AS AFTER)) (POLLUTION (ACROSS)) (DISPARITY (BETWEEN))
    (VULNERABILITY (TO OF)) (SPEND (UNDER PER)) (CONFOUNDERS (AT)) (SYNONYMOUS (WITH))
    (BELN (|OUT OF|)) (BETA-STAT-MEASURE (AS)) (FATALITY (IN)) (DETERMINE (BY))
    (OUTBREAK-OF-DISEASE (OF AS |SUCH AS| |AS OF| AT BY IN)) (SMEETS (FOR)) (GENERALIZABILITY (OF))
    (CONSIST (TO)) (CONDUCT (|ACCORDING TO| IN FOR BETWEEN INCLUDING WITHIN))
    (DEVELOPMENT (OF REGARDING)) (HELPFUL (IN)) (LIKELY-ADJ (|DUE TO|)) (MORE-AFRAID (OF))
    (RELEVANT (TO FOR)) (R-STAT-MEASURE (FOR BETWEEN)) (DISRUPT (OF TO |DUE TO| IN)) (TOPIC (IN AS))
    (INTOLERANCE (OF)) (RESIDENCE (BY)) (INFORMATION (INCLUDING FOR ON WITH IN BY FROM LIKE OF))
    (DISPOSITION (TOWARDS)) (DISPOSE (TO)) (HARM (FOR)) (PERHAPS (IN)) (SUGGEST (FROM TO BY IN AS))
    (BEHAVIOUR (DURING BEFORE BY TO FOR IN THROUGH LIKE AMONG)) (LINK (TO BETWEEN FOR THROUGH))
    (CONFINEMENT (ON THROUGH AS VIA)) (CONSPIRACY (REGARDING ON THROUGH AS)) (MENTALITY (AS ON))
    (STAY (AT |AWAY FROM|)) (DISENGAGEMENT (IN)) (PSYCHOLOGY (IN OF AS)) (CITIZEN (AT FROM IN))
    (BIO-CONTEXT (OF FOR)) (ORDINAL (IN)) (SYMPTOM (OF THROUGH IN TO AS)) (RECOUNT (IN))
    (MAKE (ABOUT)) (OBSERVE (THROUGHOUT DURING IN WITH OF)) (BIO-RANGE (FROM BETWEEN))
    (MEDICINE (FOR)) (GOVERNANCE (AT)) (CHALLENGE (INCLUDING)) (DRUG (FOR AMONG OF FROM))
    (ORGANIZATION-AUTO (FROM IN)) (OPTIMAL (FOR)) (YEAR (TO FROM)) (MATRIX (FOR)) (TRAVELLER (FROM))
    (TRANSPORTATION (AMONG TO OF)) (ZHAO (FROM)) (CONTACT (WITH)) (ADVOCATION (FROM))
    (COME (INTO FROM |ALONG WITH|)) (CAPABILITY (OF)) (ONSET (OF IN TO)) (STATISTIC (FOR ACROSS))
    (PRIOR-ENDURANT (FOR)) (TRANSMIT (BY)) (COUNT-OF (IN ON |DUE TO| AT)) (DOCUMENT (ACROSS |DUE TO|))
    (STATUS (|ALONG WITH| AMONG WITHIN BEFORE FOR WITH))
    (CHANGE (|WITH RESPECT TO| IN DURING OF |DUE TO| TO ACROSS FROM)) (CHANGE-TO (IN FROM))
    (PEAK (ON)) (CONTROLLABILITY (ABOUT)) (CELLULAR-PROCESS (TO IN)) (APPRAISAL (OF AS))
    (SOLVE (ACROSS)) (GENERALIZABLE (TO)) (DESIRABLE (FOR)) (ESTIMATION (|WITH RESPECT TO| ABOUT OF))
    (PHONE (BEFORE)) (PARTICIPATION (IN REGARDING WITH)) (BIO-USE (IN OF AS WITH)) (AGGRESSION (WITH))
    (RANGEDFROM (TO)) (CENTRE (WITHIN)) (SEVERITY (IN OF AS ABOUT)) (AUTHOR (FOLLOWING))
    (WRITTEN (BY)) (TOOKPARTICIPANTS (ABOUT)) (DANGER (FROM DURING TO IN OF)) (REGARD (TO AS))
    (CHEMICAL-REACTION (TO IN TOWARDS)) (GLMMTMB (FOR)) (SLIDER (|NEXT TO|)) (PORTRAY (WITH))
    (ORIENTATION (TO ON WITH)) (BEHAVIORMEASURES (AGAINST)) (LIMIT (|DUE TO| IN TO))
    (CONCERN (WITH OF OVER)) (PRACTICE (OVER)) (CONVERGE (IN)) (DISCREPANCY (BETWEEN))
    (CLASSIFICATION (BY)) (HETEROGENEITY (ACROSS IN)) (BEGIN (OF)) (CYCLE (BY))
    (BIO-PROCESS (AT IN TO WITHIN ABOUT BEHIND)) (SUBSTANTIAL (IN)) (AGGREGATE (INCLUDING))
    (ASSESS (THROUGH WITH AS)) (PRESENCE (AT VERSUS)) (COHESION (IN)) (COMPONENT (FOR)) (SEND (AT))
    (PRONOUN/PLURAL (IN WITH)) (REMINDER (FOR)) (COMPLETE-CL-VERB (ON |UP TO|)) (PROGRAM (DURING IN))
    (CODEBOOK (WITH)) (METHODOLOGY (IN)) (RESEARCH (FROM INTO OF ON)) (CORROBORATE (BY)) (DEGREE (OF))
    (PERCENTAGE (FOR OF WITH)) (DECREASE (AFTER BY)) (DATASET (OF FROM FOR)) (UNACAST (FOR))
    (CONCEPTUALIZE (AS)) (THISSTUDYEXAMINESTHESOCIOECONOMICANDPOLITICALDETERMINANTSOFENGAGEMENT (IN))
    (PROMINENT (IN)) (SOCIAL (FOR)) (OBSERVATION (ACROSS FROM)) (SKA (OVER)) (BIO-FIT (TO FOR))
    (SALIENCE (ON)) (PRESENTATION (WITH AS IN TO)) (NOMINATE (BY)) (RELIABILITY (FOR OF))
    (INTERVAL (OF)) (SALIENCY (OF ON)) (HUMAN (FROM)) (TACKLE (IN)) (LIBERALIZATION (OF))
    (FRAME-CL-VERB (OF WITH |WITH RESPECT TO|)) (PARALLEL-CL-VERB (IN)) (ENTER (AS IN))
    (CLOSURE (OF WITH)) (SUM (WITHIN |ACCORDING TO|)) (REGISTRATION (AT)) (INVENTORY (OF))
    (INEQUALITY (WITHIN ACROSS BY)) (THIS (AS PAST)) (MAP-PERDURANT (BETWEEN))
    (TOOL-ENDURANT (INCLUDING FOR)) (OFFER (IN)) (GEAR (AT)) (IDENTITY (FROM IN)) (ESSENTIAL (TO))
    (CORRELATION (WITH AMONG BETWEEN FROM FOR OF)) (INVARIANCE (OF)) (AFFIRMATION (IN))
    (MAINTAIN (OF)) (SUMMARIZE (OF IN)) (VALIDITY (FOR OF)) (METHOD (FOR)) (ANIMAL (WITH))
    (EVOLUTION (OF)) (SPECTER (OF)) (LITERACY (FOR)) (POPULAR (IN AMONG)) (CONTRADICTORY (TO))
    (USAGE (AS)) (COVERAGE (OF)) (SIGNIFICANCE (IN |EXCEPT FOR|)) (POPULARITY (OF))
    (PLATFORM (LIKE |SUCH AS| ON)) (MARK (BY)) (SEASONALITY (OF)) (PREVALENCE (OF IN))
    (INTRODUCTION (TO IN)) (VIDEO (ON)) (REPRODUCIBILITY (OF)) (ENGINE (AFTER))
    (PUBLISHED-ARTICLE (WITH)) (INTENSITY (FROM)) (PICK (BY)) (INTERNET (FOR FROM TO))
    (KEYWORD (AS IN)) (SURVEILLANCE (BY)) (DEFINITION (IN)) (MEDIUM (IN)) (ORIGIN (OF)) (PREP (INTO))
    (NOTEWORTHY (AS)) (WEAKER (IN FOR)) (HYPOTHESIS (REGARDING ON)) (LOAD-PERDURANT (ON))
    (CONSTRUCTION (OF)) (EFFECT-SIZE-STAT-MEASURE (FOR OF)) (INVITATION (VIA WITHIN)) (RETEST (OF))
    (INCLUSION (OF)) (REASON-AUTO (|ACCORDING TO| ON VS. WITH BEHIND)) (WORLD (IN AS))
    (GRIND-PERDURANT (FOR)) (GRIND (FOR)) (DIAGNOSE (WITH)) (FESTIVAL (IN)) (VULNERABLE (TOWARDS TO))
    (PARENTHESIS (BELOW)) (COEFFICIENT (FOR IN)) (EXPERIMENTATION (WITH)) (REST (OF)) (DENOTE (AS BY))
    (DEMOCRATIZATION (AS)) (TRANSMISSION (BEFORE OF IN)) (DECLARE (ON))
    (SYNDROMESFIRST (|OUTSIDE OF|)) (CHANCE (OF))
    (TAKEN (AGAINST |AS TO| INTO FROM WITH |IN TERMS OF| BY)) (SPREAD (WITHIN))
    (CONNECTION (TO BETWEEN WITH)) (BORDER (WITH)) (LEAD (FOR)) (EXPERIMENT (WITH))
    (ANXIOUSNESS (AMONG)) (RESTRICTION (ON FROM IN THROUGHOUT)) (EXPLORATION (BY))
    (YOUNGSTER (TOWARDS)) (SENSITIVITY (|UP TO| TOWARDS |ALONG WITH| IN)) (REFERRAL (FOR))
    (OVERESTIMATION (IN)) (WERESATISFACTORY (WITH)) (REDUNDANCY (IN)) (PROPERTY (OF)) (DRIVE (BY))
    (CONSISTENCY (FOR OF)) (CHECKLIST (WITH FOR)) (INSPIRE (BY)) (ASSURE (BY))
    (THEQUESTIONNAIRE (IN INCLUDING)) (DURATION (|ALONG WITH| FOR)) (NOTICE (FROM)) (SENSATION (LIKE))
    (PROPOSE (BY AS)) (STORY (OF)) (SEVERITYALONG (WITH)) (DEAL (THROUGH))
    (DISCUSS (IN BY |IN THE LIGHT OF|)) (IMPAIR (WITHIN)) (DESCRIPTIVE-STAT-MEASURE (OF FOR))
    (AVERAGE (INTO FOR)) (MAJORITY-AUTO (OF WITH)) (ENGAGE (IN)) (LIKELIHOOD (BY OF))
    (FEELING (ON AT)) (IMPLICATE (OF IN)) (INSTILL (ACROSS)) (POSITION (ACROSS)) (BODY (OF))
    (WORK (AT IN FROM)) (LOCATION-OF (IN WITH)) (FEAR (OF IN)) (PROCESSING (OF)) (ITALIANS (ON))
    (NATION (WITH VIA IN)) (EXPOSURE (IN TO AS TOWARD)) (CONSISTENT (ACROSS)) (BIO-ACTIVATE (OF))
    (OPENNESS (TO)) (COMPETITION (AMONG OVER)) (SCATTERPLOTS (AT)) (PRELIMINARY (|DUE TO|))
    (CONCLUSION (FROM AT)) (RHO-STAT-MEASURE (OF BETWEEN)) (COMPUTE (BY FOR)) (GITHUB (UNTIL))
    (SMOKER (IN)) (BIO-MAKE-STATEMENT (OF WITH)) (RECEPTOR (FOR)) (PROXIMITY (TO WITH)) (AWARE (OF))
    (AMERICANS (WITH)) (MATERIALS (FOR)) (VISIBLE (AMONG)) (SUPPORTIVE (OF)) (DECLARATION (OF))
    (MAKER (IN)) (MOTIVE-ENDURANT (TO REGARDING FOR)) (DIVERGENCE (BETWEEN)) (AVOIDANCE (OF TO))
    (SATISFACTION (DURING WITH)) (RESIDUALS (FROM)) (HAPPINESS (AS))
    (PESSIMISM (AS FROM |IN RELATION TO|)) (RESAMPL (WITH)) (AGENCY (AS)) (SELF (VS.))
    (RELATIVE-ENDURANT (TO OF)) (COMMITTEE (AT)) (PREPAREDNESS (IN)) (VULNERABILITÄTEN (IN))
    (LEBENSMITTELVERSORGUNG (IN)) (AMINO-ACID (WITH)) (JUSTIFICATION (FOR))
    (ASSISTANCE (WITH DURING IN)) (ADVICE (FROM LIKE)) (FACULTY (OF AT)) (REFUGE (IN))
    (HOPE-ENDURANT (FOR)) (THING (IN)) (THINK-ENDURANT (OF ABOUT)) (INHABITANT (ACROSS))
    (SAFE-ENDURANT (IN OUTSIDE)) (AFRAID (OF)) (LIMITATION (TO OF)) (REMAIN (AS IN))
    (POSITION-IN-A-SEQUENCE (TO)) (IMPACT (DURING IN)) (LIFE (WITH IN)) (COMPLY (TO WITH))
    (BIO-AGENT (FOR IN)) (PAYOFF (OVER IN)) (COSTLY (TO)) (CONNECT (IN)) (BIO-FUNCTIONALITY (WITH))
    (NUCLEOTIDE (PER)) (INDEX-CL-VERB (THROUGH)) (INHERENT (IN)) (EQUATION (FOR))
    (TIGHTNESS (VS. THROUGH)) (TRAJECTORY (OF)) (VERIFY (OF)) (MORE-AWARE (OF)) (SENSE (OF))
    (NATURAL (TO)) (AFOREMENTIONEDCONCERN (FOR)) (SAMPLEPOPULATIONAND (FROM)) (WASASSOCIAT (WITH))
    (QUANTIFY (BY)) (VISUALIZE (IN)) (COMPLICATION (|DUE TO|)) (GENERALIZATION (BY)) (NOISE (IN))
    (PROCEDURE (IN)) (LEVEL (BELOW AT AMONG IN AS VS.)) (TUN (OF)) (DEVIATION (FROM)) (CHECK (BY))
    (PERFORM (IN |IN RELATION TO|)) (DESIGN (|IN ACCORDANCE WITH|)) (CAPACITY (FOR)) (QUALITY (OF))
    (GROUP-PERDURANT (INTO)) (TURN (TO)) (OPPORTUNITY (FOR)) (LOSE (OF)) (EFFICACY (IN DURING))
    (PSYCHOLOGICALREACTION (TO)) (STRESSOR (|SUCH AS| AS)) (PERCEIVE (AS)) (LOCK (DOWN))
    (FEEDBACK (ON)) (DEPICT (IN)) (ASK (TO FOR DURING IN AS)) (TRUSTWORTHY (AT))
    (WORD-CL-VERB (OF FROM)) (INCONSISTENT (WITH)) (TYPE (OF)) (PATHWAYSTEP (TOWARD IN))
    (DIMENSION (IN BETWEEN INCLUDING)) (LEADERSHIP (IN)) (RESPONSIBILITY (IN FOR FROM)) (MESSAGE (ON))
    (WELLBE (VIA THROUGH ON OF)) (HOC (FOR)) (TECHNIQUE (IN ON)) (SIGNIFICANTRELATIONSHIP (TO))
    (RELATION (AMONG BETWEEN TO WITHIN WITH)) (INTERCORRELATIONS (AMONG)) (INTERVENTIONPRIOR (TO))
    (DISCARD (FROM)) (AOT (WITH)) (FRUITFUL (FOR)) (STRAIN (OF)) (UPTAKE (OF)) (FLATTEN-AUTO (OF))
    (WORSEN (OF)) (CONNECTIVITY (IN)) (ISOLATE (IN)) (MISS (OUT))
    (STANDARD-ERROR-STAT-MEASURE (AT OF)) (EVALUATE (WITH)) (T-TEST (WITH OF))
    (SINGLE-CAPITALIZED-LETTER (WITH ON TO)) (OUTDEGREE (BETWEEN IN)) (MAJOR-CL-VERB (AT))
    (NOMINATION (ACROSS)) (SOCIABILITY (WITH)) (CRONBACHS-ALPHA-STAT-MEASURE (FOR OF))
    (ANSWER (ON WITH)) (LIST (AS IN)) (COMPENSATION (FOR)) (NETWORK (FOR OF WITHIN BETWEEN))
    (MINIMIZE (|DUE TO|)) (SOCIALIZE (BEYOND)) (CRISIS (IN AMONG)) (HABIT (|SUCH AS|)) (SUPPLY (FROM))
    (TRANSPARENCY (DURING)) (OPERATIONALIZE (BY)) (INFORMATIVE (FOR)) (CHOSEN (AS)) (ACCOUNT (BY))
    (RESIDUE-ON-PROTEIN (AT)) (SIZE (PER)) (PROBABILITY (OF)) (RESPONSIVE (WITH IN)) (SETTING (TO))
    (HAIL (AS)) (SCOPE (TO)) (DECADE (OF)) (CONSERVATISM (ON)) (DWARF (BY)) (MARKER (OF))
    (STIMULUS (FOR TO)) (REPUBLICAN-ENDURANT (AGAINST AT)) (DEMOCRAT (AT)) (STORYLINES (FOR))
    (POSSIBILITY (BY)) (FACE (|IN TERMS OF|)) (INTERFACE (WITH)) (DISMISSIVE (TOWARDS))
    (APATHETIC (TO)) (CURIOUS (|IN LIGHT OF|)) (APATHY (TOWARDS)) (BASE (OF IN)) (BIO-CONTROL (FOR))
    (VARIANT (INCLUDING OF)) (ROBUST (TO)) (PUNISH (IN)) (SEPARATE (IN)) (THRESHOLD (FOR))
    (STANOVICH (IN)) (DISTINGUISHABLE (FROM)) (THINK-PERDURANT (|TOGETHER WITH|)) (LOOK-UP (FOR))
    (QUARANTINE (FOR)) (AGE-CL-VERB (FROM BETWEEN)) (ENDORSEMENT (OF)) (COVER (BY)) (REFLECT (BY IN))
    (EVALUATEEVIDENCE (FOR)) (VIROLOGY (TO)) (EXPERT-ENDURANT (IN FROM)) (DISCRIMINATE (DURING))
    (PERFORMER (IN)) (LAY-ENDURANT (ON)) (PRECONDITION (FOR)) (SUBSCALES (BETWEEN)) (AMAZE (AT))
    (NATURE (OF)) (THEME (THROUGHOUT)) (STIGMA (FROM)) (CONTAGION (AS)) (BENEVOLENCE (UNDER))
    (MODERATOR (IN)) (BIO-FUNCTION (AS)) (TAKE (TO)) (OVEREXPOSURE (TO)) (COLLABORATION (DURING))
    (MOTIVATOR (FOR)) (DIVISION (INTO OF)) (SAY (OF BY)) (ACCEPTABILITY (THROUGH)) (SELFIE (AS))
    (READ (IN)) (GATHER (BY AT OVER OF)) (GOVERN (BY)) (GOVERNOR (TO)) (ACQUIRE (OF)) (NEW (IN))
    (CONFIRM (IN BY)) (APPRECIATION (THROUGH OF)) (STRUCTURE (OF)) (VERBAL (VS.)) (PROVINCE (IN OF))
    (LAUNCH (DURING)) (COP-AUTO (WITH)) (REDUCE (|OUT OF| OF)) (HESITANCY (AS)) (CONGRUENT (WITH))
    (INTRODUCE (AS BY)) (CREATE (OF)) (DISTINCT (FROM)) (RAOULT (AS)) (PREDICTIVE (OF))
    (SAFETY (|DUE TO| AGAINST)) (VARIABILITY (IN ACROSS)) (QUALIFY (BY)) (TABLE (FOR))
    (REPROGRAM (OF)) (SEASON (IN)) (RECOVER-AUTO (FROM)) (INEQUITY (IN)) (BIO-UTILIZE (BY))
    (ATTRIBUTABLE (TO)) (MELLITUS (IN)) (THANKFUL (FOR)) (ENROL (AT)) (DECISION (TO AT FOR IN))
    (LETHALITY (IN WITH)) (OBSTACLE (FOR)) (ACCESSIBILITY (FOR)) (REQUIRE (OF)) (IMPROVEMENT (FOR))
    (MUNICIPALITY (IN WITH)) (COMORBIDITY (ON IN)) (POSITIVITY (IN AMONGST))
    (NUMBER-COLON-NUMBER (IN)) (APPROXIMATION (WITHIN)) (PLOT (AGAINST)) (INCREMENT (TO))
    (DIAGNOSIS (OF)) (LANGUAGE (FROM)) (DEFINE (AS)) (SIGNATURE (IN)) (FEATURE (OF)) (COAT (OF))
    (EFFICIENCY (OF)) (INDICATOR (IN FOR)) (AUTONOMOUS (FOR)) (CLINICS (WITH)) (DETERMINANT (OF))
    (ARGUMENT (FOR)) (FAR (FROM)) (THOUGHTLESSNESS (BY)) (BIAS (TOWARDS))
    (CAPITAL-ENDURANT (|SUCH AS|)) (ISOLATION (IN)) (CORRELATE (WITH)) (MOBILITY (IN BY))
    (COMBINATION (OF)) (PROHIBITION (OF)) (BOTTOM (OF)) (CONTROVERSIAL (FROM)) (BIO-EXCHANGE (OF))
    (ROUTE (AS)) (COMPRISE (ON)) (SERIES (OF BY)) (CELL-GROWTH (OF)) (SURVIVAL (OF)) (CAUSE (OF BY))
    (NEED (BEFORE FOR TO)) (IDEATION (WITH)) (MEANS (OF)) (RAMIFICATION (OF))
    (LOGISTIC-REGRESSION (WITH)) (AFFECT (BY)) (EXPLORATORY (IN)) (FOUNDATION (FOR))
    (MOST-RELEVANT (UNDER)) (ADULTS (IN)) (SNACK (BETWEEN)) (SIT (FOR))
    (ENFORCE (BY |AS A RESULT OF|)) (US-STATE (AS)) (BEFOREAND (DURING)) (LIFESTYLE (AT))
    (LIVE (INCLUDING)) (DETAIL (FOR OF)) (BOOSTRESEARCH (BY)) (GRATEFUL (TO)) (TITLE (OF))
    (FOCUSSES (ON)) (ACADEMICS (AT)) (APPROVE (BY)) (GENERATE (OF)) (ORGANISATIONS (FROM))
    (UNIVERSITY (FOR)) (MIDDLE (OF)) (SHUTDOWN (OF)) (STRATIFY (BY)) (HISTORY (OF)) (HALF (OF))
    (NEGLECT (DURING)) (ENTRY (TO)) (A-LITTLE (DURING)) (COMMITMENT (TO)) (BENEFIT (FROM))
    (HELP (DURING)) (VARIETY (OF)) (YOUTH (WITH)) (SPECIFY (AS)) (GIVE (ON)) (PRIOR (TO))
    (MONEY-AUTO (FOR)) (GRADERS (WITH)) (UNDERSTAND (OF)) (CARRY-OUT (INTO)) (BUFFER (AGAINST))
    (ROLE (IN WITHIN)) (RELIANCE (ON)) (END (OF TO)) (LITERATURE (ON)) (UNRELATE (TO)) (FILL (OUT))
    (IMPULSIVITY (IN)) (GENE-CODE (AS)) (CONSEQUENCE (WITH FOR)) (SOCIETY (IN)) (FAITH (IN))
    (AFFLICT (BY)) (COUNSEL (TO)) (WORK-ON (IN)) (UNFOLD (AMONGST)) (EXTENT (TO))
    (SOCIALIZATION (THROUGH)) (MEDICATION (AMONG DURING WITH)) (COPE-ENDURANT (WITH))
    (CATEGORIZATION (BY)) (HOLDER (FOR)) (CRITERION (FOR)) (APPROACH-CL-VERB (BY)) (CURFEW (IN))
    (BIO-ACTIVITY (DURING)) (INSTITUTION (IN)) (MESSENGER (FOR)) (DISTRIBUTE (ACROSS))
    (DISCOVERY (IN)) (BRIEN (FROM)) (POWELL (FROM)) (ABODOLLAHI (FOR))
    (POLICY (|SUCH AS| UNTIL IN DURING WITH ON FOR)) (AREDRIVEN (BY)) (IMPLEMENTATION (OF TO))
    (WAIVER (FOR)) (MOVEMENT (FOR)) (GOOGLE (FROM)) (PRONE (TO)) (INCONSISTENCY (IN))
    (TIME-OF-DAY (OF)) (INSTRUCT (BY))))

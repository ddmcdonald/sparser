;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "chunker"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  April 2015

;; Initiated 10/8/14
;; ddm: 10/16/14 Rewrote identify-chunks. Commented out lines anticipating 
;; words not covered by edges. Added traces.

;; RJB 12/13/2014 changes to method "remaining-forms" and to code in
;; categories.lisp to provide more subtle handling of NP chunking to deal
;; with verb+ed cases contrast "direct binding to activated forms of RAS"
;; where "activated" is likely to be a pre-nominal modifier (from j2) with
;; "these drugs blocked ERK activity" where "blocked" is the main verb.
;; the key is to end a NG when you hit a verb+ed immediately preceded by a
;; noun, and to prevent that verb+ed from starting another NG (so that it
;; becomes a VG on its own)
;; RJB 12/19/2014     ;; partitive construction e.g. "all of these lines"
;; 1/1/2015 break out adjective/modifier from start of NG if the preceding
;;  chunk was a copula and fix handling of chunks terminated by the end of
;;  the sentence
;; 1/12/2015 Start on new NG interpreter parse-ng-interior -- works modestly well
;; 1/14/2015 New whack-a-rule type interpreter for NG and VG chunks
;; 1/17/2015 NEW VERSION -- should handle ambiguities in base edge
;; 1.28.2015 better handling of VG chunks -- don't allow two finite verbs
;; in the chunk (excpet for BE, HAVE and modals)
;; 2/24/2015 allow determiner and quantifier before number in an NG (used
;; to be that we didn't allow "all three drugs"
;; 4/14/15 Added tts to top of chunking operation when trace-parse-edges
;;  is running. 
;; 4/27/2015 Improved handling of verb+ed case -- tension is between
;; keeiping it in the NP and losing a reduced relative, or breaking up the
;; NP to allow for the verb form. Still need to review this.
;; 5/23/2015 -- handling wh-pronouns as NPs for relative clause PPs ("in
;; which ...", "from whose") while not allowing them as as determiner-like
;; modifiers for the start of a questioned NP ("which protein") handle
;; partitive without OF -- "all these ..."
;; 6/5/2015 don't run over the final period in scanning for chunk boundary


(in-package :sparser)

;;;-------------------------------------
;;; data structure to represent a chunk
;;;-------------------------------------

(defvar *chunk-forms* '(ng vg adjg))
(defparameter *new-chunk-parse* t)


(defvar *current-chunk* nil)

(defclass chunk ()
  ((start :initarg :start :accessor chunk-start-pos
    :documentation "The position object that the chunk
      starts at.")
   (end :initarg :end :accessor chunk-end-pos
    :documentation "The position object that the chunk
      ends at.")
   (edge-list :initarg :edge-list  :accessor chunk-edge-list
    :documentation "The edges initially considered in the chunk")
   (ev-list :initarg :ev-list  :accessor chunk-ev-list
     :documentation "The edge vectors initially considered in the chunk")
   (forms :initarg :forms :initform *chunk-forms*
    :accessor chunk-forms
    :documentation "This is the set of possible syntactic forms 
      for this chunk. Starts out as a list of the three possible forms:
      NP, VG and ADJP from grammar/rules/syntax/categories.lisp."))
  (:documentation
   "Provides a representation for a minimal syntactic phrase
    or 'chunk'. Noun phrases up to the head. Verb groups from
    any auxiliaries through the main verb including any adverbs
    that are known to associate with verbs."))

(defmethod print-object ((chunk chunk) stream)
  (print-unreadable-object (chunk stream :type t)
    (let ((start (chunk-start-pos chunk))
          (end (chunk-end-pos chunk)))
      (if (null end)
       "chunk with null end"
       (format stream "~a p~a ~s p~a"
               (chunk-forms chunk)
               (pos-token-index start)
               (if (eq start end)
                   "" (string-of-words-between start end)) ;; has happened
               (pos-token-index end))))))


;;;--------
;;; driver 
;;;--------
(defun ev-edges (ev)
  ;; return a list of all the relevant edges on an edge vector -- hope it doesn't cons too much
  (when ev ;; can be called with nil, when there is no previous ev in a chunk
    (let ((top (ev-top-node ev))
          edge)
      (if (eq top :multiple-initial-edges)
        (loop for i from 0 to (- (ev-number-of-edges ev) 1)
          when (not (literal-edge? (setq edge (aref (ev-edge-vector ev) i))))
          collect edge)
        (when top ;; managed to get an ev with NIL top node
          (list top))))))

(defun reset-ev-edges (ev edge-list)
  (when ev
    (if (null (cdr edge-list))
        (setf (ev-top-node ev) (car edge-list))
        (setf (ev-top-node ev) :multiple-initial-edges))
    (loop for i from 0 to (- (length (ev-edge-vector ev)) 1) 
      do (setf (aref (ev-edge-vector ev) i) nil))
    (loop for i from 0 to (- (length edge-list) 1) as e in edge-list
      do (setf (aref (ev-edge-vector ev) i) E))
    (setf (ev-number-of-edges ev) (length edge-list))))


(defparameter *record-all-chunks* nil)
(defparameter *ng-chunks* nil)
(defparameter *vg-chunks* nil)
(defparameter *adjg-chunks* nil)
(defun clear-chunk-recording()
  (setq *ng-chunks* nil)
  (setq *vg-chunks* nil)
  (setq *adjg-chunks* nil))
(defun show-chunks (&optional (stream t))
  (format stream "~&~&;;____________________________*ng-chunks*~&")
  (np (sort *ng-chunks* #'string<) stream)

  (format stream "~&~&;;____________________________*vg-chunks*~&")
  (np (sort *vg-chunks* #'string<) stream)

  (format stream "~&~&;;____________________________*adjg-chunks*~&")
  (np (sort *adjg-chunks* #'string<)  stream))

  

(defun identify-chunks (sentence)
  ;; Called from sentence-sweep-loop after the short sweeps over 
  ;; the sentence have fnished.
  (declare (special *parse-edges* *parse-chunk-interior-online*))
  (when *parse-edges* (tts)) ;; when tracing
  (let ((chunks (find-chunks sentence)))
    ;;(push-debug `(,sentence ,chunks)) (break "~a chunks" (length chunks))
    ;;(pop-debug) (setq sentence (car *) chunks (cadr *))
    (when *parse-chunk-interior-online*
      (dolist (*chunk* chunks)
        (declare (special *chunk*))
        (push-debug `(,*chunk*))
        (tr :parsing-chunk-interior-of *chunk*)
	(when (chunk-forms *chunk*) ;; don't parse a chunk like "EITHER" which has no form...
	  (parse-chunk-interior *chunk*))))
    (set-sentence-status sentence :chunked)
    (when *record-all-chunks*
      (loop for c in chunks
        do (record-chunk c)))
    chunks))

(defun record-chunk (c)
  (let ((str (string-of-words-between (chunk-start-pos c)(chunk-end-pos c)))) 
    (when (chunk-forms c)
      (ecase (car (chunk-forms c))
        (ng (push str *ng-chunks*))
        (vg (push str *vg-chunks*))
        (adjg (push str *adjg-chunks*))))))

(defun parse-chunk-interior (chunk)
  ;; Use the standard machinery in PTS to parse the interior
  ;; of the chunk and introduce a corresponding edge into
  ;; the chart. Run pts in a mode that will make it run
  ;; to completion and return rather than making a tail
  ;; recursive call back to the scan level
  (declare (special *left-segment-boundary*
                    *right-segment-boundary*))
  (setq *left-segment-boundary* (chunk-start-pos chunk)
        *right-segment-boundary* (chunk-end-pos chunk))
  (let ((*return-after-doing-segment* t)
        (*current-chunk* chunk))
    (declare (special *return-after-doing-segment*
                      *current-chunk*))
    (pts)
    (recover-acronym-if-necessary
     ;; this may belong somewhere within the dynamic scope 
     ;; of pts, but precisely where isn't clear yet.
     *left-segment-boundary* *right-segment-boundary*)))




(defun show-chunk-edges (&optional (ces *all-chunk-edges*))
  (loop for c in (reverse ces)
    do (format t "~&___________________~&")
    (np c)))

(defun np (l &optional (stream t))
  (loop for ll in l do (print ll stream)))



;;;-------------
;;; chunk finder
;;;-------------

(defvar *next-chunk* nil)
(defvar *chunks* nil)

(defun find-chunks (&optional (sentence (sentence)))
  (setq *next-chunk* nil)
  (setq *chunks* nil)
  (let ((pos (starts-at-pos sentence))
        (end (ends-at-pos sentence))
        forms  ev)
    (declare (special pos end forms ev))
    (until (eq pos end)
           (reverse *chunks*) ;; this is the return value
      (setq ev (pos-starts-here pos))
      (setq forms (starting-forms ev *chunk-forms*))
      (cond
       (forms
        (setq *next-chunk* (delimit-next-chunk ev forms end))
        (push *next-chunk* *chunks*)
        (when (null (chunk-end-pos *next-chunk*))
          ;;(break "pos = ~a  end = ~a" pos end)
          (setf (chunk-end-pos *next-chunk*) end))
        (setq pos (chunk-end-pos *next-chunk*)))
       (t
        ;; no chunk here -- move to next pos
        (let ((right-treetop (right-treetop-at/edge pos)))
          (cond
           ((word-p right-treetop)
            (push-debug `(,pos))
            #+ignore
            (error "Chunker encountered a treetop word: ~s"
                   (word-pname right-treetop))
            (if (eq word::period right-treetop)
             (setq pos end)
             (setq pos (chart-position-after pos)))) ;;(setq pos (p# (+ 1 (pos-array-index pos))))
           (t
            (setq pos (pos-edge-ends-at right-treetop))))))))))

(defun delimit-next-chunk (ev forms sentence-end)
  (declare (special ev sentence-end))
  ;; know that the edge immediately after start is consistent with some
  ;;  chunk type (maybe more than one)
  ;;  Goal is to create the longest chunk possible from this point
  (let* ((start (ev-position ev))
         (*chunk* (make-instance 'chunk :forms forms :start start :end nil :edge-list nil :ev-list nil))
         (pos start)
         possible-heads)
    (declare (special *chunk*))
    
    (until
        (or (chunk-end-pos *chunk*) ; 
            (eq pos sentence-end))
        (find-consistent-edges *chunk*)
      
      (when
          forms ;; chunk still valid for at least one category
        (setf (chunk-forms *chunk*) forms)
        (push ev (chunk-ev-list *chunk*))
        (setq pos (pos-ev-ends-at ev forms))
        (loop for ch in (compatible-heads forms ev pos) 
          do (push ch possible-heads)))

      (if (or
           (null forms) ;; indicates syntactic category of edge inconsistent with possible forms for chunk
           (eq pos sentence-end)) 
          ;;  chunk must end at or before this pos-before
          
          (let
              ((head (best-head (chunk-forms *chunk*) possible-heads))) 
            (cond
             (head
              ;; the chunk has a head for at least one of the consistent forms
              ;; complete this chunk -- signaling end of until loop
              (setf (chunk-end-pos *chunk*) (second head))
              (setf (chunk-forms *chunk*) (list (first head)))
              (tr :delimited-chunk *chunk*))
             (t
              ;;(break "HUH2")
              (setf (chunk-end-pos *chunk*) pos)
              (setf (chunk-forms *chunk*) nil)
              (tr :delimited-ill-formed-chunk *chunk*))))
          (else     
            (setq ev (pos-starts-here pos))
            (tr :chunk-loop-next-edge ev)
            (setq forms (remaining-forms ev *chunk*)))))))

(defun pos-ev-ends-at (ev forms)
  (declare (ignore forms))
  (pos-edge-ends-at (car (ev-edges ev))))

(defun find-consistent-edges (chunk)
  (when (chunk-forms chunk)  ;; else inconsistent chunk with no head
    chunk
    (setf (chunk-edge-list chunk)
          (loop for ev in (chunk-ev-list chunk)
            collect
            (compatible-edge? ev (chunk-forms chunk)(chunk-ev-list chunk)))))
  chunk)
    

(defun compatible-edge? (ev forms ev-list)
  (let (edge)
    (loop for form in forms
      when 
      (loop for e in (ev-edges ev)    
        thereis
        (setq edge (compatible-edge-form? e form ev-list t)))
      do
      (return edge))))

(defun best-head (forms possible-heads)
  ;; eventually might want to find rightmost head, or use some other measure
  ;;  including semantic interpretability
  (let (phead) 
    (loop for form in forms 
      when (setq phead (assoc form possible-heads)) 
      return phead)))

(defun compatible-heads (forms ev next-pos)
  (loop for form in forms
    when (compatible-head? form ev)
    collect (list form next-pos)))

(defun compatible-head? (form ev)
  (loop for edge in (ev-edges ev)
    thereis
    (and
     (not (literal-edge? edge))
     (case form
       (ng (ng-head? edge))
       (vg (vg-head? edge))
       (adjg (adjg-head? edge))))))

(defun remaining-forms (ev chunk);; &optional (forms *chunk-forms*))
  (loop for form in (chunk-forms chunk)
    when 
    (loop for e in (ev-edges ev)
      thereis 
      (compatible-edge-form? e form (chunk-ev-list chunk) nil))
    collect form))

(defun compatible-edge-form? (edge form ev-list remaining-forms?)
  (declare (special edge form ev-list))
  (case
      form 
    (ng
     (and
      (ng-compatible? edge ev-list)      
      (or
       remaining-forms?
       (not (likely-verb+ed-clause edge ev-list)))))
    (vg (and
         (vg-compatible? edge)
         (not (loop for ev in ev-list
                thereis
                (loop for edge in (ev-edges ev)
                  thereis (and
                           (vg-head? edge)
                           (not (member (cat-symbol (edge-category edge)) 
                                        '(category::be category::have category::do category::modal)))))))))
    (adjg (adjg-compatible? edge))))


(defparameter *verb+ed-sents* nil)
(defparameter *suppressed-verb+ed* nil)
(defun likely-verb+ed-clause (edge ev-list)
  (declare (special category::verb+ed *n-bar-categories*
                    category::preposition category::det
                    category::pronoun *verb+ed-sents* *sentence-in-core*
                    *chunk*))
  (cond
   ((and (edge-form edge) ;; COMMA has no edge-form
         (not
          (and ;; e.g. COT-mediated
           (individual-p (edge-referent edge))
           (eq (cat-symbol (car (indiv-type (edge-referent edge))))
               'category::hyphenated-pair)))
         (not
          (eq (edge-category edge) category::have))
         (eq 'category::verb+ed (cat-symbol (edge-form edge)))
         ;; new code -- don't accept a past participle immediately following a noun 
         ;; -- most likely to be a main verb or a reduced relative in this case
         (let*
             ((ev-edge (when (car ev-list)(car (ev-edges (car ev-list))))) ; 
              (prev-edge (when ev-edge (edge-just-to-left-of ev-edge))))
           (declare (special ev-edge prev-edge))
           (cond
            ((and prev-edge 
                  (edge-form prev-edge)
                  (memq (cat-symbol (edge-form prev-edge))
                        '(category::verb category::verb+ed)))
             (push (list  (list (edge-form prev-edge)
                                (edge-referent prev-edge))
                          (list (edge-form ev-edge)
                                (edge-referent ev-edge))
                          (list (edge-form edge)
                                (edge-referent edge))
                          (sentence-string *sentence-in-core*))
                   *suppressed-verb+ed*)
             nil)
            (t t)))
         (loop for e in (ev-edges (car ev-list))
           thereis
           (and
            (edge-form e)
            (memq (cat-symbol (edge-form e)) *n-bar-categories*))))
    (when (not
           (let* ((ev (pos-starts-here (pos-edge-ends-at edge)))
                  (edges (ev-edges ev)))
             (loop for e in edges
               thereis (memq (edge-form e)
                             (list category::preposition
                                   category::det
                                   category::pronoun)))))
      ;;(break "verb+ed")          
      (push (list (string-of-words-between 
                   (chunk-start-pos *chunk*)
                   (pos-edge-ends-at edge))
                  (sentence-string *sentence-in-core*)) 
            *verb+ed-sents*))
    t)
   (t nil)))
    


(defun starting-forms (ev &optional (forms *chunk-forms*))
  (loop for form in forms
    when 
    (loop for edge in (ev-edges ev) thereis 
      (can-start? form  edge))
    collect form))

(defun can-start? (form edge)
  (case form
    (ng (ng-start? edge))
    (vg (vg-start? edge))
    (adjg (adjg-compatible? edge))))

;;; FROM categories.lisp but should be here to maintain compatibility when structure of chunk changes
(defun plural-noun-and-present-verb? (e)
  (declare (special category::common-noun/plural))
  (or
   (and
    (eq (edge-form e) category::common-noun/plural)
    (loop for ee in (ev-edges (pos-starts-here (pos-edge-starts-at e)) )
      thereis (eq (edge-form ee) category::verb+present)))
   (and
    (eq (edge-form e) category::verb+present)
    (loop for ee in (ev-edges (pos-starts-here (pos-edge-starts-at e)) )
       thereis (eq (edge-form ee) category::common-noun/plural)))))

(defun singular-noun-and-present-verb? (e)
  (declare (special category::common-noun))
  (or
   (and
    (eq (edge-form e) category::common-noun)
    (loop for ee in (ev-edges (pos-starts-here (pos-edge-starts-at e)) )
      thereis (eq (edge-form ee) category::verb+present)))
   (and
    (eq (edge-form e) category::verb+present)
    (loop for ee in (ev-edges (pos-starts-here (pos-edge-starts-at e)) )
      thereis (eq (edge-form ee) category::common-noun)))))

(defgeneric ng-compatible? (label evlist)
  (:documentation "Is a category which can occur inside a NG"))
(defmethod ng-compatible? ((w word) evlist)
  (declare (ignore w evlist))
  nil)
(defmethod ng-compatible? ((e edge) evlist)
  (declare (special category::quantifier category::det
                    category::which category::what category::parentheses
                    word::comma category::pronoun category::verb+ing
                    category::ordinal category::also))
  (let ((edges (ev-edges (car evlist)))
        (eform (when (edge-p e) (edge-form e))))
    ;;(lsp-break "ng-compatible")
    (not
     (or
      (and (plural-noun-and-present-verb? e)
           (loop for ee in (ev-edges (pos-starts-here (pos-edge-ends-at e)) )
             thereis 
             (and
              (edge-p ee)
              (not (eq (edge-form ee) category::verb+ed))
              (ng-start? ee))))
      ;;in fact nothing should follow a pronoun (except a possessive pronoun)
      ;;(not (eq category::time-unit (edge-category e))) WHY WAS THIS HERE? WE NEED TO HANDLE "3 HOURS"
      #+ignore 
      ;; not sure why this was put in -- can have "3 proteins" and "serine 195"
      ;; OK -- examples are "the phospho - specific antibody 30 minutes" where the "30 minutes" is a new NP
      (and
       (eq category::number eform)
       (loop for ev in evlist
         thereis
         (loop for edge in (ev-edges ev)
           never (or (eq (edge-form edge) category::quantifier)
                     (eq (edge-form edge) category::det)))))
      
      (loop for edge in edges
        thereis
        (or
         (eq (edge-form edge) category::pronoun )
         (eq (edge-category edge) category::which)
         (eq (edge-category edge) category::what)))
      
      (cond
       ((eq word::comma (edge-category e))
        ;;comma can come in the middle of an NP chunk
        ;; as in "active, GTP-bound Ras"
        ;; BUT THIS IS NOT AS COMMON AS OTHER USES OF COMMA -- DROP IT FOR NOW
        ;(not (null evlist))
        t)
       ((and
         (or (eq eform category::verb+ed)
             (eq eform category::verb+ing))
         ;; don't allow a verb form after a parenthetical -- most likely a relative clause or a main clause
         ;;"RNA interference (RNAi) blocked MEK/ERK activation."
         (or
          (eq (edge-category e) category::have)
          (loop for edge in edges thereis (eq (edge-category edge) category::parentheses))))
        t)
       ((eq category::verb+ing eform)
	(loop for edge in edges thereis
	     (and (ng-head? edge)
		  ;; rule out demonstrative pronouns
		  (not (eq (edge-form edge) category::det)))))
	 
       ((eq category::ordinal (edge-category e))
        ;;WORKAROUND -- DAVID
        nil)
       ((eq (edge-category e) category::modal))
       ((eq eform category::adverb )
        (eq (edge-category e) category::also))
       (t
        (not (ng-compatible? (edge-form e) edges))))))))

(defmethod ng-compatible? ((c referential-category) evlist)
  (ng-compatible? (cat-symbol c) evlist))

(defmethod ng-compatible? ((name symbol) edges)
  (declare (special category::all ;;category::quantifier-of
		    category::pronoun
                    *ng-internal-categories*))
  (or
   (and
    (memq name *ng-internal-categories*)
    ;;in fact nothing should follow a pronoun (except a possessive pronoun)
    (not
       (loop for edge in edges
         thereis
         (eq category::pronoun (edge-form edge)))))
   (and
    ;; partitive construction e.g. "all of these lines"
    (loop for edge in edges
      thereis
      (or
       ;;(eq (edge-category edge) category::quantifier-of)
       (eq (edge-category edge) category::all)))
    (eq name 'category::det))))

(defun edge-over-there? (e)
  (declare (special category::syntactic-there category::deictic-location))
  (or (eq (edge-category e) category::syntactic-there)
      (and (eq (edge-category e) category::deictic-location)
	   (word-p (value-of 'name (edge-referent e)))
	   (equal (word-pname (value-of 'name (edge-referent e))) "there"))))

(defgeneric ng-start? (label)
  (:documentation "Is a category which can occur inside a NG?"))

(defmethod ng-start? ((w word))
  nil)

(defmethod ng-start? ((name symbol))
  (declare (special *ng-start-categories*))
  (memq name *ng-start-categories*))

(defmethod ng-start? ((c referential-category))
  (ng-start? (cat-symbol c)))

(defmethod ng-start? ((e edge))
  (declare (special e category::modifier category::adjective
                    category::be *big-mechanism* category::parentheses
                    category::that category::verb+ed category::verb+ing
                    category::preposition category::and category::also
                    category::vp+ed category::subordinate-conjunction
		    category::to))
  (cond
    ((or
      (eq (edge-category e) category::modal)
      ;;(edge-over-there? e)
      ) ;; a way to handle ambiguity of THERE to get "THERE IS ..." correct
     nil)
    ((eq (edge-form e) category::vp+ed) t) ;; this should only happen for NS words like GAP–mediate
    ((and (plural-noun-and-present-verb? e)
	  (loop for ee in (ev-edges (pos-starts-here (pos-edge-ends-at e)) )
	     thereis (ng-start? ee)))
     nil)
    ((and (singular-noun-and-present-verb? e)
	  (let ((prev-edge (edge-just-to-left-of e)))
	    (and prev-edge
		 (eq (edge-category prev-edge) category::to))))
     nil)
    ((or (eq category::modifier (edge-category e))
	 (eq category::adjective (edge-form e)))
     ;;when the previous chunk was a copula verb (just check for BE at this time)
     ;; and this is an adjective
     (not (and (car *chunks*)
	       (member 'vg (chunk-forms (car *chunks*)))
	       (loop for edge in (ev-edges (car (chunk-ev-list (car *chunks*))))
		  thereis
		    (eq category::be (edge-category edge))))))
    ((eq category::that (edge-category e))
     ;; it is almost never the case that THAT is a determiner, 
     ;; it is usually a relative clause marker or a thatcomp marker
     (and (not *big-mechanism*)
	  (not (and (car *chunks*)
		    (member 'vg (chunk-forms (car *chunks*)))
		    (thatcomp-verb (car (chunk-edge-list (car *chunks*))))))
	  (not (and (car *chunks*)
		    (member 'ng (chunk-forms (car *chunks*)))
		    (thatcomp-noun (car (chunk-edge-list (car *chunks*))))))))
    ((eq (edge-form e) category::adverb)
     (not (eq (edge-category e) category::also)))
    ((and (edge-form e)
	  (eq (cat-symbol (edge-form e)) 'category::wh-pronoun)
	  (member (cat-symbol (edge-referent e)) 
		  '(category::which category::whose category::what)))
     t)
    ((eq category::verb+ed (edge-form e))
     ;; verb_ed is allowable as the start of an NG if the previous (and immediately adjacent) chunk
     ;; was not an NG -- such an adjacent NG happens when the verb+ed is taken to stop the NG
     ;; as in "these drugs blocked ERK activity" where "blocked" is a main verb
     ;; as opposed to "direct binding to activated forms of RAS"
     (let ((prev-edge (edge-just-to-left-of e)))
       (and (not
	     (and (edge-p prev-edge)
		  (eq category::parentheses (edge-category prev-edge))))
	    (not (and
		  (car *chunks*)
		  (member 'ng (chunk-forms (car *chunks*)))
		  (eq (chunk-end-pos (car *chunks*))
		      (pos-edge-starts-at e)))))))
    ((eq category::verb+ing (edge-form e))
     ;; verb_ing is most likely as the start of an NG if the previous (and immediately adjacent) chunk
     ;; was not a preposition, this blocks the prenominal reading of "turn on RAS by activating guanine nucleiotide exchange factors"
     (unless (could-be-the-start-of-a-sentence (pos-edge-starts-at e))
       (let ((prev-edge (edge-just-to-left-of e)))
	 (not (and (edge-p prev-edge)
		   (or
		    (eq category::parentheses (edge-category prev-edge))
		    (eq word::comma (edge-category prev-edge))
		    (eq category::and (edge-category prev-edge))
		    (eq category::preposition (edge-form prev-edge))
		    (eq category::subordinate-conjunction (edge-form prev-edge))
		    (ng-head? prev-edge)))))))
    ((ng-start? (edge-form e))
     t)))

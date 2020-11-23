;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2019 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "chunker"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  December 2019

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

(defvar *current-chunk* nil
  "Bound in parse-chunk-interior so it's available in pts as
   it parses the interior of that chunk")

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
    (let ((start (chunk-start-pos chunk))y
          (end (chunk-end-pos chunk)))
      (if (null end)
          (format stream "~s ~s"
                  (chunk-forms chunk)
                  (loop for e in (chunk-edge-list chunk)
                        collect (if (edge-p e)
                                    (retrieve-surface-string e)
                                    "empty-edge")))
          (format stream "~a p~a ~s p~a"
                  (chunk-forms chunk)
                  (pos-token-index start)
                  (if (eq start end)
                      "" (string-of-words-between start end)) ;; has happened
                  (pos-token-index end))))))

(defun inside-current-chunk? (edge)
  (when *current-chunk*
    (assert (edge-p edge))
    (loop for ev in (chunk-ev-list *current-chunk*)
          thereis
          (member edge (ev-edges ev)))))


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

(defun record-chunk (c)
  (let ((str (string-of-words-between (chunk-start-pos c)(chunk-end-pos c)))) 
    (when (chunk-forms c)
      (ecase (car (chunk-forms c))
        (ng (push str *ng-chunks*))
        (vg (push str *vg-chunks*))
        (adjg (push str *adjg-chunks*))))))


(defun show-chunk-edges (&optional (ces *all-chunk-edges*))
  (loop for c in (reverse ces)
    do (format t "~&___________________~&")
       (np c)))

(defun np (l &optional (stream t))
  (loop for ll in l do (print ll stream)))


(defparameter *record-chunks-for-regression-test* nil
  "Produce the s-exp format for comparing chunking results between runs")

(defun record-chunks-for-regression-test (chunks)
  (declare (special *chunking-result*))
  (labels ((string-inside-chunk (chunk)
             (string-of-words-between (chunk-start-pos chunk)
                                      (chunk-end-pos chunk)))
           (format-chunk (c)
             (let* ((forms (chunk-forms c))
                    (text (string-inside-chunk c))
                    (form-token
                     (cond
                       ((null forms) :nil)
                       ((null (cdr forms))
                        (intern (symbol-name (car forms))
                                (find-package :keyword)))
                       (t (reintern-symbols forms (find-package :keyword))))))              
               `(,form-token ,text) )))
    (let ((sexp (loop for chunk in chunks
                   collect (format-chunk chunk))))
      (setq *chunking-result* sexp))))



;;;--------
;;; driver 
;;;--------

(defun identify-chunks (sentence)
  "Called from sentence-sweep-loop after the short sweeps over 
   the sentence have finished. If the *parse-chunk-interior-online*
   parameter is up it parses the interior of every chunk."
  (declare (special *parse-edges* *parse-chunk-interior-online*))
  (when *parse-edges* (tts)) ;; when tracing
  (let ((chunks (find-chunks sentence)))
    (when *record-chunks-for-regression-test*
      (record-chunks-for-regression-test chunks))
    (when *parse-chunk-interior-online*
      (handle-chunks chunks))
    (set-sentence-status sentence :chunked)
    (when *record-all-chunks*
      (loop for c in chunks
        do (record-chunk c)))
    chunks))

(defun handle-chunks (chunks)
  "Pass each chunk to the parser in sequence"
  (dolist (*chunk* chunks)
    (declare (special *chunk*))
    (tr :parsing-chunk-interior-of *chunk*)
    (when (chunk-forms *chunk*)
      ;; don't parse a chunk like "EITHER" which has no form...
      (parse-chunk-interior *chunk*))))

(defun parse-chunk-interior (chunk)
  "Use the standard machinery in PTS to parse the interior
   of the chunk and introduce a corresponding edge into
   the chart. Run pts in a mode that will make it run
   to completion and return rather than making a tail
   recursive call back to the scan level"
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



;;;-------------
;;; chunk finder
;;;-------------

(defvar *next-chunk* nil)
(defvar *chunks* nil)

;; (trace-chunker)

(defun find-chunks (&optional (sentence (sentence)))
  "Entry point to running the chunker that allows it to be run
   between arbitrary positions."
  (find-chunks/bounded (starts-at-pos sentence)
                       (ends-at-pos sentence)))

(defun find-chunks/bounded (pos end)
  "Walk the chart between beginning ('pos') and end, delimiting
  successive chunks and accumulating them on *chunks*. Loops over
  successive positions but uses their starting edge vectors as its
  real loop variable. delimit-next-chunk does the real work."
  (declare (special *trace-chunker*))
  (setq *next-chunk* nil)
  (setq *chunks* nil)
  (let ( forms  ev)
    
    (until (position/<= end pos)
        (reverse *chunks*) ;; this is the return value

      ;; set up the next call to delimit-next-chunk
      (setq ev (pos-starts-here pos))
      (setq forms (starting-forms ev *chunk-forms*))
      (when *trace-chunker* ;; tree of remaining part of chart
        (terpri)(tts t pos))

      (cond
        (forms ;; at least one of the edges can start a chunk
         (tr :delimit-chunk-start ev forms)
         (setq *next-chunk* (delimit-next-chunk ev forms end))
         (push *next-chunk* *chunks*)
         (disambiguate-head-of-chunk *next-chunk* end)
         (when (null (chunk-end-pos *next-chunk*))
           (setf (chunk-end-pos *next-chunk*) end))
         (setq pos (chunk-end-pos *next-chunk*)))
        
        (t ;; no chunk starts here -- move to next position
         (let ((right-treetop (right-treetop-at/edge pos)))
           (cond
             ((word-p right-treetop)
              (if (eq word::period right-treetop)
                (setq pos end)
                (setq pos (chart-position-after pos))))
             (t
              (setq pos (pos-edge-ends-at right-treetop))))))))))

;; (trace-delimit-chunk)

(defun delimit-next-chunk (ev forms sentence-end)
  "The caller, find-chunks, knows that this edge vector starts a chunk 
   of at least one word whose grammatical form recorded in 'forms'. 
   Look at successive positions (edge-vectors) and form the longest
   possible chunk starting here. Chunks start out with all possible
   forms for the initial ev. This list is paired down as positions are
   examined and checked for consistency with those forms. Chunks are
   closed off when the edges on the next position are not consistent
   with the remaining form."
  (let* ((start (ev-position ev))
         (prev-chunk (car *chunks*))
         (*chunk* (make-instance 'chunk :forms forms
                                 :start start
                                 :end nil
                                 :edge-list nil
                                 :ev-list nil))
         (pos start)
         possible-heads)
    (declare (special *chunk*))
    (tr :dlc-before-loop prev-chunk *chunk*)
    (loop until (or (chunk-end-pos *chunk*)
                    (eq pos sentence-end))
       do
         (when forms ;; chunk still valid for at least one category
           (tr :dlc-still-possible forms)
           (setf (chunk-forms *chunk*) forms)
           (push ev (chunk-ev-list *chunk*))
           (setq pos (pos-ev-ends-at ev forms))
           (loop for compatible-head in (compatible-heads forms ev pos sentence-end)
              ;; lists of form, next-pos
              do (tr :dlc-pushing compatible-head)
                (push compatible-head possible-heads))
           (tr :dlc-possible-heads possible-heads))
           
         (if (or (null forms) ;; syntactic category of edge is inconsistent
                 ;; with the possible forms for the ongoing chunk
                 (eq pos sentence-end)) ;; chunk must end at or before this pos-before
           
           (let ((head (best-head (chunk-forms *chunk*) possible-heads)))
             ;; We've either run out of text or the ev we just looked at
             ;; does not extend any of the running cases.
             ;; Tie off or flush this chunk
             (cond
               (head
                ;; the chunk has a head for at least one of the consistent forms
                ;; complete this chunk -- signaling end of the until loop
                (setf (chunk-end-pos *chunk*) (second head))
                (setf (chunk-forms *chunk*) (list (first head)))
                (tr :dlc-found-head (chunk-end-pos *chunk*))                
                (gross-infinitive-chunker-test
                 ;; as much fall-back as improvement see note w/ fn.
                 *chunk*)
                (tr :delimited-chunk *chunk*))
               (t
                (setf (chunk-end-pos *chunk*) pos)
                (setf (chunk-forms *chunk*) nil)
                (tr :dlc-no-head-end (chunk-end-pos *chunk*))
                (tr :delimited-ill-formed-chunk *chunk*))))
           
           (else ;; loop around.
             (tr :chunker-moving-to pos)
             (setq ev (pos-starts-here pos))
             (tr :chunker-next-edges ev)
             (setq forms ;; This call is where we extend the chunk.                
                   (remaining-forms ev *chunk*))
             (tr :chunk-loop-next-edge forms)))
         
       finally
         (tr :dlc-finished (chunk-end-pos *chunk*) (chunk-ev-list *chunk*))
         (when (position/<= (chunk-end-pos *chunk*)
                            (ev-position (car (chunk-ev-list *chunk*))))
           ;; filter out all edges including the putatitve head edge  
           (setf (chunk-ev-list *chunk*)
                 (loop for ev in (chunk-ev-list *chunk*)
                    when (position/> (chunk-end-pos *chunk*) (ev-position ev))
                    collect ev))
              ;;(format t "~% shortened ev-list to ~s" (chunk-ev-list *chunk*))
              )
         (loop for ev in (chunk-ev-list *chunk*)
            do (filter-chunk-compatible-edges-from-ev ev *chunk*))
         (return 
           (find-consistent-edges *chunk* sentence-end)))))




;;--- compatible heads

(defun compatible-heads (forms ev next-pos end)
  "Called in the delimit-next-chunk loop to see whether we can
   extend the current chunk. This is the 'step' function. 
   It returns a list of form-ev pairs where the call to compatible-head?
   established that at least one of the edges at this position ('ev')
   is consistent with that form label. Return value is pushed onto
   possible-heads local in delimit-next-chunk."
    (loop for form in forms
       when (compatible-head? form ev end)
          collect (list form next-pos)))

(defun compatible-head? (form ev end)
  "The type of this chunk is 'form'. Checks whether any of 
   the edges on this edge vector are suitable heads for that type."
  (loop for edge in (ev-top-edges ev)
        thereis (ecase form
                  (ng (ng-head? edge end))
                  (vg (vg-head? edge))
                  (adjg (adjg-head? edge)))))


(defun compatible-head-edges? (forms ev &optional end)
  "Like compatible-head? except that it returns the edge (or edges)
   that are compatible with the (one of) the form(s)."
  ;; called by find-consistent-edgs and disambiguate-head-of-chunk
  (loop for edge in (ev-top-edges ev)
        when (loop for form in forms
                   thereis (ecase form
                             (ng (ng-head? edge end))
                             (vg (vg-head? edge))
                             (adjg (adjg-head? edge))))
     collect edge))

(defparameter *show-chunk-filtering* nil)
(defparameter *filtering-predicates* nil)
(defun filter-chunk-compatible-edges-from-ev (ev chunk
                                              &aux
                                                (end (chunk-end-pos chunk))
                                                (forms (chunk-forms chunk))
                                                (top-edges (ev-top-edges ev))
                                                edges-to-filter)
  "Called from delimit-next-chunk when the chunk as been delimited
   in a loop that looks at each edge vector to sort out cases where
   there are multiple terminal edges at that position."
  (when (cdr top-edges)
    ;; the edge at this position is still ambiguous
    (tr :filter-chunk-compatible ev top-edges)
    (loop for edge in top-edges
       unless
         (or (null forms) ;; not a valid chunk
             ;; "following" is both an "ADJ" and a "PREPOSITION"
             (eq (edge-form-name edge) 'preposition)
             (position/> (pos-edge-ends-at edge)
                         (chunk-end-pos chunk))
             (member (edge-cat-name edge)
                     '(acknowledgement syntactic-there))
             (member (edge-form-name edge) '(adverb))
             (eq (edge-category edge) (word-named "there"))
             (loop for form in forms
                thereis (if (eq (edge-ending-position edge) end)
                          (ecase form
                            (ng (ng-head? edge end))
                            (vg (vg-head? edge))
                            (adjg (adjg-head? edge)))
                          (ecase form
                            (ng (or (ng-start? edge) ;; catch DET
                                    (ng-compatible?
                                     edge
                                     (cdr (member ev (chunk-ev-list chunk))))))
                            (vg (vg-compatible?
                                 (cat-symbol (edge-form edge))))
                            (adjg (adjg-compatible? edge))))))
       do
         (unless  (member (edge-cat-name edge)
                          '(deictic-location adverb also))
           (when *show-chunk-filtering*
             (format t "removing incompatible ~s (~s) from chunk (forms ~s)~%  from ~s~%"
                     edge (edge-form-name edge)
                     forms
                     (current-string))
             (break)))
         (tr :removing-chunk-incompatible-edge edge)
         (push edge edges-to-filter))

    (when edges-to-filter
      (if (= (length edges-to-filter) (length top-edges))
        ;; Happens if the individual edges/readings are the same form and are not
        ;; compatible with the form of the chunk. In this case we leave in the ambiguity
        ;; and let the parsing of the segment sort it out.
        ;; e.g. "freshly added 10 mM NaF"
        (tr :all-ev-edges-are-incompatible ev)
        (loop for e in edges-to-filter
           do (tr :removing-chunk-incompatible-edge e)
             (remove-edge-from-chart e))))))

;;--- best head

(defun best-head (forms possible-heads)
  "Called from delimit-next-chunk to select the 'head' (form-ev pair)
   to use.  Forms is a list of one or more symbols naming chunk
   types (e.g. ng). Possible-heads is a list of pairs of chunk type
   and the position it ends at. If there is more than one pair,
   select the one whose end position is to the right of the others."
  (let (furthest)
    (loop for p in possible-heads ;; e.g. (ng #<position 4 "on">)
          when (and (member (car p) forms)
                 (or (null furthest)
                     (>= (pos-token-index (second p))
                         (pos-token-index (second furthest)))))
       do (setq furthest p))
    furthest))



;;--- continue chunks

(defun remaining-forms (ev chunk)
  "Called from the loop in delimit-next-chunk. This is the test that determines
   whether the chunk should include get longer. It returns the forms
   that are still compatible given at least one of the edges on this vector"
  (loop for form in (chunk-forms chunk)
        when (loop for e in (ev-top-edges ev)
                thereis (compatible-edge-form? e form (chunk-ev-list chunk) nil))
        collect form))

(defun compatible-edge-form? (edge form ev-list remaining-forms?)
  "Dispatch by form for continuing (or not) a chunk of a particular form
   with this edge. The edge-vector (ev) list is a record of the positions
   already in this chunk. 
   Called by compatible-edge? and remaining-forms"
  (ecase form 
    (ng (if (sentential-adverb? edge)
            (loop for ee in (edges-before edge)
                  thereis (member (form-cat-name ee) '(det demonstrative possessive)))
            (or (ng-compatible? edge ev-list)
                ;; for "all of these/those/them"
                (member (edge-cat-name edge)
                        '(those these pronoun/plural)))))
    (vg (and
         (compatible-with-vg? edge)
         (not (loop for ev in ev-list
                    thereis
                      (loop for e in (ev-top-edges ev)
                            thereis
                              (and
                               (vg-head? e)
                               (not (member (edge-cat-name e)
                                            '(be have do modal)))))))))
    (adjg (adjg-compatible? edge))))



;;--- start the chunks

(defun starting-forms (ev &optional (forms *chunk-forms*))
  "Used by the loop in find-chunks to determine whether any of the edges
   on this start vector are chunk-starters. Return all of the
   possible forms."
  (loop for form in forms
        when (loop for edge in (ev-top-edges ev)
                   thereis (can-start? form  edge))
        collect form))

(defun can-start? (form edge)
  (ecase form
    (ng (ng-start? edge))
    (vg (vg-start? edge))
    (adjg (adjg-compatible? edge))))


;;--- at chunk end

(defun disambiguate-head-of-chunk (chunk end)
  ;; called by find-chunks and from suppress-extra-head-edges-if-necessary
  ;; in find-consistent
  (let* ((head-ev (car (chunk-ev-list chunk)))
         (top-node (ev-top-node head-ev))
         (multi-edges
          (when (eq :multiple-initial-edges top-node)
            (ev-top-edges head-ev)))
         (forms (chunk-forms chunk))
         (head-compatible-edges
          (when multi-edges
            (compatible-head-edges? forms head-ev end))))
    (declare (special ;;head-ev multi-edges top-node head-compatible-edges
                      *vg-head-categories*))
    (when (and multi-edges ;; the head started as ambiguous
               (or
                (not (equal forms '(adjg)))
                ;; ADJG has confusions for NEXT and FOLLOWING which are non-chunked items
                (loop for e in multi-edges ;; but "present" is ADJ/V ambiguous
                   thereis (member (cat-symbol (edge-form e))
                                   *vg-head-categories*)))

               (not (loop for edge in multi-edges
                       thereis (memq (form-cat-name edge)
                                     '(subordinate-conjunction))))                             
               (car head-compatible-edges)
               ;; but was disambiguated by the chunking
               (null (cdr head-compatible-edges)))
      (tr :disambig-replacing-top-edge
          multi-edges (car head-compatible-edges))
      (specify-top-edge (car head-compatible-edges)))))



;;;-------------------
;;; Condition testers
;;;-------------------

(defun plural-noun-and-present-verb? (e)
  "Checks for a word being ambiguous between a plural noun and 
   the present form of a verb. Assumes just two edges on the ev.
   Value is a boolean. Follow up is done by plural-noun-not-present-verb?
   in the ng-compatible? case"
  (declare (special category::common-noun/plural category::verb+present))
  ;;(break "pnpv: ~a" e)
  (cond ((eq (edge-form e) category::common-noun/plural)
         (loop for ee in (all-edges-at e)
            thereis (eq (edge-form ee) category::verb+present)))
        ((eq (edge-form e) category::verb+present)
         (loop for ee in (all-edges-at e)
            when (eq (edge-form ee) category::common-noun/plural)
            do (return ee)))))

(defun plural-noun-not-present-verb? (e &optional (edges-before (edges-before e)))
  "Return non-nil if this edge has a plural-noun reading that is consistent
   with the present context.."
  ;;(push-debug `(,edges-before)) (break "plural-noun-not-present-verb? ~a" e)
  (or
   (sentence-initial? e)
   (between-wh-and-modal e edges-before)
   (and (not (or (some-edge-satisfying? edges-before #'np-end-edge)
                 ;; if there is a singular-det then it is less likely that this is a plural noun
                 ;;  but "that" is both a relative pronoun and a singular det, so we ignore evidence from "that"
                 ;;  e.g. "we reported that faces are ugly" -- where "faces" is taken as a plural noun
                 (some-edge-satisfying? edges-before #'singular-non-that-det )
                 (and (not (preceding-determiner? e))
                      (some-edge-satisfying? edges-before #'preceding-that-or-whether?))))
        (or
         (some-edge-satisfying? edges-before #'non-det-or-verb-ng-start?)
         (not (some-edge-satisfying? edges-before #'non-det-or-verb-ng-start?))))))
                                   
(defun singular-noun-and-present-verb? (e)
  (declare (special category::common-noun
                    category::verb category::verb+present))
  (cond ((eq (edge-form e) category::common-noun)
         (loop for ee in (all-edges-at e)
            thereis
              (or (eq (edge-form ee) category::verb)
                  (eq (edge-form ee) category::verb+present))))
        ((or (eq (edge-form e) category::verb)
             (eq (edge-form e) category::verb+present))
         (loop for ee in (all-edges-at e)
               thereis (eq (edge-form ee) category::common-noun)))))

(defun get-verb-edge (e)
  (declare (special category::common-noun
                    category::verb category::verb+present))
  (loop for ee in (all-edges-at e)
        when
          (or (eq (edge-form ee) category::verb)
              (eq (edge-form ee) category::verb+present))
        do (return ee)))

(defun get-non-verb-edges (e)
  (declare (special category::common-noun
                    category::verb category::verb+present))
  (loop for ee in (all-edges-at e)
        unless
          (or (eq (edge-form ee) category::verb)
              (eq (edge-form ee) category::verb+present))
        collect ee))


(defun non-det-or-verb-ng-start? (ee)
  (and (edge-p ee)
       (ng-start? ee)
       (not (member (form-cat-name ee) '(det demonstrative verb+ed verb+ing)))))

(defun np-end-edge (ee)
  (member (form-cat-name ee) '(proper-noun pronoun)))


(defun singular-det (e)
  (member (edge-cat-name e) '(a that this)))

(defun singular-non-that-det (e)
    (member (edge-cat-name e) '(a this)))

(defun preceding-that-or-whether? (e)
  (some-edge-satisfying?
   (edges-before e)
   #'(lambda (ee) (member (edge-cat-name ee) '(that whether)))))
                         


;;;--------------------
;;; Verb Group methods
;;;--------------------

;;--- vg-head?

(defgeneric vg-head? (label)
  (:documentation "Is a category which can occur as the head of a VG")
  (:method (item) nil)
  (:method ((w word)) t)
  (:method ((e edge))
    (and
     (not (copula-v-adjective-ambiguity e))
     (vg-head? (edge-form e))))
  (:method ((c referential-category))
    (vg-head? (cat-symbol c)))
  (:method ((name symbol))
    (declare (special *vg-head-categories* *chunk*))
    (or (member name '(category::verb+ed category::verb+ing))
        (and (memq name *vg-head-categories*)
             (or (not (boundp '*chunk*))
                 (null (cdr (chunk-ev-list *chunk*)))
                 (not
                  (and ;; the rightmost 
                   (loop for e in (ev-edges (car (chunk-ev-list *chunk*)))
                         thereis
                           (and (referential-category-p (edge-form e))
                                (member (cat-symbol (edge-form e))
                                        *vg-head-categories*)))
                   (loop for ev in (cdr (chunk-ev-list *chunk*))
                         thereis (loop for edge in (ev-top-edges ev)
                                       thereis (eq 'be (edge-cat-name edge)))))))))))

;;--- vg-compatible?

(defgeneric vg-compatible? (label)
  (:documentation "Is a category which can occur inside a VG")
  (:method ((w word)) nil)
  (:method ((c referential-category))
    (vg-compatible? (cat-symbol c)))
  (:method ((name symbol))
    (declare (special *vg-word-categories*))
    (memq name *vg-word-categories*)))


;;--- vg-start?

(defmethod vg-start? ((e edge))
  (declare (special category::to))
  (let ((edges-before (edges-before e)))
    ;;(push-debug `(,e ,edges-before)) (lsp-break "vg-start, e = ~a" e)
    (cond
      ((loop for ee in (all-edges-at e)
             thereis (eq 'preposition (form-cat-name ee)))
       nil)
      ((and (sentence-initial? e)
            (not (followed-by-of e))
            (or (member (edge-cat-name e) '(do be))
                (eq (form-cat-name e) 'modal))
            #+ignore
            (some-edge-satisfying? (edges-after e)
                                   #'(lambda(ee)
                                       (member (cat-name (edge-form ee))
                                               '(verb+ing verb+ed)))))
       nil)
      
      ((plural-noun-and-present-verb? e)
       (and
        (or (some-edge-satisfying? (edges-before e) #'singular-det)
            (not (preceding-det-prep-poss-or-adj e edges-before)))
        (or (not (plural-noun-not-present-verb? e))
            (some-edge-satisfying? (edges-after e) #'clear-np-start?)
            (not (ng-compatible? e nil))
            (not (ng-head? e)))))
      
      ((singular-noun-and-present-verb? e)
       (or (aux-before-np? :in-vg? t)
           (preceding-pronoun-or-which? e edges-before)
           (preceding-plural-deictic? e)
           (preceding-plural-noun? e)
           (and (not (and (preceding-det-prep-poss-or-adj e edges-before)
                          ;; allow for "to form GDP"
                          (not
                           (loop for ee in edges-before
                                 thereis (eq (edge-cat-name ee) 'to)))))
                (not (followed-by-verb e)))))
      ((or (itypep (edge-referent e) 'most)
           (itypep (edge-referent e) 'least))
       t)

      (t (and (not (member (form-cat-name e)
                           '(quantifier)))
               ;; don;t allow "some ..." as start of a VG
              (compatible-with-vg? e))))))

;;--- VG compatibility

(defmethod compatible-with-vg? ((e edge))
  (declare (special category::not category::apostrophe-t
                    category::subordinate-conjunction category::then category::time)
           (optimize (debug 3)(speed 1)))
  ;;(lsp-break "compatible with vg? e = ~a" e)
  (or (vg-compatible? (edge-form e))
      (eq category::not (edge-category e))
      (eq category::apostrophe-t (edge-category e))
      (verb-premod-sequence? e)
      (and (eq category::time (edge-category e))
           (not (loop for ee in (all-edges-at e)
                   thereis (eq category::subordinate-conjunction (edge-form ee)))))))


(defun verb-premod? (n v)
  (and (not (is-basic-collection? n))
       (not (pronominal-or-deictic? n))
       (not (itypep n 'number))
       (find-subcat-var n :verb-premod v)))

(defun verb-premod-sequence? (e)
  "special case for a noun preceding the verb where the noun is a verb-premod
   e.g. '... tyrosine phosphorylated'"
  (declare (special category::that word::comma))
  (when (edge-p e)
    (let ((right (edge-just-to-right-of e))
          (left (edge-just-to-left-of e)))
      (and (edge-p right)
           ;; only do this for participles
           (member (edge-cat-name right) '(verb+ing verb+ed))
           (ng-head? e)
           (not (preposition-edge? left))
           (vg-head? right)
           (verb-premod? (edge-referent e) (edge-referent right))
           (or (not (edge-p left))
               (and (not (eq (edge-category left) word::comma))
                    (not (member (edge-cat-name left) '(be do)))
                    (or (ng-head? left)
                        (member (edge-cat-name left)
                                '(be have not)))
                    (not (pronominal-or-deictic? left))
                    (not (eq (edge-form left) category::det))))))))

(defun gross-infinitive-chunker-test (chunk)
  "Called from delimit-next-chunk when the chunk is finished.
   If this is a verb group chunk preceded by 'to' we move
   the start of the chunk ahead of 'to'.
   Probably lots of edge cases to be sorted out."
  (when (memq 'vg (chunk-forms chunk))
    (let* ((ev (first (chunk-ev-list chunk))) ;; should be the head
           (representative-edge (ev-top-node ev))
           (edges-before (when (edge-p representative-edge)
                           ;; vs. :multiple-initial-edges
                           (edges-before representative-edge))))
      (declare (special ev representative-edge))
      (when (and edges-before
                 (if (edge-p representative-edge) ;;/// analytically redundant
                     (eq (form-cat-name representative-edge) 'verb)
                     (loop for e in (ev-edges ev)
                           thereis
                             (eq (form-cat-name e) 'verb))))
        (when (loop for ee in edges-before
                 thereis (eq (edge-cat-name ee) 'to))
          (let* ((current-start (chunk-start-pos chunk))
                 (new-start (chart-position-before current-start)))
            #+ignore
            (format t "~&Resetting start of ~a to ~a~%"
                    chunk new-start)
            (setf (chunk-start-pos chunk) new-start)))))))
#| This is a mixed bag of results, mostly because there's competition 
between the verb wanting the 'to' to be bare (exposed as a treetop)
to mark an infinitive complement, the infinitive per-se. E.g. overnight #3,
as well as marking purpose clauses (overnight 11).
  The motivating example was ERK #7, where the stored 'best' parse
grossly miss-analyzed "shown consistently to be deficient", so the
question might be how can we mark a tocomp from an infinitive rather
than a bare "to".  |#



;;;--------------------
;;; Noun group methods
;;;--------------------

;;--- ng-start?

(defparameter *ng-start-tests-in-progress* nil
  "to prevent looping?")

;; words that can mistakenly occur inside of NGs
(defparameter *ng-blocked-list* nil)
(defun ng-blocked-list ()
  (or *ng-blocked-list*
      (setq *ng-blocked-list*
            (list (resolve "does")))))

(defmethod ng-start? ((e edge))
  ;; Methods over words and categories are in category-predicates.lisp
  (declare (special category::modifier category::adjective
                    category::comparative-adjective category::superlative-adjective
                    category::adverb
                    category::be category::parentheses
                    category::that category::verb+ed category::verb+ing
                    category::also category::and
                    category::vp+ed category::subordinate-conjunction
		    category::to))
  (if (or (member e *ng-start-tests-in-progress*)
          (member (pos-terminal (pos-edge-starts-at e))
                (ng-blocked-list)))
      nil
      (let ((*ng-start-tests-in-progress* (cons e *ng-start-tests-in-progress*))
            (ecn (edge-cat-name e)))
        (declare (special *ng-start-tests-in-progress*))
        (cond
          ((and *chunks*
                (eq (chunk-end-pos (car *chunks*))
                    (start-pos e))
                (member 'ng (chunk-forms (car *chunks*)))
                (eq (edge-cat-name e) 'that))
           ;; it is more likely that a "that" following an NG chunk is a
           ;;  relative as in "the cells that STAT3 is ..."
           nil)
          ((and
            (loop for ee in (all-edges-at e)
                 thereis (eq (edge-form-name ee) 'verb+ed))
            (loop for ee in (all-edges-at e)
                 thereis (eq (edge-form-name ee) 'verb)))
           ;; for "put" which is a verb+ed and verb, and is
           ;;  used as an imperative
           nil)
          ((or
            (and (sentence-initial? e)
                 (eq (form-cat-name e) 'wh-pronoun)
                 (member (edge-cat-name e)
                         '(what whichever whose which)))
            (and (preceding-preposition e)
                 ;; "... in what tissue"
                 (eq (form-cat-name e) 'wh-pronoun)
                 (member (edge-cat-name e) '(what whichever))))
           ;; not which or whose, because of relative clause starts
           t)
          ((and (eq ecn 'that)
                (edge-p (edge-just-to-left-of e))
                (takes-thatcomp?
                 (edge-referent (edge-just-to-left-of e))))
           nil)
          ((verb-premod-sequence? (edge-just-to-right-of e))
           nil)
          ((eq ecn 'not)
           nil)
          ((plural-noun-and-present-verb? e)
           (plural-noun-not-present-verb? e))
          ((singular-noun-and-present-verb? e)
           (cond ((or (and (sentence-initial? e)
                           (not (followed-by-of e)))
                            ;; case of imperative verb like "DECREASE"
                    (preceding-pronoun-or-which? e)
                    (preceding-plural-deictic? e)
                    (preceding-plural-noun? e)
                    (preceding-do? e)
                    (and (edge-just-to-left-of e)
                         (eq (edge-cat-name (edge-just-to-left-of e)) 'to)))
                  ;; this was apparently useful in the past (otherwise why was it put in)
                  ;;   but it causes an error in "...to adhere to vitronectin-coated cell culture wells in the presence of integrin-specific antibodies ..."
                  ;; by removing the N reading of culture when that is the head of the NG
                 ;; (remove-noun-edge e)
                  nil)
                 (t t)))
          ((member ecn '(modal following-adj syntactic-there))
           nil)
          ((member (form-cat-name e) '(vp+ed))
           ;; this should only happen for NS words like GAP–mediate
           (not (preceding-adverb-or-subordinate-conjunction e)))
          ((eq category::verb+ed (edge-form e))
           ;; verb+ed is allowable as the start of an NG if the previous
           ;; (and immediately adjacent) chunk was not an NG -- such an
           ;; adjacent NG happens when the verb+ed is taken to stop the NG
           ;; as in "these drugs blocked ERK activity" where "blocked" is a main verb
           ;; as opposed to "direct binding to activated forms of RAS"
           (and (not (followed-by-comparative e))
                (let ((prev-edge (edge-just-to-left-of e)))
                  (and (not (preceding-adverb e))
                       (not (and (edge-p prev-edge)
                                 (or (eq 'parentheses (edge-cat-name prev-edge))
                                     (eq 'conjunction (form-cat-name prev-edge)))))
                       (not (and (edge-p prev-edge)
                                 ;; proposal-marker is for "Let's", which makes it highly likely
                                 ;; that the next word is a verb, not a part of the NG
                                 ;; (e.g. "Let's put ERK")
                                 (eq 'proposal-marker (edge-cat-name prev-edge))))
                       (not (and
                             (car *chunks*)
                             (member 'ng (chunk-forms (car *chunks*)))
                             (eq (chunk-end-pos (car *chunks*))
                                 (pos-edge-starts-at e))))))))
          
          ((and (eq (form-cat-name e) 'possessive)
                (itypep (edge-referent e) 'time-unit)) ; "week's" in "last weeks's XX"
           nil)

          ((or (eq category::modifier (edge-category e))
               (member (form-cat-name e)
                       '(adjective comparative-adjective superlative-adjective)))
           ;; when the previous chunk was a copula verb (just check for BE at this time)
           ;; and this is an adjective
           (or
            ;; this check is in there for cases like "there is little chance..."
            ;; and "what are common downstream regulators..."
            (and (edge-just-to-right-of e)
                 (member (form-cat-name (edge-just-to-right-of e))
                         '(common-noun common-noun/plural noun proper-noun adjective)))
            (not (and (car *chunks*)
                      (member 'vg (chunk-forms (car *chunks*)))
                      (loop for edge in (ev-top-edges (car (chunk-ev-list (car *chunks*))))
                         thereis (copula-verb? (edge-category edge)))))))
          
          ((and (eq 'that ecn)
                (not (sentence-initial? e))) ;; don't treat as relative clause marker when sentence initial
           ;; it is almost never the case that THAT is a determiner, 
           ;; it is usually a relative clause marker or a thatcomp marker
           (and ;;(not *big-mechanism*)
                (not (and (car *chunks*)
                          (member 'vg (chunk-forms (car *chunks*)))
                          (thatcomp-verb (car (chunk-edge-list (car *chunks*))))))
                (not (and (car *chunks*)
                          (member 'ng (chunk-forms (car *chunks*)))
                          (thatcomp-noun (car (chunk-edge-list (car *chunks*))))))))
          
          ((eq (edge-form e) category::adverb)
           (not (eq (edge-category e) category::also)))
          
          ((and (edge-form e)
                (eq (form-cat-name e) 'wh-pronoun)
                (not (member (edge-cat-name e)
                             '(whether when where)))
                (or (not (preceding-preposition e))
                    (member (edge-cat-name e)
                            '(what whom whichever))))
           t)
          
          ((eq category::verb+ing (edge-form e))
           ;; verb+ing is most likely as the start of an NG if the previous
           ;; (and immediately adjacent) chunk was not a preposition,
           ;; this blocks the prenominal reading of "turn on RAS by activating
           ;; guanine nucleiotide exchange factors"
           (unless (could-be-the-start-of-a-sentence (pos-edge-starts-at e))
             (let ((prev-edge (edge-just-to-left-of e)))
               (not (and (edge-p prev-edge)
                         (or
                          (eq category::parentheses (edge-category prev-edge))
                          (eq word::comma (edge-category prev-edge))
                          (eq category::and (edge-category prev-edge))
                          (preposition-edge? prev-edge)
                          (eq category::subordinate-conjunction (edge-form prev-edge))
                          (ng-head? prev-edge)))))))
          
          ((ng-start? (edge-form e))
           t)))))


;;--- ng-head?

(defun chunk-has-plural-det? ()
  (declare (special *chunk*)) 
  (let* ((det-ev? (when (boundp '*chunk*)
                    (car (last (chunk-ev-list *chunk*)))))
         (det (when (and (eq (type-of det-ev?) 'edge-vector)
                         (member
                           (form-cat-name
                            (car (ev-edges det-ev?)))
                          '(det demonstrative)))
                (car (ev-edges det-ev?)))))
    (member (edge-cat-name det)
            '(these those))))

(defun chunk-has-det? ()
  (declare (special *chunk*))
  (loop for ev in (chunk-ev-list *chunk*)
        thereis
          (loop for ee in (ev-top-edges ev)
        thereis (and (edge-form ee)
                     (member (edge-form-name ee)
                             '(determiner det))))))



(defmethod ng-head? ((e edge) &optional end)
  ;; methods over words and categories in category-predicates.lisp
  (declare (special e end *chunk* word::comma category::demonstrative)) 
  (let ((edges-before (edges-before e))
        (e-form-name  (form-cat-name e))
        (plural-det? (chunk-has-plural-det?)))
    (declare (special edges-before e-form-name plural-det?))
    (and
     ;;code to split "the genes STAT3 regulates"
     ;;  into "the genes" "STAT3" "regulates"
     (not (and (boundp '*chunk*)
               (proper-noun-reduced-relative? e *chunk*)))
     (not (and (eq (edge-cat-name e) 'that)
               (or (null (edge-p (edge-just-to-left-of e)))
                   (not
                    (member (edge-form-name (edge-just-to-left-of e))
                            '(preposition subordinate-conjunction quantifier))))))
          
     (not (and (boundp '*chunk*)
               (or (proper-noun-plural-modifier? e *chunk*)
                   (proper-noun-unlikely-verb-premodifier? e *chunk*))))
     (not (and (boundp '*chunk*)
               (member (edge-cat-name e)
                       '(upstream-segment downstream-segment))
               (not (eq (form-cat-name e) 'common-noun/plural))
               (not (and (edge-p (edge-just-to-left-of e))
                         (eq (form-cat-name (edge-just-to-left-of e))
                             'det)))))
     #+ignore ;; this rule is not quite right
     ;; since we can get "cancer" and "phosphorylation"
     (not (and (boundp '*chunk*)
               (singular-common-noun-no-determiner? e *chunk*)))
     
     (not (and (member (edge-cat-name e) '(measurement #|n-fold|#))
               (boundp '*chunk*)
               (chunk-final-edge? e *chunk*)
               ;(lsp-break "pre number check")
               (loop for ee in (ev-edges (cadr (chunk-ev-list *chunk*)))
                     never (member (form-cat-name ee) '(number)))))

     (not (eq (form-cat-name e) 'np))
     
     (not (and plural-det?
               (member (form-cat-name e) '(common-noun proper-noun))))
               
     (or
      (and (eq e-form-name 'number)
           (or (null edges-before)
               (loop for ee in edges-before
                     thereis
                       (or (eq (edge-category ee) word::comma)
                           (member (form-cat-name ee)
                                   '(quantifier det demonstrative
                                     ;; changed to allow "a parameter of 2.3"
                                     preposition
                                     adverb punctuation))))))
        
      (unless (or (preceding-adverb e edges-before)
                  (some-edge-satisfying? (all-edges-at e) #'preposition-edge?)
                  (eq e-form-name 'verb+ed))
        (cond
          ((and (singular-noun-and-present-verb? e)
                (loop for c in *chunks*
                      thereis 
                        (and (car (chunk-edge-list c))
                             (eq (edge-cat-name (car (chunk-edge-list c)))
                                 'do))))
           ;; e.g. "What proteins does vemurafenib target?"
           ;; where the "does" makes the verb reading more likely
           nil)
          
          ((eq e-form-name 'quantifier)
           (and (not (itypep (edge-referent e) 'not))
                (or (loop for ee in edges-before
                          thereis (eq (form-cat-name ee) 'det))
                    (not (boundp '*chunk*)) ;; happens in looking at np-head? of first chunk
                    (not (chunk-ev-list *chunk*)))))
          
          ((plural-noun-and-present-verb? e)
           ;; fix logic error -- if we have a noun-verb ambiguity,
           ;; then we must check the following --
           ;; the only time we treat the word as a noun is if it
           ;; immediately follows a det or prep
           ;; cf. "RAS results in" vs "the results..."
           ;; or if it is followed by "of" e.g., "the activation states of ERK"
           ;;(break "e = ~a" e)
           (and (or (preceding-det-prep-poss-or-adj e edges-before)
                    ;;(preceding-det-prep-poss-or-adj e (edges-before-chunk))
                    (preceding-verb (edges-before-chunk))
                    (between-wh-and-modal e edges-before)
                    (followed-by-verb e)
                    (followed-by-of e)
                    (followed-by-modal-or-be e)
                    (followed-by-punctuation e)
                    (followed-by-conjunction e)
                    (and end (eq (pos-edge-ends-at e) end)))
                (ng-head? (edge-form e))))
          
          ((singular-noun-and-present-verb? e)
           (and (not (preceding-pronoun-or-which? e edges-before))
                (not (preceding-plural-noun? e))
                #+ignore ;; what are the examples??
                (or (not (followed-by-modal-or-be e))
                    (preceding-det? e))
                (ng-head? (edge-form e))
                ))
          
          ((eq e-form-name 'VERB+ING)
           (let ((end-pos (pos-edge-ends-at e))
                 (prev-edge (left-treetop-at/edge (pos-edge-starts-at e))))
             (declare (special end-pos prev-edge)) 
             (not (or
                   (itypep (edge-category e) 'state) ;; block resulting
                   (and (edge-p prev-edge) (eq (form-cat-name prev-edge) 'adverb))
                   (let ((next-edge (right-treetop-at/edge end-pos)))
                     (and (edge-p next-edge) (eq (form-cat-name next-edge) 'det)))
                   (memq 
                    (word-symbol (pos-terminal (pos-edge-ends-at e)))
                    '(word::|that| word::|which| word::|whose|))))))
          ((eq (edge-form-name e) 'wh-pronoun) t)
          ((ng-head? (edge-form e)) t)
          
          ((and
            (eq category::demonstrative (edge-form e))
            (member (edge-cat-name e) '(that this these those))))))))))



;;--- ng-compatible?
(defun multiple-named-items (e eform)
  ;; test intended to capture "proper-noun" (named items)
  ;;  with multiple items explicitly mentioned
  ;;  intended to allow for "the kinases MEK and ERK"
  ;;   and the "the proteins MEK/ERK"

  ;; Rusty, David and Laurel should look at this
  (member eform '(proper-noun)))
  

(defmethod ng-compatible? ((e edge) evlist)
  "Is this edge a compatible part of a noun group?
   Return nil if this edge is not compatible.
   'evlist' is the list of edge-vectors on the ongoing chunk."
  ;; n.b. all the companion methods are in syntax/category-predicates.lisp
  (declare (special e evlist
                    category::adverb category::also category::be category::have
                    category::modal
                    category::common-noun category::det category::ordinal
                    category::parentheses category::pronoun
                    category::syntactic-there category::verb+ing
                    category::what category::which
                    category::quantifier
                    category::verb+ed
                    word::comma
                    *chunk*))
  (when (member (pos-terminal (pos-edge-starts-at e))
                (ng-blocked-list))
    (return-from ng-compatible? nil))
  
  (let ((edges (ev-top-edges (car evlist)))
        (eform (when (edge-p e) (form-cat-name e)))
        (ecat (when (edge-p e) (edge-cat-name e)))
        (before (when (edge-p e) (edges-before e)))
        preceding-noun-refs)
    (declare (special edges eform ecat before preceding-noun-refs))
    #+ignore
    (when (eq (form-cat-name e) 'adjective)
      (break))
 
    (cond
       ;; why was this added by RJB on 8/23???
      #+ignore
      ((and (eq eform 'preposition)
            (eq ecat 'of))
       t)
      ((and (eq eform 'preposition)
            (eq ecat 'of)
            (loop for ee in before
                  thereis
                    (or (member (edge-cat-name ee)
                                '(which ))
                        (member (form-cat-name ee)
                                '(quantifier)))))
       t)
      ((and (loop for ev in evlist
                  thereis
                    (loop for ee in (ev-edges ev)
                          thereis (eq (edge-form-name ee) 'common-noun/plural)))
            (not (multiple-named-items e eform)))
       ;; plural nouns 'cannot' occur inside an NG -- only as the head
       nil)
      ((and (eq eform 'verb+ed)
            (loop for ee in before
                  thereis (eq (edge-form-name ee) 'proper-noun))
            (or
             (loop for ee in before
                   thereis
                     (loop for eee in (edges-before ee)
                           thereis (and (edge-p eee)
                                        (eq (edge-cat-name eee) 'that))))
             (loop for ee in (edges-before-chunk)
                   thereis
                     (or (eq (edge-cat-name ee) 'of)
                         ;;(eq (edge-form-name ee) 'subordinate-conjunction)
                         (eq (edge-cat-name ee) 'since)))
             ;; not a preceding verb+ed,
             ;;  e.g. "the concept that activated Src phosphorylated Y247"
             (chunk-contains-other? 'verb+ed e)
             ))
       ;; heuristic reject verb_ed 'directed' in
       ;; "The NH 2 terminus of AHNAK directed exclusively cytoplasmic localization..."
       ;; and 'activated' in
       ;; "Since HIPK2 activated p53-mediated transcription..."
       nil)                        
      ((loop for ee in before
          ;; when you have a simple conjunction following a "between" as in
          ;;  "any possible interaction between LRP and APOE revealed little evidence"
          ;;  don't extend the NG beyond the conjunction
          thereis
            (and (member (form-cat-name ee) '(proper-noun np ng))
                 (is-basic-collection? (edge-referent ee))
                 (loop for b-edge in (edges-before ee)
                    thereis
                      (eq (edge-cat-name b-edge) 'between))))
       nil)

      ((and (= 2 (length before))
            (let ((forms (loop for ee in before
                            collect (form-cat-name ee))))
              (and (memq 'verb+ed forms)
                   (memq 'verb forms))))
       ;; We started this NG chunk because of the verb+ed. But that past-tense
       ;; form was the same as the base (infinitive) form of that verb ("put"),
       ;; so we can't let the chunk continue, but have to restart and let the
       ;; verb be in its own chunk
       nil)
      
      ((or (member ecat '(modal syntactic-there))
           (some-edge-satisfying?
            edges #'(lambda(e) (eq (edge-cat-name e) 'syntactic-there))))
       nil)

      ((eq ecat 'ordinal) t) 
     
      ((or (some-edge-satisfying? edges #'pronoun?)
           ;; Block ng continuation after WH and pronouns
           ;; this makes sense when we have very few questioned NPs like "which mutated proteins"
           (and (some-edge-satisfying? (all-edges-at e) #'preposition-edge?) 
                (not (preceding-determiner? e))))
       nil)
      
      ((plural-noun-and-present-verb? e)
       (plural-noun-not-present-verb? e))

      ((singular-noun-and-present-verb? e)
       (and (not (preceding-pronoun-or-which? e))
            (not (preceding-plural-deictic? e))
            (not (and (not (preceding-determiner? e))
                      (aux-before-np?)))
            (not (and
                  (car *chunks*) ;; there is a preceding chunk
                  (edge-p (car (chunk-edge-list (car *chunks*))))
                  (eq (edge-cat-name (car (chunk-edge-list (car *chunks*))))
                      'do)))
            (not (preceding-plural-noun? e))
            ;; (not (preceding-do? e)) catches the "do" in
            ;; "Although current methods do not allow for detection of nucleotide-free 
            ;;  GTPases in vivo, our BiFC results provide additional support for our model. "
            (not (sentence-initial? e)))) ;; this is a case of an imperative
      
      ((comma? e)
       ;;comma can come in the middle of an NP chunk
       ;; as in "active, GTP-bound Ras"
       ;; BUT THIS IS NOT AS COMMON AS OTHER USES OF COMMA -- DROP IT FOR NOW
       nil)
      
      ((member ecat '(have be)) nil)
      
      ((and (member eform '(verb+ing verb+ed))
            ;; no participles after a paren
            ;; don't allow a verb form after a parenthetical -- most likely a relative clause or a main clause
            (loop for edge in edges thereis (is-parenthesis? edge)))
       nil)
      
      (t
       (case eform
         (demonstrative
          (let ((before (edges-before e)))
            (loop for ee in before
                  never
                    (member (form-cat-name ee)
                            '(proper-noun common-noun common-noun/plural
                              np ng verb+ed adjective)))))
         (following-adj ;; FOLLOWING is treated as an adj
          (prev-noun-or-adj e))
         (adverb
          (not (eq ecat 'also)))
         (proper-noun ;; don't incorporate days of the week, names of months
          (cond ((itypep (edge-referent e) 'time)
                 evlist) ;; unless they're being modified: "last Tuesday"
                ((proper-noun-unlikely-verb-premodifier? e *chunk*)
                 nil)
                (t t))) ;; otherwise do incorporate proper names
         (verb+ing
          ;;(lsp-break "check verb+ing in NG")
          (cond ((setq preceding-noun-refs (preceding-noun-refs edges))
                 ;; have a strange case where "Ra" is made into a bio-entity, and "Ras" is its plural
                 ;; check to block splitting up "the p53 binding ability"
                 (loop for ref in preceding-noun-refs
                    ;; tighter check for cases like "Ras expressing cells"
                    thereis (is-object-not-subject? ref e)))
                
                ((loop for edge in edges 
                    thereis (member (form-cat-name edge)
                                    '(det demonstrative
                                      quantifier adjective
                                      comparative-adjective superlative-adjective))))))
         (verb+ed
          ;;"RNA interference (RNAi) blocked MEK/ERK activation."
          ;;(and (not (preceding-adverb-preceded-by-ng edges))
          (pastpart-is-likely-ng-internal? e)
          ;; too tight, but probably OK
          ;; blocks "interaction eventually influencing ecm - driven cell motility"
          )
         (t 
            (if (preceding-adverb-preceded-by-ng edges)
                nil
                (and (not (verb-premod-sequence? (edge-just-to-right-of e)))
                     (ng-compatible? (edge-form e) edges)))))))))



(defun proper-noun-reduced-relative? (e *chunk* &aux (e-form-name (form-cat-name e)))
  (declare (special *noun-categories*))
  (and (member e-form-name '(proper-name proper-noun))
       (boundp '*chunk*)
       (chunk-final-edge? e *chunk*)
       (cdr (chunk-ev-list *chunk*))
       (loop for ee in (ev-top-edges (cadr (chunk-ev-list *chunk*)))
             thereis (and (edge-form ee)
                          (member (cat-symbol (edge-form ee))
                                  *noun-categories*)
                          ;; "influenza A virus NS1 induces"
                          (not (itypep (edge-referent ee) 'organism))
                          ))
       (loop for ee in (edges-after e)
             thereis
               (and (edge-form ee)
                    (member (form-cat-name ee)
                            '(verb verb+present ))
                    ;; a bit less likely when the verb is "BE"
                    ;; as in "Oncogenic mutations in the serine/threonine kinase B-RAF are found..."
                    (not (eq (edge-cat-name ee) 'be))))))

(defparameter *proper-noun-plural-modifiers* nil)

(defun proper-noun-plural-modifier? (e *chunk* &aux (e-form-name (form-cat-name e)))
  (declare (special *noun-categories*))
  (when
      (and (member e-form-name '(proper-name proper-noun))
           (boundp '*chunk*)
           (chunk-final-edge? e *chunk*)
           (cdr (chunk-ev-list *chunk*))
           (not (eq 'conjoin-two-edges (edge-rule e)))
           (loop for ee in (ev-top-edges (cadr (chunk-ev-list *chunk*)))
                 thereis (and (edge-form ee)
                              (member (cat-name (edge-form ee))
                                      '(common-noun/plural)))))
    (push (current-string) *proper-noun-plural-modifiers*)
    t))

(defparameter *proper-noun-unlikely-verb-premodifier* nil)

(defun proper-noun-unlikely-verb-premodifier? (e *chunk* &aux (e-form-name (form-cat-name e)))
  (declare (special *noun-categories*))
  (when
      (and (member e-form-name '(proper-name proper-noun))
           (boundp '*chunk*)
           (chunk-final-edge? e *chunk*)
           (cdr (chunk-ev-list *chunk*))
           (and (member (edge-form-name (edge-just-to-left-of e))
                        '(verb+ed verb+ing))
                (not (and (edge-p (edge-just-to-left-of (edge-just-to-left-of e)))
                          (member
                           (edge-form-name
                            (edge-just-to-left-of (edge-just-to-left-of e)))
                           '(preposed-auxiliary verb+ed verb+ing))))
                
                (loop for e in (edges-before-chunk)
                      thereis (member (edge-form-name e)
                                      '(proper-noun proper-name np conjunction))))
           (not (chunk-has-det?)))
    (push (current-string) *proper-noun-unlikely-verb-premodifier*)))


(defparameter *singular-common-noun-no-determiners* nil)

(defun singular-common-noun-no-determiner? (e *chunk* &aux (e-form-name (form-cat-name e)))
  (declare (special *noun-categories*))
  (when
      (and (boundp '*chunk*)
           (chunk-final-edge? e *chunk*)
           (member e-form-name '(common-noun))
           (cdr (chunk-ev-list *chunk*))
           (not
            (some-edge-satisfying?
             (loop for ev in (cdr (chunk-ev-list *chunk*))
                   append (ev-top-edges ev))
             #'singular-det)))
    (push (sentence-string (current-sentence))
          *singular-common-noun-no-determiners*)))


;;;---------------------
;;; auxiliary functions
;;;---------------------

(defun some-edge-satisfying? (edge-list predicate)
  "Used for tailored tests. See, e.g. plural-noun-not-present-verb?"
  (loop for edge in edge-list thereis (funcall predicate edge)))

(defun edges-after (e)(ev-top-edges (pos-starts-here (pos-edge-ends-at e)) ))
(defun edges-before (e)(ev-top-edges (pos-ends-here (pos-edge-starts-at e)) ))
(defun all-edges-at (e)(ev-top-edges (pos-starts-here (pos-edge-starts-at e)) ))

(defvar *chunk*)
(defun edges-before-chunk (&optional (chunk (and (boundp '*chunk*) *chunk*)))
  (and chunk
       (edge-vector-p (car (chunk-ev-list chunk)))
       (ev-top-edges (pos-ends-here (chunk-start-pos chunk)))))


(defun ev-edges (ev)
  "Return a list of all the edges on this edge vector.
   Filter out any literals (edges whose category is a word)."
  (when ev ;; can be called with nil, when there is no previous ev in a chunk
    (let ((edges (all-edges-on ev)))
      (loop for edge in edges
         unless (literal-edge? edge)
            collect edge))))

(defun ev-top-edges (ev &optional (no-literals nil))
  "all the edges on an edge-vector which are as long as the top edge, 
   possibly dropping literal edges"
  (when ev
    (let ((top-edge (top-edge-on-ev ev)))
      ;; MAJOR CHANGE HERE -- if there is a "chosen" top edge (in ev-top-node) then
      ;;  don't create a list with other edges of the same length
      ;; To make use of code in WH question routines that chooses an
      ;;  edge from a group of ambiguous edges
      (when (edge-p top-edge)
        (if (eq top-edge (ev-top-node ev))
            (list top-edge)
            (loop for edge in (all-edges-on ev)
               ;; Shouldn't loop over these (ev-edges ev) because we want
               ;; the option of including literal edges.
               when (and
                     ;; is this edge as long as the top edge?
                     (eq (pos-edge-ends-at edge) (pos-edge-ends-at top-edge))

                     ;; It's still an independent edge. 
                     (null (edge-used-in edge))

                     ;; Either the edge isn't a literal or
                     ;; no-literals flag wasn't raised
                     (or (not (literal-edge? edge))
                         (not no-literals)))

                  collect edge))))))

#| Previous version. Its preference for top-node doesn't appreciate
 that some of these are created by an early-acting fsa (e.g. number)
 but that those edges shouldn't rule out consideration of the other
 edges on this word. 
    (let ((top (ev-top-node ev))
          edge)
      (if (eq top :multiple-initial-edges)
        (loop for i from 0 to (- (ev-number-of-edges ev) 1)
          unless (literal-edge? (setq edge (aref (ev-edge-vector ev) i)))
          collect edge)
        (when top ;; managed to get an ev with NIL top node
          (list top))))  |#


(defun pos-ev-ends-at (ev forms) ;; called just by delimit-next-chunk
  (declare (ignore forms))
  (pos-edge-ends-at (car (ev-top-edges ev))))


(defun chunk-final-edge? (e chunk)
  "is this edge the last one in the chunk"
  (eq (pos-edge-starts-at e)
      (ev-position (car (chunk-ev-list chunk)))))



(defparameter *warn-on-multiple-heads* nil)

(defun find-consistent-edges (chunk &optional end)
  "Called as the finally clause in the delimit-next-chunk loop. Assuming there
   are forms associated with this chunk then we have
   determined the type of the chunk and collected the starting-edge vectors
   of all of the position in the span of the chunk (in reverse order from
   rightmost to leftmost). Extract compatible edges from those vectors
   for the chunk's edge list."
  (let ((forms (chunk-forms chunk))
        (ev-list (return-possibly-fixed-chunk-ev-list chunk)))
    (when forms ;; otherwise the chunk region wasn't consistent with anything
      (when (cdr forms) ;; consistent with more than one
        (lsp-break "More than one form on chunk"))
      (let* ((head-ev (car ev-list))
             (head-edges (compatible-head-edges? forms head-ev end))
             (head-edge (when (null (cdr head-edges)) (car head-edges)))
             (other-edges
              (loop for ev in (cdr ev-list)
                 collect (compatible-edge?
                          ev (chunk-forms chunk) (cdr (member ev (chunk-ev-list chunk)))))))
        (cond
          ((null head-edges)
           ;; in "make the steps green" the "green" is included in the chunk,
           ;; even though it's not a valid np head.
           (break "~%in find-consistent-edges bad set of edge vectors -- ~
                   last one isn't valid head in ~s within: ~%~s~%"
                  (string-of-words-between
                   (chunk-start-pos *chunk*)
                   (chunk-end-pos *chunk*))
                  (current-string)))
          ((and head-edges (null head-edge))
           (when *warn-on-multiple-heads*
             (warn "multiple head edges on ~a: ~a" chunk head-edges))
           (cond
             ((edge-p (ev-top-node head-ev))
              (setq head-edge (ev-top-node head-ev)))
             ((setq head-edge (car head-edges))
              (when *warn-on-multiple-heads*
                (warn "taking arbitrary head from among ~s in ~s~%"
                      head-edges (current-string)))
              head-edge)
             (t (lsp-break "Need another multiple head edge recovery option")))))
        
        (suppress-extra-head-edges-if-necessary chunk head-edge end)
        (setf (chunk-edge-list chunk) (cons head-edge other-edges))))
    chunk))

(defun return-possibly-fixed-chunk-ev-list (chunk)
  "We're calling find-consistent-edges because the delimit loop has tied off
   the chunk. And in so doing it set the end-pos to the pos of the best of
   the possible heads it identified. Given where it is in that loop that we presently push 
   on successive edge vectors we could well have pushed on one (or more) too many.
   Compare the end position of the edge vectors to that of the chunk. Return a
   list of ev that has only ev within the span of the chunk."
  (when (chunk-forms chunk)
    (let* ((end-pos (chunk-end-pos chunk))
           (ev-list (chunk-ev-list chunk))
           (revised-ev-list
            (loop for ev in ev-list
                  as ev-pos = (ev-position ev)
                  when (position/< ev-pos end-pos)
                  collect ev)))
      (when (not (eq (car revised-ev-list) (car ev-list))) ;; ev-list was trimmed
        (setf (chunk-ev-list chunk) revised-ev-list))
      (chunk-ev-list chunk))))

(defun suppress-extra-head-edges-if-necessary (chunk head-edge end)
  "If there are multiple edges on this position (or if the wrong one is said
   to be the top edge, then parsing will get the right one only at chance, 
   so suppress the others by making the head-edge the top."
  (let* ((ev (edge-starts-at head-edge))
         (all-edges (ev-top-edges ev)))
    (when (cdr all-edges)
      (disambiguate-head-of-chunk chunk end))))


(defun compatible-edge? (ev forms ev-list)
  "Return the first edge in the edge-vector that has a compatible form.
   The 'ev-list' is the vectors to the left of the one we're working on."
  (loop for e in (ev-top-edges ev)    
     when (loop for form in forms
             always (compatible-edge-form? e form ev-list t))
     do (return e)))

(defun sentential-adverb? (edge)
  (declare (special edge))
  #+ignore  ;; VERY STUPID DEFINITION
  (and (referential-category-p (edge-referent edge))
       (eq (cat-name (edge-referent edge))
	   'only))
  ;; the goal is to be able to block adverbs that shouldn't be inside NGs
  ;;  -- need to figure out which they are and how to find them
  nil)


(defun preceding-do? (e)
  "called by ng-start?"
  (or (loop for c in *chunks*
            thereis
               (and (car (chunk-edge-list c))
                    (eq (edge-cat-name (car (chunk-edge-list c)))
                        'do)))
      (loop for ee in (all-tts)
            thereis
              (and (edge-p ee)
                   (edge-precedes ee e)
                   (eq (edge-cat-name ee) 'do)))))

(defun comma? (e) (eq word::comma (edge-category e)))

(defun is-parenthesis? (edge)
  (declare (special category::parentheses))
  (eq (edge-category edge) category::parentheses))

(defun noun-like-ng-head? (edge)
  (and (ng-head? edge)
       (not (member (form-cat-name edge) '(det quantifier)))))

(defun preceding-noun-refs (edges)
  (loop for edge in edges
        when (noun-like-ng-head? edge) collect (edge-referent edge)))


(defun is-object-not-subject? (mod e) ;; used by ng-compatible?
  (let ((ref (if (edge-p mod) (edge-referent mod) mod))
        (head (if (edge-p e) (edge-referent e) e)))
    (and (not (find-subcat-var ref :subject head))
         (find-subcat-var ref :object head))))

(defun preceding-adverb-preceded-by-ng (edges)
  (and
   (loop for edge in edges thereis
           (eq (form-cat-name edge) 'adverb))
   (loop for edge in edges thereis
           (loop for left in (edges-just-to-left-of edge)
                 thereis
                   (and (edge-p left)
                        (or
                         (and (eq (form-cat-name left)  'adverb)
                              (ng-head? (edge-just-to-left-of left)))
                         (and (not (eq (edge-cat-name left) 'superlative))
                              (ng-head? left)
                              (not (eq (edge-cat-name left) 'that)))))))))


(defun pastpart-is-likely-ng-internal? (edge &optional (ev-list (chunk-ev-list *chunk*))
                                        &aux (right (edge-just-to-right-of edge)))
  (declare (special *np-category-names* edge ev-list)
           (optimize (debug 3)))
  (when (and (eq 'adverb (form-cat-name edge))
             (edge-p right)
             (eq 'verb+ed (form-cat-name right)))
    (setq edge right))
  (cond ((and (not (memq (form-cat-name (edge-just-to-left-of edge))
                         '(common-noun/plural)))
              (or (hyphenated-verb+ed? edge) ;;  'COT-mediated' is not a main verb
                  (prev-edge-says-unlikely-clause? edge ev-list)
                  (not
                   ;; new code -- don't accept a past participle immediately following a noun 
                   ;; -- most likely to be a main verb or a reduced relative in this case
                   (or
                    (likely-separated-subject? (car ev-list) nil
                                               (edge-referent edge))
                    (and ;; e.g. "EGF strongly activated EGFR"
                     (cadr ev-list)
                     (likely-separated-subject? (cadr ev-list) (car ev-list)
                                                (edge-referent edge)))))))
         (maybe-save-verb+ed-sents edge)
         t)
        (t nil)))

(defun hyphenated-verb+ed? (edge)
  (and (edge-form edge) ;; COMMA has no edge-form
       (not (eq (edge-cat-name edge) 'have))
       (eq (form-cat-name edge) 'verb+ed)
       (and (individual-p (edge-referent edge)) ;; e.g. COT-mediated
            (eq (cat-name (car (indiv-type (edge-referent edge)))) 'hyphenated-pair))))

(defun prev-edge-says-unlikely-clause? (edge ev-list)
  (let* ((ev-edge (car (ev-top-edges (car ev-list))))
         (prev-edge (when ev-edge (edge-just-to-left-of ev-edge)))
         (prev-edges (edges-before-chunk)))
    (declare (special ev-edge prev-edge prev-edges))
    ;;(lsp-break "bah")
    (cond ((null prev-edge) nil)
          ((or (memq (form-cat-name prev-edge) '(verb verb+ed))
               (loop for pe in prev-edges
                     thereis (preposition-edge? pe)))
           (maybe-save-suppressed-verb+ed prev-edge
                                          ev-edge (edge-form edge)
                                          (edge-referent edge))
           t)
          (t nil))))

(defun likely-separated-subject? (ev intervening-ev v)
  (declare (special *np-category-names*))
  (and
   (or (null intervening-ev) ;; no intervening edge
       (loop for e in (ev-top-edges intervening-ev) ;; intervening adverb
             thereis (eq (form-cat-name e) 'adverb)))
   ;;then test for a valid subject
   (loop for e in (ev-top-edges ev)
         thereis
           (and (memq (form-cat-name e) *np-category-names*)
                (or (is-basic-collection? (edge-referent e))
                    (and (not (verb-premod? (edge-referent e) v))
                         (find-subcat-var (edge-referent e) :subject v)))))))


(defun maybe-save-suppressed-verb+ed (prev-edge ev-edge e-form e-ref)
  (declare (special *suppressed-verb+ed*))
  (when *suppressed-verb+ed*
    (push `((,(when prev-edge (edge-form prev-edge))
              ,(when prev-edge (edge-referent prev-edge)))
            (,(edge-form ev-edge) ,(edge-referent ev-edge))
            (,e-form ,e-ref)
            ,(current-string))
          *suppressed-verb+ed*)))

(defun maybe-save-verb+ed-sents (edge)
  (declare (special *verb+ed-sents* *chunk*))
  (when (and *verb+ed-sents*
             (not
              (loop for e in (ev-top-edges (pos-starts-here (pos-edge-ends-at edge)))
                    thereis (preposition-edge? e))))
    (push `(,(string-of-words-between (chunk-start-pos *chunk*) (pos-edge-ends-at edge))
             ,(current-string))
          *verb+ed-sents*)))

(defun between-wh-and-modal (e edges-before)
  "Used in disambiguating plural noun readings from the homonymous present tense
   verbs. Called in plural-noun-not-present-verb? and returns non-nil if this
   particular pattern obtains." ;; target case: 'questions' in
  ;; "What questions can you answer about microRNAs?"
  (when (some-edge-satisfying? edges-before #'wh-determiner?)
    ;; WH pronoun to immediate left. Is there an aux to the right as there
    ;; would be in a question
    (some-edge-satisfying? (edges-after e) #'edge-over-aux?)))


#+ignore
(defun constrain-following (e)
  (and (category-p (edge-category e))
       (eq (edge-cat-name e) 'following-adj)
       (prev-noun-or-adj e)))

(defun clear-np-start? (e)
  (or
   (member (edge-cat-name e) '(which what))
   (member (form-cat-name e) '(pronoun det))))


(defun prev-noun-or-adj (e &optional (edges-before (edges-before e)))
  (loop for ee in edges-before
        thereis
          (and
           (category-p (edge-form ee))
           (member (form-cat-name ee)
                   '(adjective comparative-adjective superlative-adjective
                     common-noun proper-noun)))))



;;;--------------------------------------------------------------------------
;;; code used for chunking, moved in from categories.lisp
;;; methods for testing whether a form category is one of a particular group
;;;--------------------------------------------------------------------------

(defun pronoun-or-wh-pronoun (edge)
  (or (eq (form-cat-name edge) 'pronoun )
      (member (cat-name (edge-category edge)) '(which what))))

(defun pronoun? (edge)
  (eq (form-cat-name edge) 'pronoun ))

(defun preposition-edge? (edge)
  (when (edge-p edge)
    (prep? (form-cat-name edge))))

(defun pp? (edge)
  (eq (form-cat-name edge) 'pp))

(defun thatcomp-verb (edge)
  (when edge
    ;; in ng-start?, in the "that" clause, (car (chunk-edge-list (car *chunks*)))
    ;; can return nil
    (loop for pat in (subcat-patterns (edge-category edge))
       thereis (eq :thatcomp (subcat-label pat)))))

(defun thatcomp-noun (edge)
  (when edge
    (loop for pat in (subcat-patterns (edge-category edge))
       thereis (eq :thatcomp (subcat-label pat)))))

(defun preceding-det-prep-poss-or-adj (e &optional (edges (edges-before e)))
  ;; called by vg-start? and np-head?
  (loop for ee in edges
        thereis (det-prep-poss-or-adj? ee)))

(defun preceding-verb (edges)
  ;; called by vg-start? and np-head?
  (loop for ee in edges
        thereis (member (edge-form-name ee)
                        '(v-bar
                          verb
                          infinitive
                          verb+present
                          verb+past
                          verb+ed
                          verb+ing
                          verb+object
                          verb+s
                          modal
                          vg 
                          vg+ed
                          vg+ing
                          vg+passive))))

(defun det-prep-poss-or-adj? (ee)
  (or (member (form-cat-name ee) '(det demonstrative
                                   possessive adjective
                                   comparative-adjective superlative-adjective
                                   number
                                   verb+ed verb+ing))
      (preposition-edge? ee)))


(defun sentence-initial? (e)
  ;; an attempt at this predicate
  (let* ((start-pos (pos-edge-starts-at e))
         (ending-at (pos-ends-here start-pos)))
    (and
     (edge-vector-p ending-at)
     (= 0 (ev-number-of-edges ending-at)))))

(defun preceding-pronoun-or-which? (e &optional (edges (edges-before e)))
  (loop for ee in edges
     thereis
       (or
        (eq (cat-name (edge-category ee)) 'which)
        (eq (cat-name (edge-category ee)) 'that)
        (eq (form-cat-name ee) 'pronoun))))

(defun preceding-plural-noun? (e &optional (edges (edges-before e)))
  (loop for ee in edges
        thereis
          (and (edge-p (noun-edge? ee))
               (eq (cat-name (edge-form (noun-edge? ee))) 'common-noun/plural))))

(defun preceding-det? (e &optional (edges (edges-before e)))
  (loop for ee in edges
        thereis
          (member (cat-name (edge-form (noun-edge? ee)))
                  ;; not sure why this had DETERMINER rather than DET
                  '(det determiner demonstrative))))

(defun preceding-plural-deictic? (e &aux (edges (edges-before e)))
  (loop for ee in edges
        thereis
          (member (edge-cat-name ee) '(these those))))


(defun noun-edge? (e)
  (if (eq (cat-name (edge-form e)) 'np)
      (or (car (last (edges-under e)))
          ;; funny issue with "BC" meaning "breast cancer"
          e)          
      e))

(defun preceding-determiner? (e &optional (edges (edges-before e)))
  (loop for ee in edges
     thereis (or (member (form-cat-name ee) '(det demonstrative quantifier))
                 (wh-determiner? ee))))

(defun followed-by-verb (e &optional (edges-after (edges-after e)))
  (loop for ee in edges-after
     thereis
          (member (form-cat-name ee) '(verb verb+ed verb+ing))))

(defun followed-by-comparative (e &optional (edges-after (edges-after e)))
  (loop for ee in edges-after
     thereis
          (member (form-cat-name ee) '(comparative-adjective))))

(defun followed-by-modal-or-be (e &optional (edges-after (edges-after e)))
  (loop for ee in edges-after
     thereis
          (or (member (form-cat-name ee) '(modal))
              (member (edge-cat-name ee) '(be)))))

(defun followed-by-punctuation (e &optional (edges-after (edges-after e)))
    (loop for ee in edges-after
          thereis (member (form-cat-name ee)
                          '(punctuation square-brackets parentheses))))

(defun followed-by-conjunction (e &optional (edges-after (edges-after e)))
    (loop for ee in edges-after
          thereis (member (form-cat-name ee)
                          '(conjunction))))


(defun preceding-adverb (e &optional (edges (edges-before e)))
  (loop for ee in edges
     thereis
          (and (eq (form-cat-name ee) 'adverb)
               ;; first is now optionally an adverb (as in "we first rinsed ...")
               ;;  but in an NP it is an ordinal
               (not (eq (edge-cat-name ee) 'first)))))

(defun preceding-preposition (e &optional (edges (edges-before e)))
  (loop for ee in edges
     thereis
          (member (form-cat-name ee) '(preposition spatial-preposition))))

(defun following-preposition (e &optional (edges (edges-after e)))
  (loop for ee in edges
     thereis
       (member (form-cat-name ee) '(preposition spatial-preposition))))

(defun preceding-adverb-or-subordinate-conjunction (e &optional (edges (edges-before e)) )
  (loop for ee in edges
     thereis
       (member (form-cat-name ee) '(adverb subordinate-conjunction))))


(defun followed-by-of (e &optional (edges-after (edges-after e)))
  (loop for ee in edges-after
     thereis
       (eq (cat-name (edge-category ee)) 'of)))

(defun chunk-contains-other? (form e)
  (loop for ev in (cdr (chunk-ev-list *chunk*))
        thereis (loop for edge in (ev-top-edges ev)
                      thereis
                        (and (not (eq e edge))
                             (eq form (edge-form-name edge))))))

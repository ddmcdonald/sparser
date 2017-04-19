;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "chunker"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  October 2016

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
          (format stream "~s ~s"
                  (chunk-forms chunk)
                  (loop for e in (chunk-edge-list chunk)
                     collect (retrieve-surface-string e))) 
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
         (disambiguate-head-of-chunk *next-chunk*)    
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

(defun disambiguate-head-of-chunk (chunk)
  (let* ((head-ev (car (chunk-ev-list chunk)))
         (top-node (ev-top-node head-ev))
         (multi-edges
          (when (eq :multiple-initial-edges top-node)
            (ev-edges head-ev)))
         (forms (chunk-forms chunk))
         (head-compatible-edges
          (when multi-edges
            (compatible-head-edges? forms head-ev))))
    (declare (special head-ev multi-edges top-node head-compatible-edges))
    (when (and (not (equal forms '(adjg)))
               ;; ADJG has confusions for NEXT and FOLLOWING which are non-chunked items
               multi-edges ;; the head started as ambiguous
               (car head-compatible-edges)
               ;; but is disambiguated by the chunking
               (null (cdr head-compatible-edges)))
      (specify-top-edge (car head-compatible-edges)))))

(defun delimit-next-chunk (ev forms sentence-end)
  (declare (special ev sentence-end))
  ;; know that the edge immediately after start is consistent with some
  ;;  chunk type (maybe more than one)
  ;;  Goal is to create the longest chunk possible from this point
  (let* ((start (ev-position ev))
         (*chunk* (make-instance 'chunk :forms forms
                                 :start start
                                 :end nil
                                 :edge-list nil
                                 :ev-list nil))
         (pos start)
         possible-heads)
    (declare (special *chunk*))
    
    (loop until (or (chunk-end-pos *chunk*)    ; 
                    (eq pos sentence-end))
       do
         (when forms ;; chunk still valid for at least one category
           (setf (chunk-forms *chunk*) forms)
           (push ev (chunk-ev-list *chunk*))
           (setq pos (pos-ev-ends-at ev forms))
           (loop for ch in (compatible-heads forms ev pos) 
              do (push ch possible-heads)))

         (if (or
              ;; indicates syntactic category of edge inconsistent with possible forms for chunk
              (null forms) 
              (eq pos sentence-end)) 
             ;;  chunk must end at or before this pos-before
          
             (let ((head (best-head (chunk-forms *chunk*) possible-heads))) 
               (cond
                 (head
                  ;; the chunk has a head for at least one of the consistent forms
                  ;; complete this chunk -- signaling end of until loop
                  (setf (chunk-end-pos *chunk*) (second head))
                  (setf (chunk-forms *chunk*) (list (first head)))
                  (gross-infinitive-chunker-test *chunk*)
                  ;; as much fall-back as improvement see note w/ fn.
                  (tr :delimited-chunk *chunk*))
                 (t
                  (setf (chunk-end-pos *chunk*) pos)
                  (setf (chunk-forms *chunk*) nil)
                  (tr :delimited-ill-formed-chunk *chunk*))))
             (else     
               (setq ev (pos-starts-here pos))
               (tr :chunk-loop-next-edge ev)
               (setq forms (remaining-forms ev *chunk*))))

       finally
         (return 
           (find-consistent-edges *chunk*)))))





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

(defmethod ng-compatible? ((e edge) evlist)
  (declare (special category::adverb category::also category::be category::have
                    category::modal
                    category::common-noun category::det category::ordinal
                    category::parentheses category::pronoun
                    category::syntactic-there category::verb+ing
                    category::what category::which
                    category::quantifier
                    category::verb+ed
                    word::comma))
  (let ((edges (ev-edges (car evlist)))
        (eform (when (edge-p e) (edge-form e))))
    (cond
      ((plural-noun-and-present-verb? e)
       (plural-noun-not-present-verb e))
      ((singular-noun-and-present-verb? e)
       (and
        (not (preceding-pronoun-or-which? e))
        (not (sentence-initial? e)))) ;; this is a case of an imperative
      ((singular-noun-and-present-verb? e))
      ((constrain-following e) nil)
      ((or
        (some-edge-satisfying? edges #'pronoun-or-wh-pronoun)
        (and
         (some-edge-satisfying? (all-edges-at e) #'preposition?)
         (not (preceding-determiner? e))))
       nil)
      ((eq word::comma (edge-category e))
       ;;comma can come in the middle of an NP chunk
       ;; as in "active, GTP-bound Ras"
       ;; BUT THIS IS NOT AS COMMON AS OTHER USES OF COMMA -- DROP IT FOR NOW
       nil)
      ((eq category::ordinal (edge-category e))
       ;;WORKAROUND -- DAVID
       t)
      ((eq (edge-category e) category::modal) nil)
      ((eq (edge-category e) category::syntactic-there) nil)
      ((eq eform category::adverb )
       (not (eq (edge-category e) category::also)))
      ((eq category::verb+ing eform)
       (cond ((or
               (eq (edge-category e) category::have)
               (eq (edge-category e) category::be)
               (loop for edge in edges thereis (eq (edge-category edge) category::parentheses)))
              nil)
             (#+ignore
              (loop for ee in (all-edges-on (pos-starts-here (pos-edge-ends-at e)))
                 thereis (and (category-p (edge-form ee))
                              (member (cat-symbol (edge-form ee)) *n-bar-categories*)))
              (loop for edge in edges thereis
                   (and (ng-head? edge)
                        (not (eq (edge-form edge) category::det))
                        (not (eq (edge-form edge) category::quantifier))))
              nil)
             ((preceding-adverb-preceded-by-ng edges)
              ;; too tight, but probably OK
              ;; blocks "interaction eventually influencing ecm - driven cell motility"
              nil)
             #+ignore
             ;; check to block splitting up "the p53 binding ability"
             ((loop for edge in edges thereis
                   (and (ng-head? edge)
                        ;; rule out demonstrative pronouns
                        ;; "such co-occurring events"
                        (not (eq (edge-form edge) category::det))
                        (not (eq (edge-form edge) category::quantifier)))))
             (t t)))
      ((and
        (eq eform category::verb+ed)
        ;; don't allow a verb form after a parenthetical -- most likely a relative clause or a main clause
        ;;"RNA interference (RNAi) blocked MEK/ERK activation."
        (or
         (preceding-adverb-preceded-by-ng edges)
         ;; too tight, but probably OK
         ;; blocks "interaction eventually influencing ecm - driven cell motility"
         (eq (edge-category e) category::have)
         (loop for edge in edges thereis (eq (edge-category edge) category::parentheses))))
       nil)
      ((ng-compatible? (edge-form e) edges)))))

(defun preceding-adverb-preceded-by-ng (edges)
  (and
   (loop for edge in edges thereis
           (eq (cat-name (edge-form edge)) 'adverb))
   (loop for edge in edges thereis
           (let ((left (edge-just-to-left-of edge)))
             (and (edge-p left)
                  (or
                   (and (eq (cat-name (edge-form left))  'adverb)
                        (and (edge-p (edge-just-to-left-of left))
                             (ng-head? (edge-just-to-left-of left))))
                   (ng-head? (edge-just-to-left-of edge))))))))
  
(defun some-edge-satisfying? (edge-list predicate)
  (loop for edge in edge-list thereis (funcall predicate edge)))

(defun edges-after (e)(ev-edges (pos-starts-here (pos-edge-ends-at e)) ))
(defun edges-before (e)(ev-edges (pos-ends-here (pos-edge-starts-at e)) ))
(defun all-edges-at (e)(ev-edges (pos-starts-here (pos-edge-starts-at e)) ))

;;; FROM categories.lisp but should be here to maintain compatibility when structure of chunk changes
(defun plural-noun-and-present-verb? (e)
  (declare (special category::common-noun/plural category::verb+present))
  (cond ((eq (edge-form e) category::common-noun/plural)
         (loop for ee in (all-edges-at e)
            thereis (eq (edge-form ee) category::verb+present)))
        ((eq (edge-form e) category::verb+present)
         (loop for ee in (all-edges-at e)
            when (eq (edge-form ee) category::common-noun/plural)
            do (return ee)))))

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


(defun non-det-or-verb-ng-start? (ee)
  (and
   (edge-p ee)
   (ng-start? ee)
   (not (member (cat-name (edge-form ee)) '(det verb+ed verb+ing)))))

(defun np-end-edge (ee)
  (member (cat-name (edge-form ee)) '(proper-noun pronoun)))


(defun singular-det (e)
  (member (cat-name (edge-category e)) '(a that this)))

(defun plural-noun-not-present-verb (e &optional (edges-before (edges-before e)))
  (or
   (null edges-before) ;; sentence initial
   (and
    (not (or
          (some-edge-satisfying? edges-before #'np-end-edge)
          (some-edge-satisfying? edges-before #'singular-det)))
    (or
     (some-edge-satisfying? edges-before #'non-det-or-verb-ng-start?)
     (not
      (some-edge-satisfying? edges-before #'non-det-or-verb-ng-start?))))))
                                   


(defun pronoun-or-wh-pronoun (edge)
  (or
   (eq (cat-name (edge-form edge)) 'pronoun )
   (member (cat-name (edge-category edge)) '(which what))))

(defun preposition? (edge)
  (eq (cat-name (edge-form edge)) 'preposition))

(defun pp? (edge)
   (eq (cat-name (edge-form edge)) 'pp))

(defun constrain-following (e)
  (and (category-p (edge-category e))
       (eq (cat-name (edge-category e)) 'following-adj)
       (prev-noun-or-adj e)))

(defun clear-np-start? (e)
  (or
   (member (cat-name (edge-category e)) '(which what))
   (member (cat-name (edge-form e)) '(pronoun det))))


(defun prev-noun-or-adj (e &optional (edges-before (edges-before e)))
  (declare (special category::adjective category::common-noun
		    category::proper-noun))
  (loop for ee in edges-before
     thereis
       (and
        (category-p (edge-form ee))
        (member (cat-symbol (edge-form ee))
                '(category::adjective category::common-noun category::proper-noun)))))


(defmethod vg-start? ((e edge))
  (declare (special category::to))
  (let ((edges-before (edges-before e)))
    ;;(push-debug `(,e ,edges-before)) (lsp-break "vg-start, e = ~a" e)
    (cond
      ((plural-noun-and-present-verb? e)
       (and
        (or
         (some-edge-satisfying? (edges-before e) #'singular-det)
         (not (preceding-det-prep-poss-or-adj e edges-before)))
        (or
         (not (plural-noun-not-present-verb e))
         (some-edge-satisfying? (edges-after e) #'clear-np-start?)
         (not (ng-compatible? e nil))
         (not (ng-head? e)))))
      ((singular-noun-and-present-verb? e)
       (or
        (preceding-pronoun-or-which? e edges-before)
        (and
         (not (and
               (preceding-det-prep-poss-or-adj e edges-before)
               ;; allow for "to form GDP"
               (not
                (loop for ee in edges-before
                   thereis (eq (cat-name (edge-category ee)) 'to)))))
         (not (followed-by-verb e)))))
      
      (t
       (compatible-with-vg? e)))))

(defmethod compatible-with-vg? ((e edge))
  (declare (special category::not category::apostrophe-t
                    category::subordinate-conjunction category::then category::time))
  ;;(lsp-break "compatible with vg? e = ~a" e)
  (or
   (vg-compatible? (edge-form e))
   (eq category::not (edge-category e))
   (eq category::apostrophe-t (edge-category e))
   (and
    (eq category::time (edge-category e))
    (not
     (loop for ee in (all-edges-at e)
        thereis (eq category::subordinate-conjunction (edge-form ee)))))))

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
                 (if (edge-p representative-edge)
                     (eq (cat-name (edge-form representative-edge)) 'verb)
                     (loop for e in (ev-edge-list ev)
                           thereis
                             (eq (cat-name (edge-form e)) 'verb))))
                             
        (when (loop for ee in edges-before
                 thereis (eq (cat-name (edge-category ee)) 'to))
          (let* ((current-start (chunk-start-pos chunk))
                 (new-start (chart-position-before current-start)))
            #+ignore
            (format t "~&Resetting start of ~a to ~a~%"
                    chunk new-start)
            (setf (chunk-start-pos chunk) new-start)))))))
#| This is a mixed bag of results, mostly because there's competition 
between the verb wanting the 'to' to be bare (exposed as a treetop)
mark an infinitive complement, the infinitive per-se. E.g. overnight #3,
as well as marking purpose clauses (overnight 11).
  The motivating example was ERK #7, where the stored 'best' parse
grossly miss-analyzed "shown consistently to be deficient", so the
question might be how can we mark a tocomp from an infinitive rather
than a bare "to".  |#



(defparameter *ng-start-tests-in-progress* nil
  "to prevent looping?")

(defmethod ng-start? ((e edge))
  (declare (special category::modifier category::adjective category::adverb
                    category::be category::parentheses
                    category::that category::verb+ed category::verb+ing
                    category::preposition category::and category::also
                    category::vp+ed category::subordinate-conjunction
		    category::to))
  (if (member e *ng-start-tests-in-progress*)
      nil
      (let ((*ng-start-tests-in-progress* (cons e *ng-start-tests-in-progress*))
            (ecn (cat-name (edge-category e))))
        (declare (special *ng-start-tests-in-progress*))
        (cond
          ((eq (cat-name (edge-category e)) 'not)
           nil)
          ((plural-noun-and-present-verb? e)
           (plural-noun-not-present-verb e))
          ((singular-noun-and-present-verb? e)
           (not
            (or
             (sentence-initial? e) ;; case of imperative verb like "DECREASE"
             (and (edge-just-to-left-of e)
                  (eq (cat-name (edge-category (edge-just-to-left-of e))) 'to)))))
          ((member ecn '(modal following-adj syntactic-there))
           nil)
          ((member (cat-name (edge-form e)) '(vp+ed))
           ;; this should only happen for NS words like GAP–mediate
           (not (preceding-adverb-or-subordinate-conjunction e)))
          ((eq category::verb+ed (edge-form e))
           ;; verb+ed is allowable as the start of an NG if the previous
           ;; (and immediately adjacent) chunk was not an NG -- such an
           ;; adjacent NG happens when the verb+ed is taken to stop the NG
           ;; as in "these drugs blocked ERK activity" where "blocked" is a main verb
           ;; as opposed to "direct binding to activated forms of RAS"
           (let ((prev-edge (edge-just-to-left-of e)))
             (and (not (preceding-adverb e))
                  (not (and (edge-p prev-edge)
                            (or (eq 'parentheses (cat-name (edge-category prev-edge)))
                                (eq 'conjunction (cat-name (edge-form prev-edge))))))
                  (not (and
                        (car *chunks*)
                        (member 'ng (chunk-forms (car *chunks*)))
                        (eq (chunk-end-pos (car *chunks*))
                            (pos-edge-starts-at e)))))))
          ((or (eq category::modifier (edge-category e))
               (eq category::adjective (edge-form e)))
           ;;when the previous chunk was a copula verb (just check for BE at this time)
           ;; and this is an adjective
           (or
            ;; this check is in there for cases like "there is little chance..."
            (and (edge-just-to-right-of e)
                 (member (cat-name (edge-form (edge-just-to-right-of e)))
                         '(common-noun noun proper-noun)))
            (not (and (car *chunks*)
                      (member 'vg (chunk-forms (car *chunks*)))
                      (loop for edge in (ev-edges (car (chunk-ev-list (car *chunks*))))
                         thereis
                           (eq category::be (edge-category edge)))))))
          ((eq 'that (cat-name (edge-category e)))
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
                (eq (cat-name (edge-form e)) 'wh-pronoun)
                (category-p (edge-referent e))
                (member (cat-symbol (edge-referent e))
                        '(category::which category::whose category::what)))
           t)
          
          ((eq category::verb+ing (edge-form e))
           ;; verb_ing is most likely as the start of an NG if the previous
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
                          (eq category::preposition (edge-form prev-edge))
                          (eq category::subordinate-conjunction (edge-form prev-edge))
                          (ng-head? prev-edge)))))))
          ((ng-start? (edge-form e))
           t)))))


(defmethod ng-head? ((e edge))
  (declare (special *chunk* word::comma))
  (let ((edges-before (edges-before e)))
    (or (and (eq (cat-name (edge-form e)) 'number)
             (or (null edges-before)
                 (loop for ee in edges-before
                    thereis
                      (or
                       (eq (edge-category ee) word::comma)
                       (member (cat-name (edge-form ee))
                               '(quantifier det adverb punctuation))))))
        (when (not (preceding-adverb e edges-before))
          (cond
            ((eq (cat-name (edge-form e)) 'quantifier)
             (and
              (not (itypep (edge-referent e) 'not))
              (or
               (loop for ee in edges-before
                  thereis
                    (eq (cat-name (edge-form ee)) 'det))
               (not (boundp '*chunk*)) ;; happens in looking at np-head? of first chunk

               (not (chunk-ev-list *chunk*)))))
            ((eq (cat-name (edge-form e)) 'verb+ed)
             nil)
            ((some-edge-satisfying? (all-edges-at e) #'preposition?)
             nil)
            ((plural-noun-and-present-verb? e)
             ;; fix logic error -- if we hav a noun-verb ambiduity,
             ;; then we must check the following --
             ;; the only time we treat the word as a noun is if it immediately follows a det or prep
             ;; cf. "RAS results in" vs "the results..."
             (or
              (preceding-det-prep-poss-or-adj e edges-before)
              (followed-by-verb e (edges-after e))))
            ((singular-noun-and-present-verb? e)
             (not (preceding-pronoun-or-which? e edges-before)))
            ((eq (cat-name (edge-form e)) 'VERB+ING) ;
             (let
                 ((end-pos (pos-edge-ends-at e))
                  (prev-edge (left-treetop-at/edge (pos-edge-starts-at e))))
               (declare (special end-pos prev-edge)) 
               (and
                (not (itypep (edge-category e) 'state)) ;; block resulting
                (not (and (edge-p prev-edge)(eq (cat-name (edge-form prev-edge)) 'adverb)))
                (let
                    ((next-edge (right-treetop-at/edge end-pos)))
                  (not (and (edge-p next-edge)(eq (cat-name (edge-form next-edge )) 'det))))
                (not
                 (memq 
                  ;; SBCL caught an error here -- led to simplification to use pos-terminal
                  (word-symbol (pos-terminal (pos-edge-ends-at e)))
                  '(WORD::|that| WORD::|which| WORD::|whose|))))))
            ((ng-head? (edge-form e)) t)
            ((and
              (eq category::det (edge-form e))
              (member (cat-name(edge-category e)) '(that this these those)))))))))
(defun copula-edge? (e)
  )


;;;
;;; auxiliary funtions

(defun pos-ev-ends-at (ev forms)
  (declare (ignore forms))
  (pos-edge-ends-at (car (ev-edges ev))))

(defun find-consistent-edges (chunk)
  (when (chunk-forms chunk)  ;; else inconsistent chunk with no head
    chunk
    (setf (chunk-edge-list chunk)
           (loop for ev in (chunk-ev-list chunk)
            collect
            (compatible-edge? ev (chunk-forms chunk)(cdr (member ev (chunk-ev-list chunk)))))))
  chunk)





(defun compatible-edge? (ev forms ev-list)
  (loop for e in (ev-edges ev)    
     when
       (loop for form in forms
          always (compatible-edge-form? e form ev-list t))
     do
       (return e)))

(defun best-head (forms possible-heads)
	;; now find rightmost head, (don't use some other measure
	;;  including semantic interpretability)
  (let (furthest)
    (loop for p in possible-heads
       when (and
             (member (car p) forms)
             (or (null furthest)
                 (>= (pos-token-index (second p))
                     (pos-token-index (second furthest)))))
       do (setq furthest p))
    furthest)
  )

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
       (vg (vg-head? (edge-form edge)))
       (adjg (adjg-head? edge))))))

(defun compatible-head-edges? (forms ev)
  (loop for edge in (ev-edges ev)
        when
          (and
           (not (literal-edge? edge))
           (loop for form in forms
                 thereis
                   (case form
                     (ng (ng-head? edge))
                     (vg (vg-head? (edge-form edge)))
                     (adjg (adjg-head? edge)))))
        collect edge))

(defun remaining-forms (ev chunk);; &optional (forms *chunk-forms*))
  (loop for form in (chunk-forms chunk)
    when 
    (loop for e in (ev-edges ev)
      thereis 
      (compatible-edge-form? e form (chunk-ev-list chunk) nil))
    collect form))

(defun compatible-edge-form? (edge form ev-list remaining-forms?)
  (case
      form 
    (ng
     (if (sentential-adverb? edge)
	 (loop for ee in (edges-before edge)
	    thereis
	      (member (cat-name (edge-form ee)) '(det possessive)))
	 (and
	  (ng-compatible? edge ev-list)      
	  (or
	   remaining-forms?
	   (not (likely-verb+ed-clause edge ev-list))))))
    (vg (and
         (compatible-with-vg? edge)
         (not (loop for ev in ev-list
                 thereis
                   (loop for e in (ev-edges ev)
                      thereis
                        (and
                         (vg-head? (edge-form e))
                         (referential-category-p (edge-category e))
                         ;; have strange cases like "completed" as an edge in PMC3640864
                         (not (member (cat-symbol (edge-category e)) 
                                      '(category::be category::have
                                        category::do category::modal)))))))))
    (adjg (adjg-compatible? edge))))

(defun sentential-adverb? (edge)
  (declare (special edge))
  ;; VERY STUPID DEFINITION
  #+ignore
  (and (referential-category-p (edge-referent edge))
       (eq (cat-name (edge-referent edge))
	   'only))
  ;; the goal is to be able to block adverbs that shouldn't be inside NGs
  ;;  -- need to figure out whichthey are and how to find them
  nil)

(defparameter *suppressed-verb+ed* nil)
(defun likely-verb+ed-clause (edge ev-list)
  (declare (special category::verb+ed *n-bar-categories*
                    category::preposition category::det category::have
                    category::pronoun *verb+ed-sents* *sentence-in-core*
                    *chunk*))
  (when (and (eq 'adverb (cat-name (edge-form edge)))
             (edge-p (edge-just-to-right-of edge))
             (eq 'verb+ed (cat-name (edge-form (edge-just-to-right-of edge)))))
    (setq edge (edge-just-to-right-of edge)))
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
              ((and 
                prev-edge 
                (edge-form prev-edge)
                (memq (cat-symbol (edge-form prev-edge))
                      '(category::verb category::verb+ed)))
               (when *suppressed-verb+ed*
                 (push (list  (list (edge-form prev-edge)
                                    (edge-referent prev-edge))
                              (list (edge-form ev-edge)
                                    (edge-referent ev-edge))
                              (list (edge-form edge)
                                    (edge-referent edge))
                              (sentence-string *sentence-in-core*))
                       *suppressed-verb+ed*))
               nil)
              (t t)))
          (or
           (loop for e in (ev-edges (car ev-list))
              thereis
                (and
                 (edge-form e)
                 (memq (cat-symbol (edge-form e)) *n-bar-categories*)))
           (and ;; e.g. "EGF strongly activated EGFR"
            (cadr ev-list)
            (loop for e in (ev-edges (cadr ev-list))
               thereis
                 (and
                  (edge-form e)
                  (memq (cat-symbol (edge-form e)) *n-bar-categories*)))
            (loop for e in (ev-edges (car ev-list))
               thereis
                 (and
                  (edge-form e)
                  (eq (cat-symbol (edge-form e)) 'category::adverb))))))
     (when (and *verb+ed-sents*
                (not
                 (let* ((ev (pos-starts-here (pos-edge-ends-at edge)))
                        (edges (ev-edges ev)))
                   (loop for e in edges
                      thereis (memq (cat-name (edge-form e))
                                    '('preposition det pronoun))))))
       ;;(break "verb+ed")          
       (push (list (string-of-words-between 
                    (chunk-start-pos *chunk*)
                    (pos-edge-ends-at edge))
                   (sentence-string *sentence-in-core*)) 
             *verb+ed-sents*))
     t)
    (t nil)))



;;;--------------------------------------------------------------------------
;;; code used for chunking, moved in from categories.lisp
;;; methods for testing whether a form category is one of a particular group
;;;--------------------------------------------------------------------------

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
  (loop for ee in edges
     thereis (det-prep-poss-or-adj? ee)))

(defun det-prep-poss-or-adj? (ee)
  (or (member (cat-name (edge-form ee)) '(det possessive adjective number
                                          verb+ed verb+ing))
      (and
       (member (cat-name (edge-form ee))
               '(preposition spatial-preposition)))))


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
        (eq (cat-name (edge-form ee)) 'pronoun))))

(defun preceding-determiner? (e &optional (edges (edges-before e)))
    (loop for ee in edges
     thereis
         (eq (cat-name (edge-form ee)) 'det)))

(defun followed-by-verb (e &optional (edges-after (edges-after e)))
  (loop for ee in edges-after
     thereis
       (member (cat-name (edge-form ee)) '(verb))))

(defun preceding-adverb (e &optional (edges (edges-before e)))
  (loop for ee in edges
     thereis
       (eq (cat-name (edge-form ee)) 'adverb)))

(defun preceding-adverb-or-subordinate-conjunction (e &optional (edges (edges-before e)) )
  (loop for ee in edges
     thereis
       (member (cat-name (edge-form ee)) '(adverb subordinate-conjunction))))



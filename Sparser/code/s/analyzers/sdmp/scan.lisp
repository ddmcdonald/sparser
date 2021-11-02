;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; copyright (c) 2013-2019  David D. McDonald  -- all rights reserved
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved
;;;
;;;      File: "scan"
;;;    Module: "analyzers;SDM&P:
;;;   Version: November 2019

;; Initiated 2/9/07. Completely redone starting 1/21/13. Adding a 
;; simpler variation 4/1/13. Which uses make-individual-for-dm&p 4/4
;; 7/17/13 Fixed bug in propoagate-suffix-to-segment. 9/18/13 Reified
;; the continuation code so it's easier to maintain. 5/19/14 put
;; guards around missing cases in analyze-segment. 8/7/14 Added possibility
;; of breaking in :trivial when there's no edge over the head or
;; no edge at all.
;; 1.1 (11/11/14) Reduced propagate-suffix-to-segment to a call to
;;  sdm-span-segment since the did the same thing and sdm-span-segment
;;  didn't blindly take the right suffix's form. 
;; 6/13/2015 fix record-any-determiner 
;; we were adding determiners to the base meaning of
;; amino acids, among others, generating individuals
;; with hundreds of determiners
;; 6/28/2015 make sure to record determiners, and to use fom-lattice-description
;; in convert-referent-to-individual

(in-package :sparser)

#|  
  The point of this body of code is to heuristically fill in
anything inside a segment that the parser doesn't. It's also
a site for making general observations about adjacency and
modification facts in aid of getting a better picture of
what the phrase denotes.

  It is called from segment-finished within the PTS code in
drivers/chart/psp/pts.lisp after it has invoked the parser
to make any semantic or form edges that the grammar dictates. 

|#

(defparameter *debug-segment-handling* nil
  "Guards breaks for unhandled cases")

;;;-----------
;;; dispatch
;;;-----------

(defun sdm/analyze-segment (coverage)
  ;; Called from after-action-on-segments if the parameter
  ;; *do-strong-domain-modeling* is up
  "Dispatch point for the alternative analyses we could do.
   The :trivial choice is robust. The :full option would be
   better, especially for reversing since it wants to recover
   the tree family that might have been used, but it's not
   at all complete."
  (declare (special *debug-segment-handling*))
  (case *new-segment-coverage*
    (:trivial
     (just-cover-segment coverage))
    (:full ;; could be segmented further
     (analyze-segment coverage))
    (:none
     (continue-from-sdm/analyze-segment coverage))
    (otherwise
     (when *debug-segment-handling*
       (error "Undefined value for *new-segment-coverage*: ~a"
              *new-segment-coverage*)))))


(defun continue-from-sdm/analyze-segment (coverage)
  (cond
   (*reify-implicit-individuals*
    (reify-implicit-individuals-in-segment coverage))
   (*note-text-relations*
    (note-text-relations-in-segment coverage))
   (t
    (normal-segment-finished-options coverage))))


;;;-------------------------------------------------------
;;; trivial variant - just cover the segment with an edge
;;;-------------------------------------------------------

(defparameter *require-known-words-in-order-to-cover-a-segment* nil)

(defun just-cover-segment (coverage)
  "Don't look at the edge or try to find more relations inside it,
   just make sure it's all covered with one edge, propagating the
   edge information from its suffix."
  (declare (special *debug-segment-handling*
                    *inhibit-just-spanning-segments*
                    *left-segment-boundary* *right-segment-boundary*))
  (case coverage
    (:one-edge-over-entire-segment
     (let ((edge (edge-over-segment)))
       (when edge ;; That will fail if its assumptions are violated
         (generalize-segment-edge-form-if-needed edge)
         (convert-referent-to-individual edge)
         (when *note-text-relations*
           (record-any-determiner edge)))))

    ((:all-contiguous-edges
      :discontinuous-edges 
      :some-adjacent-edges)
     (when (no-edge-over-segment-head)
       (reify-segment-head-as-a-category))
     ;; That makes an individual referent. Ok?
     ;; /// And it doesn't set up the noun as such.
     (unless (chunker-overreached)
       (let ((edge (if (not *inhibit-just-spanning-segments*)
                     (sdm-span-segment)
                     (edge-over-segment-head))))
         (generalize-segment-edge-form-if-needed edge)
         (convert-referent-to-individual edge))))

    (:no-edges ;; "burnt" or any other word not in Comlex
     (cond
      (*debug-segment-handling*
       (break "Coverate is :no-edges"))
      (*require-known-words-in-order-to-cover-a-segment*
       ;; We didn't get the word 
       ;; (words-in-segment)
       (break "no edges in the segment between ~a and ~a"
              *left-segment-boundary* *right-segment-boundary*))
      (*dbg-print*
       (break "~&Ignoring segment ~s with no edges~%"
              (format-words-in-segment nil))       
       (terpri))))

    (otherwise
     (when *debug-segment-handling*
       (break "Unanticipated value for segment coverage: ~A"
              coverage))))
  
  (setq coverage (segment-coverage)) ;; update
  (continue-from-sdm/analyze-segment coverage))




(defparameter *show-sdm-span-segment* nil "Print the span in line with the parse")

(defparameter *inhibit-just-spanning-segments* nil
  "Sometimes we strongly suspect that the segment boundaries are going
   to be incorrect and the correct low-level composition will be with
   words to one side or the other of the boundaries and we don't want
   to seal them off.")

(defun sdm-span-segment (&optional start-at)
  "Make an edge over the whole segment based largely on the
   properties of its suffix. The edge is presumed to be an NP
   though nothing looks carefully at that."
  (declare (special category::adjective category::vg category::np category::np-head
                    category::n-bar *current-chunk*
                    *left-segment-boundary* *right-segment-boundary*))
  (unless *inhibit-just-spanning-segments*
    (let* ((start-pos (or start-at
                          *left-segment-boundary*))
           (label (category-of-right-suffix)) ; becomes category label of the edge
           (form-label
            (cond ((and *current-chunk*
                        (not (member 'ng (chunk-forms *current-chunk*))))
                   (cond
                     ((member 'vg (chunk-forms *current-chunk*))
                      category::vg)
                     ((member 'adjg (chunk-forms *current-chunk*))
                      category::adjective)
                     (t (error "strange call to sdm-span-segment"))))
                  ((eq start-pos *left-segment-boundary*)
                   category::np)
                  ((= 1 (number-of-terminals-between 
                         start-pos *right-segment-boundary*))
                   category::np-head)
                  (t category::n-bar)))
           (right-referent (referent-of-right-suffix))
           (edge-referent
            (typecase right-referent
              (referential-category
               ;; When the category is one like 'protein' that expects
               ;; its individuals to be named, then the empty binding
               ;; instructions will lead to an error downstream
               ;;(instantiate-reified-segment-category referent)
               ;; This call creates an individual (stored on the
               ;; category that might provide the basis for a subtype.
               (if *description-lattice*
                 (fom-lattice-description right-referent)
                 (make-category-indexed-individual right-referent)))
              (mixin-category
               right-referent) ;; "can"
              (individual
               right-referent)
              (word ;; #<word HYPHEN>
               right-referent)
              (polyword  ;; "M1A1"
               right-referent)
              (symbol ;; :uncalculated -- for a number
               right-referent)
              (otherwise
               (break "New type of object as referent of right-suffix: ~a~%~a"
                      (type-of right-referent) right-referent)))))
      (let ((edge
             (make-edge-over-long-span
              start-pos
              *right-segment-boundary*
              label
              :form form-label
              :rule 'sdm-span-segment
              :referent edge-referent)))
        
        (when (and *readout-segments-inline-with-text* ; make it quiet when other things are
                   *show-sdm-span-segment*)
          (format t "~&sdm-span-segment: ~s~%"
                  (retrieve-surface-string edge)))
        (tr :sdm-span-segment edge)
        edge))))
   



(defun chunker-overreached ()
  "In biology, with the heavy use of syntactic rules, it's unusual
   for a segment (chunk) not to parse completely. It one doesn't we
   should consider the possibility that the segment has the wrong
   bounds and consequently we shouldn't span it just for the sake of
   having a span (edge over the chunk)."
  ;; "How [does knocking] out p53 ..."
  ;; Add more cases as we encounter them
  (declare (special *current-chunk*))
  (when *current-chunk*
    (when (memq 'vg (chunk-forms *current-chunk*))
      ;; The verb group grammar is very robust. If there is
      ;; an unparsed auxiliary here then it's not supposed
      ;; to be parsed
      ;;   (edge-over-segment-prefix)
      (auxiliary-word? (first-word-in-segment)))))
      

(defun convert-referent-to-individual (edge)
  "Converts category referents to individuals. Has cases for
   everything else that could appear should we ever want to do
   something with them."
  (declare (special *debug-segment-handling*))
  (let ((referent (edge-referent edge)))
    (typecase referent
      (referential-category
       ;;/// Could imagine using a find-individual here,
       ;; but with no binding values we've nothing to find against.
       
       (cond
         (*profligate-creation-of-individuals*
          ;; seems to cause of the smashing of 
          ;; the referent of "the nucleus"
          ;; -- we have now turned off this flag in the bio domain
          (let ((super (supercategory-of-constructed-category referent)))
            (set-edge-referent edge
                               (make-individual-for-dm&p (or super referent)))
            (note-surface-string edge)))
         (*description-lattice*
          (setq referent (fom-lattice-description referent))
          (set-edge-referent edge referent)
          ;;(update-edge-mention-referent Edge referent)
          ;; the discourse-mention had a category as its interpretation
          ;; and the new referent does not have that mention on its mention-history
          ;; correct that
          (note-surface-string edge)))
       referent)
      ;; These cases are original from 2009 and 
      ;; not reconsidered yet.
      (mixin-category
       referent) ;; "can"
      (individual
       referent)
      (word ;; #<word HYPHEN>
       referent)
      (polyword  ;; "M1A1"
       referent)
      (symbol ;; :uncalculated -- for a number
       referent)
      (otherwise
       (when *debug-segment-handling*
         (push-debug `(,edge ,referent))
         (break "New type of object as referent of right-suffix: ~a~%~a"
                (type-of referent) referent))))))



(defun record-any-determiner (edge)
  ;; Wanted to have this done by the form rules in syntax/articles,
  ;; but referent expression interpreter there needs adjustment
  ;; so this is largely a hack
  ;;(push-debug `(,edge))
  (declare (special category::definite category::indefinite category::det))
  (multiple-value-bind (word length)
                       (first-word-in-segment)
    (when (= length 1)
      (return-from record-any-determiner nil))
    (when (determiner? word)
      (let ((i (edge-referent edge)))
        (unless (individual-p i)
          (setq i (individual-for-ref i)))
        (unless (value-of 'has-determiner i)
          ;; don't duplicate it
          (setq i
                (if (definite-determiner? word)
                  (bind-dli-variable 'has-determiner category::definite 
                                     i category::det)
                  (bind-dli-variable 'has-determiner category::indefinite
                                     i category::det))))
        ;;/// This also gets the "the" in a company name,  
        ;; but that's probably not relevant.
        (set-edge-referent edge i)
        (note-surface-string edge)
        i))))
    



;;;-------------------------------------
;;; Analyze the interior of the segment
;;;-------------------------------------

#| Look for rules that could have applied given the
 form of the edges in the segment
 Runs when *new-segment-coverage* is :full. |#

(defun analyze-segment (coverage)
  (declare (special *left-segment-boundary* *right-segment-boundary*
                    *debug-segment-handling*))
  (tr :calling-sdm/analyze-segment coverage)
  (case coverage
    (:one-edge-over-entire-segment
     (generalize-segment-edge-form-if-needed (edge-over-segment))
     (sf-action/spanned-segment))

    (:all-contiguous-edges
     (analyze-segment-with-continuous-edges))

    (:no-edges
     (error "There should never be no edges in a segment"))

    (:discontinuous-edges
     (when *debug-segment-handling*
       (break "discontinuous")))
    (:some-adjacent-edges
     (when *debug-segment-handling*
       (break "some adjacent")))

    (otherwise
     (when *debug-segment-handling*
       (break "Unanticipated value for segment coverage: ~A"
              coverage))))
  (setq coverage (segment-coverage))
  (continue-from-sdm/analyze-segment coverage))

;;--- cases

(defun analyze-segment-with-continuous-edges ()
  (declare (special *left-segment-boundary* *right-segment-boundary*))
  (tr :sdm-all-contiguous-edges)
  (let ((edges (continuous-edges-between 
                *left-segment-boundary* *right-segment-boundary*)))
    (march-rightward-over-edges-by-form edges)
    ;; march both rightwards for qualifiers and leftwards
    ;; for spanning heuristics
    ;; Apply default runes to collect up all the bits
    (sf-action/all-contiguous-edges)))














;;---------------- ignored below here
;; original 2007 code

(defun sdm-action/no-edges ()
  (tr :sdm-no-edges)
  (reify-segment-head-and-loop)) ;; come back in with different coverage


(defun sdm-action/discontinuous-edges ()
  (tr :sdm-discontinuous-edges)
  (reify-segment-head-if-needed)
  (sdm-action/some-edges))


(defun sdm-action/some-adjacent-edges ()
  (tr :sdm-some-adjacent-edges)
  (sdm-action/some-edges))

(defun sdm-action/some-edges ()
  (declare (special *left-segment-boundary* *right-segment-boundary*))
  (if (heuristics-apply-to-segment)
    (apply-segment-heuristics)
    (else
      (reify-segment-head-if-needed)
      (if (edge-over-segment-prefix)
	(then
	  (sdm-span-segment/prefix)
	  (parse-at-the-segment-level *right-segment-boundary*))
	(else
	  (sdm-span-segment)
	  (sf-action/spanned-segment))))))


(defun sdm-action/all-contiguous-edges/finish ()
  (declare (special *debug-segment-handling*
                    *parse-from-continuous-edges-in-progress*))
  (setq *parse-from-continuous-edges-in-progress* nil)
  (let ((coverage (segment-coverage)))
    (tr :sdm-all-contiguous-edges/new-coverage coverage)
    (case coverage
      (:all-contiguous-edges 
       ;; might have improved, but we still want to span this ourselves
       (sdm-span-segment))
      ;; (:one-edge-over-entire-segment) ;; parsing got something
      (otherwise
       (when *debug-segment-handling*
         (break "Unexpected outcome of embedded parse with continuous-edges: ~a"
                coverage))))

  ;; When we're collecting relations then we'll have things to do here
;  (unless (edge-between *left-segment-boundary*
;			*right-segment-boundary*)
;    (sdm-span-segment))

    (sf-action/spanned-segment)))



;;--- common subroutines

(defun reify-segment-head-and-loop ()
  (declare (special *right-segment-boundary*))
  (reify-segment-head-as-a-category) ;; lays down the edge
  ;; See if we can do something with that edge.
  ;; This will get us back to segment-parsed1
  ;; and we'll loop around, but with different coverage
  (parse-at-the-segment-level *right-segment-boundary*))

 
(defun sdm-span-segment/prefix ()
  (sdm-span-segment (where-prefix-edge-ends)))


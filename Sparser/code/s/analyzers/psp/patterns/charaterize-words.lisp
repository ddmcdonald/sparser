;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "charaterize-words"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  February 2021

;; initiated 5/15/15 breaking out the routines that look at the words
;; and characterize them as patterns to drive the matcher. Moved in
;; operations getting labels from edges 11/27/15

(in-package :sparser)

;;;------------------------------------------------
;;; characterizing terms in the character sequence
;;;------------------------------------------------

(defun characterize-word-type (position word)
  "return a indicator read by resolve-ns-pattern to identify
   a general pattern with an established interpretation. "
  (let* ((caps (pos-capitalization position))
         (start-ev (pos-starts-here position))
         (top-edge (ev-top-node start-ev)))
    ;;(break "For ~s caps = ~a, top-edge = ~a" (word-pname word) caps top-edge)
    (if (not (word-p word)) ;; can be an edge!
        (intern (pname (edge-category word)) :keyword)
        (case caps
          (:digits
           (if (= 1 (length (word-pname word)))
               :single-digit
               :digits))
          (:initial-letter-capitalized
           :capitalized) ;; "Gly", "Ras"
          (:single-capitalized-letter
           :single-cap)
          (:all-caps
           :full)
          (:mixed-case
           :mixed ) ;;(characterize-type-for-mixed-case word))
          (:lower-case
           (if (= 1 (length (word-pname word)))
               (if (string-equal (word-pname word) "p")
                   :little-p
                   :single-lower)
               :lower))
          (:punctuation
           (keyword-for-word word))
          (otherwise (break "~a is a new case to characterize for p~a and ~s~
                       ~%under ~a"
                            caps
                            (pos-token-index position) 
                            (word-pname word)
                            top-edge))))))

(defparameter *word-nospace-keywords*
  '(:capitalized :single-cap :full :mixed :single-lower :little-p :lower))

(defparameter *digit-nospace-keywords*
  '(:single-digit :digits))


(defun characterize-words-in-region  (start-pos end-pos)
  "Returns a pattern. Presumes that the whole region has been scanned,
   and that the edges are correctly ordered left to right."
;; maybe change to use treetops-between
  (let* ((pos-tt-list (positions-and-treetops-between start-pos end-pos)))
    (loop for (pos tt) in pos-tt-list
          collect
            (cond ((edge-p tt) tt)
                  ((edge-vector-p tt) ;; not sure, but what else can we do
                   (elt (ev-edge-vector tt)
                        (1- (ev-number-of-edges tt))))
                  (t (characterize-word-type pos tt))))))



(defun sweep-ns-region (start-pos end-pos)
  "Called from collect-no-space-segment-into-word to provide the
   pattern that will be passed to ns-pattern-dispatch and control
   the decisions by the different no-space files.
   Returns a pattern based on the words and edges over those words.
   Knows a great deal about what kinds of edges are just mechanical
   and replaces those with a characterization of the word they're
   over to more easily fit into the pattern tests."
  ;;//// When we do a major revision of the style of NS revision
  ;; this should be merged somehow with characterize-words-in-region 
  ;; so patterns can be put in the right form earlier -- like at top
  ;; of ns-pattern-dispatch, though that wants the positions.
  (let ((pos-treetops (positions-and-treetops-between start-pos end-pos))
        pattern-elements )
    ;;/// That sweep was designed for simplistic parsing and ignores
    ;; things like multiple edges. May need a tailored one
    #+ignore (unless (every #'edge-p treetops)
               (push-debug `(,start-pos ,end-pos ,treetops))
               (error "Not every treetop is an edge: ~a" treetops))

    (flet ((label-for-pattern (position item)
             (let* ((label (when (and (edge-p item)
                                      (category-p (edge-category item)))
                             (cat-name (edge-category item))))
                    (referent (when (and (edge-p item)
                                         (individual-p (edge-referent item)))
                                (edge-referent item)))
                    (word (if (and (edge-p item)
                                   ;; happens with A38G, where A38 is
                                   ;;  made into a residue-on-protein
                                   (single-word-edge? item))
                              (word-under-edge item)
                              item))
                    (pname (and (word-p word)
                                (word-pname word))))
               (cond
                 ((eq label 'number)
                  (if (= 1 (length pname)) :single-digit :digits))
                 ((eq label 'bio-entity)
                  (characterize-word-type position word))
                 ((itypep referent 'unit-of-measure)
                  :unit-of-measure)
                 ((search (symbol-name '#:-kind) (symbol-name label))
                  (characterize-word-type position word))
                 ((itypep label 'protein)
                  :protein)
                 ((memq label '(wild-type nucleotide))
                  ;;(eq label 'protein) 
                  (intern (pname label) :keyword))
                 ((and (edge-p item)
                       (single-word-edge? item))
                  (characterize-word-type position word))
                 ((edge-p item)
                  (intern (pname label) :keyword))
                 ((null word)
                  nil)
                 ;;//// need to look for massive set of cases
                 ;; since we don't want to return something the
                 ;; patterns won't recognize. Protein is an obvious
                 ;; case, but what else?
                 (t (characterize-word-type position word))))))
      
      (loop for (pos tt) in pos-treetops
            collect (label-for-pattern pos tt)))))

(defun single-word-edge? (item)
  (< (length (words-between
              (pos-edge-starts-at item)
              (pos-edge-ends-at item)))
     2))



;;//// Question is how to fold this into the matcher
(defun characterize-type-for-mixed-case (word)
  (let* ((pname (word-pname word))
         (begins-with-little-p (eql #\p (aref pname 0)))
         (length (length pname))
         (ends-in-s? (eql #\s (aref pname (1- length)))))
    (when begins-with-little-p
      (when ends-in-s?
        ;; is the remainder a known word?
        ))))

(defun word-starts-with-lowercase-letter? (word)
  (lowercase-letter? (aref (word-pname word) 0)))

;;/// move
(defun keyword-for-word (word)
  (let ((symbol-in-word-package (word-symbol word)))
    (intern (symbol-name symbol-in-word-package)
            (find-package :keyword))))

;;;-------------------------
;;; edges => pattern labels
;;;-------------------------

;; populated in model/sl/biology/rules.lisp
(defparameter *ns-informative-categories* nil
  "A list of category objects used by no-space code to determine
   whether to characterize an edge by its label or by the form
   of the word it covers.")

(defun convert-pattern-edges-to-labels (pos-pat-list)
  "When there is an edge in the pattern, return
   it's category label as a keyword."
  (loop for pos-pat in pos-pat-list
        unless
          (let ((item (second pos-pat)))
            (or (keywordp item) (edge-p item) (word-p item)))
        do (error "New type in pattern: ~a" (second pos-pat)))
  (loop for pos-tt in pos-pat-list
        collect
        (let ((item (second pos-tt)))
          (cond ((keywordp item) item)
                ((word-p item) (characterize-word-type (car pos-tt) item))
                ((edge-p item) (edge-category-to-keyword item))))))


(defun convert-mixed-pattern-edges-to-labels (pattern)
  "Given an edge in the pattern, if it is more than one word long, 
   return it's category label as a keyword, otherwise convert it
   back to a keyword for a word."
  (loop for item in pattern
        unless (or (keywordp item)
                   (edge-p item)
                   (category-p item))
                   
        do (error "New type in pattern: ~a" item))
  (loop for item in pattern
        when (or (edge-p item) (keywordp item))
        collect
          (cond
            ((keywordp item) item)
            ((category-p item)
             (intern (pname item) :keyword))
            ((one-word-long? item)
             (convert-edge-to-one-word-characterization item))
            ((category-p (edge-category item))
             (edge-category-to-keyword item))
            (t ;; not sure what to do here -- this happend for p14 in
             ;; as in "Using conditional gene disruption of p14 in mice,
             ;; we now demonstrate that the p14–MP1-MEK1 signaling complex
             ;; regulates late endosomal traffic and cellular proliferation."
             (convert-edge-to-one-word-characterization item)))))

;;--- go'fers

(defun edge-category-to-keyword (edge)
  (cond
   ((category-p (edge-category edge))
    (let* ((symbol (cat-symbol (edge-category edge)))
           (pname (symbol-name symbol)))
      (intern pname (find-package :keyword))))
   (t (break "edge with non-category edge-category ~s" edge))))

(defun convert-edge-to-one-word-characterization (edge)
  ;; Some single-word edges are uniformative, others carry
  ;; information that will simplify the patterns by providing
  ;; more information and shortening the path to get there.
  (declare (special *ns-informative-categories*))
  (let ((label (edge-category edge)))
    (cond
     ((memq label *ns-informative-categories*)
      (edge-category-to-keyword edge))
     (t
      (let* ((position (pos-edge-starts-at edge))
             (word (pos-terminal position)))
        (characterize-word-type position word))))))


;; "EphB1-induced."  "pThr202/Tyr204" dec#46
(defun effective-words-given-edges (start-pos end-pos)
  "Return a list of the words between the two positions but
   allowing for polywords, e.g. protein edges"
  ;; called from ns-pattern-dispatch -- sort of open-codes
  ;; a variant on words-between and edges-between
  ;; N.b had used resolve/make, but that problematically would
  ;; create a polyword that was not related to the referent
  ;; of the treetop it wanted words for. Now just uses
  ;; resolve, which picks up all the predefine or already
  ;; created polywords and these will be associated with edges.
  (loop for tt in (treetops-between start-pos end-pos)
        collect
          (if (edge-p tt)
              (if (= 1 (number-of-terminals-between
                        (pos-edge-starts-at tt)
                        (pos-edge-ends-at tt)))
                  (pos-terminal (pos-edge-starts-at tt))
                  (resolve ;; n.b. applies only to known PW
                   (trim-whitespace
                    (extract-characters-between-positions
                     (pos-edge-starts-at tt)
                     (pos-edge-ends-at tt)))))
              tt)))



;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "charaterize-words"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  June 2016

;; initiated 5/15/15 breaking out the routines that look at the words
;; and characterize them as patterns to drive the matcher. Moved in
;; operations getting labels from edges 11/27/15

(in-package :sparser)

;;;------------------------------------------------
;;; characterizing terms in the character sequence
;;;------------------------------------------------

(defun characterize-word-type (position word)
  ;; return a indicator read by resolve-ns-pattern to identify
  ;; a general pattern with an established interpretation. 
  (let* ((caps (pos-capitalization position))
         (start-ev (pos-starts-here position))
         (top-edge (ev-top-node start-ev)))
    ;;(break "For ~s caps = ~a, top-edge = ~a" (word-pname word) caps top-edge)
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
                        top-edge)))))

(defparameter *word-nospace-keywords*
  '(:capitalized :single-cap :full :mixed :single-lower :little-p :lower))

(defparameter *digit-nospace-keywords*
  '(:single-digit :digits))



(defun characterize-words-in-region  (start-pos end-pos edges)
  "Returns a pattern. Presumes that the whole region has been scanned.
   and that the edges are correctl ordered left to right."
  (push-debug `(,start-pos ,end-pos ,edges))
  (let ((position start-pos)
        (word (pos-terminal start-pos))
        pattern-elements  element  edge
        (edge-start-positions 
         (when edges (loop for e in edges
                       collect (pos-edge-starts-at e))))
        previous-pos  )

    (loop
      (cond 
       ((memq position edge-start-positions)
        (setq edge (pop edges))
        (push edge ;;(edge-form edge) 
              pattern-elements))
       (t 
        (setq word (pos-terminal position))
        (setq element (characterize-word-type position word))
        (push element pattern-elements)))

      (setq position
            (cond (edge (pos-edge-ends-at edge))
                  (t (chart-position-after position))))
      (when edge (setq edge nil)) ;; reset

      (when (eq position previous-pos)
        (error "characterize-words-in-region is looping"))
      (setq previous-pos position)

      (when (eq position end-pos)
        (return)))

    (nreverse pattern-elements)))

(defun remove-non-edges (list)
  "Used by ns-pattern-dispatch to remove the words that appear
   in the initial list, which is created by treetops-between and
   consequently can feed in edges, e.g. for tildas."
  (loop for item in list
    when (edge-p item) collect item))


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

(defun convert-pattern-edges-to-labels (pattern)
  "When there is an edge in the pattern, return
   it's category label as a keyword."
  (loop for item in pattern
    unless (or (keywordp item) (edge-p item))
    do (error "New type in pattern: ~a" item))
  (loop for item in pattern
    when (keywordp item) collect item
    when (edge-p item) collect (edge-category-to-keyword item)))


(defun convert-mixed-pattern-edges-to-labels (pattern)
  "Given an edge in the pattern, if it is more than one word long, 
   return it's category label as a keyword, otherwise convert it
   back to a keyword for a word."
  (loop for item in pattern
    unless (or (keywordp item) (edge-p item))
    do (error "New type in pattern: ~a" item))
  (loop for item in pattern
    when (keywordp item) collect item
    when (edge-p item) 
    collect (cond
             ((one-word-long? item)
              (convert-edge-to-one-word-characterization item))
             ((category-p (edge-category item))
              (edge-category-to-keyword item))
             (t ;; not sure what to do here -- this happend for p14 in
              ;; as in "Using conditional gene disruption of p14 in mice, we now demonstrate that the p14–MP1-MEK1 signaling complex regulates late endosomal traffic and cellular proliferation."
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
(defun effective-words-given-edges (edges start-pos end-pos)
  "Return a list of the words between the two positions but
   allowing for polywords, e.g. protein edges"
  ;; called from ns-pattern-dispatch -- sort of open-codes
  ;; a variant on words-between and edges-between
  (let* ((pos start-pos)
         (edge-copy (copy-list edges))
         (edge (pop edge-copy))
         (next-pos (chart-position-after start-pos))
         longer? words )
    ;;(push-debug `(,edges ,start-pos ,end-pos))
    (loop
       (when (eq pos end-pos) (return))
       ;;(format t "~&edge = ~a next-pos = ~a" edge next-pos)
       (cond
         ((word-p edge) ;; e.g. in "non-radioactivity" overnight #13
          (push edge words))
         ((not (eq (pos-edge-ends-at edge) next-pos))
          ;;(format t "~&longer: edge = ~a" edge)
          (let* ((long-string
                  (trim-whitespace
                   (extract-characters-between-positions
                    pos (pos-edge-ends-at edge))))
                 (long-word (resolve long-string)))
            ;; It's not a good idea to make these polywords
            ;; since going forward they would take precedence
            ;; over the compositional edge without providing
            ;; the content that the edge does. 
            #+ignore(unless long-word
              (tr :ns-making-word-to-match-edge edge long-string)
              (setq long-word (resolve/make long-string)))
            (setq longer? t)
            (push long-word words)))
         ((eq (pos-edge-ends-at edge) next-pos)
          ;;(format t "~&same size: edge = ~a" edge)
          (push (pos-terminal pos) words)))
       (cond
         (longer?          
          (setq pos (pos-edge-ends-at edge)
                next-pos (chart-position-after pos)
                longer? nil))
         (t
          (setq pos (chart-position-after pos)
                next-pos (chart-position-after next-pos))))
       (setq edge (pop edge-copy)))
    (nreverse words)))



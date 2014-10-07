;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "bio-entity-scan"
;;;   Module:  "drivers/chart/psp/"
;;;  version:  August 2014

;; 8/11/14 This was intended for a scan that did not include bracket
;; checking so we could experiment with an alternative way of doing it.
;; That's yet to be written, so taking it over for other purposes.

(in-package :sparser)


;;; Sweep for heuristic named entities for R3 / Big Mechanism bio entities

;; lookup-the-kind-of-chart-processing-to-do uses the keyword 
;; :r3-entity-sweep to call this function. The lookup fn is
;; called from chart-based-analysis which has the catch to terminate
;; chart parsing. 

; (setq *kind-of-chart-processing-to-do* :r3-entity-sweep)

; (p "alpha phi omega")
; (p "alpha phi omega. apple")  ;; walk over period
; (p "alpha AAA omega")  ;; full caps

; (define-polyword "aa bb cc")
; (p "alpha aa bb cc omega")  ;; continue after noticing polyword

; (p "alpha N76 omega")

; (p "alpha aa bb cc omega. N22 apple BBB")

(defun initiate-R3-entity-pass ()
  ;; Copied from inititate-c3-protocol which is already stipped down
  ;; from the normal inititate-top-edges-protocol driver. 
  (let* ((p0 (scan-next-position))  ;; status = :scanned
         (ss (pos-terminal p0)) ;; #<word SOURCE-START>
         (p1 (scan-next-position)) ;; adds 1st real word
         (word1 (pos-terminal p1)))
    (declare (ignore ss))
    (r3-entity-pass-loop p1 word1)))

#| scan-next-position
Bumps the indexes into the chart. Does an add-terminal-to-chart if
there is not already a word at this 'next' position. And returns 
the position. (N.b. there's an incremental trace hook in there.) |#

(defun r3-entity-pass-loop (position-before word)
  (format t "~&Entity loop: p~a ~s"
          (pos-token-index position-before) (word-pname word))
  (simple-eos-check position-before word)
  (let* ((where-pw-ended (polyword-check position-before word))
         (position-after (or where-pw-ended
                             ;;(scan-next-position)
                             (chart-position-after position-before))))
    ;; We need to look for polywords if only because a term like
    ;; "p100" is reified as a polyword when we define it as a bio-entity,
    ;; so we need to recognize it when it occurs the again.
    (when where-pw-ended
      (setq position-before where-pw-ended)
      (unless (includes-state where-pw-ended :scanned)
        ;; PW can complete without thinking about the
        ;; word that follows it.
        (scan-next-position))
      (setq word (pos-terminal where-pw-ended)))
    (unless (includes-state position-after :scanned)
      (scan-next-position))

    (when nil
      (push-debug `(,position-before ,position-after)) 
      (break "before = p~a  after= p~a"
             (pos-token-index position-before)
             (pos-token-index position-after)))

    (when (no-space-before-word? position-before)
      ;; If it succeeds we need to restart the loop
      ;; where it leaves off. 
      (let ((where-ns-ended (do-no-space-collection position-before)))
        (when where-ns-ended ;; which will have been scanned
          (setq position-before where-ns-ended
                position-after (chart-position-after position-before)))))
    (unless (includes-state position-after :scanned)
      (scan-next-position))

    (check-for-full-caps-hack position-before word)

    (let ((next-word (pos-terminal position-after)))
      (when nil
        (format t "~&Next step: p~a ~a"
               (pos-token-index position-after) (word-pname next-word)))
      (r3-entity-pass-loop position-after next-word))))



(defun do-no-space-collection (position-before)
  ; lifted from check-for-uniform-no-space-sequence
  (tr :check-for-uniform-no-space-sequence position-before)
  (let ((uniform-pos-reached
         (collect-no-space-sequence-into-word position-before)))
    uniform-pos-reached))
      
(defun check-for-full-caps-hack (position-before word)
  (when (memq (pos-capitalization position-before)
              ;; but not :initial-letter-capitalized
              '(:all-caps :mixed-case))
    (when *big-mechanism*
      (reify-fullcaps-as-bio-entity position-before word))))

(defun polyword-check (position-before word)
  ;; lifted from check-for-polywords where all we want is
  ;; the fsa to fire if there is one, and to get the position
  ;; that it ends at. Returns either that position or nil. 
  (tr :check-for-polywords word position-before)
  (set-status :polywords-check position-before)
  (when (word-rules word)
    (let ((pw-cfr (initiates-polyword word position-before)))
      (when pw-cfr
        (let ((position-reached
               (do-polyword-fsa word pw-cfr position-before)))
          (push-debug `(,position-reached))
          ;; Check the status -- cf. adjudicate-result-of-word-fsa
          ;(break "Polyword succeeded at ~a" position-reached)
          position-reached)))))


(defun simple-eos-check (position-before word)
  ;; Taken from end-of-source-check but not worrying about the
  ;; forest or other things to do. In the usual scan, this check
  ;; is part of check-for-[-from-word-after before anything happens
  (tr :end-of-source-check word position-before)
  (when (eq word *end-of-source*)
    ;; This just does the throw up to chart-based-analysis
    (terminate-chart-level-process)))



;;---- move to somewhere under biology.
(defvar *bio-category-for-reifying* nil
  "Set the first time it's used. When we convert full caps or a
   no-space term to a bio entity, this is the category used for
   both the type of the new individual and for its label in 
   the chart. Set the first time its needed.")

(defun bio-category-for-reifying ()
  (or *bio-category-for-reifying*
      (let ((c (category-named 'bio-entity :break-if-none)))
        (setq *bio-category-for-reifying* c)
        c)))

(defun reify-bio-entity (name)
  (let* ((category (bio-category-for-reifying))
         ;; use a new type that's intentially indeterminate?
         (kind (cat-symbol category)))
    (let ((form `(def-bio ,name ,kind :takes-plurals nil)))
      (save-reified-bio-entity-to-file name kind)
      (let ((i (eval form)))
        i))))


(defparameter *fullcaps-to-bio-entities* nil ;; an alist
  "It's overkill to introduce edge checking into r3-entity-pass-loop
   so just caching the ones we find here to avoid duplicates")

(defun reify-fullcaps-as-bio-entity (position-before word)
  ;; Called from check-for-full-caps-hack, but on mixed case
  ;; as well as full caps
  (push-debug `(,position-before ,word)) ;(break "caps")
  (let* ((position-after (chart-position-after position-before))
         (chars (actual-characters-of-word 
                 position-before position-after `(,word)))
         (i (cdr (assoc chars *fullcaps-to-bio-entities*
                        :test #'string=))))
    (unless i
      (setq i (reify-bio-entity chars))
      (push `(,chars . ,i) *fullcaps-to-bio-entities*))
    (let* ((cfr (retrieve-single-rule-from-individual i))
           (form (cfr-form cfr)))
      (let ((edge (install-preterminal-edge
                   cfr word position-before position-after
                   (bio-category-for-reifying) form i)))
        edge))))

(defun reify-ns-name-as-bio-entity (words pos-before pos-after)
  ;; called from reify-ns-name-and-make-edge when *big-mechanism*
  ;; flag is up. Responsible for returning the category to use,
  ;; the rule, and the referent so that the caller can make an edge
  (let* ((words-string 
          ;;(apply #'string-append (mapcar #'word-pname words))
          (actual-characters-of-word pos-before pos-after words))
         ;; Def-bio/expr will make the polyword
         (i (reify-bio-entity words-string))
         (cfr (retrieve-single-rule-from-individual i)))
    (values (bio-category-for-reifying)
            cfr
            i)))


;;;-------------
;;; file driver
;;;-------------

(defun read-file-for-entities 
       (filename  
        &optional (outfile "/Users/ddm/sift/nlp/Sparser/results/bio-entities.lisp"))
  (let ((*kind-of-chart-processing-to-do* :r3-entity-sweep))
    (declare (special *kind-of-chart-processing-to-do*))
    (with-open-file (bio-entities-out outfile
                     :direction :output
                     :if-exists :overwrite
                     :if-does-not-exist :create)
      (declare (special bio-entities-out))
      (f filename))))

(defvar bio-entities-out nil)

(defun save-reified-bio-entity-to-file (string kind-symbol)
  (declare (special bio-entities-out))
  (when bio-entities-out
    (format bio-entities-out "~&(def-bio ~s ~a)%~%"
            string kind-symbol)))


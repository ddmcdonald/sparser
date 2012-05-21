;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1993,2012  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "document number"
;;;   Module:  "analyzers;context:"
;;;  Version:  December 1993 (4/12)

;; populated 6/25/92
;; (12/28 v2.3) stubbed another case
;; (12/27/93) Put in the case for regular DJNS articles (AN field)
;; (4/1/12) stubbed find-year-from-last-two-digits to quiet compiler

(in-package :sparser)

;;;-------------------
;;; Assession numbers
;;;-------------------

(define-category  Assession-number
  :specializes nil
  :instantiates nil
  :binds ((date . date)
          (index-number . number))
  :index (:sequential-keys date index-number))


(defun find-djns-assession-number-in-region (start-pos end-pos)
  ;; called from analyze-segment-as-assession-number during the
  ;; termination operation of the AN section when we've reached
  ;; the next section-marker.
  (return-from find-djns-assession-number-in-region nil)
  (let ((an-edge (find-tt-in-region (category-named 'hyphenated-number)
                                    start-pos end-pos)))
    (when an-edge
      (multiple-value-bind (date index)
                           (analyze-hyphenated-number-as-AN an-edge)

        (define-or-find-individual 'assession-number
          :date date
          :index-number index)))))


(defun analyze-hyphenated-number-as-AN (edge)
  ;; have to do a lot of work since the edge doesn't even breakout its
  ;; numerical daughters, and if the context was judged wrongly, then
  ;; there might be more than two numbers under a "hyphenated-number"
  (let ((numbers (extract-numbers-from-hyphenated-number edge)))
    (when (= 2 (length numbers))
      ;; ignore things like social security numbers
      (let ((encoded-date (first numbers))
            (index-for-the-day (second numbers)))
        (let ((date (unpack-six-digit-encoding-into-date encoded-date)))
          (values date index-for-the-day))))))


;; move
(defun unpack-six-digit-encoding-into-date (number-word)
  ;; e.g. "910319" -- get the string from the word (because it's not stored
  ;; with the number), break it into segments, then index them against
  ;; the appropriate kinds of objects and then index those against dates
  (break)
  (let ((pname (word-pname number-word)))
    (unless (= 6 (length pname))
      (break "The word ~A was expected to have 6 digits"))
    (let ((year-digits  (subseq pname 0 2))
          (month-digits (subseq pname 2 4))
          (day-digits   (subseq pname 4 6)))

      (when (eql #\0 (elt month-digits 0))
        (setq month-digits (subseq month-digits 1 2)))
      (break)
      (let* ((year (find-year-from-last-two-digits year-digits))
             (month-ordinal (find-individual 'ordinal
                             :value (parse-integer month-digits)))
             (month (find-individual 'month :ordinal month-ordinal))
             (day-number (parse-integer day-digits)))
        (break)
        (let* ((dom (make-an-individual 'day-of-the-month
                             :number day-number
                             :month month))
               (date (make-an-individual 'date
                       :day-of-the-month dom
                       :year year)))
          date )))))

(defun find-year-from-last-two-digits (year-digits)
  (break "this is a stub"))



;; move?
(defun extract-numbers-from-hyphenated-number (edge)
  (let ((start-pos (pos-edge-starts-at edge))
        (end-pos (pos-edge-ends-at edge))
        numbers  num-pos  num-edge  next-pos)

    ;; we know that this edge consists of some number of digit-sequence
    ;; words interspersed with hyphen words. Since we know the length
    ;; of each constituents, we don't have to do any large calculations

    (setq num-pos start-pos)
    (loop 
      (setq num-edge (1st-preterminal-at num-pos))

      (if (eq category::digit-sequence (edge-category num-edge))
        (push (edge-left-daughter num-edge) numbers)
          ;; n.b. not using the number object in the referent field
          ;; because it doesn't remember the string and we're going to
          ;; to have to use it (or the equiv) to do the decomposition later
        (break "Expected this edge to be a digit-sequence:~%  ~A" num-edge))

      (when (eq end-pos (setq next-pos (chart-position-after num-pos)))
        (return-from extract-numbers-from-hyphenated-number
          (nreverse numbers)))

      ;; jump over the hyphen
      (setq num-pos (chart-position-after next-pos)))))
      



;;;-------------------------------------------------
;;; The "number" of the document -- the DOCNO field
;;;-------------------------------------------------

(define-context-variable *article-number* nil
  "This will be bound to the value of the DD field in a DCI or
   Tipster article.  It is a #<number/obj> in Tipster.")


;;;------------------------------
;;; cases for getting the number
;;;------------------------------

(defun pull-document-number-out-of-edge-sequence (start-pos end-pos)
  )

(defun pull-out-document-number-from-edge (edge)
  ;; called from Analyze-segment-as-article-source and returns what
  ;; will be the referent of the edge that spans the sgml-delimited
  ;; edge over the article's source field.
  (let ((ref (edge-referent edge)))
    (if ref
      (then
        (setq *article-number* ref)
        ref )
      :no-referent-computed-for-document-number-edge)))



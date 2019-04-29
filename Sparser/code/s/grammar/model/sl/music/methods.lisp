;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018-2019 SIFT, LLC.
;;;
;;;     File:  "methods"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  April 2019

;; Initiated 9/3/18 for composition methods used in Museci sentences
;; to avoid any gratuitous clash with bio. 

(in-package :sparser)

;;--- "beat 2"

(def-k-method compose ((index category::number)
                       (item category::part-of-a-sequence))
  ;; Called from make-ordinal-item
  (tr :number+part-of-a-sequence index item)
  (let ((ordinal (nth-ordinal index)))
    (unless ordinal
      (push-debug `(,index))
      (error "no ordinal defined for ~a ??" index))
    (compose ordinal item)))

(def-k-method compose ((index category::ordinal)
                       (item category::part-of-a-sequence))
  (tr :ordinal+part-of-a-sequence index item)
  (let ((result (bind-variable 'position index item)))
    result))

;;--- "beats 1 and 2"
(def-k-method compose ((index category::collection) ;; "1 and 2"
                       (item category::part-of-a-sequence)) ;; "beats"
  ;; same pattern, so called by make-ordinal-item
  (declare (special category::number))
  (tr :collection+items index item)

  (unless (itypep item 'plural) ;; "beats"
    (error "Expected item (i~a) to be plural" (indiv-uid item)))
  ;; distribute the head across the collection
  ;; N.b. in this form it's a general procedure
  (let ((items-type (itype-of item)))
    (let ((new-items
           (loop for n in (value-of 'items index)
              as i = (make/individual items-type nil)
              collect (compose n i))))
      ;;(break "new items ~a" new-items)
      (let ((new-collection
             (define-or-find-individual 'collection
                 :items new-items
                 :number (length new-items)
                 :type items-type)))
          new-collection))))



;; "beat 2 of measure 1."

(def-k-method compose ((part category::part-of-a-sequence)
                       (whole category::partonomic))
  (tr :part-of-a-sequence+partonomic part whole)
  (when (compatible-with-specified-part-type part whole)
    (unless (value-of 'sequence part)
      (setq part (bind-variable 'sequence whole part))
      part)))


;; "before beat 2 of measure 1."
(def-k-method compose ((sequencer category::before)
                       (seq category::part-of-a-sequence))
  ;; called from make-pp
  ;;/// find a nice parameterization so we have a common core
  ;; for the other sequencers -- else dispatch inside here
  ;; and make the signature on sequencer
  (let ((s (value-of 'sequence seq))
        (index-pos (value-of 'position seq)))
    (tr :sequencer+part-of-a-sequence sequencer seq)
    (when s ;; returning nil will fail this option
      (let ((subseq
             (define-or-find-individual 'subseq-up-to
                 :type (itype-of seq)
                 :reference-sequence s
                 :index index-pos)))
        subseq))))


;; "below C4"




;; (p "between beats 1 and 3")

(def-k-method compose ((op category::between)
                       (bounds category::collection))
  ;; called from make-pp
  (tr :between+collection op bounds)
  (let ((count (value-of 'number bounds))
        (items (value-of 'items bounds)))
    (when (and (= count 2)
               (itypep (car items)
                       category::part-of-a-sequence))
      ;;/// should be possible to condition on the
      ;; type of the items in a collection like in Java.
      (let* ((i1 (first items))
             (i2 (second items))
             (p1 (value-of 'position i1))
             (p2 (value-of 'position i2))
             (type (itype-of i1))
             (s (value-of 'sequence i1)))
        ;; Unless a reference sequence was given
        ;; ("between beats 1 and 3 of measure 2")
        ;; s will be nil. Can't bind things to nil
        (unless s
          (setq s (find-or-make-individual 'sequence :type type)))
        (define-or-find-individual 'subseq-both-ends
            :type type
            :reference-sequence s
            :index p1
            :end-index p2)))))


;; "quarter note"

(def-k-method compose ((fraction category::fractional-term)
                       (note category::abstract-note))
  ;; called from the noun-noun-compound syntax function
  (tr :fraction+note fraction note)
  (bind-variable 'duration fraction note))






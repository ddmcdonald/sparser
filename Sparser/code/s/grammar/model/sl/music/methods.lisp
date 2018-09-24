;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2018 SIFT, LLC.
;;;
;;;     File:  "methods"
;;;   Module:  "grammar/model/sl/music/"
;;;  version:  September 2018

;; Initiated 9/3/18 for composition methods used in Museci sentences
;; to avoid any gratuitous clash with bio. 

(in-package :sparser)

;;--- "beat 2"

(def-k-method compose ((index category::number)
                       (item category::part-of-a-sequence))
  (tr :number+part-of-a-sequence index item)
  (let ((ordinal (nth-ordinal index)))
    (unless ordinal
      (push-debug `(,index)) (break "No ordinal"))
    (compose ordinal item)))

(def-k-method compose ((index category::ordinal)
                       (item category::part-of-a-sequence))
  (tr :ordinal+part-of-a-sequence index item)
  (let ((result (bind-variable 'position index item)))
    result))

(def-k-method compose ((index category::collection)
                       (item category::part-of-a-sequence))  
  (declare (special category::number))
  ;; have to do our own check                       
  (when (eq (value-of 'type index) category::number)
    ;; if the index is a collection then the item
    ;; is probably plural, which for the moment makes
    ;; it a collection.
    (let ((item-is-a-collection? (itypep item 'collection)))
      (let ((new-items
             (if item-is-a-collection?
               (let ((items-type (value-of 'type item)))
                 (loop for n in (value-of 'items index)
                    as i = (make/individual items-type nil)
                    collect (compose n i)))               
               (loop for n in (value-of 'items index)
                  collect (compose n item)))))
        ;;(push-debug `(,new-items))
        (let ((new-collection
               (define-or-find-individual 'collection
                   :items new-items
                   :number (length new-items)
                   :type category::number)))
          new-collection)))))



;; "beat 2 of measure 1."

(def-k-method compose ((part category::part-of-a-sequence)
                       (whole category::partonomic))
  (tr :part-of-a-sequence+partonomic part whole)
  (when (compatible-with-specified-part-type part whole)
    (unless (value-of 'sequence part)
      (setq part (bind-variable 'sequence whole part))
      part)))


;; "before "beat 2 of measure 1."
(def-k-method compose ((sequencer category::sequencer)
                       (seq category::part-of-a-sequence))
  ;; ///Should select the kind of subseq according what
  ;; preposition is used, but they're not elevated
  ;; to the choice of sequence category they go with.
  (let ((s (value-of 'sequence seq))
        (index-pos (value-of 'position seq)))
    (tr :sequencer+part-of-a-sequence sequencer seq)
    (when s ;; returning nil will fail this option
      ;;(break "type of subseq?")
      (let ((subseq
             (define-or-find-individual 'subseq-up-to
                 :type (itype-of seq)
                 :reference-sequence s
                 :index index-pos)))
        subseq))))


(def-k-method compose ((op category::between)
                       (bounds category::collection))
  (let ((count (value-of 'number bounds))
        (items (value-of 'items bounds)))
    ;;/// type on the collection is 'number', which is weird
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
        (break "check values")
        (define-or-find-individual 'subseq-both-ends
            :type type
            :reference-sequence s
            :index p1
            :end-index p2)))))
        






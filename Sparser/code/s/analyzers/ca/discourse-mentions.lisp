;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  discourse"mentions"
;;;   Module:  "analyzers;CA:"
;;;  Version:  1.0 February 2016
;;;


(defvar *lattice-individuals-to-mentions* (make-hash-table :size 10000)
  "Maps from description lattice individuals to a push-list of 
  the places they have been mentioned, encoded as 'mention'
  objects.")

(defvar *lattice-individuals-mentioned-in-paragraph* nil
  "List of mentions within the current paragraph. Most recent
   first. Mostly needed as a resource to 'long-term-ify' 
   mention locations, but may have other uses such as mergine
   with or replacing the sentence list of individuals.")

(defmethod get-history-of-mentions ((i individual))
  (gethash i *lattice-individuals-to-mentions*))

(defvar *lattice-individuals-mentioned-in-paragraph* nil
  "List of mentions within the current paragraph. Most recent
   first. Mostly needed as a resource to 'long-term-ify' 
   mention locations, but may have other uses such as mergine
   with or replacing the sentence list of individuals.")

(defclass discourse-mention ()
  ((di :initarg :i :accessor base-description
    :documentation "Backpointer to the individual which is the base description")
   (ci :initarg :ci :accessor contextual-description
       :documentation "Backpointer to the individual which is the contextually revised description")
   (edge :initarg :ei :accessor mention-edge)
   (location-in-paragraph :initarg :loc :accessor mentioned-where
    :documentation "An encoding of the location at which
     this mention occurred. Given the present implementation,
     we can use chart positions within a paragraph (the ends
     of the edge over the individual), but need to convert if 
     the paragraph is long enough to wrap the chart.")
   (location-in-article :initarg :article :accessor mentioned-in-article-where
    :documentation "When reading a text represented as an
     article, this encodes the location of the sentence that
     the mention is part of in the style of table-of-contents label")
   (subsumes :initform nil :accessor subsumes-mention
    :documentation "If the edge for this mention extends
     the edge of the previous mention (i.e. we're walking
     up a head line), then this points to that mention.")
   (subsumed-by :initform nil :accessor subsumed-by-mention
    :documentation "Inverse of subsumes"))
  (:documentation "Records a location in the text where 
   a particular description lattice individuals has been
   mentioned. Each different location corresponds to a
   different mention, even when subsuming edges are involved."))

(defmethod print-object ((m discourse-mention) stream)
  (print-unreadable-object (m stream) ;; not :type t
    (let ((i (base-description m))
          (location (mentioned-where m)))
      (format stream "i~a " (indiv-uid i))
      (cond
       ((consp location) ;; w/in paragraph
        (typecase (car location)
          (position
           (format stream "p~a p~a"
                   (pos-token-index (car location))
                   (pos-token-index (cdr location))))
          (integer
           (format stream "~a ~a"
                   (car location) (cdr location)))
          (otherwise
           (format stream " ill-formed location"))))
       (t
        (format stream "?"))))))

(defmethod start-pos ((m discourse-mention))
  ;;(start-pos (mention-edge m))
  (car (mentioned-where m))
)

(defmethod end-pos ((m discourse-mention))
  ;;(end-pos (mention-edge m))
  (cdr (mentioned-where m)))

(defmethod start-pos ((e edge))
  (pos-edge-starts-at e))

(defmethod end-pos ((e edge))
  (pos-edge-ends-at e))

(defun update-mention-links (edge)
  ;; to be defined
  edge
  )

(defun update-instance-within-sequence (new-mention old-mention edge)
  ;; Have to replace the old individual+edge pair since
  ;; with the dl protocol this is a new individual, not an
  ;; established individual with a new spanning edge

  (declare (special *lifo-instance-list*))

  (push-debug `(,new-mention ,old-mention ,edge))

  (let* ((redundant-instance (pop *lifo-instance-list*))
         ;; Because the individuals are virtually always new, even
         ;; when the edges subsume an established edge on its headine,
         ;; the list will have an 'extra' record on the front that
         ;; we should get rid of. 
         (new-i (base-description new-mention))
         (old-i (base-description old-mention))
         (old-instance ;; pair of old-i and its edge
          (loop for pair in *lifo-instance-list* ;; or assq
            when (eq (car pair) old-i) return pair)))
    (declare (ignore redundant-instance))
    ;;
    ;(unless old-instance
    ;  (error "No record of old mention in *lifo-instance-list*"))
    ;;/// Broken out let us make one modification to ignore this case
    (when old-instance
      ;; We're going to subvert it. If order matters we can
      ;; do that later. Changes the lifo instance list in place.
      (rplaca old-instance new-i)
      (rplaca (cdr old-instance) edge)
      #+ignore(unless (equal old-instance redundant-instance)
        (lsp-break "why is new different?"))
      )))


(defun lattice-individuals-extend-dh-entry (entry i edge)
  ;; Works in terms of mentions rather than regular discourse entries
  ;; that just encode position pairs. If the most recent individual
  ;; of this category is a 'parent' of the new individual and the
  ;; new position subsumes the parent's location then we update
  ;; the sentence-level information about entities/relations (which
  ;; is edge-oriented). In any event we make a new mention for
  ;; this case, chaining the mentions in a case of subsuming edges
  (push-debug `(,entry ,i ,edge))
  (let* ((top-mention (car entry))
         (top-instance (base-description top-mention)))
    (tr :extending-dh-entry i)
    (push-debug `(,top-mention ,top-instance)) ;(lsp-break "mentions")
    ;; (setq top-mention (car *) top-instance (cadr *))

    ;; If we've referred to this head line referent twice in a row
    ;; then there's either a subsuming edge case or something like
    ;; a reflexive or possessive prooun (where the location of the
    ;; mention is different than this one), though in those cases there
    ;; are also likely to be interveening referring individuals. 
    (cond ((eq i top-instance)
	   ;; If we're eq to the most recent entry for this category
	   ;; then we have two cases: [1] The edges subsume and this
	   ;; new edge has for some reason not added any properties
	   ;; to its referent, or [2] the edges are disjoint and
	   ;; we have a new mention
	   (cond
	     ((long-term-mention? top-mention)
	      ;;/// tr
	      (make-new-mention entry i edge))
	     ((subsumes-position top-mention edge)
	      (let ((new-loc (encode-mention-location edge)))
		;; "this auto-inhibited fate" w/ no referent for "this"
		(tr :exending-span-of-mention top-mention edge)
		(setf (mentioned-where top-mention) new-loc)))
	     (t
	      (tr :extending-with-subsuming-instance i edge)
	      (make-new-mention entry i edge))))

          ((as-specific? i top-instance)
           ;; The object was the very last one of its type to be added.
           ;; Check for this being a larger edge over the same object.
           (cond
	     ((long-term-mention? top-mention)
	      ;;/// tr
	      (make-new-mention entry i edge))
	     ((subsumes-position top-mention edge)
	      ;; this instance subsumes the prior one
	      (tr :extending-with-subsuming-instance/dl
		  i top-instance edge)
	      (make-new-mention entry i edge top-mention))
	     (t
	      ;; otherwise it's a new instance
	      (tr :adding-new-instance-of-known-object i edge)
	      (make-new-mention entry i edge))))

          (t
           ;; we make a new mention. The subroutine will appreciate
           ;; whether it has ever been mentioned before.
           (make-new-mention entry i edge)))))


(defmethod subsumes-position ((mention discourse-mention)(edge edge))
  (cond
    ((start-pos mention)
     (let ((last-start# (pos-token-index (start-pos mention)))
	   (last-end# (pos-token-index (end-pos mention)))
	   (start# (pos-token-index (start-pos edge)))
	   (end# (pos-token-index (end-pos edge))))
       (or (eql start# last-start#)
	   (eql end#   last-end#)
	   (and (<= start# last-start#)
		(>= end#   last-end#)))))
    ;;/// are there other posibilties, or is it always nil?
    (t nil)))


(defun create-discourse-mention (i edge)
  "Individuals reside in a description lattice. Every new
  property or relation extends the lattice and in so doing
  creates a new individual that is more specific than
  its predecessor. As a result we need to keep the (new)
  individual as part of the entry, and we need to record
  this mention in a table from the (new) individual so that
  we can search back for correspondences from partial individual
  further up the lattice."
  ;; The discourse entry for a category is a push list, most
  ;; recent (and thereafter most specific) first
  (when (null edge) (lsp-break "null edge in create-discourse-mention"))
  (let* ((location (encode-mention-location edge))
         (toc (location-in-article-of-current-sentence))
         (m (make-instance 'discourse-mention
              :i i :loc location :ei edge :article toc)))
    (setf (gethash i *lattice-individuals-to-mentions*) `(,m))
    (push m *lattice-individuals-mentioned-in-paragraph*)
    (tr :made-mention m)
    (list m)))

(defun make-new-mention (entry i edge &optional subsumed-mention)
  (when (null edge) (lsp-break "null edge in create-discourse-mention"))
  (let* ((location (encode-mention-location edge))
         (m (make-instance 'discourse-mention
              :i i :loc location :ei edge))
         (previous-mentions (get-history-of-mentions i)))
    (tr :making-new-mention m)
    (when subsumed-mention
      (setf (subsumes-mention m) subsumed-mention)
      (setf (subsumed-by-mention subsumed-mention) m)
      (update-instance-within-sequence m subsumed-mention edge))
    (setf (gethash i *lattice-individuals-to-mentions*)
          (cons m previous-mentions))
    (push m *lattice-individuals-mentioned-in-paragraph*)
    (extend-category-dh-entry entry m)
    m ))


(defmethod encode-mention-location (edge)
  "Encodes the location of a mention in terms of the two positions
   that span the individual, i.e. the ends of the edge that added it."
  (cons (start-pos edge) (end-pos edge)))

(defun make-mentions-long-term ()
  (loop for mention in *lattice-individuals-mentioned-in-paragraph*
    do (long-term-ify-mention mention))
  (setq *lattice-individuals-mentioned-in-paragraph* nil))


(defun long-term-mention? (mention)
  "Has this mention been converted to its long-term form?"
  (integerp (car (mentioned-where mention))))


(defun long-term-ify-mention (mention)
  "Same idea a working with a conventional discourse entry
   in that we replace positions with their indexes. 
   The more important long-term location information is position
   in the article, which was recorded when the mention was made."
  (let* ((cons (mentioned-where mention))
         (start-pos (car cons))
         (end-pos (cdr cons)))
    (unless (integerp start-pos) ;; already done
      (setf (mentioned-where mention)
            (cons (pos-token-index start-pos)
                  (pos-token-index end-pos))))))


(defun search-mentions-by-position (mentions edge)
  (let ((start-pos (start-pos edge)))
    ;;/// 9/13/15 probably an ad-hoc fn we can later dispense with
    ;; Used by long-term-ify/individual
    (loop for m in mentions
       when (eq (start-pos m) start-pos) return m)))


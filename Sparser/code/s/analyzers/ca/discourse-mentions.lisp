;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  discourse"mentions"
;;;   Module:  "analyzers;CA:"
;;;  Version:  1.0 February 2016
;;;


(defvar *lattice-individuals-mentioned-in-paragraph* nil
  "List of mentions within the current paragraph. Most recent
   first. Mostly needed as a resource to 'long-term-ify' 
   mention locations, but may have other uses such as mergine
   with or replacing the sentence list of individuals.")

;;; mention-history storage
(defvar *lattice-individuals-to-mentions* (make-hash-table :size 10000)
  "Maps from description lattice individuals to a push-list of 
  the places they have been mentioned, encoded as 'mention'
  objects.")

(defparameter *check-consistent-mentions* nil
  "when set, checks to see that all mentions start and remain consistent
with the referent of their mention-source -- failures have indicated a lack
of proper resetting of context")

(defun mention-history (i)
  (declare (special *lattice-individuals-to-mentions*))
  (gethash i *lattice-individuals-to-mentions*))

(defun (setf mention-history) (mentions i)
  (declare (special *lattice-individuals-to-mentions*))
  (when *check-consistent-mentions*
    (loop for m in mentions do (check-consistent-mention m)))
  (setf (gethash i *lattice-individuals-to-mentions*) mentions))

(defun m# (uid)
  (declare (special *lattice-individuals-to-mentions*))
  (maphash #'(lambda(i ml)
	       (let ((m (find uid ml :key #'mention-uid)))
		 (when m (return-from m# m))))
	   *lattice-individuals-to-mentions*))

(defvar *lattice-individuals-mentioned-in-paragraph* nil
  "List of mentions within the current paragraph. Most recent
   first. Mostly needed as a resource to 'long-term-ify' 
   mention locations, but may have other uses such as mergine
   with or replacing the sentence list of individuals.")
(defparameter *mention-uid* 0)
(defclass discourse-mention ()
  ((uid :initarg :uid :accessor mention-uid)
   (di :initarg :i :accessor base-description
    :documentation "Backpointer to the individual which is the base description")
   (ci :initarg :ci :accessor contextual-description
       :documentation "Backpointer to the individual which is the contextually revised description")
   (restriction :accessor mention-restriction)
   (non-dli-modifiers :accessor mention-non-dli-modifiers :initform nil) ;; the determiner of a NP -- not included in the interpretation of the NP when discourse-mentions are used!!
   (source :initarg :ms :accessor mention-source)
   (maximal :initarg :max :accessor maximal? :initform :unknown)
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
      (format stream "m:~s ~s"
	      (mention-uid m)
	      i)
      (cond
	((mention-source m)
	 (format stream " ~s" (mention-source m)))
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

(defmethod contextual-description ((e edge))
  (contextual-description (edge-mention e)))



(defun show-mention (m)
  (list (base-description m) (retrieve-surface-string (base-description m)) (mention-source m)))


(defvar *hal*)
(defun show-mentions ()
  (declare (special *objects-in-the-discourse*))
  (setq *hal* (hal *objects-in-the-discourse*))
  (loop for h in *hal*
     collect
       `(,(car h)
	  ,@(loop for m in (cdr h) when (is-maximal? m)
	       collect (show-mention m)))))

(defmethod is-maximal? ((m discourse-mention))
  (when (and (eq (maximal? m) :unknown)
	     (mention-source m))
    (setf (maximal? m)
	  (cond
	    ((cat-mention? m 'thatcomp)
	     nil)
	    ((cat-mention? m 's)
	     ;; don't want to get ssuper-maximal S edges that include relative clauses or premodifying contextual
	     ;; PPs as in
	     ;; "In untreated cells, EGFR is phosphorylated at T669 by MEK/ERK, which inhibits activation of EGFR and ERBB3"
	     ;; just want EGFR is phosphorylated at T669 by MEK/ERK
	     (or (not (subsumes-mention m))
		 (not (cat-mention? (subsumes-mention m) 's))))
	    (t (max-edge? (mention-source m))))))
  (maximal? m))

(defun cat-mention? (m name-spec)
  (let ((form-cat (and (edge-p (mention-source m))(edge-form (mention-source m)))))
    (and form-cat
	 (if (consp name-spec)
	     (member (cat-name form-cat) name-spec)
	     (eq (cat-name form-cat) name-spec)))))

(defmethod start-pos ((m discourse-mention))
  (car (mentioned-where m)))

(defmethod end-pos ((m discourse-mention))
  (cdr (mentioned-where m)))

(defmethod start-pos ((e edge))
  (pos-edge-starts-at e))

(defmethod start-pos ((c cons))
  (lsp-break "start-pos handed a list"))

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

  (let* (;; Because the individuals are virtually always new, even
         ;; when the edges subsume an established edge on its headine,
         ;; the list will have an 'extra' record on the front that
         ;; we should get rid of. 
         (new-i (base-description new-mention))
         (old-i (base-description old-mention))
         (old-instance ;; pair of old-i and its edge
          (loop for pair in *lifo-instance-list* ;; or assq
            when (eq (car pair) old-i) return pair)))
    (when old-instance
      ;; We're going to subvert it. If order matters we can
      ;; do that later. Changes the lifo instance list in place.
      (rplaca old-instance new-i)
      (rplaca (cdr old-instance) edge)
      )))


(defun lattice-individuals-extend-dh-entry (category i edge)
  (let ((subsumed-mention
	 (if
	  (edge-left-daughter edge)
	  (cond
	    ((and (edge-p (edge-left-daughter edge))
		  (is-dl-child? i (edge-referent (edge-left-daughter edge))))
	     (edge-mention (edge-left-daughter edge)))
	    ((and
	      (edge-p (edge-right-daughter edge))
	      (is-dl-child? i (edge-referent (edge-right-daughter edge))))
	     (edge-mention (edge-right-daughter edge))))
	  (loop for e in (edge-constituents edge)
	     when (is-dl-child? i (edge-referent e))
	     do (return (edge-mention e))))))
    (make-new-mention category i edge subsumed-mention)))
    
		 
(defun is-dl-child? (child? parent?)
  (cond
    ((category-p parent?)
     (itypep child? parent?))
    ((category-p child?)
     ;; should not happen
     nil)
    ((maphash #'(lambda (dlvv sc)
		  (when (eq sc parent?)
		    (return-from is-dl-child? t)))
	      (indiv-uplinks child?))
     t)
    (t nil)))


(defmethod subsumes-position ((mention discourse-mention)(edge edge))
  (cond
    ((start-pos mention)
     (subsumes-interval
      (pos-token-index (start-pos edge))
      (pos-token-index (end-pos edge))
      (pos-token-index (start-pos mention))
      (pos-token-index (end-pos mention))))
    ;;/// are there other posibilties, or is it always nil?
    (t nil)))

(defun update-edge-mention-referent (edge referent)
  ;; the function convert-referent-to-individual
  ;;  changes the referent of an edge from a category to an individual
  ;; we need to update the discourse mention
  (update-mention-referent (edge-mention edge) referent))

(defparameter *dont-check-inconsistent-mentions* nil)
(defun check-consistent-mention (mention)
  (unless
      (or *dont-check-inconsistent-mentions*
	  (not (edge-p (mention-source mention)))
	  (deactivated? (mention-source mention))
	  (as-specific? (base-description mention)
			(edge-referent (mention-source mention))))
    (lsp-break "test-inconsistent-mention-edge-referent got inconsistent edge and interp")))

(defun update-mention-referent (mention referent &optional dont-check-inconsistent)
  (let ((*dont-check-inconsistent-mentions* dont-check-inconsistent))
    (setf (base-description mention) referent)
    (push mention (mention-history referent)) ;;calls check-consistent-mention
    ;; just returning this to help understand traces
    (list mention referent)))

(defun create-discourse-mention (i source)
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
  (when (null source) (lsp-break "null source in create-discourse-mention"))
  (let ((m (make-mention i source)))
    (when (non-dli-mod-for i)
      (pushnew (non-dli-mod-for i) (mention-non-dli-modifiers m))
      (setf (non-dli-mod-for i) nil))
    (push m *lattice-individuals-mentioned-in-paragraph*)
    (tr :made-mention m)
    (list m)))

(defun make-mention (i source)
  (let* ((location (encode-mention-location (if (consp source) (second source) source)))
         (toc (location-in-article-of-current-sentence))
	 (m (make-instance 'discourse-mention
			   :uid (incf *mention-uid*)
			   :i i :loc location :ms source :article toc)))
    (push m (mention-history i)) ;; calls     (check-consistent-mention m)
    (if (edge-p source) (setf (edge-mention source) m))
    m))

(defparameter *edge-forms* nil)

(defun make-new-mention (category i source &optional subsumed-mention)
  (cond
    ((null source) (lsp-break "null source in create-discourse-mention"))
    ((edge-p source) (pushnew (cat-name (edge-form source)) *edge-forms*)))
  (let* ((m (make-mention i source)))
    (tr :making-new-mention m)
    (if subsumed-mention
	(subsume-mention category m source subsumed-mention)
	(push m (discourse-entry category)))
    (push m *lattice-individuals-mentioned-in-paragraph*)
    (if (edge-p source) (setf (edge-mention source) m))
    m ))

(defun subsume-mention (category m source subsumed-mention)
  (setf (subsumes-mention m) subsumed-mention)
  (setf (subsumed-by-mention subsumed-mention) m)
  (update-non-dli-modifiers m subsumed-mention (base-description m))
  ;;categories only list (currently) maximal phrases
  (nsubstitute m subsumed-mention (discourse-entry category))
  (update-instance-within-sequence m subsumed-mention source))

(defun update-non-dli-modifiers (m subsumed-mention i)
  "For the description lattice, some modifiers like determiners and quantifiers are not stored as variables on the individual, but are stored on the mention"
  (setf (mention-non-dli-modifiers m)
	(mention-non-dli-modifiers subsumed-mention))
  (when (non-dli-mod-for i)
    (pushnew (non-dli-mod-for i) (mention-non-dli-modifiers m))
    (setf (non-dli-mod-for i) nil)))

(defun max-edge? (source)
  (declare (special source *all-np-categories* *vp-categories*))
  ;; this cannot be run when the mention is created -- the edge is not yet included in another edge!!
  (or (not (edge-p source))
      (let* ((used-in (edge-used-in source))
	     (uir (and (edge-p used-in)(edge-referent used-in))))
	(declare (special used-in uir))
	(cond
	  ((null used-in) t)
	  ((not (edge-p used-in)) ;; in some cases the edge-used-in field contains a list!!
	   nil)
	  ((and (category-p (edge-form source))
		(member (cat-symbol (edge-form source)) *all-np-categories*))
	   (or
	    (and (individual-p uir)
		 (itypep uir 'collection))
	    (and
	     (not (eq (edge-referent source) uir))
	     (category-p (edge-form used-in))
	     (not (member (cat-symbol (edge-form used-in))
			  *all-np-categories*)))))
	  ((member (edge-form source) *vp-categories*)
	   (not (member (edge-form (edge-used-in source)) *vp-categories*)))
	  (t t)))))

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
                  (pos-token-index end-pos)))
      (setf (mention-source mention) nil))))


(defun search-mentions-by-position (mentions edge)
  (let ((start-pos (start-pos edge)))
    ;;/// 9/13/15 probably an ad-hoc fn we can later dispense with
    ;; Used by long-term-ify/individual
    (loop for m in mentions
       when (eq (start-pos m) start-pos) return m)))


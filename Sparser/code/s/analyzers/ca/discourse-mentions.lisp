;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-2005,2011-2016 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2006-2009 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  discourse"mentions"
;;;   Module:  "analyzers;CA:"
;;;  Version:  June 2016
;;;


(defvar *lattice-individuals-mentioned-in-paragraph* nil
  "List of mentions within the current paragraph. Most recent
   first. Mostly needed as a resource to 'long-term-ify' 
   mention locations, but may have other uses such as mergine
   with or replacing the sentence list of individuals.")

(defvar *maximal-lattice-mentions-in-paragraph* nil
  "Hash-table organized by category of maximal projections mentions from within the current paragraph. Most recent
   first.")

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


(defparameter *mention-uid* 0) ;;/// needs to be reset at some point
;;/// and cross-article and per-article long term has to be
;; worked out

(defclass discourse-mention ()
  ((uid :initarg :uid :accessor mention-uid)
   (di :accessor base-description
    :documentation "Backpointer to the individual which is the base description")
   (ci :accessor contextual-description
       :documentation "Backpointer to the individual which is the contextually revised description")
   (restriction :accessor mention-restriction)
   (non-dli-modifiers :accessor mention-non-dli-modifiers :initform nil) ;; the determiner of a NP -- not included in the interpretation of the NP when discourse-mentions are used!!
   (source :accessor mention-source)
   (maximal :accessor maximal? :initform :unknown)
   (dependencies :initform nil :accessor dependencies)
   (location-in-paragraph :accessor mentioned-where
    :documentation "An encoding of the location at which
     this mention occurred. Given the present implementation,
     we can use chart positions within a paragraph (the ends
     of the edge over the individual), but need to convert if 
     the paragraph is long enough to wrap the chart.")
   (location-in-article :accessor mentioned-in-article-where
    :documentation "When reading a text represented as an
     article, this encodes the location of the sentence that
     the mention is part of in the style of table-of-contents label.
     6/8/16 changed value to a cons of the ToC string and the current
     paragraph. See make-mention")
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
    (let ((i (base-description m)) ;; mention of what individual
          (location (mentioned-where m)) ;; at what paragraph position
          (article-loc (car (mentioned-in-article-where m)))) ;; toc of sentence in doc
      (format stream "m:~s i~a ~a ~a"
	      (mention-uid m)
              (indiv-uid i) (string-for i) article-loc)
      (cond
	((mention-source m)
	 (format stream " ~s" (mention-source m)))
	((consp location) ;; w/in paragraph
	 (typecase (car location)
	   (position
	    (format stream " p~a-p~a"
		    (pos-token-index (car location))
		    (pos-token-index (cdr location))))
	   (integer
	    (format stream " ~a-~a"
		    (car location) (cdr location)))
	   (otherwise
	    (format stream " ill-formed location"))))
	(t
	 (format stream "?"))))))

(defmethod mention-paragraph-location ((m discourse-mention))
  (let ((loc (mentioned-in-article-where m)))
    (when (consp loc)
      (cdr loc))))

(defmethod contextual-description ((e edge))
  (contextual-description (edge-mention e)))

(defmethod contextual-description ((n number))
  (contextual-description (edge-mention (e# n))))

(defun show-mention (m)
  (list (base-description m) ;; individual 
        (retrieve-surface-string (base-description m))
        (mention-source m)))

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
  (make-mention i edge category))
		 
(defun is-dl-child? (child? parent?)
  (cond
    ((category-p parent?)
     (itypep child? parent?))
    ((or (null child?)
         (category-p child?))
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
  (declare (special *dont-check-inconsistent-mentions*))
  (unless *dont-check-inconsistent-mentions*
    (let ((source (mention-source mention)))
      (when (edge-p source)
        (unless (deactivated? source)
          ;; The source is a regular edge in the chart.
          ;; We could get into trouble if the edge resource
          ;; recycled when the mention identity was still
          ;; determined by an edge
          (let ((base-individual (base-description mention))
                (edge-referent (edge-referent (mention-source mention))))
            (unless (as-specific? base-individual ;; sub-dli
                                  edge-referent)  ;; super-dli
              ;; n.b. this stops document reading
              (lsp-break "check-consistent-mention: ~
                         ~%   the base, ~a~
                         ~%   is not as specific as the source, ~a~
                         ~%   in the mention ~a"
                         base-individual edge-referent mention))))))))

(defun update-mention-referent (mention referent &optional dont-check-inconsistent)
  (let ((*dont-check-inconsistent-mentions* dont-check-inconsistent))
    (declare (special *dont-check-inconsistent-mentions*))
    (when mention
      (setf (base-description mention) referent)
      (push mention (mention-history referent)) ;;calls check-consistent-mention
      ;; just returning this to help understand traces
      (list mention referent))))

#+ignore
(defun create-discourse-mention (i source)
  "Individuals reside in a description lattice. Every new
  property or relation extends the lattice and in so doing
  creates a new individual that is more specific than
  its predecessor. As a result we need to keep the (new)
  individual as part of the entry, and we need to record
  this mention in a table from the (new) individual so that
  we can search back for correspondences from partial individual
  further up the lattice."
  ;; Cannonical caller is create-discourse-entry which checks which
  ;; style of individual is being used and dispatches.
  ;; The discourse entry for a category is a push list, most
  ;; recent (and thereafter most specific) first
  (let ((m (make-mention i source)))
    (tr :made-mention m)
    (list m)))

(defun subsumed-mention? (i edge)
  (when (null i)
    (error "null individual in subsumed-mention?"))
  (if (edge-left-daughter edge)
      (cond
	((and (edge-p (edge-left-daughter edge))
	      (is-dl-child? i (edge-referent (edge-left-daughter edge)))
              (not (eq t (edge-mention (edge-left-daughter edge)))))
	 (edge-mention (edge-left-daughter edge)))
	((and (edge-p (edge-right-daughter edge))
	      (is-dl-child? i (edge-referent (edge-right-daughter edge)))
              (not (eq t (edge-mention (edge-right-daughter edge)))))
	 (edge-mention (edge-right-daughter edge))))
      (loop for e in (edge-constituents edge)
	 when (is-dl-child? i (edge-referent e))
            do (return (edge-mention e)))))

(defun edges-under (edge)
  (if (not (edge-p (edge-right-daughter edge)))
      (or (edge-constituents edge)
          (list (edge-left-daughter edge)))
      (list (edge-left-daughter edge)
            (edge-right-daughter edge))))

(defun update-subsumed-mention (subsumed-mention i edge)
  (let* ((source-edge (mention-source subsumed-mention))
         (non-source-edges
          (when (edge-p source-edge)
            (loop for e in (edges-under edge)
                  unless (eq e source-edge)
                  collect e))))
    (when (edge-p source-edge)
      (setf (dependencies subsumed-mention)
            (add-new-dependencies edge
                                  (dependencies subsumed-mention)
                                  non-source-edges
                                  i
                                  (edge-referent source-edge)))
      (setf (edge-mention source-edge) t) ;; remove mention from old edge
      (setf (mention-history (edge-referent source-edge))
            (remove subsumed-mention (mention-history (edge-referent source-edge))))))
  subsumed-mention)

(defun add-new-dependencies (edge old-dependencies edges i ii)
  (declare (special old-dependences edges i ii edge))
  (if
   (itypep i 'collection)
   (if (is-basic-collection? i)
       (add-new-dependencies-for-collection old-dependencies edges i ii)
       nil)       
   (let* ((old-bindings (when (individual-p ii)
                          (indiv-binds ii)))
          (new-bindings
           (unless (and (edge-p (car edges))
                        (eq i (edge-referent (car edges))))
             ;; happens for "Saos2 cells" or "ERK proteins"
             (loop for b in 
                     (when (individual-p i)
                       ;; can be a category in case of infinitives like
                       ;; "to dissociate"
                       (indiv-binds i))
                   unless
                     (or (member
                          (pname (binding-variable b))
                          '(negation modal occurs-at-moment perfect progressive has-determiner))
                         (member b old-bindings :test #'similar-binding ))
                   collect b)))
          (new-dependencies
           (loop for b in new-bindings
                 as e = (find-binding-edge b edges)
                 collect (list (binding-variable b)
                               (cond ((null e) ;; better be a lambda-variable
                                      (unless (or
                                               (eq (binding-value b) **lambda-var**)
                                               (member (pname (binding-variable b))
                                                       '(name uid))
                                               (and (eq (pname (binding-variable b)) 'modifier)
                                                    (itypep (binding-value b) 'xref)))
                                        (lsp-break "no source for binding ~s, and not a lambda-variable, in ~s~%"
                                                   b (sentence-string *sentence-in-core*)))
                                      (binding-value b))
                                     ((typep (edge-mention e) 'discourse-mention)
                                      (edge-mention e))
                                     (t
                                      (lsp-break "~s has no disccourse-mention~%" e)))))))
     (declare (special old-bindings new-bindings new-dependencies binding-edges))
     (when (not (equal (length new-bindings)
                       (length new-dependencies)))
       (lsp-break "binding-edges"))
     (nconc new-dependencies old-dependencies))))

(defun find-binding-edge (b edges)
  (loop for edge in edges
        when (let ((ref (if (is-pp? edge)
                            (identify-pobj edge)
                            (edge-referent edge))))
               (or (eq ref (binding-value b))
                   (eq (get-dli ref) (binding-value b))))
        do (return edge)))

(defun similar-binding (b1 b2)
  (and (eq (binding-variable b1) (binding-variable b2))
       (eq (binding-value b1) (binding-value b2))))

(defun add-new-dependencies-for-collection (old-dependencies edges i ii)
  nil ;; dummy for now
  )

(defun fill-in-mention (m i source)
  (let* ((location
          (encode-mention-location
           (if (consp source) (second source) source)))
         (toc (location-in-article-of-current-sentence)))
    (when (edge-p source)
      (setf (mention-source m) source)
      (setf (edge-mention source) m))
    (setf (base-description m) i)
    (setf (mentioned-where m)
          (encode-mention-location
           (if (consp source) (second source) source)))
    (setf (mentioned-in-article-where m)
          (cons toc *current-paragraph*))))

(defun make-mention (i source &optional category)
  "Individuals reside in a description lattice. Every new
  property or relation extends the lattice and in so doing
  creates a new individual that is more specific than
  its predecessor. As a result we need to keep the (new)
  individual as part of the entry, and we need to record
  this mention in a table from the (new) individual so that
  we can search back for correspondences from partial individual
  further up the lattice."
  ;; Cannonical caller is create-discourse-entry which checks which
  ;; style of individual is being used and dispatches.
  ;; The discourse entry for a category is a push list, most
  ;; recent (and thereafter most specific) first
  (declare (special *current-paragraph* category::prepositional-phrase category))
  (if (null source) (lsp-break "null source in make-mention"))
  ;; either don't create a mention for NPs with category references (like "the cell")
  ;;  or make them have individuals as references
  (if (null category) (setq category (itype-of i)))
  (let* ((subsumed-mention (subsumed-mention? i source))
	 (m (if subsumed-mention
                (update-subsumed-mention subsumed-mention i source)
                (make-instance 'discourse-mention
                               :uid (incf *mention-uid*)))))
    (declare (special m))
    (fill-in-mention m i source)
    (unless subsumed-mention
      (tr :making-new-mention m)
      (push m (mention-history i))) ;; calls (check-consistent-mention m)
    (when (edge-p source)
      (push m *lattice-individuals-mentioned-in-paragraph*)
	(cond (subsumed-mention
	       ;;(subsume-mention category m source subsumed-mention)
               ;;(setf (dependencies m) (dependencies subsumed-mention))
	       (when category
                 (let ((limip
                        (member subsumed-mention
                                (gethash category *maximal-lattice-mentions-in-paragraph*))))
                   (if limip
                       (setf (car limip) m)
                       (else
                         (push m (gethash category *maximal-lattice-mentions-in-paragraph*))
                         ;;(lsp-break "huh -- subsumed-mention not found in paragraph")
                         ;; this happens in some stange, as yet unalyzed cases
                         )))))
	      (t
	       (when category (push m (discourse-entry category)))
               (when (non-dli-mod-for i)
                 (pushnew (non-dli-mod-for i) (mention-non-dli-modifiers m))
                 (setf (non-dli-mod-for i) nil))
	       (unless (eq (edge-form source) category::prepositional-phrase)
		 (push m (gethash category *maximal-lattice-mentions-in-paragraph*))))))
    m))




(defun subsume-mention (category m source subsumed-mention)
  (setf (subsumes-mention m) subsumed-mention)
  (setf (subsumed-by-mention subsumed-mention) m)
  (update-non-dli-modifiers m subsumed-mention (base-description m))
  ;;categories only list (currently) maximal phrases
  (when category (nsubstitute m subsumed-mention (discourse-entry category)))
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
  (unless (long-term-mention? mention)
    (let* ((cons (mentioned-where mention))
           (start-pos (car cons))
           (end-pos (cdr cons))
           (edge (mention-source mention)))
      (setf (mentioned-where mention)
            (cons (pos-character-index start-pos)
                  (pos-character-index end-pos)))
      (when (and edge (edge-p edge))
        (setf (edge-mention edge) nil))
      (setf (mention-source mention) nil))))


(defun search-mentions-by-position (mentions edge)
  (let ((start-pos (start-pos edge)))
    ;;/// 9/13/15 probably an ad-hoc fn we can later dispense with
    ;; Used by long-term-ify/individual
    (loop for m in mentions
       when (eq (start-pos m) start-pos) return m)))


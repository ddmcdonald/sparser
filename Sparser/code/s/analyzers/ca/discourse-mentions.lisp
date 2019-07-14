;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2014-2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  discourse-mentions"
;;;   Module:  "analyzers;CA:"
;;;  Version:  February 2017
;;;

;;;  Code to create and maintain discourse-mentions, which are
;;;  intended to stand for the discourse interpretation of lattice
;;;  individuals in a particular discourse context.  The same
;;;  individual e.g. "the phosphorylation" or even "Ras" may be
;;;  intended to refer to different items in the model, depending on
;;;  where in an article the underlying description is used.  The
;;;  context is initially the edge in a parse, while we are processing
;;;  a sentence, but then becomes the paragraph location as the edges
;;;  are recycled

(in-package :sparser)

(defvar *lattice-individuals-mentioned-in-paragraph* nil
  "List of mentions within the current paragraph. Most recent
   first. Mostly needed as a resource to 'long-term-ify' 
   mention locations, but may have other uses such as mergine
   with or replacing the sentence list of individuals.")

(defvar *maximal-lattice-mentions-in-paragraph* nil
  "Hash-table organized by category of maximal projections mentions 
   from within the current paragraph. Most recent first.")

;;; mention-history storage
(defvar *lattice-individuals-to-mentions* (make-hash-table :size 10000)
  "Maps from description lattice individuals to a push-list of 
  the places they have been mentioned, encoded as 'mention'
  objects.")

(defvar *mention-source-form-categories* (make-hash-table :size 10000))

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

(defun mention-source-form-category (m)
  (declare (special *mention-source-form-categories*))
  (gethash m *mention-source-form-categories*))

(defun (setf mention-source-form-category) (form-cat m)
  (declare (special *mention-source-form-categories*))
  (setf (gethash m *mention-source-form-categories*) form-cat))


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
   (source :accessor mention-source)
   (dependencies :initform nil :accessor dependencies)
   (location-in-paragraph :accessor mentioned-where
                          :documentation "An encoding of the location at which
     this mention occurred. Given the present implementation,
     we can use chart positions within a paragraph (the ends
     of the edge over the individual), but need to convert if 
     the paragraph is long enough to wrap the chart.")
   (location-in-article :accessor mentioned-in-article-where
                        :documentation "When reading a text represented 
     as an article, this encodes the location of the sentence that
     the mention is part of in the style of table-of-contents label.
     6/8/16 changed value to a cons of the ToC string and the current
     paragraph. See make-mention"))
  (:documentation "Records a location in the text where 
   a particular description lattice individuals has been
   mentioned. Each different location corresponds to a
   different mention, even when subsuming edges are involved."))

(defmethod print-object ((m discourse-mention) stream)
  (print-unreadable-object (m stream) ;; not :type t
    (if (slot-boundp m 'di)
        (let ((i (base-description m)) ;; mention of what individual
              (location (mentioned-where m)) ;; at what paragraph position
              (article-loc (when (slot-boundp m 'location-in-article)
                             (car (mentioned-in-article-where m))))) ;; toc of sentence in doc
          (format stream "m:~s i~a ~a ~a"
                  (mention-uid m)
                  (if (individual-p i)
                      (indiv-uid i)
                      i)
                  (if (individual-p i)
                      (string-for i))
                  (or article-loc ""))
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
                (format stream " ~a-~a" (car location) (cdr location)))
               (otherwise
                (format stream " ill-formed location"))))
            (t
             (format stream "?"))))
        (format stream "m:~s"
                (mention-uid m)))))

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
             ,@(loop for m in (cdr h) 
                     collect (show-mention m)))))



(defun cat-mention? (m name-spec)
  (let ((form-cat (and (edge-p (mention-source m))(edge-form (mention-source m)))))
    (and form-cat
	 (if (consp name-spec)
	     (member (cat-name form-cat) name-spec)
	     (eq (cat-name form-cat) name-spec)))))

(defmethod start-pos ((m discourse-mention))
  (car (mentioned-where m)))

(defmethod end-pos ((m discourse-mention))
  (declare (optimize (speed 3)(safety 0)))
  (cdr (mentioned-where m)))

(defmethod start-pos ((e edge))
  (pos-edge-starts-at e))

(defmethod start-pos ((c cons))
  (lsp-break "start-pos handed a list"))

(defmethod end-pos ((e edge))
  (declare (optimize (speed 3)(safety 0)))
  (pos-edge-ends-at e))

(defun update-mention-links (edge)
  (let ((mention (edge-mention edge))
        (interp (edge-referent edge)))
    (when (and (typep mention 'discourse-mention)
               (individual-p interp))
      (pushnew mention (mention-history interp)))))

(defparameter *warn-on-update-edge-mention-referent* nil)

(defun update-edge-mention-referent (edge referent)
  ;; the function convert-referent-to-individual
  ;;  changes the referent of an edge from a category to an individual
  ;; we need to update the discourse mention
  (if (typep (edge-mention edge) 'discourse-mention)
      (update-mention-referent (edge-mention edge) referent)
      (when *warn-on-update-edge-mention-referent*
        (warn "update-edge-mention-referent called on edge with reset referent ~s ~s~%"
              edge referent))))

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
      (update-mention-dependencies mention referent)
      (push mention (mention-history referent)) ;;calls check-consistent-mention
      ;; just returning this to help understand traces
      (list mention referent))))

(defparameter *in-update-mention-dependencies* nil)

(defun update-mention-dependencies (mention referent)
  (let ((*in-update-mention-dependencies* t))
    (declare (special *in-update-mention-dependencies*))
    (update-subsumed-mention mention referent
                             (mention-source mention)
                             t)))

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



(defun is-dl-child? (child? parent?)
  "Is the child a more specific description of the parent?"
  (cond
    ((category-p parent?)
     (itypep child? parent?))
    ((or (null child?) (category-p child?)) ;; should not happen
     nil)
    ((loop for pair in (indiv-uplinks child?)
           when (eq (cdr pair) parent?)
           do (return-from is-dl-child? t))
     t)
    (t nil)))



(defun semantic-edges-under (edge)
  "Return the meaning-carrying edge(s) under this edge"
  (unless (eq 'subject-relative-clause (form-cat-name edge))
    (setq edge (un-embed-edge edge)))
  (remove-if #'(lambda(e) (not (edge-p e))) ;; filters out words
             (edges-under edge)))

(defun un-embed-edge (edge)
  "If this is not a meaning-carrying edge (relevant to mentions),
   then recurse to the appropriate daughter edge and return it instead."
  (cond ((and (syntactically-embedding-edge? edge)
              ;;e31   THERE-EXISTS  1 "Importantly there was " 4
              ;; has a :long-span as a right-edge
              (edge-p (edge-right-daughter edge)))
         (un-embed-edge (edge-right-daughter edge)))
        ((eq (cat-name (edge-category edge))
             'lambda-expression)
         (un-embed-edge (edge-left-daughter edge)))
        (t edge)))

(defun syntactically-embedding-edge? (edge)
  "Was this edge formed simply to accommodate a syntactic marker
   (such as the 'that' of a relative clause), if so, we return
   true, since we expect the semantic content of the edge to be 
   on one of this edge's daughters."
  (and ;;(not (is-basic-collection? (edge-referent edge)))
       (or (member (form-cat-name edge)
                   '(subject-relative-clause thatcomp))
           ;; no longer correct for new han dling of there-exists...
           #+ignore
           (and (eq 'there-exists (cat-name (edge-category edge)))
                (not (eq 'question (form-cat-name edge)))))))

(defun edges-under (edge)
  "Accommodates the variations of where the 'daughter' edge or edges
   will be in different sorts of edges."
  ;; Compare to semantic-edges-under that also filters for edges
  ;; but does more tailored thinking.
  (let ((list-of-edges
         (if (not (edge-p (edge-right-daughter edge))) ;; e.g. unary or long-span
           (or (edge-constituents edge)
               (list (edge-left-daughter edge)))
           (list (edge-left-daughter edge)
                 (edge-right-daughter edge)))))
    (remove-if #'(lambda(e) (not (edge-p e))) list-of-edges)))


(defparameter *mention-individual* nil)
(defparameter *mention-source* nil)

(defparameter *mention-heads* (make-hash-table :size 200000))
(defun mention-head (mention)
  (gethash mention *mention-heads*))

(defun (setf mention-head) (edge mention)
  (setf (gethash mention *mention-heads*) edge))

(defun mention-p (mention)
  (typep mention 'discourse-mention))

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
  (when (null source) (lsp-break "null source in make-mention"))
  (when (null category) (setq category (itype-of i)))
  (let* ((*mention-individual* i)
         (*mention-source* source)
         (subsumed-mention
          (and (or (not (edge-p source))
                   (not (eq (edge-rule source) 'make-ns-pair)))
               (subsumed-mention? i source)))
	 (m (if (and subsumed-mention
                     ;; "which accumulates and can act "
                     ;;  tries to create a mention twice
                     (typep subsumed-mention 'discourse-mention))
                
                (update-subsumed-mention subsumed-mention i source)
                (let ((new-mention
                       (make-instance 'discourse-mention
                                      :uid (incf *mention-uid*))))
                  (setf (mention-head new-mention) source)
                  (setf (dependencies new-mention)
                         (when (individual-p i) ;; no dependencies for categories
                          (create-new-dependencies
                           (indiv-old-binds i)
                           (when (edge-p source) (semantic-edges-under source))
                           (when (edge-p source) source))))
                  new-mention))))
    (declare (special m *mention-individual* *mention-source*))
    (fill-in-mention m i source)
    (unless subsumed-mention
      (tr :making-new-mention m)
      (push m (mention-history i))) ;; calls (check-consistent-mention m)
    (when (edge-p source)
      (pushnew m *lattice-individuals-mentioned-in-paragraph*)
      (when category (pushnew m (discourse-entry category)))
      (unless (eq (edge-form source) category::prepositional-phrase)
        (pushnew m (gethash category *maximal-lattice-mentions-in-paragraph*))))
    (when (and (current-sentence)
               (not (member m (sentence-mentions (contents (current-sentence))))))
      (setf (sentence-mentions (contents (current-sentence)))
            (cons m (sentence-mentions (contents (current-sentence))))))
    m))

(defparameter *dont-check-dependencies* nil)

(defun update-subsumed-mention (subsumed-mention i edge
                                &optional dont-check-dependencies)
  (declare (special *respan-internal*))
  (let* ((*dont-check-dependencies* dont-check-dependencies)
         (source-edge (mention-source subsumed-mention))
         ;; Q. why do we ignore the source-edge?
         ;; A. It avoids circular structures (e.g. in "Fyn, Fyn, is ..."
         (non-source-edges
          (remove source-edge (semantic-edges-under edge))))
    (declare (special *dont-check-dependencies*))
    (when (edge-p source-edge)
      (setf (dependencies subsumed-mention)
            (add-new-dependencies edge
                                  (dependencies subsumed-mention)
                                  non-source-edges
                                  i
                                  (edge-referent source-edge)))
      (unless (or *in-update-mention-dependencies*
                  *respan-internal*)
        ;; unless we are simply revising the existing dependency in place
        ;; remove mention from old edge
        (setf (edge-mention source-edge) t))
      (setf (mention-history (edge-referent source-edge))
            (remove subsumed-mention
                    (mention-history
                     (edge-referent source-edge))))))
  subsumed-mention)

(defun embedded-statement? (edge)
  (let ((statement (value-of 'statement (edge-referent edge))))
    ;; is this an edge like a whethercomp or a wh-question that
    ;;  embeds the meaning of a lower edge as the value of the
    ;;  statement variable
    ;; THIS IS NOT A SUBSUMING EDGE
    (and statement
         (loop for ee in (edges-under edge)
               thereis (eq (edge-referent ee) statement)))))

(defun subsumed-mention? (i edge)
  "Is this edge an additional instance of i that subsumes the immedidately
   prior mention of i? Cannonical situation is walking up a head line,
   where each progressively higher edge is a (more specific) reference
   to i."
  (declare (special edge category::wh-question))
  (cond ((null i)
         (error "null individual in subsumed-mention?"))
        ((and (member (edge-rule edge) '(make-predication-edge))
              (typep (edge-mention (edge-left-daughter edge))
                     'discourse-mention))
         (return-from subsumed-mention?
           (edge-mention (edge-left-daughter edge))))
        ((and (not (itypep i category::wh-question))
              (embedded-statement? edge))
         (return-from subsumed-mention? nil)))

  (let ((un-embedded-edge (un-embed-edge edge)))
    (declare (special un-embedded-edge category::wh-question))
    (when (and (not (eq edge un-embedded-edge))
               (typep (edge-mention un-embedded-edge) 'discourse-mention)
               (or (eq (edge-referent edge)(edge-referent un-embedded-edge))
                   (is-dl-child? (edge-referent edge)
                                 (edge-referent un-embedded-edge))))
      ;; this happens when we are lifting to a that-comp
      ;; as in "that the RBD of PI3KC2β binds nucleotide-free Ras"
      (return-from subsumed-mention?
        (edge-mention un-embedded-edge)))
    (setq edge un-embedded-edge)
    (cond ((and (itypep i category::wh-question)
                (typep (edge-mention edge) 'discourse-mention))
           (edge-mention edge))
          ((member (edge-rule edge)
                   '(:conjunction/identical-form-labels
                     :conjunction/identical-adjacent-labels))
           (edge-mention edge))
          ((member (form-cat-name edge)
                   '(subject-relative-clause thatcomp))
           (safe-edge-mention (edge-right-daughter edge)))
          ((and (cfr-p (edge-rule edge))
                (equal '(:funcall create-partitive-np left-referent right-referent)
                       (cfr-referent (edge-rule edge))))
           (safe-edge-mention (edge-right-daughter
                               (edge-right-daughter edge))))
          ((member (edge-rule edge) '(knit-parens-into-neighbor))
           (safe-edge-mention (edge-left-daughter edge)))        
          (t
           (let ((left (subsumed-mention-edge? i (edge-left-daughter edge)))
                 (right (subsumed-mention-edge? i (edge-right-daughter edge))))
             ;; which edge is the head line? 
             (cond
               (left
                (unless right ;; no real subsumption -- can't find head
                  (edge-mention left)))
               (right (edge-mention right))
               (t
                (let ((subsumed-edges
                       (loop for e in (edge-constituents edge)
                             when (and (edge-p e)
                                       ;; in two-part-label, the constituents
                                       ;; include a WORD!
                                       (is-dl-child? i (edge-referent e))
                                       (typep (edge-mention e) 'discourse-mention))
                             collect e)))
                  (if (and subsumed-edges
                           (null (cdr subsumed-edges)))
                      (edge-mention (car subsumed-edges))
                      nil)))))))))

(defun subsumed-mention-edge? (i edge)
  "Is the edge a more-specific reference to i?"
  (and (edge-p edge)
       (not (eq t (edge-mention edge)))
       (or
        (is-dl-child? i (edge-referent edge))
        ;;(subsumed-with-disambiguation i (edge-referent edge))
        )
       edge))


(defun subsumed-with-disambiguation (extended base)
  (let ((extended-binds (indiv-binds extended))
        (base-binds (indiv-binds base)))
    (loop for eb in (cdr extended-binds)
          as bb in base-binds
          always
            (let ((eb-var (binding-variable eb))
                  (bb-var (binding-variable bb)))
              
              (and (eq (binding-value eb) (binding-value bb))
                   (or (eq eb-var bb-var)
                       (and (disjunctive-lambda-variable-p bb-var)
                            (member eb-var (dvar-variables bb-var)))))))))
  

(defun safe-edge-mention (edge)
  "return the edge-mention of the edge, provided that it is a discourse-mention"
  (let ((mention (edge-mention edge)))
    (when (typep mention 'discourse-mention) mention)))


(defun create-new-dependencies (new-bindings edges top-edge)
  (declare (special **lambda-var**))
  (let ((deps
         (loop for b in new-bindings
               collect
                 (let* ((value (binding-value b)))
                   (cond ((or (referential-category-p value)
                           (eq value **lambda-var**)
                           (stringp value)
                           (word-p value)
                           (polyword-p value)
                           (numberp value))
                          `(,(binding-variable b) ,value))
                       ((and (eq 'COUNT
                            ;; if we don't do this, the count value
                            ;; ends up as a number individual instead
                            ;; of a literal number which can cause problems
                                 (pname (binding-variable b)))
                             ;; making sure to only do this if the
                             ;; value is an individual -- hopefully
                             ;; all counts are now numbers so this
                             ;; branch of the cond is moot, but I'm
                             ;; not going to fully test that yet
                             (individual-p value))
                        `(,(binding-variable b) ,(value-of 'value value)))
                       (t
                        (create-dependency-pair
                         b
                         (find-binding-dependency value edges top-edge b))))))))
    (declare (special deps))
    #+ignore
    (when (eq 10 (edge-position-in-resource-array top-edge))
      (lsp-break "deps"))
    deps))
    

;;(defparameter  *no-source-for-binding-action* :warn)
(defparameter  *no-source-for-binding-action* :none)
;;(defparameter  *no-source-for-binding-action* :break)

(defun add-new-dependencies (edge old-dependencies edges i ii)
  (declare (special old-dependences edges i ii edge))
  (when (individual-p i)
    (if (is-basic-collection? i)
        (add-new-dependencies-for-collection old-dependencies edge edges i ii)
        (basic-add-new-dependencies edge old-dependencies edges i ii))))

(defun basic-add-new-dependencies (edge old-dependencies edges i ii)
  (let* ((new-bindings
          (unless (and edges (eq i (edge-referent (car edges))))
            ;; happens for "Saos2 cells" or "ERK proteins"
            (loop for b in (indiv-binds i)
                  ;; can be a category in case of infinitives like ;; "to dissociate"
                  unless (member b old-dependencies :test #'similar-binding&dependency )
                  collect b)))
         (new-dependencies (create-new-dependencies new-bindings edges edge)))
    (declare (special old-bindings new-bindings new-dependencies binding-edges))
    (when (not (equal (length new-bindings)
                      (length new-dependencies)))
      (lsp-break "binding-edges"))
    (loop for dep in new-dependencies
          do
            (pushnew dep old-dependencies :test #'equal))
    old-dependencies))


(defun find-binding-dependency (value edges top-edge &optional b &aux (top-ref (edge-referent top-edge)))
  (declare (special top-edge category::prepositional-phrase category::protein-family))
  (cond ((and b (eq (pname (binding-variable b)) 'items))
         (find-binding-dependencies-for-items value edges top-edge))
        ((and b (eq (pname (binding-variable b)) 'has-determiner))
         value)
        ((and (individual-p top-ref)
              (or
               (and (current-script :biology)
                    (itypep top-ref category::protein-family)
                    b
                    (member (pname (binding-variable b))
                            '(family-members uid name count)))
               (itypep top-ref 'relativized-prepositional-phrase))
              ;; guard against that-rel = t binding
              (itypep value 'comparative-attribution)
              ;; e.g. "longer periods" -- the comparative is constructed whole cloth -- DAVID
              (itypep value category::prepositional-phrase)
              ;; "Only in conditions where RAS is constitutively active "
              ) ;; NEED TO WORK WITH DAVID HERE
         nil)
        ((lambda-variable-p value)
         nil)
        ((eq (pname (binding-variable b)) 'wh-element)
         (let ((wh-mention (find-mention-for-wh-element value top-edge)))
           (when (typep wh-mention 'discourse-mention)
             (mention-source wh-mention))))
        (t
         ;;new code
         (or
          (find-binding-dependency-in-sentence-mentions value)
          
                                           
          (loop for edge in edges
                as ref-edge = (find-dependent-edge edge)
                as ref = (when ref-edge (edge-referent ref-edge))
                when (and ref (dli-eq? ref value))
                do (return ref-edge))
          ;; last-ditch effort caused by change in interpretation of
          ;;  a previously ambiguous variable, which causes the
          ;;  subsumed-mention to be missed
          (loop for edge in edges
                as ee = (and (typep (edge-mention edge) 'discourse-mention)
                             (loop for d in (dependencies (edge-mention edge))
                                   when (and (typep (second d) 'discourse-mention)
                                             (dli-eq? value (base-description (second d))))
                                   do (return (mention-source (second d)))))
                do (when ee (return ee)))
          (when b
            (check-plausible-missing-edge-for-dependency b top-edge))))))

(defun find-binding-dependency-in-sentence-mentions (value)
  (loop for m in (sentence-mentions (current-sentence))
        ;; we sometimes create referents that do not correspond to combining
        ;;  contiguous edges in the chart, and for which it is difficult to
        ;;  create a meaningful edge (e.g. for questions and for
        ;;  PPs created from null NPs in relative clauses)
        ;; All mentions are now recorded in the sentence, whether or not
        ;;  they have edges, and thus can be found in this fashion.
        when (eq value (base-description m))
        do (return m)))


(defun find-mention-for-wh-element (*wh-element* top-edge)
  (declare (special *wh-element*))
  (let (*dep-mention*)
    (declare (special *dep-mention*))
    (traverse-edges-below
     top-edge
     #'(lambda(edge)
         (declare (special *wh-element* *dep-mention*))
         (when (and (edge-mention edge)
                    (typep (edge-mention edge) 'discourse-mention)
                    (eq (base-description (edge-mention edge))
                        *wh-element*))
           (setq *dep-mention* (edge-mention edge)))))
    *dep-mention*))

(defun find-binding-dependencies-for-items (items edges top-edge)
  (loop for item-sem in items collect
          (or (find-conjunction-item-mention item-sem top-edge)
              (car (mention-history item-sem))
              item-sem)))

(defun find-conjunction-item-mention (item-sem edge)
  (cond ((eq item-sem (edge-referent edge))
         (edge-mention edge))
        ((is-basic-collection? (edge-referent edge))
         (loop for e in (edges-under edge)
               when (edge-p e) ;; can have a left-daughter which is a word
               do
                 (let ((mention (find-conjunction-item-mention item-sem e)))
                   (when mention (return mention)))))
        (t nil)))

(defun find-dependent-edge (edge)
  "PPs are never referent edges (except possibly for some adjuncts, when David finishes)
so we return the edge for the POBJ"
  (if (is-pp? edge)
      (find-pobj-edge edge)
      edge))
  

(defun dli-eq? (ref value)
  ;; because a value might have been a category and then converted
  ;;  to the dli individual representing the bare category
  (if (and (or (individual-p ref)(referential-category-p ref))
           (or (individual-p value)(referential-category-p value)))
      (eq (get-dli ref) (get-dli value))
      (eq ref value)))

(defun dependency-pair-variable (dp) (car dp))
(defun dependency-pair-value (dp) (second dp))

(defun create-dependency-pair (b e)
  (declare (optimize (debug 3) (speed 1))
           (special b e))
 ;;sp-break "cdp")
  `(,(binding-variable b) ;; dependency-pair-variable
     ;; dependency-pair-value
     ,(cond ((typep e 'discourse-mention) e)
            ((consp e) e)
            ((or (null e)
                 (member (pname (binding-variable b))
                         '(has-determiner
                           ;; the ones below are for two-part-label
                           part-two part-one
                           ;; the ones below are for hyphenated-pairs
                           left right prep)))
             (if (and (null e)
                      (individual-p (binding-value b))
                      ;; in general we want to block looking at te history for
                      ;;  simple named items without other predications --
                      ;;  a good case in point is amino-acids...
                      ;; this next test is a stand-in for a better test,
                      ;;  (but it is enough to avoid an infinite recursion in
                      ;; "the arginine corresponding to r28 in btk"
                      ;; where "arginine" and "r" get confused and create a loop
                      (not (member (pname (binding-variable b))
                                   '(amino-acid)))
                      (mention-history (binding-value b)))
                 (cond ((or
                         (itypep (binding-value b) 'be)
                         (and (lambda-variable-p (binding-variable b))
                             (member (pname (binding-variable b))
                                     '(has-determiner))))
                        (binding-value b))
                       (t ;;(lsp-break "foo")
                        ;;was (binding-value b) 
                        (car (mention-history (binding-value b)))))
                 (binding-value b)))
            ((and (member (edge-mention e) '(t nil))
                  (individual-p (edge-referent e))
                  ;; happens when e is a :digit-sequence
                  ;; under a hyphenated-number
                  ;; as in "A synthetic peptide encoding amino acids 824-832"
                  (itypep (edge-referent e) '(:or number adverb be)))
             (edge-referent e))
            ((typep (edge-mention e) 'discourse-mention)
             (edge-mention e))
            ((referential-category-p (edge-referent e))
             (edge-referent e))             
            (t
             (let ((str (current-string)))
               (case *no-source-for-binding-action*
                 (:none nil)
                 (:break
                  (lsp-break "~s has no discourse-mention in ~s ~%" e str))
                 (:warn (warn "~s has no discourse-mention in ~s ~%" e str))
                 ))
             (binding-value b)))))


(defparameter *missing-mention-action* nil)
;;(defparameter *missing-mention-action* :warn)
;;(defparameter *missing-mention-action* :break)

(defun check-plausible-missing-edge-for-dependency (b edge)
  (let ((val (binding-value b)))
    (cond ((acceptable-missing-mention? b edge val)
           ;; these are expected cases and are no issue at all
           nil)
          ((individual-p val)
           ;; these are cases which should be checked out to see what the full circumstance is
           (case *missing-mention-action*
             (:warn
              (warn "~%can't find source edge for ~s in ~s within sentence: ~s~%"
                    val *mention-individual*  (current-string)))
             (:break
              (lsp-break "~%can't find source edge for ~s in ~s within sentence: ~s~%"
                         val *mention-individual* (current-string)))
             (t nil))
           nil)
          (t
           (case *no-source-for-binding-action*
             (:none nil)
             (:break (lsp-break "no source for binding ~s in ~s~%"
                                b (current-string)))
             (:warn (warn "no dependency ~s; rule: ~s ~% in ~s~%"
                          b
                          (edge-rule edge)
                          (current-string))))))
    nil))

(defun acceptable-missing-mention? (b edge val)
  (or *dont-check-dependencies*
      ;; these are types of binding-values that don't have to be reinterpreted
      (member
       (pname (binding-variable b))
       '(name uid ;; done in basic word-level rules
         ;; these next are done in tense-aspect attachment
         negation modal occurs-at-moment perfect progressive
         past present
         ;; these are known to be referential-categories
         ;;  used for syntactic marking
         has-determiner prep
         ;; these happen in badly handled hyphenated phrases -- ignore them
         left right
         ;; comparative-predication             ;; happens in comparatives -- wait for DAVID to fix
         number                           ;; occurs in collections
         amino-acid                       ;; happens in residues
         new-amino-acid position ;; happens in point-mutations
         quantifier
         ))

      ;; this test is to handle complex structure in lexical edges...
      ;; like "phosphoserine"
      (eq edge (lexical-edge-at (start-pos edge)))
      (member (edge-rule edge)
              '(sdm-span-segment make-ns-pair
                resolve-protein-prefix
                make-edge-over-mutated-protein
                :reify-residue
                :reify-point-mutation-and-make-edge
                MAKE-POLAR-PARTICIPLE-QUESTION
                MAKE-POLAR-ADJECTIVE-QUESTION))
      (and (individual-p (edge-referent edge))
           (itypep (edge-referent edge) 'phosphorylated-amino-acid))
      (and (cfr-p (edge-rule edge))
           (equal '(:FUNCALL INTERPRET-PP-AS-HEAD-OF-NP LEFT-REFERENT RIGHT-REFERENT)
                  (cfr-referent (edge-rule edge))))
      (member (cat-name (edge-category edge))
              '(there-exists))
               
      (and (eq (pname (binding-variable b)) 'type)
           (itypep *mention-individual* 'collection))
      ;; as in "the size of the modification"
      (and (eq (pname (binding-variable b)) 'attribute)
           (itypep *mention-individual* 'quality-predicate))
      ;; "One hundred and seventy (79.4%)"
      (and (eq (pname (binding-variable b)) 'value)
           (itypep *mention-individual* 'multiplier))
      ))

(defun similar-binding&dependency (b1 dep)
  (and (dli-eq? (binding-value b1)
                (if (typep (second dep) 'discourse-mention)
                    (base-description (second dep))
                    (second dep)))
       (eq (binding-variable b1) (car dep))
       #+ignore
       (and (disjunctive-lambda-variable-p (binding-variable b2))
            (member (binding-variable b1)
                    (print 
                     (dvar-variables (binding-variable b2)))))))

(defun add-new-dependencies-for-collection (old-dependencies top-edge edges i ii)
  (if (null old-dependencies)
      (create-new-dependencies (indiv-old-binds i) edges top-edge)
      (basic-add-new-dependencies top-edge old-dependencies edges i ii)))

(defun fill-in-mention (m i source)
  (let* ((location
          (encode-mention-location
           (if (consp source) (second source) source)))
         (toc (location-in-article-of-current-sentence)))
    (when (edge-p source)
      (setf (mention-source m) source)
      (setf (edge-mention source) m)
      (setf (mention-source-form-category m) (edge-form source)))
    (setf (base-description m) i)
    (setf (mentioned-where m)
          (encode-mention-location
           (if (consp source) (second source) source)))
    (when toc
      ;; some mentions get created in MAKE-EDGE-FOR-POLYWORD or other passes
      ;;  which occurs before sentences are delimited
      #+ignore
      (when (and *current-paragraph* (eq 0 (search "NIL" toc)))
        (lsp-break "why don't we have a real toc?"))
            
      (setf (mentioned-in-article-where m)
          (cons toc *current-paragraph*)))
   ))


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

(defparameter *one-paragraph-article* nil)
(defun long-term-ify-mention (mention)
  "Same idea a working with a conventional discourse entry
   in that we replace positions with their indexes. 
   The more important long-term location information is position
   in the article, which was recorded when the mention was made."
  (declare (special *one-paragraph-article*))
  (unless (long-term-mention? mention)
    (let* ((cons (mentioned-where mention))
           (start-pos (car cons))
           (end-pos (cdr cons))
           (edge (mention-source mention)))
      (setf (mentioned-where mention)
            (cons (pos-character-index start-pos)
                  (pos-character-index end-pos)))
      (unless *one-paragraph-article*
        ;; used in running localization on Maciej gold-standard articles
        (when (and edge (edge-p edge))
          (setf (edge-mention edge) nil))
        (setf (mention-source mention) nil)))))


(defun search-mentions-by-position (mentions edge)
  (let ((start-pos (start-pos edge)))
    ;;/// 9/13/15 probably an ad-hoc fn we can later dispense with
    ;; Used by long-term-ify/individual
    (loop for m in mentions
          when (eq (start-pos m) start-pos) return m)))


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


;;; methods for writing semantics for discourse-mentions

(defmethod write-sem ((m discourse-mention) stream &optional (newline t)
                                                     &aux (i (base-description m)))
  (cond ((simple-number? i)
         (space-prin1 (value-of 'value i) stream))
        ((and (eq *semantic-output-format* :xml)
              *short-protein-xml*
              (itypep (base-description m) category::protein)
              (= (length (filter-bl i)) 2)
              (value-of 'name i)
              (value-of 'uid i))
         (write-protein-xml i stream))
        ((or (small-binding-list i) (null newline))
         (start-cat i stream nil)
         (print-binding-list m stream nil)
         (finish-cat stream nil))
        (t
         (start-cat i stream newline)
         (print-binding-list m stream newline)
         (finish-cat stream newline))))

(defmethod print-binding-list ((m discourse-mention) stream &optional (newline t))
  (when newline (push-indentation))
  (loop for dependency in (filter-bl m)
     do (write-sem-dependency dependency stream newline))
  (when newline (pop-indentation)))


(defmethod small-binding-list ((m discourse-mention))
  (declare (special **lambda-var**))
  (let ((bl (filter-bl m)))
    (and (null (cdr bl))
         (not (eq (dependency-value (car bl)) **lambda-var**))
         (typecase (dependency-value (car bl))
           (discourse-mention
            (typecase (base-description (dependency-value (car bl)))
              ((or category string number symbol word polyword) t)
              (t nil)))
           (t nil)))))

(defmethod filter-bl ((m discourse-mention))
  (loop for b in (dependencies m)
       when (meaningful-binding? (dependency-variable b)(dependency-value b))
        collect b))

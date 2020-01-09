;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1995,2012-2015  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;;
;;;     File:  "save-doc-semantics"
;;;   Module:  "objects;doc:"
;;;  Version:  0.1 1-Oct-2016

;; initiated 10/2016
;; Initial definition of mechanism to output semantics of each sentence in an article


(in-package :sparser)


;;since write-sem is used to create an SEXPR for hms-json, we need to be able to make the "writer" output
;; produce standard lisp uppercase for symbols in this context.
;; Otherwise, for producing readable files, we need it to be lowercase.
(defparameter *write-sem-downcase* t)
(defun maybe-string-downcase (x)
  (if *write-sem-downcase*
      (string-downcase x)
      x))

(defparameter *article-semantics-directory* nil
  "turns on saving of article semantics")

(defparameter *sentence-results-stream* nil)

(defparameter *semantic-output-format* nil
  "can be :xml, :lisp, :hms-json or nil")

(defparameter *save-clause-semantics* nil
  "If :mention-clauses then we push a semantic representation of each mention on the list *clause-semantics-list* and if set to :sentence-clauses we push the sentence and the semantic representation of its clauses in flattened form onto the *clause-semantics-list*")

(defparameter *clause-semantics-list* nil
  "List of all *save-clause-semantics* lists")

(defun CURE-semantics-directory-pathname ()
  (when (find-package :r3)
    (let ((pathname
           (asdf:system-relative-pathname
            :r3
            "../corpus/Articles_for_CURE/SemanticsForCUREArticles/")))
      (or
       (probe-file pathname)
       (ensure-directories-exist pathname)))))

(defparameter *default-article-semantics-path*
  (CURE-semantics-directory-pathname))

(defun output-hms-json ()
  (save-article-semantics-format :hms-json))
  
(defun save-article-semantics-format (output-format
                                      &optional
                                        (dir
                                         (or *default-article-semantics-path*
                                             (CURE-semantics-directory-pathname))))
  (declare (special *indra-post-process* *save-bio-processes*
                    *reach-complex-processes*))
  (setq *semantic-output-format* output-format)
  (case *semantic-output-format*
    (:hms-json (setq *indra-post-process* (list t))
               (setq *save-bio-processes* *reach-complex-processes*)))
  (save-article-semantics dir))

(defun save-article-semantics (&optional                                 
                                 (dir
                                  (or *default-article-semantics-path*
                                      (CURE-semantics-directory-pathname))))
  (setq *article-semantics-directory* dir))

(defun dont-save-article-semantics ()
  (setq *article-semantics-directory* nil))

(defun initialize-article-semantic-file-if-needed (article)
  (declare (special article))
  ;; don't create article semantics file if *article-semantics-directory* is nil
  (when *article-semantics-directory*
    (cond ((symbolp *article-semantics-directory*)
           ;; either T or NIL
           (setq *sentence-results-stream* *article-semantics-directory*))
          (t
           (let* ((file-path (make-semantics-filename article)))
             (setq *sentence-results-stream*
                   (open file-path
                         :direction :output
                         :if-exists :supersede
                         :if-does-not-exist :create))
             (case *semantic-output-format*
               (:xml
                (format *sentence-results-stream*
                        "<?xml version=\"1.0\" encoding=\"~a\"?>~%<article ~aid=~s>~%"
                        (stream-external-format *sentence-results-stream*)
                        (if (stringp article)
                            (cond ((equal 0 (search "PMC" article)) "pmc")
                                  ((equal 0 (search "PM" article)) "pm")
                                  (t "pmc"))
                            "")
                        (if (stringp article)
                            (cond ((equal 0 (search "PMC" article)) (subseq article 3))
                                  ((equal 0 (search "PM" article)) (subseq article 2))
                                  ((search "SENTENCES" article)
                                   (subseq article 6 (- (search "SENTENCES" article) 1)))
                                  (t article))
                            (pname (name article))))))
             *sentence-results-stream*)))))

(defparameter *show-semantics-output-name* nil)
(defun close-article-semantic-file-if-needed ()
  (declare (special *indra-post-process*))
  (when (and *article-semantics-directory*
             (streamp *sentence-results-stream*)
             (open-stream-p *sentence-results-stream*))
    (case *semantic-output-format*
      (:xml
       (format *sentence-results-stream* "</article>~%"))
      (:hms-json
       (let ((iforms
              (remove nil
                      (loop for form in
                              (loop for f in (cdr (reverse *indra-post-process*))
                                    append
                                       (indra-form-for-sexpr f (get-pmid) nil))
                            when (cdr (assoc :type form))
                            collect
                              (if (member nil form)
                                  (progn (format t "~%removing NIL from ~s%" form)
                                         (remove nil form))
                                  form)))))
         (initialize-indentation)
         (pp-json-list iforms *sentence-results-stream* 3)
         (setq *indra-post-process* (list t)))))
    (when *show-semantics-output-name*
      (format t "Semantics written to ~s.~%" (pathname *sentence-results-stream*)))
    (close *sentence-results-stream*))
  (setq *sentence-results-stream* nil))

;; An article records the file it's based on in slot you access
;; with the function article-source (see objects/doc/object.lisp)

(defun make-semantics-filename (article)
  (make-pathname :name (concatenate 'string
                                    (typecase article
                                      (string article)
                                      (pathname (pathname-name article))
                                      (t (string (name article))))
                                    "-semantics")
                 :type (case *semantic-output-format*
                         (:xml "xml")
                         (:lisp "lisp")
                         (:hms-json "json")
                         ((nil) "")
                         (t (lsp-break "bad output format specified")))
                 :defaults
                 (or *article-semantics-directory*
                     (asdf:system-relative-pathname
                      :r3 "../corpus/Reach-sentences/results/"))))

(defparameter *saved-bio-processes* nil)
(defparameter *blank-sents* nil)

(defparameter *default-bio-processes*
  '(:or ABOLISH ABROGATE ACCELERATE ACCUMULATION ACETYLATION ACQUIRE ADDITION ADHESION
    AFFECT ALLOW ALTER ANCHORAGE APOPTOSIS ARREST ASSEMBLE ATTENUATE AUGMENT
    AUTO-PHOSPHORYLATE AUTOPHAGY AXON-GUIDANCE BINDING BIO-ACT BIO-ACTIVATE
    BIO-ACTIVITY BIO-ADVANCE BIO-AMPLIFY BIO-ASSOCIATE BIO-CONTROL BIO-DEACTIVATE
    BIO-DRIVE BIO-ENHANCE BIO-EVENT BIO-EXCHANGE BIO-FIND BIO-FORM BIO-FUNCTION
    BIO-FUNCTIONALITY BIO-HYPERACTIVATE BIO-INACTIVATE BIO-INSERT BIO-OPEN
    BIO-PROCESS BIO-PRODUCE BIO-PROMOTE BIO-REACTIVATE BIO-SWITCH BIO-TRANSITION
    BIO-TRANSPORT BIO-TRIGGER BIOTINYLATION BLOCK CANCER-TRANSFORM CASCADE
    CATALYSIS CATALYTIC-ACTIVITY CAUSE CELL-CELL-CONTACT CELL-CYCLE-PROGRESSION
    CELL-GROWTH CELLULAR-PROCESS CHANGE CHEMICAL-CLEAVAGE CHEMICAL-REACTION
    CO-MIGRATE COMPENSATE COMPLEMENTATION COMPROMISE CONFER CONFORMATIONAL-CHANGE
    CONSERVE CONTRIBUTE CONVERSION-CHANGE COOPERATE CREATE CULMINATE CYCLE DAMAGE
    DE-ACETYLATION DE-METHYLATION DE-UBIQUITINATION DEATH DECREASE DEGRADE DELAY
    DEPHOSPHORYLATE DEPLETE DERIVE DEVELOPMENT DIFFERENTIATION DIMERIZE DIMINISH
    DIRECT-CONTROL DISPLACE DISRUPT DISSOCIATE DIVISION DNA-BINDING DOWNREGULATE
    DRIVE DROP DYSREGULATE EFFECT ELEVATE ELICIT EMT ENABLE ENCODE ENTRY
    ENZYME-ACTIVITY ESCAPE EXHIBIT EXPORT EXPORT-SIGNAL FACILITATE FATE FAVOR
    FINDING FREES FUCOSYLATION GAIN GENE-CODE GENE-DELETE
    GENE-TRANSCRIPT-CO-EXPRESS GENE-TRANSCRIPT-EXPRESS
    GENE-TRANSCRIPT-OVER-EXPRESS GENERATE GLYCOSYLATION GROWTH HETERODIMERIZE
    HOMODIMERIZE HYDROLYZE HYDROXYLATION HYPER-ACETYLATION HYPERPHOSPHORYLATE
    HYPO-METHYLATION IMPAIR IMPEDE IMPORT INCREASE INDUCE INFLUENCE INHIBIT
    INITIATE INTERACT INTERFERE INTERNALIZE KINASE-ACTIVITY KNOCKDOWN LEAD LIGATE
    LIMIT LINK LOCALIZATION LOSE LOWER MAINTAIN MAKE-DOUBLE MANNER MEDIATE
    METHYLATION MIGRATION MOBILITY MOBILIZE MODIFY MODULATE MOLECULE-LOAD
    MOLECULE-RELEASE MONOUBIQUITINATION MOTILITY MUTATION NEDDYLATION
    NEURITE-OUTGROWTH OLIGOMERIZE OPERATE OUTCOME OXIDATION PARTICIPATE
    PATHWAYSTEP PHOSPHORYLATE POINT-MUTATION POLY-ADENYLATION POLY-UBIQUITINATION
    POLYMERIZE POST-TRANSLATIONAL-MODIFICATION POTENTIATE PRESERVE PREVENT PRIME
    PROLIFERATION PROLONG PROTECT RAISE RECONSTITUTE RECRUIT REDISTRIBUTE REDUCE
    REGULATE RELIEVE RELOCATE REPRESS REQUIRE RESPONSE RETENTION RETURN REVERT
    SENESCENCE SERVE SET-VALUE SIGNAL SLOW STABILIZE STIMULATE STIMULUS STRENGTHEN
    SULFATION SUMOYLATION SUPPRESS SURVIVAL TARGET TERMINATE TRANSACTIVATION
    TRANSCRIBE TRANSDUCE TRANSFORMATION TRANSLATE TRANSLOCATION TRUNCATE
    TUMOR-FORMATION UBIQUITINATION UNDERGO UNPHOSPHORYLATE UPREGULATE YIELD))



;; this is executed when *save-bio-processes* is T
(defun save-bio-processes (*sent* &optional (bio-processes '(:or bio-process)))
  (declare (special *sent*))
  (let ((sems (find-sem-type-instances (sent-sem *sent*) bio-processes)))
    (if sems
        (push (list (sentence-string *sent*) sems) *saved-bio-processes*)
        (push (sentence-string *sent*) *blank-sents*))))


(defparameter *one-expression-per-sentence* t)

(defmethod write-semantics ((sent sentence) &optional (stream t))
  (declare (special sent))
  (when (actually-reading)
    (if *one-expression-per-sentence*
        (write-combined-sentence-results sent stream)
        (write-sentence-results sent stream))))

(defmethod write-sentence-results ((s sentence) stream)
  (declare (special *show-syn-tree*))
  ;; we assume that this is called immediately after the sentence is parsed
  (loop for edge in (all-tts (starts-at-pos s)(ends-at-pos s))
     do 
       (let*
	   ((*no-edge-info* t)
	    ;;(*suppress-indiv-uids* t)
	    (ref (if (and
                      (edge-p edge)
                      (edge-mention edge))
                     (edge-referent edge)
                     ;; was (contextual-description (edge-mention edge)),
                     ;; but this seems to be wrong for conjunctions --
                     ;; need to look at conjunction distribution
                     edge)))
	 (declare (special ref *no-edge-info* *suppress-indiv-uids*))

         (format stream "~%--- ~s~%"
                 (if (edge-p edge)
                     (extract-string-spanned-by-edge edge)
                     edge))         
	 (if (word-p ref)
	     (format stream "  ~s" ref)
	     (write-sem-tree ref stream))
         (terpri stream)
         (terpri stream))))


(defparameter *direct-from-sem* t)

(defun write-sem-tree (ref stream)
  (setq ddm-util::*indentation* 0) ;; make sure indentation is restarted
  (cond ( *direct-from-sem*
         (write-sem ref stream))
        (t
         (print-sem-tree (spire-tree ref) stream))))

(defmethod write-combined-sentence-results ((s sentence) stream)
  (declare (special *show-syn-tree*))
  ;; we assume that this is called immediately after the sentence is parsed
  (if *direct-from-sem*
      (write-sem s stream)
      (write-sem-tree
       `(interpretation
         (sentence-text ,(sentence-string s))
         ,.
         (loop for edge in (all-tts (starts-at-pos s)(ends-at-pos s))
            collect 
              (let*
                  ((*no-edge-info* t)
                   (*suppress-indiv-uids* t)
                   (mention (and
                             (edge-p edge)
                             (edge-mention edge)))
                   (ref (if mention
                            (base-description (edge-mention edge))
                            edge)))
                (declare (special ref *no-edge-info* *suppress-indiv-uids*))
                `(element
                  ,(if (word-p ref)
                       `(wd ,(pname ref))
                       (spire-tree ref))))))
       stream))
  (terpri stream))

(defun prin-escaped (string stream &aux (string (string string)))
  (if (find-package :xmls)
    (uiop:symbol-call :xmls :write-escaped string stream)
    (write-string string stream)))

(defun sent-sem (&optional sent)
  ;; produces an s-expression which is the item that write-sem would produce
  ;; on the stream
  (when (stringp sent) (p sent))
  (values
   (read-from-string
    (with-output-to-string (s)
      (write-sem (or sent (sentence)) s)))))

(defun sem-sexp (indiv)
  (let ((*package* (find-package :sp)))
    (read-from-string
     (with-output-to-string (s)
       (write-sem indiv s)))))

(defun find-sem-type-instances (s &optional (types
                                             '(:or bio-control post-translational-modification binding
                                               interact ;; not sure this constitues a cardable entity, but I think REACH thinks so
                                               bio-process ;; most general for new REACH complex tests
                                               )))
  (when (and (consp s) (symbolp (car s)))
    (if (and (category-named (car s) nil)
             (itypep (car s) types))
        (list s)
        (loop for ss in s when (consp ss)
           append
             (find-sem-type-instances ss types)))))


(defmethod write-sem ((s sentence) stream &optional (newline t))
  (declare (ignore newline))
  (setq ddm-util::*indentation* 0) ;; make sure indentation is restarted
  (start-element "interpretation" stream)
  (push-indentation)
  (start-element "sentence-text" stream)
  (case *semantic-output-format*
    (:xml
      (write-sem (sentence-string s) stream)
      (format stream " ~s" (sentence-string s))))
  (finish-element "sentence-text" stream nil)
  (pop-indentation)
  (loop for tt in (all-tts (starts-at-pos s) (ends-at-pos s))
        as small = (and (edge-p tt) (small-binding-list (edge-referent tt)))
        do (push-indentation)
           (start-element "sem" stream)
           (unless small (push-indentation))
          (write-sem (if (edge-p tt)
                         (edge-referent tt) ;; (edge-mention tt)
                         tt)
                     stream)
           (unless small (pop-indentation))
           (finish-element "sem" stream (not small))
           (pop-indentation))
  (finish-element "interpretation" stream))

(defparameter *short-protein-xml* nil)

(defmethod write-sem ((i individual) stream &optional (newline t))
  (cond ((itypep i 'number-range)
         (start-cat i stream newline)
         (print-binding-list i stream newline)
         (finish-cat stream newline)
         )
        ((simple-number? i)
         (space-prin1 (value-of 'value i) stream))
        ((and (eq *semantic-output-format* :xml)
              *short-protein-xml*
              (itypep i 'protein)
              (= (length (filter-bl i)) 2)
              (value-of 'name i)
              (value-of 'uid i))
         (write-protein-xml i stream))
        ((or (small-binding-list i) (null newline))
         (start-cat i stream nil)
         (print-binding-list i stream nil)
         (finish-cat stream nil))
        (t
         (start-cat i stream newline)
         (print-binding-list i stream newline)
         (finish-cat stream newline))))




(defun write-protein-xml (protein stream)
  (start-cat protein stream nil nil)
  (write-attribute 'name (value-of 'name protein) stream)
  (write-attribute 'uid (value-of 'uid protein) stream)
  (emit-line-continue stream "/>"))

(defun write-attribute (att-name item stream)
  (format stream " ~a=\"" (maybe-string-downcase att-name))
  (prin-escaped (pname item) stream)
  (format stream "\""))

(defmethod write-sem ((w string) stream &optional (newline t))
  (declare (ignore newline))
  (case *semantic-output-format*
    (:xml
     (format stream "~a"
             (with-output-to-string (s-stream) (prin-escaped w s-stream))))
    (t
     (format stream " ~s" w))))

(defmethod write-sem ((w word) stream &optional (newline t))
  (write-sem (pname w) stream newline))
(defmethod write-sem ((w polyword) stream &optional (newline t))
  (write-sem (pname w) stream newline))
(defmethod write-sem ((w symbol) stream &optional (newline t))
  (case *semantic-output-format*
    (:xml
     (prin-escaped (maybe-string-downcase (pname w)) stream))
    (t (if (search " " (pname w))
           (format stream " ~s" w)
           (format stream " ~s" (maybe-string-downcase (pname w)))))))
(defmethod write-sem ((w number) stream &optional (newline t))
  (declare (ignore newline))
  (format stream " ~a" w))
(defmethod write-sem ((val cons) stream &optional (newline t))
  (declare (ignore newline))
  (start-cat "set" stream)
  (loop initially (push-indentation)
        for element in val
        do (write-sem element stream)
        finally (pop-indentation))
  (finish-cat stream))
(defmethod write-sem ((c referential-category) stream &optional (newline t))
  (declare (ignore newline))
  (start-cat c stream nil)
  (finish-cat stream nil))

(defmethod write-sem ((var lambda-variable) stream &optional (newline t))
  ;; case where the value of a binding is a lambda variable -- DAVID
  (declare (ignore newline)(special var))
  (start-cat (format nil "\"lambda-var=~a\"" var) stream nil)
  (finish-cat stream nil))

(defun write-lambda-binding (variable stream &optional newline)
  (case *semantic-output-format*
    (:xml
     (let ((name (maybe-string-downcase (pname variable))))
       (start-lambda-var "var" name stream newline)
       (write-attribute 'lambda-variable "true" stream)
       (finish-lambda-var "var" name stream newline)))
    (t
     (start-var variable stream newline)
     (format stream " *lambda-var*")
     (finish-var stream newline))))

(defun start-lambda-var (element name stream &optional (newline t)
                         &aux (name (if (symbolp name)
                                        name
                                        (maybe-string-downcase name))))
  (case *semantic-output-format*
    (:xml
     (emit-line-continue stream
                         (format nil "<~a name=\"" element))
     (prin-escaped name stream)
     (emit-line-continue stream "\""))
    (t
     (if newline
         (if (symbolp name)
             (emit-line stream (format nil " (~s" name))
             (emit-line stream (concatenate 'string " (" name)))
         (if (symbolp name)
             (emit-line-continue stream (format nil " (~s" name))
             (emit-line-continue stream (concatenate 'string " (" name)))))))

(defmethod print-binding-list ((i individual) stream &optional (newline t))
  (when newline (push-indentation))
  (loop for binding in (filter-bl i)
        do
          (write-sem binding stream newline))
  (when newline (pop-indentation)))



(defun dependency-variable (dep)
  (car dep))

(defun dependency-value (dep)
  (second dep))

(defun write-sem-dependency (dep stream &optional (newline t))
  (declare (special **lambda-var**))
  (let* ((var (dependency-variable dep))
         (val (dependency-value dep))
         (small (small-binding-list val)))
    (declare (special small))
    (if
     (eq val **lambda-var**)
     (write-lambda-binding var stream)
     (else (start-var var stream newline)
           (if small
               (then
                 (write-sem val stream nil))
               (else
                 (push-indentation)
                 (write-sem val stream newline)
                 (pop-indentation)))
           (finish-var stream (not small))))))

(defmethod write-sem ((binding binding) stream &optional (newline t))
  (declare (special **lambda-var**))
  (let* ((var (binding-variable binding))
         (val (binding-value binding))
         (small (small-binding-list val)))
    (declare (special small))
    (if
     (eq (binding-value binding) **lambda-var**)
     (write-lambda-binding var stream)
     (else (start-var var stream newline)
           (if small
               (then
                 (write-sem val stream nil))
               (else
                 (push-indentation)
                 (write-sem val stream newline)
                 (pop-indentation)))
           (finish-var stream (not small))))))


(defun start-element (element stream &optional (newline t))
  (let ((start (format nil "~:[(~a~;<~a>~]" (eq *semantic-output-format* :xml) element)))
    (if newline
      (emit-line stream start)
      (emit-line-continue stream start))))

(defun finish-element (element stream &optional (newline t))
  (let ((finish (format nil "~:[~*)~;</~a>~]" (eq *semantic-output-format* :xml) element)))
    (if (and newline (eq *semantic-output-format* :xml))
      (emit-line stream finish)
      (emit-line-continue stream finish))))

(defun start-named-element (element att-name name stream &optional (newline t) (close t)
                            &aux (name (if (symbolp name)
                                           name
                                           (maybe-string-downcase name))))
  (case *semantic-output-format*
    (:xml
     (let ((start (format nil "<~a ~a=\"" element att-name)))
       (if newline
           (emit-line stream start)
           (emit-line-continue stream start))
       (prin-escaped (maybe-string-downcase name) stream)
       (write-string (if close "\">" "\"") stream)))
    (t
     (if newline
         (if (symbolp name)
             (emit-line stream (format nil " (~s" name))
             (emit-line stream (concatenate 'string " (" name)))
         (if (symbolp name)
             (emit-line-continue stream (format nil " (~s" name))
             (emit-line-continue stream (concatenate 'string " (" name)))))))



(defun finish-lambda-var (element name stream &optional (newline t)
                          &aux (name (if (symbolp name)
                                         name
                                         (maybe-string-downcase name))))
  (case *semantic-output-format*
    (:xml
     (emit-line-continue stream (format nil "/>" element)))
    (t
     (emit-line-continue stream (format nil ")" element)))))

(defmethod start-cat ((item symbol) stream &optional (newline t) (close t))
  (if (search " " (pname item))
      (start-named-element "ref"
                           "category"
                           (intern (symbol-name  item) :sparser)
                           stream
                           newline
                           close)
      (start-cat (pname item) stream newline close)))

(defmethod start-cat ((item referential-category) stream &optional (newline t) (close t))
  (start-cat (cat-symbol item) stream newline close))

(defmethod start-cat ((item individual) stream &optional (newline t) (close t))
  (start-cat (itype-of item) stream newline close))

(defmethod start-cat ((item string) stream &optional (newline t) (close t))
  (start-named-element "ref" "category" item stream newline close))

(defmethod start-var ((item lambda-variable) stream &optional (newline t))
  (start-var (pname item) stream newline))

(defmethod start-var ((item symbol) stream &optional (newline t))
  (start-var (pname item) stream newline))

(defmethod start-var ((item string) stream &optional (newline t))
  (start-named-element "var" "name" item stream newline))

(defun finish-cat (stream &optional (newline t))
  (finish-element "ref" stream newline))

(defun finish-var (stream &optional (newline t))
  (finish-element "var" stream newline))

(defmethod small-binding-list ((bl symbol)) (null bl))
(defmethod small-binding-list ((x word)) t)
(defmethod small-binding-list ((x polyword)) t)
(defmethod small-binding-list ((x number)) t)
(defmethod small-binding-list ((x string)) t)
(defmethod small-binding-list ((x referential-category)) t)
(defmethod small-binding-list ((x lambda-variable)) t)

(defmethod small-binding-list ((i individual))
  (declare (special **lambda-var**))
  (let ((bl (filter-bl i)))
    (and (null (cdr bl))
         (or (not (binding-p (car bl)))
             (typecase (binding-value (car bl))
               ((or category string number symbol word polyword)
                (not (eq (binding-value (car bl)) **lambda-var**)))
               (t nil))))))


(defmethod small-binding-list ((c cons))
  nil)

(defmethod filter-bl ((i individual))
  (when (individual-p i)
    (loop for b in (indiv-old-binds i)
          when (meaningful-binding? (binding-variable b)
                                    (binding-value b))
          collect b)))

      
(defun meaningful-binding? (v val)
  (and  (typep v 'lambda-variable)
        (not (member (var-name v) '(ras2-model has-determiner)))
        ;; months have a circular structure
        (not (and (member (var-name v) '(next previous))
                  (individual-p val)
                  (itypep val '(:or month weekday))))))


;;;;;;;;;;;;;;
      

(defmethod print-sem-tree ((i individual) &optional stream)
  (print-sem-tree (semtree i) stream))

(defmethod print-sem-tree ((s string) &optional stream)
  (space-prin1 s stream))

(defun simple-number? (i)
  (and (individual-p i)
       (itypep i 'number)
       (not (itype i 'multiplier))
       (not (collection-p i))))

(defmethod print-sem-tree ((sem-tree cons) &optional (stream *standard-output*))
  (declare (special *for-spire* *sentence-results-stream*))
  (let ((*suppress-indiv-uids* t))
    (declare (special *suppress-indiv-uids*))
    (cond 
      ((simple-number? (car sem-tree))       
       (space-prin1 (value-of 'value (car sem-tree)) stream))
      ((short-vvs (cdr sem-tree))
       (lcase-emit sem-tree stream))
      (t
       (emit-list-start (cat-string (car sem-tree)) stream)
       (print-var-vals
        (if (eq (car sem-tree) 'items) ;; simplify printout of the ITEMS in a collection
            ;; temproary to simplify comparisons
            (second (second (second sem-tree)))
            (cdr sem-tree))
        stream)
       (emit-line-continue stream ")")))))

(defmethod print-sem-tree (sem-tree &optional (stream *standard-output*))
  (space-prin1 sem-tree stream))

(defun lcase-emit (s stream)
  (emit-line stream (maybe-string-downcase (format nil "~s" s))))

(defun lcase-prin1 (s stream)
  (format stream "~a" (maybe-string-downcase (format nil "~s" s))))

(defun lcase-space-prin1 (s stream)
  (format stream " ~a" (maybe-string-downcase (format nil "~s" s))))

(defun emit-list-start (item stream)
  (emit-line stream (concatenate 'string "(" item)))

(defun emit-list-start-continue (item stream)
  (emit-line-continue stream (concatenate 'string " (" item)))

(defun space-prin1 (item stream)
  (format stream " ~s" item))

(defun short-vvs (vvs)
  (and (null (cdr vvs))
       (or (not (consp (car vvs)))
           (not (consp (second (car vvs)))))))

(defun print-var-vals (vvs stream)
  (declare (special *for-spire*))
  (push-indentation)
  (loop for item in vvs
        #| ;; don't suppress name and uid now
        unless (and (not *for-spire*) (consp item)
                 (member (car item) '(name uid)))
          |#
     do
       (if (consp item)
           (then
             (emit-list-start (maybe-string-downcase (format nil "~a" (car item))) stream)
             (push-indentation)
             (if
              (eq (car item) :members)
              (loop for element in (second item)
                 do
                   (print-sem-tree element stream))
              (print-sem-tree (second  item) stream))
             (format stream ")")
             (pop-indentation))
           (lcase-space-prin1 item stream)))
  (pop-indentation))

(defmethod cat-string ((cat individual) &optional with-name)
  (let* ((cat-str (maybe-string-downcase (cat-symbol (itype-of cat))))
         (name (when with-name (value-of 'name cat))))
    (if name
        (format nil "<~a ~a>" cat-str (pname name))
        cat-str)))

(defmethod cat-string ((cat referential-category) &optional with-name)
  (declare (ignore with-name))
  (maybe-string-downcase (cat-symbol cat)))

(defmethod cat-string ((cat symbol) &optional with-name)
  (declare (ignore with-name))
  (maybe-string-downcase cat))

(defmethod cat-string ((cat cons) &optional with-name)
  (declare (ignore with-name))
  (cat-string (car cat)))

(defmethod cat-string (cat &optional with-name)
  (declare (ignore with-name))
  cat)

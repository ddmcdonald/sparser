;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "mechanics"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2016

;; Initiated 3/2/14. 5/22/14 Added synonyms field to def-bio.
;; 6/9/14 Pulled types out from regular kinds. 7/24/14 reorganized.
;; 9/8/14 lifted taxonomy out to its own file, added keyword to
;; inhibit plurals, defaults to allow plurals. Working on nits
;; to make the parser happy through 1/6/15
;; 3/21/2015 -- revised make-typed-bio-entity
;; SBCL caught fact that some words are actually polywords here...
;; 4/19/15 Added stub for handling acronyms.
;; 5/16/2015 attempt (not quite working) to define get-mitre-id which
;; tries to get the MITRE-LINK value for a protein (for example).
;; 11/12/15 Finished bio-entity => protein routine.
;; 2/5/16 added handle-unknown-word-as-bio-entity


(in-package :sparser)

;;;---------------------------
;;; bio-synonyms
;;;---------------------------

;; This maps IDs (e.g., "BRAP_HUMAN") to a list of synonyms.
;; We use #'equalp for case-insensitivity. NO -- need to maintain case
(defvar *bio-synonym-hash* (make-hash-table :test #'equalp))

(defun add-bio-synonyms (id synonyms)
  "Adds the given synonyms under the given ID."
  (let ((existing (gethash id *bio-synonym-hash*)))
    (setf (gethash id *bio-synonym-hash*)
      (remove-duplicates (append synonyms existing) :test #'equal))))

(defun get-bio-synonyms (id)
  "Given an ID, retrieve synonyms (not including the ID)."
  (gethash id *bio-synonym-hash*))

;;;-----------------------
;;; bio-entity -> protein
;;;-----------------------

(defmethod convert-bio-entity-to-protein ((bio-entity individual))
  "Takes the name of the bio-entity and makes it the name of
   a protein by using define-bio. Deleted the rules associated
   with the bio-entity. Returns the protein."
  (let* ((name (value-of 'name bio-entity)) ;; often a polyword
         (protein (define-bio name 'protein)))
    (remove-rules-from-category bio-entity)
    ;; can't easily delete the individual itself
    protein))

(defmethod convert-bio-entity-to-protein ((e edge))
  ;; called from make-protein-pair/convert-bio-entity and
  ;; from multi-colong-ns-patterns, which will send in protein
  ;; edges as well as ones that need to be converted
  (let ((old-ref (edge-referent e)))
    (unless (itypep old-ref 'protein)
      (let ((rule (edge-rule e))
            (new-ref (convert-bio-entity-to-protein old-ref)))
        (declare (ignore rule)) ;; for now
        ;; subvert both this edge and the rule
        (setf (edge-category e) (category-named 'protein))
        (setf (edge-referent e) new-ref)
        new-ref))))

(defmethod convert-bio-entity-to-protein ((items list))
  ;; called from, e.g. multi-colon-ns-patterns to transparently
  ;; convert the edges
  (unless (every #'edge-p items)
    (error "Some member(s) of the list is not an edge"))
  (loop for edge in items
    do (convert-bio-entity-to-protein edge)))


(defun reify-p-protein-and-make-edge (words start-pos end-pos)
  ;; Called from resolve-ns-pattern on (:single-cap :digits).
  ;; Looks for a "p" and if it finds it makes a protein.
  ;; E.g "suggesting that p38 SAPK was active" in Jan #34
  (push-debug `(,words ,start-pos ,end-pos))
  (when (string= "p" (word-pname (first words)))
    ;; take template from reify-residue-and-make-edge
    (when *work-on-ns-patterns*
      (break "stub: possible p protein?"))))


;;;--------------------------------------------
;;; interpreting unknown words as bio-entities
;;;--------------------------------------------

#| Given how we used to handle unknown words, we would
assume that they were bio-entities, since that would at least
give us something we could refer to in rules particularly
context sensitive ones. We also burned that into a rule
so we'd have a remember these as a side-effect across
sentences and documents. Now (2/5/16) we just lookup the 
individual for the bio-entity since we may have encountered
it before and then make the edge but don't record anything
which means that when we encounter it again we'll repeat
the process.
|#
(defun handle-unknown-word-as-bio-entity (pos-before)
  "Called from deal-with-unhandled-unknown-words-at, which started
   out in interpretation of unknown words. See note there."
  (declare (special category::bio-entity))
  (let ((word (pos-terminal pos-before))
        (pos-after (chart-position-after pos-before)))
    ;;  (format t "~&Making ~s a bio-entity~%" (word-pname word))

    ;; This will record it in the list of *newly-found-unknown-words*
    ;; if the *collect-new-words* flag is up.
    (add-new-word-to-catalog word :BgMech-default)

    (let* ((i (find-or-make-individual 'bio-entity :name word))
           (edge (install-preterminal-edge 
                   'handle-unknown-word-as-bio-entity ;; cfr argument
                   word ;; word we're installing the preterminal over
                   pos-before
                   pos-after
                   category::bio-entity ;; category of edge
                   category::common-noun ;;/// form ???proper-noun??
                   i ))) ;; referent
      (tr :unknown-word-bio-edge edge)
      edge)))

#|  This is what we used to do. Notice that it creates a rule
(defun setup-unknown-word-BigMech-default (word)
  ;; called from make-word/all-properties/or-primed when
  ;; *big-mechanism* flag is up and OBO lookup, morphology,
  ;; and Comlex have not applied.
  (let* ((likely-protein? ;; true more often than not given hand inspection
          (memq (word-capitalization word)
                '(:initial-letter-capitalized 
                  :all-caps
                  :mixed-case)))
         (kind ;;(if likely-protein? 'protein 'bio-entity)
          ;; wildly overgenerates
          'bio-entity))
    (declare (ignore likely-protein?)) ;; needs refined check
    (let ((i (def-bio/expr (word-pname word) ;; short
                           kind
               :takes-plurals nil)))
      i)))  |#



;;;-------------------------------
;;; Protein definition operations
;;;-------------------------------

(defun ras2-protein? (i)
  (and (individual-p i)
       (itypep i 'protein)
       (value-of 'ras2-model i)))

;;obsolete
;;(defparameter *ras2-proteins* (make-hash-table :size 1500 :test #'equal))
;;(gethash (string-for/name i) *ras-2-proteins*)

(defmacro def-ras2-protein (name args)
  (eval `(define-protein ,name ,args :ras2-model t)))

;;;---------------------------
;;; pattern-driven protein definition
;;;---------------------------

(defmacro define-protein (name IDS &key documentation ras2-model)
  (if ras2-model
      (make-def-protein (cons name IDS) :documentation documentation :ras2-model t)
      (make-def-protein (cons name IDS) :documentation documentation)))

(defparameter *prot-synonyms* (make-hash-table :test #'equal))

(defun get-protein-synonyms (id)
  (gethash id *prot-synonyms*))

(defparameter *q-proteins* nil)

(defun make-def-protein (IDS &key documentation (ras2-model nil))
  (let
      ((bpid (best-protein-id IDS)))
    (loop for id in IDS 
      when (and (equal id (string-downcase id)) (not (search " " id))
                (not (find-if #'digit-char-p id)))
      do (push id *q-proteins*))
                                  
    `(def-bio ,bpid
              protein
       :synonyms ,(loop for id in IDS unless (or (equal id bpid)
						;; (search " " id)
						 ) collect id)
       :MITRE-LINK ,(if (search "_" bpid)
                        (format nil "UNIPROT:~A" bpid)
                        bpid)
       :ras2-model ,ras2-model
       :takes-plurals t
       ,@(if documentation `(:documentation ,documentation)))))

(defun in-ras2-model? (entity)
  (not
   (null
    (or
     (value-of 'ras2-model entity)
     (let*
         ((name-word (value-of 'name entity))
          (name (cond
                 ((word-p name-word)
                  (word-pname name-word))
                 ((polyword-p name-word)
                  (pw-pname name-word))
                 (t nil))))
         (member name
                 '("MAPK" "MEK" "E3b1" "_HUMAN" "p140"  "hVps34" "hRad17" "RasGRF1" "D3" "Ras" "AKT")
                 :test #'equal))))))

(defun best-protein-id (ids)
  (or
   (loop for id in ids when (search "_HUMAN" id) do (return id))
   (loop for id in ids when (search "PR:" id) do (return id))
   (car ids)))

(defun simp-protein (dp)
  (if
   (consp (third dp))
   dp
   `(define-protein ,(second dp) ,(cddr dp))))

(defun all-proteins ()
  (loop for s in *all-sentences*
    append
    (loop for e in (second s)
      when (or
            (itypep e 'protein)
            (itypep e 'protein-family))
      collect e)))

(defun pro-name (pro)
  (let ((name (value-of 'name pro)))
    (cond((polyword-p name) (pw-pname name))
         ((word-p name)(word-pname name)))))

(defun prot-name (prot)
  (when prot
    (or
     (pro-name prot)
     (get-mitre-id prot))))

(defparameter *prot-ht* (make-hash-table :test #'equal))
(defparameter *prot-cts* nil)
(defparameter *prots* nil)
(defparameter *nil-prots* nil)
(defparameter *aps* nil)
(defparameter *aaps* nil)
(defparameter *naps* nil)
(defparameter *named-proteins* nil)
(defparameter *unique-named-substrates* nil)
(defparameter *poorly-identified-proteins* nil)

(defun protein-name-count (proteins)
  (clrhash *prot-ht*)
  (loop for p in proteins
    do
    (push p (gethash (prot-name p) *prot-ht*)))
  (setq *prot-cts* nil)
  (maphash #'(lambda(name prots) (push (list name (length prots)) *prot-cts*)) *prot-ht*)
  (setq *prot-cts* (sort *prot-cts* #'> :key #'second))
  *prot-ht*)

(defun poorly-identified-proteins()
  (declare (special *prots* *aps* *aaps* *naps* *named-proteins* *poorly-identified-proteins*
                    *unique-named-substrates*))
  (length (setq *prots* (all-proteins)))
  (protein-name-count *prots*)
  (length (setq *nil-prots* (gethash nil *prot-ht*)))
  ;;(loop for i from 1 to 30 collect (print (retrieve-surface-string (nth i nil-prots))) (nth i nil-prots))
  (length (setq *aps* (all-phosphorylations)))
  (length (setq *aaps* (loop for a in *aps* when (get-protein-substrate (car a)) collect (car a))))
  (length (setq *naps* (loop for a in *aps* unless (get-protein-substrate (car a)) collect (car a))))
  (length
   (setq *named-proteins* (loop for a in *aaps* when (prot-name (car (get-protein-substrate a)))
                            collect (prot-name (car (get-protein-substrate a))))))
  (setq *unique-named-substrates* (remove-duplicates *named-proteins* :test #'equalp))
  (setq *poorly-identified-proteins*
        (loop for s in *unique-named-substrates* unless (or (search "PR:" s)(search "_" s)) collect s)))


(defun protein-desc (pro)
  (when (pro-name pro)
    (let
        ((st (semtree pro)))
      `(,(symbol-name (cat-symbol (car (indiv-type (car st))))) (:name ,(pro-name pro)),@(cdr st)))))




;;;------------------
;;; Useful accessors
;;;------------------

(defmethod get-protein ((pname string))
  ;; conventient syntactic sugar. Motivated by explicitly
  ;; constructed pathways.
  (flet ((lookup (word)
           (or (get-protein word)
               (get-family word))))
    (let ((word (resolve pname))
          protein )
      (unless word
        (error "The word ~a isn't defined, so it can't ~
                name a protein." pname))
      ;; iterate spelling variations
      (setq protein (lookup word))
      (unless protein
        (let* ((capitalized (string-capitalize pname))
               (cap-word (resolve capitalized)))
          (when cap-word
            (setq protein (lookup cap-word)))))
      protein)))

(defmethod get-protein ((name label))
  (let ((rule (car (rs-single-term-rewrites (rule-set-for name)))))
    (if (cfr-p rule)
        (cfr-referent rule)
        (find-individual 'protein :name name))))

;; get rid of misnamed "bio-family" -- it is only used for proteins
(defmethod get-family ((name word))
  (or (find-individual 'human-protein-family :name name)
      (find-individual 'protein-family :name name)))

(defmethod get-family ((name polyword))
  (or (find-individual 'human-protein-family :name name)
      (find-individual 'protein-family :name name)))


;;;---------------------------------
;;; protein (bio-entity) ID mapping
;;;---------------------------------

(defparameter *krisp-object-to-Mitre-ID* (make-hash-table)
  "Uses the Mitre-link information to connect proteins to
   the IDs that Mitre is using.")

(defparameter *Mitre-ID-to-krisp-object* (make-hash-table)
  "From the ID to the protein")


(defun handle-mitre-link (i mitre-link)
  ;; Called from def-bio when a mitre-link is supplied
  (setf (gethash i *krisp-object-to-Mitre-ID*) mitre-link)
  (setf (gethash mitre-link *Mitre-ID-to-krisp-object*) i))

(defun get-mitre-id (l)
  (cond
   ((individual-p l)
    (or
     (gethash l *krisp-object-to-Mitre-ID*)
     (gethash (car (indiv-type l)) *krisp-object-to-Mitre-ID*)))
   ((category-p l)
    (gethash l  *krisp-object-to-Mitre-ID*))))


;;;-------------------------------------------
;;; macro for defining individual particulars
;;;-------------------------------------------

(defmacro def-bio (short kind
                   &key documentation greek identifier long synonyms takes-plurals
                        mitre-link ras2-model)
  ;; short = "NIK", long = "NF-κB-inducing kinase"
  ;; kind = kinase, greek = "alpha"
  ;; Makes individuals (particulars), that are instances of
  ;; a specific kind. Staying vague about what they might denote.
  (unless (and (stringp short) (symbolp kind))
    (error "Malformed definition: short form must be a string,~
          ~%and the kind must be a symbol"))
  (when greek
    (typecase greek
      (string)
      (cons
       (unless (every #'stringp greek)
         (error "The Greek letters in a set of them must all be strings")))
      (otherwise
       (error "Spelled out Greek letter must be a string"))))
  (when identifier
    (unless (stringp identifier)
      (error "OBO identifier must be a string")))
  (when long
    (unless (stringp long)
      (error "Long form of name must be a string")))
  (when synonyms
    (unless (and (listp synonyms)
                 (every #'stringp synonyms))
      (error "The synonyms must be a list of strings")))
  (unless takes-plurals
    (setq takes-plurals t))

  `(def-bio/expr ,short ',kind
     :documentation ,documentation
     :greek ',greek :identifier ',identifier :mitre-link ,mitre-link
     :ras2-model ,ras2-model
     :long ,long :synonyms ',synonyms :takes-plurals ,takes-plurals))


(defun def-bio/expr (short kind
                     &key documentation greek identifier mitre-link
                          long synonyms takes-plurals ras2-model)
  ;; use find-individual with their names to retrieve these.
  (let* ((word (resolve/make short))
         (category (category-named kind :break-if-undefined)))
    (without-redefinition-warnings
      (make-typed-bio-entity word category
                             greek identifier mitre-link
                             ras2-model long synonyms takes-plurals documentation))))


(defun define-bio (word category-name)
  (let ((category (category-named category-name :break-if-undefined)))
    (make-typed-bio-entity word category)))


(defun make-typed-bio-entity (word category
                                   &optional greek identifier mitre-link
                                   ras2-model
                                   long synonyms takes-plurals documentation)
  (let ((label (or (override-label category) category))
        (form (category-named 'proper-noun))
        ;; proper noun makes sense for named protiens and such
        ;; but the marker may actually be the capitalization
        ;; of the word, which would have to be caught upstream
        ;; and passed through in a parameter.
        (*inihibit-constructing-plural* (not takes-plurals))
        rules  i   )
    (declare (special *inihibit-constructing-plural*))
    ;; There is a bug that I can't sort out with the available evidence
    ;; when redefining a def-bio entity involving a list of rules being
    ;; expected to be a structure. Until there's time to creep up on
    ;; that bug and kill it, I've separated the find from the make and
    ;; not looking for the possibility that a redefinition actually
    ;; added or changed something substantive. ddm - 12/30/14
    (cond
     (nil
      (setq i (find-individual category :name word))
      (when i
        (return-from make-typed-bio-entity i))
      (setq i (define-individual category :name word)))
     (t
      (setq i (find-or-make-individual category :name word))
      ;;(lsp-break "make-typed-bio-entity")
      ))
    ;; The real form to use
    ;;     (setq i (find-or-make-individual category :name word))
    ;; The find-or-make call will set up a rule for the short form
    ;; as a common noun that has this individual as its referent.
    ;; Ignoring brackets since this runs with the new chunker

    ;; Add synonyms.
    (when synonyms
      (add-bio-synonyms (word-string word) synonyms))

    (let* ((retrieved-rules (get-rules i))
           (r (when retrieved-rules (car retrieved-rules))))

      (when identifier
        (setq i (bind-dli-variable 'uid identifier i)))
      (when mitre-link
        (handle-mitre-link i mitre-link))
      (when ras2-model
        (setq i (bind-dli-variable 'ras2-model ras2-model i)))
      ;; At this point, i has been changed to include the ras2-model
      ;; binding (and the mitre-link binding) if necessary, so we need to use this
      ;; version of i for all the rules

      (cond
       ((and r (cfr-p r))
        ;;(push-debug `(,r)) (break " set rule form?")
        (setf (cfr-form r) category::proper-noun)
        (setf (cfr-referent r) i))
       (t
        (push-debug `(,i ,word))
        (error "something badly formed about rules field")))

      (let* ((pname (etypecase word
                      (word (word-pname word))
                      (polyword (pw-pname word))))
             (downcased-pname (string-downcase pname)))
        (unless (string= downcased-pname pname) ;; case-sensitive
          (let ((lowercase-word (resolve/make downcased-pname)))
            (push (define-cfr label `(,lowercase-word)
                    :form form
                    :referent i)
                  rules))))

      (when synonyms ;; quoted list of strings
        (dolist (syn synonyms)
          (let ((word (resolve/make syn)))
            (push (define-cfr label `(,word)
                    :form form
                    :referent i)
                  rules)
            ;; 1/12/16 Spews polyword-duplication complaints
            ;; when applied to proteins
            (when takes-plurals
              (let ((plural
                     (etypecase word
                       (word (plural-version word))
                       (polyword (plural-version/pw word)))))
                (push (define-cfr label `(,plural)
                        :form form
                        :referent i)
                      rules))))))

      ;; Now we do that by-hand for the long-form. If the long form needs
      ;; to have a variant with a greek letter in it we'll make two rules.
      (when long
        (let* ((pw (resolve/make long)) ;; pw = polyword = multiword
               (cfr (define-cfr label `(,pw)
                      :form form
                      :referent i)))
          (push cfr rules)))

      (when greek
        (let ((additional-rules
               (rules-with-greek-chars-substituted
                ;; SBCL caught fact that some words are actually polywords here...
                (etypecase word
                  (word (word-pname word))
                  (polyword (pw-pname word)))
                long greek label form i)))
          (setq rules (nconc additional-rules rules))))

      (when rules
        (add-rules-to-individual i rules))

      (when documentation
        (store-category-documentation i documentation))

      i)))

(defun rules-with-greek-chars-substituted (short long greek-words label form i)
  (unless *greek-character-map*
    (populate-greek-character-map))
  (push-debug `(,long ,greek-words ,i ,short ,form))
  (etypecase greek-words
    (string (setq greek-words (list greek-words)))
    (cons ))
  (let* ((word-char-pairs
          (loop for greek-word in greek-words ;; "alpha"
            as greek-char = (greek-character-for greek-word)
            collect (cons greek-word greek-char)))
         (word-list ;; hook for long list of aliases
          (cond ((and long short) (list long short))
                (long (list long))
                (short (list short))
                (t (error "both long and short are nil ?????"))))
         rhs-strings  rules  )

    (dolist (pname word-list)
      (dolist (pair word-char-pairs)
        (let* ((full (car pair)) ;; "alpha"
               (char (cdr pair)) ;; "a" -- the greek character
               (length (length full)) ;; 5
               (index (search full pname)))
          (when index
            (let* ((prefix (subseq pname 0 index))
                   (suffix (subseq pname (+ index length)))
                   (revised (concatenate 'string prefix char suffix)))
              ;;(break "revised = \"~a\"" revised)
              (push revised rhs-strings))))))

    (dolist (rhs rhs-strings)
      (let* ((word (resolve/make rhs))
             (rule (define-cfr label `(,word)
                     :form form
                     :referent i)))
        (push rule rules)))

    rules))

;;;----------
;;; Families
;;;----------

(defmacro def-family (name &key type species members ;; for family
                           long identifier synonyms) ;; for def-bio

  (unless (stringp name) (error "Name argument should be a string"))
  `(define-family
     ,name :type ',type :species ',species :members ',members
     :long ',long :identifier ',identifier :synonyms ',synonyms))

(defun define-family (name &key type species members
                           long identifier synonyms)
  (unless members
    (error "It doesn't make sense to define a family without members"))
  (unless type
    (setq type (category-named 'protein)))
  (unless species
    (setq species (find-individual 'species :name "human")))
  (let* ((category-name
          (cond
           ((and (eq species (find-individual 'species :name "human"))
                 (eq type (category-named 'protein)))
            'human-protein-family)
           ((eq type (category-named 'protein))
            'protein-family)
           (t (break "what type of family is this supposed to be?"))))
         (i (def-bio/expr name category-name
             :long long :identifier identifier :synonyms synonyms
             :takes-plurals t)))
    (when (consp members)
     (set-family-members i members))
    i))

(defun set-family-members (i members)
  ;;(print `(the individual which has added members is ,i))
  (let ( proteins )
    (dolist (name members)
      (let ((protein (get-protein name)))
        (unless protein
          (break "Can't retrieve protein from the name ~s" name))
        (push protein proteins)))
    (let ((set-of-proteins (create-collection proteins 'protein))
          (count (find-number (length members))))
      (setq i (bind-dli-variable 'members set-of-proteins i))
      (setq i (bind-dli-variable 'count count i))
      ;; If we didn't use such a speciic category these would matter.
      i)))



;;;-------------------
;;; fielding acronyms
;;;-------------------
; overnight #15  "20% fetal calf serum (FCS)"

(defun setup-acronym-for-bio-entity (entity acronym)
  ;; called from acronym-is-alternative-for-name should we happen
  ;; to get do-paired-punctuation-interior to see an likely
  ;; acronym when the *special-acronym-handling* flag is down.
  (push-debug `(,entity ,acronym))) ;; (break "acronym stub"))






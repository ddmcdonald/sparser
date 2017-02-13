;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "mechanics"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2016

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

;;; Define a new variable for the actual spelling of the definition
;;;  for use by HMS
(define-lambda-variable 'raw-text
    nil 'top)

;;;---------------------------
;;; TRIPS & REACH --> def-bio
;;;---------------------------

(defparameter *show-trips-redefinitions* nil)
(defparameter *suppress-redefinitions* t)

(defparameter *trips-define-proteins* nil)

(defun trips/reach-term->def-bio (term &optional (trips/reach->krisp-class #'trips-class->krisp))
  "Function takes a trips definition and returns a sparser definition form"
  (when (equal (second term) 'sparser::--)
    ;; new format for file -- revise call
    (setq term (third term)))
  (when *suppress-redefinitions*
    (when (resolve (car term))
      (when *show-trips-redefinitions*
        (format t "~%ignoring redefinition ~s of already defined word~%"
                term))
      (return-from trips/reach-term->def-bio nil))
    (when 
        (or (resolve (string-downcase (car term)))
            (resolve (string-upcase (car term))))
      (when *show-trips-redefinitions*
        (format t "~%ignoring mixed-case redefinition ~s of already defined word~%"
                term))
      (return-from trips/reach-term->def-bio nil)))

  (let ((category (funcall trips/reach->krisp-class term)))
    (case category
      ((residue-on-protein molecular-site nil time-span)
       ;;(format t "Rejecting REACH definition ~s~%" term)
       nil)
      (cellular-location
       (def-cell-loc (car term)
           (simplify-colons
            (getf (cddr term) :id))))
      ((bacterium ;;bio-process ;; may conflict with handling of post-translational processes
        cancer
        cell-line
        cell-type
        cellular-process
        disease
        drug
        ;;gene
        molecule
        organism
        ;;protein
        ;; rna has problems
        unit-of-measure
        virus)
       `(def-bio ,(car term)
            ,category
          :long ,(getf (cddr term) :name)
          :identifier ,(simplify-colons
                        (getf (cddr term) :id))))

      ((gene protein gene-protein)
       (push 
        `(define-protein ,(car term) ,(list (getf (cddr term) :id) (getf (cddr term) :name)))
        *trips-define-proteins*)
       (car *trips-define-proteins*))
      (bio-process
       (when (getf (cddr term) :name)
         (let ((name (intern (string-upcase (getf (cddr term) :name)) (find-package :sparser))))
         (if (category-named name)
             `(def-synonym ,name (:noun ,(car term)))
             `(define-category ,name :specializes bio-process
                  ,.(when (getf (cddr term) :id)
                      `(:bindings (uid ,(getf (cddr term) :id))))
                  :realization (:noun ,(car term)))))))
      (t
       (unless (member category '(bio-method bio-organ bio-complex protein-domain protein-family rna ))
         (format t "~%defining an instance of ~s~%" category))
       (when (member category '(point-mutation)) 
         ;;(member category '(bio-process bio-organ bio-complex))
         ;; we really want bio-processes and bio-organs to be individuals, but there is a problem with def-bio -- ASK ALEX
         (lsp-break "trips/reach-term->def-bio"))
       (unless (or (eq category 'referential-sem)
                   (eq category 'time-unit))
         (let ((name (getf (cddr term) :name)))
           `(define-named-bio-individual ',category
                ',(intern (string-upcase (car term)) (find-package :sp))
              ',(simplify-colons (getf (cddr term) :id))
              ,.(when name `(:name ,(pname name))))))))))

(defparameter *uid-to-individual* (make-hash-table :size 10000 :test #'equal))

(defmacro def-named-bio-individual (word category-name id &key name)
  `(define-named-bio-individual ',category-name ',word ',id ,. (when name `(:name `,name))))

(defun define-named-bio-individual (category-name word id &key name)
  (let* ((category (category-named category-name :break-if-undefined))
         (i (if id
                (or (gethash id *uid-to-individual*)
                    (setf (gethash id *uid-to-individual*)
                          (let ((ind (find-or-make-individual category :uid id)))
                            (if name
                                (bind-dli-variable :name name ind)
                                ind))))
                (find-or-make-individual category :name (if name (pname name) (pname word))))))
    (add-rules (make-rules-for-head :common-noun (resolve/make (string-downcase (pname word))) category i) i)
    (when name (add-rules (make-rules-for-head :common-noun (resolve/make (pname name)) category i) i))
    i))
  


(defun trips-class->krisp (term)
  (unless (null (second term))
    (ecase (intern (subseq (second term) 4)) ;; drop the ONT:
      ((protein gene-protein gene) 'protein) ;; we treat genes as if they name the protein
      ;;(gene 'gene)
      (bacterium 'bacterium)
      (biological-process 'bio-process)
      ((internal-body-part body-part) 'bio-organ)
      (cancer 'cancer)
      (cell 'cell-type)
      (cell-line 'cell-line)
      (cell-part 'cellular-location)
      ((chemical molecule) 'molecule)
      (macromolecular-complex 'bio-complex)
      ((measure-unit volume-unit weight-unit) 'unit-of-measure)
      (medical-disorders-and-conditions 'disease)
      (medical-instrument 'bio-method) ;; not quite, but we don't distinguish the instruments from the methods
      (molecular-domain 'protein-domain)
      (molecular-site 'residue-on-protein)
      ((organism nonhuman-animal animal fish invertebrate microorganism fungus plant bird) 'organism)
      (pharmacologic-substance 'drug)
      (physical-condition 'disease)
      (procedure 'bio-method)
      (process 'bio-method) ;; the one case we have here is a bio-method -- transplantation
      (protein-family 'protein-family)
      (mutation nil)
      ((amino-acid referential-sem substance time-unit mutation) 'referential-sem) ;; huh? (ref-sem is now prefiltered, and the instances of substance are "build-up" and "mole-cule" -- not sure what to do with the first, and the second is probably from a line break we need to handle better)
      ((rna mrna) 'rna)
      (signaling-pathway 'pathway)
      (time-span 'time-span)
      (virus 'virus))))


(defun simplify-colons (x)
  (if (search "::" x)
      (concatenate 'string
                   (subseq x 0 (search "::" x) )
                   ":"
                   (subseq x (+ 2 (search "::" x) )))
      x))

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
  (let* ((name (value-of 'name bio-entity))) ;; often a polyword
    (if name
        (let ((protein (define-bio name 'protein)))
          ;; delete all the rules associated with the individual
          (setf (get-rules bio-entity) (map nil #'delete/cfr (get-rules bio-entity)))
          ;; can't easily delete the individual itself
          protein)
        (else
          (warn "Couldn't convert bio-entity ~s to a protein -- bad plural?" (retrieve-surface-string bio-entity))
          bio-entity))))

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
        (set-edge-referent e new-ref)
        ;;(update-edge-mention-referent e new-ref)
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
  (let* ((pos-after (chart-position-after pos-before))
         (actual-characters
          (trim-whitespace
           (extract-characters-between-positions pos-before pos-after)))
         (word (resolve/make actual-characters)))
    ;;(format t "~&~%Making ~s a bio-entity~%~%" (word-pname word))

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

(defparameter *maintain-ras2-info* nil)

(defmacro def-ras2-protein (name args)
  (if *maintain-ras2-info*
      (eval `(define-protein ,name ,args :ras2-model t))
      (eval `(define-protein ,name ,args))))

;;;---------------------------
;;; pattern-driven protein definition
;;;---------------------------

(defmacro define-protein (name IDS &key documentation ras2-model)
  ;; no longer pluralize protein definitions -- see what happens
  (let ((*inhibit-constructing-plural* t))
    (declare (special *inhibit-constructing-plural*))
    (setq IDS (loop for id in IDS when (allowable-protein-head id) collect id))
    (if ras2-model
        (make-def-protein (cons name IDS) :documentation documentation :ras2-model t)
        (make-def-protein (cons name IDS) :documentation documentation))))

(defmacro define-singular-protein (name IDS)
  (let ((*inhibit-constructing-plural* t))
    (declare (special *inhibit-constructing-plural*))
    (setq IDS (loop for id in IDS when (allowable-protein-head id) collect id))
    (make-def-protein (cons name IDS))))

(defparameter *prot-synonyms* (make-hash-table :test #'equal))
(defparameter *standardize-protein-defs* nil)
(defparameter *standard-protein-ht* (when *standardize-protein-defs* (make-hash-table :size 10000 :test #'equalp)))

(defun make-standard-proteins ()
  (loop for pr in (sort (hal *standard-protein-ht*) #'string< :key #'car)
        do 
          (format t "(define-protein ~s (" (car pr))
          (loop for ss in (sort (cdr pr) #'string<) do (format t "~s " ss))
          (format t "))~%")))

(defun get-protein-synonyms (id)
  (gethash id *prot-synonyms*))

(defparameter *q-proteins* nil)



(defparameter *non-standard-protein-ht* (when *standardize-protein-defs* (make-hash-table :size 10000 :test #'equalp)))

(defun standardize-protein-def (ids)
  (declare (special *upa-upm*))
  (when *standardize-protein-defs*
    (let* ((human-mnemonic (loop for id in ids when (human-mnemonic? id) do (return id)))
           (standard-id
            (or (and human-mnemonic
                     (gethash (string-upcase human-mnemonic) *upa-upm*)
                     (pname (gethash human-mnemonic *upa-upm*)))
                (loop for id in ids
                      do
                        (cond ((and (not (human-mnemonic? id)) (gethash id *upa-upm*))
                               (return id))
                              ((up-accession? id) (return (up-accession? id)))))
                (loop for id in ids
                      do (if (eq 0 (search "PROTEIN" id))
                             (return id)))
                (loop for id in ids
                      do (if (search "_" id)
                             (return id))))))
      (when (and standard-id (not (human-mnemonic? standard-id)) (gethash standard-id *upa-upm*))
        (push (gethash standard-id *upa-upm*) ids))
               
      (if standard-id
          (setf (gethash standard-id *standard-protein-ht*)
                (remove standard-id
                        (remove-duplicates (append ids (gethash standard-id *standard-protein-ht*)) :test #'equal)
                        :test #'equal))
          (setf (gethash (car ids) *non-standard-protein-ht*)
                (remove (car ids)
                        (remove-duplicates (append ids (gethash (car ids) *non-standard-protein-ht*)) :test #'equal)
                        :test #'equal))))))



(defun human-mnemonic? (pr)
  (search "_HUMAN" (pname pr) :test #'equalp))

(defun extract-up (pr upstring)
  (let* ((found (search upstring pr :test #'equalp))
         (start (when found (+ found (length upstring))))
         (res 
          (when found
            (subseq pr start
                    (or (search " " pr :start2 start)
                        (search ")" pr :start2 start))))))
    (when (and res (not (equalp "" res)))
      (if (equal "0" (subseq res 0 1))
          pr
          res))))

(defun up-accession? (pr)
  (let ((pr (pname pr)))
    (or (extract-up pr "UP:")
        (extract-up pr "UniProt:")
        (extract-up pr "PR:"))))

(defun make-def-protein (IDS &key documentation (ras2-model nil))
  (declare (special *inhibit-constructing-plural*))
  (standardize-protein-def ids)
    
                                        
  (let
      ((bpid (best-protein-id IDS)))
    (loop for id in IDS 
          when (and (equal id (string-downcase id)) (not (search " " id))
                    (not (find-if #'digit-char-p id)))
          do (push id *q-proteins*))
    (def-bio/expr bpid
        'protein
      :synonyms (loop for id in IDS
                      unless
                        (or (equal id bpid)
                            (eq (length id) 2) ;; (and (eq (length id) 2) (print id))
                            (and (search ":" id)
                                 (not (search " " id))))
                      collect id)
      :identifier bpid

      :MITRE-LINK (if (search "_" bpid)
                      (format nil "UNIPROT:~A" bpid)
                      bpid)
      :ras2-model ras2-model
      :takes-plurals (not *inhibit-constructing-plural*)
      :documentation documentation)))

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
  (cond ((search ":" (car ids))
         (car ids))
        ((loop for id in ids
               when (search "_" id)
               do (return id)))
        (t (car ids)))
  ;;(car ids) ;; we now have updated all defining forms so the best id is the first one!!
  )

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
  (declare (special *inhibit-constructing-plural*))
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
    (setq takes-plurals (not *inhibit-constructing-plural*)))

  `(def-bio/expr ,short ',kind
     :documentation ,documentation
     :greek ',greek :identifier ',identifier :mitre-link ,mitre-link
     :ras2-model ,ras2-model
     :long ,long :synonyms ',synonyms :takes-plurals ,takes-plurals))


(defun def-bio/expr (short kind
                     &key documentation greek identifier mitre-link
                       long synonyms takes-plurals ras2-model
                       members)
  ;; use find-individual with their names to retrieve these.
  (let* ((word (resolve/make short))
         (category (category-named kind :break-if-undefined)))
    (without-redefinition-warnings
      (make-typed-bio-entity word category
                             greek identifier mitre-link
                             ras2-model long synonyms takes-plurals documentation members))))


(defun define-bio (word category-name)
  (let ((category (category-named category-name :break-if-undefined)))
    (make-typed-bio-entity word category)))


(defun make-typed-bio-entity (word category
                              &optional greek identifier mitre-link
                                ras2-model
                                long synonyms takes-plurals documentation members)
  
  (unless (find-variable-for-category 'name category)
    (error "Cannot use the def-bio form with the category ~a~
            because it does not provide a 'name' variable" category))
  
  (let ((label (or (override-label category) category))
        (form (category-named 'proper-noun))
        ;; proper noun makes sense for named protiens and such
        ;; but the marker may actually be the capitalization
        ;; of the word, which would have to be caught upstream
        ;; and passed through in a parameter.
        rules  i   )

    ;; The real form to use
    ;;     (setq i (find-or-make-individual category :name word))
    ;; The find-or-make call will set up a rule for the short form
    ;; as a common noun that has this individual as its referent.
    ;; Ignoring brackets since this runs with the new chunker

    (setq i (find-or-make-individual category :name word))

    
    ;;(lsp-break "make-typed-bio-entity")
      
   
    ;; Add synonyms to the table for this head term
    (when synonyms
      (add-bio-synonyms (or identifier (word-string word)) synonyms))

    (let* ((retrieved-rules (get-rules i))
           (r (when retrieved-rules (car retrieved-rules))))

      #|
      (when mitre-link
      (handle-mitre-link i mitre-link))
      (when ras2-model
      (setq i (bind-dli-variable 'ras2-model ras2-model i)))
      ;; At this point, i has been changed to include the ras2-model ; ;
      ;; binding (and the mitre-link binding) if necessary, so we need to use this ; ;
      ;; version of i for all the rules ; ;
      |#

      (when identifier
        (setq i (bind-dli-variable :uid identifier i)))
      (when (consp members)
        (setq i (set-family-members i members)))

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
                    :referent i
                    #+ignore ;; fill in raw-text at completion
                    (if (value-of 'name i)
                                  (bind-dli-variable 'raw-text word i)
                                  (bind-dli-variable 'name word i)))
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
                        :referent (if (value-of 'name i)
                                  (bind-dli-variable 'raw-text word i)
                                  (bind-dli-variable 'name word i)))
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
        (add-rules rules i))

      (when documentation
        (store-category-documentation i documentation))

      i)))


(defun rules-with-greek-chars-substituted (short long greek-words label form i)
  (unless 



*greek-character-map*
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
  #+ignore
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
             :takes-plurals t
             :members members)))
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
      (setq i (bind-dli-variable 'family-members set-of-proteins i))
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






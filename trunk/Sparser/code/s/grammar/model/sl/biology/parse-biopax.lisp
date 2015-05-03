;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2013-2015 SIFT LLC. All Rights Reserved
;;;
;;;    File: "parse-biopax"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2015

;; This is a set of tools to read in a complete Biopax Level 3 model for the RAS/RAF/MEK/ERK cascade
;;  that was exported from Reactome
;; Simple tool to read in the RDF, and a mor complex set of tools to simplify the structure so that
;;  it can be understood by humans
;; Goals is to import this all into Krisp in an appropriate fashion
;; also added a  new mechanism of general Krisp interest
;; S-expression based creator of individuals in Krisp
;; example:
;; (create-individual
;;   '(residue-on-protein (position 437) (amino-acid (amino-acid (name "threonine")))))
;; Formatted Bipoax frames to make them a bit more clear...
;; Added commentary on Brent's story at the end of the file

(in-package :sparser)
(defvar *bpi*)
(defparameter *xml-ht* (make-hash-table :size 1000 :test #'equalp))

(defparameter *bp-frames*
  '(
    ("BioSource" ("name") ("xref" "UnificationXref"))
    ("BiochemicalReaction" ("comment") ("conversionDirection") ("dataSource" "Provenance")
     ("displayName") ("eCNumber")
     ("left" "bpSmallMolecule") ("left" "Protein") ("left" "Complex") ("participantStoichiometry" "Stoichiometry")
     ("right" "bpSmallMolecule") ("right" "Protein") ("right" "Complex") 
     ("xref" "RelationshipXref") ("xref" "PublicationXref") ("xref" "UnificationXref")) 
    ("Catalysis" ("controlType") ("controlled" "BiochemicalReaction") 
     ("controller" "Protein") ("controller" "Complex") ("controller" "PhysicalEntity") 
     ("dataSource" "Provenance") ("xref" "RelationshipXref")) 
    ("CellularLocationVocabulary" ("term") ("xref" "UnificationXref"))
    ("ChemicalStructure" ("structureFormat") ("structureData"))
    ("Complex" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("component" "Complex") ("component" "bpSmallMolecule") ("component" "Protein") ("componentStoichiometry" "Stoichiometry") ("dataSource" "Provenance") ("displayName") ("memberPhysicalEntity" "Complex") ("name") ("xref" "UnificationXref")) 
    ("Control" ("comment") ("controlType") ("controlled" "BiochemicalReaction") 
     ("controller" "Protein") ("controller" "Complex") 
     ("dataSource" "Provenance") ("displayName") ("xref" "PublicationXref") ("xref" "UnificationXref")) 
    ("Evidence" ("evidenceCode" "EvidenceCodeVocabulary"))
    ("EvidenceCodeVocabulary" ("xref" "UnificationXref") ("term"))
    ("FragmentFeature" ("featureLocation" "SequenceInterval"))
    ("ModificationFeature" ("featureLocation" "SequenceSite") ("modificationType" "SequenceModificationVocabulary"))
    ("bpPathway" ("comment") ("dataSource" "Provenance") ("displayName") ("organism" "BioSource")
     ("pathwayComponent" "BiochemicalReaction") ("pathwayComponent" "Pathway")
     ("pathwayOrder" "PathwayStep") ("xref" "RelationshipXref") ("xref" "PublicationXref") ("xref" "UnificationXref"))
    ("PathwayStep" ("nextStep" "PathwayStep")
     ("stepProcess" "Control") ("stepProcess" "Pathway") ("stepProcess" "Catalysis") ("stepProcess" "BiochemicalReaction")("step-Process" "Transport"))
    ("PhysicalEntity" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("dataSource" "Provenance") ("displayName") ("xref" "UnificationXref")) 
    ("ProteinState" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("dataSource" "Provenance") ("displayName") ("entityReference" "ProteinReference") ("feature" "ModificationFeature") ("feature" "FragmentFeature") ("memberPhysicalEntity" "Protein") ("name") ("xref" "UnificationXref")) 
    ("ProteinReference" ("comment") ("name") ("organism" "BioSource") ("xref" "UnificationXref")) 
    ("Provenance" ("comment") ("name")) 
    ("PublicationXref" ("author") ("db") ("id") ("source") ("title") ("year")) 
    ("RelationshipTypeVocabulary" ("term") ("xref" "UnificationXref")) 
    ("RelationshipXref" ("comment") ("db") ("id") ("relationshipType" "RelationshipTypeVocabulary")) 
    ("SequenceInterval" ("sequenceIntervalBegin" "SequenceSite") ("sequenceIntervalEnd" "SequenceSite")) 
    ("SequenceModificationVocabulary" ("term") ("xref" "UnificationXref")) 
    ("SequenceSite" ("positionStatus") ("sequencePosition")) 
    ("bpSmallMolecule" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("dataSource" "Provenance") ("displayName") ("entityReference" "SmallMoleculeReference") ("name") ("xref" "UnificationXref")) 
    ("SmallMoleculeReference" ("name") ("xref" "UnificationXref")) 
    ("Stoichiometry" ("physicalEntity" "Complex") ("physicalEntity" "SmallMolecule") ("physicalEntity" "Protein") ("stoichiometricCoefficient")) 
    ("Transport"
     ("comment")("conversionDirection") ("dataSource" "Provenance")
     ("displayName") ("standardName")("eCNumber")
     ("left" "bpSmallMolecule") ("left" "Protein") ("left" "Complex")
     ("participantStoichiometry" "Stoichiometry")
     ("right" "bpSmallMolecule") ("right" "Protein") ("right" "Complex") 
     ("xref" "RelationshipXref") ("xref" "PublicationXref") ("xref" "UnificationXref")
     ("origin" "CellularLocationVocabulary") ("destination" "CellularLocationVocabulary"))

    ("UnificationXref" ("comment") ("db") ("id") ("idVersion"))))

(defparameter *bp-patterns*
  '(("BioSource" ("name") ("xref"))
    ("BiochemicalReaction" ("conversionDirection") ("left") ("participantStoichiometry")  ("right") ("eCNumber") ("displayName")) ;; ("xref") )
    ("Catalysis" ("controller") ("controlled") ("controlType" "ACTIVATION"));  ("xref") )
    ("CellularLocationVocabulary" ("term") ("xref"))
    ("ChemicalStructure" ("structureFormat") ("structureData"))
    ("Complex" ("displayName") ("cellularLocation") ("componentStoichiometry") ("component")); ("xref"))
    ("Control" ("displayName") ("controlType") ("xref") ("controller") ("controlled"))
    ("Evidence" ("evidenceCode" "EvidenceCodeVocabulary"))
    ("EvidenceCodeVocabulary" ("xref" "UnificationXref") ("term"))
    ("FragmentFeature" ("featureLocation"))
    ("ModificationFeature" ("featureLocation") ("modificationType"))
    ("bpPathway" ("pathwayComponent") ("pathwayOrder") ("organism") ("displayName")); ("xref"))
    ("PathwayStep" ("stepProcess"))
    ("PhysicalEntity" ("displayName") ("cellularLocation")); ("xref") )
    ("Protein" ("displayName") ("cellularLocation") ("entityReference") ("feature") );;("name") ("xref")
    ("ProteinState" ("displayName") ("cellularLocation") ("entityReference") ("feature") );;("name") ("xref")
    ("ProteinReference" ("organism") ("name") ) ;;("xref")
    ("Provenance" ("name"))
    ("PublicationXref" ("id") ("db") ("year")  ("source" "J Biol Chem 270:9809-12"))
    ("RelationshipTypeVocabulary" ("term"))
    ("RelationshipXref" ("db") ("id") )
    ("SequenceInterval" ("sequenceIntervalBegin") ("sequenceIntervalEnd"))
    ("SequenceModificationVocabulary" ("term"));("xref"))
    ("SequenceSite" ("sequencePosition"))
    ("bpSmallMolecule" ("displayName")  ("cellularLocation") ("entityReference") ) ;;("name")("xref")
    ("SmallMoleculeReference" ("name"));("xref"))
    ("Stoichiometry" ("stoichiometricCoefficient") ("physicalEntity"))
    ("Transport" ("standardName") ("right") ("participantStoichiometry") ("left") ("dataSource")("origin")("destination"))
    ("UnificationXref" ("db") ("id") ("idVersion"))))

#|
decoding table for referenced OBO terms
"RelationshipXref1" "GO:0004713")) protein tyrosine kinase activity
"RelationshipXref3" "GO:0016301")) kinase activity
"RelationshipXref5" "GO:0000186")) activation of MAPKK activity
"RelationshipXref6" "GO:0004674")) protein serine/threonine kinase activity
"RelationshipXref9" "GO:0000189")) MAPK import into nucleus
"RelationshipXref11" "GO:0070371")) ERK1 and ERK2 cascade (the ERK pathway in the literature, but involves only ERK1 or ERK2, not other ERK kinases)
"RelationshipXref12" "GO:0000187")) activation of MAPK activity
"RelationshipXref13" "GO:0000165")) MAPK cascade. An intracellular protein kinase cascade containing at least a MAPK, a MAPKK and a MAP3K.

"UnificationXref1" "GO:0005829")) cytosol
"UnificationXref121" "GO:0005576")) extracellular region
"UnificationXref14" "GO:0005886")) plasma membrane
"UnificationXref172" "GO:0005654")) nucleoplasm
|#

(defparameter *simp-fns* (make-hash-table :test #'equalp))
;;;;; utility functions
(defun legal-praxis-char (char)
  (or (alphanumericp char)
      (legal-non-alphanumeric? char)))

(defun make-nlp-path (rel-path)
  (format nil"~A/~A" cl-user::*nlp-home* rel-path))

(defun make-reactome-path (rel-path)
  (make-nlp-path
   (format nil "Sparser/code/s/grammar/model/sl/biology/reactome/~A" rel-path)))

(defun legal-non-alphanumeric? (char)
  (member char '(#\_ #\-) :test 'eql))
(defun CamelCase-string-to-separated (pname &optional (separator #\-))
  (let ((chars nil)
        (len (length pname))
        (prior-cap? nil))
    (flet ((next-char (n)
               (unless (>= n len)
                 (let ((c (char pname n)))
                   (unless (legal-praxis-char c)
                     (push-debug `(,pname ,chars))
                     (error "Illegal PRAXIS character: ~a" c))
                   c)))
           (push-char (c &optional (predash nil))
             (when predash (push separator chars))
             (push (char-upcase c) chars)))

      (do ((i 0 (1+ i)))
          ((>= i (length pname)) nil)
        (let ((c (next-char i)))
          (when c
            (let* ((upc? (upper-case-p c))
                   (nextc (next-char (1+ i)))
                   (upcnext? (and nextc (upper-case-p nextc))))
              (cond ((null nextc) ;; no next char - special case
                     ;; dash before only if first cap after non-cap
                     (push-char c (and upc? (not prior-cap?))))
                    (t
                     (push-char c (and upc? (> i 0) ;; dont predash if first char or noncap
                                       (or (not prior-cap?) ;; first upchar
                                           (and prior-cap?
                                                (alpha-char-p nextc) ;; no dash if num or - next
                                                (not upcnext?)) ;; but yes if or last alpha cap of seq
                                           )))))
              (setf prior-cap? upc?)))))
      (concatenate 'string (nreverse chars)))))


(defun load-bp-ras-raf(&optional (file (make-reactome-path "RAF_MEK_ERK_biopax3.owl")))
  (setq *bpi*
        (loop for i in
          (cdddr (load-owl file))
          collect (biopax-to-bio-sexpr i)))
  (loop for bio-sexpr in *bpi*
    do
    (setf (gethash (second bio-sexpr) *xml-ht*)
          (normalize-sexpr-to-biopax3 (gethash (second bio-sexpr) *xml-ht*)))))

(defun load-owl (filename)
  (with-open-file
      (s filename :direction :input)
    (xmls:parse s)))

(defun biopax-to-bio-sexpr (child)
  (declare (special child))
  (let* ((tag (xmls:xmlrep-tag child))
         (bio-sexpr
          `(,(cond
              ;; perhaps temporary -- rename the categories from Biopax/Reactome
              ;;  away from ones already in R3
              ;; Probably need to to a more principled merge
              ((equalp "Protein" tag)  "ProteinState")
              ;;((equalp "Complex" tag) "bpComplex")
               ((equalp "Pathway" tag) "bpPathway")
              ((equalp "SmallMolecule" tag) "bpSmallMolecule")
              ;;((equalp "Stoichiometry" tag) "bpStoichiometry")
              ((equalp "BiochemicalPathwayStep" tag) "PathwayStep") ;; change in nomenclature from earlier biopax?
              ((equalp "ComplexAssembly" tag) "BiochemicalReaction") ;; change in nomenclature from earlier biopax?
              (t tag))
            ,(xmls:xmlrep-attrib-value "ID" child)
            ,@(loop for rep in (xmls::xmlrep-attribs child)
                unless
                (equalp (car rep) "ID")
                collect rep)
            ,@(loop for rep in (xmls::xmlrep-children child)
                unless (null rep) ;; bug in xmls?!
                collect
                (let*
                    ((*rep* (remove nil rep))
                     (*val-type* (car (second *rep*))))
                  (declare (special *rep* *val-type*))
                  `(,(xmls::xmlrep-tag *rep*)
                    ,(cond
                      ((equalp (car *val-type*) "resource")
                       `(xml-resource
                         ,(cond
                           ((eql #\# (char (second *val-type*) 0))
                            (subseq (second (car (second rep))) 1))
                           (t (second *val-type*) 1))))
                      ((equalp (car *val-type*) "datatype")
                       (cond
                        ((equalp (second *val-type*) "http://www.w3.org/2001/XMLSchema#string")
                         (third rep))
                        ((equalp (second *val-type*) "http://www.w3.org/2001/XMLSchema#int")
                         (read-from-string (third rep)))
                        ((equalp (second *val-type*) "http://www.w3.org/2001/XMLSchema#float")
                         (read-from-string (concatenate 'string (third rep) ".0")))
                        (t (break "what datatype"))))
                      (t
                       ;; in this case we have a recursive structure
                       ;; and we are going to simplify and record it in *xml-ht*
                       (biopax-to-bio-sexpr (second *rep*))))))))))
    (setf (gethash (second bio-sexpr) *xml-ht*)
          bio-sexpr)
    bio-sexpr))

(defun find-children (bio-sexpr branch-tag)
  (loop for child in (cddr bio-sexpr)
    when (and (consp child)
              (equalp (car child) branch-tag))
    collect (second child)))

(defun is-transport? (bio-sexpr)
  (declare (special bio-sexpr))
  (let
      ((lefts (find-children bio-sexpr "left"))
       (rights (find-children bio-sexpr "right")))
    (declare (special lefts rights))
    (and
     (equalp (length lefts)(length rights)) ;; same number of reactants on both sides
     (loop for l in lefts
       always
       (loop for r in rights
         thereis (same-biochemical? l r))))))

(defun same-biochemical? (l r)
  (let
      ((l (eval l))
       (r (eval r)))
  (declare (special l r))
  (cond
   ((and
       (equalp (car l) (car r))
       ;; a bit of a hack -- the same chemical in two different locations has the same displayName in Reactome
       (equalp (car (find-children l "displayName"))
                (car (find-children r "displayName"))))
    t)
   (t nil))))


(defun normalize-sexpr-to-biopax3 (bio-sexpr)
  ;; the Reactome data is not in corrrect biopax3 form, in particular it uses BiochemicalReaction for cases like
  ;;  Transport
  (cond
   ((equalp "BiochemicalReaction" (car bio-sexpr))
    (cond
     ((is-transport? bio-sexpr)
      (normalize-to-transport bio-sexpr))
     (t bio-sexpr)))
    (t
     bio-sexpr)))

(defun normalize-to-transport (bio-sexpr)
  (declare (special bio-sexpr))
  (let*
      ((left (eval (car (find-children bio-sexpr "left"))))
       (right (eval (car (find-children bio-sexpr "right"))))
       (origin (car
                (find-children
                (eval (car (find-children left "cellularLocation")))
                "term")))
       (destination (car
                (find-children
                (eval (car (find-children right "cellularLocation")))
                "term")))
       (norm
        `("Transport"
          ,@(cdr bio-sexpr)
          ("origin" ,origin)
          ("destination" ,destination))))
    (declare (special left right norm))
    norm))

(defun xml-resource? (ii)
  (and (consp ii)
       (cdr ii)
       (consp (second ii))
       (eq 'xml-resource (car (second ii)))))

(defun simplify-tree (tree depth)
  (declare (special tree depth))
  (if (< depth 1)
      `(xml-resource ,(second tree))
      (let
          ((pattern
            (and (consp tree)
                 (assoc (car tree) *bp-patterns* :test #'equalp))))
        (declare (special pattern))
        (when (and pattern (not (equalp (car tree) "xref")))
          `(,(car tree) ,(second tree)
            ,@(loop for item in (cddr tree)
                when
                (and
                 (consp item)
                 (assoc (car item) (cdr pattern) :test #'equalp)) ;; find-pattern
                collect
                `(,(car item)
                  ,(simplify-xml-resource item (- depth 1)))))))))

(defun simplify-xml-resource (item depth)
  (if (xml-resource? item)
      (let*
          ((xml-resource (gethash (second (second item)) *xml-ht*))
           (simp-fn (gethash (car xml-resource) *simp-fns*))
           (simp (if simp-fn
               (funcall simp-fn xml-resource)
               (simplify-tree xml-resource depth))))
        (subst 'bp 'xml-resource simp))
      (second item)))

(defun simple-bps (depth)
  (loop for b in *bpi*
    collect
    (simplify-tree b depth)))

(defparameter *bp-types* (make-hash-table :test #'equalp))
(defparameter *bp-type-list* nil)
(defparameter *unsimp* nil)

(defun sort-bp-types ()
  (clrhash *bp-types*)
  (setq *bp-type-list* nil)
  (setq *bpi* nil)
  (maphash #'(lambda (name p)
               (declare (ignore name))
               (push p *bpi*))
           *xml-ht*)
  (loop for p in *bpi*
    do
    (let ((simp-tree (simplify-tree p 1)))
      (when (null simp-tree)
        (push p *unsimp*))
      (push (simplify-tree p 1)
            (gethash (car p) *bp-types*))))
  (maphash
   #'(lambda (type tl)
       (declare (ignore type))
       (push (sort tl #'string< :key #'second)
             *bp-type-list*))
   *bp-types*)
  (setq *bp-type-list*
        (sort *bp-type-list*
              #'string<
              :key
              #'caar)))

(defun simplify-unification-xref (uxref)
  (let
      ((simp-tree (simplify-tree uxref 1)))
    `(xref ,@(assoc "db" (cddr simp-tree) :test #'equalp)
           ,@(assoc "id" (cddr simp-tree) :test #'equalp)
           ,@(assoc "idVersion" (cddr simp-tree) :test #'equalp))))

(setf (gethash "UnificationXref" *simp-fns*) #'simplify-unification-xref)

(defun simplify-stoichiometry (stoich)
  (let
      ((simp-tree (simplify-tree stoich 1)))
  `(,(second (assoc "stoichiometricCoefficient" (cddr simp-tree) :test #'equalp))
    X
    ,(second (assoc "physicalEntity" (cddr simp-tree) :test #'equalp)))))

(setf (gethash "Stoichiometry" *simp-fns*) #'simplify-stoichiometry)

(defun simplify-SequenceModificationVocabulary (item)
   (let
      ((simp-tree (simplify-tree item 1)))
     (second (assoc "term" (cddr simp-tree) :test #'equalp))))

(setf (gethash "SequenceModificationVocabulary" *simp-fns*) #'simplify-SequenceModificationVocabulary)

(defun simplify-sequence-site (item)
   (let
      ((simp-tree (simplify-tree item 1)))
     (second (assoc "sequencePosition" (cddr simp-tree) :test #'equalp))))

(setf (gethash "SequenceSite" *simp-fns*) #'simplify-sequence-site)

(defun simplify-biochemical-reaction (item)
  (let
      ((simp-tree (simplify-tree item 1)))
    (loop for i in simp-tree
      unless (and (consp i)
                  (equalp (car i) "xref")
                  (equalp (second (second i)) "db"))
      collect i)))

(setf (gethash "BiochemicalReaction" *simp-fns*) #'simplify-biochemical-reaction)

(defun simplify-biosource (item)
   (let
      ((simp-tree (simplify-tree item 1)))
     (second (assoc "name" (cddr simp-tree) :test #'equalp))))

(setf (gethash "BioSource" *simp-fns*) #'simplify-biosource)

(defun simplify-cellularlocation (item)
   (let
      ((simp-tree (simplify-tree item 1)))
     (second (assoc "term" (cddr simp-tree) :test #'equalp))))

(setf (gethash "CellularLocationVocabulary" *simp-fns*) #'simplify-cellularlocation)

(defun simplify-protein-reference (item)
   (let
      ((simp-tree (simplify-tree item 1)))
     `("ProteinReference" ,(second simp-tree)
       ,(second (assoc "name" (cddr simp-tree) :test #'equalp))
       ,(second (assoc "organism" (cddr simp-tree) :test #'equalp)))))

(setf (gethash "ProteinReference" *simp-fns*) #'simplify-protein-reference)

(defun simplify-protein (item)
   (let
      ((simp-tree (simplify-tree item 1)))
     `("ProteinState" ,(second simp-tree)
       ,(second (assoc "displayName" (cddr simp-tree) :test #'equalp))
       ,(second (assoc "cellularLocation" (cddr simp-tree) :test #'equalp)))))

(setf (gethash "Protein" *simp-fns*) #'simplify-protein)

#|

(setf (gethash "CellularLocationVocabulary" *simp-fns*) #'simplify-cellular-location-vocabulary)
(setf (gethash "BioSource" *simp-fns*) #'simplify-biosource)
(setf (gethash "Stoichiometry" *simp-fns*) #'simplify-stoichiometry)
(setf (gethash "Stoichiometry" *simp-fns*) #'simplify-stoichiometry)
(setf (gethash "Stoichiometry" *simp-fns*) #'simplify-stoichiometry)
|#

(defparameter *bp-type-vars* (make-hash-table :test #'equalp))
(defparameter *type-var-list* nil)

(defun type-vars ()
  (clrhash *bp-type-vars*)
  (setq *type-var-list* nil)
  (loop for ti in *bpi*
    do
    (let
        ((type (car ti)))
      (loop for v in ti
        when (consp v)
        do
        (pushnew `(,(car v)
                   ,@(when (xml-resource? v)
                       (list (car (gethash (second (second v)) *xml-ht*)))))
                 (gethash type *bp-type-vars*)
                 :test #'equalp))))
  (maphash #'(lambda (type vars)
               (push (cons type
                           (sort vars #'string< :key #'car)) *type-var-list*))
           *bp-type-vars*)
  (setq *type-var-list*
        (sort *type-var-list* #'string< :key #'car))
  (np *type-var-list*))



(defun save-ras-raf (&optional (ifile (make-reactome-path "RAF_MEK_ERK_biopax3.owl"))
                               (ofile (make-reactome-path "RAF_MEK_ERK_simple.lisp")))
  (load-bp-ras-raf ifile)
  (sort-bp-types)
  (with-open-file
      (s ofile
         :direction :output :if-exists :overwrite :if-does-not-exist :create)
    (loop for type-list in *bp-type-list* do
      (terpri s)
      (loop for item in type-list
        do
        (print item s)))))

(defun save-reduced-ras-raf()
  (save-ras-raf (make-reactome-path "reduced_RAS_RAF_MEK_ERK_biopax3.owl")
                (make-reactome-path "reduced_RAS_RAF_MEK_ERK_simple.lisp")))

;;;;;; make Krisp categories and individuals for Reactome objects
(defun reactome-category (string)
  (category-named (reactome-symbol string)))


(defun reactome-symbol (string)
  (intern
   (CamelCase-string-to-separated string)
   (find-package :sparser)))


(defun create-reactome-categories (reactome-categories)
  (let ((reactome (eval `(define-category Reactome-top :specializes top))))
    (declare (ignore reactome))
    (loop for rc in reactome-categories
      do
      (eval
       `(define-category
            ,(reactome-symbol (car rc))
            :specializes reactome-category)))

    (loop for rc in reactome-categories
      do
      (let
          (v/r)
        (define-variables
            (loop for binding in
              (cons
                '("ReactomeId")
                (cdr rc))
              when (setq v/r (create-v/r (cdr binding)))
              collect
              `(,(reactome-symbol (car binding))
                ,v/r))
            (reactome-category (car rc)))))))

(defun create-v/r (tail)
  (if
   (cdr tail) ;; simple case -- reactome class given as a string
   (reactome-category (car tail))
   ;; next case will wait until David tells me how to represent v/r for string or number, if possible
   (list :primitive 'string)))

(defparameter *reactome-entities* (make-hash-table :test #'equalp))


(defun create-reactome-entities (reactome-entities)
  ;; create all the individual entities, with their REACTOME-IDs bound,
  ;;  and store entries for them in *reactome-entities* keyed by the
  ;;  string of their REACTOME-ID
  (loop for re in reactome-entities
    do
    (let
        ((*re* re)
         (cat (reactome-category (car re)))
         (*index-under-permanent-instances* t))
      (declare (special *re* *index-under-permanent-instances* cat))
      (when
          (not (equalp (car *re*) "UnificationXref"))
        (if
         (null cat)
         (break "null cat"))
        (setf
         (gethash (second re) *reactome-entities*)
         (eval
          `(define-individual 
               ,cat
               ',(reactome-symbol "ReactomeId")
             ,(second re)
             ;;(break "create-reactome-entities")
             ))))))
  ;; now that all individual reactome entities have been created,
  ;;  it is possible to "wire them together" using variable bindings
  (loop for re in reactome-entities
    do
    (let
        ((*re* re)
         (ri (reactome-entity (second re))))
      (declare (special ri *re*))
      (when
          (not (equalp (car *re*) "UnificationXref"))
        (loop for b in 
          (cons
           `("ReactomeId" ,(second re))
           (cddr re))
          do
          
          (let
              ((binding b))
            (declare (special binding))
            (bind-variable (reactome-symbol (car binding))
                           (let
                               ((val 
                                 (if
                                  (consp (second binding))
                                  (case (car (second binding))
                                    (xml-resource 
                                     (reactome-entity
                                      (second (second binding))))
                                    (t
                                     (eval (second binding))))
                                  (second binding))))
                             val)
                           ri)))))))

;; S-expression based creator of individuals in Krisp
;; example:
;; (create-individual
;;   '(residue-on-protein (position 437) (amino-acid (amino-acid (name "threonine")))))
(defun create-individual (desc)
  (eval
   `(make-an-individual
     ',(car desc)
     ,@(loop for binding in (cdr desc)
         append
         `(',(typecase
                (car binding)
              (symbol (car binding))
              (string
               (reactome-symbol (car binding))))
           ,(typecase (second binding)
              (cons
               (case (car (second binding))
                 (xml-resource
                  (reactome-entity (second (second binding))))
                 (category (category-named (second (second binding))))
                 (t
                  (create-individual (second binding)))))
              (string (second binding))
              (number (second binding))
              (symbol (category-named (second binding)))))))))


(defun xml-resource (str)
  (typecase
      str
    (string (gethash str *xml-ht*))
    (symbol (gethash (symbol-name str) *xml-ht*))))

(defun reactome-entity (str)
  (typecase
      str
    (string (gethash str *reactome-entities*))
    (symbol (gethash (symbol-name str) *reactome-entities*))))


(defun bpi (str)
  (xml-resource str))

(defun dre (e)
  (d (reactome-entity e)))


(defmethod di ((i individual))
  (describe-individual i))

(defun create-reactome-kb ()
  (create-reactome-categories *bp-frames*)
  (save-ras-raf)
  (create-reactome-entities *bpi*))

(defun make-reactome-permanent ()
  (loop for bpf in *bp-frames*
    do
    (declare-category-instances-permanent
     (reactome-category (car bpf)))))


#|
Goal is to be able to use the mechanisms of the reactome Biopax3 representation to represet both the
model as given in Reactome for RAS/RAF?MEK/ERK and to represent.

What is missing in the Bipoax notation:
   Some notion of "active" states of proteins. It is not clear to me whether "active" states are necessarily defined with regard to some ability
     to carry a pathway forward (to cause/modulate/inhibit/increase a desired reaction).
Brent's story:

Ras is a membrane bound protein.
When inactive, it is bound to the small molecule GDP. [[perhaps should be "When it is bound to GTP it is in an inactive state."]
Upon growth factor stimulation of the cell,  an exchange factor, such as the SOS protein, causes ras to release GDP and and ras will now bind to GTP.
Binding to GTP causes a conformational change of the ras protein that puts ras into the active state.
GTP-bound ras binds to the raf protein kinase.
This binding of raf to ras has the effect of activating the raf kinase and localizing the raf kinase to the cell membrane.
Activated raf now phosphorylates and activates the Mek1 kinase.
The Mek1 kinase then phosphorylates the ERK kinase on both threonine and tyrosine residues which activate ERK kinase activity.
The phosphorylated ERK protein then translocates to the nucleus where it regulates gene expression
  in part by phosphorylating the Elk1 transcription factor.
Phospho-Elk then upregulates the gene expression of target genes such as the proto- oncogene c-fos.
The entire signaling cascade is terminated by the intrinsic GTPase activity of ras which hydrolyzes the bound GTP into GTP,
   thus returning ras to the GDP bound state where it releases bound raf.
The GTPase activity of ras is accelerated by interaction with another protein called GAP.
The oncogenic rasv12 mutant has diminished GTPase activity and therefore stays in the active GTP bound state constitutively.
Deletion of GAP or the related NF1 genes will also enhance ras activity by slowing the rate of ras-GTP hydrolysis.


|#







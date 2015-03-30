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

(in-package :sparser)
(defvar *bpi*)
(defparameter *xml-ht* (make-hash-table :size 1000 :test #'equalp))

(defparameter *bp-frames*
  '(
    ("BioSource" ("name") ("xref" "UnificationXref")) 
    ("BiochemicalReaction" ("comment") ("conversionDirection") ("dataSource" "Provenance") ("displayName") ("eCNumber") ("left" "SmallMolecule") ("left" "Complex") ("left" "Protein") ("participantStoichiometry" "Stoichiometry") ("right" "SmallMolecule") ("right" "Protein") ("right" "Complex") ("xref" "RelationshipXref") ("xref" "PublicationXref") ("xref" "UnificationXref")) 
    ("Catalysis" ("controlType") ("controlled" "BiochemicalReaction") ("controller" "Protein") ("controller" "Complex") ("controller" "PhysicalEntity") ("dataSource" "Provenance") ("xref" "RelationshipXref")) 
    ("CellularLocationVocabulary" ("term") ("xref" "UnificationXref")) 
    ("Complex" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("component" "Complex") ("component" "SmallMolecule") ("component" "Protein") ("componentStoichiometry" "Stoichiometry") ("dataSource" "Provenance") ("displayName") ("memberPhysicalEntity" "Complex") ("name") ("xref" "UnificationXref")) 
    ("Control" ("comment") ("controlType") ("controlled" "BiochemicalReaction") ("controller" "Protein") ("controller" "Complex") ("dataSource" "Provenance") ("displayName") ("xref" "PublicationXref") ("xref" "UnificationXref")) 
    ("FragmentFeature" ("featureLocation" "SequenceInterval")) 
    ("ModificationFeature" ("featureLocation" "SequenceSite") ("modificationType" "SequenceModificationVocabulary")) 
    ("Pathway" ("comment") ("dataSource" "Provenance") ("displayName") ("organism" "BioSource") ("pathwayComponent" "BiochemicalReaction") ("pathwayComponent" "Pathway") ("pathwayOrder" "PathwayStep") ("xref" "RelationshipXref") ("xref" "PublicationXref") ("xref" "UnificationXref")) 
    ("PathwayStep" ("nextStep" "PathwayStep") ("stepProcess" "Control") ("stepProcess" "Pathway") ("stepProcess" "Catalysis") ("stepProcess" "BiochemicalReaction")) 
    ("PhysicalEntity" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("dataSource" "Provenance") ("displayName") ("xref" "UnificationXref")) 
    ("Protein" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("dataSource" "Provenance") ("displayName") ("entityReference" "ProteinReference") ("feature" "ModificationFeature") ("feature" "FragmentFeature") ("memberPhysicalEntity" "Protein") ("name") ("xref" "UnificationXref")) 
    ("ProteinReference" ("comment") ("name") ("organism" "BioSource") ("xref" "UnificationXref")) 
    ("Provenance" ("comment") ("name")) 
    ("PublicationXref" ("author") ("db") ("id") ("source") ("title") ("year")) 
    ("RelationshipTypeVocabulary" ("term") ("xref" "UnificationXref")) 
    ("RelationshipXref" ("comment") ("db") ("id") ("relationshipType" "RelationshipTypeVocabulary")) 
    ("SequenceInterval" ("sequenceIntervalBegin" "SequenceSite") ("sequenceIntervalEnd" "SequenceSite")) 
    ("SequenceModificationVocabulary" ("term") ("xref" "UnificationXref")) 
    ("SequenceSite" ("positionStatus") ("sequencePosition")) 
    ("SmallMolecule" ("cellularLocation" "CellularLocationVocabulary") ("comment") ("dataSource" "Provenance") ("displayName") ("entityReference" "SmallMoleculeReference") ("name") ("xref" "UnificationXref")) 
    ("SmallMoleculeReference" ("name") ("xref" "UnificationXref")) 
    ("Stoichiometry" ("physicalEntity" "Complex") ("physicalEntity" "SmallMolecule") ("physicalEntity" "Protein") ("stoichiometricCoefficient")) 
    ("UnificationXref" ("comment") ("db") ("id") ("idVersion")) 
    ))

(defparameter *bp-patterns*
  '(("BioSource" ("name") ("xref"))
    ("BiochemicalReaction" ("conversionDirection") ("left") ("participantStoichiometry")  ("right") ("eCNumber") ("displayName") ("xref") )
    ("Catalysis" ("controller") ("controlled") ("controlType" "ACTIVATION") ("xref") )
    ("CellularLocationVocabulary" ("term") ("xref"))
    ("Complex" ("displayName") ("cellularLocation") ("componentStoichiometry") ("component") ("xref"))
    ("Control" ("displayName") ("controlType") ("xref") ("controller") ("controlled")) 
    ("FragmentFeature" ("featureLocation"))
    ("ModificationFeature" ("featureLocation") ("modificationType"))
    ("Pathway" ("pathwayComponent") ("pathwayOrder") ("organism") ("displayName") ("xref"))
    ("PathwayStep" ("stepProcess"))
    ("PhysicalEntity" ("displayName") ("cellularLocation") ("xref") )
    ("Protein" ("displayName") ("cellularLocation") ("entityReference") ("feature") );;("name") ("xref") 
    ("ProteinReference" ("organism") ("name") ) ;;("xref") 
    ("Provenance" ("name"))
    ("PublicationXref" ("id") ("db") ("year")  ("source" "J Biol Chem 270:9809-12"))
    ("RelationshipTypeVocabulary" ("term"))
    ("RelationshipXref" ("db") ("id") )
    ("SequenceInterval" ("sequenceIntervalBegin") ("sequenceIntervalEnd"))
    ("SequenceModificationVocabulary" ("term") ("xref"))
    ("SequenceSite" ("sequencePosition")) 
    ("SmallMolecule" ("displayName")  ("cellularLocation") ("entityReference") ) ;;("name")("xref")
    ("SmallMoleculeReference" ("name") ("xref"))
    ("Stoichiometry" ("stoichiometricCoefficient") ("physicalEntity"))
    ("UnificationXref" ("db") ("id") ("idVersion"))))

#|
decoding table for referenced OBO terms
"RelationshipXref1" "GO:0004713")) protein tyrosine kinase activity
"RelationshipXref11" "GO:0070371")) ERK1 and ERK2 cascade (the ERK pathway in the literature, but involves only ERK1 or ERK2, not other ERK kinases)
"RelationshipXref12" "GO:0000187")) activation of MAPK activity
"RelationshipXref13" "GO:0000165")) MAPK cascade. An intracellular protein kinase cascade containing at least a MAPK, a MAPKK and a MAP3K.
"RelationshipXref3" "GO:0016301")) kinase activity
"RelationshipXref5" "GO:0000186")) activation of MAPKK activity
"RelationshipXref6" "GO:0004674")) protein serine/threonine kinase activity
"RelationshipXref9" "GO:0000189")) MAPK import into nucleus
"UnificationXref1" "GO:0005829")) cytosol
"UnificationXref121" "GO:0005576")) extracellular region
"UnificationXref14" "GO:0005886")) plasma membrane
"UnificationXref172" "GO:0005654")) nucleoplasm
|#

(defparameter *simp-fns* (make-hash-table :test #'equalp))



(defun load-bp-ras-raf()
  (setq *bpi*
        (loop for i in
          (cdddr
           (load-owl
            "~/sparser/Sparser/code/s/grammar/model/sl/biology/reactome/RAF_MEK_ERK_biopax3.owl"))
          collect (simple-child i)))
  (loop for item in *bpi*
    do
    (setf (gethash (second item) *xml-ht*) item) ))

(defun load-owl (filename)
  (with-open-file
      (s filename :direction :input)
    (xmls:parse s)))

(defun simple-child (child)
  `(,(xmls:xmlrep-tag child)
    ,(xmls:xmlrep-attrib-value "ID" child)
    ,@(loop for rep in (xmls::xmlrep-attribs child)
        unless
        (equalp (car rep) "ID")
        collect rep)
    ,@(loop for rep in (xmls::xmlrep-children child)
        collect
        `(,(xmls::xmlrep-tag rep) 
          ,(cond
            ((equalp (caar (second rep)) "resource")
             `(resource 
               ,(cond
                 ((eql #\# (char (second (car (second rep))) 0))
                  (subseq (second (car (second rep))) 1))
                 (t (second (car (second rep))) 1))))                 
            ((equalp (caar (second rep)) "datatype")
             (cond
              ((equalp (second (car (second rep))) "http://www.w3.org/2001/XMLSchema#string")
               (third rep))
              ((equalp (second (car (second rep))) "http://www.w3.org/2001/XMLSchema#int")
               (read-from-string (third rep)))
              ((equalp (second (car (second rep))) "http://www.w3.org/2001/XMLSchema#float")
               (read-from-string (concatenate 'string (third rep) ".0")))
              
              (t (break "what datatype"))))
            (t  (break "what datatype")))))))

(defun resource? (ii)
  (and (consp ii) 
       (cdr ii)
       (consp (second ii))
       (eq 'resource (car (second ii)))))

(defun simplify-tree (tree depth)
  (declare (special tree depth))
  (if (< depth 1)
      `(resource ,(second tree))
      (let
          ((pattern 
            (and (consp tree)
                 (assoc (car tree) *bp-patterns* :test #'equalp))))
        (declare (special pattern))
        ;;(break "st")
        (when pattern
          `(,(car tree) ,(second tree)
            ,@(loop for item in (cddr tree)
                when
                (and
                 (consp item)
                 (assoc (car item) (cdr pattern) :test #'equalp)) ;; find-pattern
                collect
                `(,(car item)
                  ,(simplify-resource item (- depth 1)))))))))

(defun simplify-resource (item depth)
  (if (resource? item)
      (let*
          ((resource (gethash (second (second item)) *xml-ht*))
           (simp-fn (gethash (car resource) *simp-fns*)))
        (if simp-fn
            (funcall simp-fn resource)
            (simplify-tree resource depth)))
    (second item)))

(defun simple-bps (depth)
  (loop for b in *bpi*
    collect
    (simplify-tree b depth)))

(defparameter *bp-types* (make-hash-table :test #'equalp))
(defparameter *bp-type-list* nil)

(defun sort-bp-types ()
  (clrhash *bp-types*)
  (setq *bp-type-list* nil)
  (loop for p in *bpi* 
    do 
    (push (simplify-tree p 1)
          (gethash (car p) *bp-types*)))
  (maphash 
   #'(lambda (type tl)
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
                   ,@(when (resource? v)
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
                         


(defun save-ras-raf ()
  (load-bp-ras-raf)
  (sort-bp-types)
  (with-open-file
      (s "~/sparser/Sparser/code/s/grammar/model/sl/biology/reactome/RAF_MEK_ERK_simple.lisp"
         :direction :output :if-exists :overwrite)
    (loop for type-list in *bp-type-list* do
      (terpri s)
      (loop for item in type-list
        do
        (print item s)))))

;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;; Copyright (c) 2007 BBNT Solutions LLC. All Rights Reserved

(in-package :ltml)

(require :sax)

(unintern 'comment (find-package :ltml))
(use-package :net.xml.sax)

#|
 (sax-parse-file  ;; or -stream, -string
   filename
   (:namespace t) ;; to get the ns with the tag
   :external nil ;; follow out references to other files - default it t
   (validate nil) ;; check against the DTD
   :class 'test-sax-parser , 'owl-to-ltml-sax-parser
   (:warn t)
   comments, show-xmlns
|#

;(net.xml.sax:sax-parse-file "~/Library/ ddm/ontologies/Dolce/DLP397/DOLCE-Lite_397.owl")
;(sax-parse-file file :class 'owl-to-ltml-sax-parser)

(defparameter file "~/Library/ ddm/ontologies/Dolce/DLP397/test.owl") ;;DOLCE-Lite_397.owl")

(defparameter *literal-trace* nil)

;;;-------------
;;; SAX methods
;;;-------------

(defclass owl-to-ltml-sax-parser (sax-parser)
  ()
  )

(defmethod start-document ((parser owl-to-ltml-sax-parser))
  (format t "~&[sax parser] start-document~%")
)

(defmethod end-document ((parser owl-to-ltml-sax-parser))
  (format t "~&[sax parser] end-document~%")
)

(defmethod start-element ((parser owl-to-ltml-sax-parser)
			  ;; Assuming the parse is done with :namespace t, then
			  iri ;; the namespace of the tag
			  localname ;; the part after the colon
			  qname ;; the actual tag
			  attrs ;; a alist of the attributes
			        ;; as ("attribute name" . "value")
			  )
  (if *literal-trace*
    (format t "~&[sax parser] start-element iri: ~a  localname: ~a   qname: ~a~
               ~%   attrs: ~a~%" iri localname qname attrs)
    (format t "<~a>" qname))
  (let* ((index (position #\: qname))
	 (ns-name (intern (subseq qname 0 index)))
	 (tag-name (intern (subseq qname (1+ index)))))
    (case ns-name
      (rdf
       (case tag-name
	 (RDF)
	 (otherwise
	  (break "New rdf tag: ~a" tag-name))))
      (rdfs
       (case tag-name
	 (subClassOf)
	 (comment)
	 (otherwise
	  (break "New rdfs tag: ~a" tag-name))))
      (owl
       (case tag-name
	 (Ontology)
	 (versionInfo)
	 (Class (start-accumulating-class attrs))
	 (Restriction)
	 (allValuesFrom)
	 (onProperty)
	 (ObjectProperty)
	 (otherwise
	  (break "New owl tag: ~a" tag-name))))))

)

(defmethod content ((parser owl-to-ltml-sax-parser)
		    content ;; a character array
		    start   ;; the index of the first character with content
		    end     ;; one past the last character with content
		    ignorable)
  ;; could be called more than once
  (if *literal-trace*
    (format t "~&[sax parser] content: start: ~a end: ~a ignorable: ~a~
               ~%    \"~a\"~%" start end ignorable (subseq content start end))
    (format t "~a" (subseq content start end)))
)
(defmethod content-character ((parser owl-to-ltml-sax-parser) 
			      character ignorable)
  (format t "~&[sax parser] content-character: ~a, ignorable: ~a ~%" character ignorable)
)

(defmethod end-element ((parser owl-to-ltml-sax-parser)
			iri localname qname)
  (if *literal-trace*
    (format t "~&[sax parser] end-element ~a~%" localname)
    (format t "</~a>" qname))
  (let* ((index (position #\: qname))
	 (ns-name (intern (subseq qname 0 index)))
	 (tag-name (intern (subseq qname (1+ index)))))
    (case ns-name
      (rdf
       (ecase tag-name
	 (RDF)))
      (rdfs
       (ecase tag-name
	 (subClassOf)
	 (comment)))
      (owl
       (ecase tag-name
	 (Ontology)
	 (versionInfo)
	 (Class)
	 (Restriction)
	 (allValuesFrom)
	 (onProperty)
	 (ObjectProperty))))))



;;;-----------------------------------
;;; building the objects (structures)
;;;-----------------------------------

(defparameter *class* nil)

(defun start-accumulating-class (attrs)
  ;; <owl:Class rdf:about="http://www.loa-cnr.it/ontologies/DOLCE-Lite#space-region">
  (setq *class* (make-Owl-Class))
  (dolist (pair attrs)
    (let ((attr (car pair))
	  (value (cdr pair)))
      (cond
	((string-equal attr "rdf:about")
)))))


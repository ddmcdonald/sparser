;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "scan-parsed-document"
;;;   Module:  "drivers;sources:"
;;;  Version:   December 2016

;; initiated 23-March-2017
;; Code to do a tree walk walk through a completely parsed document,
;; applying a method to each element in turn

(in-package :sparser)

;;;--------------------------------
;;; The scan-through-document methods 
;;;--------------------------------

(defparameter *current-article* nil)
(defparameter *current-document-element* nil)

(defgeneric scan-through-document (source to-do)
  (:documentation "Given a document object, applies the to-do method to each element in
turn, doing a p"))

(defmethod scan-through-document :before (source to-do)
  (funcall to-do source :before))

(defmethod scan-through-document :after (source to-do)
  (funcall to-do source :after))

 


(defmethod scan-through-document ((a article) to-do)
  (let ((*current-article* a))
    ;; --- parsing the title of the paper goes here ------
    (loop for sec in (children a)
          unless (ignore-this-document-section sec)
          do (scan-through-document sec to-do))
    a))

(defmethod scan-through-document ((t-t title-text) to-do)
  t-t)

(defmethod scan-through-document ((s sentence ) to-do)
  "Once all the sentences in the paragraph have been
   handled control is passed by a throw to the tag
   'do-next-paragraph. The usual point is in the section
   reader but it could also be the section-of-sections reader
   in some odd cases."
  s)

(defmethod scan-through-document ((ss section-of-sections) to-do)
  "A section-of-sections is a toplevel section such as Results
   that has section objects as its children. This reads through
   each of the sections in order, and handles its own title 
   if there is one."
 
  (let ((*current-document-element* ss))
    (multiple-value-bind (title subsections) ;; multiple-titles?
        (extract-titles-from-other-elements (children ss))
      (when title (scan-through-document title to-do))
      (loop for sub-section in subsections
            do (scan-through-document sub-section to-do)))))

(defmethod scan-through-document ((s section) to-do)
  "The children of a section are paragraphs. Read through each
  of the paragraphs in sequence after first reading through the
  section title if there is one."
  (let ((*current-document-element* s))
    (multiple-value-bind (title paragraphs)
        (extract-titles-from-other-elements (children s))
      (when title (scan-through-document title to-do))
      (loop for child in paragraphs
            do (scan-through-document child to-do)))))

(defmethod scan-through-document ((p paragraph) to-do)
  "Once all the sentences in the paragraph have been
   handled control is passed by a throw to the tag
   'do-next-paragraph. The usual point is in the section
   reader but it could also be the section-of-sections reader
   in some odd cases."
    (loop for s in (sentences-in-paragraph p)
          do
            (scan-through-document s to-do)))


;;;======= html

#|
(defmethod html-print-article-element (section (phase (eql :before)))
  (print (list phase section))
  )
(defmethod html-print-article-element (section (phase (eql :after)))
  (print (list phase section))
  )
|#

(defmethod html-print-article-element ((a article) (phase (eql :before)))
  (format t "~%<style type=\"text/css\">
.bio-process{color: red}
.protein{background-color: yellow}
</style>
<section>~%")
  )

(defmethod html-print-article-element ((a article) (phase (eql :after)))
  (format t "</section>~%")
  )

(defmethod html-print-article-element ((a paragraph) (phase (eql :before)))
  (format t "<p>~%")
  )

(defmethod html-print-article-element ((a paragraph) (phase (eql :after)))
  (format t "</p>~%")
  )

(defmethod html-print-article-element ((s section) (phase (eql :before)))
  (format t "<section>"))

(defmethod html-print-article-element ((s section ) (phase (eql :after)))
  (format t "~%</section>~%~%")
  )


(defmethod html-print-article-element ((t-t title-text) (phase (eql :before)))
  (format t "<h>~s~%" t-t)
  )

(defmethod html-print-article-element ((t-t title-text) (phase (eql :after)))
  (format t "</h>~%")
  )

#|
(defmethod html-print-article-element ((abs abstract) (phase (eql :before)))
  (format t "<h>~s~%" abs)
  )
(defmethod html-print-article-element ((abs abstract) (phase (eql :after)))
  (format t "</h>~%")
  )
|#

(defmethod html-print-article-element ((s sentence) (phase (eql :before)))
  (format t "~a " (gethash s *colorized-sentence*))
  )

(defmethod html-print-article-element ((s sentence) (phase (eql :after)))
  (format t " ")
  )


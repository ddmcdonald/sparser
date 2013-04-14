;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;doc;"
;;;  Version:  March 2013

;; Created 2/6/13 to solve the problem of keeping document/section context.
;; [sfriedman:20130206.2038CST] I'm writing this using /objects/chart/edges/object3.lisp as an analog.
;; 3/29/13 hooked articles into document-set.

(in-package :sparser)

;;;-------------
;;; the objects
;;;-------------

(defstruct (article
            (:print-function print-article-structure))

  name
  location
  date
  source
  contents

  position-in-resource-array
  document-set
  )

(defstruct (section
            (:print-function print-section-structure))

  name
  article
  contents

  starts-at-pos  ;; The position obj of the first word in the section, inclusive.
  ends-at-pos    ;; The position obj of the last word in the section, exclusive.
  starts-at-char ;; The char index the first word in the section, inclusive.
  ends-at-char   ;; The char index of the character that ends this section.

  paragraph      ;; A boolean variable.  Paragraphs are leaf sections.

  ;; These two are for iterating back and forth for resolving references.
  ;; They are only bound for paragraph sections.
  next-paragraph
  prev-paragraph

  ;; TODO: track the character offsets to easily zoom to a location in the text.

  position-in-resource-array
  )


;;;-------------
;;; the printers
;;;-------------

(defun print-article-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<article" stream)
  (princ (article-position-in-resource-array obj) stream)
  (write-string " " stream)
  (when (article-name obj)
    (princ (article-name obj) stream)
    (write-string " " stream))
  (when (article-source obj)
    (princ (article-source obj) stream)
    (write-string " " stream))
  (when (article-date obj)
    (princ (article-date obj) stream)
    (write-string " " stream))
  (write-string ">" stream))

(defun print-section-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<section" stream)
  (princ (section-position-in-resource-array obj) stream)
  (write-string " " stream)
  (princ (section-name obj) stream)
  (write-string " " stream)
  (princ (section-starts-at-char obj) stream)
  (write-string "-" stream)
  (princ (section-ends-at-char obj) stream)
  (write-string ">" stream))


;;;-------------
;;; the accessors
;;;-------------

(defun find/sections-for-article (article)
  (remove-if-not #'(lambda (s)
                     (eql (section-article s) article))
                 *all-sections*))

(defun article# (index)
  (aref *all-articles* index))

(defun section# (index)
  (aref *all-sections* index))

;; Paragraph number is zero-based, so that we can incr & retun it
;; and get a nonzero number.

(defun next-paragraph-number-in-article ()
  (incf *current-paragraph-number-in-article*))

(defun reset-paragraph-state-in-article ()
  (setf *current-paragraph-number-in-article* 0)
  (setf *current-paragraph* nil))

(defun next-paragraph-name-in-article ()
  (let ((next-nbr (next-paragraph-number-in-article)))
    (format nil "Paragraph ~A" next-nbr)))

;;;-------------
;;; section & paragraph factory
;;;-------------

(defun new-section-in-article (sec-name start-pos)
  (let ((obj (next-section-from-resource)))
    (setf (section-article obj) *current-article*)
    (setf (section-name obj) sec-name)
    (setf (section-starts-at-pos obj) start-pos)
    (setf (section-starts-at-char obj) (pos-character-index start-pos))
    obj))

(defun check-begin-new-paragraph (start-pos)
  ;; We need this because the newline handler isn't soaking up all
  ;; the newlines internally, and as a result makes one call to
  ;; this per newline character encountered.
  (unless (and *current-paragraph*
               (eql start-pos (section-starts-at-pos *current-paragraph*)))
    (begin-new-paragraph start-pos)))

(defun begin-new-paragraph (start-pos)
  (let* ((sec-name (next-paragraph-name-in-article))
         (obj (new-section-in-article sec-name start-pos)))
    (setf (section-paragraph obj) t)
    (when (and *current-paragraph*
               (section-paragraph *current-paragraph*))
      ;; We check here to ensure that the last paragraph has been terminated.
      (terminate-section *current-paragraph* start-pos)
      (setf (section-prev-paragraph obj) *current-paragraph*)
      (setf (section-next-paragraph *current-paragraph*) obj)
      (setf (section-ends-at-char *current-paragraph*)
            (1- (pos-character-index start-pos))))
    (setf *current-paragraph* obj)
    obj))

(defparameter *tts-after-each-section* nil
  "Gates displaying the chart after each section")

(defun terminate-section (obj end-pos)
  (when *tts-after-each-section*
    (format t "~^&~%")
    (tts t (section-starts-at-pos obj) end-pos)
    (format t "~^&~%"))
  (setf (section-ends-at-pos obj) (chart-position-before end-pos))
  obj)

;;;-------------
;;; article factory
;;;-------------

(defun begin-new-article (&key name location date source doc-set)
  (unless *all-articles*
    ;; In this case, thecall is probably via analyze-text-from-file for 
    ;; a single file rather than from do-document-as-stream-of-files 
    ;; where we make this call on each individual flle.
    (make-the-article-resource))
  (let ((obj (next-article-from-resource)))
    (setf (article-name obj) name
          (article-location obj) location
          (article-date obj) (or date
                                 (date-&-time-as-formatted-string))
          (article-source obj) source
          (article-contents obj) (fresh-contents obj)
          ;;   (article-document-set obj) doc-set
          ) ;; /// remove on next load
    (setf *current-article* obj)
    (reset-paragraph-state-in-article)
    (add-to-document-set obj)
    obj))

;;;-------------
;;; resource management
;;;-------------

;; Make resources.

(defun make-the-article-resource ()
  (setq *all-articles*
        (make-array *length-of-article-resource*
                    :element-type t))
  (dotimes (n *length-of-article-resource* *length-of-article-resource*)
    (setf (aref *all-articles* n)
          (make-article
           :position-in-resource-array n))))

(defun make-the-section-resource ()
  (setq *all-sections*
        (make-array *length-of-section-resource*
                    :element-type t))
  (dotimes (n *length-of-section-resource* *length-of-section-resource*)
    (setf (aref *all-sections* n)
          (make-section
           :position-in-resource-array n))))

;; Init resources.

(defun initialize-article-resource ()
  (unless *all-articles*
    (make-the-article-resource))
  (let ( obj )
    (dotimes (n (if *article-resource-is-wrapped*
                  *length-of-article-resource*
                  *index-of-furthest-article-ever-allocated*))
      (setq obj (aref *all-articles* n))
      (release-article-to-resource obj)))

  (setq *position-of-next-available-article-in-resource* 0
        *index-of-furthest-article-ever-allocated* 0
        *some-articles-released*         nil
        *article-resource-is-fragmented* nil
        *article-resource-is-wrapped*    nil
        ))

(defun initialize-section-resource ()
  (unless *all-sections*
    (make-the-section-resource))
  (let ( obj )
    (dotimes (n (if *section-resource-is-wrapped*
                  *length-of-section-resource*
                  *index-of-furthest-section-ever-allocated*))
      (setq obj (aref *all-sections* n))
      (release-section-to-resource obj)))

  (setq *position-of-next-available-section-in-resource* 0
        *index-of-furthest-section-ever-allocated* 0
        *some-sections-released*         nil
        *section-resource-is-fragmented* nil
        *section-resource-is-wrapped*    nil
        ))

;; Init structures.

(defun initialize-article (obj)
  ;; Called from next-article-from-resource
  ;; We zero out every field in the article except its position in
  ;; the resource array, which is always fixed.
  (setf (article-name obj)     nil
        (article-source obj)   nil
        (article-date obj)     nil
        (article-location obj) nil
        (article-contents obj) nil))

(defun initialize-section (obj)
  ;; Called from next-section-from-resource
  ;; We zero out every field in the section except its position in
  ;; the resource array, which is always fixed.
  (setf (section-name           obj) nil
        (section-article        obj) nil
        (section-starts-at-pos  obj) nil
        (section-ends-at-pos    obj) nil
        (section-next-paragraph obj) nil
        (section-prev-paragraph obj) nil
        (section-starts-at-char obj) nil
        (section-ends-at-char   obj) nil))

;; Release

(defun release-article-to-resource (obj)
  (initialize-article obj)
  (setf *some-articles-released* t)
  obj)

(defun release-section-to-resource (obj)
  (initialize-section obj)
  (setf *some-sections-released* t)
  obj)

;; Allocate

;; [sfriedman:20130206.2157CST]
;; N.B. unlike edges, we don't manage the resource before re-initializing
;; an entity; we just steam-roll over it, assuming that the subroutines that
;; convert the discourse history information to long-term format have already
;; consumed this information.  The chart and edges recycle quicker than sections
;; and articles.

(defun next-article-from-resource ()
  (let ((article (aref *all-articles* *position-of-next-available-article-in-resource*))
        (next-index (incf *position-of-next-available-article-in-resource*)))
    (when (= next-index *length-of-article-resource*)
      (setq *position-of-next-available-article-in-resource* 0
            *article-resource-is-wrapped* t))
    (initialize-article article)
    article))

(defun next-section-from-resource ()
  (unless *all-sections*
    (error "section resource hasn't been initialized"))
  (let ((section (aref *all-sections* *position-of-next-available-section-in-resource*))
        (next-index (incf *position-of-next-available-section-in-resource*)))
    (when (= next-index *length-of-section-resource*)
      (setq *position-of-next-available-section-in-resource* 0
            *section-resource-is-wrapped* t))
    (initialize-section section)
    section))
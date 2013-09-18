;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;doc;"
;;;  Version:  March 2013

;; Created 2/6/13 to solve the problem of keeping document/section context.
;; [sfriedman:20130206.2038CST] I'm writing this using /objects/chart/edges/object3.lisp as an analog.
;; 3/29/13 hooked articles into document-set.
;; 1.0 (7/15/13) Bumped to add sentence and to get more uniformity on
;;      operations like noting and operations on contents.

(in-package :sparser)

;;;-------------
;;; the objects
;;;-------------

(defclass sentence (chart-region document-region has-content-model
                    has-parent ordered resource)
  ()
  (:documentation 
   "Represents the content or other interesting features
    of a sentence within the text. If there is an active section or
    paragraph that is parent."))
;;(def-resource-data-for sentence)

(defmethod print-object ((s sentence) stream)
  (print-unreadable-object (s stream :type t)
    (format stream "p~a -- "
            (pos-token-index (starts-at-pos s))) ;; !! recycles !!
    (when (ends-at-pos s)
      (format stream "p~a" (ends-at-pos s)))))

(defvar *previous-sentence* nil)
(defun previous-sentence () *previous-sentence*)

(defvar *current-sentence* nil)
(defun sentence () *current-sentence*)

(defun start-sentence (pos)
  (let ((s (make-instance ;;/// replace with resource
               'sentence 
             :starts-at-pos pos
             :starts-at-char (pos-character-index pos))))
    ;; lookup the current section for parent
    ;; put in a switched choice of content
    (when *current-sentence*
      (let ((last *current-sentence*))
        (setq *previous-sentence* last)
        (setf (next last) s)
        (setf (previous s) last)
        (setf (ends-at-pos last) pos)
        (setf (ends-at-char last) (pos-character-index pos))
        ;; tie off the prev contents
        ))
    (setq *current-sentence* s)))



;;--- articles
#|
(defstruct (article
            (:print-function print-article-structure))
  name
  location
  date
  source
  position-in-resource-array
  document-set
  )  |#

(defclass article (named-object has-parent has-children
                   has-content-model indexed)
  ((location :accessor article-location
    :documentation "Usually a short form of the file name")
   (date :accessor article-date
    :documentation "In principle should be a date object, but
     in practice just a string encoding the date")
   (source :accessor article-source
    :documentation "The pathname of the document"))
  (:documentation ""))

(defmethod print-object ((a article) stream)
  (print-unreadable-object (a stream :type t)
    (format stream " ~a" (name a))
    (when (article-date a)
      (format stream " ~a" (article-date a)))))

(define-resource article)

(defun initialize-article-resource ()
  ;; called from do-document-as-stream-of-files or
  ;; from analyze-text-from-file
  (let ((r (get-resource :article)))
    ;;/// try to do this on the resource class
    (loop for a in (resource-store r)
      do (clear a))
    (setf (instance-counter r) -1)
    r))

(defmethod clear ((a article))
  (setf (article-location a) nil)
  (setf (article-date a) nil)
  (setf (article-source a) nil)
  (call-next-method))

(defun allocate-article ()
  (allocate-next-instance (get-resource :article)))


(defun begin-new-article (&key name location date source)
  ;; called from do-document-as-stream-of-files
  (declare (special *current-paragraph*))
  (let ((obj (allocate-article)))
    (setf (name obj) name)
    (setf (article-location obj) location)
    (setf (article-date obj) (or date
                                 (date-&-time-as-formatted-string)))
    (setf (article-source obj) source)
    (setf (contents obj) (fresh-contents obj))

    (setf *current-article* obj)
    (add-to-document-set obj)
    (initialize-sections) ;; make the 1st one
    obj))



;;--- sections / paragraphs

(defclass section (named-object chart-region document-region
                   has-parent has-children has-content-model
                   ordered indexed)
  ()
  (:documentation ""))

(defmethod print-object ((s section) stream)
  (print-unreadable-object (s stream :type t)
    (when (name s)
      (format stream " ~a" (name s)))
    (when (starts-at-pos s)
      (format stream " p~a" (pos-token-index (starts-at-pos s))))
    (when (ends-at-pos s)
      (format stream "--p~a" (pos-token-index (ends-at-pos s))))))


(define-resource section)

(defun initialize-section-resource ()
  ;; called from do-document-as-stream-of-files or
  ;; from analyze-text-from-file
  (initialize-resource (get-resource :section))) ;; clears everything

(defun initialize-sections ()
  (let ((s1 (new-section-in-article nil (position# 1)))
        (article *current-article*))
    (unless article
      (error "Threading bug - expected a value on *current-article*"))
    (setf (children article) s1)
    (setf (parent s1) article)
    (setq *current-paragraph* s1)))


(defmethod clear ((s section))
  (setf (parent s) nil) ;; these need their own clear's
  (setf (name s) nil)
  (call-next-method))

(defun allocate-section ()
  (allocate-next-instance (get-resource :section)))

(defun new-section-in-article (sec-name start-pos)
  (let ((obj (allocate-section))
        (name (or sec-name (next-indexical-name :section))))
    (declare (special *current-article*))
    (setf (parent obj) *current-article*)
    ;; setup a sentence
    (setf (name obj) name)
    (setf (starts-at-pos obj) start-pos)
    (setf (starts-at-char obj) (pos-character-index start-pos))
    obj))



;;;--------------------------------
;;; action at paragraph boundaries
;;;--------------------------------

; Original design overloaded section with the actions
; for paragraphs by making some section as being paragraphs.
; For now, use sections straight-up as being paragraphs
; and make a class for them specifically if we have a need
; to distinguish them. 

(defun check-begin-new-paragraph (start-pos)
  ;; Called from sort-out-result-of-newline-analysis
  ;; We need this because the newline handler isn't soaking up all
  ;; the newlines internally, and as a result makes one call to
  ;; this per newline character encountered.
  (declare (special *current-paragraph* *tts-after-each-section*))
  (unless (and *current-paragraph*
               (eql start-pos (section-starts-at-pos *current-paragraph*)))
    (begin-new-paragraph start-pos)))

(defun begin-new-paragraph (start-pos)
  (declare (special *current-paragraph*))
  (let ((s (new-section-in-article nil start-pos))
        (ongoing *current-paragraph*))
    (when ongoing ;; should always be true
      (setf (previous s) ongoing)
      (setf (next ongoing) s)
      (setf (ends-at-pos ongoing) start-pos)
      (setf (ends-at-char ongoing) (pos-character-index start-pos))
      (when *tts-after-each-section*
        (format t "~^&~%")
        (tts t (starts-at-pos ongoing) start-pos)
        (format t "~^&~%")))  
      (setf *current-paragraph* s)
    s))




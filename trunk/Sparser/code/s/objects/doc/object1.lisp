;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 2013 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "objects;doc;"
;;;  Version:  October 2013

;; Created 2/6/13 to solve the problem of keeping document/section context.
;; [sfriedman:20130206.2038CST] I'm writing this using /objects/chart/edges/object3.lisp as an analog.
;; 3/29/13 hooked articles into document-set.
;; 1.0 (7/15/13) Bumped to add sentence and to get more uniformity on
;;      operations like noting and operations on contents.
;;     (9/23/13) Pretty much finished with the make-over except for occasional fanout.
;; 1.1 (10/3/13) Making paragraphs real. Lifting out the generalization
;;     (10/26/13) Added word-frequency mixin to article. What about the others?

(in-package :sparser)

;;;---------------------
;;; generalization type
;;;---------------------

(defclass document-element (chart-region document-region
                            has-parent has-children 
                            ordered indexed
                            has-content-model)
  ()
  (:documentation "Provides a super-type with common set of slots
    and behavior for all of the classes that describe portions
    of a document. Not every slot pertains to every object, but
    enough do that the benefits of uniformity outweight the 
    possible lose in efficiency."))


(defmethod print-object ((e document-element) stream)
  (print-unreadable-object (e stream :type t)
    (when (and (slot-boundp e 'name)
               (name e))
      (format stream " ~a" (name e)))
    (when (starts-at-pos e)
      (format stream " p~a" (pos-token-index (starts-at-pos e))))
    (when (ends-at-pos e)
      (format stream "--p~a" (pos-token-index (ends-at-pos e))))))


;;;-----------------------------------
;;; Articles (whole documents/files)
;;;-----------------------------------

(defclass article (document-element named-object word-frequency)
  ((location :accessor article-location
    :documentation "Usually a short form of the file name")
   (date :accessor article-date
    :documentation "In principle should be a date object, but
     in practice just a string encoding the date")
   (source :accessor article-source
    :documentation "The pathname of the document"))
  (:documentation "Representation of a document as a whole.
    Provides a top most reference point that paragraphs and
    sentences, etc. top out at. Has representations of attributes
    that apply to the whole article, typically taken from
    the dateline if it's a news article."))

(defmethod print-object ((a article) stream)
  (print-unreadable-object (a stream :type t)
    (format stream " ~a" (name a))
    (when (article-date a)
      (format stream " ~a" (article-date a)))))

(define-resource article)

(defun initialize-article-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :article)))

(defmethod clear ((a article))
  (setf (article-location a) nil)
  (setf (article-date a) nil)
  (setf (article-source a) nil)
  (call-next-method))

(defun allocate-article ()
  (allocate-next-instance (get-resource :article)))

(defparameter *current-article* nil
  "Bound by any of the drivers that analyze whole articles. The
   value is an article object.")
(defun article () *current-article*)

(defun begin-new-article (&key name location date source)
  ;; called from do-document-as-stream-of-files, or
  ;; analyze-text-from-string or analyze-text-from-file
  ;; Responsible for kicking off the initialization 
  ;; (creation and linking of first instances) of all 
  ;; the otherdocument elements.
  (let ((obj (allocate-article)))
    (setf (name obj) (or name (known-in-context :name)))
    (setf (article-location obj) 
          (or location (known-in-context :location)))
    (setf (article-date obj)
          (or date (date-&-time-as-formatted-string)))
    (setf (article-source obj)
          (or source (known-in-context :source)))
    (setf (contents obj)
          (fresh-contents obj))
    (setf *current-article* obj)
    (add-to-document-set obj)
    (initialize-sections) ;; make the 1st section
    obj))


;;;----------
;;; Sections
;;;----------

(defclass section (document-element named-object)
  ()
  (:documentation "A toplevel unit within a document that
   is several paragraphs long."))

(define-resource section)

(defun initialize-section-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :section))) ;; clears everything

(defvar *current-section* nil
  "The section we are reading inside of at the moment")
(defun section () *current-section*)

(defvar *previous-section* nil
  "The section before the present one")

(defun initialize-sections ()
  ;; Called from begin-new-article
  (let ((s1 (new-section-in-article nil (position# 1)))
        (article *current-article*))
    (setq *previous-section* nil
          *current-section* s1)
    (setf (children article) s1)
    (setf (parent s1) article)
    (setf (children s1) 
          (initialize-paragraphs)))) ;; returns 1st para
    
(defmethod clear ((s section))
  (setf (parent s) nil) ;; these need their own clear's
  (setf (name s) nil)
  (call-next-method))

(defun allocate-section ()
  (allocate-next-instance (get-resource :section)))

;;////// previous and next are eq
(defun new-section-in-article (sec-name start-pos)
  (let ((s (allocate-section))
        (name (or sec-name (next-indexical-name :section)))
        (ongoing *current-section*))
    (unless *current-article*
      (error "Threading bug - expected a value on *current-article*"))
    (setf (parent s) *current-article*) ;; not just chain them?
    (setf (name s) name)
    (setf (starts-at-pos s) start-pos)
    (setf (starts-at-char s) (pos-character-index start-pos))
    (when ongoing
      (setf (next ongoing) s)
      (setf (previous s) ongoing)
      (setf (ends-at-pos ongoing) start-pos)
      (setf (ends-at-char ongoing) (pos-character-index start-pos))
      (setq *previous-section* ongoing))
    (setq *current-section* s)))


;;;------------
;;; Paragraphs
;;;------------

(defclass paragraph (document-element named-object)
  ()
  (:documentation "An orthographic paragraph as established
    by patterns of newlines. See sort-out-result-of-newline-analysis"))

(define-resource paragraph)

(defun allocate-paragraph ()
  (allocate-next-instance (get-resource :paragraph)))

(defvar *current-paragraph* nil
  "points to the paragraph whose text is being analyzed")
(defvar *previous-paragraph* nil
  "The paragraph just before the current one")

(defun initialize-paragraph-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :paragraph))
  (setq *current-paragraph* nil
        *previous-paragraph* nil))

(defun initialize-paragraphs ()
  ;; Called from initialize-sections
  (let ((p (begin-new-paragraph (position# 1)))
        (section *current-section*))
    (unless section
      (error "Threading bug: no value for *current-section*"))
    (setf (parent p) section)
    (initialize-sentences)
    p))


(defun begin-new-paragraph (start-pos)
  (declare (special *tts-after-each-section*))
  (let ((p (allocate-paragraph))
        (ongoing *current-paragraph*))
    (setf (name p) (next-indexical-name :paragraph))
    (setf (starts-at-pos p) start-pos)
    (setf (starts-at-char p) (pos-character-index start-pos))
    (when ongoing ;; should always be true
      (setf (previous p) ongoing)
      (setf (next ongoing) p)
      (setf (ends-at-pos ongoing) start-pos)
      (setf (ends-at-char ongoing) (pos-character-index start-pos))
      (setq *previous-paragraph* ongoing)
      (when (and *tts-after-each-section*
                 ongoing)
        (format t "~^&~%")
        (tts t (starts-at-pos ongoing) start-pos)
        (format t "~^&~%")))
    (setf *current-paragraph* p)
    p))


;;--- action at paragraph boundaries

(defun check-begin-new-paragraph (start-pos)
  ;; Called from sort-out-result-of-newline-analysis
  ;; We need this because the newline handler isn't soaking up all
  ;; the newlines internally, and as a result makes one call to
  ;; this per newline character encountered.
  (declare (special *current-paragraph*))
  (unless (and *current-paragraph*
               (eql start-pos (starts-at-pos *current-paragraph*)))
    (begin-new-paragraph start-pos)))



;;;----------
;;; Sentence
;;;----------

(defclass sentence (document-element)
  ()
  (:documentation 
   "Represents the content or other interesting features
    of a sentence within the text. If there is an active section or
    paragraph that is parent."))

(defmethod print-object ((s sentence) stream)
  (print-unreadable-object (s stream :type t)
    (format stream "p~a -- "
            (pos-token-index (starts-at-pos s))) ;; !! recycles !!
    (if (and (slot-boundp s 'ends-at-pos)
               (ends-at-pos s))
      (format stream "p~a" (pos-token-index(ends-at-pos s)))
      (format stream "?"))))

(define-resource sentence)

(defun allocate-sentence ()
  (allocate-next-instance (get-resource :sentence)))

(defvar *previous-sentence* nil)
(defun previous-sentence () *previous-sentence*)

(defvar *current-sentence* nil)
(defun sentence () *current-sentence*)

(defun initialize-sentence-resource ()
  ;; called from initialize-document-element-resources
  (initialize-resource (get-resource :sentence))
  (setq *previous-sentence* nil
        *current-sentence* nil))

(defun initialize-sentences ()
  ;; Called from initialize-paragraphs
  (let ((s1 (start-sentence (position# 1)))
        (p1 *current-paragraph*))
     (unless p1
      (error "Threading bug: no value for *current-paragraph"))
    (setf (children p1) s1)
    (setf (parent s1) p1)
    s1))

(defun start-sentence (pos)
  (let ((s (allocate-sentence)))
    (setf (starts-at-pos s) pos)
    (setf (starts-at-char s) 1)
    (setf (contents s) (make-sentence-container s))
    ;; lookup the current section for parent
    (when *current-sentence*
      (let* ((last *current-sentence*)
             (section (parent last)))
        (setq *previous-sentence* last)
        (setf (next last) s)
        (setf (previous s) last)
        (setf (parent s) section)
        (setf (ends-at-pos last) ;; stop at the period
              (chart-position-before pos))
        (setf (ends-at-char last) (pos-character-index pos))
        ;; tie off the prev contents
        (setq *previous-sentence* last)))
    ;; 1st sentence in a section (= paragraph) is has the
    ;; section as its parent
    (setq *current-sentence* s)))

(defmethod display-contents  ((s sentence)
                              &optional (stream *standard-output*))
  (display-contents (contents s)))



;;; copyright (c) 2014 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "parsing-containers"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/6/14. To hold the new class of containers to support
;; analysis and discourse structure to go with the new forest protocol

(in-package :sparser)


;;; mixins

(defclass parsing-status ()
  ((level-completed :initarg :level :accessor level-completed
    :documentation "The parsing is tiered into successive levels
      of analysis. Which one have we completed for this level of
      document structure?
      Possible values:
        :initial  -- we're at the start of the sentence and
                   haven't scanned any part of it.
"))
  (:documentation ""))



;;; class

(defclass sentence-content (container parsing-status accumulate-items ordered)
  ()
  (:documentation "From container we get :in to point back to the
    sentence. From ordered we get previous and next so we can link
    the directly without having to go to the sentence objects."))

(defmethod print-object ((c sentence-content) stream)
  (print-unreadable-object (c stream :type t)
    (let ((sentence (bkptr c)))
      (format stream "p~a -- "
              (pos-token-index (starts-at-pos sentence)))
      (if (and (slot-boundp sentence 'ends-at-pos)
               (ends-at-pos sentence))
        (format stream "p~a" (pos-token-index (ends-at-pos sentence)))
        (format stream "?")))))

; (designate-sentence-container :complex)  ;; run with every change
;
(defun make-sentence-content-container (sentence)
  (make-instance 'sentence-content
    :in sentence
    :level :initial))



;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990  Content Technologies Inc.  -- all rights reserved
;;; 
;;;     File:  "morphology"
;;;   Module:  "grammar;rules:FSAs:"
;;;  Version:   1.1  July 1991

;; initiated June 1990
;; 1.0 (7/22 v1.8.6) Added an error check in Start-affix-stripper/
;;     word-buffer for the case of an empty word-buffer.

(in-package :CTI-source)

;;;------------------
;;; state variables
;;;------------------

(defparameter *ending-that-was-stripped-off* nil)

(defparameter *index-after-ending-was-stripped* 0)


(defun initialize-state-of-morphology-FSA ()
  (setq *ending-that-was-stripped-off*    nil
        *index-after-ending-was-stripped* 0))


(defun morph-state ( &optional (stream *standard-output*) )
  (format stream
          "~%Results of the morphology FSA:~
           ~%  ending that was stripped off: ~A"
          *ending-that-was-stripped-off*))


;;;-------
;;;  FSA
;;;-------

(defun start-affix-stripper/word-buffer ()
  (when (= 0 (fill-pointer *word-lookup-buffer*))
    (break/debug "Affix-stripper called on an empty word buffer")
    (return-from Start-affix-stripper/word-buffer nil))
  (let ((index-of-last-char
         (1- (fill-pointer *word-lookup-buffer*))))

    (if (< index-of-last-char 4)
      ;; any word that is less than four characters long will
      ;; never have a grammatical affix.
      nil
      (else
        (setq *ending-that-was-stripped-off*
              (or (try-to-strip-off-ED/wb  index-of-last-char)
                  (try-to-strip-off-ING/wb index-of-last-char)
                  (try-to-strip-off-S/wb   index-of-last-char)
                  ))
        (when *ending-that-was-stripped-off*
          (setq *index-after-ending-was-stripped*
                (- index-of-last-char
                   (ecase  *ending-that-was-stripped-off*
                     (:ends-in-ED  2)
                     (:ends-in-ING 3)
                     (:ends-in-S   1)))))

        *ending-that-was-stripped-off* ))))




(defun try-to-strip-off-ED/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (eq char #\d)
      (having-stripped-D-try-for-E (1- index-of-last-char))
      nil)))

(defun having-stripped-D-try-for-E (index-of-2d-to-last-char)
  (let ((char (char/wb index-of-2d-to-last-char)))
    (if (eq char #\e)
      :ends-in-ED
      nil)))



(defun try-to-strip-off-ING/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (eq char #\g)
      (having-stripped-G-try-for-N (1- index-of-last-char))
      nil)))

(defun having-stripped-G-try-for-N (index-of-2d-to-last-char)
  (let ((char (char/wb index-of-2d-to-last-char)))
    (if (eq char #\n)
      (having-stripped-NG-try-for-I (1- index-of-2d-to-last-char))
      nil)))

(defun having-stripped-NG-try-for-I (index-of-3d-to-last-char)
  (let ((char (char/wb index-of-3d-to-last-char)))
    (if (eq char #\i)
      :ends-in-ING
      nil)))



(defun try-to-strip-off-S/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (eq char #\s)
      :ends-in-S
      nil)))


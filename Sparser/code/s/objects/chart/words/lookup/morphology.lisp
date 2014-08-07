;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992-1993,2014  David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2010 BBNT Solutions LLC. All Rights Reserved
;;; 
;;;     File:  "morphology"
;;;   Module:  "objects;chart:words:lookup:"
;;;  Version:  0.4 July 2014

;; initiated June 1990
;; 0.1 (7/22/91 v1.8.6) Added an error check in Start-affix-stripper/
;;      word-buffer for the case of an empty word-buffer.
;; 0.2 (5/11/93 v2.3) Added case for "ly"
;;     (5/14) changed the size of the smallest decomposible word to 3
;;     (3/26/10) Accommodating the change to mixed case
;; 0.3 (8/8/10) Adding more cases
;; 0.4 (7/14) Folded in a larger-scale suffix recognizer

;; N.b. There is a slightly older version of virtually identical code
;; (no 1993 additions) in /grammar/rules/FSAs/morphology.lisp but it
;; isn't loaded. 

(in-package :sparser)

;;;------------------
;;; state variables
;;;------------------

(defparameter *ending-that-was-stripped-off* nil)

(defparameter *index-after-ending-was-stripped* 0
  "A grep on 8/8/10 showed no consumers. Consider letting it go.")


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
    (return-from start-affix-stripper/word-buffer nil))
  (let ((index-of-last-char
         (1- (fill-pointer *word-lookup-buffer*))))

    (if (< index-of-last-char 3)
      ;; any word that is less than four characters long will
      ;; never have a grammatical affix.
      nil
      (else
        (setq *ending-that-was-stripped-off*
              (or (try-to-strip-off-ED/wb  index-of-last-char)
                  (try-to-strip-off-ING/wb index-of-last-char)
                  (try-to-strip-off-S/wb   index-of-last-char)
                  (try-to-strip-off-LY/wb  index-of-last-char)
                  ))
        (when *ending-that-was-stripped-off*
          (setq *index-after-ending-was-stripped*
                (- index-of-last-char
                   (ecase  *ending-that-was-stripped-off*
                     (:ends-in-ed  2)
                     (:ends-in-ly  2)
                     (:ends-in-ing 3)
                     (:ends-in-s   1)))))

        *ending-that-was-stripped-off* ))))


;;----- "ed"





(defun try-to-strip-off-ED/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (char-equal char #\d)
      (having-stripped-D-try-for-E (1- index-of-last-char))
      nil)))

(defun having-stripped-D-try-for-E (index-of-2d-to-last-char)
  (let ((char (char/wb index-of-2d-to-last-char)))
    (if (char-equal char #\e)
      :ends-in-ed
      nil)))


#|
(defun try-to-strip-off-ED/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (eq char #\d)
      (having-stripped-D-try-for-E (1- index-of-last-char))
      nil)))

(defun having-stripped-D-try-for-E (index-of-2d-to-last-char)
  (let ((char (char/wb index-of-2d-to-last-char)))
    (if (eq char #\e)
      :ends-in-ed
      nil)))

|#
;;----- "ly"

(defun try-to-strip-off-LY/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (eq char #\y)
      (having-stripped-Y-try-for-L (1- index-of-last-char))
      nil)))

(defun having-stripped-Y-try-for-L (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (eq char #\l)
      :ends-in-ly
      nil)))



;;------ "ing"

(defun try-to-strip-off-ING/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (char-equal char #\g)
      (having-stripped-G-try-for-N (1- index-of-last-char))
      nil)))

(defun having-stripped-G-try-for-N (index-of-2d-to-last-char)
  (let ((char (char/wb index-of-2d-to-last-char)))
    (if (char-equal char #\n)
      (having-stripped-NG-try-for-I (1- index-of-2d-to-last-char))
      nil)))

(defun having-stripped-NG-try-for-I (index-of-3d-to-last-char)
  (let ((char (char/wb index-of-3d-to-last-char)))
    (if (char-equal char #\i)
      :ends-in-ing
      nil)))



#|
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
      :ends-in-ing
      nil)))
|#

;;----- "s"

(defun try-to-strip-off-S/wb (index-of-last-char)
  (let ((char (char/wb index-of-last-char)))
    (if (eq char #\s)
      :ends-in-s
      nil))) 



;; SUFFIXES
;; ADJ == adjective, N == noun, V == verb
;; X-able/-ible: 'capable of X' OR 'able to be Xed'
;; X-al/-ar/-ary/-ic/-ous: 'of or pertaining to X' 
;;     e.g. 'epithelial' 'vascular' 'enzymatic' 'cancerous' (but "chemical" can also be noun)
;; -ase: naming convention for enzymes
;; -blast/-cyte: denoting (types of) cell
;; -ence/-ency: 'process/characteristic' e.g. 'senescence' 'potency'
;; -ent: e.g. 'quiescent'
;; X-genesis: 'process of creating X' e.g. 'angiogenesis' 'embryogenesis'
;; -ian: e.g. 'mammalian'
;; -ics: e.g. 'energetics'
;; -ive: e.g. 'reactive'
;; -ize, -yze: 'undergo process' OR 'cause to undergo process' 
;;     e.g. 'metastasize' 'catalyze'
;; -oma: denoting a tumor
(defparameter *suffix-pos-table*
  '(("able" ADJ)
    ("al" ADJ)
    ("ar" ADJ)
    ("ary" ADJ)
    ("ase" N)
    ("blast" N)
    ("cyte" N)
    ("ence" N)
    ("ency" N)
    ("ment" N)   ;; longer forms must precede
    ("ent" ADJ)  ;; their shorter forms
    ("genesis" N)
    ("gram" N)
    ("ian" ADJ)
    ("ible" ADJ)
    ("ic" ADJ)
    ("ics" N)
    ("ify" V)
    ("ion" N)
    ("ist" N)
    ("ity" N)
    ("ive" ADJ)
    ("ize" V)
    ("oma" N)
    ("or" N)
    ("ory" ADJ)
    ("ous" ADJ)
    ("tion" N)
    ("yze" V)))

;; If we ever add ADV to this list, add it to
;; assign-morph-brackets-to-unknown-word and its friends


(defun affix-checker (string)
  (let ((length (length string)))
    (when (> length 5) ;; larger because of the complex bases
      (let ((n (aref string   (- length 1)))  ;; final letter
            (n-1 (aref string (- length 2)))
            (n-2 (aref string (- length 3)))
            (n-3 (aref string (- length 4))))
        (dolist (affix-pair *suffix-pos-table*)
          ;; e.g. ("ment" N)
          (let* ((affix (car affix-pair))
                 (affix-length (length affix))
                 (index (1- affix-length)))
            (when (eq n (aref affix index))
              (when (eq n-1 (aref affix (- index 1)))
                (cond
                 ((= affix-length 2)
                  ;; (affix-checker "1234ar")
                  (return-from affix-checker affix-pair))
                 ((> affix-length 2)
                  (when (eq n-2 (aref affix (- index 2)))
                    (if (= affix-length 3)
                      ;; (affix-checker "1234ary")
                      (return-from affix-checker affix-pair)
                      (when (> affix-length 3)
                        (when (eq n-3 (aref affix (- index 3)))
                          (cond
                           ((= affix-length 4)
                            ;; (affix-checker "1234genesis")
                            (return-from affix-checker affix-pair))
                           ((and (> affix-length 4)
                                 (> length affix-length))
                            (when (string= ;; presumes lower case
                                   affix
                                   (subseq string 
                                           (- length affix-length)
                                           length))
                              (return-from affix-checker affix-pair))))))))))))))))))



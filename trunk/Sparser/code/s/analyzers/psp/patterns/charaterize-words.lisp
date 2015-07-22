;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "charaterize-words"
;;;   Module:  "analysers;psp:patterns:"
;;;  version:  May 2015

;; initiated 5/15/15 breaking out the routines that look at the words
;; and characterize them as patterns to drive the matcher.

(in-package :sparser)

;;;------------------------------------------------
;;; characterizing terms in the character sequence
;;;------------------------------------------------

(defun characterize-word-type (position word)
  ;; return a indicator read by resolve-ns-pattern to identify
  ;; a general pattern with an established interpretation. 
  (let* ((caps (pos-capitalization position))
         (start-ev (pos-starts-here position))
         (top-edge (ev-top-node start-ev)))
    ;;(break "For ~s caps = ~a, top-edge = ~a" (word-pname word) caps top-edge)
    (case caps
      (:digits
       (if (= 1 (length (word-pname word)))
        :single-digit
        :digits))
      (:initial-letter-capitalized
       :capitalized) ;; "Gly", "Ras"
      (:single-capitalized-letter
       :single-cap)
      (:all-caps
       :full)
      (:mixed-case
       :mixed ) ;;(characterize-type-for-mixed-case word))
      (:lower-case
       (if  (= 1 (length (word-pname word)))
         :single-lower
         :lower))
      (:punctuation
       (keyword-for-word word))
      (otherwise (break "~a is a new case to characterize for p~a and ~s~
                       ~%under ~a"
                        caps
                        (pos-token-index position) 
                        (word-pname word)
                        top-edge)))))

(defparameter *word-nospace-keywords*
  '(:capitalized :single-cap :full :mixed :single-lower :lower))

(defparameter *digit-nospace-keywords*
  '(::single-digit :digits))



(defun characterize-words-in-region  (start-pos end-pos edges)
  ;; Returns a pattern. Presumes that the whole region has been scanned.
  (push-debug `(,start-pos ,end-pos ,edges))
  (let ((position start-pos)
        (word (pos-terminal start-pos))
        pattern-elements  element  edge
        (edge-start-positions 
         (when edges (loop for e in edges
                       collect (pos-edge-starts-at e))))
        previous-pos  )

    #+ignore(when edges
      (push-debug `(,edge-start-positions ,edges ,start-pos ,end-pos))
      (break "Look at edge start positions"))

    (loop
      (cond 
       ((memq position edge-start-positions)
        (setq edge (pop edges))
        (push edge ;;(edge-form edge) 
              pattern-elements))
       (t 
        (setq word (pos-terminal position))
        (setq element (characterize-word-type position word))
        (push element pattern-elements)))

      (setq position 
            (if edge 
              (prog1
                (pos-edge-ends-at edge)
                (setq edge nil)) ;; reset
              (chart-position-after position)))
      (when (eq position previous-pos)
        (error "characterize-words-in-region is looping"))
      (setq previous-pos position)

      (when (eq position end-pos)
        (return)))

    (nreverse pattern-elements)))


(defun characterize-type-for-mixed-case (word)
  (let* ((pname (word-pname word))
         (length (length pname))
         (ends-in-s? (eql #\s (aref pname (1- length)))))
    (when ends-in-s?
      ;; is the remainder a known word?
      )))

;;/// move
(defun keyword-for-word (word)
  (let ((symbol-in-word-package (word-symbol word)))
    (intern (symbol-name symbol-in-word-package)
            (find-package :keyword))))


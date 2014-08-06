;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1995,2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "affix rules"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  1.0 August 2014

;; moved over from preterminals code 5/11/93, v2.3
;; 0.1 (3/28/94) changed the 'rule' on these edges from :known-affix to
;;      :spelling-based-edge
;; 0.2 (7/13/94) added more data to the edge
;;     (1/9/95) added Introduce-morph-brackets-from-unknown-word. 1/23 refining
;;      its treatment.
;; 1.0 (7/25/14) Drastic makeover. Droped the DM&P way of introducing new
;;      individuals. Added vastly bigger set of morphological options.
;;      Assigning the brackets to the word rather than introducing them
;;      right now, which simplifies the action by making it just as
;;      though the word had been predefined. Making the words denote categories
;;      using same flag and code as Comlex.

(in-package :sparser)

;;;------------------------------------------
;;; Assigning brackets and making categories
;;;------------------------------------------

(defun assign-morph-brackets-to-unknown-word (word morph-keyword)

  ;; Called from make-word/all-properties, which is itself called
  ;; on the way back from the tokenizer. 
  (typecase morph-keyword
    (keyword 
     (case morph-keyword
       (:ends-in-s) ;; always ambiguous?
       ;;/// put in both ??      
       (:ends-in-ed
        (let ((lemma (stem-form word)))
          (if *edge-for-unknown-words*
            (setup-verb lemma)
            (assign-brackets-as-a-main-verb lemma))))
       (:ends-in-ing
        (let ((lemma (stem-form word)))
          (if *edge-for-unknown-words*
            (setup-verb lemma)
            (assign-brackets-as-a-main-verb lemma))))
       (:ends-in-ly
        (if *edge-for-unknown-words*
          (setup-adverb word)
          (assign-brackets-to-adverb word)))
       (otherwise
        (push-debug `(,word ,morph-keyword))
        (error "Unexpected affix keyword: ~A"
               (word-morphology word)))))
    (cons
     ;; e.g. ("ible" ADJ)
     (case (cadr morph-keyword)
       (n
        (if *edge-for-unknown-words*
          (setup-common-noun word)
          (assign-brackets-as-a-common-noun word)))
       (adj
        (if *edge-for-unknown-words*
          (setup-adjective word)
          (assign-brackets-to-adjective word)))
       (v
        (if *edge-for-unknown-words*
          (setup-verb word)
          (assign-brackets-as-a-main-verb word)))        
       (otherwise
        (push-debug `(,word ,morph-keyword))
        (error "Unexpected cons affix keyword: ~A"
               (word-morphology word)))))
    (otherwise
     (push-debug `(,word ,morph-keyword))
     (error "Unexpected type of morph keyword: ~a~%~a"
            (type-of morph-keyword) morph-keyword))))



;;;------------------------
;;; morphology-based edges
;;;------------------------

;; These two make-edge functions are moot with the change to 
;; give unknown words real content (7/14). Keeping them around
;; in case we want to adapt something like this for another
;; purpose. 

(defun make-edge-based-on-morphology (word
                                      position-scanned
                                      next-position)

  ;; the caller -- Consider-morphology-based-edges -- only makes this
  ;; call if the word has a non-nill morphology field.  Given the
  ;; assumptions of the caller this *must* return only one edge, not
  ;; that I can think of a situation in which more than one would
  ;; ever make sense.
  (case (word-morphology word)
    (:ends-in-s   (make-morph-edge-over-unknown-word
                   word position-scanned next-position
                   category::ends-in-s))
    (:ends-in-ed  (make-morph-edge-over-unknown-word
                   word position-scanned next-position
                   category::verb+ed))
    (:ends-in-ing (make-morph-edge-over-unknown-word
                   word position-scanned next-position
                   category::verb+ing))
    (:ends-in-ly  (make-morph-edge-over-unknown-word
                   word position-scanned next-position
                   category::adverb))
    (otherwise
     (push-debug `(,word ,position-scanned ,next-position))
     (break/debug "Unexpected affix keyword: ~A"
                  (word-morphology word))
     :foo ;; keep this frame on the stack
     )))


(defun make-morph-edge-over-unknown-word (word
                                          pos-before pos-after
                                          form-category)

  ;; called from Make-edge-based-on-morphology during the process
  ;; of introducing edges over single words.

  (let ((edge (make-edge-over-unknown-word
               word pos-before pos-after
               form-category :spelling-based-edge)))
    
    (setf (edge-form     edge) form-category)
    (setf (edge-referent edge) word)
    (setf (edge-right-daughter edge) :morphology-based-edge)
    (setf (edge-rule edge) :word-affix-morphology)

    (tr :making-edge-over-unknown-word/morph edge)

    (list edge)))





;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994,1995  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "affix rules"
;;;   Module:  "grammar;rules:syntax:"
;;;  Version:  0.2 January 1995

;; moved over from preterminals code 5/11/93, v2.3
;; 0.1 (3/28/94) changed the 'rule' on these edges from :known-affix to
;;      :spelling-based-edge
;; 0.2 (7/13/94) added more data to the edge
;;     (1/9/95) added Introduce-morph-brackets-from-unknown-word. 1/23 refining
;;      its treatment.

(in-package :sparser)

;;;------------------------
;;; morphology-based edges
;;;------------------------

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




(defun introduce-morph-brackets-from-unknown-word (word
                                                   morph-keyword)

  ;; Called from make-word/all-properties, which is itself called
  ;; on the way back from the tokenizer.  We have to get the
  ;; position from the globals that the tokenizer, etc. maintain.

  (let* ((pos-getting-token (chart-position
                             *number-of-next-position*))
         (pos-after (chart-position-after pos-getting-token)))
 
    (case morph-keyword
      (:ends-in-s)
      
      (:ends-in-ed
       (assign-brackets-as-a-main-verb word)
       (place-boundary/ends-before  word pos-getting-token
                                    ].verb )
       (place-boundary/begins-after word pos-getting-token
                                    .[verb )
       (place-boundary/ends-after   word pos-after
                                    mvb]. )
       (place-boundary/begins-after word pos-after
                                    mvb.[ )
       (when *do-domain-modeling-and-population*
         (define-individual-for-term/verb
           word (stem-form-of-verb word))))         
      
      (:ends-in-ing
       (assign-brackets-as-a-main-verb word)
       (place-boundary/ends-before  word pos-getting-token
                                    ].verb )
       (place-boundary/begins-after word pos-getting-token
                                    .[verb )
       (place-boundary/ends-after   word pos-after
                                    mvb]. )
       (place-boundary/begins-after word pos-after
                                    mvb.[ )
       (when *do-domain-modeling-and-population*
         (define-individual-for-term/verb
           word (stem-form-of-verb word))))
      
      (:ends-in-ly
       (assign-brackets/expr word (list ].adverb .[adverb))
       (place-boundary/ends-before word pos-getting-token
                                   ].adverb )
       (place-boundary/begins-after word pos-getting-token
                                    .[adverb ))
      
      (otherwise
       (break/debug "Unexpected affix keyword: ~A"
                    (word-morphology word))
       ;; keep this frame on the stack
       :foo ))))


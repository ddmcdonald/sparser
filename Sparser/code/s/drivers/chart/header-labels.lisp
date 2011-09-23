;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1999 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "header labels"
;;;   Module:  "drivers;chart:"
;;;  Version:  0.2 November 1999

;; initiated 12/7/93 v2.3
;; 0.1 (12/17) put in a throw to handle timing of the ] that the label will
;;      introduce. (12/30) added form label
;;     (1/3/95) added provision for trailing punctuation. Tweeked it 1/4
;; 0.2 (11/25/99) Changed the routine to require the trailing punctuation
;;      and to not complain if it isn't there. It was blowing up on
;;      "a fence" because it assumed it was going to see "A: " for a
;;      marked up dialog.

(in-package :sparser)

#| Defines various FSAs that check whether a word that's been indicated
   as being a label in headers is so in this case.  |#


(defun identify-header-label (label-word pos-before)
  ;; This is a fsa triggered by the label-word. It has to return
  ;; the position after the word if it is satisfied.
  ;;    The word can be a header in some contexts, check if this is
  ;; one of them. If so, lookup its section-marker and respan the word
  ;; with an edge with that label. Otherwise return nil.

  (when (cond ((first-item-in-article pos-before) t)
              ((left-whitespace-is-newline pos-before) t)
              (t nil))
    
    (let* ((sm (section-marker-named (word-pname label-word)))
           (sm-word (when sm (sm-word sm)))
           (pos-after (chart-position-after pos-before)))
      (unless sm
        (break "Expected the header label ~A~
                to have a corresponding section marker." label-word))

      (when (member :delimiting-punctuation (sm-plist sm) :test #'eq)
        (setq pos-after
              (check-for-punctuation-after-header sm pos-after)))

      (when pos-after ;; added 11/99
        
        ;; Part of what Establish-section-within-document (the completion
        ;; routine) will do as the edge is made is to introduce ].phrase
        ;; and phrase.[ brackets on the position just before the start
        ;; of the section. 
        ;; However it doesn't also put in a ][ pair at the position at
        ;; which the section-indicator ends.  We do that by hand here.
        (unless (]-on-position-because-of-word? pos-after
                                                sm-word)
          (place-boundary/ends-before sm-word
                                      pos-after   ;; ].phrase
                                      (find-bracket :] :before 'phrase)))
        (unless ([-on-position-because-of-word? pos-after
                                                sm-word)
          (place-boundary/begins-after sm-word
                                       pos-after  ;; phrase.[
                                       (find-bracket :[ :after 'phrase)))
        
        ;; When this is populated, its completion routines will be
        ;; run, which will hack the start of the section and the end
        ;; of the prior section, as determined by the definition of
        ;; the section-marker actions.
        ;;    Another thing that can happen if this instance of the
        ;; word being completed now is capitalized. In such a case, this
        ;; call will be occurring from within PNF as it goes through the
        ;; words in the capitalized sequence to get the best description
        ;; of them. Here the call to Establish-section.. will notice
        ;; that it's within PNF and do a throw that fails it, in the
        ;; process cutting off the normal completion of this routine,
        ;; which has its own ideas about how it should integrate with
        ;; the scan fsa.
        (make-chart-edge :starting-position  pos-before
                         :ending-position  pos-after
                         :category  sm-word  ;; triggers the actions
                         :form  category::section-marker
                         :rule-name  :identified-header-label
                         :referent  label-word )
        
        ;; Given the timing of doing FSAs w.r.t. the rest of the word
        ;; level, that boundary won't be seen unless we take steps.
        ;;    We can let the network see that if we return the position
        ;; in front of the label rather than the one after it as we usually
        ;; would.  We have to check though whether there was *already* a
        ;; "]" there that was introduced by the word in front of the label,
        ;; in which case we return the word-after like normal.
        ;; ///// 1/4 this hasn't been check in a situation where we aren't
        ;; being called from inside PNF
        
        pos-after ))))




(defun check-for-punctuation-after-header (sm pos-before)
  ;; Called from identify-header-label.  The section marker is marked
  ;; as taking some trailing punctuation. We look for it, complaining
  ;; if we don't find it. (Presumably that would be a case of a bad rule.)
  ;; We return the position after the punctuation so that the
  ;; end-pos of the edge over this marker will incorporate the punctuation.
  (let ((punct (cadr
                (member :delimiting-punctuation (sm-plist sm)
                        :test #'eq))))
    (if (word-p punct)
      (let ((next-word (pos-terminal pos-before)))
        #+ignore ;; 11/25/99 converting this from a rule-check to part
                 ;; of the conditional. See note with header.
        (unless (eq next-word punct)
          (break "Bad choice of rule?  The header ~A~
                  ~%is marked as taking the trailing punctuation ~A~
                  ~%but has something else after it"
                 sm punct next-word))
        (when (eq next-word punct)
          (chart-position-after pos-before)))

      (break "Item stored as delimiting punctuation is not ~
              a word~%~A~%" punct))))


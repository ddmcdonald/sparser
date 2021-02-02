;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2021  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "analysis-quality"
;;;   Module:  "grammar;tests:"
;;;  version:  February 2021

;; Created 2/1/21 to organize assessments of the quality of a large set of documents

(in-package :sparser)

;;;--------------------------------
;;; aggregated crude parse quality
;;;--------------------------------
#| Every article's contents instance includes the slots of the
sentence-parse-quality class. Collected first over individual
sentences, then aggregated at the higher levels of the document.
This code takes a set of articles, e.g. from the score corpus,
and does a sum over the values of the three bins across all
the articles. |#

;; (score-articles-timing-run 0 100)
;; (initialize-article-saving)
;; (experimental-settings) (turn-of... )
;; (setq *show-morphs* (list nil))
;; (reset-unknown-word-accumulators)
;; (score-articles-timing-run 0 100)

(defvar *articles-to-assess* nil
  "List of articles that we run our assessments over")

(defun articles-from-saved-handles ()
  (declare (special *handles-analyzed* *articles-to-assess*))
  (let ((articles
         (loop for handle in *handles-analyzed*
            collect (get-article handle))))
    (setq *articles-to-assess* articles)
    (length articles)))

(defgeneric sum-sentence-quality-over-articles (articles)
  (:method ((articles list))
    (let ((great
           (loop for a in articles
              as c = (contents a)
              when c
              sum (parses-with-one-edge c))))
      (let ((medium
             (loop for a in articles
                as c = (contents a)
                when c
                sum (medium-quality-parses c))))
        (let ((horrible
               (loop for a in articles
                  as c = (contents a)
                  when c
                  sum (horrible-parses c))))

          (values great
                  medium
                  horrible))))))
    

#| with no special operations
sp> (sum-sentence-quality-over-articles  *articles-to-assess*)
  16,863
  32,146
  54,971

Tally with the parameters set
  23,148
  35,599
  45,317
|#

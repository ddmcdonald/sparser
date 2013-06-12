;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994 David D. McDonald  -- all rights reserved
;;;     File:  "seasons"
;;;   Module:  "model;core:time:"
;;;  version:  1.0 June 2013

;;;------------
;;; the object
;;;------------

(define-category  season
  :specializes time
  :instantiates self
  :rule-label time ;;rule-label time sets the syntactic label as "time"
  :binds ((name :primitive word)
          (abbreviation :primitive word)
          (position-in-year . ordinal))
  :realization (:common-noun name ))
                          


;;;------
;;; form
;;;------

(defun define-season (string integer &optional abbrev)

  (let* ((word (define-word string))
         (abbrev-word (when abbrev (define-word abbrev)))
         (ordinal (nth-ordinal integer))
         season )

    (unless (setq season (find-individual 'month :name word))
      (setq season 
            (if abbrev
	      (let ((m (define-individual 'season
			 :name word
			 :abbreviation abbrev-word
			 :position-in-year ordinal)))
		(define-cfr category::season `(,abbrev-word)
		  :form category::proper-noun
		  :referent m))
              (define-individual 'season
                :name word
                :position-in-year ordinal )))
      
      ;; 10/10/99 flush this one too 
      (when abbrev
        (define-abbreviation string abbrev))
      
      season )))

;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1993 David D. McDonald  -- all rights reserved
;;;
;;;      File:   "category preferences"
;;;    Module:   "grammar:model:core:"
;;;   Version:   June 1993

;; broken out of drivers;chart:psp:trigger4 6/4/93 v2.3

(in-package :sparser)



(defun sort-out-which-category-of-treetop-edge-to-prefer (list-of-edges)
  (let (category
        co-head co-head/s self-ref literal ordinal sequencer
        responsi word pronoun person pers-poss company comp-poss
        status-of-position temporal-adv time title title/plural mvb/head
        subsid-head country name )

    (dolist (edge list-of-edges)
      (setq category (edge-category edge))
      (cond ((typep category 'word)
             (setq word edge))
            ((eq category category::title)
             (setq title edge))
            ((eq category category::title/plural)
             (setq title/plural edge))
            ((eq category category::time)
             (setq time edge))
            ;((eq category category::mvb/head)
            ; (setq mvb/head edge))
            ((eq category category::company-head)
             (setq co-head edge))
            ((eq category category::subsidiary-head)
             (setq subsid-head edge))
            ((eq category category::pronoun)
             (setq pronoun edge))
            ((eq category category::person-possessive)
             (setq pers-poss edge))
            ((eq category category::person)
             (setq person edge))
            ((eq category category::country)
             (setq country edge))
            ((eq category category::name)
             (setq name edge))
            ((eq category category::company)
             (setq company edge))
            ((eq category category::company-possessive)
             (setq comp-poss edge))
            ((eq category category::company-head/s)
             (setq co-head/s edge))
            ((self-referential category)
             (setq self-ref edge))
            ((eq category category::ordinal)
             (setq ordinal edge))
            ((eq category category::sequencer)
             (setq sequencer edge))
            ((eq category category::responsibility)
             (setq responsi edge))
            ((eq category category::status-of-a-position)
             (setq status-of-position edge))
            ((eq category category::temporal-adverb)
             (setq temporal-adv edge))
            (t (break/debug
                "Need another case in choosing which edge to prefer ~
                 as the treetop:~%    ~A" edge))))

    (or 
     subsid-head
     co-head/s
     co-head
     responsi
     self-ref
     literal
     
     comp-poss
     company
     
     pers-poss
     person
     pronoun

     country
     name
     
     sequencer
     temporal-adv
     time
     ordinal
     status-of-position
     
     mvb/head
     title
     title/plural
     
     word
     )))


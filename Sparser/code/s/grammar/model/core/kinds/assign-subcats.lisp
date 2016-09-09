;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "assign-subcats"
;;;   Module:  "model;core:kinds:"
;;;  version:  August 2016

;; initiated 9/9/2016 so that after the upper model is loaded
;; (in 1st-loader), we can add subcat-frame information

(in-package :sparser)
(format t "loading assign-subcats in core/kinds")

(fom-subcategorization category::event-relation
                       :category category::event-relation)

(fom-subcategorization category::with-certainty
                       :category category::with-certainty
                       :slots '(:with certainty))

(fom-subcategorization category::temporally-localized
                       :category category::temporally-localized
                       :slots `(:for timeperiod
                                 :over timeperiod
                                 :upon following
                                 :after following
                                 :upon following
                                 :following following
                                 :before preceding
                                 :during during
                                 :at timeperiod
                                 :over timeperiod
                                 :in timeperiod
                                 :after after
                                 :before before))

(fom-subcategorization category::perdurant
                       :category category::perdurant)

(fom-subcategorization category::process
                       :category category::process)

(fom-subcategorization category::state
                       :category category::state)

(fom-subcategorization category::event
                       :category category::event)

(fom-subcategorization category::transition
                       :category category::transition)

(fom-subcategorization category::accomplishment
                       :category category::accomplishment)

(fom-subcategorization category::achievement
                       :category category::achievement)









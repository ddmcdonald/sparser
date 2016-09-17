;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2015-2016 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "assign-subcats"
;;;   Module:  "model;core:kinds:"
;;;  Version:  September 2016

;; initiated 9/9/2016 so that after the upper model is loaded
;; (in 1st-loader), we can add subcat-frame information

(in-package :sparser)

(fom-subcategorization category::event-relation)
(fom-subcategorization category::with-certainty :with 'certainty)
(fom-subcategorization category::temporally-localized
                       :for 'timeperiod
                       :over 'timeperiod
                       :at 'timeperiod
                       :in 'timeperiod
                       :upon 'following
                       :after 'following
                       :following 'following
                       :before 'preceding
                       :during 'during
                       :after 'after
                       :before 'before)
(fom-subcategorization category::perdurant)
(fom-subcategorization category::process)
(fom-subcategorization category::state)
(fom-subcategorization category::event)
(fom-subcategorization category::transition)
(fom-subcategorization category::accomplishment)
(fom-subcategorization category::achievement)

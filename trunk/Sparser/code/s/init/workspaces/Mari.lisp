;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Mari"
;;;   Module:  "init;workspaces:"
;;;  version:  February 1995

;; started 11/94. Broken out as workspace file 1/25/95.  Tweeked the
;; settings and added M-all 2/14

(in-package :sparser)


;*switch-setting*
(dm&p-setting)
(setq *introduce-brackets-for-unknown-words-from-their-suffixes* t)
(establish-pnf-routine :scan-classify-record)
(setq *dm&p-forest-protocol* 'parse-forest-and-do-treetops)
(setq *independent-aux-subview-to-use*
      (wb-subview-named :independent-contents))
;(launch-subview-as-independent-window)



;;;------------------
;;; Mari's sentences
;;;------------------

(defun m1 ()
  (pp "Auto insurance was overhauled last year."))

(defun m2 ()
  (pp "Now motorists are paid directly for repair costs based on 
an insurer's appraisal."))

(defun m3 ()
  (pp "Consumers are referred to several body shops that will do 
the work for that amount, but are free to shop around."))

(defun m4 ()
  (pp "The Massachusetts Auto Body Association says the law promotes
price-fixing between insurance companies and so-called referral shops
and is putting independents out of business, but consumer attorney for
the Massachusetts Public Interest Research Group, Josh Cradka, says
independents are trying to chip away at auto insurance reform."))


(defun m-all ()
  (pp "Auto insurance was overhauled last year. Now motorists 
are paid directly for repair costs based on an insurer's 
appraisal. Consumers are referred to several body shops that 
will do the work for that amount, but are free to shop around. 
The Massachusetts Auto Body Association says the law promotes
price-fixing between insurance companies and so-called referral 
shops and is putting independents out of business, but consumer 
attorney for the Massachusetts Public Interest Research Group, 
Josh Cradka, says independents are trying to chip away at auto 
insurance reform."))


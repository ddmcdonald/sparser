;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2012-2014 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "Grok"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2014

;; Initiated 10/30/12 to take over from the Fire workspace. Tweeked through
;; 3/9/13. Pulling stuff out of it and rearranging through 7/1/13.
;; 6/9/14 pulled the loading of sl/disease now that it's in the main line. 
;; Moved a lot out 10/9/14. 

;;  (load "/Users/ddm/sparser/load-nlp.lisp")

(in-package :sparser)

;;  (tuned-grok)  is the best all-round setting for 'grok mode'


;; Too many duplicated rules. Open objects/rules/cfr/duplicates and set the
;; break flag to t. Improve the trap to look up the file that holds the
;; older version of the rule.  
;;  Do it in the file to catch them during the load, or here while developing
; (setq *break-on-illegal-duplicate-rules* t)

#|
-- For searching with grep.
cd sparser/Sparser/code/s/
grep XX **/*.lisp **/**/*.lisp **/**/**/*.lisp **/**/**/**/*.lisp **/**/**/**/**/*.lisp
|#

;;--- For feeding into grak-pass-one, etc, which are now in
;;  analyzers/SDM&P/document-handling.lisp and take document-streams as input


(def-logical-pathname "corpus;" cl-user::location-of-text-corpora)
(def-logical-pathname "bird-flu;" "corpus;bird-flu:")
(def-logical-pathname "bird-flu-2009;" "bird-flu;iraq-2006:")

(defvar bird-flu
  (define-document-stream '|Bird flu in Iraq 2006|
    :style-name 'hand-typed/no-headers ;; accurate actually!
    :directory "bird-flu-2009;"
    :unified t))
#|
 (grok-pass-one bird-flu)
 (grok-pass-two bird-flu)
 (grok-pass-three bird-flu)
|#
 

;;;------------------------------------
;;; setting control/display parameters
;;;------------------------------------

(setq *annotate-realizations* nil) ;; Will be t, but not ready yet

;; (grok-setting)  -- for meta-.

;;--- Alternative post-parsing segment handlers
;  (do-normal-segment-finished-options)  ;; built-in default
;  (do-strong-domain-modeling)
;  (do-reify-implicit-individuals-in-segment)
;  (do-note-text-relations-in-segment)

;; (setq *new-segment-coverage* t)   ;; to debug strong-domain-modeling, add cases


(defun syn-test (&optional (text *iraqi-girl*))
  (what-to-do-at-the-forest-level :parse-forest-and-do-treetops)
  (setq *do-forest-level* t)
  (setq *allow-pure-syntax-rules* t)
  (setq *new-segment-coverage* :trivial) ;; which version of strong DM
  (setq *do-heuristic-segment-analysis* t) ;; one at a time won't hurt what's in (doc-set)
  ;; ?? (setq *note-text-relations* nil)
  (do-strong-domain-modeling)
  (setq *profligate-creation-of-individuals* t)
  (p text))


;; If nil, this flag turns off all the errors about new cases for bracketsing and
;; has them return plausible defaults. Useful if looking for weirder errors.
;;   (setq *break-on-new-bracket-situations* nil)


;;;------------------------------------------------------------
;;; Work arounds -- problems that ultimately need dealing with
;;;------------------------------------------------------------

;; Comlex doesn't have "burnt"
;;;(setup-verb (resolve/make "burnt") nil)



;;;------------------
;;; testing routines
;;;------------------

;;--------- Cases for debugging segmentation, bracket calculations

;; (p "Boeing Co. said the U.S. government has suspended the sale")
;; (f "/Users/ddm/Sparser/Sparser/code/s/drivers/timing/Bankruptcy/Eastern/just-body.lisp")

;; (p *iraqi-girl*)
;; (p "in Iraq, H5N1 has killed at least 91 people,")

;; (grok-pass-three-setup)
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/1 Aljazeera_Jan-18.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/2 ABCNews_Jan-30.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/3 Yahoo-India_Jan-30.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/4 bbc_Jan-31.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/5 bbc_Feb-3.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/6 Newsfactor_Feb-16.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/7 bbc_March-3.txt")
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/8 bbc_March-24.txt")

;; (analyze-text-from-directory "Users/ddm/sift/nlp/Grok/corpus/bird-flu" :doc-set-name 'bird-flu) 

;; These are in dm&p in the workspaces file under init. They're stray medium size
;; articles lifted from the news
;; (fire)
;; (medtronic)

;; (f "/Users/ddm/sift/nlp/Grok/corpus/helicopter-attack.txt")
;;   N.b. hard pathname. Need soft one. Perhaps via asdf, certainly via a pointer
;;    off load-truename

;; (p "in the region and the World Health Organisation (WHO) will send a team of experts there on Wednesday")
;;   will get to establish-referent-of-pn and we make a named-object
;;
;; (p "the World Health Organization (WHO)")
;;  This article has all the pieces:
;; (f "/Users/ddm/sift/nlp/Grok/corpus/bird-flu/4 bbc_Jan-31.txt")


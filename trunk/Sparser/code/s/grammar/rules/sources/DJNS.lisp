;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "DJNS"
;;;   Module:  "grammar;rules:sources:"
;;;  Version:  0.3 August 1994

;; initiated 12/27/93 v2.3. typo fixed 1/7/94.
;; 0.1 (5/3/94) changed the NL routine to the stack-sensitive paragraph detector
;; 0.2 (5/4) added value for line adjustment. 5/19 tweeked the call for that
;;     (7/22) added capitalization master control.
;; 0.3 (8/19) changed inheriance of the djns-article to text-under-analysis

(in-package :sparser)

;;;-------------------
;;; the style objects
;;;-------------------

(define-document-style  Dow-Jones-News-Service/1990-91
  :init-fn setup-for-DJNS/1990-91)


(define-document-style  Dow-Jones-News-Service/9-17-92
  :init-fn setup-for-DJNS/1990-91/no-linefeeds)


;;;-------------------------------------
;;; setting up the runtime environments
;;;-------------------------------------

(defun setup-for-DJNS/1990-91 ()
  ;; funcall'ed from initialize-by-current-style
  ;;
  ;; The DJNS Who's News articles collected at Sandpoint had
  ;; Linefeed characters in them. These need to be flushed from
  ;; the display stream or a Mac won't be able to print that
  ;; buffer. 

  (use-original-lines-of-text)
  (use-flush-LF-&-return-NL-tokens-FSA)
  (setq *ignore-capitalization* nil)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens))



(defun setup-for-DJNS/1990-91/no-linefeeds ()
  ;; alternative for articles that were typed in or had their
  ;; linefeeds stripped out but that have headers and indentation
  ;; like the regular DJNS version of the WSJ.
  (use-original-lines-of-text)
  (use-stack-sensitive-Newline-FSA)
  (setq *ignore-capitalization* nil)
  (establish-version-of-next-terminal-to-use :pass-through-all-tokens))


;;;------------------
;;; source predicate
;;;------------------

(defun dJNS-article? ()
  ;; tests whether the article currently being run is from DJNS,
  ;; which is interpreted as it having the above style
  (eq *current-style*
      (document-style-named 'Dow-Jones-New-Service/1990-91)))


;;;-------------------
;;; the document type
;;;-------------------

(define-category DJNS-article
  :specializes text-under-analysis
  :instantiates nil
  :binds ((an . assession-number)
          )
  :index (:key an))


(defun redo-current-article-as-djns (an)
  ;(break)
  an
  nil )


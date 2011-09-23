;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-1996 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "doc streams"
;;;   Module:  "interface;corpus:"
;;;  version:  0.7 January 1997

;; initiated 11/91, v2.1
;; 0.1 (3/19, v2.2)  commented out the streams that won't go into the demo
;;     and rearranged the calls to set them up for use in menus
;; 0.2 (1/7/94 v2.3) added styles, and vetting more of the original set
;; 0.3 (2/9) tweeked Feb since the 4th directory isn't really here
;; 0.4 (3/10) uncommented the product announcements and Tipster test articles
;;     (3/30) added oil streams
;; 0.5 (6/13/95) added gating by the existance of a location for the corpus
;;     (7/25) changed the style on a number of streams to make them work
;; 0.6 (8/9) #+'d out the cases that aren't included on Book
;;     (9/15) added html  (12/28) added kf-web articles.
;; 0.7 (1/16/96) renamed the ern's

(in-package :sparser)


(defun document-streams ())  ;; for meta-point



(when cl-user::location-of-text-corpora
  
  
  ;;;------------------------
  ;;; interesting singletons
  ;;;------------------------

  (define-document-stream '|sample of Web pages|
    :style-name 'web-page
    :directory "html;")

  (define-document-stream '|financial panic 9/17/92|
    :style-name 'Dow-Jones-News-Service/9-17-92
    :directory "9-17-92;" )
  
  (define-document-stream '|2 product announcements|
    :style-name 'hand-typed/no-headers
    :directory "announcements;")
  
  (define-document-stream '|Tipster test articles|
    :style-name 'hand-typed/no-headers  ;; wrong -- just a stand-in
    :directory "tipster tests;")
  
  ;;"joint-ventures;"
  
  
  ;;;------------
  ;;; Who's News
  ;;;------------
  
  (define-document-stream '|Who's News|
    :superstream t )
  
  (define-document-stream  '|1st 15 of Who's News test|
    :directory "1st 15 Who's News;"
    :style-name 'hand-typed/no-headers   ;;Dow-Jones-News-Service/1990-91
    :substream-of '|Who's News| )
  
  (define-document-stream '|small test set|
    :directory "originals;"
    :style-name 'hand-typed/no-headers
    :substream-of '|Who's News| )
  
  #+:full-corpus
  (define-document-stream '|December 1990|
    :superstream t )
  
  #+:full-corpus
  (define-document-stream '|1st December batch|
    :style-name 'Dow-Jones-News-Service/1990-91
    :directory "Dec 0;"
    :substream-of '|December 1990| )
  
  #+:full-corpus
  (define-document-stream '|2d December batch|
    :style-name 'Dow-Jones-News-Service/1990-91
    :directory "Dec 1;"
    :substream-of '|December 1990| )
  
  #+:full-corpus
  (define-document-stream '|3d December batch|
    :style-name 'Dow-Jones-News-Service/1990-91
    :directory "Dec 2;"
    :substream-of '|December 1990| )
  
  #+:full-corpus
  (define-document-stream '|4th December batch|
    :style-name 'Dow-Jones-News-Service/1990-91
    :directory "Dec 3;"
    :substream-of '|December 1990| )
  
  
  #+:full-corpus
  (define-document-stream '|February 1991|
    :superstream t )
  
  #+:full-corpus
  (define-document-stream '|Feb91 part 1|
    :style-name 'Dow-Jones-News-Service/1990-91
    :directory "feb0;"
    :substream-of '|February 1991| )
  
  #+:full-corpus
  (define-document-stream '|Feb91 part 2|
    :style-name 'Dow-Jones-News-Service/1990-91
    :directory "feb1;"
    :substream-of '|February 1991| )
  
  #+:full-corpus
  (define-document-stream '|Feb91 part 3|
    :style-name 'Dow-Jones-News-Service/1990-91
    :directory "feb2;"
    :substream-of '|February 1991| )
  
  
  ;;;------------------
  ;;; earnings reports
  ;;;------------------
  
  
  (block  :ern-document-streams

    (define-document-stream '|Earnings Reports|
      :superstream t )
        
    (define-document-stream '|WSJ 1990|
      :style-name 'hand-typed/no-headers
      :substream-of '|Earnings Reports|
      :directory "original typed WSJ;" )
    
    (define-document-stream '|London Stock Exchange 1990|
      :style-name 'hand-typed/no-headers
      :substream-of '|Earnings Reports|
      :directory "original typed LSE;" )

    (define-document-stream '|Web pages from Knowledge Factory|
      :style-name 'KF/web-page
      :substream-of '|Earnings Reports|
      :directory "KF set#1;" )

    (define-document-stream '|from Knowledge Factory|
      :style-name 'KF/web-page
      :substream-of '|Earnings Reports|
      :directory "KF clean #1;" )

    (define-document-stream '|2d set from Knowledge Factory|
      :style-name 'KF/just-ascii
      :substream-of '|Earnings Reports|
      :directory "KF set#2;" )
    
    )
  
  
  ;;;-----
  ;;; tnm
  ;;;-----
  
  (define-document-stream '|Tenders Mergers & Acquisitions|
    :superstream t )
  
  (define-document-stream '|3 long tnm|
    :style-name 'Dow-Jones-News-Service/9-17-92
    :substream-of '|Tenders Mergers & Acquisitions|
    :directory "3 TNM;" )
  
  
  
  ;;;-----
  ;;; oil
  ;;;-----

  #+:full-corpus
  (block :oil-document-streams
    
    (define-document-stream '|oil|
      :superstream t )
    
    (define-document-stream '|by publication|
      :substream-of '|oil|
      :superstream t )
    
    (define-document-stream '|by topic|
      :substream-of '|oil|
      :superstream t )
    
    (define-document-stream '|business development|
      :style-name 'hand-typed/no-headers
      :substream-of '|by topic|
      :directory "oil/Bus;" )
    
    (define-document-stream '|computer hardware|
      :style-name 'hand-typed/no-headers
      :substream-of '|by topic|
      :directory "oil/hdw;" )
    
    (define-document-stream '|computer software|
      :style-name 'hand-typed/no-headers
      :substream-of '|by topic|
      :directory "oil/sw;" )
    
    (define-document-stream '|exploration projects|
      :style-name 'hand-typed/no-headers
      :substream-of '|by topic|
      :directory "oil/explor-proj;" )
    
    (define-document-stream '|exploration technology|
      :style-name 'hand-typed/no-headers
      :substream-of '|by topic|
      :directory "oil/explor-tech;" )
    
    (define-document-stream '|financial data|
      :style-name 'hand-typed/no-headers
      :substream-of '|by topic|
      :directory "oil/financials;" )
    
    
    (define-document-stream '|Byte|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/byte;" )
    
    (define-document-stream '|Dow Jones News Service|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/djns;" )
    
    (define-document-stream '|Houston Business Journal|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/hbj;" )
    
    (define-document-stream '|Oil and Gas Journal|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/o&g;" )
    
    (define-document-stream '|Oil Week|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/week;" )
    
    (define-document-stream '|Platts Oilgram News|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/platts;" )
    
    (define-document-stream '|scanned in by hand|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/scanned;" )
    
    (define-document-stream '|Wall Street Journal|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/wsj;" )
    
    (define-document-stream '|Washington Post|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/post;" )
    
    (define-document-stream '|World Oil|
      :style-name 'hand-typed/no-headers
      :substream-of '|by publication|
      :directory "oil/world;" )
    
    )  ;; end of 'oil' block
  
  )  ;; end of gate


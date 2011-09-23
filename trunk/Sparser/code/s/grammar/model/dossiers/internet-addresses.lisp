;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1995  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "internet addresses"
;;;   Module:  "model;dossiers:"
;;;  version:  September 1995

;; initiated 9/21/95

(in-package :sparser)

#|
(define-no-space-pattern  sequence-of-words/internal-dots
  :acceptance-function 'punctuation-delimited-sequence
  :transition-net
     (  (:initial  + word      -> :one-word)
        (:one-word + "."       -> :word-dot)
        (:word-dot + word      -> :word-dot-word)
        (:word-dot-word + "."  -> :word-dot)  )
  :accept-states  ( :word-dot-word ))


(define-no-space-pattern  sequence-of-words-or-digits/any-internal-single-punctuation
  :acceptance-function 'punctuation-delimited-sequence
  :transition-net
     (   (:initial + word    -> :one-item)
         (:initial + digits  -> :one-item)
         (:one-item + punctuation    -> :item-punctation)
         (:item-punctuation + word   -> :item-punctuation-item)
         (:item-punctuation + digits -> :item-punctuation-item)
         (:item-punctuation-item + punctuation  -> :item-punctation)  )
  :accept-states  ( :item-punctuation-item ))
|#
#|
(define-no-space-pattern  internet-address
  :acceptance-function 'internet-address
  :transition-net
     (   (:initial + sequence-of-words-or-digits/any-internal-single-punctuation
                ->  :internet-address/1 )
         (:internet-address/1 + "@"  ->  :internet-address/2 )
         (:internet-address/2 + sequence-of-words/internal-dots
                ->  :internet-address)   )
  :accept-states  ( :internet-address ))  |#


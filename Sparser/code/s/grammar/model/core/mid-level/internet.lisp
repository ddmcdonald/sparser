;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2020-2021 David D. McDonald  -- all rights reserved
;;;
;;;     File:  "internet"
;;;   Module:  "model;core:mid-level:"
;;;  version:  July 2021

;; Initiated 3/21/20

(in-package :sparser)

;;;-------------------------------------
;;; overly simplistic treatment of URLs
;;;-------------------------------------

(define-category url
  :specializes index
  :binds ((string (:primitive word)))
  :documentation "The UR string is just stored as at polyword
 and unanalyzed. Should use regex for delimiting components
 when we're serious about these")


(define-category url-prefix
  :specializes index
  :binds ((string (:primitive word)))
  :documentation "The string that initiates a URL, e.g. 'http'.")

(define-category url-address
  :specializes index
  :binds ((string (:primitive word)))
  :documentation "The site the page is at, e.g. 'apple.com'")

(define-category url-initial-separator
  :specializes index
  :binds ((string (:primitive word)))
  :documentation "The separator between the prefix and the address")


(noun "http://" :super url-prefix) 
(noun "http:" :super url-prefix) 

(noun "https://" :super url-prefix) 
(noun "https:" :super url-prefix)

(noun "doi:" :super url-prefix) 
(noun "doi://" :super url-prefix) 

(noun "doi.org" :super url-address)
(noun "//" :super url-initial-separator)

#| 
Long-winded way to get around the problem of '//' 
 handling when there's a URL in the text

 To really do these there does have to be a mode in NS delimiting
or a follow-on that can cope with the the other punctuation -- periods,
colons, etc -- maybe it should run early?

To really do these there does have to be a mode in NS delimiting
or a follow-on that can cope with the the other punctuation -- periods,
colons, etc -- maybe it should run early?
e0                  "https://github"
                    period
e66   BIO-ENTITY    9 "com/rrwick/Porechop" 14
|#


(defparameter *url-prefixes* (list (resolve/make "http")
                                   (resolve/make "https")
                                   (resolve/make "doi")))

;(def-cfr double-slash ("//"))

;; " https: //doi.org/10.1101/478040"

(defun url-prefix (start-pos)
  "Called from ns-pattern-dispatch when there's a slash somewhere in
   the patternso that we should go to this handler rather than
   our standard set"
  ;;(break "start-pos = ~a" start-pos)
  (memq (pos-terminal start-pos) *url-prefixes*))

(defun package-url (start-pos end-pos)
  "We're called as an alternative within the no-space protocol
   by the function ns-pattern-dispatch when it sees a url-prefix.
   We need to span this region with an edge, and should make a full,
   if minimal treatement of the url per se."
  (let ((string (actual-characters-of-word start-pos end-pos)))
    (reify-url/span string start-pos end-pos)))

(defun reify-url/span (string start-pos end-pos)
  (multiple-value-bind (rule i)
      (reify-url string)
    (let ((edge (make-edge-over-long-span
                 start-pos end-pos
                 category::url
                 :rule rule
                 :form (category-named 'proper-name)
                 :referent i)))
      edge)))

(defun reify-url (string)
  (let* ((known? (resolve string))
         (pw (resolve/make string))
         (i (define-or-find-individual 'url :string pw))
         (rule
          (if known?
            (lookup/cfr category::url `(,pw))
            (define-cfr category::url `(,pw)
              :form category::proper-name
              :referent i))))
    (values rule i)))



(defgeneric probably-partial-url (item)
  (:documentation "Does any portion of this string look like it
    is part of a URL? If so reify the string as a instance.
    Called from reify-spelled-name in an attempt to be more
    accurate about what the no-space code has dropped in its lap.
    Return to reify-ns-name-and-make-edge so has to return
    the expected values.")
  (:method ((s string))
    (when (or (search ".com" s)
              (search ".net" s)
              (search ".ca" s))
      (multiple-value-bind (rule i)
          (reify-url s)
        (values category::url rule i)))))
                  

;;;----------
;;; Hashtags
;;;----------

(define-category hashtag
  :specializes index
  :binds ((string (:primitive word)))
  :documentation "String variable is an unanalyzed string like a URL.
    Next level of analysis might be decomposing them on case changes")

(defgeneric probably-a-hashtag (string)
  (:documentation "Does this string returned from no-space via
    reify-ns-name-and-make-edge start with a #\# character?")
  (:method ((string string))
    (let* ((known? (resolve string))
           (pw (resolve/make string))
           (i (define-or-find-individual 'hashtag :string pw))
           (rule
            (if known?
              (lookup/cfr category::hashtag `(,pw))
              (define-cfr category::url `(,pw)
                :form category::proper-name ;/// is this right?
                :referent i))))
      (values category::hashtag rule i))))

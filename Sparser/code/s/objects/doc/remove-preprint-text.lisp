;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; Copyright (c) 2020 Smart Information Flow Technologies
;;;
;;;     File:  "remove-preprint-text"
;;;   Module:  "objects;doc:"
;;;  Version:  July 2020

;; remove Rxiv preprint garbage that is mixed in with the article text

(in-package :sparser)


#| examples:
"The copyright holder for this preprint (which was not peer-reviewed) is the author/funder. . https://doi.org/10.1101/634600 doi: bioRxiv preprint"

"All rights reserved. No reuse allowed without permission."

"The copyright holder for this preprint (which was not peer-reviewed) is the . https://doi.org/10.1101/2020.01.10.901801 doi: bioRxiv preprint author/funder. All rights reserved. No reuse allowed without permission."

"CC-BY 4.0 International license is made available under a The copyright holder for this preprint (which was not peer-reviewed) is the author/funder. It . https://doi.org/10.1101/441154 doi: bioRxiv preprint"

"CC-BY-NC-ND 4.0 International license It is made available under a author/funder, who has granted medRxiv a license to display the preprint in perpetuity."

"CC-BY-NC 4.0 International license It is made available under a author/funder, who has granted medRxiv a license to display the preprint in perpetuity.",

 "is the (which was not peer-reviewed) The copyright holder for this preprint . https://doi.org/10.1101/2020.03. 16.20034470 doi: medRxiv preprint"

"is the author/funder, who has granted medRxiv a license to display the preprint in perpetuity."

 "The copyright holder for this preprint (which was not peer-reviewed) is the . https://doi.org/10.1101/2020.01.10.901801 doi: bioRxiv preprint The copyright holder for this preprint (which was not peer-reviewed) is the . https://doi.org/10.1101/2020.01.10.901801 doi: bioRxiv preprint Significance is shown comparing the replication of C11 PK disrupt and C11 PK restore (Aii). Significance shown is compared to wt replicon. Error bars are calculated by SEM, n = 3, * P 673 < 0.05, **** P < 0.0001. 674 author/funder. All rights reserved. No reuse allowed without permission."

"author/funder. All rights reserved. No reuse allowed without permission."

"CC-BY 4.0 International license is made
available under a The copyright holder for this preprint (which was
not peer-reviewed) is the author/funder. It
. https://doi.org/10.1101/441154 doi: bioRxiv preprint"

 "The copyright holder for this preprint this version posted April 29, 2020. . https://doi.org/10.1101/2020.04. 24.20077875 doi: medRxiv preprint"

The copyright holder for this preprint this version posted May 5, 2020.

". CC-BY-ND 4.0 International license It is made available under a is the author/funder, who has granted medRxiv a license to display the preprint in perpetuity. (which was not certified by peer review)"

limits for good endings:

start with "CC-BY" end with "perpetuity." at most 150 later (154 for end)
start with "CC-BY" end with "available under a" 60 later (66 for end)
start with "The copyright holder" end with "Rxiv preprint" 140 later (141 for end) ;; note gets both medRxiv and bioRxiv

whole phrases to grab after above:
"is the author/funder, who has granted medRxiv a license to display the preprint in perpetuity."
"author/funder, who has granted medRxiv a license to display the preprint in perpetuity."
"is the (which was not peer-reviewed)"
"author/funder. All rights reserved. No reuse allowed without permission."
"All rights reserved. No reuse allowed without permission."


is the (which was not peer-reviewed) The copyright holder for this preprint . CC-BY-ND 4.0 International license It is made available under a author/funder, who has granted medRxiv a license to display the preprint in perpetuity.
|#

(defparameter *copyright-fall-through* nil)
(defparameter *rote-copyright-snips*
  ;; these are cases that have no variance (some of which are substrings of each other) to remove after the variable ones are caught
  '("is the author/funder, who has granted medRxiv a license to display the preprint in perpetuity."
"author/funder, who has granted medRxiv a license to display the preprint in perpetuity."
    "is the (which was not peer-reviewed)"
    "(which was not certified by peer review)"
"author/funder. All rights reserved. No reuse allowed without permission."
"All rights reserved. No reuse allowed without permission."))


(defun remove-copyright-text (cpr-text)
  (cond ((search "CC-BY" cpr-text :test #'equal)
         (remove-copyright-text (resolve-cc-by cpr-text)))
        ((search "The copyright holder" cpr-text :test #'equal)
         (remove-copyright-text (resolve-cp-holder cpr-text)))
        (t
         (loop for snip in *rote-copyright-snips*
               do (setf cpr-text (remove-rote-snip snip cpr-text))
               finally (return (string-trim " " cpr-text))))))

(defun remove-rote-snip (snip text &aux
                                     (bad-start
                                      (search snip text :test #'equal)))
  (if bad-start
      (remove-rote-snip
       snip
       (remove-from-string bad-start
                           (bad-str-end snip text bad-start)
                           text))
      text))
      

(defun bad-str-end (bad-str text
                    &optional (bad-start (search bad-str text :test #'equal)))
    (when bad-start
      (+ (length bad-str) bad-start)))

(defun remove-from-string (bad-start bad-end text)
  (string-trim " "
               (concatenate 'string (string-right-trim " " (subseq text 0 bad-start)) " "
                            (string-left-trim " " (subseq text bad-end)))))

(defun resolve-cc-by (text)
  (let* ((start (or (search " . CC-BY" text :test #'equal)
                    (search "CC-BY" text :test #'equal)))
        (perpet (bad-str-end "perpetuity." (subseq text start)))
        (under (bad-str-end "available under a" (subseq text start)))
        (license (bad-str-end "International license" (subseq text start))))
    (cond  ((and perpet (> 170 perpet)) ;; if further might be new section
            (remove-from-string start (+ perpet start) text))
           ((and under (> 150 under))
            (remove-from-string start (+ under start) text))
           (license
            (remove-from-string start (+ license start) text))
           (t
            (push `("weird CC-BY" :string text) *copyright-fall-through*)
            (remove-from-string start (+ start 5) text)))))


#| examples
"The copyright holder for this preprint (which was not peer-reviewed) is the . https://doi.org/10.1101/2020.01.10.901801 doi: bioRxiv preprint"
"The copyright holder for this preprint . https://doi.org/10.1101/2020.03. 16.20034470 doi: medRxiv preprint"
"The copyright holder for this preprint (which was
not peer-reviewed) is the author/funder. It
. https://doi.org/10.1101/441154 doi: bioRxiv preprint"
"The copyright holder for this preprint this version posted May 5, 2020."
"The copyright holder for this preprint this version posted April 29, 2020. . https://doi.org/10.1101/2020.04. 24.20077875 doi: medRxiv preprint"

is the (which was not peer-reviewed) The copyright holder for this preprint . CC-BY-ND 4.0 International license It is made available under a author/funder, who has granted medRxiv a license to display the preprint in perpetuity.
|#

(defun resolve-cp-holder (text)
  (let* ((start (search "The copyright holder" text :test #'equal))
         (rxiv (bad-str-end "Rxiv preprint" (subseq text start)))
         (doi (bad-str-end "doi:"  (subseq text start)))
         (url (search "http"  (subseq text start) :test #'equal))
         (date (bad-str-end " 2020." (subseq text start)))
         (trunc
          (or
           (bad-str-end "The copyright holder for this preprint (which was
not peer-reviewed) is the author/funder. It" text)
           (bad-str-end "The copyright holder for this preprint (which was not peer-reviewed) is the ." text)
           (bad-str-end "The copyright holder for this preprint (which was not peer-reviewed)" text)
           (bad-str-end "The copyright holder for this preprint" text))))

    (cond ((and rxiv (> 170 rxiv))
           (remove-from-string start (+ start rxiv) text))
          ((and doi (> 160 doi))
           (remove-from-string start (+ start doi) text))
          ((and url (> 150 url))
           (let* ((abs-url (+ url start))
                  (url-length ;; assuming url ends at space or newline
                   (or (search " " (subseq text abs-url) :test #'equal)
                       (position #\newline (subseq text abs-url))
                       (position #\return (subseq text abs-url)))))
             (if url-length ;; check if string ends before url ends
                 (remove-from-string start
                                     (+ abs-url url-length) text)
                 (subseq text 0 abs-url))))
          ((and date (> 150 date))
           (remove-from-string start (+ start date) text))
          (trunc
           (remove-from-string start trunc text))
          (t
           (push `("weird holder" :string text) *copyright-fall-through*)
           (remove-from-string start
                               (bad-str-end "The copyright holder" text)
                               text)))))

          
          
                               
                       
        

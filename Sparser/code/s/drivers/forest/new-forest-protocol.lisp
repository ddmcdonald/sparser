;;; copyright (c) 2014  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "new-forest-protocol"
;;;   Module:  "drivers;forest:"
;;;  Version:  August 2014

;; Initiated 8/4/14

(in-package :sparser)


; (what-to-do-at-the-forest-level :new-forest-protocol) ;; eval with each edit
;
(defun new-forest-driver (rightmost-position)
  ;; Just a dummy that prints the treetops at each sentence. 
  (tr :new-forest-driver rightmost-position)
  (break "got to the forest")
  (let ((sentence (previous-sentence)))
    (cond
     (sentence
      (let ((start-pos (starts-at-pos sentence))
            (stop-pos (ends-at-pos sentence)))
        (format t "~&~%")
        (print-flat-forest t start-pos stop-pos)
        (format t "~&~%~%")
        (scan-next-segment *where-the-last-segment-ended*)))
     (t 
       (scan-next-segment *where-the-last-segment-ended*)))))

 
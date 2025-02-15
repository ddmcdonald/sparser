;;; Copyright (c) 2015-2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "blocksworld-sents"
;;;  Module: "grammar/model/sl/blocks-world/
;;;  version: September 2016

;; Broken out from patterns 7/20/15. 11/2/15 fanout from converting
;; edge patterns early. 

(in-package :sparser)


(defparameter *blocksworld-sents*
  '((p "Let’s build a 3 step staircase.")
    (p "Let’s make the steps green.")
    (p "We don’t have enough green blocks.")
    (p "We do not have enough green blocks.")
    (p "Make the tops of the steps red.")
    (p "Let’s make the bottom row.")
    (p "Put a green block on the table.")
    ;;(p "Put another one next to it.")
    (p "Put another block next to it.") ;; replace "one" by "block" for now
    ;;(p "Now add a red block next to that one.")
    (p "Now add a red block next to that block.") ;; replace "one" by "block" for now
    ;;(p "Now put a green one on top of the first block.")
    (p "Now put a green block on top of the first block.")
    ;;(p "Good. Now add a red one on top of that.")
    (p "Good. Now add a red block on top of that.")
    (p "Put a red block on the bottom middle green block.")
    (p "we’re done.")

    (p "Make a row of two green blocks.")
    ;;(p "Put a red one at the end.")
    (p "Put a red block at the end.")
    (p "Put another green block on the green block at the end of the row.")
    (p "Put another green block on the green block at the end of the row on the left.")
    ;;(p "Now put another one on top of it.") ;; "a one" => "another one"
    (p "Now put a block on top of it.")
    (p "The top block should be red.")
    (p "Put a red block on it.")
    ;;(p "Good. Now put a red one on top of the middle block.")
    (p "Good. Now put a red block on top of the middle block.")

    (p "Put a row of three blocks on the table.")
    (p "Put a row of three blue blocks on the table.")
    (p "Put a row of two blocks on top.")
    (p "Put a row of two blocks on top of the bottom row.")
    (p "Put a row of two green blocks on top of the bottom row.")
    (p "Where? Which end?")
    (p "The left end of the row.")
    (p "Put a row of two blocks on top of the left end of the bottom row.")
    (p "Put a stack of two red blocks on the table.")
    (p "Add a red block at the right end of the row.")

    ))


(define-sentence-corpus blocks-world *blocksworld-sents*)

(defun test-blocksworld-sents (&optional (no-sem :syn-sem) (stream *standard-output*))
  (let ((*suppress-indiv-uids* t)
	(*no-small-trees* t))
    (declare (special *suppress-indiv-uids* *no-small-trees*))
    (loop for s in *blocksworld-sents*
       do
	 (format stream "~%___________________~%~s~%" (second s))
	 (cond ((eq no-sem :syn-sem)
                (eval `(p ,(second s)))
                (loop for edge-tree in (tts-edge-semantics)
                   do (pprint (second edge-tree))))
               (no-sem
                (eval `(p ,(second s))))
               (t
                (eval `(pp ,(second s)))
                (show-sem-forest)))
	 (format stream "~%~%~%"))))


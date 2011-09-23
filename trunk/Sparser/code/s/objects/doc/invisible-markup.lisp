;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "invisible markup"
;;;   Module:  "objects;doc:"
;;;  Version:  June 1994

;; initiated 6/1/94 v2.3

(in-package :sparser)



(defun define-invisible-markup-pair (name
                                     start-string end-string
                                     &key ((:initiation-action  initiate))
                                          ((:termination-action terminate))
                                          ((:interior-markup interior)))
  
  ;; Called from define-invisible-markup.
  ;; These are semantically akin to markup tag pairs in terms of their
  ;; capacity for actions, but have a drastically different detection
  ;; procedure and representation within the chart. 

  ;; create a section marker and its special word as usual as the way
  ;; to intern and access it.
  (let* ((sm-word (define-word/expr
                    (concatenate 'string "sm-" (symbol-name name))))
         (sm (or (find/section-marker sm-word)
                 (make-a-new-section-marker sm-word 
                                            (symbol-name name)))))

    ;; stash the routines on the marker. If this is a redefinition
    ;; this action will overwrite the old values
    (populate-section-marker sm initiate terminate nil interior nil)

    (unless (stringp start-string)
      (error "The 'start-string' argument is not a string:~%~A"
             start-string))
    (unless (stringp end-string)
      (error "The 'end-string' argument is not a string:~%~A"
             end-string))
    (unless (not (equal start-string end-string))
      (error "The 'start-string' and 'end-string' arguments are not ~
              allowed to be~%the same string: ~A" start-string))

    (extend-invisible-markup-trie start-string :initiate sm)
    (extend-invisible-markup-trie end-string :terminate sm)
    sm ))


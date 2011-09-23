;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "annotation"
;;;   Module:  "objects;doc:"
;;;  Version:  June 1994

;; initiated 6/6/94 v2.3

(in-package :sparser)


(defun define-invisible-annotation-tag (name string
                                        &key ((:initiation-action initiate))
                                             ((:interior-markup interior)))
  ;; Called from define-invisible-markup.
  ;; These are singletons that invariably include interior markup.
  ;; Semantically they provide information about the word that precedes
  ;; them. Setting up access to that information is what the 'initiation
  ;; action' does.

  (let* ((sm-word (define-word/expr
                    (concatenate 'string "sm-" (symbol-name name))))
         (sm (or (find/section-marker sm-word)
                 (make-a-new-section-marker sm-word 
                                            (symbol-name name)))))

    (populate-section-marker sm initiate nil nil interior nil)

    (unless (stringp string)
      (error "The 'start-string' argument is not a string:~%~A" string))

    (extend-invisible-markup-trie string :annotation sm)

    sm ))


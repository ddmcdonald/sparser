;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "display"
;;;   Module:  "analyzers;char-level:"
;;;  Version:  1.7 December 1994

;; initiated 1/92, fixed end-of-source glitch 3/13
;; Added the straight-through case for a word explicitly 6/26
;; 1.0 (9/25/92 v2.3) redone for new tokenizer
;; 1.1 (11/2) tweeked to make the alignments work correctly given the
;;      difference between punctuation and other tokens.
;; 1.2 (11/11/93) added a switch that directs the display output to
;;      the window for the lexicographer's workbench
;; 1.3 (5/2/94) added flag to control adjusting to a fixed line length
;; 1.4 (5/3) added 'position' parameter that's passed through to the text window routine
;; 1.5 (5/19) tweeked parameterization of adjustment so that it could be
;;      rebound during the course of an article.
;; 1.6 (6/9) fixed a fencepost error in swapping buffers.
;; 1.7 (12/12) added an offset based on *number-of-characters-to-subtract*
;;      to work with the token-level 'hiding' of every-terminal tags


(in-package :sparser)

;;;---------
;;; globals
;;;---------

(unless (boundp '*adjust-text-to-fixed-line-length*)
  (defparameter *adjust-text-to-fixed-line-length* nil))

(defparameter *adjust?* *adjust-text-to-fixed-line-length*)

(define-per-run-init-form '(setq *adjust?*
                                 *adjust-text-to-fixed-line-length*))

  

(defparameter *display-text-to-special-window* nil
  "Redirects the writing to a window where the text can be manipulated
   as part of the lexicographer's workbench")


(defvar *test-token-display* nil)
;(setq *test-token-display* t)
;(setq *test-token-display* nil)


;;;---------
;;; drivers
;;;---------

(defun write-current-token-to-article-stream (word position)

  ;; Called from Bump-&-store-word when the flag *display-word-stream*
  ;; is on.  Pulls right from the character buffers rather than the
  ;; word-lookup buffer so that we can do the right thing when running
  ;; in the mode that ignores unknown words or maps all characters to
  ;; lowercase for the purpose of looking up words

  (declare (ignore word))  ;; useful for debugging

  (let* ((end ;(1+ *index-of-next-character*))
              *index-of-next-character*)
           ;; the index is incremented in order to take the next
           ;; character (it's initialized to -1), so we need to
           ;; go just ahead of where it currently is.
         (token-length *length-of-the-token*)
         (stream *display-word-stream*))

    (unless (= *number-of-characters-to-subtract* 0)
      (setq end (1-
                 (- end *number-of-characters-to-subtract*))))

    ;(format t "~&word = ~A,~A, ~A,~A  ~A,~40,5T~A~%" 
    ;        token-length end
    ;        *number-of-characters-to-subtract*
    ;        *chars-remaining-on-line*
    ;        word *capitalization-of-current-token*)
    ;(break)

    (case *capitalization-of-current-token*
      (:spaces
       ;; the index has moved just beyond the end of the token
       ;; because it's on the first character of the next token.
       (write-token token-length end stream position))
      (:punctuation
       ;; the index is right on the token (character)
       (write-token 1 (1+ end) stream position))
      (otherwise
       ;; just like spaces
       (write-token token-length end stream position)))))



(defun write-specific-word-to-article-stream (word position)
  ;; called from Fill-whitespace when it's called with the flag
  ;; :display-word up, indicating that we're out of sync with the
  ;; tokenizer so its usual technique won't work and we have to
  ;; work from the word's pname.
  (let ((string (word-pname word)))
    (when *adjust?*
      (insert-NL-if-needbe (length string) position))
    ;(format t "~&specific word ~A~35,5T~A~%"
    ;        word *chars-remaining-on-line*)
    (if *display-text-to-special-window*
      (write-to-text-window string position)
      (write-string string *standard-output*))))



;;;----------------------------
;;; actually doing the writing
;;;----------------------------

(defun write-token (token-length end stream position)
  (unless (= token-length 0)  ;; e.g. for source-start
    (when *adjust?*
      (insert-NL-if-needbe token-length position))
    (if (> token-length end)
      (hassle-out-display-of-split-token end token-length stream position)
      (let ((string (subseq *character-buffer-in-use*
                            (- end token-length)
                            end)))
      (if *display-text-to-special-window*
        (write-to-text-window string position)
        (write-string string *standard-output*))))))


#| When the calculation of 'end' involves subtracting some value
from the point reached by the the tokenizer (*index-of-next-character*)
then the -entire- substring to be printed can be back in the old
char buffer ('old-part') and none will be in the 'new-part'.
It seems (12/14/94) that checking for the 'end' being negative
is the key.  |#

(defun hassle-out-display-of-split-token (end length stream position)
  (let* ((offset (- length (abs end)))
         (2d-offset (if (minusp end)
                      (abs end)
                      0))
         (old-part
          (subseq *the-next-character-buffer*
                  (- *usable-amount-of-character-buffer*
                     (if (minusp end)
                       (+ length (abs end))
                       offset))
                  (- *usable-amount-of-character-buffer*
                     2d-offset)))
         (new-part
          (if (minusp end)
            ""
            (subseq *character-buffer-in-use*
                    0
                    end))))
    (if *display-text-to-special-window*
      (then
        (write-to-text-window old-part position)
        (unless (= end 0) ;; don't send null strings
          (write-to-text-window new-part position)))
      (else
        (write-string old-part stream)
        (write-string new-part stream)))))



#|  original before trying adjustments for negative value of 'end'
(defun hassle-out-display-of-split-token (end length stream position)
  (let* ((offset (- length end))
         (old-part
          (subseq *the-next-character-buffer*
                  (- *usable-amount-of-character-buffer* offset)
                  *usable-amount-of-character-buffer*))
         (new-part
          (subseq *character-buffer-in-use*
                  0
                  end)))
    (if *display-text-to-special-window*
      (then
        (write-to-text-window old-part position)
        (unless (= end 0) ;; don't send null strings
          (write-to-text-window new-part position)))
      (else
        (write-string old-part stream)
        (write-string new-part stream))))) |#


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1994,2014-201 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "display"
;;;   Module:  "analyzers;char-level:"
;;;  Version:  December 2021

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
;; 1.7 (12/12/94) added an offset based on *number-of-characters-to-subtract*
;;      to work with the token-level 'hiding' of every-terminal tags.
;;     (8/24/14) Added actual-characters-of-word to help reify bio entities
;;      correctly.  
;; (1/21/16) Added extract-string-spanned-by-edge to improve look of tts.


(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defvar *adjust-text-to-fixed-line-length*)
(unless (boundp '*adjust-text-to-fixed-line-length*)
  (defparameter *adjust-text-to-fixed-line-length* nil))

(defparameter *adjust?* *adjust-text-to-fixed-line-length*)

(define-per-run-init-form '(setq *adjust?*
                                 *adjust-text-to-fixed-line-length*))

  

(defparameter *display-text-to-special-window* nil
  "Redirects the writing to a window where the text can be manipulated
   as part of the lexicographer's workbench")


(defvar *test-token-display* nil)
; (setq *test-token-display* t)
; (setq *test-token-display* nil)


;;;---------
;;; drivers
;;;---------

(defun write-current-token-to-article-stream (word position
                           &optional (stream *display-word-stream*))

  ;; Called from Bump-&-store-word when the flag *display-word-stream*
  ;; is on.  Pulls right from the character buffers rather than the
  ;; word-lookup buffer so that we can do the right thing when running
  ;; in the mode that ignores unknown words or maps all characters to
  ;; lowercase for the purpose of looking up words

  (declare (ignore word)  ;; useful for debugging
           (special *length-of-the-token* *number-of-characters-to-subtract*
                    *capitalization-of-current-token*))

  (let* ((end ;(1+ *index-of-next-character*))
              *index-of-next-character*)
           ;; the index is incremented in order to take the next
           ;; character (it's initialized to -1), so we need to
           ;; go just ahead of where it currently is.
         (token-length *length-of-the-token*))
       ;;  (stream *display-word-stream*)

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


#+ignore
(defun actual-characters-of-word (pos-before pos-after)
  ;; call from reify-fullcaps-as-bio-entity for starters.
  ;; May be useful in other cases. Not tied to the tokenizer
  ;; march, just a workable portion of the character buffers.
  (let ((start-index (pos-character-index pos-before))
        (end-index (pos-character-index pos-after))
        (ws-after (pos-preceding-whitespace pos-after)))

    ;; Subtract for the whitespace after the word
    ;;/// There's an edge case when the whitespace after
    ;; is just over the edge into the next buffer
    (let ((adjusted-end
           (cond
             ((null end-index) nil)
             ((null ws-after) end-index)
             ((spaces-word? ws-after)
              (- end-index (number-of-spaces ws-after)))
             ((eq ws-after *newline*)
              (- end-index 1))
             (t
              (push-debug `(,ws-after ,pos-before ,pos-after))
              (break "New case of 'whitespace after' in ~
                     computing actual-characters-of-word ~%~a"
                     ws-after)))))

      (when *buffers-in-transition*
        ;; We recently swapped buffers and might have a token
        ;; that strattles them, but alternatively have we moved 
        ;; completely into the current buffer, in which case
        ;; we turn this flag off.
        (push-debug `(,start-index ,end-index ,adjusted-end))
        ;;(break "Check whether we're completely on the current buffer")
        (let ((usable-buffer-length
               (+ *length-accumulated-from-prior-buffers*
                  *usable-amount-of-character-buffer*)))
          (push-debug `(,usable-buffer-length))
          (if (< start-index ;; it's in the other buffer
                 *length-accumulated-from-prior-buffers*)
              (break "word is split across buffers: ~a"
                     (treetops-between pos-before pos-after))
            (setq *buffers-in-transition* nil))))

      (if (or *buffers-in-transition* (null adjusted-end))
        (cond
         #+ignore(t 
          ;; fall through to the version that will lose the
          ;; capitalization
                  (try-reconsituting-split-tokens words start-index adjusted-end))
         ((member nil (treetops-between pos-before pos-after))
          ;; can get nils in cases like
          ;;  "g. Mdm2, could be the targets for phosphorylation by HIPK2."
          (error "actual-characters-of-word -- can't extract characters in word -- bad string, possibly sentence corruption"))
         (t
          (let ((pnames (mapcar #'word-pname (treetops-between pos-before pos-after))))
            (apply #'string-append pnames))))

        (let ((start (- start-index
                        *length-accumulated-from-prior-buffers*))
              (end (- adjusted-end
                      *length-accumulated-from-prior-buffers*)))
          (subseq *character-buffer-in-use* start end))))))

(defun actual-characters-of-word (pos-before pos-after)
  (trim-whitespace
   (extract-characters-between-positions pos-before pos-after)))

(defgeneric string-for-edge (edge)
  (:documentation "Uses extract-string-spanned-by-edge, but
    cleans up the result for easier examination by people")
  (:method ((n integer))
    (string-for-edge (edge# n)))
  (:method ((edge edge))
    (trim-whitespace
     (replace-newline-with-space
      (extract-string-spanned-by-edge edge)))))

(defun extract-string-spanned-by-edge (edge)
  (let* ((start-pos (pos-edge-starts-at edge))
         (end-pos (pos-edge-ends-at edge))
         (start (pos-character-index start-pos))
         (end (pos-character-index end-pos)))
    (extract-string-from-char-buffers start end)))

(defun extract-characters-between-positions (start-pos end-pos)
  (let ((start (pos-character-index start-pos))
        (end (pos-character-index end-pos)))
    (if (and (numberp start) (numberp end))
        (extract-string-from-char-buffers start end)
        (else (warn "can't extract string between ~s and ~s in ~s"
                    start end (current-string))
              ""))))

(defun clean-string-for-polyword (string)
  "Motivated by reify-spelled-name which makes a polyword from a sting
   retried by extract-characters-between-positions which can get too much.
   In particular it can get periods which we need to leave out."
  (let ((s1 (trim-whitespace string))) ; includes newlines
    (let ((period-pos (position #\. s1 :from-end t)))
      (if period-pos
        (remove #\. s1 :test #'char= :from-end t)
        s1))))

;;/// consider making this an flet on reify-spelled-name
(defun clean-words-derived-from-string (words)
  "When reify-spelled-name gets more characters in its string that it wants
   (because the it terminated in a newline). The word list also has to have
   its final period and final newline removed"
  (let ((reversed (reverse words)))
    (when (eq (car reversed) *newline*)
      (setq reversed (cdr reversed)))
    (when (eq (car reversed) *the-punctuation-period*)
      (setq reversed (cdr reversed)))
    (reverse reversed)))


(defun write-characters-between-positions (start-pos end-pos stream)
  (format stream "~a" (extract-characters-between-positions start-pos end-pos)))


(defun extract-string-from-char-buffers (start end)
  "Sets up a call to subseq on the character buffer being used. 
   Worries about what happens when we're going across buffers."
  (assert end (start) "Can't use an end index of nil. Start is ~a" start)
  (let ((accumulated *length-accumulated-from-prior-buffers*))
    (cond
     (*buffers-in-transition*
      (cond
       ((> start accumulated)
        ;; it's all in the new buffer
        (let ((offset-start (- start accumulated))
              (offset-end (- end accumulated)))
          (subseq *character-buffer-in-use* offset-start offset-end)))
       (t ;; but if it's not, then it's split across them
        ;; The amount in the other buffer
        (let ((offset-start (- start accumulated))
              (end-current-buffer (- end accumulated)))
          (break "About to extract a string from character ~
                  buffers in transition.~%Is start of ~a (in ~
                  previous buffer) and an end of ~a (current) ~
                  sensible numbers?" offset-start end-current-buffer)
          (let ((prefix (subseq *the-next-character-buffer* offset-start))
                (suffix
                 (subseq *character-buffer-in-use*
                         0 end-current-buffer)))
            ;;(break "~s~%~s" prefix suffix)
            ;;(setq *buffers-in-transition* nil)
            (string-append prefix suffix))))))
     (t    
      (subseq *character-buffer-in-use* start end)))))

;;;----------------------------
;;; actually doing the writing
;;;----------------------------

(defun write-token (token-length end stream position)
  (unless stream
    (setq stream *standard-output*))
  (unless (= token-length 0)  ;; e.g. for source-start
    (when *adjust?*
      (insert-NL-if-needbe token-length position))
    (let ((string
           (if (> token-length end)
             (multiple-value-bind (old-part new-part)
                                  (compute-split-token end token-length)
               (string-append old-part new-part))
             (subseq *character-buffer-in-use*
                     (- end token-length)
                     end))))
      (if *display-text-to-special-window*
        (write-to-text-window string position)
        (write-string string stream)))))

(defun try-reconsituting-split-tokens (words start-index adjusted-end)
  (let* ((word-lengths
          (mapcar #'(lambda (w) (length (word-pname w)))
                  words))
         (length (apply #'+ word-lengths)))
    (push-debug `(,start-index ,adjusted-end ,length))
    (break "fix the split computation")
    (multiple-value-bind (old-part new-part)
                         (compute-split-token adjusted-end length)
      (string-append old-part new-part))))

#| When the calculation of 'end' involves subtracting some value
from the point reached by the the tokenizer (*index-of-next-character*)
then the -entire- substring to be printed can be back in the old
char buffer ('old-part') and none will be in the 'new-part'.
It seems (12/14/94) that checking for the 'end' being negative
is the key.  |#

(defun compute-split-token (end length)
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
    (values old-part new-part)))


#|original 
    (if (> token-length end)
      (hassle-out-display-of-split-token end token-length stream position)
      (let ((string (subseq *character-buffer-in-use*
                            (- end token-length)
                            end)))
      (if *display-text-to-special-window*
        (write-to-text-window string position)
        (write-string string *standard-output*)))))) |#

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


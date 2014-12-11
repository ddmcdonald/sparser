;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992,1993,1994,1995 David D. McDonald  -- all rights reserved
;;; extensions copyright (c) 2009 BBNT Solutions LLC. All Rights Reserved
;;; $Id%
;;; 
;;;     File:  "testing"
;;;   Module:  "analyzers;char-level:"
;;;  Version:  1.0 January 1995

;; 1.0 (9/25/92 v2.3) redone for new tokenizer.  More annotation 1/6/95
;; (9/18/09) Fixed a latent bug in the divide that was producing a divide-by-
;; zero error now that machines are markedly faster.

(in-package :sparser)

;; INTERNAL-TIME-UNITS-PER-SECOND added 12/11/14 as note to fix these

;;;---------------
;;; the test loop
;;;---------------

;; the speed of the timing loop
;; (test_max-testing-speed 100000)  ;; takes it a noticable pause to
                                    ;; get through a hundred thousand

(defun test_max-testing-speed 
       (&optional
        (stop-here *length-of-character-input-buffer*))

  ;; Empty loop.
  ;; tests how fast the loop construct that embeds the specific
  ;; cases is.  Serves as a template for other tests.

  (let ((count 0)
        (t-start (get-internal-run-time))
        t-end t-total total-in-seconds cps )
    (loop
      (let ((counted-so-far (incf count)))
        (if (eq counted-so-far stop-here)
          (return)
          )))
    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          cps (/ stop-here
                 total-in-seconds))
    (format t "~%~%loop speed:  ~4,1F  iterations per second" cps)
    cps))



;;;----------------------------
;;; checking the character i/o
;;;----------------------------

;; see the strings predefined in [tokenizer;testing]

(defun test-characters-stored (string)
  "displays what actually gets into the buffer when this string
   is used.  One character per line, printed as a character.
   The first line will be blank."

  (establish-character-source/string string)
  (loop
    (let ((char (elt *character-buffer-in-use*
                     (incf *index-of-next-character*))))
      
      (cond ((eq char #\^B)  ;; eos
             (return-from test-characters-stored :done))
            ((eq char #\^D)  ;; end-of-buffer
             (refill-character-buffer *character-buffer-in-use*))
            (t
             (print char))))))



(defun test-buffer-switching (long-string
                              &optional
                                 (stream *standard-output*))

  ;; This routine is identical to Test-characters-stored except
  ;; that it does Write-string's rather than print's.
  ;; The argument has to be longer than the length of the buffer.
  ;; The global *multi-buffer-string* works for 1,000 char buffers.

  (establish-character-source/string long-string)
  (loop
    (let ((char (elt *character-buffer-in-use*
                     (incf *index-of-next-character*))))
      
      (cond ((eq char #\^B)  ;; eos
             (return-from test-buffer-switching :done))
            ((eq char #\^D)  ;; end-of-buffer
             (refill-character-buffer *character-buffer-in-use*))
            (t
             (write-char char stream))))))



;; see the files bound in [chars;testing/file]

(defun test-chars-of-file-length (namestring
                                  &optional
                                  (stream *standard-output*))

  ;; This routine is identical to Test-characters-stored except
  ;; that it does Write-string's rather than print's.
  ;; The argument has to be longer than the length of the buffer.
  ;; The global *multi-buffer-string* works for 1,000 char buffers.

  (establish-character-source/file namestring)
  (loop
    (let ((char (elt *character-buffer-in-use*
                     (incf *index-of-next-character*))))
      
      (cond ((eql char #\^B)  ;; eos
             (return-from test-chars-of-file-length :done))
            ((eql char #\^D)  ;; end-of-buffer
             (refill-character-buffer *character-buffer-in-use*))
            (t
             (write-char char stream))))))


;;;-------------------------------------------------------
;;;  Tests of portions of the Next-char loop
;;;    These all assume run against whatever happens to
;;;    be in the character buffer and take no input.
;;;-------------------------------------------------------


(defun test_aref/one-buffer ()

  ;; clocks the inner loop of the character buffer access -- what
  ;; Next-char uses to actually get the characters and bump its
  ;; index.

  (declare (special *long-string*))

  (establish-character-source/string *long-string*)
  ;; *long-string* is defined in [tokenizer;testing]
  ;; it's 865 characters long

  (let ( char
        (t-start (get-internal-run-time))
         t-end t-total total-in-seconds cps )

    (loop
      (setq char (elt *character-buffer-in-use*
                      (incf *index-of-next-character*)))
      (if (eql char #\^D)
        (return)))

    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          cps (/ *length-of-character-input-buffer*
                 total-in-seconds))
    (format t "~%~%speed:  ~A  characters per second" cps)))




;; (test_Next-char/whole-article :file *body*)
;; (test_Next-char/whole-article :string *multi-buffer-string*)

(defun test_Next-char/whole-article (&key string file)

  ;; Given the new design of the tokenizer, this isn't any different
  ;; from the one-buffer version except that we include the setup
  ;; and buffer reclamation time

  (let (char 
        (count 0)
        (t-start (get-internal-run-time))
        t-end t-total total-in-seconds cps )

    (cond (string
           (establish-character-source/string string))
          (file
           (establish-character-source/file file)))
    (loop
      (setq char (elt *character-buffer-in-use*
                      (incf *index-of-next-character*)))
      (incf count)

      (if (eql char #\^B)  ;; eos
        (return)
        (if (eql char #\^D)  ;; end-of-buffer
          (refill-character-buffer *character-buffer-in-use*))))


    (setq t-end (get-internal-run-time)
          t-total (- t-end t-start)
          total-in-seconds (/ t-total
                              internal-time-units-per-second)
          cps (/ count
                 total-in-seconds))
    (format t "~%~%speed:  ~A  characters per second" cps)))


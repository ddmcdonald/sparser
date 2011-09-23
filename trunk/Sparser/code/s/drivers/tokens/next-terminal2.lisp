;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993.1994  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "next-terminal"
;;;   Module:  "drivers;tokens:"
;;;  Version:  2.0 April 1993

(in-package :sparser)

;; 2.0 (4/20/93 v2.3) Cleaned out dead code and added provision for rolling
;;      one's own using optional arguments.

;;;-------------------------------
;;; parameterizing the definition
;;;-------------------------------

(defparameter *definition-of-next-terminal*  :pass-through-all-tokens)

(defun next-terminal ()
  (error "No definition for the switched-function next-terminal ~
          ~%has been established yet"))


(defun establish-version-of-next-terminal-to-use (keyword
                                                  &optional function)
  ;; This is the same idea as the "switch" in the drivers for the chart,
  ;; but since that is controlling an initial call, it can afford to be
  ;; implemented by a dispatch.   For this case the call is embedded and
  ;; extremely frequent, so we need to actually swap the definition of
  ;; the next-terminal function that is used.

  (setq *definition-of-next-terminal* keyword)
  (case keyword
    (:pass-through-all-tokens/NL-buffer
     (setf (symbol-function 'next-terminal)
           (symbol-function 'next-terminal/pass-through-all-tokens/buffered)))
    (:pass-through-all-tokens
     (setf (symbol-function 'next-terminal)
           (symbol-function 'next-terminal/pass-through-all-tokens)))
    (:no-whitespace
     (setf (symbol-function 'next-terminal)
           (symbol-function 'next-terminal/no-whitespace)))
    (otherwise
     (unless (symbolp function)
       (break "The 'function' argument should be a symbol that names ~
               a defined function.~%But it is a ~A" (type-of function)))
     (unless (symbol-function function)
       (break "The function ~A is not defined yet" function))
     (setf (symbol-function 'next-terminal)
           (symbol-function function)))))


;;;---------
;;;---------
;;;  cases
;;;---------
;;;---------

(defun next-terminal/pass-through-all-tokens/buffered ()
  ;; Everything is passed through, notably including the whitespace.
  ;; This means that the caller is going to do all the discrimination
  ;; work.
  (next-token/buffer))

(defun next-terminal/pass-through-all-tokens ()
  ;; Everything is passed through, notably including the whitespace.
  ;; This means that the caller is going to do all the discrimination
  ;; work.
  (next-token))

(defun next-terminal/no-whitespace ()
  ;; Traps calls to next-token that yield words that denote whitespace,
  ;; passes through everything else.
  (let ((word (next-token)))
    (if (whitespace word)
      (next-terminal/no-whitespace)
      word )))


(defvar *otowop-state* :clear)
(defvar *otowop-ws-buffer* nil)
(defvar *otowop-word-buffer* nil)
(defvar *otowop-accumulator* nil)

(defun only-tokenize-on-whitespace-or-punctuation ()
  (ecase *otowop-state*
    (:clear (otowop-clear-case))
    (:one-word (otowop-one-word-case))
    (:whitespace-buffered (otowop-ws-buffered-case))
    (:accumulating (otowop-accumulating-case))
))

(defun otowop-clear-case ()
  "All the buffers are empty. Anything token that can't start
   a composite-word is passed through. Possible starts are
   buffered."
  (let ((token (next-token)))
    (if (or (whitespace token)
            (punctuation? token))
      token
      (else
        (setq *otowop-word-buffer* token
              *otowop-state* :one-word)
        (only-tokenize-on-whitespace-or-punctuation)))))

(defun otowop-one-word-case ()
  "We have one word buffered. If"
  (let ((token (next-token)))
    (if (or (whitespace token)
            (punctuation? token))
      (prog1
        *otowop-word-buffer*
        (setq *otowop-word-buffer* nil
              *otowop-ws-buffer* token
              *otowop-state* :whitespace-buffered))
      (else
        (initialize-composite-word *otowop-word-buffer* token)
        (setq *otowop-word-buffer* nil
              *otowop-state* :accumulating)
        (only-tokenize-on-whitespace-or-punctuation)))))

(defun otowop-ws-buffered-case ()
  (prog1 *otowop-ws-buffer*
    (setq *otowop-ws-buffer* nil
          *otowop-state* :clear)))

(defun otowop-accumulating-case ()
)


(defun initialize-composite-word (w1 w2)
  (break "stub"))

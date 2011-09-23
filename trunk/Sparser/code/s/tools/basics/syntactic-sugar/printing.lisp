;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1989,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "printing"
;;;    module:  "tools:basics:syntactic-sugar:"
;;;   Version:  August 1994

;; originated 6/90. Moved in String-of-N-spaces 3/15/94.  8/24 gave PL
;; a stream argument. 8/29 extended String-of-N-spaces to 49

(in-package :sparser)


(defun pl (list
           &optional (number-them? t)
                     (stream *standard-output*))
  "Prints the elements of the list on successive lines, giving
   each one a number by default."
  (let ((index 1))
    (dolist (l list)
      (if number-them?
        (format stream "~&~2t~A.  ~A~%" index l)
        (format stream "~&~A~%" l))
      (incf index)))
  (terpri stream)
  list)


(defun string-of-N-spaces (n)
  (case n
    (0 "")
    (1 " ")
    (2 "  ")
    (3 "   ")
    (4 "    ")
    (5 "     ")
    (6 "      ")
    (7 "       ")
    (8 "        ")
    (9 "         ")
    (10 "          ")
    (11 "           ")
    (12 "            ")
    (13 "             ")
    (14 "              ")
    (15 "               ")
    (16 "                ")
    (17 "                 ")
    (18 "                  ")
    (19 "                   ")
    (20 "                    ")
    (21 "                     ")
    (22 "                      ")
    (23 "                       ")
    (24 "                        ")
    (25 "                         ")
    (26 "                          ")
    (27 "                           ")
    (28 "                            ")
    (29 "                             ")
    (30 "                              ")
    (31 "                               ")
    (32 "                                ")
    (33 "                                 ")
    (34 "                                  ")
    (35 "                                   ")
    (36 "                                    ")
    (37 "                                     ")
    (38 "                                      ")
    (39 "                                       ")
    (40 "                                        ")
    (41 "                                         ")
    (42 "                                          ")
    (43 "                                           ")
    (44 "                                            ")
    (45 "                                             ")
    (46 "                                              ")
    (47 "                                               ")
    (48 "                                                ")
    (49 "                                                 ")
    (otherwise
     (break/debug "Add more cases, a string of length ~A ~
                   was requested." n))))


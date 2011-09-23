;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "copy changed files"
;;;   Module:  "interface;files:"
;;;  Version:  0.2 April 1994

;; initiated 11/1/91, pulled reference to ccl package 1/13/92
;; 0.1 (7/11/93 v2.3) Bringing it up to date
;; 0.2 (4/27/94) adding :supersede option to copy-file in Changed

(in-package :sparser)

;;;---------
;;; globals
;;;---------

;; N.b. *source-root* is bound in tools;lload

(defparameter *target-root*
              (concatenate 'string
                           cl-user::location-of-Sparser-code-directory
                           "init:snapshots:latest increment")
  "A default rebound by Copy-changed-files.")


;;;--------
;;; driver
;;;--------

(defun copy-changed-files (file-of-changes
                           &key ((:source source-root)
                                 *source-root* )
                                ((:target target-root)
                                 *target-root* ))

  ;; After the List-new-files script (or a variant) is used to
  ;; record the namestrings of the change files, this routine
  ;; is used to make copies of them from where they are on the
  ;; "source-root" to the equivalent directory on the "target-root".
  ;;
  ;; The file of changes will consist of executable forms all
  ;; using the function Changed.  Their namestrings will be based
  ;; on logicals and get their roots changed in the same manner
  ;; as the roots are changed for fasl files.

  (unless target-root
    (error "A target namestring must be given"))

  (let ((*source-root*
         (if (listp source-root)
           ;; it's not a string when ddef-logical is using it
           (concatenate 'string (namelist-to-mac source-root) ":")
           source-root))
        (*target-root* target-root))

    (load file-of-changes)))



;;;--------------------
;;; work-horse routine
;;;--------------------

(defun changed (source-namestring date-source-written)
  ;; This is the function that the 'changed-since' files use.
  ;; It assumes that it is writing to an empty root directory
  ;; and doesn't have to worry about colisions.

  (if *upgrading*
    ;; handles the overloading of this routine since the same
    ;; file will be used to direct the copying of a set of files
    ;; to another copy of the source
    (upgrade source-namestring date-source-written)
    (else

      (unless (probe-file source-namestring)
        (format t "~%~%-----------~
                   ~%  Source file does not exist~
                   ~%   \"~A\"~%~%" source-namestring))
      
      (let ((target-namestring
             (convert-source-to-target source-namestring)))
        
        (if (probe-file target-namestring)
          (cond ((> (file-write-date target-namestring)
                    date-source-written)
                 (break "There is already a file in the target position ~
                         ~%and is is newer than the source file.~
                         ~%  source = ~A" source-namestring))
                ((= (file-write-date target-namestring)
                    date-source-written)
                 (format t "~&~%A current copy of \"~A\"~
                            ~%  is already installed in the target ~
                            directory" source-namestring))
                (t
                 (copy-file source-namestring
                            target-namestring
                            :if-exists :supersede)
                 (format t "~&~%Copied \"~A\"~
                            ~%  to \"~A\"~%"
                         source-namestring target-namestring)))
          (progn
            (copy-file source-namestring
                       target-namestring
                       :if-exists :supersede)
            (format t "~&~%Copied \"~A\"~
                       ~%  to \"~A\"~%"
                    source-namestring target-namestring)))))))


;;;---------------------------
;;; massaging the namestrings
;;;---------------------------

(defun convert-source-to-target (source-string)
  ;; the string has the prefix dictated by *source-root*,
  ;; we change it to that of *target-root*
  (let* ((length-source-root
          (length *source-root*))
         (source-minus-root
          (subseq source-string length-source-root)))
    (concatenate 'string
                 *target-root*
                 source-minus-root)))


(defun convert-source-to-transfer (source-string)
  ;; the string has some arbitrary prefix according to what
  ;; filesystem originated the changes. It's been moved onto
  ;; a temporary root as dictated by *source-root*.
  (let* ((position-of-colon-s
          (search ":s:" source-string))
         (string-below-s-colon
          (subseq source-string (+ 2 position-of-colon-s))))

    (concatenate 'string
                 *source-root*
                 string-below-s-colon)))


(defun convert-transfer-to-target (source-string)
  ;; as above, except we use the *target-root*
  ;; We don't have to known anything about the prefix since we're
  ;; doing this by searching on ":s:"
  (let* ((position-of-colon-s
          (search ":s:" source-string))
         (string-below-s-colon
          (subseq source-string (+ 3 position-of-colon-s))))

    (concatenate 'string
                 *target-root*
                 string-below-s-colon)))


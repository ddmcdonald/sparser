;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1993-1999  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "backup recent"
;;;   module:  "interface;files:"
;;;  version:  1.0 May 1999

;; initiated 9/8/93 v2.3, added more by-hand cases 9/17. 3/4/94 changed
;; the year. 
;; 0.1 (3/14) sometime in there the requirements on what had to be
;;      specified with '...-since' got too large, so redesigned what went
;;      with what, and now everything feeds a Backup-changes that requires
;;      all four times, and there are two simpler routines that default 
;;      either the start time or the end time.
;;     (3/28) added a check against the most recent backup or upgrade time
;;      and writing a file to record this time.
;;     (4/26) added an in-package statement to be writtin in the changes file
;;     (12/6/97) rewrote the 'source' that is passed through to be part
;;      of the preamble to be *description-of-where-the-code-is* rather
;;      that location-of-root-directory, which is obsolete, and tweaked
;;      the name of a function call.
;; 1.0 (5/11/99) Reworked it to do the actual current year correctly.

(in-package :sparser)

;;;---------
;;; globals
;;;---------

(defparameter *this-year*
  ;;// phased out here (5/99) but might be used elsewhere so not
  ;; removing it till that's determined.
  (multiple-value-bind (month date year)
                       (month-day-year)
    (declare (ignore month date))
    year))
;;  "the encoding of the current year as an integer suitable for
;;   Encode-universal-time"


;;;--------
;;; driver
;;;--------

(defun backup-todays-changes (&key ((root target-root))
                                   ((file changes-file)))
  ;; Called from the *backup-todays-changes* menu item on the Sparser
  ;; menu. 
  (multiple-value-bind (month day year)
                       (month-day-year)
    (let* ((last-backup-file
            (concatenate 'string
                         cl-user::location-of-Sparser-code-directory
                         "s:init:snapshots:time of last backup"))
           (last-upgrade-file
            (concatenate 'string
                         cl-user::location-of-Sparser-code-directory
                         "s:init:snapshots:time of last upgrade"))
           (exact-moment
            (cond ((and (probe-file last-backup-file)
                        (probe-file last-upgrade-file))
                   (if (> (file-write-date last-backup-file)
                          (file-write-date last-upgrade-file))
                     (with-open-file (infile last-backup-file
                                      :direction :input)
                       (read infile))
                     (with-open-file (infile last-upgrade-file
                                      :direction :input)
                       (read infile))))
                  ((probe-file last-backup-file)
                   (with-open-file (infile last-backup-file
                                    :direction :input)
                     (read infile)))
                  ((probe-file last-upgrade-file)
                   (with-open-file (infile last-upgrade-file
                                    :direction :input)
                     (read infile)))
                  (t nil))))           

      (backup-changes month day year
                      month day year
                      :exact-moment exact-moment
                      :root target-root
                      :file changes-file)

      (with-open-file (outfile last-backup-file
                       :direction :output
                       :if-exists :supersede
                       :if-does-not-exist :create)
        (princ (get-universal-time) outfile))

      :done-backing-up )))



(defun backup-changes-since (from-month from-day from-year)
  (multiple-value-bind (this-month this-day this-year)
                       (month-day-year)
    (backup-changes from-month from-day from-year
                    this-month this-day this-year)))




(defun backup-changes (from-month from-day from-year
                       now-month now-day now-year
                       &key exact-moment
                            ((:root target-root))
                            ((:file changes-file)))

  ;; The changes-file is a sequence of calls to 'change' that will
  ;; do the work when these files are used to upgrade some old version.
  ;; The target-root directory will be created automatically by
  ;; lisp the first time a file is written to it.

  (unless changes-file
    (setq changes-file
          (if from-month
            (concatenate 'string
                         cl-user::location-of-Sparser-code-directory
                         "s:init:snapshots:changed on "
                         (format nil "~A/~A/~A - ~A/~A/~A"
                                 from-month from-day from-year
                                 now-month now-day now-year))
            (concatenate 'string
                         cl-user::location-of-Sparser-code-directory
                         "s:init:snapshots:changed on "
                         (format nil "~A/~A/~A"
                                 now-month now-day now-year)))))
  (unless target-root
    (setq target-root
          (if from-month
            (concatenate 'string
                         cl-user::location-of-sparser-directory
                         (format nil "incr ~A/~A/~A - ~A/~A/A:"
                                 from-month from-day from-year
                                 now-month now-day now-year))
            (concatenate 'string
                         cl-user::location-of-sparser-directory
                         (format nil "incr ~A/~A/~A:"
                                 now-month now-day now-year)))))
                         
  (write-file-of-changes changes-file
                         :exact-moment exact-moment
                         :source *description-of-where-the-code-is*
                         :since-month from-month
                         :since-day from-day 
                         :since-year from-year)
  (format t "~%~%")
  (copy-changed-files changes-file
                      :target target-root)

  :finished-backing-up )





(defun write-file-of-changes (filename
                              &key exact-moment source
                                   since-month since-day since-year )

  (let ((*just-note-changed-files* t) ;; flag for LLoad
        (*reference-time-for-changed-files*
         (or exact-moment
             (encode-universal-time 0  ;; second
                                    0  ;; minute
                                    0  ;; hour
                                    since-day
                                    since-month
                                    since-year ))))

    (multiple-value-bind (this-month today this-year)
                         (month-day-year)

      (with-open-file (*change-data* filename
                                     :direction :output
                                     :if-does-not-exist :create
                                     :if-exists :supersede
                                     )
        (if (and (eql this-month since-month)
                 (eql today since-day)
                 (eql this-year since-year))
          (format *change-data*
                  ";; Sparser files changed on ~A on ~A/~A/~A~%~%"
                  source this-month today this-year)
          (format *change-data*
                  ";; Sparser files changed on ~A between ~
                   ~A/~A/~A and ~A/~A/A~%~%" 
                  source 
                  since-month since-day since-year
                  this-month today this-year))

        (format *change-data* "~&~%~%(in-package :sparser)~%~%")

        (load (concatenate 'string
                           (namelist-to-namestring
                            (expand-logical-pathname "version;"))
                           ":config:explicitly-loaded-files"))

        (load cl-user::master-loader)
        
        :finished-checking-changed-files ))))


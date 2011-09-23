;;; -*- Mode:Lisp; Syntax:Common-Lisp; Package:SPARSER
;;; copyright (c) 1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "upgrade"
;;;   module:  "interface;files:"
;;;  version:  March 1994

;; initiated 9/8/93 v2.3.
;; 3/28/94 added writing a file to record when the upgrade occured

(in-package :sparser)

;;;------
;;; flag
;;;------

(defvar *upgrading* nil
  "Read by Changed to switch it to the driver here")


;;;--------
;;; driver
;;;--------

(defun upgrade-from (from-root changes-file)

  ;; sets up the environment so that the file of calls to Changed
  ;; will instead copy from the directory of incremental changes
  ;; to a source

  (let ((*source-root* from-root)
        (*target-root*
         (concatenate 'string
                      cl-user::location-of-Sparser-code-directory
                      "s:"))
        (*upgrading* t))

    (load changes-file)

    (with-open-file (outfile
                     (concatenate 'string
                      cl-user::location-of-Sparser-code-directory
                      "s:init:snapshots:time of last upgrade")
                     :direction :output
                     :if-exists :supersede
                     :if-does-not-exist :create)
      (princ (get-universal-time) outfile))

    :upgrade-complete ))


;;;-----------
;;; workhorse
;;;-----------

(defun upgrade (source-namestring date-source-written)
  ;; this is the equivalent of Changed in [copy changed files]
  ;; except that it is much more careful about not clobbering
  ;; existing files.
  ;;   The "source" is the upgrade.
  ;;   The "target" is the local version of that filename
  ;;     which will be overwritten.

  ;; The source-namestring is a full namestring that was almost
  ;; certainly written on a different filesystem and then moved to
  ;; a temporary location -- the *source-root* -- in anticipation
  ;; of doing the upgrade. Therefore we have to change its prefix
  ;; up to where "s:" is, substituting in the new source
  (let ((upgrade-namestring
         (convert-source-to-transfer source-namestring))
        (target-namestring
         (convert-transfer-to-target source-namestring)))
  ;(break)
    (unless (probe-file upgrade-namestring)
      (format t "~%~%-----------~
                 ~%  Source file does not exist~
                 ~%   \"~A\"~%~%" source-namestring))

    (if (probe-file target-namestring)

      (cond ((> (file-write-date target-namestring)
                date-source-written)
             (format t "~%~%The upgrade, ~A~
                        ~%is OLDER than the local version.~
                        ~%  Renaming the local file with \".m/d\""
                     upgrade-namestring )
             (let ((backup-version (month-day-version target-namestring)))
               (unless (probe-file backup-version)
                 (rename-file target-namestring
                              backup-version
                              :if-exists :error)))
             (format t "~&Upgrading: ~A~%" upgrade-namestring)
             (copy-file upgrade-namestring target-namestring
                        :if-exists :supersede))

            ((eql (file-write-date target-namestring)
                  date-source-written)
             (format t "~%~%The upgrade, ~A~
                        ~%is apparently the same file as the ~
                        local one.~%   !!!!! NOT UPGRADING"))

            (t (format t "~%~%Upgrading: ~A~%" upgrade-namestring)
               (let ((backup-version (month-day-version target-namestring)))
                 (unless (probe-file backup-version)
                   (rename-file target-namestring
                                backup-version
                                :if-exists :error)))
               (copy-file upgrade-namestring target-namestring
                          :if-exists :supersede)))

      (else
        (format t "~&~%New file \"~A\"~%" upgrade-namestring)
        (copy-file upgrade-namestring target-namestring)))))



(defun month-day-version (namestring)
  ;; The file exists on the local system. We construct a new namestring
  ;; that added the month and date as a way to make a very likely to 
  ;; be unique version of it.
  (let ((time (file-write-date namestring)))
    (multiple-value-bind (second minute hour
                          date month year day-of-week
                          daylight-savings-time-p time-zone)
                         (decode-universal-time time)

      (declare (ignore second minute hour
                       year day-of-week 
                       daylight-savings-time-p time-zone))

      (concatenate 'string
                   namestring
                   (format nil ".~A/~A" date month)))))


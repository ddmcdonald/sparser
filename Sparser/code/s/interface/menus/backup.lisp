;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1994-1999  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "backup"
;;;   Module:  "interface;menus:"
;;;  version:   May 1999

;; initiated 3/18/94 v2.3.  3/21 added upgrade-most-recent
;; 4/1 added installation function. 5/13/99 added year field.

(in-package :sparser)


;;;------------------------
;;; items for Sparser menu
;;;------------------------

;;------ from - to

(defparameter *backup-from-M/D-through-today*
  (make-instance 'menu-item
    :menu-item-title "backup changes starting ..."
    :menu-item-action 'run-backup-from-dialog ))


;;------ today's

(defparameter *backup-todays-changes*
  (make-instance 'menu-item
    :menu-item-title "today's changes"
    :menu-item-action #'(lambda ()
                          (eval-enqueue (backup-todays-changes)))))

;;------ upgrade

(defparameter *upgrade-most-recent*
  (make-instance 'menu-item
    :menu-item-title "upgrade from ..."
    :menu-item-action 'upgrade-most-recent-changes ))


(defparameter *backup-menu*
  (make-instance 'menu
    :menu-title "Backup"
    :menu-items `( ,*backup-todays-changes*
                   ,*backup-from-M/D-through-today*
                   ,*upgrade-most-recent* )))


(defun install-backup-menu ()
  (setq *backup-menu*
        (make-instance 'menu
          :menu-title "Backup"))
  (add-menu-items *backup-menu*
                  *backup-todays-changes*
                  *backup-from-M/D-through-today*
                  *upgrade-most-recent*)
  (menu-install *backup-menu*))





;;;----------------------------------------
;;; dialog to setup parameters for from-to
;;;----------------------------------------

;;------- widgets

(defparameter *backup/instruction-text*
  (MAKE-DIALOG-ITEM 'static-text-dialog-item
                    #@(13 12)
                    #@(195 19)
                    "Backup changes on or after:"
                    'NIL))

(defparameter *backup/month-label*
  (MAKE-DIALOG-ITEM 'static-text-dialog-item
                    #@(25 39)
                    #@(47 16)
                    "month"
                    'NIL))

(defparameter *backup/day-label*
  (MAKE-DIALOG-ITEM 'static-text-dialog-item
                    #@(121 39)
                    #@(28 16)
                    "day"
                    'NIL))

(defparameter *backup/year-label*
  (MAKE-DIALOG-ITEM 'static-text-dialog-item
                    #@(110 68)
                    #@(35 18)
                    "year"
                    'NIL))

(defparameter *backup/month-field*
  (MAKE-DIALOG-ITEM 'editable-text-dialog-item
                    #@(80 39)
                    #@(21 15)
                    "10"
                    'NIL
                    :ALLOW-RETURNS NIL))

(defparameter *backup/day-field*
  (MAKE-DIALOG-ITEM 'editable-text-dialog-item
                    #@(160 39)
                    #@(18 16)
                    "31"
                    'NIL
                    :ALLOW-RETURNS NIL))

(defparameter *backup/year-field*
  (MAKE-DIALOG-ITEM 'editable-text-dialog-item
                    #@(160 65)
                    #@(33 15)
                    "1999"
                    'NIL
                    :ALLOW-RETURNS NIL))

(defparameter *backup/do-it-button*
  (MAKE-DIALOG-ITEM 'button-dialog-item
                    #@(243 12)
                    #@(62 16)
                    "backup"
                    'backup-changes/parameters-from-dialog
                    :DEFAULT-BUTTON t))

(defparameter *backup/cancel-button*
  (MAKE-DIALOG-ITEM 'button-dialog-item
                    #@(243 43)
                    #@(62 16)
                    "cancel"
                    'close-backup-dialog
                    :DEFAULT-BUTTON nil))



;;------ dialog object

(defparameter *backup-from-dialog* nil)

(defun launch-backup-dialog ()
  (setq *backup-from-dialog*
        (MAKE-INSTANCE 'DIALOG
          :WINDOW-TYPE  :DOCUMENT-WITH-GROW
          :VIEW-POSITION  #@(172 119)
          :VIEW-SIZE      #@(369 92)
          :CLOSE-BOX-P  t
          :VIEW-FONT   '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS
              (list *backup/instruction-text*
                    *backup/month-label*
                    *backup/day-label*
                    *backup/year-label*
                    *backup/month-field*
                    *backup/day-field*
                    *backup/year-field*
                    *backup/do-it-button*
                    *backup/cancel-button* ))))


;;------ actions

(defun run-backup-from-dialog ()
  ;; action item of the *backup-from-M/D-through-today* 
  ;; menu-item on the Sparser menu.  It just brings up
  ;; the dialog. All the work is done off the 'backup' button
  (declare (ignore menu-item))
  (launch-backup-dialog))


(defun close-backup-dialog (cancel-button)
  ;; action item for *backup/cancel-button*
  (declare (ignore cancel-button))
  (window-close *backup-from-dialog*))


(defun backup-changes/parameters-from-dialog (backup-button)
  ;; Action item for *backup/do-it-button*.
  ;; Reads the values out of the month and day fields,
  ;; checks that they have a valid range and complains it
  ;; they don't or it they aren't integers, and enqueues
  ;; a call to Backup-changes.
  (let ((month (read-from-string
                (dialog-item-text *backup/month-field*)))
        (day (read-from-string
              (dialog-item-text *backup/day-field*)))
        (year (read-from-string
               (dialog-item-text *backup/year-field*))))

    (unless (integerp month)
      (break "The month must be given as an integer"))
    (unless (integerp day)
      (break "The day must be given as an integer"))
    (unless (integerp year)
      (break "The year must be given as an integer"))
    (unless (and (> month 0) (<= month 12))
      (break "The month must be a number between 1 and 12"))
    (unless (and (> day 0) (< day 32))
      (break "The month must be a number between 1 and 31"))
    (unless (and (> year 1998) ;; first year of the code
                 (<= year *this-year*))
      (break "The year ~a is out of range" year))

    (close-backup-dialog backup-button)
    (eval-enqueue `(backup-changes-since ,month ,day ,year))))



;;;-----------------------------------------------------
;;; upgrading the version of a directory & changes file
;;;-----------------------------------------------------

(defun upgrade-most-recent-changes ()
  ;; action item of *upgrade-most-recent* menu item.
  ;; This looks up the newest file of changes, relative to the
  ;; selected volume, and then calls upgrade-from on that file.
  (catch-cancel
    (let ((volume (upgrade-volume-dialog)))
      (multiple-value-bind (from to)
                           (locate-newest-upgrade-data volume)
        (multiple-value-bind (upgrade-root upgrade-changes-spec)
                             (construct-upgrade-source-names
                              volume from to)
          (when (ccl:y-or-n-dialog
                 (format nil "Backup from \"~A\"~%using \"~A\" ?"
                         upgrade-root upgrade-changes-spec)
                 :position #@(150 100)
                 :size #@(500 110)
                 :yes-text "Do it"
                 :no-text "Cancel"
                 :cancel-text nil )
            (upgrade-from upgrade-root
                          upgrade-changes-spec)))))))



;;---- find out where the upgrade is coming from

(defun upgrade-volume-dialog ()
  ;; throw up an editable field and ask the user to specify
  ;; what volume the root of the changes directory is stored on,
  ;; e.g. a floppy.  Presupposes that the user will know to
  ;; give the whole root down to the directory that contains
  ;; the changes directory, e.g. "Sparser incr." (a floppy) or
  ;; "Sparser:" (the volume on II)
  (ccl:get-string-from-user
   "Where is the upgrade located?"
   :size #@(335 75)
   :position #@(150 100)
   :initial-string "Sparser Incr"
   :ok-text "use this"
   :cancel-text "abort"
   :allow-empty-strings nil))


;;---- find out what file/directory to use

(defun locate-newest-upgrade-data (volume)
  ;; look in the volume, use wild-card calls to get the dates
  ;; on any/all the candidates given the convention on how
  ;; the name is constructed.  Find the most recently written
  ;; file, and then pull out its 'from' and 'to' date strings.
  (let ((snapshot-directory
         (concatenate 'string
                      volume ":")))
    (unless (probe-file snapshot-directory)
      (break "No directory at the specified location:~%~A"
             snapshot-directory))

    (let* ((candidates (directory (concatenate 'string
                                               snapshot-directory
                                               "changed on*")))
           (newest-file (first candidates))
           (newest-time (file-write-date newest-file))
           time  )

      (dolist (pathname candidates)
        (setq time (file-write-date pathname))
        (when (> time newest-time)
          (setq newest-file pathname
                newest-time time)))

      (let* ((string (namestring newest-file))
             ;; this knows the pattern of the file names, so if that
             ;; changes then this must as well.
             (start-of-filename (search "changed on" string))
             (hyphen-index (position #\- string))
            from  to )

        (setq from (subseq string (+ start-of-filename 11)
                                  (1- hyphen-index))
              to (subseq string (+ 2 hyphen-index)))
        (values from to)))))



;;---- formulate the actual file/directory names

(defun construct-upgrade-source-names (volume from to)
  ;; presumes we're upgrading from a floppy, where both files
  ;; are at toplevel.
  (values (concatenate 'string
                       volume
                       ":incr "
                       from
                       " - "
                       to)
          (concatenate 'string
                       volume
                       ":changed on "
                       from
                       " - "
                       to)))


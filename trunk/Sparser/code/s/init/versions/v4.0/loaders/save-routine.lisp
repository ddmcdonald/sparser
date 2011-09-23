;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1997  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "save routine"
;;;   Module:  "init;versions:v2.7:loaders:"
;;;  Version:  0.1 September 1997

;; initiated 7/92.  9/27/93 revised to handle MCL 2.0.  Promulgated
;; change to "cl-user::*current-version*" 4/24.  10/7 reordered the operation
;; so that the saluation would come last.  4/3/95 ordered application check
;; before demo-version check.  4/5 put in check to reconstruct the root of
;; the logical directories. 4/24 broke out
;; 0.1 (4/24/95) reworked the lookup of the Sparser directory to be sensitive
;;      to whether the image was saved as an 'application'
;;      (8/17) tweeked a message.   (6/3/96) added a case for where the Sparser
;;      directory could be. (6/4) tweeked messages, comments, fixed string-compare
;;      bug. 
;;     (9/10/97) put calls to position explicitly in cl package
;;      to avoid conflict with the defstruct when running in Franz.


(in-package :sparser)

(defvar *there-are-changed-files* nil
  "Set in the Updating file.")

(unless (boundp '*demo-version*)
  (defparameter *demo-version* nil))
(unless (boundp '*development-version*)
  (defparameter *development-version* t))


(defun run-at-launch ()
  ;; called as the first (and only) thing done when Sparser is launched

  (find-the-sparser-directory)
  ;; sets cl-user::location-of-sparser-directory as a side-effect

  (if cl-user::location-of-sparser-directory
    (let ((launch-config-file
           (if *sparser-is-an-application?*
             (concatenate 'string
                          cl-user::location-of-sparser-directory
                          "configuration:launch")                        
             (concatenate 'string
                          cl-user::location-of-sparser-directory
                          "code:s:init:versions:"
                          cl-user::*current-version*
                          ":config:launch")))
          (updating-file
           (concatenate 'string
                        cl-user::location-of-sparser-directory
                        "code:s:init:versions:"
                        cl-user::*current-version*
                        ":updating")))


      (cond (*sparser-is-an-application?*
             (when (not (string-equal cl-user::location-of-sparser-directory
                                      *load-time-location-of-sparser-directory*))
               (format t "~&~%Reconstructing the locations of the logical ~
                          file names~%to reflect the current location of ~
                          the Sparser directory:~%\"~A\"~%~%"
                       cl-user::location-of-sparser-directory)
               (reconstruct-root-of-logical-directories))

             (if (probe-file launch-config-file)
               (then 
                 (format t "~&~%Loading per-launch configuration data:~%~%")
                 (lload launch-config-file))
               (format t "~%Could not find the configuration file:~
                          ~%~A" launch-config-file)))


            (*demo-version*)  ;; don't load anything


            (*development-version*
             (format t "~&Loading per-launch updating data:~%~%")
             (if (probe-file updating-file)
               (then (terpri)
                     (lload updating-file))
               (format t "~%Could not find the updating file ~A"
                       updating-file))
             (if (probe-file launch-config-file)
               (lload launch-config-file)
               (format t "~%Could not find the configuration file ~A"
                       launch-config-file)))))

    (else
      (format t "The toplevel \"Sparser\" directory could not be found on ~
                 the primary hard disk.~%The Open menu is unlikely to work ~
                 and all the logical pathnames will fail.")))


  (unless *nothing-Mac-specific*
    ;; Doing this has to wait on the config and updating files since they
    ;; can change or add logicals to items like Corpus.
    (format t "~&~%Constructing the menus~%")
    (launch-sparser-menus))


  ;; debugging flags (demo vs. development machines)
  (when *load-the-grammar*
    (setq *break-on-pattern-outside-coverage?* nil))
  (when *known-machine*
    (case *known-machine*
      (:book
       (setq *break-on-unexpected-cases* nil
             *break-on-new-cases* nil)
       (turn-off-debugging-flags))
      (:br-700 )
      (:ddm-8100 )))


  (when *there-are-changed-files*
    (format t "~A" *changed-files-salutation-string*))

  (when *delayed-loading-of-the-grammar*
    (format t "~A" *make-an-image-with-the-grammar*))

  (format *standard-output* "~A" *salutation-string*)

  :ready )




(defun find-the-sparser-directory ()
  ;; called by Run-at-launch
  ;; Find the Sparser directory. First check whether it's changed from
  ;; what it was when the image was created or we're an application
  ;; image (where we're always expected to be launched from a different
  ;; place than we were compiled in). If so, then reconstruct where
  ;; the directory has to be.

  (when (or *sparser-is-an-application?*
            (not (probe-file cl-user::location-of-sparser-directory)))

    ;; otherwise we don't do anything (presumably we're running in the
    ;; same location as the image was compiled in)

    (let* ((pathname (probe-file (user-homedir-pathname)))
           (full-string (when pathname (namestring pathname))))
      (when full-string
        (setq cl-user::location-of-root-directory
              ;; This extracts the name of the volume that the image was
              ;; launched from -- the first directory in the namestring 
              ;; is the home device
              (subseq full-string 0 (cl:position #\: full-string)))

        (setq
         cl-user::location-of-sparser-directory
         (let ( string  index )
           (cond
            ((probe-file
              ;; generic location (e.g. M's BackPacker) where the directory
              ;; containing Sparser's code is a sibling of the image.
              (setq string (concatenate 'string
                                        cl-user::location-of-root-directory
                                        ":Sparser:")))   ;; note colons!
             string )
            
            ((probe-file
              ;; location on M&D's Powerbook where we're one down inside
              ;; a ddm's directory (so we have to add to the volumne name
              ;; to get this far down).
              (setq string (concatenate 'string
                                        cl-user::location-of-root-directory
                                        ":David:Sparser:")))
             string )
            
            ((setq index (search "Sparser"
                                 (namestring (probe-file (user-homedir-pathname)))
                                 :test #'string-equal))
             ;; The launch is from within a directory named Sparser (as it
             ;; should be), so we can establish the root directory by taking
             ;; the substring of the home directory namestring up to that point.
             (subseq full-string 0 (+ index (length "Sparser:"))))
            
          #|((string-equal cl-user::location-of-root-directory
                           "Sparser")
              ;; the development location on the 8100, which will come up
              ;; when the *sparser-is-an-application?* flag is up while
              ;; we're debugging a distribution.
              "Sparser:" )|#
            
            (t ;; Can't have a break point to have the user supply a value
             ;; because the Catch-everything-and-run-launch-time-fn routine
             ;; deliberately ignores breaks so we don't get hung up before
             ;; finishing the loading process.  The best we can do is return
             ;; nil and the caller will announce the problem.
             nil ))))))))


#| Won't work inside a Ignore-errors wrapper.
(defun ask-for-the-dir ()
  (break "~%~%Set the variable cl-user::location~
          -of-Sparser-directory~%to the namestring of ~
          the appropriate directory (include ~%the colon)~
          ~%and then continue.")
  (unless cl-user::location-of-sparser-directory
    (ask-for-the-dir))) |#




(defun save-image-of-Sparser ( &optional predefined-location )
  (setq ccl:*lisp-startup-functions*
        '(catch-everything-and-run-launch-time-fn))

  (when predefined-location
    (unless (stringp predefined-location)
      (error "Argument that gives the location at which to store the image~
              ~%must be a string. This isn't:~%~A~%" predefined-location)))

  (let ((location
         (or predefined-location
             (concatenate 'string
                          cl-user::location-of-sparser-directory
                          *stem-of-version-name*
                          " "
                          cl-user::*current-version*
                          " "
                          (day-&-month-as-formatted-string))))

        (remove-compiler? (cond
                           (cl-user::*end-user-owns-a-copy-of-mcl*  nil)
                           (*sparser-is-an-application?*  t)
                           (t  nil))))

    (save-application location
                      :excise-compiler remove-compiler?)))


;; Launch-time wrapper
(defun catch-everything-and-run-launch-time-fn ()
  (ignore-errors
   (catch-cancel
     (run-at-launch))))


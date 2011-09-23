;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1993-1996  David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "doc stream"
;;;   Module:  "drivers;sources:"
;;;  Version:  0.5 July 1995

;; initiated 12/13/93 v2.3, incorporates notions from original version
;; of 1990 but treats style seriously
;; 0.1 (12/27) no longer automatically binding the current style, leaving
;;      that to the style init routine
;; 0.2 (1/7/94) debugged ds/Do-files-in-directory. Added Again & Continue
;; 0.3 (1/11) moved the binding points of the globals to handle impact 
;;      of superstreams
;;     (3/8) added Do-next-file
;; 0.4 (8/10) switched final path to Do-article
;;     (9/15) tweeking routine that runs a stream as one document
;; 0.5 (7/25/95) put in bindings of *current-document-stream* in the routines
;;      that are driven from the corpus menu
;; 0.6 (5/27/96) Do-next-file wasn't expanding namestrings or converting them
;;      to pathames so that *current-file* would be a pathname.

(in-package :sparser)


;;;-------------------
;;; top-level routine
;;;-------------------

(defun analyze-document-stream (ds-designator)

  ;; Ultimately this devolves onto a succession of operations
  ;; on single files. What the operation is (e.g. one file per
  ;; article vs. sissor file) depends on the style of document
  ;; stream.  Before that level there's whether this is a stream
  ;; of streams or directly of files -- that's decoded and
  ;; dispatched to first.
  ;;    This can be called from toplevel or via the 'Start' item
  ;; in the Corpus menu area of the Sparser menu.

  (let* ((ds (etypecase ds-designator
               (symbol (document-stream-named ds-designator))
               (document-stream ds-designator))))

    (ds/do-dispatch ds)))



;;;-------------------------------------
;;; dispatch on type of document stream
;;;-------------------------------------

(defun ds/Do-dispatch (ds)
  (let ((*current-document-stream* ds))
    (cond ((ds-directory ds)
           (ds/do-files-in-directory ds))
          ((ds-substreams ds)
           (ds/do-substreams ds))
          ((ds-file-list ds)
           (ds/do-explicit-file-list ds))
          (t (break "ill-formed document stream: ~A~
                     ~% no directory, substreams, or file-list"
                    ds)))))


(defun ds/Do-substreams (superstream)
  (let ((*current-superstream* superstream)
        (substreams (ds-substreams superstream)))
    (dolist (ds substreams)
      (ds/do-dispatch ds))))


(defun ds/Do-files-in-directory (ds)
  (let* ((directory-pathname (ds-directory ds))
         (dir-expanded-pn (etypecase directory-pathname
                            (pathname directory-pathname)
                            (string
                             (expand-namestring directory-pathname)))))

    (unless (probe-file dir-expanded-pn)
      (break "There is no directory corresponding to:~
              ~%   ~A~
              ~%   ~A" directory-pathname dir-expanded-pn))

    ;; add a "*" so that we can get every file in the directory
    (let* ((namestring (namestring dir-expanded-pn))
           (file-pattern (concatenate 'string
                                      namestring "*")))           

      (let ((files (directory file-pattern)))
        (ds/do-explicit-file-list ds files)))))


;;;-------------------
;;; final common path
;;;-------------------

(defun ds/Do-explicit-file-list (ds &optional file-list)
  (let ((files (if file-list
                 file-list
                 (ds-file-list ds))))

    (setq *files-remaining* files)
    (if *pause-between-articles*
      (do-next-file)
      (continue-with-rest-of-files))))


(defun do-next-file ()
  ;; called from the *continue/next* item on the Sparser menu
  ;; when it's in its 'next' mode
  (setq *current-file* (pop *files-remaining*))
  (do-file *current-file*))


(defun continue-with-rest-of-files ()
  ;; called from ds/Do-explicit-file-list and from the *continue/next*
  ;; item on the Sparser menu when it's in its 'continue' mode
  (let ((*current-document-stream* *document-stream-to-use*))
    (loop
      (setq *current-file* (pop *files-remaining*))
      (when (null *current-file*)
        (return))
      (do-file *current-file*)))
  :analysis-of-document-stream-finished )



(defun do-file (file)
  (let ((namestring (etypecase file
                    (pathname file)
                    (string
                     (if (position #\; file)
                       ;; Semi-colons are assumed to have been introduced
                       ;; with the internal logical-pathname protocol
                       ;; rather than the Lisp protocol for generic filenames.
                       (expand-namestring file)
                       file)))))

    (unless (probe-file namestring)
      (break "The file ~A doesn't exist" *current-file*))

    ;; Everything else expects *current-file* to be a pathname,
    ;; so we'll convert it.
    (setq *current-file* (pathname namestring))

    (let ((*current-document-stream* *document-stream-to-use*))
      (do-article *current-file*))))


;;;--------------------------
;;; operations on the stream
;;;--------------------------

(defun repeat-last-file ()
  ;; called from *repeat-last-article* item on the Sparser menu, or
  ;; from ds/Do-explicit-file-list if the *pause-between-articles* flag
  ;; is up and we're starting a doc-stream. 
  (unless *current-file*
    (error "There is no *current-file* to repeat"))
  (let ((*current-document-stream* *document-stream-to-use*))
    (do-article *current-file*)))



;;;---------------------------
;;; alternative toplevel call
;;;---------------------------

(defun do-document-as-stream-of-files (ds-designator)
  ;; a toplevel call. In this case all of the files are to be
  ;; interpreted as parts of a single document, i.e. initialization
  ;; and the call to do-article only occur once.
  (let ((*current-document-stream* ds-designator)
        (file-list
         (cond
          ((ds-directory ds-designator)
           (let* ((directory-pathname (ds-directory ds-designator))
                  (dir-expanded-pn
                   (etypecase directory-pathname
                     (pathname directory-pathname)
                     (string (expand-namestring directory-pathname))))
                  (namestring (namestring dir-expanded-pn))
                  (file-pattern (concatenate 'string
                                             namestring "*")))          
             (directory file-pattern)))

          ((ds-file-list ds-designator)
           (ds-file-list  ds-designator))

          ((ds-substreams ds-designator)
           (error "Cannot treat a recursive document stream as a ~
                   single document"))
          (t (break "ill-formed document stream: ~A~
                     ~% no directory, substreams, or file-list"
                    ds-designator)))))

    ;; Do the setup that would normally be done by Do-article
    (set-the-current-article ds-designator)
    (per-article-initializations)
    (initialize-chart-state)

    (dolist (file file-list)
      ;; these we have to open/close by hand. This is copied from
      ;; Analyze-text-from-file 9/6/94
      (when *open-stream-of-source-characters*
        (close-character-source-file))
      (let ((pathname (decode-file-expression/pathname file)))
        (establish-character-source/file pathname))

      ;; parts of analysis-core (9/6/94) that initialize the
      ;; buffers but nothing else.
      (initialize-tokenizer-state)
      (chart-based-analysis)

      (when *open-stream-of-source-characters*
        (close-character-source-file)))

    (after-analysis-actions)))

    




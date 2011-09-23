;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.
;;; copyright (c) 1992 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "doc stream"
;;;   Module:  "drivers;articles:"
;;;  Version:   March 1992

;; 1/13/92 pulled reference to ccl package on "files-in-directory"
;; 3/19/92 replaced directories with substreams

(in-package :sparser)


(defun do-document-stream (document-stream)
  (let ((*current-document-stream* document-stream))
    (etypecase document-stream
      (symbol
       (unless (setq document-stream
                     (document-source-named document-stream))
         (error "The argument must be a document-stream or a symbol ~
                 that names one.")))
      (document-stream ) ;;fall through
      )

    ;(setup-context-for-this-run (ds-style document-stream))

    (cond ((ds-directory document-stream)
           (do-articles-in-directory (ds-directory document-stream)))
          ((ds-file-list document-stream)
           (do-articles-in-files (ds-file-list document-stream)))
          ((ds-substreams document-stream)
           (dolist (ds (ds-substreams document-stream))
             (do-document-stream ds)))
          (t (error "The document stream ~A has neither a~
                     ~%  directory, a list of substreams~
                     ~%  or an explicit list.")))))


(defun do-articles-in-directory (pathname)
  (let ((files
         (files-in-directory pathname)))
    (do-articles-in-files files)))


(defun do-articles-in-files (list-of-files)
  (dolist (pathname list-of-files)
    (do-article pathname)))


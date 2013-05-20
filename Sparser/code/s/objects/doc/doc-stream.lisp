;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1991-199,2013 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "doc stream"
;;;   Module:  "objects;doc:"
;;;  Version:  1.7 May 2013

;; 1.1 (4/15 v1.8.3)  Rethreaded the test against whether the file exists
;;     so that if it didn't we'd just not get a definition of the stream,
;;     rather than it blocking.
;; 1.2 (3/19 v2.2) Redoing bits as part of setting up the menus. Added
;;     possibility of a doc stream being composed of doc streams.
;; 1.3 (12/7/93 v2.3) updated handling of logicals, 12/13 fixed glitch that
;;      had kept stream with substreams from being recorded. 
;; 1.4 (12/27) Made styles real
;;     (1/3/94) fixed a bug
;; 1.5 (1/26) added the field for 'menu-item'
;; 1.6 (3/30) added requirement that there be a style
;; 1.7 (5/1/13) Bringing file handling into modern age of unix, and
;;      added a field to struct and def form for indicating that the
;;      set of files formed a single content model.

(in-package :sparser)


;;;--------
;;; object
;;;--------

(defstruct (document-stream
            (:conc-name #:ds-)
            (:print-function print-document-stream-structure))

  name        ;; a mixed-case symbol suitable for a menu
  style       ;; a style object
  unified-content ;; should the content of the documents be treated as one unit
                 ;; or is any temporary content reclaimed after each one?
  substreams  ;; a list of document streams
  directory   ;; a namestring
  file-list   ;; a list of namestrings
  menu-item   ;; a menu item somewhere on the corpus menu
  )

#|  At the moment there are no real-time sources.  If there were, they
would probably be connected to the Engine via character streams.  As it
stands, the text must be already stored on the system somewhere.

   Provision is made here for pre-defined and stored sequences of
documents so that they can be analyzed as a body in a single, uninterrupted
run.  This is convenient for demonstrations and for replicating tests
across a uniform corpus.


   A "document stream" can be given as the argument to Analyze-all-
 logical formdocuments-in-stored-source .

   This routine expects a stipulation of the style, which is recorded 
in a field of the object, and of either a directory (where all of the files
are processed: one file is one article), or a list of explicit file names.
|#

;;;----------
;;; printers
;;;----------

(defun print-document-stream-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<doc-stream " stream)
  (princ (ds-name obj) stream)
  (write-string ">" stream))


;;;---------
;;; catalog
;;;---------

(defvar *document-streams* nil
  "An accumulator of all the document streams defined.")


(defun document-stream-named (symbol)
  (unless (symbolp symbol)
    (error "Document sources are named by symbols.  Your argument, ~A~
            ~%  is a ~A" symbol (type-of symbol)))
  (unless (eq (symbol-package symbol) (find-package :sparser))
    (setq symbol (find-symbol (symbol-name symbol)
                              (find-package :sparser))))
  (unless (null symbol)
    (find symbol *document-streams* :test #'eq :key #'ds-name)))


(defun delete/document-stream (ds)
  (let* ((doc-stream
          (etypecase ds
            (symbol (or (document-stream-named ds)
                        (format t "~&There is no document stream ~
                                   named ~A" ds)))
            (document-stream ds)))
         (symbol (ds-name doc-stream)))

    (setq *document-streams*
          (delete symbol *document-streams*
                  :test #'eq :key #'ds-name))))


;;;------
;;; form
;;;------

(defun define-document-stream (symbol
                               &key style-name
                                    substream-of superstream
                                    directory doc-streams file-list
                                    unified )

  (when (or (and directory doc-streams)
            (and directory file-list)
            (and doc-streams file-list))
    (error "A document stream can have EITHER a directory, another ~
            document stream,~
            ~%   or an explicit list of files.~
            ~%   This definition has more than one of these"))

  (unless (or directory doc-streams file-list superstream)
    (error "There is no content to the document stream ~A~
            ~%You must give either a directory, a list of document streams, ~
            ~%or a list of files, using one of the keywords: directory, ~
            ~%doc-streams, or file-list respectively.~%" symbol))

  (let* ((symbol
         (if (not (typep symbol 'symbol))
           (error "The name of a document stream must be a symbol~
                   ~%  ~A isn't." symbol)
           (if (not (eq (symbol-package symbol)
                        (find-package :sparser)))
             (intern (symbol-name symbol) (find-package :sparser))
             symbol)))

        (its-superstream
         (when substream-of
           (or (document-stream-named substream-of)
               (else (format t "When defining a document stream as a ~
                                substream, the substream must already ~
                                ~%be defined, but ~A isn't." substream-of)
                     (return-from define-document-stream)))))

        (style (if style-name
                 (then
                   (unless (symbolp style-name)
                     (error "The style must be specified as a symbol.~
                             ~%You passed in a ~A" (type-of style-name)))
                   (document-style-named style-name))
                 (unless superstream
                   (error "A style must be specified for the document ~
                           stream:~%\"~A\"" symbol))))
                             
        (directory-pathname
         (when directory
           (string-append
            (namelist-to-unix  ;; N.b. generalize if Windows
             (expand-logical-pathname directory))
            "/")))

        (document-streams (when doc-streams
                            (or (check-and-return doc-streams)
                                (return-from define-document-stream))))

        object )

    (if (test-that-the-files-exist
         directory-pathname file-list)
      (then
        (setq object (document-stream-named symbol))
        (unless object
          (setq object (make-document-stream :name symbol)))

        ;; allow the particulars to change with redefinition
        (if substream-of
          (then
            (setf (ds-substreams its-superstream)
                  (push object (ds-substreams its-superstream)))
            (push object *document-streams*))
          (else
            (push object *document-streams*)))

        (when style-name
          (unless style
            (error "There is no document style named ~A" style-name)))
        (setf (ds-style      object) style)

        (setf (ds-unified-content object) unified) ;; nil if not specified

        (setf (ds-directory  object) directory-pathname)
        (setf (ds-substreams object) document-streams)
        (setf (ds-file-list  object) file-list)
        object )

      (else
        (format t "~&~%The document stream ~A~
                   ~%was not built because its files couldn't be found~%"
                symbol)))))



(defun check-and-return (doc-stream-names)
  (let ( doc-stream doc-streams )
    (dolist (stream-name doc-stream-names)
      (if (setq doc-stream (document-stream-named stream-name))
        (push doc-stream doc-streams)
        (format t "~%There is no document stream named ~A" stream-name)))
    (nreverse doc-streams)))


(defun test-that-the-files-exist (directory-pathname
                                  list-of-pathnames)

  (cond (directory-pathname
         (if (probe-file (if (pathnamep directory-pathname)
                           directory-pathname
                           (expand-namestring directory-pathname)))
           t
           (format t "~%The directory the document source is to use,~
                      ~%  ~A   does not exist." directory-pathname)))
        (list-of-pathnames
         (dolist (p list-of-pathnames)
           (unless (probe-file (if (pathnamep p)
                                 p
                                 (expand-namestring p)))
             (format t "~%One of the explicit files the document source is ~
                        to use,~%  ~A   does not exist." p)
             (return nil)))
         t)
        (t t)))


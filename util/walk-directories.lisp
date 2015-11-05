;;; -*- Mode: Lisp; Syntax: COMMON-LISP; Base:10; -*-
;;; $Id$
;;; Copyright (c) 2010 David D. McDonald

;; 3/21/2015 SBCL correction on a declare

(in-package :ddm-util)

#|
 (walk-and-copy "~/apps/nlp/snapshot_G4_1-2-07/nlp/Sparser/code/s/" "~/ws/nlp/Sparser/code/s/")

 (cl-user::collect-files-newer-than "/Users/ddm/ws/nlp/Sparser/code/s/" '(:day 4 :month 10 :year 2010))
|#

(defun collect-files-newer-than (directory-root date-elements)
  (let ((encoded-time (apply #'decoded-to-encoded-time date-elements)))
    (collect-files-newer-than1 directory-root encoded-time)))

(defun collect-files-newer-than1 (directory-root date)
  (unless (directory directory-root)
    (error "Expected this to be a directory:~%   ~a" directory-root))
  (let ((pathnames (directory directory-root))
	newer  )
    (dolist (pathname pathnames)
      (let ((namestring (file-namestring pathname))
	    )
	(unless (or (string-equal "fasl" (pathname-type pathname))
		    (when (position #\. namestring)
		      ;; catches ".DS_Store", ".svn", other hidden files
		      ;; such as files being edited
		      (= 0 (position #\. namestring)))
		    (when (position #\~ namestring) ;; emacs backups
		      (= (position #\~ namestring) (1- (length namestring)))))
	  (let ((directory-namestring
		 (string-append (namestring pathname) "/")))
	    (if (directory directory-namestring)
	      (let ((lower-newer (collect-files-newer-than1 directory-namestring date)))
		;(break "lower-newer = ~a" lower-newer)
		(setq newer (append lower-newer newer)))
	      (let ((file-date (file-write-date pathname)))
		(when (> file-date date)
		  (push pathname newer))))))))
    (nreverse newer)))

							     

(defun walk-and-copy (source-dir sink-dir)
  (format t "~&~a~%   => ~a" source-dir sink-dir)
  (let ((source-dir-path (truename source-dir))
	(sink-dir-path (truename sink-dir)))

    (let ((source-files (directory source-dir-path)))
      (dolist (source-pathname source-files)
	;; Is it a directory or not -- it is if we make it have the
	;; form of a directory (by adding a slash to the end) and
	;; directory doesn't return nil.
	(unless (string-equal ".DS_Store" (file-namestring source-pathname))
	  (let* ((namestring (namestring source-pathname))
		 (last-element (file-namestring source-pathname))
		 (directory-namestring (concatenate 'string
						    namestring
						    "/")))
	    (if (directory directory-namestring)
	      (recurse-walk-and-copy source-pathname
				     sink-dir-path)
	      (copy-current-file source-pathname
				 sink-dir-path))))))))

(defun recurse-walk-and-copy (source-pathname sink-parents-path)
  ;; copy from the source directory to the sink created by appending
  ;; the new dir on the source to the sink -- depends on the fact that
  ;; we've got a fully-formed empty directory tree that we're copying
  ;; into -- i.e. doesn't have to create new directories, just uncover
  ;; them.
  (let* ((last-term (file-namestring source-pathname)) ;; directory name
	 (sink-dir (pathname (concatenate 'string 
					  (namestring sink-parents-path)
					  "/" last-term "/")))
	 (source-dir (pathname (concatenate 'string
					    (namestring source-pathname)
					    "/"))))
    ;(format t "~&source-pathname = ~a~%last-term = ~a" 
;	    source-pathname last-term)
    (walk-and-copy source-dir sink-dir)))

(defun copy-current-file (source-file-path sink-dir-path)
  (format t "~&  copying ~a" source-file-path)
  (let* ((last-term (file-namestring source-file-path))
	 (suborned-last-term (suborn-non-unix-file-characters last-term))
	 (sink-file-path (concatenate 'string
				      (namestring sink-dir-path)
				      "/" suborned-last-term ".lisp")))
    (format t "~&    to ~a" sink-file-path)
    (copy-file source-file-path sink-file-path)))


#-openmcl ;; rename it if the functionality has to be specific
(defun copy-file (source-pathname sink-pathname)
  (with-open-file (source
		   source-pathname
		   :direction :input
		   :if-does-not-exist :error)
    (with-open-file (sink 
		     sink-pathname
		     :direction :output
		     :if-does-not-exist :create
		     :if-exists :supersede)
      (let ((eof? nil)
	    (line nil))
	(loop
	   while (not eof?)
	   do
	     (setq line (read-line source nil :eof))
	     (if (eq line :eof)
		 (setq eof? t)
		 (let ((clean-line (massage-control-Ms line)))
		   (write-line clean-line sink))))))))

(defun massage-control-Ms (line)
  (substitute #\Newline #\return line))
			    
;;--- "grammar modules" => "grammar-modules"
;; copied from lload

(defparameter *case-conversion* :no-conversion)

(defun suborn-non-unix-file-characters (string)
  ;; passed one element of a namestring at a time, i.e. either a directory
  ;; or the filename
  (let ((char-list (coerce string 'list))
        clean-list )
    (dolist (char char-list)
      (ecase (good-unix-char? char)
        ;; transfering from ultrix vis vms from the mac will convert
        ;; all alphabetic characters to uppercase and periods to "$"
        (:uppercase
         (ecase *case-conversion*
           (:all-uppercase (push char clean-list))
           (:no-conversion (push char clean-list))
           (:all-lowercase
            (let* ((uc-ascii (char-code char))
                   (lc-ascii (+ uc-ascii 32))
                   (lc (code-char lc-ascii)))
              (push lc clean-list)))))

        (:lowercase
         (ecase *case-conversion*
           (:all-uppercase
            (let* ((lc-ascii (char-code char))
                   (uc-ascii (- lc-ascii 32))
                   (uc (code-char uc-ascii)))
              (push uc clean-list)))
           (:no-conversion (push char clean-list))
           (:all-lowercase (push char clean-list))))

        (:space  (push #\-  clean-list))
        (:digit  (push char clean-list))
        (:period ;(push #\$  clean-list)
         ;; there's a timing hassle when working from Compile-&-load
         ;; such that the filename goes through fasl-namestring, introducing
         ;; a period before the fasl extension, before it goes to vivify
         ;; and comes here.  That mean's we'd screw up if there really
         ;; had been a legitimate period in a filename and VMS converted
         ;; it to a $.  On the otherhand there probably aren't any and
         ;; so we're safe
                 (push char clean-list))
        (:colon  (push char clean-list))
        (:dash   (push char clean-list))
        (:slash  (push #\-  clean-list))
        (:other-characters
         ;;(break "Unexpected character seen in file name: \"~A\"" char)
         (push char clean-list))))

    (coerce (nreverse clean-list) 'string)))

(defun Good-unix-char? (c)
  (let ((n (char-code c)))
    ;; SBCL doesn't like (declare (type n fixnum))
    (declare (fixnum n))
    (if (= n (char-code #\space))
      :space
      (if (and (>= n (char-code #\a))
               (<= n (char-code #\z)))
        :lowercase
        (if (and (>= n (char-code #\0))
                 (<= n (char-code #\9)))
          :digit
          (if (and (>= n (char-code #\A))
                   (<= n (char-code #\Z)))
            :uppercase
            (if (= n (char-code #\-))
              :dash
              (if (= n (char-code #\:))
                :colon
                (if (= n (char-code #\.))
                  :period
                  (if (= n (char-code #\/ ))
                    :slash
                    :other-characters ))))))))))





; (ddm-util::copy-Sparser-files-to-new-root newer-files "/Users/ddm/Sparser/Sparser/code/s")
(defun copy-Sparser-files-to-new-root (pathnames new-Sparser-s-root)
  (dolist (pathname pathnames)
    (let* ((namestring (namestring pathname))
	   (index-of-s (+ (search "code/s" namestring) (length "code/s")))
	   (tail (subseq namestring index-of-s))
	   (sink-namestring (string-append new-Sparser-s-root tail)))
      (format t "~&copying ~a~%  to ~a" pathname sink-namestring)
      (copy-file pathname sink-namestring))))


;; (ddm-util::collect-files-newer-than "/Users/ddm/ws/nlp/Sparser/code/s/" '(:day 4 :month 10 :year 2010))
(defvar newer-files 
  '( #P"/Users/ddm/ws/nlp/Sparser/code/s/analyzers/psp/fill-chart/newline.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/analyzers/DM&P/mine-sequences2.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/analyzers/DA/index.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/analyzers/context/manage-sections.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/CA/first-item.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/context/document-number.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/DM&P/of.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/FSAs/polywords4.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/tree-families/morphology1.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/words/one-offs/comlex.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/words/one-offs/loader.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/words/one-offs/treebank-reader.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/rules/words/frequency.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/titles/status.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/people/names1.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/names/fsa/scan3.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/names/fsa/examine.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/names/fsa/do-transitions1.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/names/fsa/classify1.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/names/name-words.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/names/object.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/names/parens-after-name.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/kinds/upper-model.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/companies/names2.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/core/companies/object1.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/grammar/model/sl/PCT/position-object.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/workspaces/fire.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/workspaces/memdump"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/salutation.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/loaders/grammar-modules.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/loaders/grammar.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/loaders/lisp-switch-settings.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/loaders/logicals.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/loaders/master-loader.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/loaders/stubs.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/config/grammars/full-grammar.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/versions/v3.1/config/grammars/fire.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/scripts/compile-everything.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/scripts/fire.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/init/everything.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/interface/mumble/interface.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/interface/mumble/loader.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/model/categories/structure.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/model/categories/loader2.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/model/categories/define1.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/model/categories/clos-backing.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/model/lattice-points/structure1.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/model/lattice-points/c+v-objects.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/model/lattice-points/annotation.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/objects/import/loader.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/tools/treebank-reader.lisp"
 #P"/Users/ddm/ws/nlp/Sparser/code/s/tools/basics/debug-stack.lisp"))


;;; shortcut-master2.lisp → shortcut-master.lisp

(defvar *special-names* '("pass"))

(defun versioned-filename-p (filename &aux
                             (name (pathname-name filename))
                             (n (length name)))
  (and (digit-char-p (elt name (- n 1)))
       (char/= #\0 (elt name (- n 1))) ; e.g. syntax-functions0.lisp
       (alpha-char-p (elt name (- n 2)))
       (let ((basename (subseq name 0 (- n 1))))
         (and (not (member basename *special-names* :test #'string-equal))
              (merge-pathnames (make-pathname :name basename) filename)))))

(defun filenames-differ-only-by-version-p (filename1 filename2 &aux
                                           (unspecific (make-pathname
                                                        :name :unspecific)))
  (and (equal (merge-pathnames unspecific filename1)
              (merge-pathnames unspecific filename2))
       (equal (pathname-name (or (versioned-filename-p filename1) filename1))
              (pathname-name (or (versioned-filename-p filename2) filename2)))))

(defun group-versions (filenames)
  (do* (group
        groups
        (prev-filename nil filename)
        (filenames filenames (cdr filenames))
        (filename (car filenames) (car filenames)))
       ((endp filenames)
        (nreconc groups (and group (list (nreverse group)))))
    (cond ((filenames-differ-only-by-version-p filename prev-filename)
           (if group
               (push filename group)
               (setq group (list filename prev-filename))))
          ((versioned-filename-p filename)
           (when group
             (push (nreverse group) groups))
           (setq group (list filename)))
          (t (when group
               (push (nreverse group) groups)
               (setq group nil))))))

(defun rename/delete-files-in-group (group &key
                                     (delete #'delete-file)
                                     (rename #'rename-file) &aux
                                     (newest (first (last group))))
  (map nil delete (butlast group))
  (funcall rename newest (versioned-filename-p newest)))

(defun dont-mv/rm-files-in-group (group)
  (rename/delete-files-in-group group
                                :delete (lambda (filename)
                                          (format *trace-output* "rm ~S~%"
                                                  (namestring filename)))
                                :rename (lambda (filename new-name)
                                          (format *trace-output* "mv ~S → ~S~%"
                                                  (namestring filename)
                                                  (namestring new-name)))))

(defun git-mv/rm-files-in-group (group)
  (rename/delete-files-in-group group
                                :delete (lambda (filename)
                                          (uiop:run-program
                                           (format nil "git rm ~S"
                                                   (namestring filename))))
                                :rename (lambda (filename new-name)
                                          (uiop:run-program
                                           (format nil "git mv ~S ~S"
                                                   (namestring filename)
                                                   (namestring new-name))))))

(defun sorted-directory (pathspec &key)
  (sort (directory pathspec) #'string-lessp :key #'namestring))

(defun sparser-code-directory (pathspec &optional
                               (sparser-directory cl-user::*sparser-directory*))
  (sorted-directory
   (merge-pathnames pathspec
                    (merge-pathnames
                     (make-pathname
                      :directory '(:relative "Sparser" "code" "s"))
                     sparser-directory))))

(defmacro with-cwd (directory &body body &aux (cwd (gensym)))
  `(let ((,cwd (uiop:getcwd)))
     (uiop:chdir ,directory)
     (unwind-protect (progn ,@body)
       (uiop:chdir ,cwd))))

(defun rename-sparser-files (&optional
                             (sparser-directory cl-user::*sparser-directory*)
                             (group-handler 'rename/delete-files-in-group))
  (with-cwd sparser-directory
    (map nil
         group-handler
         (group-versions
          (sparser-code-directory
           (make-pathname :directory '(:relative :wild-inferiors)
                          :name :wild
                          :type "lisp")
           sparser-directory)))))

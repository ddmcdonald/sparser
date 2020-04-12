(in-package :sparser)

;; FIXME: This is the major remaining issue.  Apparently we need to provide the full path to
;; our python3 when running the shell command.  There has to be a way to find it
;; programmatically (perhaps by running "which python3" as a separate shell command),
;; but I haven't gotten it working yet.  This is a temporary hack that isn't machine agnostic!
(defparameter *python3-path* "/usr/local/bin")

(defparameter *pdf2txt-path*
  (asdf:system-relative-pathname :sparser "Sparser/code/s/drivers/sources/pdf2txt_mod.py"))

(defparameter *hyphenated-word-whitelist*
  '("SARS-CoV"
    "MERS-CoV"
    "SARS-CoV-2"
    "COVID-19"
    ))

;;  ==  PDF-TO-TXT =============================================================
;; (pdf-to-txt "/path/to/file.pdf")

(defun pdf-to-txt (pdf-file &key (txt-file (txt-from-pdf pdf-file))
                              (collapse-paragraphs t))
  ;; Run the pdf2txt script to turn pdf to txt
  (let ((pdf-namestring (namestring pdf-file))
        (txt-namestring (namestring txt-file)))
    (uiop::run-program (format nil "~a/python3 ~a ~a -o ~a" *python3-path* *pdf2txt-path* pdf-namestring txt-namestring)
                       :output t :error-output t)
    ;; Clean up hyphens
    (remove-hyphen-line-breaks-in-file txt-namestring txt-namestring)
    ;; Remove within-paragraph line breaks
    (remove-within-paragraph-line-breaks-in-file txt-namestring txt-namestring)
    txt-namestring))


;;  ==  REMOVING HYPHEN LINE BREAKS ============================================

;;  == from a file ==
;; (remove-hyphen-line-breaks-in-file "/path/to/file.txt")

;; The first argument is the namestring or pathname for the input file.
;; The second argument (optional) is a file to output to (given as a namestring or pathname).
;; It will default to adding "-dehyphenated" at the end of the input filename (before the
;; file extension).

(defmethod remove-hyphen-line-breaks-in-file ((infile-namestring string) &optional outfile)
  (let ((outfile-ns (namestring (or outfile (add-file-suffix infile-namestring "-dehyphenated")))))
    (convert-file-using infile-namestring outfile-ns 'remove-hyphen-line-breaks)))

(defmethod remove-hyphen-line-breaks-in-file ((infile-path pathname) &optional outfile)
  (remove-hyphen-line-breaks-in-file (namestring infile-path) outfile))

;;  == from a string ==
;; (remove-hyphen-line-breaks <string>)

(defun remove-hyphen-line-breaks (str)
  (cl-ppcre::regex-replace-all "(\\S+)-\\s*[\\r\\n]+\\s*(\\S+)\\s*" str #'replace-hyphen-line-break))

;;  == Internals ==

;; a replacement function passed to cl-ppcre::regex-replace-all in remove-hyphen-line-breaks
(defun replace-hyphen-line-break (target-string start end match-start match-end reg-starts reg-ends)
  (declare (ignore start end reg-starts reg-ends))
  (declare (type vector target-string))
  ;;construct a replacement
  (let* ((match-str (subseq target-string match-start match-end))
         (scanner (cl-ppcre::create-scanner "^(\\S+)-\\s*[\\r\\n]+\\s*(\\S+)$" :multi-line-mode t))
         (hyphenated-word-with-punc (cl-ppcre::regex-replace scanner match-str "\\1-\\2"))
         (hyphenated-word (cl-ppcre::regex-replace-all "[^A-Za-z0-9-]" hyphenated-word-with-punc ""))
         (replacement match-str))
    (declare (type string replacement))
    (cond ((member hyphenated-word *hyphenated-word-whitelist* :test #'string-equal)
           ;; if removing the newline results in something on the whitelist, return it.
           (setf replacement hyphenated-word-with-punc))
          (t   ;; otherwise, remove the hyphen too
           (setf replacement
                 (cl-ppcre::regex-replace scanner match-str "\\1\\2"))))
    (format nil "~a~%" replacement)))


;;  ==  REMOVING WITHIN-PARAGRAPH LINE BREAKS ==================================

;;  == from a file ==
;; (remove-within-paragraph-line-breaks-in-file "/path/to/file.txt")

(defmethod remove-within-paragraph-line-breaks-in-file ((infile-namestring string) &optional outfile)
  (let ((outfile-ns (namestring (or outfile (add-file-suffix infile-namestring "-paragraph-breaks")))))
    (convert-file-using infile-namestring outfile-ns 'remove-within-paragraph-line-breaks)))

(defmethod remove-within-paragraph-line-breaks-in-file ((infile-path pathname) &optional outfile)
  (remove-within-paragraph-line-breaks-in-file (namestring infile-path) outfile))

;;  == from a string ==
;; (remove-within-paragraph-line-breaks <string>)

(defun remove-within-paragraph-line-breaks (str)
  ;; Replace every line break with a space, except the ones that look like paragraph line breaks.
  ;; Specifically, don't replace it if there are two or more successive line breaks where the
  ;; first word after the line breaks is capitalized.
  (cl-ppcre::regex-replace-all "[\\r\\n]+\\s*\\S" str #'remove-within-paragraph-line-break))

;;  == Internals ==

;; a replacement function passed to cl-ppcre::regex-replace-all in remove-within-paragraph-line-breaks
(defun remove-within-paragraph-line-break (target-string start end match-start match-end reg-starts reg-ends)
  (declare (ignore start end reg-starts reg-ends))
  (declare (type vector target-string))
  ;;construct a replacement
  (let ((match-str (subseq target-string match-start match-end))
        (scanner (cl-ppcre::create-scanner "^[\\r\\n]+\\s*(\\S)$" :multi-line-mode t)))
    (cl-ppcre::register-groups-bind (char-after)
        (scanner match-str)
      (cond
        ;; If our matching fails, which is not expected here, warn and make no replacement
        ((not (stringp char-after))
         (warn "Unexpected state encountered when processing line break: ~A" match-str)
         match-str)
        ;; If the first letter of the word after is capitalized, and there are
        ;; multiple line breaks, conform to a single line break
        ((and (stringp char-after)
              (> (length char-after) 0)
              (upper-case-p (aref char-after 0))
              (contains-multiple-breaks match-str))
         (format nil "~%~a" char-after))
        ;; otherwise it's a within-paragraph break.  Replace it with a space.
        (t
         (format nil " ~a" char-after))))))


;;  ==  UTILS ==========================================================================

;; this takes an input file namestring, an output file namestring, and a function
;; to run on the contents of the infile (as one big string) to produce the string
;; to write to the outfile.
(defmethod convert-file-using (infile outfile conversion-fn)
  (when (fboundp conversion-fn)
    (let ((output-string))
      (with-open-file (in-stream infile :direction :input :if-does-not-exist :error)
        (let ((contents (make-string (file-length in-stream))))
          (read-sequence contents in-stream)
          (setf output-string (funcall conversion-fn contents))))
      ;;Do it without opening both streams at once, in case infile and outfile are the same
      (when output-string
        (with-open-file (out-stream outfile :direction :output :if-exists :supersede)
          (write-string output-string out-stream)))
      outfile)))

;;the default way to construct an output filename from an input filename
(defun add-file-suffix (namestring suffix)
  (or (cl-ppcre::regex-replace "(\\.[A-Za-z]*)$" namestring (concatenate 'string suffix "\\1"))
      (concatenate 'string namestring suffix)))

;;the default way to construct an output filename from an input filename
(defun txt-from-pdf (namestring)
  (cl-ppcre::regex-replace "\\.pdf$" namestring ".txt"))

(defun contains-multiple-breaks (str)
  (let ((rs (cl-ppcre::all-matches-as-strings "\\r" str))
        (ns (cl-ppcre::all-matches-as-strings "\\n" str)))
    (or (and (listp rs) (> (length rs) 1))
        (and (listp ns) (> (length ns) 1)))))

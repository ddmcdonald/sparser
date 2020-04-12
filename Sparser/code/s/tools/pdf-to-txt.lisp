(in-package :sparser)

;; N.B. To run pdf-to-txt, your PATH environment variable must include the path
;; to python3.  If you're in unix & sbcl like me, You can check your PATH with
;; (sb-posix:getenv "PATH"). For me, this returns something different than in
;; my terminal (echo $PATH).  I'm still not sure why.  Even though my python3
;; location is in my terminal $PATH, it wasn't in my PATH from sbcl.

;; Solution: I now add my python3 location to my PATH env var in my .sbclrc using
;; (sb-posix:getenv <var>) and (sb-posix:setenv <var> <val> 1)  <= 1 means overwrite.
;; [-MDM]

(defparameter *pdf2txt-path*
  (asdf:system-relative-pathname :sparser "Sparser/code/s/tools/pdf2txt_mod.py"))

(defparameter *word-whitelist*
  '("SARS-CoV"
    "MERS-CoV"
    "SARS-CoV-2"
    "COVID-19"
    "pathogen"  ;; should we bother adding words like this here?
    ))


;;  ==  PDF-TO-TXT =============================================================
;; (pdf-to-txt "/path/to/file.pdf")

(defun pdf-to-txt (pdf-file &key (txt-file (txt-from-pdf-path pdf-file))
                              (collapse-paragraphs t))
  ;; Run the pdf2txt script to turn pdf to txt
  (let ((pdf-namestring (namestring pdf-file))
        (txt-namestring (namestring txt-file)))
    (uiop::run-program (format nil "python3 ~a ~a -o ~a" *pdf2txt-path* pdf-namestring txt-namestring)
                       :output t :error-output t)
    ;; Clean up hyphens
    (move-hyphen-line-breaks-in-file txt-namestring txt-namestring)
    ;; Optionally remove within-paragraph line breaks
    (when collapse-paragraphs
      (remove-within-paragraph-line-breaks-in-file txt-namestring txt-namestring))
    txt-namestring))


;;  ==  MOVING HYPHEN LINE BREAKS ==============================================

;;  == in a file ==
;; (move-hyphen-line-breaks-in-file "/path/to/file.txt")

;; The first argument is the namestring or pathname for the input file.
;; The second argument (optional) is a file to output to (given as a namestring or pathname).
;; It will default to adding "-dehyphenated" at the end of the input filename (before the
;; file extension).

(defmethod move-hyphen-line-breaks-in-file ((infile-namestring string) &optional outfile)
  (let ((outfile-ns (namestring (or outfile (add-file-suffix infile-namestring "-dehyphenated")))))
    (convert-file-using infile-namestring outfile-ns 'move-hyphen-line-breaks)))

(defmethod move-hyphen-line-breaks-in-file ((infile-path pathname) &optional outfile)
  (move-hyphen-line-breaks-in-file (namestring infile-path) outfile))

;;  == in a string ==
;; (move-hyphen-line-breaks <string>)

(defun move-hyphen-line-breaks (str)
  (cl-ppcre::regex-replace-all "(\\S+)-\\s*[\\r\\n]+(\\S+)\\s*" str #'replace-hyphen-line-break))

;;  == internals ==

;; a replacement function passed to cl-ppcre::regex-replace-all in move-hyphen-line-breaks
(defun replace-hyphen-line-break (target-string start end match-start match-end reg-starts reg-ends)
  (declare (ignore start end reg-starts reg-ends))
  (declare (type vector target-string))
  (flet ((approved-word? (word)
           (when (or (member word *word-whitelist* :test #'string-equal)
                     (resolve word))
             t)))
    (let* ((match-str (subseq target-string match-start match-end))
           (scanner (cl-ppcre:create-scanner "^(\\S+)-\\s*[\\r\\n]+(\\S+)\\s*$" :multi-line-mode t))
           (hyphenated-word-with-punc (cl-ppcre::regex-replace scanner match-str "\\1-\\2"))
           (hyphenated-word (cl-ppcre:regex-replace-all "[^A-Za-z0-9-]" hyphenated-word-with-punc ""))
           (member-words (cl-ppcre:split "-" hyphenated-word))
           (merged-word-with-punc (cl-ppcre:regex-replace scanner match-str "\\1\\2"))
           (merged-word (cl-ppcre:regex-replace-all "[^A-Za-z0-9-]" merged-word-with-punc ""))
           (replacement match-str))
      (declare (type string replacement))
      (cond ((approved-word? merged-word) ; if the merged word is an approved word, use that
             (setf replacement merged-word-with-punc)) ; keep the trailing punctuation with the word
            ((or (approved-word? hyphenated-word)
                 (every #'approved-word? member-words))
             ;; if removing the newline but leaving the hyphen results in an approved word, or something
             ;; whose parts (separated by hyphens) are all approved words, use the hyphenated version.
             (setf replacement hyphenated-word-with-punc)) ; keep the trailing punctuation with the word
            (t   ; otherwise, signal a warning and assume the merged version.
             ;; Probably too annoying.
             ;; (warn "~a is not known to be a word or white-listed in sp::*word-whitelist*,
             ;;       nor is the hyphenated version ~a,
             ;;       nor are (all of) its constituents (~{~A~^, ~}).
             ;;       Default: Using merged version: ~a."
             ;;       merged-word hyphenated-word member-words merged-word)
             (setf replacement merged-word-with-punc)))  ; keep the trailing punctuation with the word
      (format nil "~a~%" replacement))))


;;  ==  REMOVING WITHIN-PARAGRAPH LINE BREAKS ==================================

;;  == in a file ==
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
  ;; Specifically, leave a (single) break where there are two or more successive line breaks and the
  ;; first word after the line breaks is capitalized.  There may be a better heuristic out there.  This
  ;; worked pretty well on my test file, but not perfectly.
  (cl-ppcre::regex-replace-all "[\\r\\n]+\\s*\\S" str #'replace-within-paragraph-line-break))

;;  == internals ==

;; a replacement function passed to cl-ppcre::regex-replace-all in remove-within-paragraph-line-breaks
(defun replace-within-paragraph-line-break (target-string start end match-start match-end reg-starts reg-ends)
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
(defun txt-from-pdf-path (namestring)
  (cl-ppcre::regex-replace "\\.pdf$" namestring ".txt"))

(defun contains-multiple-breaks (str)
  (let ((rs (cl-ppcre::all-matches-as-strings "\\r" str))
        (ns (cl-ppcre::all-matches-as-strings "\\n" str)))
    (or (and (listp rs) (> (length rs) 1))
        (and (listp ns) (> (length ns) 1)))))

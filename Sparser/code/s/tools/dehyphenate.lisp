(in-package :sparser)

(defparameter *word-whitelist*
  '("SARS-CoV"
    "MERS-CoV"
    "SARS-CoV-2"
    "COVID-19"
    ))


;;  ==  Removing hyphens from a file ==
;; (remove-hyphen-line-breaks-in-file "/path/to/file.txt")

;; The first argument is the namestring or pathname for the input file.
;; The second argument (optional) is a file to output to (given as a namestring or pathname).
;; It will default to adding "-dehyphenated" at the end of the input filename (before the
;; file extension), e.g. "/path/to/file-dehyphenated.txt".

(defmethod remove-hyphen-line-breaks-in-file ((infile-namestring string) &optional outfile)
  (let ((outfile-ns (namestring (or outfile (add-dehyphenated-suffix infile-namestring))))
        (output-string))
    (with-open-file (in-stream infile-namestring :direction :input :if-does-not-exist :error)
      (let ((contents (make-string (file-length in-stream))))
        (read-sequence contents in-stream)
        (setf output-string (remove-hyphen-line-breaks contents))))
    ;;Do it without opening both streams at once, in case infile and outfile are the same
    (when output-string
      (with-open-file (out-stream outfile-ns :direction :output :if-exists :supersede)
        (write-string output-string out-stream)))
    outfile-ns))

(defmethod remove-hyphen-line-breaks-in-file ((infile-path pathname) &optional outfile)
  (remove-hyphen-line-breaks-in-file (namestring infile-path) outfile))


;;  ==  Removing hyphens from a string ==
;; (remove-hyphen-line-breaks <string>)

(defun remove-hyphen-line-breaks (str)
  (cl-ppcre::regex-replace-all "(\\S+)-\\s*[\\r\\n]+(\\S+)\\s*" str #'replace-hyphen-line-break))


;;  ==  Internals ==

;; a replacement function passed to cl-ppcre::regex-replace-all in remove-hyphen-line-breaks
(defun replace-hyphen-line-break (target-string start end match-start match-end reg-starts reg-ends)
  (declare (ignore start end reg-starts reg-ends))
  (declare (type vector target-string))
  ;;construct a replacement
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
           ;; We may decide to remove this warning if it's too annoying.
           (warn "~a is not known to be a word or white-listed in sp::*word-whitelist*, nor is the hyphenated version ~a, nor are (all of) its constituents (~{~A~^, ~}). Default: Using merged version: ~a."
                 merged-word hyphenated-word member-words merged-word)
           (setf replacement merged-word-with-punc)))  ; keep the trailing punctuation with the word
    (format nil "~a~%" replacement)))

(defun approved-word? (word)
  (or (member word *word-whitelist* :test #'string-equal)
      (known-word? word)))

;; TODO: How do we ask sparser if this is a known word?
(defun known-word? (word)
  (declare (ignore word))
  nil)

;;the default way to construct an output filename from an input filename
(defun add-dehyphenated-suffix (namestring)
  (or (cl-ppcre::regex-replace "(\\.[A-Za-z]*)$" namestring "-dehyphenated\\1")
      (concatenate 'string namestring "-dehyphenated")))


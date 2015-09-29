;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Biology-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  June 2015

;; Initiated 11/6/13 to setup experiments in reading biology texts
;; and constructing process models from them.
;; 6/5/2015 added methods to control whether breaks and errors halt processing of articles
;; (defparameter *break-during-read* nil), break-in-articles,  dont-break-in-articles
;; 6/20/2015 added control prameter *load-ras2* that can be used to turn off the loading of
;; the large model while doing tests...
;; 7/11/2015 New method TJ to test a single article and add to a file
;;  current "~/r3/code/evaluation/no-cards.lisp" but should be made more parameterizable
;; all the sentences that mention RAS2 proteins. This is particularly useful to figure out why we are not generating cards for some articles
;; Put in error handler around the card production code -- this should prevent errors in card production from killing an entire article
;; pt-card can produce NIL cards (when there is no substrate or agent).
;; Don't push them onto the list of cards to be printed in create-cards-for-article...

(in-package :sparser)

;;; There's probably a better place for these - used here and R3 in this package.

(defun all-hash-keys (ht)
  (let ((keys nil))
    (maphash #'(lambda (key val)
                 (declare (ignore val))
                 (push key keys))
             ht)
    keys))

(defun all-hash-vals (ht)
  (let ((vals nil))
    (maphash #'(lambda (key val)
                 (declare (ignore key))
                 (push val vals))
             ht)
    vals))


(defun hash-counts (ht)
  (let ((key-counts nil))
    (maphash #'(lambda (key val)
                 (push (list key (length val)) key-counts))
             ht)
    key-counts))



;;;----------------
;;; Standard setup
;;;----------------

; (defvar script :biology)  ;; For customizing what gets loaded
; (setup-bio) ;; load the bio model etc.

(defun setup-bio ()
  (bio-setting)
  (remove-paragraph-marker) ;; #<PSR1155  sgml-label ->  "p"> interfers with "p100"
  (setq *tts-after-each-section* nil)
  (setq *note-text-relations* nil) ;; plist-for passed :uncalculated noting "[1-3]"
  (gate-grammar *biology* ;; sets up stats collection
                (gload "bio;loader"))
  (load-obo-terms)
  (load-bio-corpora)
  (declare-all-existing-individuals-permanent)
  (push :biology-loaded *features*)
  )

(defun define-r3-path-if-needed ()
  "The function r3-path is bound in <r3 trunk>/code/load.lisp
   and defined relative to the directory just above that location,
   i.e. *r3-trunk*. This defines the function if it isn't already."
  (unless (fboundp 'cl-user::r3-path)
    (unless (boundp 'cl-user::*r3-trunk*)
      (error "No value defined for cl-user::*r3-trunk*"))
    (defun cl-user::r3-path (relative-path)
      (merge-pathnames relative-path cl-user::*r3-trunk*))))



;;; copied from ddm-load-corpora in ddm-workspace.
 
(defun load-bio-corpora ()
  (define-r3-path-if-needed)
  (cl-user::r3-load "code/grammar-tests/December-text-passages.lisp")
  (cl-user::r3-load "code/grammar-tests/January Dry Run passages.lisp")
  (cl-user::r3-load "code/grammar-tests/ERK-translocation.lisp")
  (cl-user::r3-load "code/grammar-tests/aspp2-whole.lisp")
  (cl-user::r3-load "code/grammar-tests/overnight-sents.lisp")
  (cl-user::r3-load "code/grammar-tests/load-test-sents.lisp")
  (cl-user::r3-load "code/grammar-tests/biochemical-reaction-text-comments.lisp")
  (cl-user::r3-load "code/grammar-tests/corpora-definitions.lisp")
  (cl-user::r3-load "code/grammar-tests/corpora-snapshots.lisp"))
 

;;;-------------------------------------------------------
;;; Setup for reading whole documents via the nxml reader
;;;-------------------------------------------------------
#|  5/13/15 (ddm)
This code is set up to take a list of article ids as given
by Mitre in their 5/4/15 email (*2015-5-4_Mitre-articles*)
and get them read.

Because things don't always work, it runs in three stages
and stores its results in the global variables just below.
1. Read the xml had create document objects
     (populate-article-set)
2. "Sweep" the document objects and populate their sentences
     (sweep-article-set)
3. Read the documents for their content
     (read-article-set)

The (untested) function load-and-read-article(id) would do all
those steps sequentially on a single article.

|#

(defvar *articles-created* nil
  "Holds the document shells as created by make-sparser-doc-structure")

(defvar *populated-articles* nil
  "Holds all of the articles we've loaded and populated,
   i.e. run sweep-document over anc created all the sentences")

(defvar *epistemically-scanned-articles* nil
  "Holds articles that read-epistemic-features has processed.")

(defvar *read-articles* nil
  "Holds all of the articles we've parsed")

;; This should be set in your personal workspace file,
;; e.g. (setq *r3-trunk* "/Users/ddm/ws/R3/r3/trunk/")
(if (boundp 'cl-user::*r3-trunk*)
    (setf *r3-trunk* cl-user::*r3-trunk*)
    (setf *r3-trunk* nil))
;  "String identifing the location of the trunk on
;  your machine, including a final slash"


;;;-------------------------------------------
;;; Alternative paths to the document corpora
;;;-------------------------------------------

(defvar *corpus-paths* '((:jan15 "darpa/January5-TestMaterials")
                         (:May15 "corpus/2015-5-4_Mitre-articles")
                         ;; this is the WRONG location -- it does not match
                         ;; where Jeremy did his work
                         ;;(:jun15 "darpa/12-month TestMaterials/NXML-model")
                         (:jun15 "code/evaluation/June2015Materials/Eval_NXML")))


;;; remove slashes from both ends unless just-end = t then just right end.
(defun remove-end-slashes (string &optional (just-end nil))
  (if (pathnamep string) (setq string (file-namestring string)))
  (let* ((lastpos (1- (length string)))
         (p1 (if (and (not just-end) (eq (elt string 0) #\/)) 1 0))
         (p2 (if (eq (elt string lastpos) #\/) lastpos (1+ lastpos))))
    (subseq string p1 p2)))


(defun make-corpus-path (corpus-kwd &optional (folderp t))
  (let ((path-from-r3-trunk (cond ((stringp corpus-kwd) corpus-kwd)
                                  ((second (assoc corpus-kwd *corpus-paths*)))
                                  (T "corpus/2015-5-4_Mitre-articles"))))
  (format nil "~A/~A~@[/~]"
          (remove-end-slashes cl-user::*r3-trunk* t)
          (remove-end-slashes path-from-r3-trunk)
          folderp)))

(defparameter *default-corpus-path* nil)


(defun stripped-corpus-path ()
  (declare (special *default-corpus-path*))
  (or
   *default-corpus-path*
   (make-corpus-path "corpus/stripped")))


(defun set-default-corpus-path (corpus-kwd-or-string)
  "Set r3::*default-corpus-path* to this trunk-relative value"
  (declare (special *default-corpus-path*))
  (let ((expanded-pathname  (make-corpus-path corpus-kwd-or-string)))
    ;;(format t "~&Setting r3::*default-corpus-path* to ~s~%" expanded-pathname)
    (setf *default-corpus-path* expanded-pathname)))



(defparameter *card-folder* nil)
(defun make-card-filename (name counter)
  (unless *card-folder*
    (setf *card-folder* (merge-pathnames "../mitre-cards/" (pathname *default-corpus-path*))))
  (merge-pathnames (format nil "~a-~d.txt" name counter) *card-folder*))


;; n means starting from n
(defun populate-12-month-NXML-model-article-set (&optional (n nil))
  (unless cl-user::*r3-trunk*
    (error "*r3-trunk* needs to be set."))
  (let* ((location "darpa/12-month TestMaterials/NXML-model")
          (fullpath (make-corpus-path location))
         (directory-namestring (string-append fullpath "*.nxml")))
    (let ((ids (generate-id-list-from-directory-listing directory-namestring)))
      (if ids
        (format t "~&About to operate on ~a files~%" (length ids))
        (break "Something went wrong. No ids were generated from~%~a"
               directory-namestring))
      (if (numberp n)
          (setq ids (nthcdr n ids)))
      (populate-article-set ids location :quiet))))

;; n is for do the first n. n followed by m does from m to n inclusive (zero based for nth)
(defun populate-june-test-article-set (&optional n m)
  (declare (special *june-nxml-files-in-MITRE-order*))
  (unless cl-user::*r3-trunk*
    (error "*r3-trunk* needs to be set."))
  (let* ((location (string-append
                   cl-user::*r3-trunk* "code/evaluation/June2015Materials/Eval_NXML/"))
         (corpus-path "code/evaluation/June2015Materials/Eval_NXML/")
         (directory-namestring
          (string-append location "*.nxml")))
    (let ((ids
           (or *june-nxml-files-in-MITRE-order*
               (generate-id-list-from-directory-listing directory-namestring))))
      (if ids
        (format t "~&About to operate on ~a files~%" (length ids))
        (break "Something went wrong. No ids were generated from~%~a"
               directory-namestring))
      (if (numberp n)
       (populate-article-set
        (loop for i from m to n
          collect (nth i ids))
        corpus-path
        :quiet t)
       (populate-article-set ids corpus-path :quiet t)))))


(defparameter *missing-ids* nil)

(defparameter *articles-created-ht* (make-hash-table :size 1000))
(defparameter *articles-populated-ht* (make-hash-table :size 1000))


;--- 1st populate: Locate the nxml file and run the
; XML-to-doc-structure to convert it to the equivalent
; document object.
;; (populate-article-set)
(defun populate-article-set (&optional list-of-ids location quiet use-pmc)
  "Given a list of document ids and the location of their
  files in the corpus, run make-sparser-doc-structure to
  return a set of article objects."
  (declare (special *2015-5-4_Mitre-articles*))
  (setq *articles-created* nil) ;; this is a rebuild operation!!
  (setq *missing-ids* nil)
  (load-xml-to-doc-if-necessary)
  (unless list-of-ids
    (setq list-of-ids *2015-5-4_Mitre-articles*))
  (unless location
    (setq location "2015-5-4_Mitre-articles"))
  (set-default-corpus-path location)
  (let ((maker-fn (intern (symbol-name '#:make-sparser-doc-structure)
                          (find-package :r3)))
        (path-fn (intern (symbol-name '#:make-doc-path)
                         (find-package :r3)))
        (quiet-fn (intern (symbol-name 'debug-off)
                          (find-package :r3)))
        (count 0))
    (funcall quiet-fn)
    (dolist (id list-of-ids)
      (let* ((simple-id (if use-pmc
                          (string-append (symbol-name id) ".nxml")
                          (PMC-to-nxml id)))
             (pathname (funcall path-fn simple-id))
             created
             article)
        (cond
         ((null pathname)
          (push-debug `(,simple-id ,location))
          (push id *missing-ids*)
          nil)
         (t
          (if quiet
              nil ;; don't print anything now (princ "." t)
              (format t "~&~%~%Reading the file ~a" pathname))
          (incf count) ;; if there's an error, how far along are we
          (setq created (funcall maker-fn simple-id))
          (setq article (if (consp created) (car created) created))
          (setf (name article)
                (typecase id
                  (symbol id)
                  (string (intern (format nil "PMC~A" id)))
                  (t id)))
          (push article *articles-created*)))))
    (setq list-of-ids
          (loop for id in list-of-ids
            unless (memq id *missing-ids*)
            collect
            (typecase id
              (symbol id)
              (string (intern (format nil "PMC~A" id)))
              (t id))))
    (setq *articles-created*
          (nreverse
           (loop for form in *articles-created*
             collect
             (if (consp form)
                 (car form)
                 form))))
    (loop
      for article in *articles-created*
;      as id in list-of-ids
      do ;;(setf (name article) id)
      (setf (gethash (name article) *articles-created-ht*) article))
    *articles-created*))




;--- 2d sweep.  Run through the article that is the result
; of the XML conversion, identify its sub-subsections, and
; create sentence objects for the text content of paragraphs

(defun sweep-article-set (&optional (articles *articles-created*))
  "Given a list of articles, by default the ones created by the
   populate operation and stored on *articles-created*, run the
   function sweep-document over them and return/store the result
   of *populated-articles*."
  (declare (special *break-on-sweep-errors*))
  (setq *populated-articles* nil) ;; this is a rebuild operation!!

  (let ((article (car articles))
        (rest (cdr articles)))
    ;;(format t "Sweep phase: ~a articles" (length articles))
    (loop
      (unless article
        (return))
      (if *break-on-sweep-errors*
       (then
         (push (sweep-document article)
               *populated-articles*)
         (setf (gethash (name article) *articles-populated-ht*) article))
       (handler-case
           (push (sweep-document article)
                 *populated-articles*)
         (error (e)
             (format t "~&Error sweeping: ~a~%~a~%" article e))))
      (setq article (car rest)
            rest (cdr rest))))
  *populated-articles*)


;--- 2.5 scan for the data that feeds assess-relevance
(defun epistemic-article-sweep (&optional (articles *populated-articles*))
  (declare (special *break-on-sweep-errors* *show-article-progress*))
  (setq *epistemically-scanned-articles* nil) ;; reset
  (when
      *show-article-progress*
      (format t "~&~%Feature phase: ~a articles~%" (length articles)))
  (let ((article (car articles))
        (counter 0)
        (rest (cdr articles)))
    (loop
      (unless article
        (return))
      (incf counter)
      ;;(format t "~&Extracting features: #~a ~a~%" counter (name article))
      ;;(format t " ~a" counter)
      (if *break-on-sweep-errors*
        (push (read-epistemic-features article)
              *epistemically-scanned-articles*)
        (handler-case
            ;; An error in the feature computation will block
            ;; feature creation on the rest of the sentences in
            ;; the article, but it doesn't make the article
            ;; unuseable for reading.
            (read-epistemic-features article)
           (error (e)
                  (format t "~&Error in Feature sweep: ~a~%~a~%" article e))))
      (push article *epistemically-scanned-articles*)
      (setq article (car rest)
            rest (cdr rest))))
  *epistemically-scanned-articles*)


;--- 3d read.

(defun read-article-set (&key (articles (or *epistemically-scanned-articles*
                                                 *populated-articles*))
                              (counter 0))
  ;; (format t "Reading phase: ~a articles" (length articles))
  (let ((count counter))
    (loop for article in articles
      do
      (read-article article count)
      (incf count))))

;;(defvar *time-reading-document* 0)

(defun read-article (article counter)
  (declare (special *break-during-read* *article-elapsed-time*))
  (let ((*trap-error-skip-sentence* (not *break-during-read*)))
    ;; Enables the error-handler in the parser that will
    ;; skip to the next sentence
    (declare (special *trap-error-skip-sentence*))
    (format t "~%~%---------------------------------------------~&Reading document #~a ~a~&" counter (name article))
    (time-start article)
    (with-total-quiet
        (read-from-document article))
    (time-end article)
    (format t "~%---- Article: ~a took ~a seconds to read----~%~%"
            (name article) (elapsed-time-to-string *article-elapsed-time*))))


;;---- Error handline

(defparameter *break-on-sweep-errors* nil
  "Read by sweep-article-set to determine whether or not to use
   an error handler.")

; In read-article-set the flag *trap-error-skip-sentence* is set.
; This will handle any errors that occur while parsing while
; letting you continue an handle the rest of the text.

(defparameter *break-during-read* nil)

(defun break-in-articles ()
  ;;(setq *break-on-pattern-outside-coverage?* t)
  (setq *break-during-read* t)
  (REVERT-TO-REGULAR-BREAK))

(defun dont-break-in-articles ()
  (setq *break-on-pattern-outside-coverage?* nil)
  (setq *break-during-read* nil)
  (revert-to-error-break))


;;--- Variations on the basic operations

(defun test-articles ()
  (populate-article-set)
  (sweep-article-set)
  (with-total-quiet
      (read-article-set))
  ;;(setq *accumulate-content-across-documents* t)
  )

(defun test-12-month-articles (&optional (n nil)(reload nil))
  (when reload
    (setq *articles-created* nil)
    (setq *populated-articles* nil))
  (populate-12-month-NXML-model-article-set n)
  (sweep-and-run-n-articles n))


;;; start is 0 based.
(defun test-june-articles (&optional (n nil)(start 0) (reload nil))
  (when reload
    (setq *articles-created* nil)
    (setq *populated-articles* nil))
  (when (null *articles-created*)
    (populate-june-test-article-set))
  (sweep-and-run-n-articles n start))

(defun test-range-of-June-articles (from n) ;; adjust for 0 based
  "The parameters are both numbers. Run a subset of the June
   articles starting at the id at from and continuing for n more.
   Purpose is to walk through the ~1k articles in manageble
   chunks, particularly since so far 1/100 of the articles has
   a defect that wedges the lisp requiring a restart."
  (declare (special *june-nxml-files-in-MITRE-order*))
  (load-xml-to-doc-if-necessary)
  (let ((to (+ from n)))
    (let ((ids (subseq *june-nxml-files-in-MITRE-order* from to))
          (corpus-path "code/evaluation/June2015Materials/Eval_NXML/"))
      (with-total-quiet
          (read-article-set
           :articles
           (epistemic-article-sweep
            (sweep-article-set
             (populate-article-set ids corpus-path :quiet t)))
           :counter from)))))


;; run n articles starting with number STARTING-FROM (0 based)
(defun sweep-and-run-n-articles (n &optional (starting-from 0))
  (unless (integerp starting-from) (setf starting-from 0))
  (let ((articles-to-run
         (if (integerp n)
             (subseq *articles-created* starting-from (+ starting-from n))
             (subseq *articles-created* starting-from))))
    (sweep-and-run-articles articles-to-run :from starting-from)))

(defun sweep-and-run-articles (articles-to-run &key (from 0))
  (sweep-article-set articles-to-run)
  ;;(setq *accumulate-content-across-documents* t)
  (with-total-quiet
      (read-article-set
       :articles
       (epistemic-article-sweep
        articles-to-run)
       :counter from)))


#+ignore
(defun single-sent-parse ()
  (setq *accumulate-content-across-documents* t))

(defun load-and-run-June-article-number (n)
  (declare (special *june-nxml-files-in-MITRE-order*))
  (set-default-corpus-path :jun15)
  (load-xml-to-doc-if-necessary)
  (let ((id (nth (1- n) *june-nxml-files-in-MITRE-order*)))
    (load-and-read-article id)))

(defun load-and-read-article (id) ;; assume corpus-path is set
  (declare (special *break-during-read* *article-elapsed-time*))
  (load-xml-to-doc-if-necessary)
  (let ((maker-fn (intern (symbol-name '#:make-sparser-doc-structure)
                          (find-package :r3)))
        (path-fn (intern (symbol-name '#:make-doc-path)
                         (find-package :r3)))
        (quiet-fn (intern (symbol-name 'debug-off)
                          (find-package :r3))))
    (funcall quiet-fn)
    (let* ((simple-id (string-append (symbol-name id) ".nxml"))
           (pathname (funcall path-fn simple-id)))
      (when pathname

    (let* ((doc-elements (funcall maker-fn simple-id))
           (article (car doc-elements))
           (*trap-error-skip-sentence* (not *break-during-read*)))
      (declare (special *trap-error-skip-sentence*))
      (setf (name article) id)
      (sweep-document article)
      (read-epistemic-features article)
      (format t "~&Reading ~a" (name article))
      (with-total-quiet
          (read-from-document article))
      (format t "  ~a~%" (elapsed-time-to-string *article-elapsed-time*))
      article)))))


;;---- Gophers for going through articles

(defun generate-id-list-from-directory-listing (directory-namestring)
  "Given a namestring that ends with *.nxml or the equivalent,
  this returns a list of filename strings."
  (let ((pathnames (directory directory-namestring)))
    ;; N.b. This use of directory might be CCL specific
    (loop for pn in pathnames
      collect (pathname-name pn))))



(defmethod PMC-to-nxml ((symbol symbol))
  "Given a symbol like PMC1240052, which was how they were sent
   to us by Mitre in May. Convert it to the filename form that's
   actually used in the corpus directory."
  (let* ((full-string (symbol-name symbol))
         (number-string (subseq full-string 3))
         (filename (string-append number-string ".nxml")))
    filename))

(defmethod PMC-to-nxml ((filename string))
  "This is designed to work with ids generated by
  generate-id-list-from-directory-listing which returns strings."
  (string-append filename ".nxml"))



(defun load-xml-to-doc-if-necessary ()
  "If you load Sparser first and R3 second, then you can't
   assume that the XML-reader is loaded (and you can't
   use :r3 as a package name). This uses the definition
   of the package as a proxy for the whole relevant body
   of code having been loaded."
  (unless (find-package :r3)
    (if (boundp 'cl-user::*r3-trunk*)
      (let ((code-dir (string-append cl-user::*r3-trunk* "code/")))
        (cwd code-dir)
        (load "load.lisp"))
      (format nil "You have to set *r3-trunk*"))))



;;;---------------
;;; Article lists
;;;---------------

;;---- the May "dry run" articles

(defparameter *2015-5-4_Mitre-articles*
  '(PMC3902907  ;; contained <?epub October-7-2013?>, which weirds out the XML parser
    PMC3441633
    PMC1240052
    PMC1325201  ;;also had ?pub element
    PMC1240239
    PMC1289294
    PMC3058384
    PMC2597732
    PMC534114
    PMC2132783))


;;---- The set we pulled over ourselves

#|
 (setq directory-namestring
    "/Users/ddm/ws/R3/r3/trunk/darpa/12-month TestMaterials/NXML-model/*.nxml")
|#

; The commented out articles somehow get the system into a spinning beachball state
; such that you have to force-quit CCL.  Determined this by running individual articles
; in succession using load-and-read-article

(defparameter *june-nxml-files-in-MITRE-order*
  '(PMC2194190 PMC3284553 PMC1242143 PMC4026536 PMC3052367 PMC3866170 PMC2258316 PMC4322841 PMC2199242 PMC2140160
    PMC2171479 PMC2212462 PMC2173577 PMC2963603 PMC2952868 PMC2683795 PMC2150897 PMC2193139 PMC3755003 PMC3832667
    PMC2172734 PMC2172271 PMC509302 PMC4018780 PMC2900437 PMC2196252 PMC2118081 PMC2964295 PMC2173591 PMC3235705
    PMC3077625 PMC2199364 PMC2518715 PMC2172453 PMC4122675 PMC2139975 PMC2585478 PMC4047089 #|PMC3594181|# PMC3651755
    PMC2171813 PMC1240052 PMC3020772 PMC2903679 PMC2063981 PMC2603313 PMC3205876 PMC3467212 PMC3329184 PMC2156209
    PMC3547897 PMC2175269 PMC2766052 PMC4118959 PMC3691183 PMC3445325 PMC2196065 PMC3250444  PMC2982111  ;; missing
    PMC3102680 PMC3378484 PMC2880659 PMC2174844 PMC2173797 PMC2843713 PMC1702556 PMC3995649 PMC3056717 PMC3010981
    PMC2195773 PMC2909245 PMC2171478 PMC3349648 PMC3969724 PMC3063577 PMC3735524 PMC3232246 PMC3873999 PMC3668633
    PMC2063630 PMC2196260 PMC2359939 PMC2193513 PMC2137915 PMC2132684 PMC2993755 PMC2175135 PMC2920914 PMC2137917
    PMC1392235 PMC3510437 PMC2646669 PMC3181483 PMC2193463 PMC2920912 PMC2990700 PMC4014462 PMC2442201 PMC3219802
    PMC3264632 PMC2171279 PMC2843631 PMC3563647 PMC3938031 PMC2717138 PMC3272475 PMC3050850 PMC3410899 PMC3243670
    PMC116581 PMC2739106 PMC2677670 PMC3428324 PMC2172717 PMC3853361 PMC2199318 PMC2739719 PMC2199929 PMC2722575
    PMC3344940 PMC2199178 PMC3089553 PMC1887707 PMC3594291 PMC3029310 PMC1807973 PMC3351177 PMC3009730 PMC2642629
    PMC3548273 PMC3219950 PMC3230599 PMC3093431 PMC2921112 PMC3791224 PMC3577861 PMC3505728 PMC3210801 PMC2856675
    PMC1887683 PMC1519213 PMC2150668 PMC3272005 PMC2535625 PMC2833258 PMC3012146 PMC3230775 PMC1325201 PMC3032566
    PMC3022879 PMC2120994 PMC2944098 PMC3832248 PMC2644975 PMC1440772 PMC3715455 PMC2750221 PMC2120793 PMC1971124
    PMC2828647 PMC2330239 PMC3017127 PMC2929211 PMC3869375 PMC1590027 PMC2196396 PMC3032734 PMC2957917 PMC2761823
    PMC2873441 PMC2360050 PMC2644174 PMC3801471 PMC3549912 PMC553973 PMC3566099 PMC2794162 PMC2757918 PMC4022239
    PMC3792062 PMC3801437 PMC3763371 PMC2949799 PMC1183491 PMC3554898 PMC3813012 PMC3326670 PMC2141638 PMC3956975
    PMC4015990 PMC3791481 PMC3316627 PMC2694275 PMC3615008 #|PMC2753297|# PMC3148253 PMC2828807 PMC2132754 PMC2742444
    PMC2920880  PMC2192964 PMC2748937 PMC515295 PMC3902907 PMC2731169 PMC3002187 PMC2847151 PMC3155019 ;; PMC3016435 has a nil section suddenly
    PMC3002188 PMC3140544 PMC2806626 PMC2173149 PMC2173263 PMC2172499 PMC3116964 PMC2845071 PMC2118109 PMC3667761
    PMC3072457 PMC3315807 PMC3561302 PMC1064093 PMC3105394 PMC2516513 PMC2770482 PMC3172218 PMC3506457 PMC2064431
    PMC3167028 PMC4123297 PMC3885797 PMC2064439 PMC2172143 PMC2365427 PMC2119924 PMC3229474 PMC2072825 PMC2894944
    PMC3155308 PMC2195782 PMC2397538 PMC3037403 PMC3275091 PMC2195784 PMC4148113 PMC3941021 PMC3521847 PMC2801194
    PMC2175236 PMC3544810 PMC3410903 PMC3849521 PMC2120194 PMC1334193 PMC3257265 PMC1761701 PMC2856037 PMC3505834
    PMC2171987 PMC1945022 PMC3281867 PMC2688251 PMC2938265 PMC3442415 PMC2120693 PMC2816010 PMC2977078 PMC3573765
    PMC3092057 PMC3058055 #|PMC3330201|# PMC2910721 PMC4039235 PMC3541148 PMC3316618 PMC2194235 PMC3200337 PMC2653860
    PMC2172529 PMC2213113 PMC2777864 PMC3460441 PMC3466004 PMC2118591 PMC2854723 PMC2193563 PMC137934 PMC3795476
    PMC3114799 PMC3581604 PMC3032556 PMC2584136 PMC3360763 #|PMC3587705|# PMC3345340 PMC2362047 PMC3643583 PMC3032679
    PMC2360641 PMC1410911 PMC2192257 PMC2172297 PMC1885470 PMC3061860 PMC2064836 PMC2830670 PMC2741570 PMC2171597
    PMC2172350 PMC2603596 PMC3564006 PMC2699591 PMC3460538 PMC2441623 PMC3472074 PMC3430618 PMC3633911 PMC2249593
    PMC1669725 PMC3592994 PMC2729378 PMC3179746 PMC1892123 PMC2118145 PMC3087862 PMC1817693 PMC2063756 PMC2685831
    PMC2150768 PMC2360347 PMC2133104 PMC4014284 PMC2119313 PMC3245698 PMC2987584 PMC3393619 PMC2696683 PMC3111652
    PMC2364215 PMC3029394 PMC2936340 PMC2938387 PMC2577012 PMC2173908 PMC2908686 PMC2908683 PMC2173358 PMC2714862
    PMC3836728 PMC3245910 PMC3192247 PMC4022835 PMC516019 PMC3810642 PMC2427238 PMC4230785 PMC3661391 PMC3154041
    PMC2063726 PMC2920919 PMC3146484 PMC2947478 PMC3280209 PMC2211785 PMC2289101 PMC3527391 PMC2148200 PMC2151612
    PMC4174894 PMC3418684 PMC2010584 PMC3204078 PMC3307738 PMC1240691 PMC3994303 PMC3725175 PMC2990696 PMC3815131
    PMC2175200 PMC2169493 PMC2721872 PMC3823883 #|PMC3230772|# PMC2064017 PMC3005830 PMC4058076 PMC3362580 PMC3772867
    PMC2714665 PMC3498744 PMC2196001 PMC3262806 PMC420458 PMC1240281 PMC2592601 PMC2790897 PMC1363772 PMC3146489
    PMC3858192 PMC1635424 PMC3230443 PMC3101926 PMC3934890 PMC3474812 PMC2786891 PMC3154889 PMC3121916 PMC2779247
    PMC2173654 PMC2902519 PMC3309901 PMC3747153 PMC2139781 PMC2846939 PMC3297637 PMC3333883 PMC3734504 PMC3174176
    PMC3101176 PMC4289935 PMC1054881 PMC2116123 PMC3174178 PMC2172304 PMC2195877 PMC3350474 PMC3068019 PMC3226508
    PMC2173613 PMC3118333 PMC2722734 PMC4150800 PMC2944884 PMC2789045 PMC3922905 PMC2064837 PMC3226468 PMC2199218
    PMC3261948 PMC2175150 PMC3827269 PMC2680824 PMC2966438 PMC2193052 PMC3440368 PMC2193724 PMC2173856 PMC2996328
    PMC2139940 PMC2928679 PMC2213442 PMC3524246 PMC3954820 PMC3055126 PMC2635715 PMC3317662 PMC2877094 PMC2712958
    #|PMC3113797|# PMC2141701 PMC2191527 PMC3641356 PMC3089458 PMC2120440 PMC3177200 PMC2150849 PMC2120444 PMC3114812
    PMC1519399 PMC117437 PMC3787382 PMC2168101 PMC2854722 PMC3348883 PMC2063764 PMC3500352 PMC2033725 PMC3113733
    PMC2213302 PMC3261204 PMC2997772 PMC3080931 PMC2606960 PMC2064443 PMC3973334 PMC3559880 PMC3583389 PMC3680435
    PMC4016758 PMC2363329 PMC3747992 PMC3495968 PMC4142620 PMC179877 PMC1080125 PMC3114815 PMC2171843 PMC2875002
    PMC3038151 PMC1215486 PMC2655672 PMC3235537 PMC3630140 PMC2453161 PMC2927601 PMC3230400 PMC1241436 PMC3442408
    PMC4105133 PMC3799453 PMC3059992 PMC3790830 PMC1388210 PMC2645823 PMC2991640 PMC2364155 PMC2553404 PMC2576143
    PMC3574134 PMC3191154 PMC3380337 PMC546130 PMC3534123 PMC441372 PMC2625402 PMC3105099 PMC2965105 PMC3503774
    PMC2199605 PMC3159447 PMC3159440 PMC3114773 PMC2823686 PMC3517545 PMC2195727 PMC2173027 PMC3819391 PMC2953494
    PMC1242125 PMC1557814 PMC2797325 PMC3310874  PMC2119771 PMC3225357 PMC2947193 PMC2192070 PMC3446440 ;; PMC2628114 has an error on a NIL section
    PMC3012168 PMC3108981 PMC2193648 PMC2828913 PMC1241107 PMC2925892 PMC2360314 PMC2133028 PMC3432093 PMC3402424
    PMC3382602 PMC3958483 PMC2958479 PMC2833159 PMC2685838 PMC2695476 PMC2808231 PMC2150692 PMC3481123 PMC2808332
    PMC3565010 PMC3022623 PMC2737022 PMC2831952 PMC3471844 PMC3820564 PMC2656512 PMC3515620 PMC2581570 PMC2063867
    PMC2628450 PMC128815 PMC3164452 PMC2156142 PMC2169473 PMC3601961 PMC2761263 PMC3491199 PMC3110823 PMC2175099
    PMC3175348 PMC4125734 PMC3316545 PMC2063732 PMC2150699 PMC2990590 PMC2279807 PMC2213310 PMC2685833 PMC3963982
    PMC2912359 PMC2605188 PMC2994897 PMC4002724 PMC2729407 PMC1367840 PMC2173366 PMC2766837 PMC2821400 PMC2536736
    PMC1472668 PMC2195994 PMC2883946 PMC3339464 PMC3514159 PMC1262692 PMC1552024 PMC3310405 PMC4169382 PMC3003513
    PMC3365763 PMC1524803 PMC1298925 PMC2828485 PMC2754075 PMC4053140 PMC3871647 PMC3270271 PMC2699124 PMC2193010
    PMC2405801 PMC3078595 PMC3757249 PMC3542123 PMC3170684 PMC3164695 PMC3626705 PMC2964546 PMC3836402 PMC2747300
    PMC3271076 PMC2879254 PMC3847076 PMC2684528 PMC3302736 PMC3382150 PMC2898035 PMC2731218 PMC3734074 PMC3207919
    PMC3965384 PMC2022656 PMC1660546 PMC4075283 PMC2535623 PMC2290923 PMC3179824 PMC3936002 PMC2173663 PMC2887745
    PMC2118199 PMC1838569 PMC2453151 PMC2198989 PMC2211968 PMC3609790 PMC2246799 PMC3479211 PMC2212798 PMC2172010
    PMC2132848 PMC2120929 PMC2722991 PMC2064283  PMC3054733 PMC2995822 PMC1790953 PMC2199737 PMC2906322 ;; PMC3232389 nill section
    PMC2412888 PMC3843635 PMC2721907 PMC3866142 PMC3288342 PMC555773 PMC2997682 PMC2137827 PMC2680336 PMC3123118
    PMC3443255 PMC3262900 PMC2868184 PMC4132782 PMC3922974 PMC3161894 PMC3161956 PMC2442316 PMC2749993 PMC2171339
    PMC2831819 PMC2933903 PMC3104363 PMC2453154 PMC2172904 PMC3312407 PMC3733915 PMC3537119 PMC2785482 PMC2850929
    PMC3298424 PMC3941044 PMC2937318 PMC3908400 PMC3045404 PMC2500136 PMC2173124 PMC3570550 PMC2022642 ;; PMC2678693
    PMC2645484 PMC2500138 PMC2715194 PMC2175134 PMC2429913 PMC2564829 PMC3281112 PMC3404671 PMC3098013 PMC3541368
    PMC3077382 PMC2763855 PMC3660582 PMC2132561 PMC544559 PMC2148175 PMC3620745 PMC2174329 PMC3146467 PMC2858155
    PMC3205716 PMC2174325 PMC2847224 PMC2173232 PMC2360392 PMC2075366 PMC2376778 PMC2173260 PMC3121875 PMC2172443
    PMC3020987 PMC4021555 PMC2291169 PMC1410767 PMC3290753 PMC3511455 PMC2566891 PMC3718631 PMC2171568 PMC3091842
    PMC2175144 PMC2675063 PMC3257205 PMC2173627 PMC2888180 PMC2192136 PMC3516555 PMC3868703 PMC3438345 PMC3855176
    PMC2217510 PMC400660 PMC2133946 PMC2726943 PMC2132962 PMC2199204 PMC3691153 PMC2813276 PMC2946519 PMC2804573
    PMC1557813 PMC3113296 PMC3251601 PMC324395 PMC2688529 PMC2994384 PMC3032768 PMC2192711 PMC2193493 ;;PMC3149112
    PMC3511337 PMC1278483 PMC2377423 PMC2195632 PMC2185562 PMC2132733 PMC1389847 PMC3503985 PMC3143468 PMC212280
    PMC3869942 PMC3784415 PMC3085367 PMC3602027 PMC3031576 PMC1568319 PMC2939154 PMC3439360 PMC3020727 PMC3317798
    PMC3861392 PMC3522295 PMC2695544 PMC3160837 PMC1310924 PMC3284550 PMC2976705 PMC2172473 PMC4007498 PMC4140278
    PMC3634069 PMC3195632 PMC1533034 PMC3750005 PMC2945990 PMC3141773 PMC2120395 PMC3673198 PMC1797194 PMC2132943
    PMC3559583 PMC3024879 PMC2845649 PMC3605323 PMC3377538 PMC3172902 PMC3767789 PMC2191307 PMC3061875 PMC3081413
    PMC3103541 PMC1236941 PMC3002266 PMC3250952 PMC2737013 PMC3031258 PMC2173831 PMC2815648 PMC2950401 PMC3781473
    PMC3219681 PMC3037495 PMC3144586 PMC3630224 PMC2172172 PMC2920443 PMC3412823 PMC2192574 PMC2991596 PMC2806839
    PMC1181826 PMC3460910 PMC2992316 PMC1552016 PMC2841713 PMC3307762 PMC2651805 PMC2289443 PMC2361137 PMC2217496
    PMC2685101 PMC2685103 PMC3366078 PMC2988979 PMC2396950 PMC2864218 PMC3001855 PMC3704531 PMC2132927 PMC1199589
    PMC2275666 PMC1852663 PMC3564758 PMC1240696 PMC2173505 PMC3774751 PMC2940320 PMC2854771 PMC2741604 PMC3292581
    PMC2832735 PMC1804119 PMC3405501 PMC2120613 PMC2964733 PMC3341364 PMC3462778 PMC3553141 PMC1894988 PMC2778353
    PMC1242079 PMC2120229 PMC2820822 PMC2464751 PMC2967504 PMC2546361 PMC4069685 PMC31577 PMC2835741 PMC2063141
    PMC2777869 PMC4002979 PMC1280403 PMC3041914 PMC3153384 PMC2171879 PMC2999618 PMC2139813 PMC3032325 PMC2139818
    PMC3920452 PMC2277492 PMC3522594 PMC4013076 PMC3569692 PMC3081346 PMC3503718 PMC3289600 PMC2195705 PMC3070685
    PMC1331983 PMC2852416 PMC1401512 PMC4045772 PMC3943677 PMC3082902 PMC2656239 PMC1297562 PMC3009749 PMC3517581
    PMC3386200 PMC2781463 PMC2139967 PMC549549 PMC3341166 PMC3202554 PMC1413977 PMC3332081 PMC4007333 PMC3712487
    PMC1469315 PMC314469 PMC2840219 PMC2172328 PMC2064591 PMC2848011 PMC3406069 PMC3775815 PMC1899183 PMC2196192
    PMC3303840 PMC2364237 PMC2188328 PMC2702405 PMC3095899 PMC1142323 PMC3101135 PMC3041734 PMC2729519 PMC2760858
    PMC1638308 PMC2845735 PMC3258170 PMC3596254 PMC3596251 PMC2771680 PMC3307315 PMC3042928 PMC3063136 PMC2150726
    PMC139997 PMC3414710 PMC4303119 PMC2193021 PMC2063980 PMC324401 PMC1940015 PMC2909902 PMC2148061 PMC2868571
    PMC2422857 PMC2173479 PMC2064505 PMC2064504 PMC3954878 PMC2704372 PMC3245278 PMC2118656 PMC2234022 PMC3271441
    ))



;;;---------------
;;; Example texts
;;;---------------

(defun figure-7 ()
  ;; of Turke et al. "MKE inhibition leads ..."
  ;; Caption of figure seven  on page 20 minus the portion in bold
  (p "In untreated cells, EGFR is phosphorylated at T669 by MEK/ERK,
which inhibits activation of EGFR and ERBB3. In the presence of AZD6244,
ERK is inhibited and T669 phosphorylation is blocked, increasing
EGFR and ERBB3 tyrosine phosphorylation and up-regulating downstream signaling."))

(defun empty-this-mutant () ;; for ticket 12
  ;; it's p85<alpha> though its not rinting like one
  (p "Thus, we introduced the same mutations (R358A and R649A in 
the FLVRD/E motif of each of the SH2 domains of p85ﰀ) to generate 
the EGFP–p85ﰀ RARA mutant. As expected, although this mutant 
bound the PI 3-kinase p110 catalytic sub- unit normally, 
it could no longer bind tyrosine-phosphorylated IRS-1 
after IGF-1 stimulation."))

(defun cells-defNP ()
  ;; from the December passages, sentences 17 and 18
  (p "BRAF is not active and is not required for MEK/ERK activation
in RAS mutant cells.
Nevertheless, BRAF inhibitors hyperactivate CRAF and MEK in these cells."))

#| Reactome http://www.reactome.org/PathwayBrowser/#DIAGRAM=177929&ID=179467&PATH=162582
  "Gab1 binds phosphatidylinositol-3,4,5-trisphosphate"
  "The pleckstrin homology (PH) domain of GAB1 binds to PIP3 and 
   can target GAB1 to the plasma membrane in response to 
   EGF stimulation. This mechanism provides a positive feedback loop
   with respect to PI3K activation, to enhance EGFR signalling."
|#

#| From Reactome. Descrption of "SPRED dimer binds NF1"
Sprouty-related proteins (SPRED) 1, 2 and 3 are negative regulators
of the MAPK pathway that act at least in part by recruiting
the RAS GAP protein neurofibromin 1 (NF1) to the plasma membrane
(Kato et al, 2003; King et al, 2006; Stowe et al, 2012).
NF1, a negative regulator of RAS is a tumor suppressor that is mutated
in the familial cancer syndrome neurofibromatosis I as well as
in sporadic cases of glioblastoma, non-small cell lung cancers,
neuroblastoma and melanoma (Martin et al, 1990; Bollag et al, 1996;
reviewed in Bollag and McCormick, 1992; Maertens and Cichowski, 2014).

Plasma membrane-association of the SPRED proteins themselves depends on
the C-terminal SPR domain. Mutations in this region abrogate membrane localization
of the protein (King et al, 2005; Stowe et al, 2012).
Membrane association may also be promoted by interaction of the SPRED proteins
with RAS (Wakioka et al, 2001).
Interaction with NF1 is mediated by the SPRED EVH1 domain, and mutations
in this region affect both NF1 recruitment and the ability of SPRED and NF1 proteins
to negatively regulate RAS pathway activity (Stowe et al, 2012;
reviewed in McClatchey and Cichowski, 2012).
|#

;; Another Reactome example. MAB's emai of 8/24/15 13:04
(defun inactive-ras ()
  (p "Inactive p21ras:GDP is anchored to the plasma membrane by a farnesyl
residue. Insulin stimulation results in phosphorylation of IRS1/2 on
tyrosine residues. GRB2 binds the phosphotyrosines via its SH2 domain.
As IRS is phosphorylated by the insulin receptor near to the plasma
membrane, the GRB2:SOS1:IRS interaction brings SOS1 and p21 Ras into
close proximity."))

;;; The Ubiquitous Co-Reference Problem
#|
http://journals.plos.org/plosbiology/article?id=10.1371/journal.pbio.0030011
;; Title
A Signaling Pathway Involving TGF-β2 and Snail in Hair Follicle Morphogenesis.
;; sentence 5
We found that transforming growth factor β2 signaling 
is necessary to transiently induce the transcription factor Snail 
and activate the Ras-mitogen-activated protein kinase (MAPK) pathway 
in the bud.
;; sentence 9
This novel signaling pathway further weaves together the web of 
different morphogens and downstream transcriptional events that 
guide hair bud formation within the developing skin.
;; sentence 32
α-Catenin also binds to the class III Lin-1, Isl-1, Mec-3 (LIM) 
protein Ajuba (a member of the zyxin family of proteins), 
which appears to function dually in both adhesion and 
in activation of the Ras-mitogen-activated protein kinase (MAPK) pathway.
;; sentence 127
If the competition between Grb-2/Sos and α-catenin for Ajuba 
is functionally relevant to the hyperproliferative state 
of a keratinocyte, then overexpression of Ajuba would be expected 
to bypass the competition and promote activation of the Ras-MAPK pathway 
in WT keratinocytes. 
;; sentence 133
These data suggested that by elevating cytosolic Ajuba levels, 
Ajuba's pre-LIM domain may associate with Grb-2/Sos in a manner 
that stimulates its nucleotide exchange activity and leads to 
activation of the Ras-MAPK pathway.
;; sentence 134
Although this pathway provides one mechanism by which Snail expression 
and proliferation may be coupled in skin epithelium, proliferative 
circuitries involving AJs are known to be complex 
and often interwoven.
;; sentence 176
Thus, although the pathway mediated by TGF-β2 signaling impacts 
the earliest step of epithelial invagination, 
it does not appear to be essential for bud morphogenesis. 
;; Discussion, P2 sentence 192
Further investigation will be required to determine whether 
the signaling pathway we have elucidated here is a theme 
with multiple variations.  |#

;;  (p *brent-story*)
(defparameter *brent-story*
"Ras is a membrane bound protein.
When inactive, it is bound to the small molecule GDP.
Upon growth factor stimulation of the cell, an exchange factor,
such as the SOS protein,
causes ras to release GDP and and ras will now bind to GTP.
Binding to GTP causes a conformational change of the ras protein
that puts ras into the active state.
GTP-bound ras binds to the raf protein kinase.
This binding of raf to ras has the effect of
activating the raf kinase
and localizing the raf kinase to the cell membrane.
Activated raf now phosphorylates and activates the Mek1 kinase.
The Mek1 kinase then phosphorylates the ERK kinase
on both threonine and tyrosine residues
which activate ERK kinase activity.
The phosphorylated ERK protein then translocates to the nucleus
where it regulates gene expression
in part by phosphorylating the Elk1 transcription factor.
Phospho-Elk then upregulates the gene expression of target genes
such as the proto-oncogene c-fos.
The entire signaling cascade is terminated by
the intrinsic GTPase activity of ras
which hydrolyzes the bound GTP into GTP,
thus returning ras to the GDP bound state
where it releases bound raf.
The GTPase activity of ras is accelerated
by interaction with another protein called GAP.
The oncogenic rasv12 mutant has diminished GTPase activity
and therefore stays in the active GTP bound state constitutively.
Deletion of GAP or the related NF1 genes will also enhance ras activity
by slowing the rate of ras-GTP hydrolysis.")


(defun russ ()
  (p "Importantly, the association between β-Trcp and β-catenin depended on
the four serine/threonine residues at the amino terminus of β-catenin,
as β-catenin (S→A), which is a mutant β-catenin with alanine substitutions
 of these serine/threonine residues (see Fig.4A),
completely lost the ability to associate with β-Trcp (Fig. 1 A and B)."))
#| Very first pass after translating the arrow as a hyphen


Unpacking #<word "substitution">
  it is an unambiguous noun
Unpacking #<word "see">
  it is ambiguous between (noun verb)
Unpacking #<word "lose">
  it is an unambiguous verb
[importantly], [ the association] between [ β-trcp and β-catenin]
[ depended] on [the four serine/threonine residues] at
[ the] amino [ terminus] of [ β-catenin],
as [ β-catenin] (s-a), which [ is][ a mutant β-catenin]
with [ alanine substitutions] of [ these serine/threonine residues]
(see fig.4a), [completely lost][ the ability] to [ associate] with [ β-trcp]

                    source-start
e132  ADVERB        1 "importantly ," 3
e102  BIO-ASSOCIATE 3 "the association" 5
e131  BETWEEN       5 "between β - trcp and β - catenin" 13
e130  DEPEND        13 "depended on the four serine / threonine residues" 21
e128  AT            21 "at the" 23
e25                 "amino"
e26 e27             "terminus" :: #<word "terminus">, PROTEIN-TERMINUS
e127  OF            25 "of β - catenin" 29
e32                 "COMMA"
e126  AS            30 "as β - catenin ( s - a ) , which is a mutant β - catenin" 47
e121  WITH          47 "with alanine substitutions" 50
e120  OF            50 "of these serine / threonine residues ( see fig . 4 a )" 63
e72                 "COMMA"
e111  LOSE          64 "completely lost" 66
e119  ABILITY       66 "the ability to associate with β - trcp ( fig . 1 a and b )" 82
                    period
                    end-of-source
|#

;;----- phrases from the 12/3/14 Darpa trainng data
;
; (p "at Lys residues 104 and 147 of K-Ras, and Lys residues 117, 147 and 170 for H-Ras.")

;; "J" for Julie

(defun j1 ()
  (p "The most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are KRAS, PIK3CA and BRAF."))
#|
[the most frequently mutated oncogenes] in [ the deadliest cancers]

[ responsible] for [ human mortality][ are][ kras, pik3ca and braf]
e35   BE   1 "the most frequently mutated oncogenes in the deadliest cancers responsible for human mortality are kras , pik 3 ca and braf" 22
           period
5/26/15
e28   ONCOGENE      1 "the most frequently mutated oncogenes" 6
e34   IN            6 "in the deadliest cancers responsible" 11
e32   FOR           11 "for human mortality" 14
e17   BE            14 "are" 15
e24   PROTEIN       15 "kras , pik 3 ca and braf" 22
 |#

(defun j2 ()
  (p "Importantly the signaling enzymes encoded by PIK3CA and BRAF are, in part, regulated by direct binding to activated forms of the Ras proteins suggesting that dysregulation of this key step in signaling is critical for tumor formation. "))
#|  5/26/15
[importantly][ the signaling enzymes][ encoded] by [ pik3ca and braf]
[ are, in part, regulated] by [ direct binding] to [ activated][ forms]
of [ the ras proteins][ suggesting] that [ dysregulation] of [ this key step]
 in [ signaling][ is critical] for [ tumor formation]

e0    IMPORTANTLY   1 "importantly" 2
e55   ENZYME        2 "the signaling enzymes" 5
e5    ENCODE        5 "encoded" 6
e72   BY            6 "by pik 3 ca and braf" 12
e71   REGULATE+ED   12 "are , in part , regulated by direct binding" 21
e22 e23             "to" :: #<word "to">, TO
e24   BIO-ACTIVATE  22 "activated" 23
e69   FORM          23 "forms of the ras proteins" 28
e32   SUGGEST       28 "suggesting" 29
e33 e34             "that" :: #<word "that">, THAT
e67   DYSREGULATE   30 "dysregulation of this key step" 35
e65   IN            35 "in signaling" 37
e63   CRITICAL      37 "is critical" 39
e64   FOR           39 "for tumor formation" 42

|#

(defun j3 ()
  (p "Ras acts as a molecular switch that is activated upon GTP loading and deactivated upon hydrolysis of GTP to GDP."))
#|  [ras][ acts] as [ a molecular switch] that [ is activated]
upon [ gtp loading] and [ deactivated] u
pon [ hydrolysis] of [ gtp] to [ gdp]

e31   ACT                     1 "ras acts as a molecular switch" 7
e9                               "that"
e33   ACTIVATE                8 "is activated upon" 11
e30   LOAD                    11 "gtp loading" 13
e16 e17                          "and" :: and, AND
e32   DEACTIVATE              14 "deactivated upon" 16
e28   HYDROLYSIS              16 "hydrolysis of gtp to gdp" 21

5/26/15
e40   BIO-ACT       1 "ras acts" 3
e39   AS            3 "as a molecular switch that is activated upon gtp loading" 13
e16   AND           13 "and" 14
e17   DEACTIVATE    14 "deactivated" 15
e34   UPON          15 "upon hydrolysis of gtp to gdp" 21
|#

(defun j4 ()
  (p "This switch mechanism is common to a wide variety of GTP-binding proteins and is mediated by a conserved structure called the G-domain that consists of five conserved G boxes."))
#| [this switch mechanism][ is][ common] to [ a wide variety] of [ gtp-binding proteins]
   and [ is mediated] by [ a conserved structure][ called][ the g-domain][ that consists] of
   [ five conserved g boxes]
Hits new cases in the second pass, but before that we got:
e45   BE                      1 "this switch mechanism is" 5
e6 e7                            "common" :: common, MODIFIER
e51   TO                      6 "to a wide variety" 10
e47   OF                      10 "of gtp - binding proteins" 15
e21 e22                          "and" :: and, AND
e50   MEDIATE+ED              16 "is mediated by a conserved structure" 22
e48   CALL                    22 "called the g - domain" 27
e36                              "that"
e37   CONSISTS                28 "consists" 29
e46   OF                      29 "of five conserved g boxes" 34
                                period
5/26/15
e66   COMMON        1 "this switch mechanism is common to a wide variety" 10
e63   OF            10 "of gtp - binding" 14
e18   PROTEIN       14 "proteins" 15
e19   AND           15 "and" 16
e54   MEDIATE+ED    16 "is mediated" 18
e62   BY            18 "by a conserved structure" 22
e30   CAL           22 "called" 23
e57   BIO-ENTITY    23 "the g - domain" 27
e36 e37             "that" :: #<word "that">, THAT
e38   CONSIST       28 "consists" 29
e61   OF            29 "of five conserved g boxes" 34
                    period
|#

(defun j5 ()
  (p "Under physiological conditions, the rate of GDP or GTP release from the G-domain is slow."))
#|
under [ physiological conditions], [ the rate] of [
 gdp or gtp][ release] from [ the g-domain][ is slow]

e24   UNDER                   1 "under physiological conditions" 4
e4                               "COMMA"
e30   RATE-OF-PROCESS         5 "the rate of gdp or gtp release from the g - domain is slow" 19
                                 period
5/26/15
e30   UNDER         1 "under physiological conditions" 4
e5                  "COMMA"
e25   PROCESS-RATE  5 "the rate" 7
e29   OF            7 "of gdp or gtp" 11
e14   MOLECULE-RELEASE  11 "release" 12
e28   FROM          12 "from the g - domain" 17
e27   QUALITATIVE-RATE  17 "is slow" 19
 |#

(defun j6 ()
  (p "As a consequence the GDP produced by GTP hydrolysis on Ras is trapped and the bulk of cellular Ras accumulates in the GDP-bound ‘off’ state, despite the high GTP/GDP ratio in the cytosol (1–3)."))
#| [as a consequence][ the gdp][ produced] by [ gtp hydrolysis] on [ ras]
[ is trapped] and [ the bulk] of [ cellular ras][ accumulates] in
[ the gdp-bound] 'off' [ state], despite [ the high gtp/gdp ratio] in [ the cytosol]
5/26/15
e1    AS A CONSEQUENCE  1 "as a consequence" 4
e57   NUCLEOTIDE    4 "the gdp" 6
e5    PRODUCE       6 "produced" 7
e76   BY            7 "by gtp hydrolysis on ras" 12
e59   TRAP          12 "is trapped" 14
e15   AND           14 "and" 15
e61   BULK-KIND     15 "the bulk" 17
e73   OF            17 "of cellular ras" 20
e24   ACCUMULATION  20 "accumulates" 21
e72   IN            21 "in the gdp - bound" 26
e71   OFF           26 "' off ' state" 30
e36                 "COMMA"
e37   DESPITE       31 "despite" 32
e70   RATIO         32 "the high gtp / gdp ratio in the cytosol ( 1 - 3 )" 46
                    period

|#

(defun j7 ()
  (p "Growth factors can turn on Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms."))
#|
[growth factors][ can turn] on [ ras] by [ activating][ guanine nucleotide
exchange factors] (gefs) or by [ inhibiting][ the gtpase activating proteins]
(gaps) or by [ both mechanisms]

    Fix comma-delimited-list to write a better edge so it will print nicely.
    Make 'both' active
e46   TURN                    1 "growth factors can turn on ras by activating guanine nucleotide exchange factors ( gefs ) or by inhibiting the gtpase activating proteins ( gaps ) or by both mechanisms" 30
e34                              "PERIOD"

5/26/15
e41   TURN-ON       1 "growth factors can turn on ras" 7
e43   BY            7 "by activating guanine nucleotide exchange factors ( gefs ) or by inhibiting the gtpase activating proteins ( gaps ) or by both mechanisms" 30
|#

(defun j8 ()
  (p "RasGEFs bind to Ras and lower the transition energy for the nucleotide exchange of the bound GDP for the more abundant cytosolic GTP, whereas RasGAPs bind to Ras and catalyze GTP hydrolysis. "))
#|  [rasgefs][ bind] to [ ras] and [ lower][ the transition] energy
for [ the nucleotide exchange] of [ the bound gdp] for
[ the more abundant cytosolic gtp], whereas [ rasgaps][ bind] to
[ ras] and [ catalyze][ gtp hydrolysis]

e63   BINDING       1 "rasgefs bind to ras" 5
e5    AND           5 "and" 6
e6    LOWER         6 "lower" 7
e44   TRANSITION    7 "the transition" 9
                    "energy"
e60   FOR           10 "for the nucleotide exchange" 14
e59   OF            14 "of the bound gdp" 18
e58   FOR           18 "for the more abundant cytosolic gtp" 24
e31                 "COMMA"
e32   WHEREAS       25 "whereas" 26
e57   BINDING       26 "rasgaps bind to ras" 30
e38   AND           30 "and" 31
e54   CATALYSIS     31 "catalyze gtp hydrolysis" 34
|#

(defun j9 ()
  (p "The most prevalent oncogenic mutations in Ras (Gly12 and Gly13 in the G1 box, and Gln61 in the G3 box) preserve the GTP bound state by inhibiting intrinsic GTPase activity and by interfering with the ability of GAPs. "))
#|  [the most prevalent oncogenic mutations] in [ ras] (gly12 and gly13 in the g1 box,
 and gln61 in the g3 box) [ preserve][ the gtp][ bound][ state]
 by [ inhibiting][ intrinsic gtpase activity] and by [ interfering] with [ the ability] of [ gaps]
5.26/15
e98   MUTATE        1 "the most prevalent oncogenic mutations in ras ( gly 12 and gly 13 in the g 1 box , and gln 61 in the g 3 box )" 29
e38   PRESERVE      29 "preserve" 30
e96   BINDING       30 "the gtp bound state by inhibiting intrinsic gtpase activity" 39
e51   AND           39 "and" 40
e91   BY            40 "by interfering" 42
e90   WITH          42 "with the ability of gaps" 47
                    period

|#
(defun j10 ()
  (p "Other less frequently observed mutations, such as those found in the G4 and G5 boxes, increase the rate of nucleotide exchange, thereby mimicking the GEFs and increasing the GTP-bound state (1–7)."))
#|  [other less frequently observed mutations], such as [ those found] in [ the g4 and g5 boxes],
[ increase][ the rate] of [ nucleotide exchange],
[ thereby mimicking][ the gefs] and [ increasing][ the gtp-bound state]
5/26/15
e54   MUTATE        1 "other less frequently observed mutations" 6
e5                  "COMMA"
e70   SUCH AS       7 "such as those found" 11
e69   IN            11 "in the g 4 and g 5 boxes" 19
e21                 "COMMA"
e68   INCREASE      20 "increase the rate of nucleotide exchange" 26
e31                 "COMMA"
e60   MIMICK        27 "thereby mimicking" 29
e61   PROTEIN       29 "the gefs" 31
e37   AND           31 "and" 32
e65   INCREASE      32 "increasing the gtp - bound state ( 1 - 7 )" 43
                    period

|#

(defun d1 () ;; "d" for Denver
  (p "Mitogen-induced signal transduction is mediated by a cascade of protein phosphorylation and dephosphorylation."))
(defun d2 ()
  (p "One of the immediate responses of mitogen stimulation is the activation of a family of protein kinases known as mitogen-activated protein kinase or extracellular signal-regulated kinase (ERK)."))
(defun d3 ()
  (p "MEK (MAP kinase or ERK kinase) is the immediate upstream activator kinase of ERK."))
(defun d4 ()
  (p "Two cDNAs, MEK1 and MEK2, were cloned and sequenced."))
(defun d5 ()
  (p "MEK1 and MEK2 encode 393 and 400 amino acid residues, respectively."))
(defun d6 ()
  (p "The human MEK1 shares 99% amino acid sequence identity with the murine MEK1 and 80% with human MEK2."))
(defun d7 ()
  (p "Both MEK1 and MEK2 were expressed in Escherichia coli and shown to be able to activate recombinant human ERK1 in vitro."))
(defun d8 ()
  (p "The purified MEK2 protein stimulated threonine and tyrosine phosphorylation on ERK1 and concomitantly activated ERK1 kinase activity more than 100-fold."))
(defun d9 ()
  (p "The recombinant MEK2 showed lower activity as an ERK activator as compared with MEK purified from tissue."))
(defun d10 ()
  (p "However, the recombinant MEK2 can be activated by serum-stimulated cell extract in vitro."))
(defun d11 ()
  (p "MEKs, in a manner similar to ERKs, are likely to consist of a family of related proteins playing critical roles in signal transduction."))


;; 8/30/14
#| 8. Growth factors can turn on Ras by activating Guanine nucleotide
Exchange Factors (GEFs) or by inhibiting the GTPase Activating
Proteins (GAPs) or by both mechanisms. |#
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors (GEFs) or by inhibiting the GTPase Activating Proteins (GAPs) or by both mechanisms.")
;; /// substitute "activate" for "turn on" so can develop the
;; island forest parser without having to fix the problems with the
;; present verb+prep treatment first.
; (p "Growth factors can activate Ras by activating Guanine nucleotide Exchange Factors or by inhibiting the GTPase Activating Proteins or by both mechanisms.")
;; /// pull out the parentheses because something is inhibiting their interior's analysis




;  8/11/14 Sweep through everything and scoop up all the bio-entities
; (setq *kind-of-chart-processing-to-do* :r3-entity-sweep)

;;  8/22/14 Need to tweak ordering so the full caps hack doesn't do
;  the PIK of PIK3CA before the no-space can get it.
;  Also, full-caps doesn't look for the set already having been defined
;   and caps is wrong on no-space cases, e.g. pik3ca
;  Also doesn't see cases like GTPase, and gets false positives from
;  the references "1-7" and the apostostrophe before off in 'off'

;; 8/27/14
; *peek-rightward* is t. Presumably from Strider. Used in segment-finished
; do we want it in general?
;
; (trace-ns-sequences)  (p "Sunday R1. Tuesday R2.")
;;  The final period is correctly omitted from the no-space name,
;;  but the interior period is being swallowed.

; (setq *dbg-print* t)  (setq *debug-segment-handling* t)

;; 7/9/14
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3. This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")
; (p "Phosphorylated Ser1507 on APC can prime a phosphorylation of Ser1503 by GSK-3.")
; (p "This scheme accounts for the presence of the six phosphates found in the mass spectroscopic analysis of in vitro-phosphorylated R3.")


;; 6/9/14
; (just-bracketing-setting)
; (just-bracketing-with-comlex-setting)
; (setq *break-on-new-bracket-situations* nil)  ;; get some early on
; punted on split over buffers in actual-characters-of-word
; (setq *edge-for-unknown-words* nil)
; (setq *do-forest-level* nil) ;; not noticing all the periods because the return
;    and such aren't well-enough debugged.


; (setq *permit-extra-open-parens* t)
;? (f "/Users/ddm/ws/Sparser local/corpus/LarryHunterBioBook/BeingAlive.textsource")


; (word-frequency-setting)
; (setq *stem-words-for-frequency-counts* nil)
; (initialize-word-frequency-data)
; (f "/Users/ddm/sift/nlp/corpus/biology/hallmarks.txt")
;; Added fair number of characters to analyzers/tokenizer/alphabet.lisp
;; 2,902 unique words in 23,973 words
#|
took 74,471 microseconds (0.074471 seconds) to run.
      2,917 microseconds (0.002917 seconds, 3.92%) of which was spent in GC.
During that period, and with 8 available CPU cores,
     79,797 microseconds (0.079797 seconds) were spent in user mode
      1,607 microseconds (0.001607 seconds) were spent in system mode
 2,284,960 bytes of memory allocated.

|#


;; 2/27/14
; The greek characters are in -- entry-for-out-of-band-character --
;; 4/19/14
; Something has changed oddly whereby a kappa in this file is coming out
; as the combination of #\Latin_Capital_Letter_I_With_Circumflex with
; #\Masculine_Ordinal_Indicator when passed to the parser.
; Eyeballing the string shows a kappa. Describing it reveils that pair
; rather than a kappa.

;; 2/25/14 Have to remove SGML rules, e.g. for 'p' unless it's ok w/in ns-sequences
(defun remove-paragraph-marker ()
  (let ((rule (find-cfr 'sgml-label '("p"))))
    (when rule
      (delete/cfr rule))))

;; From 15677466
(defvar *pc* "The processing of the nfκb2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-κB. We previously demonstrated that this tightly controlled event is regulated positively by NF-κB-inducing kinase (NIK) and its downstream kinase, IκB kinase α (IKKα).
However, the precise mechanisms by which NIK and IKKα induce p100 processing remain unclear.
Here, we show that, besides activating IKKα, NIK also serves as a docking molecule recruiting IKKα to p100.
This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100.
We also show that, after being recruited into p100 complex, activated IKKα phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872).
The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the β-TrCP ubiquitin ligase and 26 S proteasome, respectively.
These results highlight the critical but different roles of NIK and IKKα in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing.
These data also provide the first evidence for explaining why overexpression of IKKα or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."
  "target paragraph for proposal")

(defun kappa-1 ()
  ;; Rewrite of *pc* without the greek letters to get around 4/19 wierdness
  (p "The processing of the nfkappab2 gene product p100 to generate p52 is a regulated event, which is important for the instrumental function of NF-kappaB."))
(defun kappa-2 ()
  (p "We previously demonstrated that this tightly controlled event is regulated positively by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha)."))
;; (delete-cfr remain-in-job ("remain"))  -- don't include *job-events* or *isr*
(defun kappa-3 ()
  (p "However, the precise mechanisms by which NIK and IKKalpha induce p100 processing remain unclear."))
(defun kappa-4 ()
  (p "Here, we show that, besides activating IKKalpha, NIK also serves as a docking molecule recruiting IKKalpha to p100."))
(defun kappa-5 ()
  (p "This novel function of NIK requires two specific amino acid residues, serine 866 and serine 870, of p100 that are known to be essential for inducible processing of p100."))
(defun kappa-6 ()
  (p "We also show that, after being recruited into p100 complex, activated IKKalpha phosphorylates specific serines located in both N- and C-terminal regions of p100 (serines 99, 108, 115, 123, and 872)."))
(defun kappa-7 ()
  (p "The phosphorylation of these specific serines is the prerequisite for ubiquitination and subsequent processing of p100 mediated by the beta-TrCP ubiquitin ligase and 26 S proteasome, respectively."))
(defun kappa-8 ()
  (p "These results highlight the critical but different roles of NIK and IKKalpha in regulating p100 processing and shed light on the mechanisms mediating the tight control of p100 processing."))
(defun kappa-9 ()
  (p "These data also provide the first evidence for explaining why overexpression of IKKalpha or its activation by many other stimuli such as tumor necrosis factor and mitogens fails to induce p100 processing."))


(defvar *nkf2* "Processing of NF-kappaB2 precursor protein p100 to generate p52 is tightly controlled, which is important for proper function of NF-kappaB. Accordingly, constitutive processing of p100, caused by the loss of its C-terminal processing inhibitory domain due to nfkappab2 gene rearrangements, is associated with the development of various lymphomas and leukemia. In contrast to the physiological processing of p100 triggered by NF-kappaB-inducing kinase (NIK) and its downstream kinase, IkappaB kinase alpha (IKKalpha), which requires the E3 ligase, beta-transducin repeat-containing protein (beta-TrCP), and occurs only in the cytoplasm, the constitutive processing of p100 is independent of beta-TrCP but rather is regulated by the nuclear shuttling of p100. Here, we show that constitutive processing of p100 also requires IKKalpha, but not IKKbeta (IkappaB kinase beta) or IKKgamma (IkappaB kinase gamma). It seems that NIK is also dispensable for this pathogenic processing of p100. These results demonstrate a general role of IKKalpha in p100 processing under both physiological and pathogenic conditions. Additionally, we find that IKKalpha is not required for the nuclear translocation of p100. Thus, these results also indicate that p100 nuclear translocation is not sufficient for the constitutive processing of p100."
  "The entire abstact according to the abstractor, not as in the article")

;; 2/6/14
; (setq *uniformly-scan-all-no-space-token-sequences* t)
;   polyword referents for HBP1 or D1 made done by reify-spelled-name
;   called from reify-ns-name-and-make-edge
; Referent is a category cons'd on the fly -- doesn't feel right
; (p "HBP1 is a repressor of the cyclin D1 gene and inhibits the Wnt signaling pathway. The inhibition of Wnt signaling and growth requires a common domain of HBP1. The apparent mechanism is an inhibition of TCF/LEF DNA binding through physical interaction with HBP1")



; (f "/Users/ddm/sift/nlp/corpus/biology/cholera.txt")


;;;-------------
;;; OBO => Lisp
;;;-------------

#| We can read in a set of OBO files (in .obo format, not .owl),
convert them to a Lisp-readable form, then load the resulting
file into Sparser (or anything else) and operate on it.

The first step is to do the translation. It only has to be done
where there's a new version of the OBO files that we want to use.
Otherwise we're working with the result of the translation
The OBO files are in <R3 trunk>/ontologies/*.obo and date from
November 2014 when this machinery was set up.

The translation code is in <R3>/code/obo3lisp/obo2lisp.lisp.
As shown below, it takes a list of input obo files and writes
out another combined file with the results of the translation.

This is the code I used (ddm). It has to be modified to use
generic file names. This is all lisp code. The translator
is in cl-user. The rendered Lisp version of the OBO data
is in sparser.

(defun translate-obos ()  ;; (translate-obos)
 (cl-user::translate-obo-files
  '("/Users/ddm/ws/R3/trunk/ontologies/bfo.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/ro.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/go-plus.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/pro.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/chebi.obo"
    "/Users/ddm/ws/R3/trunk/ontologies/cl.obo")

  "~/ws/R3/rs/trunk/corpus/obo-terms.lisp")

The output file is a sequence of Lisp forms that replicate
all of the interesting information in the corresponding
.obo entry. The file has to be read in (which defines the Lisp
version of each entry) and then several additional operations
are carried to to make the terms accessible as possible
definitions of otherwise unknown words. These are all bundled
into the function incorporate-obo-terms which is packaged
below along with its required file argument. This and the
other operations on OBOs is defined in the file obo-reader.lisp
in words/one-offs.

These return the Lisp-based obo entries.
-- get-obo-by-id (id-string)
   get-obo (name-string)

|#
(defun load-obo-terms ()
  (unless cl-user::*r3-trunk* ;; nust end with a slash
    (error "Bind *r3-trunk* to that spot in your directory"))
  (let ((filename
         (format nil "~a~a" cl-user::*r3-trunk* "code/obo-terms.lisp")))
    (incorporate-obo-terms filename)))

(defun populate-one-article (id)
  (populate-article-set (list id)))

(defun populate-june-article (id)
  (populate-article-set
   (list id)
   "code/evaluation/June2015Materials/Eval_NXML/" :quiet t))

(defparameter *load-ras2* t)

(defun maybe-load-ras2 ()
 (if (and *load-ras2* (find-package :r3)) (funcall (intern "LOAD-RAS2-MODEL" :r3))))

(defun test-june-article (id &key (show-sents nil)(article-number 0))
  (maybe-load-ras2)
  (when show-sents (setq *print-sentences* 0))
  (when (numberp id) (setq id (nth (1- id) *june-nxml-files-in-MITRE-order*)))
  (sweep-and-run-articles (populate-june-article id) :from article-number))


(defparameter *article-timing-stream* t)

;;; having trouble passing in string on Rex cmd line from script.
(defun time-article-batch (start n &optional (localdir (short-date-time)))
  (declare (special *card-folder*))
  (let* ((outdir
          (make-corpus-path (format nil "code/evaluation/~a"  localdir)))
         (carddir (concatenate 'string outdir "cards/"))
         (timedir (concatenate 'string outdir "times/"))
;         (filename (format nil "~a/article-data-~d-to-~d.csv" timedir start (+ start n)))
;;; using append now
         (filename (format nil "~atimes/run-~a-data.csv" outdir localdir)) ; start (+ start n)
         )
    (setf *card-folder* (pathname carddir))
  (with-open-file (timing-stream filename :direction :output :if-exists :append :if-does-not-exist :create)
    (setf *article-timing-stream* timing-stream)
    (run-june-articles n :from-article start :cardp t :show-timep t)
    )
  (dump-orphans timedir)
  ))

(defun short-date-time ()
  (multiple-value-bind (s m h d mo) (decode-universal-time (get-universal-time))

    (declare (ignore s))
    (format nil "~a~2,'0d-~2,'0d~2,'0d"
            (nth (1- mo) '(jan feb mar apr may jun jul aug sep oct nov dec))
            d h m)))


;;;; THIS IS CALLED BY RUN-JUNE-ARTICLES BASH SCRIPT

(defun do-june (&key (start 0) (n 988) (dir (short-date-time))
                     (discourse-filter t) (intro-filter t) (methods-filter t)
                     )
  (declare (special *filter-phrases* *filter-intro* *filter-refs* ;; see rhetoric.lisp
                    *ignore-methods-sections*)) ;; see document.lisp
  (setf *filter-phrases* discourse-filter)
  (setf *filter-intro* intro-filter)
  (setf *ignore-methods-sections* methods-filter)
  (format t "~%Relevance filtering: intro ~a phrases ~a methods ~a~%" intro-filter discourse-filter methods-filter)
  (time-article-batch start n dir))


(defun write-article-time-to-log (i id runtime &optional (numcards 0) (duplicates 0)(filtered 0) (irrel 0) (regtot 0) (misctot 0))
  (declare (special *all-found-reactions*))
  (unless (boundp '*all-found-reactions*) (setf *all-found-reactions* 0))
  (if (null numcards) (setf numcards 0))
  (when *article-timing-stream*
    (when (eq i 1)
      (format *article-timing-stream* "Art#, ID, Runtime, #Sentences, #Reactions, #Cards, #Duplicates, #Filtered, #Irrelevant, #RegTot, #MiscTot, Total~%"))

    (format *article-timing-stream* "~d, ~a, ~6,3f, ~d, ~d, ~d, ~d, ~d, ~d, ~d, ~d, ~d~%"
            i id runtime
            (length *all-sentences*)
            *all-found-reactions*
            numcards duplicates filtered irrel
            regtot misctot
            (+ numcards duplicates filtered irrel)
            )))


(defun run-june-articles (n &key (from-article 0) (cardp t) show-timep)
  (let ((*show-article-progress* nil))
    (declare (special *show-article-progress*))
    (loop for id in (nthcdr from-article *june-nxml-files-in-MITRE-order*)
      as i from (+ 1 from-article) to (+ n from-article)
        do (run-one-june-article i id cardp show-timep))))

(defparameter *skip-articles* '(422 576 937))

;;; filters are: duplicate cards, filtered(not related to model), irrelevant(deemed not new info)
;;; the test whether a valid card because it has a participant b should be done first, as it cannot occur
;;; under the kraql sceme used for misc cards (which will eventually be used for all pt cards as well)

(defun run-one-june-article (i id &optional cardp write-timep)
  (declare (special *article-elapsed-time*)) ;; defined below.

  (unless (member i *skip-articles*)
    (setq *all-sentences* nil)
    (test-june-article id :article-number i)
    (let ((numcards 0)   (num-dups 0)  (num-filtered 0)  (num-irrelevant 0)
          (misc-cards 0) (misc-dups 0) (misc-filtered 0) (misc-irrelevant 0)
          (no-partb 0))
      (flet ((create-cards (id)
                (multiple-value-setq (numcards num-dups num-filtered num-irrelevant no-partb)
                    (create-cards-for-article id))
                (multiple-value-setq (misc-cards misc-dups misc-filtered misc-irrelevant)
                   (create-misc-cards-for-article id))))

        (when cardp
          (if *trap-error-skip-sentence*
              (handler-case
                  (create-cards id)
                (error (e)
                       (ignore-errors ;; got an error with something printing once
                        (when *show-handled-sentence-errors*
                          (format t "~&Error in ~s~%~a~%~%" (current-string) e)))))
              (create-cards id))
        ;; not sure why still getting nils for values from create-cards-for-article if no cards there but this should fix it
          (setf numcards (or numcards 0) num-dups (or num-dups 0) 
                num-filtered (or num-filtered 0) num-irrelevant (or num-irrelevant 0))
          (setf misc-cards (or misc-cards 0) misc-dups (or misc-dups 0) 
                misc-filtered (or misc-filtered 0) misc-irrelevant (or misc-irrelevant 0))
          (setf no-partb (or no-partb 0))

          (let ((cards (+ numcards misc-cards))
                (dups  (+ num-dups misc-dups))
                (filt  (+ num-filtered misc-filtered))
                (irrel (+ num-irrelevant misc-irrelevant))
                (misctot  (+ misc-cards misc-dups misc-filtered misc-irrelevant))
                (regtot (+ numcards num-dups num-filtered num-irrelevant))
                )
            (when write-timep (write-article-time-to-log i id *article-elapsed-time* cards dups filt irrel regtot misctot))
            (format t "~2%Completed ~d:~a in ~4,3f secs. Cards: ~d+~d=~d : duplicate ~d ~d; filtered ~d ~d; irrel ~d ~d; no-partb ~d"
                    i id *article-elapsed-time*
                    numcards misc-cards cards 
                    num-dups misc-dups
                    num-filtered misc-filtered
                    num-irrelevant misc-irrelevant
                    no-partb
                    )
            ))))))

(defun tj (i &optional (id (nth (1- i) *june-nxml-files-in-MITRE-order*)))
  (run-one-june-article i id t)
  (let ((file (make-corpus-path "code/evaluation/no-cards.lisp" nil)))
    (with-open-file (s file :direction :output :if-does-not-exist :create :if-exists :append)
      (format s "~%(defparameter ~s-R2-SENTS~%  '(~%" id)
      (pprint (r2-proteins) s)
      (format s "~%))~%~%"))))

(defun create-cards-for-article (*article-id*)
  (let* ((ht (group-pts-by-article))
         (aht (gethash *article-id* ht))
         (numcards 0)
         (cards nil)
         (duplicate-count 0)
         (not-in-model-cnt 0)
         (not-relevant-cnt 0)
         (no-partb-cnt 0)
         )
    (declare (special ht aht cards))
    (handler-case
        (if (not aht) 
            (values 0 0 0 0 0)
            ;; else consider building cards
            (let* ((card-sets (all-hash-vals aht))) ;; collect values lists
              (format t "~%In create-cards-for-article found ~d card sets~%" (length card-sets))
              (loop for aps in card-sets
                do (multiple-value-bind (card-sexpr dups not-in-model not-relevant no-partb) (pt-card aps)
                     (when card-sexpr
                       (format t "~%    creating single ~s card for ~s, generated from ~s examples~%"
                               (string-downcase (symbol-name (pt-type (caar (car aps)))))
                               *article-id*
                               (length aps))
                       (if no-partb (incf no-partb-cnt no-partb))
                       (incf duplicate-count dups)
                       (incf not-in-model-cnt not-in-model)
                       (incf not-relevant-cnt not-relevant)
                       (push card-sexpr cards))))
              (format t "~&Creating ~s cards for article ~s~&" (length cards) *article-id*)
              (dolist (card cards) (post-translation-file-from-card card (incf numcards)))
              (values numcards duplicate-count not-in-model-cnt not-relevant-cnt no-partb-cnt)
              ))
      (error (e)
             (ignore-errors ;; got an error with something printing once
              (when *show-handled-sentence-errors*
                (format t "~&Error in ~s~%~a~%~%" (current-string) e)))))
    ))

(defun create-binding-cards-for-article (*article-id*)
  (handler-case
      (let*
          ((ht (group-binding-reactions-by-article))
           (aht (gethash *article-id* ht))
           ;;(counter 0) -- unused
           (cards nil)
           (duplicate-count 0))
        (declare (special ht aht cards))
        (cond
         (aht
          (maphash #'(lambda (simple-phos aps)
                       (declare (ignore simple-phos))
                       (format t "~%    creating single ~s card for ~s, generated from ~s examples~%"
                               "binding"
                               *article-id*
                               (length aps))
                       (push aps cards))
                   aht)
          (format t "~&Creating ~s **BINDING** cards for article ~s~&" (length cards) *article-id*)
          (values
           (length cards)
           duplicate-count
           (length cards)))
         (t (values 0 0 0))))
    (error (e)
           (ignore-errors ;; got an error with something printing once
            (when *show-handled-sentence-errors*
              (format t "~&Error in ~s~%~a~%~%" (current-string) e)))))
  )



;; Note that this assumes you have reset *all-sentences* between each article.
(defun create-misc-cards-for-article (article-id &aux (counter 0)
                                                 (index 1000))
  (declare (ignore article-id))
  (multiple-value-bind (cards n-duplicates n-not-in-model n-irrelevant)
                       (do-cards)
    (format t "~&Creating ~s cards using generalized function.~%" (length cards))
    (dolist (card cards)
;      (handler-case
          (let ((file-result (post-translation-file-from-card card (incf index))))
            (when file-result
              (incf counter)))
      #+ignore
        (error (e)
               (ignore-errors ;; got an error with something printing once
                  (format t "~&Error in ~s~%~a~%~%" (current-string) e))))
;      )
    (values counter n-duplicates n-not-in-model n-irrelevant)
    ))

#|
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 0)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 50)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 100)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 150)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 200)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 250)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 300)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 350)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 400)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 450)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 500)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 550)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 600)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 650)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 700)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 750)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 800)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 850)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 900)
(RUN-JUNE-ARTICLES 50 :FROM-ARTICLE 950)

|#

;;;-------------------------------------------
;;; timing code used with process-one-article
;;;-------------------------------------------

(defun elapsed-time-to-string (floating-secs)
  (format nil "~,3f" floating-secs))

#+ignore
(defun elapsed-time-to-string (diff)
  (multiple-value-bind (totsecs rem) (floor diff internal-time-units-per-second)
      (multiple-value-bind (mins secs) (floor totsecs 60)
        (if (zerop mins)
            (format nil "~d.~3,'0d" secs rem)
          (format nil "~d:~2,'0d.~3,'0d" mins secs rem)))))

(defparameter *time-start* 0)
(defparameter *time-end* 0)

(defparameter *universal-time-start* 0)
(defparameter *universal-time-end* 0)
(defparameter *article-elapsed-time* 0.0)
(defparameter *article-times* nil)

(defun time-start (article)
  (declare (ignore article))
  (setq *time-start* (get-internal-real-time))
  (setq *universal-time-start* (get-universal-time)))

(defun time-end (article)
  (setq *universal-time-end* (get-universal-time))
  (setq *time-end* (get-internal-real-time))
  (setq *article-elapsed-time*
        (/ (* 1.0 (-  *time-end* *time-start*)) internal-time-units-per-second))
  (push (list article *universal-time-start* *universal-time-end*
              *article-elapsed-time* *time-start* *time-end* )
        *article-times*)

  (values
   *universal-time-start*
   (+ *universal-time-start* *article-elapsed-time*)))

(defun mitre-time-format (ut)
  (multiple-value-bind
      (second minute hour date month year day-of-week dst-p tz)
      (decode-universal-time ut)
    (declare (ignore day-of-week dst-p tz))
    (format nil
            "~s-~s-~sT~s:~s:~s"
            year month date hour minute second)))

(defun load-pmc-1000-sents ()
  (load "~/r3/darpa/12-month TestMaterials/PMC1000-sents.lisp"))

(defvar *1000-art-sents*)

(defun PMC-sent-list (name pattern)
  (let ((namesents (intern (string-upcase (format nil "~a-sents" name)))))
    (length (set namesents
                 (loop for s in *1000-art-sents* when (search pattern s)
                   collect
                   (if (and (numberp (search "." s :from-end t))(equal (- (length s) 1) (search "." s :from-end t)))
                       s
                       (format nil "~a." s)))))
    (with-open-file
        (s (string-append "~/r3/darpa/12-month TestMaterials/" name "sents.lisp")
           :direction :output :if-exists :supersede)
      (format s "(in-package :sparser)~&~&(defparameter ~s~&  '(~&" namesents)
      (np (symbol-value namesents) s)
      (format s "~&))~&"))
    (load (string-append "~/r3/darpa/12-month TestMaterials/" name "sents.lisp"))
    (format t "~&~s has ~s sentences" namesents (length (eval namesents)))))

(defun PMC-sent-lists ()
  (loop for sl in
    '(("ACTIV" " activat")
      ("PHOS" "hosphorylat")
      ("UBIQ" "biquitinat")
      ("CREASE" "creas")
      ("ACETYL" " acetylat")
      ("INDUCE" " induc")
      ("BIND" " bind")
      ("BOUND" " bound")
      ("COMPLEX" " complex")
      ("ABLE" " able to")
      ("TRANSPORT" " transport")
      ("TRANSLOCATE" " translocat")
      )
    do
    (PMC-sent-list (car sl) (second sl))))

(defun load-PMC-sent-lists ()
  (loop for sl in
    '(("ACTIV" " activat")
      ("PHOS" "hosphorylat")
      ("UBIQ" "biquitinat")
      ("CREASE" "creas")
      ("ACETYL" " acetylat")
      ("INDUCE" " induc")
      ("BIND" " bind")
      ("BOUND" " bound")
      ("COMPLEX" " complex")
      ("ABLE" " able to")
      ("TRANSPORT" " transport")
      ("TRANSLOCATE" " translocat")
      )
    do
    (load-PMC-sent-list (car sl) (second sl))))

(defun load-PMC-sent-list (name pattern)
  (declare (ignore pattern))
  (let ((namesents (intern (string-upcase (format nil "~a-sents" name)))))
    (load (string-append "~/r3/darpa/12-month TestMaterials/" name "sents.lisp"))
    (format t "~&~s has ~s sentences" namesents (length (eval namesents)))))

(defun run-PMC-sents (n sent-list)
  (break-in-articles)
  (loop for i from 1 to n as s in sent-list
    do
    (format t "~&~&-------~&~s~&" s)
    (eval (list 'p s))))

(defun has-RAS2-protein (s)
  (eval (list 'pp s))
  (car *all-sentences*))

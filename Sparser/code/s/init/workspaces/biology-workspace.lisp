;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Biology-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  October 2015

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
;; 10/8/15 Pulled out all the examples to file of that name in biology

(in-package :sparser)

;;;----------------
;;; Standard setup
;;;----------------

; (defvar script :biology)  ;; For customizing what gets loaded
; (setup-bio) ;; load the bio model etc.

(defun setup-bio ()
  (unless (find :biology-loaded *features*)
    (bio-setting)
    (setq *tts-after-each-section* nil)
    (setq *note-text-relations* nil) ;; plist-for passed :uncalculated noting "[1-3]"
    (gate-grammar *biology*          ;; sets up stats collection
      (gload "bio;loader"))
    (load-obo-terms)
    (load-bio-corpora)
    (declare-all-existing-individuals-permanent)
    (push :biology-loaded *features*)))

(defvar cl-user::*r3-trunk*
  (truename (asdf:system-relative-pathname :r3 ".."))
  "String identifing the location of the R3 trunk
on your machine, including a final slash. Should be
set in your personal workspace file, e.g.
(defvar *r3-trunk* \"/Users/ddm/ws/R3/r3/trunk/\")")

(unless (fboundp 'cl-user::r3-path)
  (defun cl-user::r3-path (relative-path)
    (merge-pathnames relative-path cl-user::*r3-trunk*)))

(unless (fboundp 'cl-user::r3-load)
  (defun cl-user::r3-load (source-path)
    (load (cl-user::r3-path source-path))))

;;; copied from ddm-load-corpora in ddm-workspace.
 
(defun load-bio-corpora ()
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

;;;-------------------------------------------
;;; Alternative paths to the document corpora
;;;-------------------------------------------


;;; remove slashes from both ends unless just-end = t then just right end.
(defun remove-end-slashes (string &optional (just-end nil))
  (if (pathnamep string) (setq string (file-namestring string)))
  (let* ((lastpos (1- (length string)))
         (p1 (if (and (not just-end) (eq (elt string 0) #\/)) 1 0))
         (p2 (if (eq (elt string lastpos) #\/) lastpos (1+ lastpos))))
    (subseq string p1 p2)))


(defun make-corpus-path (corpus-kwd &optional (folderp t))
  (declare (special *corpus-paths*))
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
  (let ((id (nth (1- n) *june-nxml-files-in-MITRE-order*)))
    (load-and-read-article id)))

(defun load-and-read-article (id) ;; assume corpus-path is set
  (declare (special *break-during-read* *article-elapsed-time*))
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
                (format t "~&create-cards-for-article -- Error in ~s~%~a~%~%" (current-string) e)))))
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
              (format t "~&create-binding-cards-for-article -- Error in ~s~%~a~%~%" (current-string) e)))))
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

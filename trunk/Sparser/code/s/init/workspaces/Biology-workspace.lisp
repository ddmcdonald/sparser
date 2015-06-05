;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2013-2015 SIFT LLC  -- all rights reserved
;;;
;;;     File:  "Biology-workspace"
;;;   Module:  "init;workspaces:"
;;;  version:  May 2015

;; Initiated 11/6/13 to setup experiments in reading biology texts
;; and constructing process models from them. 

(in-package :sparser)

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
  (ddm-load-corpora)
  (declare-all-existing-individuals-permanent))

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

;;---- Globals 

(defvar *articles-created* nil
  "Holds the document shells as created by make-sparser-doc-structure")

(defvar *populated-articles* nil
  "Holds all of the articles we've loaded and populated,
   i.e. run sweep-document over anc created all the sentences")

(defvar *read-articles* nil
  "Holds all of the articles we've parsed")

;; This should be set in your personal workspace file,
;; e.g. (setq *r3-trunk* "/Users/ddm/ws/R3/r3/trunk/")
(defvar *r3-trunk* nil
  "String identifing the location of the trunk on 
  your machine, including a final slash")


;;---- Error handline

(defparameter *break-on-sweep-errors* t
  "Read by sweep-article-set to determine whether or not to use 
   an error handler.")

; In read-article-set the flag *trap-error-skip-sentence* is set.
; This will handle any errors that occur while parsing while
; letting you continue an handle the rest of the text.


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
(defun generate-id-list-from-directory-listing (directory-namestring)
  "Given a namestring that ends with *.nxml or the equivalent, 
  this returns a list of filename strings."
  (let ((pathnames (directory directory-namestring)))
    ;; N.b. This use of directory might be CCL specific
    (loop for pn in pathnames
      collect (pathname-name pn))))

(defun populate-12-month-NXML-model-article-set ()
  (unless *r3-trunk*
    (error "*r3-trunk* needs to be set."))
  (let* ((location (string-append 
                   *r3-trunk* "darpa/12-month TestMaterials/NXML-model/"))
         (corpus-path "darpa/12-month TestMaterials/NXML-model/")
         (directory-namestring
          (string-append location "*.nxml")))
    (let ((ids (generate-id-list-from-directory-listing directory-namestring)))
      (if ids
        (format t "~&About to operate on ~a files~%" (length ids))
        (break "Something went wrong. No ids were generated from~%~a"
               directory-namestring))
      (populate-article-set ids corpus-path :quiet))))


;--- 1st populate: Locate the nxml file and run the 
; XML-to-doc-structure to convert it to the equivalent
; document object. 

;; (populate-article-set)
(defun populate-article-set (&optional list-of-ids location quiet)
  "Given a list of document ids and the location of their
   files in the corpus, run make-sparser-doc-structure to
   return a set of article objects."
  (setq *articles-created* nil) ;; this is a rebuild operation!!
  (load-xml-to-doc-if-necessary)
  (unless list-of-ids
    (setq list-of-ids *2015-5-4_Mitre-articles*))
  (unless location
    (setq location "corpus/2015-5-4_Mitre-articles/"))
  (set-default-corpus-path location)
  (let ((maker-fn (intern (symbol-name '#:make-sparser-doc-structure)
                          (find-package :r3)))
        (path-fn (intern (symbol-name '#:make-doc-path)
                         (find-package :r3)))
        (quiet-fn (intern (symbol-name 'debug-off)
                          (find-package :r3))))
    (funcall quiet-fn)
    (dolist (id list-of-ids)
      (let* ((simple-id (PMC-to-nxml id))
             (pathname (funcall path-fn simple-id)))
        (unless pathname
          (push-debug `(,simple-id ,location))
          (lsp-break "Probe file failed"))

        (if quiet
            (princ "." t)
            (format t "~&~%~%Reading the file ~a" pathname))
        (push (funcall maker-fn simple-id)
              *articles-created*)))
    (setq list-of-ids 
          (loop for id in list-of-ids
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
      as id in list-of-ids
      do (setf (name article) id))
    *articles-created*))

(defun populate-one-article (id)
  (populate-article-set (list id)))





;--- 2d sweep.  Run through the article that is the result
; of the XML conversion, identify its sub-subsections, and
; create sentence objects for the text content of paragraphs

(defun sweep-article-set (&optional (articles *articles-created*))
  "Given a list of articles, by default the ones created by the
   populate operation and stored on *articles-created*, run the
   function sweep-document over them and return/store the result
   of *populated-articles*."
  (let ((article (car articles))
        (rest (cdr articles)))
    (loop
      (unless article
        (return))
      (if *break-on-sweep-errors*
       (push (sweep-document article)    
             *populated-articles*)
       (handler-case
           (push (sweep-document article)    
                 *populated-articles*)
         (error (e)
                (declare (special e))
                (format t "~&Error sweeping ~a~%" article)
                (d e))))
      (setq article (car rest)
            rest (cdr rest))))
  *populated-articles*)
    

;--- 3d read. 

(defun read-article-set (&optional (articles *populated-articles*))
  ;; Lets see if the error check within the reader in
  ;; sweep-successive-sentences-from is sufficient to let the
  ;; loop flow. 
  (let ((*trap-error-skip-sentence* t))
    (declare (special *trap-error-skip-sentence*))
    (loop for article in articles
      do 
      (time-start)(time-end) ;; CROCK -- can't get time-end for the article
      (read-from-document article)
      ;;(time-end)
      )))


;;--- Variations on the basic operations
 
(defun test-articles ()
  (populate-article-set)
  (sweep-article-set)
  (with-total-quiet
      (read-article-set))
  (setq *accumulate-content-across-documents* t))

(defun test-12-month-articles ()
  (populate-12-month-NXML-model-article-set)
  (sweep-article-set)
  (with-total-quiet
      (read-article-set))
  (setq *accumulate-content-across-documents* t))

(defun single-sent-parse ()
  (setq *accumulate-content-across-documents* t))

(defun load-and-read-article (id) ;; assume corpus-path is set
  (load-xml-to-doc-if-necessary)
  (let ((maker-fn (intern (symbol-name '#:make-sparser-doc-structure)
                     (find-package :r3)))
         (quiet-fn (intern (symbol-name 'debug-off)
                           (find-package :r3))))
    (funcall quiet-fn)
    (let* ((doc-elements (funcall maker-fn id))
           (article (car doc-elements)))
      (setf (name article) id)
      (push-debug `(,article))
      (sweep-document article)
      (read-from-document article)
      article)))

(defun process-one-article (id)
  (time-start)
  (setq *articles-created* nil)
  (read-article-set
   (sweep-article-set
    (populate-one-article id)))
  (time-end)
  (pprint
   `((:READING--STARTED ,@ (mitre-time-format *universal-time-start*))
     (:READING--STARTED ,@ (mitre-time-format *universal-time-end*))
     (:PMC--ID ,@ (name *current-article*))))
  (values *current-article*
          (mitre-time-format *universal-time-start*)
          (mitre-time-format *universal-time-end*) ; 
          (name *current-article*)))

;;---- Gophers for going through articles

(defun set-default-corpus-path (pathname-string)
  "Set r3::*default-corpus-path* to this trunk-relative value"
  (let ((symbol (intern (symbol-name '#:*default-corpus-path*)
                        (find-package :r3)))
        (expanded-pathname
         (concatenate 'string *r3-trunk* pathname-string)))
    (format t "~&Setting r3::*default-corpus-path*~
               ~%  to ~s~%" expanded-pathname)
    (set symbol expanded-pathname)))


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
    (if (boundp '*r3-trunk*)
      (let ((code-dir (string-append *r3-trunk* "code/")))
        (cwd code-dir)
        (load "load.lisp"))
      (format nil "You have to set *r3-trunk*"))))


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

(defun cells-defNP ()
  ;; from the December passages, sentences 17 and 18
  (p "BRAF is not active and is not required for MEK/ERK activation 
in RAS mutant cells. 
Nevertheless, BRAF inhibitors hyperactivate CRAF and MEK in these cells."))

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


;;;-------------------------------------------
;;; timing code used with process-one-article
;;;-------------------------------------------

(defparameter *time-start* 0)

(defparameter *universal-time-start* 0)
(defparameter *universal-time-end* 0)

(defun time-start ()
  (setq *time-start* (get-internal-real-time))
  (setq *universal-time-start* (get-universal-time)))

(defun time-end ()
  (setq *universal-time-end* (get-universal-time))
  (values
   *universal-time-start*
   (+ *universal-time-start* 
      (/ (* 1.0
            (- *time-start* (get-internal-real-time)))
         internal-time-units-per-second))))
         
(defun mitre-time-format (ut)
  (multiple-value-bind
      (second minute hour date month year day-of-week dst-p tz)
      (decode-universal-time ut)
    (declare (ignore day-of-week dst-p tz))
    (format nil
            "~s-~s-~sT~s:~s:~s"
            year month date hour minute second)))

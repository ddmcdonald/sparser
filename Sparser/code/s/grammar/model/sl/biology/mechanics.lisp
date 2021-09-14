;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014-2016 SIFT LLC. All Rights Reserved
;;;
;;;    File: "mechanics"
;;;  Module: "grammar/model/sl/biology/
;;; version: June 2016

;; Initiated 3/2/14. 5/22/14 Added synonyms field to def-bio.
;; 6/9/14 Pulled types out from regular kinds. 7/24/14 reorganized.
;; 9/8/14 lifted taxonomy out to its own file, added keyword to
;; inhibit plurals, defaults to allow plurals. Working on nits
;; to make the parser happy through 1/6/15
;; 3/21/2015 -- revised make-typed-bio-entity
;; SBCL caught fact that some words are actually polywords here...
;; 4/19/15 Added stub for handling acronyms.
;; 5/16/2015 attempt (not quite working) to define get-mitre-id which
;; tries to get the MITRE-LINK value for a protein (for example).
;; 11/12/15 Finished bio-entity => protein routine.
;; 2/5/16 added handle-unknown-word-as-bio-entity


(in-package :sparser)

(defvar category::protein)
(defvar category::proper-noun)

;;; Define a new variable for the actual spelling of the definition
;;;   for HMS INDRA processing
(define-lambda-variable 'raw-text
    nil 'top)

;;;---------------------------
;;; TRIPS & REACH --> def-indiv-with-id
;;;---------------------------

(defparameter *show-trips-redefinitions* nil)
(defparameter *suppress-redefinitions* t)

(defparameter *trips-define-proteins* nil)

(defparameter *new-diseases* nil)
(defparameter *new-bacteria* nil)
(defparameter *new-viruses* nil)
(defparameter *new-cancers* nil)

(defparameter *new-bio-complexes* nil)
(defparameter *new-bio-meth* nil)
(defparameter *new-bio-proc* nil)
(defparameter *new-noncell-loc* nil)
(defparameter *new-cells* nil)
(defparameter *new-cell-loc* nil)
(defparameter *new-cell-proc* nil)
(defparameter *new-drugs* nil)
(defparameter *new-molecules* nil)
(defparameter *new-pathways* nil)
(defparameter *new-post-trans-mod* nil)
(defparameter *new-prot-dom* nil)
(defparameter *new-rna* nil)
(defparameter *new-substances* nil)
(defparameter *new-units* nil)
(defparameter *new-prot-fam* nil)

(defparameter *new-orgs* nil)
(defparameter *non-bio-defs* nil) ;; ref-sem time-unit, databases

(defparameter *prot-fam-redef* nil) ;; holds protein families where the name is already defined as a category -- to be folded in later
;; define all the parameters to hold the new definitions

(defparameter *suppressed-hyphenated-new-words* nil)

(defun trips/reach-term->def-indiv-with-id (term &optional 
                                         (trips/reach->krisp-class #'trips-class->krisp))
  "Function takes a trips or reach definition and returns a sparser definition form"
  (when (equal (second term) 'sparser::--)
    ;; new format for file -- revise call
    (setq term (third term)))
  (let* ((word (car term))
         (dc-word (string-downcase word))
         (uc-word (string-upcase word))
         (id (getf (cddr term) :id))
         (category (funcall trips/reach->krisp-class term)))
    (unless (or (null id) (null category))
      (when *suppress-redefinitions*
        (cond ((and (resolve word) (single-term-rewrite? word)) 
               ;; if it resolves, but doesn't have a
               ;; single-term-rewrite, it's only defined as part of a
               ;; polyword
               (stash-redefined-word term word id "orig" category)
               (return-from trips/reach-term->def-indiv-with-id nil))
              ((and (resolve dc-word) (single-term-rewrite? dc-word))
               (stash-redefined-word term dc-word id "downcase" category)
               (return-from trips/reach-term->def-indiv-with-id nil))
              ((and (resolve uc-word) (single-term-rewrite? uc-word))
               (stash-redefined-word term uc-word id "upcase" category)
               (return-from trips/reach-term->def-indiv-with-id nil))
              ((and (search "-" word) (resolve (remove #\- word))) 
               ;; even if they're only defined in a pw, it's unclear
               ;; we want to define the hyphen version, but going
               ;; through the normal redef code is unnecessary/causes
               ;; issues because they're assumed to have rules
               (if (single-term-rewrite? (remove #\- word))
                   (stash-redefined-word term (remove #\- word) id "hyphens" category)
                   (push (list category (remove #\- word) term) *suppressed-hyphenated-new-words*))
               (return-from trips/reach-term->def-indiv-with-id nil))
              ((and (search "-" word) (resolve (remove #\- dc-word)))
               (if (single-term-rewrite? (remove #\- dc-word))
                   (stash-redefined-word term (remove #\- dc-word) id "hyphens-dc" category)
                   (push (list category (remove #\- dc-word) term) *suppressed-hyphenated-new-words*))
               (return-from trips/reach-term->def-indiv-with-id nil))))
      (let* 
          ((name (getf (cddr term) :name))
           (name-cat (when name (name-is-cat-p name))))
        ;(lsp-break "past redefs; name: ~s category: ~s" name category)
        (case category
          ((residue-on-protein molecular-site nil )
           ;;(format t "Rejecting REACH definition ~s~%" term)
           nil)
          (bacterium
            (stash-def-indiv-with-id word category id name '*new-bacteria*))
          (cancer
           (stash-def-indiv-with-id word category id name '*new-cancers*))
          (virus
           (stash-def-indiv-with-id word category id name '*new-viruses*))
          (disease
           (stash-def-indiv-with-id word category id name '*new-diseases*))
          (bio-complex
           (stash-def-indiv-with-id word category id name '*new-bio-complexes*))
          (bio-method
           (stash-def-indiv-with-id word category id name '*new-bio-meth*))
          (bio-process ;; may conflict with handling of post-translational processes
           (stash-def-indiv-with-id word category id name '*new-bio-proc*))
          ((bio-organ
            injury
            organism
            secretion
            tissue
            tumor)
           (stash-def-indiv-with-id word category id name '*new-noncell-loc*))
          (cell-line ;; the old def function blocked plurals so this mirrors that
           (stash-def-indiv-with-id word category id name '*new-cells* :no-plural t))
          (cell-type
           (stash-def-indiv-with-id word category id name '*new-cells*))
          (cellular-location
           (stash-def-indiv-with-id word category id name '*new-cell-loc*))
          (cellular-process
           (stash-def-indiv-with-id word category id name '*new-cell-proc*))
          ((drug vaccine) ;; the old def function blocked plurals so this mirrors that
           (stash-def-indiv-with-id word category id name '*new-drugs* :no-plural t))
          (molecule
           (stash-def-indiv-with-id word category id name '*new-molecules*))
          (pathway
           (stash-def-indiv-with-id word category id name '*new-pathways*))
          (post-translational-modification
            (stash-def-indiv-with-id word category id name '*new-post-trans-mod*))
          (protein-domain
           (stash-def-indiv-with-id word category id name '*new-prot-dom*))
          ((micro-rna rna) ;; check if it still has problems
           (stash-def-indiv-with-id word category id name '*new-rna*))
          (substance
           (stash-def-indiv-with-id word category id name '*new-substances*))
          (unit-of-measure
           (if (< (length word) 4) ;; for abbreviations, case matters (e.g. "m" meter vs. "M" molar) but for full names it doesn't
               (stash-def-indiv-with-id word category id name '*new-units* :maintain-case t)
               (stash-def-indiv-with-id word category id name '*new-units*)))
          ((gene protein gene-protein)
           (push 
            `(define-protein ,id (,word ,.(when name `(,name))))
            *trips-define-proteins*)
           (car *trips-define-proteins*))
          (protein-family
           (if (and name name-cat)
               (then (push `(:old-id ,(value-of 'uid (category-named name-cat)) ',name-cat ,term)
                           *prot-fam-redef*)
                     t) ;; had to change this because otherwise it tries to evaluate the list
               (else (push `(def-family-with-id ,word ,id ,.(when name `(:name ,(pname name))))
                           *new-prot-fam*)
                     (car *new-prot-fam*))))
          (organization
           (stash-def-indiv-with-id word category id name '*new-orgs*))
          ((database referential-sem time-unit)
           (push term *non-bio-defs*))
          (t 
           (unless (or (eq category 'referential-sem)
                       (eq category 'time-unit)
                       (eq category 'organization)) ;; HANDLE LATER
             (lsp-break "unknown category for trips/reach-term->def-indiv-with-id"))))))))

(defun word-has-uid-p (word)
  "Given a string that is known to resolve, returns the value of the
uid binding, if there is one"
  (let* ((cat-indiv-rule (car (single-term-rewrite? word :no-warn t)))
         (cat-indiv (when cat-indiv-rule
                      (get-head-ref-from-rule cat-indiv-rule))))
    (if cat-indiv
        (value-of 'uid cat-indiv)
        "can't get rule"))) 
        ;; currently some words don't return rules for rule-for e.g.,
        ;; "RNA" even though "rna" does due to some polyword issue --
        ;; will hopefully get fixed soon

(defparameter *suppressed-redefs* nil) ;; holds items with existing definitions and matching IDs
(defparameter *suppressed-mod-redefs* nil) ;; holds items that are defined if we change capitalization or drop hyphens, but still match on IDs
(defparameter *id-mismatch-redef* nil) ;; holds items that are defined (possibly changing capitalization or dropping hyphens) that have UIDs but they don't match -- to look at later to see if it's just grounded in a different atlas or using a completely different word
(defparameter *id-and-cat-mismatch* nil) ;; separate list for defined words that mismatch on category as well as id
(defparameter *no-id-redef* nil) ;; holds items that are defined (possibly changing capitalization or dropping hyphens), but the original definition doesn't have an ID -- need to fold these in later
(defparameter *no-id-cat-mismatch-redef* nil) ;; same as above but the category/supercategory of the defined word/category doesn't match the category of the new definition

(defparameter *no-rule-redef* nil) ;; holds items that are defined only as part of polywords but where the new item 
(defun stash-redefined-word (term rword id mod category)
  "Given a term (definition), a resolved word, and whether there was a
  case change involved to resolve it, determines if the word has a uid
  that matches the term id, and if not adds it to the relevant list to
  deal with later"
  (let* ((rword-id (word-has-uid-p rword))
         (rword-sc
          (if (name-is-cat-p rword)
              (cat-name (second (super-categories-of (name-is-cat-p rword))))
              (cat-name (category-of (get-head-ref-from-rule (car (single-term-rewrite? rword)))))))
         (sc-match? (eq rword-sc category))
         (same-sc-list (list mod rword term))
         (mismatch-sc-list (list mod rword :old-cat rword-sc :new-cat category term)))
    (cond ((and (equal id rword-id)
                (equal mod "orig"))
           (when *show-trips-redefinitions*
             (format t "~%ignoring redefinition ~s of already defined and IDed word~%"
                     term))
           (push (list rword term) *suppressed-redefs*))
          ((equal id rword-id)
           (when *show-trips-redefinitions*
             (format t "~%ignoring redefinition ~s of already defined and IDed word with mod ~s~%"
                     term mod))
           (push (list mod rword term) *suppressed-mod-redefs*))
          ((equal rword-id "can't get rule")
           (push mismatch-sc-list *no-rule-redef*))
          (rword-id
           (when *show-trips-redefinitions*
             (format t "~%stashing redefinition ~s of already defined word with other UID~%"
                     term))
           (if sc-match?
               (push (list mod rword rword-id term) *id-mismatch-redef*)
               (push (list mod rword rword-id :old-cat rword-sc :new-cat category term)
                     *id-and-cat-mismatch*)))
          ((null rword-id)
           (when *show-trips-redefinitions*
             (format t "~%stashing redefinition ~s of already defined word with no UID~%"
                     term))
           (if sc-match?
               (push same-sc-list *no-id-redef*)
               (push mismatch-sc-list *no-id-cat-mismatch-redef*))))))

(defparameter *violates-no-plural* nil)
(defparameter *word-diff-pos-name* nil)
(defparameter *plurals-of-existing-cats* nil)
(defparameter *diff-pos-of-existing-cats* nil)
(defparameter *namecat-id-mismatches* nil) ;; holds items where the name field matches a sparser category, but the original definition lacks or has a different ID -- to be folded in later
(defparameter *plurals-of-existing-words* nil)
(defparameter *diff-pos-of-existing-words* nil)
(defparameter *synonym-for-existing-words* nil)
(defparameter *name-id-mismatches* nil)
(defparameter *category-mismatch-existing-cats* nil)
(defparameter *category-mismatch-existing-words* nil)
(defun stash-def-indiv-with-id (word category id name loc &key no-plural maintain-case)
  (let* ((name-cat (when name (name-is-cat-p name)))
         (name-cat-uid (when name-cat (word-has-uid-p name)))
         (name-cat-sc (when name-cat (cat-name (second (super-categories-of name-cat)))))
         (word-plural-name (when name (word-is-plural-name? word name)))
         ;(word-diff-pos-name (when name (word-and-name-diff-pos? word name)))
         (name-ind (when (and name
                              (not name-cat)
                              (resolve name) 
                              (single-term-rewrite? name)) 
                     (get-head-ref-from-rule (car (single-term-rewrite? name)))))
         (name-ind-uid (when name-ind (word-has-uid-p name)))
         (name-ind-cat (when name-ind (cat-name (category-of name-ind)))))
                                        ;(lsp-break "stash-def-indiv-with-id pre-if")
    (cond (name-cat 
           (cond (word-plural-name
                  (push (list category name-cat id :word word) *plurals-of-existing-cats*))
                 #+ignore
                 (word-diff-pos-name
                  (push (list category name-cat id :word word) *diff-pos-of-existing-cats*))
                 ((eq name-cat-sc category)
                  (push `(def-synonym ,name-cat (:noun ,word)) (symbol-value loc))
                  (unless (equal id name-cat-uid)
                    (push (list category name-cat name-cat-uid :newUID id :word word) *namecat-id-mismatches*)))
                 (t
                  (push (list :orig-cat name-cat-sc :new-cat category :name name :newUID id :word word) 
                        *category-mismatch-existing-cats*))))
          (name-ind
           (cond (word-plural-name
                  (push (list category word id :name name) *plurals-of-existing-words*))
                 #+ignore
                 (word-diff-pos-name
                  (push (list category word id name) *diff-pos-of-existing-words*))
                 ((eq name-ind-cat category)
                  (push (list category word id name)  *synonym-for-existing-words*)
                  (if (equal id name-ind-uid)
                      (push `(def-indiv-with-id ,category ,word
                               ,(simplify-colons id)
                               ,.(when name `(:name ,(pname name)))
                               ,.(when no-plural `(:no-plural t))
                               ,.(when maintain-case `(:maintain-case t)))
                            (symbol-value loc))
                      (push (list category name name-ind-uid :newUID id :word word)
                            *name-id-mismatches*)))
                 (t
                  (push (list :orig-cat name-ind-cat :new-cat category :name name :newUID id :word word) 
                        *category-mismatch-existing-words*))))
          (word-plural-name
           (if (equal word (plural-version name))
               (push `(def-indiv-with-id ,category ,name
                        ,(simplify-colons id)
                        :name ,(pname name)
                        ,.(when maintain-case `(:maintain-case t)))
                     (symbol-value loc))
               (push `(def-indiv-with-id ,category ,name
                        ,(simplify-colons id)
                        :name ,name
                        :plural ,(list (plural-version name) word)
                        ,.(when maintain-case `(:maintain-case t)))
                     (symbol-value loc)))
           (when no-plural (push (list category word id name) *violates-no-plural*)))
          #+ignore
          (word-diff-pos-name
           (push (list category word id name) *word-diff-pos-name*))
          ((eq category 'organization)
           (let ((capitalized-name (if (upper-case-p (char name 0))
                                       name
                                       (make-capitalized name))))
             (push `(def-organization ,word :id ,id ,.(when name `(:name ,capitalized-name))
                                      ,.(unless (equal name capitalized-name)
                                          `(:synonyms (,name))))
                   (symbol-value loc))))
                                           
          (t
           (push `(def-indiv-with-id ,category ,word
                    ,(simplify-colons id)
                    ,.(when name `(:name ,(pname name)))
                    ,.(when no-plural `(:no-plural t))
                    ,.(when maintain-case `(:maintain-case t)))
                 (symbol-value loc))))
                                        ;(lsp-break "stash-def-indiv-with-id post-if")
    (car (symbol-value loc))))



(defun word-is-plural-name? (word pname)
  (let ((plural-versions 
         `(,(plural-version pname)
               ,@(cond ((ends-in? pname "us")
                        `(,(string-append (subseq pname 0 (- (length pname) 2)) "i")
                         ;; "Picornaviridae" for "picornavirus"
                         ,(string-append (subseq pname 0 (- (length pname) 2)) "idae")))
                        ((ends-in? pname "is") 
                         ;; "meningitides" for "meningitis" 
                         `(,(string-append (subseq pname 0 (- (length pname) 2)) "ides")
                            ;; "analyses" for "analysis"
                            ,(string-append (subseq pname 0 (- (length pname) 2)) "es")))
                        ((ends-in? pname "um") ;; "flagella" "filopodia"
                         `(,(string-append (subseq pname 0 (- (length pname) 2)) "a")))
                        ;; "caveolae" for "caveola"
                        ((ends-in? pname "a")
                         `(,(string-append pname "e")))
                        (t
                         nil)))))
    (member word plural-versions :test #'string-equal)))

(defun word-and-name-diff-pos? (word pname)
  (let ((suffixes `("ed" "ing" "ly" "ation" "sion" "tic" ,@(mapcar #'car *suffix-pos-table*))))
    (loop for suff in suffixes
            thereis (and (not (search word pname :test #'equalp))
                         (match-words-minus-suffix? word suff pname)))))

(defun match-words-minus-suffix? (word suffix pname)
  (and (search suffix word :test #'equal) ;; need to check because string-trim just uses a character bag so order isn't preserved
       (equalp (remove-suffix pname suffix) pname)))

(defun trips-class->krisp (term)
  (unless (null (second term))
    (let ((id (getf (cddr term) :id))
          (name (getf (cddr term) :name)))
    (ecase (intern (subseq (second term) 4)) ;; drop the ONT:
      ((protein gene-protein gene) ;; we treat genes as if they name the protein
       (cond ((or (search "FA:" id)
                  (search "XFAM:" id)
                  (search "FPLX:" id)
                  (search "GO" id)
                 ; (search "NCIT" id) ;; maybe, but can be non-fam, also hgnc?
                  )
              'protein-family)
             ((and (or (eq 0 (search "mir" name :test #'equalp))
                       (eq 0 (search "microRNA" name :test #'equalp)))
                   (search "NCIT" id))
              'micro-rna) ;; micro-rnas sometimes get labeled as genes, but there are some protein starting with "mir" however if it's got an ncit definition rather than a UP or HGNC it's more likely to be the micro-rna
           (t
            'protein))) 
      ;;(gene 'gene)
      (bacterium 'bacterium)
      (biological-process 'bio-process)
      ((internal-body-part body-part) 'bio-organ)
      (cancer 'cancer)
      (cell 'cell-type)
      (cell-line 'cell-line)
      (cell-part 'cellular-location)
      ((chemical molecule) 'molecule)
      (database 'database)
      (gene-translation 'cellular-process) ;; so far only "translation" so mostly moot
      (injury 'injury) ;; added category modeled on disease
      (macromolecular-complex 'bio-complex)
      ((length-unit measure-unit temperature-unit volume-unit weight-unit area-unit) 'unit-of-measure)
      (medical-disorders-and-conditions 'disease)
      (medical-instrument 'bio-method) ;; not quite, but we don't distinguish the instruments from the methods
      (molecular-domain 'protein-domain)
      (molecular-site 'residue-on-protein)
      ((organism nonhuman-animal animal fish insect invertebrate
                 microorganism person fungus plant bird vertebrate alga amphibian)
       'organism)
      (pharmacologic-substance
       (if (search "vaccine" name)
           'vaccine
           'drug))
      (physical-condition 'disease)
      (post-translational-modification 'post-translational-modification)
      (procedure 'bio-method)
      (professional-organization 'organization)
      (process 'bio-method) ;; the one case we have here is a bio-method -- transplantation
      (protein-family 'protein-family)
      ((amino-acid referential-sem time-unit mutation residue) 'referential-sem) 
      ;; have now made substance a category. amino-acids and mutations should be handled better
      ((rna mrna) 
       (if (or (eq 0 (search "mir" name :test #'equalp))
               (eq 0 (search "microRNA" name :test #'equalp)))
           'micro-rna
           'rna))
      (signaling-pathway 'pathway)
      (substance 'substance)
      (time-span 'cellular-process) ;; these all seem to be phases of mitosis or meiosis
      (virus 'virus)))))


(defun simplify-colons (x)
  (if (search "::" x)
      (concatenate 'string
                   (subseq x 0 (search "::" x) )
                   ":"
                   (subseq x (+ 2 (search "::" x) )))
      x))

(defun make-capitalized (string)
  (format nil "~{~a~^ ~}"
          (loop for sub in (split string)
                collect (if (member sub '("and" "for" "of" "the" "a" "in") :test #'equal)
                            sub
                            (string-capitalize sub)))))

(defparameter *reach-phrases* nil)
    
(defun reach-class->krisp (term)
  (let ((word (first term))
        (atlas (second term))
        (type (fourth term))
        (id (sixth term)))
    (if (or
         (and (not (equal atlas "uniprot"))
              (or
               (search "inhibitor" word)
               (search "receptor" word)
               (search " site" word)))
         (search "/" word)
         (search "anti-" word)
         (search "RNA" word)
         (search "uaz" atlas))
        (then ;;(format t "~% rejecting REACH UAZ definition of ~s" word)
          (push (concatenate 'string word ".") *reach-phrases*)
          nil)
        (ecase (intern (string-upcase atlas)) 
          (cellosaurus 'cell-line)
          (cl 'cell-type)
          (tissuelist (ecase (intern (string-upcase type))
                        (tumor 'tumor)
                        (cancer 'cancer)
                        (tissuetype 'tissue)
                        (cell 'cell-type)))
          (mesh 'cellular-process) ;; they only seem to use it for
          ;; bio-processes, while TRIPS also
          ;; uses it for drugs
          (go (ecase (intern (string-upcase type))
                (bioprocess 'cellular-process)
                (cellular-component 'cellular-location)))
          (uniprot (ecase (intern (string-upcase type))
                     (cellular-component 'cellular-location)
                     (gene 'protein)
                     (gene-or-gene-product 'protein)))
                   ;; the gene proteins are getting dropped on the floor and added manually
          (interpro 'protein-family)
          (pfam (ecase (intern (string-upcase type))
                  (family 'protein-family)
                  (domain 'protein-domain)))
          (pubchem 'molecule)
          (taxonomy 'organism)
          (uberon (ecase (intern (string-upcase type))
                    (organ 'bio-organ)
                    (secretion 'secretion)
                    (tissue 'tissue)))
                   ;; dropping UAZ definitions
                   ))))

(defun save-var->bio-nl-new-defs-file (var filename &key vl (if-exists :supersede))
  "Given a list containing global variable and a filename, when given
  a single variable output it line by line to the file, but if the
  keyword vl is given, then treat var as a list of global-variable
  names and print them each in the file with a defparameter; the file
  will be saved in the new-defs directory under the bio-not-loaded
  directory -- can specify what happens if the file already exists"
  (with-open-file (stream (concatenate 'string "sparser:bio-not-loaded;new-defs;" 
                                       filename ".lisp")
                          :direction :output :if-exists if-exists
                          :if-does-not-exist :create :external-format :utf-8)
    (unless (eq if-exists :append)
      (format stream "(in-package :sparser)~%~%"))
    (if vl
        (loop for v in var
                do (format stream "(defparameter ~s '~s)~%~%" v (symbol-value v)))
        (loop for def in var
                do (lc-one-line-print def stream)))))

(defparameter *suppressed-new-defs* '(*suppressed-hyphenated-new-words* *suppressed-mod-redefs* *id-mismatch-redef* *id-and-cat-mismatch* *no-id-redef* *namecat-id-mismatches* *no-rule-redef* *name-id-mismatches* *prot-fam-redef* *violates-no-plural* *word-diff-pos-name* *plurals-of-existing-cats* *diff-pos-of-existing-cats* *plurals-of-existing-words* *diff-pos-of-existing-words* *synonym-for-existing-words* *category-mismatch-existing-cats* *category-mismatch-existing-words* *suppressed-redefs* *non-bio-defs*))

(defparameter *new-id-defs*  '(*new-diseases* *new-bacteria* *new-viruses* *new-cancers* *new-bio-complexes* *new-bio-meth* *new-bio-proc* *new-noncell-loc* *new-cells* *new-cell-loc* *new-cell-proc* *new-drugs* *new-molecules* *new-pathways* *new-prot-dom* *new-rna* *new-units* *new-prot-fam* *new-post-trans-mod* *new-substances* *new-orgs*))

(defun collect-all-new-defs (functions)
  "Call on a list of functions, e.g., (list #'load-trips-terms #'load-reach-terms)"
  (loop for fn in functions
          do (funcall fn))
  (save-var->bio-nl-new-defs-file *suppressed-new-defs* "suppressed-new-defs" :vl t)
  (loop for v in *new-id-defs*
          do (save-var->bio-nl-new-defs-file (symbol-value v)
                                             (string-downcase (string-trim "*" (string v))))))

(defun trips/reach-term->def-bio (term &optional (trips/reach->krisp-class #'trips-class->krisp))
  "Function takes a trips definition and returns a sparser definition form"
  (when (equal (second term) 'sparser::--)
    ;; new format for file -- revise call
    (setq term (third term)))
  (when *suppress-redefinitions*
    (when (resolve (car term))
      (when *show-trips-redefinitions*
        (format t "~%ignoring redefinition ~s of already defined word~%"
                term))
      (return-from trips/reach-term->def-bio nil))
    (when 
        (or (resolve (string-downcase (car term)))
            (resolve (string-upcase (car term))))
      (when *show-trips-redefinitions*
        (format t "~%ignoring mixed-case redefinition ~s of already defined word~%"
                term))
      (return-from trips/reach-term->def-bio nil)))

  (let* ((name (getf (cddr term) :name))
        (name-cat (when name (name-is-cat-p name)))
        (category (funcall trips/reach->krisp-class term)))
    (case category
      ((residue-on-protein molecular-site nil time-span)
       ;;(format t "Rejecting REACH definition ~s~%" term)
       nil)
      (cellular-location
       `(define-cellular-location ,(car term)
           ,(simplify-colons
            (getf (cddr term) :id))))
      ((bacterium ;;bio-process ;; may conflict with handling of post-translational processes
        cancer
        cell-line
        cell-type
        cellular-process
        disease
        drug
        ;;gene
        molecule
        organism
        
        ;;protein
        ;; rna has problems
        unit-of-measure
        virus)
       (if name-cat
           `(def-synonym ,name-cat (:noun ,(car term)))
           `(def-bio ,(car term)
                ,category
              :long ,(getf (cddr term) :name)
              :identifier ,(simplify-colons
                            (getf (cddr term) :id)))))

      ((gene protein gene-protein)
       (push 
        `(define-protein ,(car term) ,(list (getf (cddr term) :id) (getf (cddr term) :name)))
        *trips-define-proteins*)
       (car *trips-define-proteins*))
      (bio-process
       (when (getf (cddr term) :name)
         (let ((name (intern (string-upcase (getf (cddr term) :name)) (find-package :sparser))))
         (if name-cat
             `(def-synonym ,name-cat (:noun ,(car term)))
             `(define-category ,name :specializes bio-process
                  ,.(when (getf (cddr term) :id)
                      `(:bindings (uid ,(getf (cddr term) :id))))
                  :realization (:noun ,(car term)))))))
      (t
       (unless (member category '(bio-method bio-organ bio-complex protein-domain protein-family rna referential-sem time-unit))
         (format t "~%defining an instance of ~s~%" category))
       (when (member category '(point-mutation)) 
         ;;(member category '(bio-process bio-organ bio-complex))
         ;; we really want bio-processes and bio-organs to be individuals, but there is a problem with def-bio -- ASK ALEX
         (lsp-break "trips/reach-term->def-bio"))
       (unless (or (eq category 'referential-sem)
                   (eq category 'time-unit))
         (let ((name (getf (cddr term) :name)))
           `(define-named-bio-individual ',category
                ',(intern (string-upcase (car term)) (find-package :sp))
              ',(simplify-colons (getf (cddr term) :id))
              ,.(when name `(:name ,(pname name))))))))))

(defmacro def-named-bio-individual (word category-name id &key name)
  `(define-named-bio-individual ',category-name ',word ',id ,. (when name `(:name `,name))))

(defun define-named-bio-individual (category-name word id &key name)
  (let* ((category (category-named category-name :break-if-undefined))
         (i (if id
                (or (gethash id *uid-to-individual*)
                    (setf (gethash id *uid-to-individual*)
                          (let ((ind (find-or-make-individual category :uid id)))
                            (if name
                                (bind-dli-variable :name name ind)
                                ind))))
                (find-or-make-individual category :name (if name (pname name) (pname word))))))
    (add-rules (make-rules-for-head :common-noun (resolve/make (string-downcase (pname word))) category i) i)
    (when name (add-rules (make-rules-for-head :common-noun (resolve/make (pname name)) category i) i))
    i))

;;;---------------------------
;;; bio-synonyms
;;;---------------------------

;; This maps IDs (e.g., "BRAP_HUMAN") to a list of synonyms.
;; We use #'equalp for case-insensitivity. NO -- need to maintain case
(defvar *bio-synonym-hash* (make-hash-table :test #'equal))

(defun add-bio-synonyms (id synonyms)
  "Adds the given synonyms under the given ID."
  (let ((existing (gethash id *bio-synonym-hash*)))
    (setf (gethash id *bio-synonym-hash*)
          (remove-duplicates (append synonyms existing) :test #'equal))))

(defun get-bio-synonyms (id)
  "Given an ID, retrieve synonyms (not including the ID)."
  (gethash id *bio-synonym-hash*))

(defun indiv-bio-synonyms (indiv)
  (or (get-bio-synonyms (value-of 'uid indiv))
      (get-bio-synonyms (pname (value-of 'name indiv)))))

(defun get-family-member-names (family)
  (declare (special category::protein-family category::collection))
  (assert (and (itypep family category::protein-family)
               ;; collections with protein-families pass the first itypep
               (not (itypep family category::collection)))) 
  (let* ((fam-uid (value-of 'uid family))
         (fam-collection (or (value-of 'family-members family)
                             (and fam-uid
                                  ;; there are cases of generics like
                                  ;; "family" or "enzyme" where a
                                  ;; family has neither uid nor members
                                 (value-of 'family-members
                                           (gethash fam-uid
                                                    *uid-to-individual*))))))
    (when fam-collection
      (loop for protein in (value-of 'items fam-collection)
            append (indiv-bio-synonyms protein)))))

(defun get-all-family-syns (family)
  (append (indiv-bio-synonyms family)
          (get-family-member-names family)))

(defun sparser-indiv->synonyms-fam-members (indiv)
  (declare (special category::protein-family category::collection))
  (cond ((itypep indiv category::collection)
         (loop for item in (value-of 'items indiv)
               append (sparser-indiv->synonyms-fam-members item)))
        ((itypep indiv category::protein-family)
         (get-all-family-syns indiv))
        (t
         (indiv-bio-synonyms indiv))))
    
;;;-----------------------
;;; bio-entity -> protein
;;;-----------------------

(defmethod convert-bio-entity-to-protein ((bio-entity individual))
  "Takes the name of the bio-entity and makes it the name of
   a protein by using define-bio. Deleted the rules associated
   with the bio-entity. Returns the protein."
  (unless (itypep bio-entity 'collection)
    ;; We encounter cases like this, where a conjunction of bio-enties
    ;; has been passed up. The problem should be fixed upstream where
    ;; the list of possible proteins is assembled 
    ;;  "Ax12-810Δ251-351, Ax12-672Δ251-351, and Ax12-531Δ251-351"
    (let* ((name (value-of 'name bio-entity))) ;; often a polyword
      (if name
        (let ((protein (define-bio name 'protein)))
          ;; delete all the rules associated with the individual
          (setf (get-rules bio-entity) (map nil #'delete/cfr (get-rules bio-entity)))
          ;; can't easily delete the individual itself
          protein)
        (else
          (warn "Couldn't convert bio-entity ~s to a protein."
                (retrieve-surface-string bio-entity))
          bio-entity)))))

(defmethod convert-bio-entity-to-protein ((e edge))
  ;; called from make-protein-pair/convert-bio-entity and
  ;; from multi-colong-ns-patterns, which will send in protein
  ;; edges as well as ones that need to be converted
  (declare (special category::protein))
  (let ((old-ref (edge-referent e)))
    (unless (itypep old-ref category::protein)
      (let ((rule (edge-rule e))
            (new-ref (convert-bio-entity-to-protein old-ref)))
        (declare (ignore rule)) ;; for now
        ;; subvert both this edge and the rule
        (setf (edge-category e) category::protein)
        (set-edge-referent e new-ref)
        ;;(update-edge-mention-referent e new-ref)
        new-ref))))

(defmethod convert-bio-entity-to-protein ((items list))
  ;; called from, e.g. multi-colon-ns-patterns to transparently
  ;; convert the edges
  (unless (every #'edge-p items)
    (error "Some member(s) of the list is not an edge"))
  (loop for edge in items
    do (convert-bio-entity-to-protein edge)))


(defun reify-p-protein-and-make-edge (start-pos end-pos
                                      &aux (words (effective-words-given-edges start-pos end-pos)))
  ;; Called from resolve-ns-pattern on (:single-cap :digits).
  ;; Looks for a "p" and if it finds it makes a protein.
  ;; E.g "suggesting that p38 SAPK was active" in Jan #34
  (push-debug `(,words ,start-pos ,end-pos))
  (when (string= "p" (word-pname (first words)))
    ;; take template from reify-residue-and-make-edge
    (when *work-on-ns-patterns*
      (break "stub: possible p protein?"))))


;;;--------------------
;;; "pERK" and friends
;;;--------------------

(defun little-p-hack (word)
  "Called from make-word/all-properties/or-primed if the word is 
   unknown (~ doesn't have rule-set), its capitalization is mixed
   case, and it starts with a lower-case p (while running in big 
   mech mode). Determine whether the characters after the p 
   correspond to a known word (frequently a protein), and define
   a rule for the word based on the phosphorylated protein. 
     If the post-p characters do not correspond to a known word,
   or the known word is not a protein (as indicated by checking
   its (presumed to be single) unary rule) then we call the other
   'out' for Big Mechanism unknown words which to store the word 
   and have it handled  later. Runs for side-effects."
  (declare (special *exact-pname-of-token* ;; set in the tokenizer
                    category::protein category::phosphorylate)) 
  (let* ((pname *exact-pname-of-token*) ;; "pRas"
         (post-p (subseq pname 1))      ;; "Ras"
         (known-word (resolve post-p))
         (rule (when known-word (find-single-unary-cfr known-word)))
         (protein (when rule (cfr-referent rule))))
    (if (and (individual-p protein)
             (not (value-of 'predication protein)) ;; strange case "ppERK"
             (itypep protein category::protein))
        (let* ((var (subcategorized-variable  category::phosphorylate :object protein))
               ;; no longer calls make-phosphorylated-protein so we
               ;; can split off cases like this where there is no edge
               ;; since we're creating a word instead
               (prot-pred (create-predication-by-binding
                                 var protein
                                 (find-or-make-lattice-description-for-ref-category
                                  category::phosphorylate)))
               (phospho-protein (bind-dli-variable 'predication prot-pred protein)) 
               (p-word (define-word/expr pname :override-duplicates))
                         ;;/// delete the lowercase version ('word')
               (rule (define-cfr/resolved
                         (cfr-category rule) ;; lhs
                         (list p-word)       ;; rhs
                       (cfr-form rule)
                       phospho-protein ;; referent
                       (cfr-schema rule))))
          ;; trace goes here
          rule)
        (store-word-and-handle-it-later word))))




;;;--------------------------------------------
;;; interpreting unknown words as bio-entities
;;;--------------------------------------------

#| Given how we used to handle unknown words, we would
assume that they were bio-entities, since that would at least
give us something we could refer to in rules particularly
context sensitive ones. We also burned that into a rule
so we'd have a remember these as a side-effect across
sentences and documents. Now (2/5/16) we just lookup the 
individual for the bio-entity since we may have encountered
it before and then make the edge but don't record anything
which means that when we encounter it again we'll repeat
the process.
|#
(defun handle-unknown-word-as-bio-entity (pos-before)
  "Called from deal-with-unhandled-unknown-words-at, which started
   out in interpretation of unknown words. See note there."
  (declare (special category::bio-entity))
  (let* ((pos-after (chart-position-after pos-before))
         (actual-characters
          (trim-whitespace
           (extract-characters-between-positions pos-before pos-after)))
         (word (resolve/make actual-characters)))
    (tr :unknown-word-to-bio-entity word)
    ;; This will record it in the list of *newly-found-unknown-words*
    ;; if the *collect-new-words* flag is up.
    (add-new-word-to-catalog word :BigMech-default)

    (let* ((i (find-or-make-individual 'bio-entity :name word))
           (edge (install-preterminal-edge 
                   'handle-unknown-word-as-bio-entity ;; cfr argument
                   word ;; word we're installing the preterminal over
                   pos-before
                   pos-after
                   category::bio-entity ;; category of edge
                   category::common-noun ;;/// form ???proper-noun??
                   i ))) ;; referent
      (tr :unknown-word-bio-edge edge)
      edge)))

#|  This is what we used to do. Notice that it creates a rule
(defun setup-unknown-word-BigMech-default (word)
  ;; called from make-word/all-properties/or-primed when
  ;; *big-mechanism* flag is up and OBO lookup, morphology,
  ;; and Comlex have not applied.
  (let* ((likely-protein? ;; true more often than not given hand inspection
          (memq (word-capitalization word)
                '(:initial-letter-capitalized 
                  :all-caps
                  :mixed-case)))
         (kind ;;(if likely-protein? 'protein 'bio-entity)
          ;; wildly overgenerates
          'bio-entity))
    (declare (ignore likely-protein?)) ;; needs refined check
    (let ((i (def-bio/expr (word-pname word) ;; short
                           kind
               :takes-plurals nil)))
      i)))  |#



;;;-------------------------------
;;; Protein definition operations
;;;-------------------------------

(defun ras2-protein? (i)
  (declare (special category::protein))
  (and (individual-p i)
       (itypep i category::protein)
       (value-of 'ras2-model i)))

;;obsolete
;;(defparameter *ras2-proteins* (make-hash-table :size 1500 :test #'equal))
;;(gethash (string-for/name i) *ras-2-proteins*)

(defparameter *maintain-ras2-info* nil)

(defmacro def-ras2-protein (name args)
  (if *maintain-ras2-info*
      (eval `(define-protein ,name ,args :ras2-model t))
      (eval `(define-protein ,name ,args))))

;;;---------------------------
;;; pattern-driven protein definition
;;;---------------------------

(defmacro define-protein (name IDS &key documentation ras2-model)
  ;; no longer pluralize protein definitions -- see what happens
  (let ((*inhibit-constructing-plural* t))
    (declare (special *inhibit-constructing-plural*))
    (setq IDS (loop for id in IDS when (allowable-protein-head id) collect id))
    (if ras2-model
        (make-def-protein (cons name IDS) :documentation documentation :ras2-model t)
        (make-def-protein (cons name IDS) :documentation documentation))))

(defmacro define-singular-protein (name IDS)
  (let ((*inhibit-constructing-plural* t))
    (declare (special *inhibit-constructing-plural*))
    (setq IDS (loop for id in IDS when (allowable-protein-head id) collect id))
    (make-def-protein (cons name IDS))))

(defparameter *prot-synonyms* (make-hash-table :test #'equal))
(defparameter *standardize-protein-defs* nil)
(defparameter *standard-protein-ht* (when *standardize-protein-defs* (make-hash-table :size 10000 :test #'equalp)))

(defun make-standard-proteins ()
  (loop for pr in (sort (hal *standard-protein-ht*) #'string< :key #'car)
        do 
          (format t "(define-protein ~s (" (car pr))
          (loop for ss in (sort (cdr pr) #'string<) do (format t "~s " ss))
          (format t "))~%")))

(defun get-protein-synonyms (id)
  (gethash id *prot-synonyms*))

(defparameter *q-proteins* nil)



(defparameter *non-standard-protein-ht* (when *standardize-protein-defs* (make-hash-table :size 10000 :test #'equalp)))

(defun standardize-protein-def (ids)
  (declare (special *upa-upm*))
  (when *standardize-protein-defs*
    (let* ((human-mnemonic (loop for id in ids when (human-mnemonic? id) do (return id)))
           (standard-id
            (or (and human-mnemonic
                     (gethash (string-upcase human-mnemonic) *upa-upm*)
                     (pname (gethash human-mnemonic *upa-upm*)))
                (loop for id in ids
                      do
                        (cond ((and (not (human-mnemonic? id)) (gethash id *upa-upm*))
                               (return id))
                              ((up-accession? id) (return (up-accession? id)))))
                (loop for id in ids
                      do (if (eq 0 (search "PROTEIN" id))
                             (return id)))
                (loop for id in ids
                      do (if (search "_" id)
                             (return id))))))
      (when (and standard-id (not (human-mnemonic? standard-id)) (gethash standard-id *upa-upm*))
        (push (gethash standard-id *upa-upm*) ids))
               
      (if standard-id
          (setf (gethash standard-id *standard-protein-ht*)
                (remove standard-id
                        (remove-duplicates (append ids (gethash standard-id *standard-protein-ht*)) :test #'equal)
                        :test #'equal))
          (setf (gethash (car ids) *non-standard-protein-ht*)
                (remove (car ids)
                        (remove-duplicates (append ids (gethash (car ids) *non-standard-protein-ht*)) :test #'equal)
                        :test #'equal))))))



(defun human-mnemonic? (pr)
  (search "_HUMAN" (pname pr) :test #'equalp))

(defun extract-up (pr upstring)
  (let* ((found (search upstring pr :test #'equalp))
         (start (when found (+ found (length upstring))))
         (res 
          (when found
            (subseq pr start
                    (or (search " " pr :start2 start)
                        (search ")" pr :start2 start))))))
    (when (and res (not (equalp "" res)))
      (if (equal "0" (subseq res 0 1))
          pr
          res))))

(defun up-accession? (pr)
  (let ((pr (pname pr)))
    (or (extract-up pr "UP:")
        (extract-up pr "UniProt:")
        (extract-up pr "PR:"))))

(defparameter *inhibited-protein-plurals* nil)
(defun make-def-protein (IDS &key documentation (ras2-model nil))
  (declare (special *inhibit-constructing-plural*))
  (standardize-protein-def ids)
    
                                        
  (let
      ((bpid (best-protein-id IDS)))
    (loop for id in IDS 
          when (and (equal id (string-downcase id)) (not (search " " id))
                    (not (find-if #'digit-char-p id)))
          do (push id *q-proteins*))
    (def-bio/expr bpid
        'protein
      :synonyms (loop for id in IDS
                      unless
                        (or (equal id bpid)
                            (when (eq (length id) 2)
                              (if (equal id (string-downcase id))
                                  t
                                  (progn ;; (print id)
                                         nil)))
                           ;; (eq (length id) 2) ;; (and (eq (length id) 2) (print id))
                            (and (search ":" id)
                                 (not (search " " id))))
                      collect id)
      :identifier bpid

      :MITRE-LINK (if (search "_" bpid)
                      (format nil "UNIPROT:~A" bpid)
                      bpid)
      :ras2-model ras2-model
      :takes-plurals (not *inhibit-constructing-plural*)
      :documentation documentation)))

(defun in-ras2-model? (entity)
  (not
   (null
    (or
     (value-of 'ras2-model entity)
     (let*
         ((name-word (value-of 'name entity))
          (name (cond
                 ((word-p name-word)
                  (word-pname name-word))
                 ((polyword-p name-word)
                  (pw-pname name-word))
                 (t nil))))
         (member name
                 '("MAPK" "MEK" "E3b1" "_HUMAN" "p140"  "hVps34" "hRad17" "RasGRF1" "D3" "Ras" "AKT")
                 :test #'equal))))))

(defun best-protein-id (ids)
  (cond ((search ":" (car ids))
         (car ids))
        ((loop for id in ids
               when (search "_" id)
               do (return id)))
        (t (car ids)))
  ;;(car ids) ;; we now have updated all defining forms so the best id is the first one!!
  )

(defun simp-protein (dp)
  (if
   (consp (third dp))
   dp
   `(define-protein ,(second dp) ,(cddr dp))))

(defun all-proteins ()
  (declare (special category::protein))
  (loop for s in *all-sentences*
    append
    (loop for e in (second s)
      when (itypep e category::protein)
      collect e)))

(defun pro-name (pro)
  (let ((name (value-of 'name pro)))
    (cond((polyword-p name) (pw-pname name))
         ((word-p name)(word-pname name)))))

(defun prot-name (prot)
  (when prot
    (or
     (pro-name prot)
     (get-mitre-id prot))))

(defparameter *prot-ht* (make-hash-table :test #'equal))
(defparameter *prot-cts* nil)
(defparameter *prots* nil)
(defparameter *nil-prots* nil)
(defparameter *aps* nil)
(defparameter *aaps* nil)
(defparameter *naps* nil)
(defparameter *named-proteins* nil)
(defparameter *unique-named-substrates* nil)
(defparameter *poorly-identified-proteins* nil)

(defun protein-name-count (proteins)
  (clrhash *prot-ht*)
  (loop for p in proteins
    do
    (push p (gethash (prot-name p) *prot-ht*)))
  (setq *prot-cts* nil)
  (maphash #'(lambda(name prots) (push (list name (length prots)) *prot-cts*)) *prot-ht*)
  (setq *prot-cts* (sort *prot-cts* #'> :key #'second))
  *prot-ht*)

(defun poorly-identified-proteins()
  (declare (special *prots* *aps* *aaps* *naps* *named-proteins* *poorly-identified-proteins*
                    *unique-named-substrates*))
  (length (setq *prots* (all-proteins)))
  (protein-name-count *prots*)
  (length (setq *nil-prots* (gethash nil *prot-ht*)))
  ;;(loop for i from 1 to 30 collect (print (retrieve-surface-string (nth i nil-prots))) (nth i nil-prots))
  (length (setq *aps* (all-phosphorylations)))
  (length (setq *aaps* (loop for a in *aps* when (get-protein-substrate (car a)) collect (car a))))
  (length (setq *naps* (loop for a in *aps* unless (get-protein-substrate (car a)) collect (car a))))
  (length
   (setq *named-proteins* (loop for a in *aaps* when (prot-name (car (get-protein-substrate a)))
                            collect (prot-name (car (get-protein-substrate a))))))
  (setq *unique-named-substrates* (remove-duplicates *named-proteins* :test #'equalp))
  (setq *poorly-identified-proteins*
        (loop for s in *unique-named-substrates* unless (or (search "PR:" s)(search "_" s)) collect s)))


(defun protein-desc (pro)
  (when (pro-name pro)
    (let
        ((st (semtree pro)))
      `(,(symbol-name (cat-symbol (car (indiv-type (car st))))) (:name ,(pro-name pro)),@(cdr st)))))




;;;------------------
;;; Useful accessors
;;;------------------

(defmethod get-protein ((pname string))
  ;; conventient syntactic sugar. Motivated by explicitly
  ;; constructed pathways.
  (flet ((lookup (word)
           (or (get-protein word)
               (get-family word))))
    (let ((word (resolve pname))
          protein )
      (unless word
        (error "The word ~a isn't defined, so it can't ~
                name a protein." pname))
      ;; iterate spelling variations
      (setq protein (lookup word))
      (unless protein
        (let* ((capitalized (string-capitalize pname))
               (cap-word (resolve capitalized)))
          (when cap-word
            (setq protein (lookup cap-word)))))
      protein)))

(defmethod get-protein ((name label))
  (declare (special *uniprot-name-ht*))
  (when (and (search "UP:" (pname name))
             (stringp (car (gethash (pname name) *uniprot-name-ht*))))
    (setq name (or (resolve (car (gethash (pname name) *uniprot-name-ht*)))
                   name)))
  (let ((rule (car (rs-single-term-rewrites (rule-set-for name)))))
    (if (cfr-p rule)
        (cfr-referent rule)
        (find-individual 'protein :name name))))

;; get rid of misnamed "bio-family" -- it is only used for proteins
(defmethod get-family ((name word))
  (or (find-individual 'human-protein-family :name name)
      (find-individual 'protein-family :name name)))

(defmethod get-family ((name polyword))
  (or (find-individual 'human-protein-family :name name)
      (find-individual 'protein-family :name name)))


;;;---------------------------------
;;; protein (bio-entity) ID mapping
;;;---------------------------------

(defparameter *krisp-object-to-Mitre-ID* (make-hash-table)
  "Uses the Mitre-link information to connect proteins to
   the IDs that Mitre is using.")

(defparameter *Mitre-ID-to-krisp-object* (make-hash-table)
  "From the ID to the protein")


(defun handle-mitre-link (i mitre-link)
  ;; Called from def-bio when a mitre-link is supplied
  (setf (gethash i *krisp-object-to-Mitre-ID*) mitre-link)
  (setf (gethash mitre-link *Mitre-ID-to-krisp-object*) i))

(defun get-mitre-id (l)
  (cond
   ((individual-p l)
    (or
     (gethash l *krisp-object-to-Mitre-ID*)
     (gethash (car (indiv-type l)) *krisp-object-to-Mitre-ID*)))
   ((category-p l)
    (gethash l  *krisp-object-to-Mitre-ID*))))


;;;-------------------------------------------
;;; macro for defining individual particulars
;;;-------------------------------------------

(defmacro def-bio (short kind
                   &key documentation greek identifier long synonyms takes-plurals
                        mitre-link ras2-model)
  ;; short = "NIK", long = "NF-κB-inducing kinase"
  ;; kind = kinase, greek = "alpha"
  ;; Makes individuals (particulars), that are instances of
  ;; a specific kind. Staying vague about what they might denote.
  (declare (special *inhibit-constructing-plural*))
  (unless (and (stringp short) (symbolp kind))
    (error "Malformed definition: short form must be a string,~
          ~%and the kind must be a symbol"))
  (when greek
    (typecase greek
      (string)
      (cons
       (unless (every #'stringp greek)
         (error "The Greek letters in a set of them must all be strings")))
      (otherwise
       (error "Spelled out Greek letter must be a string"))))
  (when identifier
    (unless (stringp identifier)
      (error "OBO identifier must be a string")))
  (when long
    (unless (stringp long)
      (error "Long form of name must be a string")))
  (when synonyms
    (unless (and (listp synonyms)
                 (every #'stringp synonyms))
      (error "The synonyms must be a list of strings")))
  (unless takes-plurals
    (setq takes-plurals (not *inhibit-constructing-plural*)))

  `(def-bio/expr ,short ',kind
     :documentation ,documentation
     :greek ',greek :identifier ',identifier :mitre-link ,mitre-link
     :ras2-model ,ras2-model
     :long ,long :synonyms ',synonyms :takes-plurals ,takes-plurals))


(defun def-bio/expr (short kind
                     &key documentation greek identifier mitre-link
                       long synonyms takes-plurals ras2-model
                       members)
  ;; use find-individual with their names to retrieve these.
  (let* ((word (resolve/make short))
         (category (category-named kind :break-if-undefined)))
    (without-redefinition-warnings
      (make-typed-bio-entity word category
                             greek identifier mitre-link
                             ras2-model long synonyms takes-plurals documentation members))))


(defun define-bio (word category-name)
  (let ((category (category-named category-name :break-if-undefined)))
    (make-typed-bio-entity word category)))


(defun make-typed-bio-entity (word category
                              &optional greek identifier mitre-link
                                ras2-model
                                long synonyms takes-plurals documentation members)
  (declare (special *uniprot-name-ht*))
  (unless (find-variable-for-category 'name category)
    (error "Cannot use the def-bio form with the category ~a~
            because it does not provide a 'name' variable" category))
  
  (let ((label (or (override-label category) category))
        (form category::proper-noun)
        ;; proper noun makes sense for named proteins and such
        ;; but the marker may actually be the capitalization
        ;; of the word, which would have to be caught upstream
        ;; and passed through in a parameter.
        rules  i
        (name (when (and (search "UP:" (pname word))
                         (stringp (car (gethash (pname word) *uniprot-name-ht*))))
                (resolve/make (car (gethash (pname word) *uniprot-name-ht*))))))

    (setq i (find-or-make-individual category :name (or name word)))
    ;; This also sets up a rule for the name/word as a common noun
    ;; with the individual as its referent
    
    ;;(lsp-break "make-typed-bio-entity")
   
    ;; Add synonyms to the table for this head term
    (when synonyms
      (add-bio-synonyms (or identifier (word-string word)) synonyms))

    (let* ((retrieved-rules (or (get-rules i)
                                (add-rules-cond-plural word category i
                                                       :no-plural (not takes-plurals))))
           (rules retrieved-rules))

      #|
      (when mitre-link
      (handle-mitre-link i mitre-link))
      (when ras2-model
      (setq i (bind-dli-variable 'ras2-model ras2-model i)))
      ;; At this point, i has been changed to include the ras2-model ; ;
      ;; binding (and the mitre-link binding) if necessary, so we need to use this ; ;
      ;; version of i for all the rules ; ;
      |#

      (when identifier
        (setq i (bind-dli-variable :uid identifier i)))
      (when (consp members)
        (setq i (set-family-members i members)))

      ;; Update the referents of the rules to be the extended
      ;; individual created by binding the identifier.
      (cond
        (rules
         (loop for r in rules when (cfr-p r)
                 do
                 (setf (cfr-form r) category::proper-noun)
                 (setf (cfr-referent r) i)))
        (t
         (push-debug `(,i ,word))
         (error "something badly formed about rules field")))

      (let* ((pname (etypecase word
                      (word (word-pname word))
                      (polyword (pw-pname word))))
             (downcased-pname (string-downcase pname)))
        (unless (string= downcased-pname pname) ;; case-sensitive
          (let ((lowercase-word (resolve/make downcased-pname)))
            (push (define-cfr label `(,lowercase-word)
                    :form form
                    :referent i)
                  rules))))
      
      (when (or name ;; from Uniprot
                word) ;; passed in
        (make-mumble-resource-stripping-underbar-human i name word))
      
    
      (when synonyms ;; quoted list of strings
        (dolist (syn synonyms)
          (let ((word (resolve/make syn)))
            (push (define-cfr label `(,word)
                    :form form
                    :referent i
                    #+ignore ;; fill in raw-text at completion
                    (if (value-of 'name i)
                                  (bind-dli-variable 'raw-text word i)
                                  (bind-dli-variable 'name word i)))
                  rules)
            ;; 1/12/16 Spews polyword-duplication complaints
            ;; when applied to proteins
            (when takes-plurals
              (let ((plural
                     (etypecase word
                       (word (plural-version word))
                       (polyword (plural-version/pw word)))))
                (push (define-cfr label `(,plural)
                        :form form
                        :referent (if (value-of 'name i)
                                    (bind-dli-variable 'raw-text word i)
                                    (bind-dli-variable 'name word i)))
                      rules))))))

      ;; Now we do that by-hand for the long-form. If the long form needs
      ;; to have a variant with a greek letter in it we'll make two rules.
      (when long
        (let* ((pw (resolve/make long)) ;; pw = polyword = multiword
               (cfr (define-cfr label `(,pw)
                      :form form
                      :referent i)))
          (push cfr rules)))

      (when greek
        (let ((additional-rules
               (rules-with-greek-chars-substituted
                ;; SBCL caught fact that some words are actually polywords here...
                (etypecase word
                  (word (word-pname word))
                  (polyword (pw-pname word)))
                long greek label form i)))
          (setq rules (nconc additional-rules rules))))

      (when rules
        (add-rules rules i))

      (when documentation
        (store-category-documentation i documentation))
      i)))


(defun make-mumble-resource-stripping-underbar-human (i name word)
  "For some reason I don't really understand, the realization we've been
   getting for, e.g., BRAF has been 'BRAF_HUMAN'. This and variations
   on the problem led Alex to writte pretty-bio-name to look at the
   protein and see what could be done better (interface/mumble/binding-helpers.lisp).
   It's not so easy to thread that check in during realization in the 
   new, more grammar-directed code, so rather than jump through hoops
   to remove the '_HUMAN' during realization, we'll set up the lp with 
   the proper form to begin with. 
   The input name/word are words (polywords) at this point"
  (let* ((term (or name word)) ;; original version perferred name
         (pname (pname term))
         (index (search "_HUMAN" pname)))
    (when index
      (let ((prefix (subseq pname 0 index)))
        (setq term (resolve prefix))))
    (when term
      (make-corresponding-mumble-resource term  :common-noun i))))


(defun rules-with-greek-chars-substituted (short long greek-words label form i)
  (unless 
      *greek-character-map*
    (populate-greek-character-map))
  (push-debug `(,long ,greek-words ,i ,short ,form))
  (etypecase greek-words
    (string (setq greek-words (list greek-words)))
    (cons ))
  (let* ((word-char-pairs
          (loop for greek-word in greek-words ;; "alpha"
            as greek-char = (greek-character-for greek-word)
            collect (cons greek-word greek-char)))
         (word-list ;; hook for long list of aliases
          (cond ((and long short) (list long short))
                (long (list long))
                (short (list short))
                (t (error "both long and short are nil ?????"))))
         rhs-strings  rules  )

    (dolist (pname word-list)
      (dolist (pair word-char-pairs)
        (let* ((full (car pair)) ;; "alpha"
               (char (cdr pair)) ;; "a" -- the greek character
               (length (length full)) ;; 5
               (index (search full pname)))
          (when index
            (let* ((prefix (subseq pname 0 index))
                   (suffix (subseq pname (+ index length)))
                   (revised (concatenate 'string prefix char suffix)))
              ;;(break "revised = \"~a\"" revised)
              (push revised rhs-strings))))))

    (dolist (rhs rhs-strings)
      (let* ((word (resolve/make rhs))
             (rule (define-cfr label `(,word)
                     :form form
                     :referent i)))
        (push rule rules)))

    rules))

;;;----------
;;; Families
;;;----------

(defun get-human-species ()
  "Because find-individual doesn't work with the name because the UID
is bound first, this is currently our best way to get the individual
for this species"
  (cfr-referent (car (single-term-rewrite? "human"))))

(defmacro def-family (name &key type species members ;; for family
                           long identifier synonyms) ;; for def-bio

  (unless (stringp name) (error "Name argument should be a string"))
  `(define-family
     ,name :type ',type :species ',species :members ',members
     :long ',long :identifier ',identifier :synonyms ',synonyms))

(defun define-family (name &key type species members
                      long identifier synonyms)
  #+ignore
  (unless members
    (error "It doesn't make sense to define a family without members"))
  (unless type
    (setq type category::protein))
  (unless species
    (when (consp members) 
      (if (loop for m in members
                thereis (human-mnemonic? m))
          (setq species (get-human-species))))) 
  ;; don't want to default to human unless the members are
  (let* ((category-name
          (cond
            ((and (eq species (get-human-species))
                  (eq type category::protein))
             'human-protein-family)
            ((eq type category::protein)
             'protein-family)
            (t (break "what type of family is this supposed to be?"))))
         (i (def-bio/expr name category-name
              :long long :identifier identifier :synonyms synonyms
              :takes-plurals t
              :members members)))
    i))

(defmacro def-family-with-id (word id &key type species members
                           name synonyms maintain-case)
  (unless (stringp word) (error "Word argument should be a string"))
  (setq maintain-case t)
  `(define-family-with-id
     ',word ',id ,.(when type `(:type ',type)) 
     ,.(when species `(:species ',species)) 
     ,.(when members `(:members ',members))
     ,.(if name
           `(:name ',name)
           `(:name ',word)) 
     ,.(when synonyms `(:synonyms ',synonyms))
     ,.(when maintain-case `(:maintain-case ',maintain-case))))


(defun define-family-with-id (word id &key type species members
                              name synonyms maintain-case)
  ;(declare (special word id species))
  #+ignore
  (unless members
    (error "It doesn't make sense to define a family without members"))
  (unless type
    (setq type category::protein))
  (unless species
    (when (consp members) 
      (if (loop for m in members
                thereis (human-mnemonic? m))
          (setq species (get-human-species)))))
  (unless name (setq name word))
  ;(lsp-break "def-family pre-let")
  ;; don't want to default to human unless the members are
  (let* ((category-name
          (cond
            ((and (eq species (get-human-species))
                  (eq type category::protein))
             'human-protein-family)
            ((eq type category::protein)
             'protein-family)
            (t (break "what type of family is this supposed to be?"))))
         (i (define-individual-with-id category-name word id 
                                       :name name :members members 
                                       :synonyms synonyms
                                       :maintain-case maintain-case))) 
    i))

(defun set-family-members (i members)
  ;;(print `(the individual which has added members is ,i))
  (let ( proteins )
    (dolist (name members)
      (let ((protein (get-protein name)))
        (unless protein
          (break "Can't retrieve protein from the name ~s" name))
        (push protein proteins)))
    (let ((set-of-proteins (create-collection proteins 'protein))
          (count (length members)));(find-number (length members))))
      (setq i (bind-dli-variable 'family-members set-of-proteins i))
      (setq i (bind-dli-variable 'count count i))
      ;; If we didn't use such a specific category these would matter.
      i)))

#+ignore
(defun reify-phosphorylated-protein (words prot-edge start-pos next-position)
  (declare (special words edges start-pos next-position))

  (let* ((words-string (actual-characters-of-word start-pos next-position))
         (protein (edge-referent prot-edge))
         (edge
          (make-edge-over-long-span
           start-pos
           next-position
           (edge-category prot-edge)
           :rule 'reify-phosphorylated-protein
           :form (edge-form prot-edge)
           :referent (make-phosphorylated-protein protein) 
           :words words)))
        (def-phosphorylated-protein words-string prot-edge)
    edge))
        

(defun make-phosphorylated-protein (protein &optional (raw-text "funnyprotein"))
  "No longer used by little-p-hack, but still used by two no-space
operations: span-phosphorylated-protein and
make-bio-complex-with-hyphen -- span-phosphorylated-protein is called
when there's a nospace item that starts with a p, p-, or P- and the
remaining part of the word is a protein or protein family -- because
of the this and the fact that in the case of a 'p' without a hyphen
there is no edge over the 'p' as a phosphorylate, currently this does
not create an edge over the predication -- we may fix that later so
that we can make an edge for all cases. make-bio-complex-with-hyphen
calls this function when the part before the hyphen is a phosphorylate
e.g. 'phospho-'"
  (declare (special category::phosphorylate))
  (let* ((prot-sexpr (krisp->sexpr protein))
         (old-raw (a-get-item 'raw-text (cdr prot-sexpr)))
         (new-text (or raw-text
                       (when (and old-raw
                                  (not (eq #\p (aref old-raw 0))))
                         (format nil "p-~a" old-raw))))
         (new-prot (if raw-text
                       (to-krisp
                        (if (assoc 'raw-text (cdr prot-sexpr))
                            (subst `(raw-text ,new-text)
                                   (assoc 'raw-text (cdr prot-sexpr))
                                   prot-sexpr)
                            `(,(car prot-sexpr) (raw-text ,new-text) ,@(cdr prot-sexpr))))
                       protein)))
    (bind-dli-variable
     'predication
     (create-predication-by-binding
      ;; possibly change to sometimes make pred edge
      (subcategorized-variable  category::phosphorylate :object protein)
      new-prot
      (find-or-make-lattice-description-for-ref-category category::phosphorylate))
     new-prot)))


;;;-------------------
;;; fielding acronyms
;;;-------------------
; overnight #15  "20% fetal calf serum (FCS)"

(defun setup-acronym-for-bio-entity (entity acronym)
  ;; called from acronym-is-alternative-for-name should we happen
  ;; to get do-paired-punctuation-interior to see an likely
  ;; acronym when the *special-acronym-handling* flag is down.
  (push-debug `(,entity ,acronym))) ;; (break "acronym stub"))






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

;;; Define a new variable for the actual spelling of the definition
;;;  for use by HMS
(define-lambda-variable 'raw-text
    nil 'top)

;;;---------------------------
;;; TRIPS & REACH --> def-ided-indiv
;;;---------------------------

(defparameter *show-trips-redefinitions* nil)
(defparameter *suppress-redefinitions* t)

(defparameter *trips-define-proteins* nil)

(defparameter *suppressed-redefs* nil) ;; holds items with existing definitions and matching IDs
(defparameter *suppressed-mod-redefs* nil) ;; holds items that are defined if we change capitalization or drop hyphens, but still match on IDs
(defparameter *id-mismatch-redef* nil) ;; holds items that are defined (possibly changing capitalization or dropping hyphens) that have UIDs but they don't match -- to look at later to see if it's just grounded in a different atlas or using a completely different word
(defparameter *no-id-redef* nil) ;; holds items that are defined (possibly changing capitalization or dropping hyphens), but the original definition doesn't have an ID -- need to fold these in later
(defparameter *name-id-mismatches* nil) ;; holds items where the name field matches a sparser category, but the original definition lacks or has a different ID -- to be folded in later
(defparameter *no-rule-redef* nil) ;; holds items that are defined but we can't get their rule to find if there's an ID or not -- cases like "RNA" which somehow lost its rules although "rna" has rules -- hopefully will be fixed soon
(defparameter *prot-fam-redef* nil) ;; holds protein families where the name is already defined as a category -- to be folded in later
;; define all the parameters to hold the new definitions
(defparameter *new-diseases* nil)
(defparameter *new-bio-complexes* nil)
(defparameter *new-bio-meth-proc* nil)
(defparameter *new-noncell-loc* nil)
(defparameter *new-cells* nil)
(defparameter *new-cell-loc* nil)
(defparameter *new-cell-proc* nil)
(defparameter *new-drugs* nil)
(defparameter *new-molecules* nil)
(defparameter *new-post-trans-mod* nil)
(defparameter *new-prot-dom* nil)
(defparameter *new-rna* nil)
(defparameter *new-substance* nil)
(defparameter *new-units* nil)
(defparameter *new-prot-fam* nil)

(defun trips/reach-term->def-ided-indiv (term &optional 
                                         (trips/reach->krisp-class #'trips-class->krisp))
  "Function takes a trips or reach definition and returns a sparser definition form"
  (when (equal (second term) 'sparser::--)
    ;; new format for file -- revise call
    (setq term (third term)))
  (let* ((word (car term))
         (dc-word (string-downcase word))
         (uc-word (string-upcase word))
         (id (getf (cddr term) :id)))
    (unless (null id)
      (when *suppress-redefinitions*
        (cond ((and (resolve word) (rule-for word)) 
               ;; if it resolves but has no rule, it's probably only defined as part of a pw
               (stash-redefined-word term word id "orig")
               (return-from trips/reach-term->def-ided-indiv nil))
              ((and (resolve dc-word) (rule-for dc-word))
               (stash-redefined-word term dc-word id "downcase")
               (return-from trips/reach-term->def-ided-indiv nil))
              ((and (resolve uc-word) (rule-for uc-word))
               (stash-redefined-word term uc-word id "upcase")
               (return-from trips/reach-term->def-ided-indiv nil))
              ((and (search "-" word) (resolve (remove #\- word))) 
               ;; even if they're only defined in a pw, it's unclear
               ;; we want to define the hyphen version
               (stash-redefined-word term (remove #\- word) id "hyphens")
               (return-from trips/reach-term->def-ided-indiv nil))
              ((and (search "-" word) (resolve (remove #\- dc-word)))
               (stash-redefined-word term (remove #\- dc-word) id "hyphens-dc")
               (return-from trips/reach-term->def-ided-indiv nil))))
      (let* 
          ((name (getf (cddr term) :name))
           (name-cat (when name (name-is-cat-p name)))
           (category (funcall trips/reach->krisp-class term)))
        (case category
          ((residue-on-protein molecular-site nil )
           ;;(format t "Rejecting REACH definition ~s~%" term)
           nil)
          ((bacterium
            cancer
            disease
            virus)
           (stash-def-ided-indiv word category id name '*new-diseases*))
          (bio-complex
           (stash-def-ided-indiv word category id name '*new-bio-complexes*))
          ((bio-method 
            bio-process) ;; may conflict with handling of post-translational processes
           (stash-def-ided-indiv word category id name '*new-bio-meth-proc*))
          ((bio-organ
            organism
            secretion
            tissue
            tumor)
           (stash-def-ided-indiv word category id name '*new-noncell-loc*))
          (cell-line ;; the old def function blocked plurals so this mirrors that
           (stash-def-ided-indiv word category id name '*new-cells* :no-plural t))
          (cell-type
           (stash-def-ided-indiv word category id name '*new-cells*))
          (cellular-location
           (stash-def-ided-indiv word category id name '*new-cell-loc*))
          (cellular-process
           (stash-def-ided-indiv word category id name '*new-cell-proc*))
          (drug ;; the old def function blocked plurals so this mirrors that
           (stash-def-ided-indiv word category id name '*new-drugs* :no-plural t))
          (molecule
           (stash-def-ided-indiv word category id name '*new-molecules*))
          (post-translational-modification
            (stash-def-ided-indiv word category id name '*new-post-trans-mod*))
          (protein-domain
           (stash-def-ided-indiv word category id name '*new-prot-dom*))
          (rna ;; check if it still has problems
           (stash-def-ided-indiv word category id name '*new-rna*))
          (substance
           (stash-def-ided-indiv word category id name '*new-substance*))
          (unit-of-measure
           (if (< (length word) 4) ;; for abbreviations, case matters (e.g. "m" meter vs. "M" molar) but for full names it doesn't
               (stash-def-ided-indiv word category id name '*new-units* :maintain-case t)
               (stash-def-ided-indiv word category id name '*new-units*)))
           ((gene protein gene-protein)
           (push 
            `(define-protein ,word ,(list id name))
            *trips-define-proteins*)
           (car *trips-define-proteins*))
          (protein-family
           (if (and name name-cat)
               (then (push (list (value-of 'uid (category-named name-cat)) name-cat term)
                     *prot-fam-redef*)
                     (car *prot-fam-redef*))
               (else (push `(def-ided-family ,word ,id ,.(when name `(:name ,(pname name))))
                           *new-prot-fam*)
                     (car *new-prot-fam*))))
          (t 
           (unless (or (eq category 'referential-sem)
                       (eq category 'time-unit))
             (lsp-break "unknown category for trips/reach-term->def-ided-indiv"))))))))

(defun word-has-uid-p (word)
  "Given a string that is known to resolve, returns the value of the
uid binding, if there is one"
  (let* ((cat-indiv-ref (multiple-value-bind (word rule) (rule-for word)
                       (when rule
                         (cfr-referent (car rule)))))
         (cat-indiv (if (consp cat-indiv-ref)
                        (loop for ref in cat-indiv-ref
                              when (getf ref :head)
                              return (getf ref :head))
                        cat-indiv-ref)))
    (if cat-indiv
        (value-of 'uid cat-indiv)
        "can't get rule"))) 
        ;; currently some words don't return rules for rule-for e.g.,
        ;; "RNA" even though "rna" does due to some polyword issue --
        ;; will hopefully get fixed soon

(defun stash-redefined-word (term rword id mod)
  "Given a term (definition), a resolved word, and whether there was a
  case change involved to resolve it, determines if the word has a uid
  that matches the term id, and if not adds it to the relevant list to
  deal with later"
  (let ((rword-id (word-has-uid-p rword)))
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
           (push (list mod rword term) *no-rule-redef*))
          (rword-id
           (when *show-trips-redefinitions*
             (format t "~%stashing redefinition ~s of already defined word with other UID~%"
                     term))
           (push (list mod rword rword-id term) *id-mismatch-redef*))
          ((null rword-id)
           (when *show-trips-redefinitions*
             (format t "~%stashing redefinition ~s of already defined word with no UID~%"
                     term))
           (push (list mod rword term) *no-id-redef*)))))

(defun stash-def-ided-indiv (word category id name loc &key no-plural maintain-case)
  (let* ((name-cat (when name (name-is-cat-p name)))
         (name-uid (when name-cat (value-of 'uid (category-named name-cat))))
         (word-plural-name (when name (word-is-plural-name-p word name))))

                                        ;(lsp-break "stash-def-ided-indiv pre-if")
    (cond ((and name name-cat) ;; if name is predefined and word is a plural of it, we'll deal with it at the normalization step
           (push `(def-synonym ,name-cat (:noun ,word)) (symbol-value loc))
           (unless (equal id name-uid)
             (push (list category name-cat name-uid :newUID id) *name-id-mismatches*)))
          (word-plural-name
           (push `(def-ided-indiv ,category ,name
                    ,(simplify-colons id)
                    :plural ,(list (plural-version name) word)
                    ,.(when maintain-case `(:maintain-case t)))
                 (symbol-value loc)))
          (t
           (push `(def-ided-indiv ,category ,word
                    ,(simplify-colons id)
                    ,.(when name `(:name ,(pname name)))
                    ,.(when no-plural `(:no-plural t))
                    ,.(when maintain-case `(:maintain-case t)))
                 (symbol-value loc))))
                                        ;(lsp-break "stash-def-ided-indiv post-if")
    (car (symbol-value loc))))

(defun name-is-cat-p (name)
  "Given a string, it checks if either the given string or the string
  with hyphens in place of spaces is a category, and then returns
  symbol that matches a category if it exists"
  (let ((sym-name (intern (string-upcase name) 
                                     (find-package :sparser)))
        (hyph-sym-name (intern (string-upcase (substitute #\- #\space name))
                                          (find-package :sparser))))
    (cond ((category-named sym-name)
           sym-name)
          ((category-named hyph-sym-name)
           hyph-sym-name)
          (t
           nil))))

(defun word-is-plural-name-p (word pname)
  (let* ((lastchar (subseq pname (- (length pname) 1)))
         (last2char (subseq pname (max (- (length pname) 2) 0)))
         (last3char (subseq pname (max (- (length pname) 3) 0)))
         (plural-versions (list (plural-version pname)
                               (cond ((equal last3char "ium")
                                      (string-append (subseq pname 0 (- (length pname) 2)) "a"))
                                     ((equal last2char "us")
                                      (string-append (subseq pname 0 (- (length pname) 2)) "i"))
                                     ((equal lastchar "a")
                                      (string-append pname "e"))
                                     (t
                                      nil)))))
    (member word plural-versions :test #'string-equal)))
        

(defun trips-class->krisp (term)
  (unless (null (second term))
    (ecase (intern (subseq (second term) 4)) ;; drop the ONT:
      ((protein gene-protein gene) ;; we treat genes as if they name the protein
       (if (or (search "FA:" (getf (cddr term) :id))
               (search "XFAM:" (getf (cddr term) :id)))
           'protein-family
           'protein)) 
      ;;(gene 'gene)
      (bacterium 'bacterium)
      (biological-process 'bio-process)
      ((internal-body-part body-part) 'bio-organ)
      (cancer 'cancer)
      (cell 'cell-type)
      (cell-line 'cell-line)
      (cell-part 'cellular-location)
      ((chemical molecule) 'molecule)
      (injury 'injury) ;; added category modeled on disease
      (macromolecular-complex 'bio-complex)
      ((length-unit measure-unit volume-unit weight-unit) 'unit-of-measure)
      (medical-disorders-and-conditions 'disease)
      (medical-instrument 'bio-method) ;; not quite, but we don't distinguish the instruments from the methods
      (molecular-domain 'protein-domain)
      (molecular-site 'residue-on-protein)
      ((organism nonhuman-animal animal fish insect invertebrate
                 microorganism fungus plant bird vertebrate) 'organism)
      (pharmacologic-substance 'drug)
      (physical-condition 'disease)
      (post-translational-modification 'post-translational-modification)
      (procedure 'bio-method)
      (process 'bio-method) ;; the one case we have here is a bio-method -- transplantation
      (protein-family 'protein-family)
      ((amino-acid referential-sem time-unit mutation) 'referential-sem) 
      ;; have now made substance a category. amino-acids and mutations should be handled better
      ((rna mrna) 'rna)
      (signaling-pathway 'pathway)
      (substance 'substance)
      (time-span 'cellular-process) ;; these all seem to be phases of mitosis or meiosis
      (virus 'virus))))


(defun simplify-colons (x)
  (if (search "::" x)
      (concatenate 'string
                   (subseq x 0 (search "::" x) )
                   ":"
                   (subseq x (+ 2 (search "::" x) )))
      x))

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

(defparameter *suppressed-new-defs* '(*suppressed-redefs* *suppressed-mod-redefs* *id-mismatch-redef* *no-id-redef* *no-rule-redef* *name-id-mismatches* *prot-fam-redef* *inhibited-plurals*))
(defparameter *new-id-defs*  '(*new-diseases* *new-bio-complexes* *new-bio-meth-proc* *new-noncell-loc* *new-cells* *new-cell-loc* *new-cell-proc* *new-drugs* *new-molecules* *new-prot-dom* *new-rna* *new-units* *new-prot-fam* *new-post-trans-mod* *new-substance*))

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
(defvar *bio-synonym-hash* (make-hash-table :test #'equalp))

(defun add-bio-synonyms (id synonyms)
  "Adds the given synonyms under the given ID."
  (let ((existing (gethash id *bio-synonym-hash*)))
    (setf (gethash id *bio-synonym-hash*)
          (remove-duplicates (append synonyms existing) :test #'equal))))

(defun get-bio-synonyms (id)
  "Given an ID, retrieve synonyms (not including the ID)."
  (gethash id *bio-synonym-hash*))

;;;-----------------------
;;; bio-entity -> protein
;;;-----------------------

(defmethod convert-bio-entity-to-protein ((bio-entity individual))
  "Takes the name of the bio-entity and makes it the name of
   a protein by using define-bio. Deleted the rules associated
   with the bio-entity. Returns the protein."
  (let* ((name (value-of 'name bio-entity))) ;; often a polyword
    (if name
        (let ((protein (define-bio name 'protein)))
          ;; delete all the rules associated with the individual
          (setf (get-rules bio-entity) (map nil #'delete/cfr (get-rules bio-entity)))
          ;; can't easily delete the individual itself
          protein)
        (else
          (warn "Couldn't convert bio-entity ~s to a protein -- bad plural?" (retrieve-surface-string bio-entity))
          bio-entity))))

(defmethod convert-bio-entity-to-protein ((e edge))
  ;; called from make-protein-pair/convert-bio-entity and
  ;; from multi-colong-ns-patterns, which will send in protein
  ;; edges as well as ones that need to be converted
  (let ((old-ref (edge-referent e)))
    (unless (itypep old-ref 'protein)
      (let ((rule (edge-rule e))
            (new-ref (convert-bio-entity-to-protein old-ref)))
        (declare (ignore rule)) ;; for now
        ;; subvert both this edge and the rule
        (setf (edge-category e) (category-named 'protein))
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


(defun reify-p-protein-and-make-edge (words start-pos end-pos)
  ;; Called from resolve-ns-pattern on (:single-cap :digits).
  ;; Looks for a "p" and if it finds it makes a protein.
  ;; E.g "suggesting that p38 SAPK was active" in Jan #34
  (push-debug `(,words ,start-pos ,end-pos))
  (when (string= "p" (word-pname (first words)))
    ;; take template from reify-residue-and-make-edge
    (when *work-on-ns-patterns*
      (break "stub: possible p protein?"))))


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
    ;;(format t "~&~%Making ~s a bio-entity~%~%" (word-pname word))

    ;; This will record it in the list of *newly-found-unknown-words*
    ;; if the *collect-new-words* flag is up.
    (add-new-word-to-catalog word :BgMech-default)

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
  (and (individual-p i)
       (itypep i 'protein)
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
  (loop for s in *all-sentences*
    append
    (loop for e in (second s)
      when (or
            (itypep e 'protein)
            (itypep e 'protein-family))
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
  
  (unless (find-variable-for-category 'name category)
    (error "Cannot use the def-bio form with the category ~a~
            because it does not provide a 'name' variable" category))
  
  (let ((label (or (override-label category) category))
        (form (category-named 'proper-noun))
        ;; proper noun makes sense for named proteins and such
        ;; but the marker may actually be the capitalization
        ;; of the word, which would have to be caught upstream
        ;; and passed through in a parameter.
        rules  i   )

    ;; The real form to use
    ;;     (setq i (find-or-make-individual category :name word))
    ;; The find-or-make call will set up a rule for the short form
    ;; as a common noun that has this individual as its referent.
    ;; Ignoring brackets since this runs with the new chunker

    (setq i (find-or-make-individual category :name word))
    
    ;;(lsp-break "make-typed-bio-entity")
   
    ;; Add synonyms to the table for this head term
    (when synonyms
      (add-bio-synonyms (or identifier (word-string word)) synonyms))

    (let* ((retrieved-rules (get-rules i))
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
    (setq type (category-named 'protein)))
  (unless species
    (when (consp members) 
      (if (loop for m in members
                thereis (human-mnemonic? m))
          (setq species (find-individual 'species :name "human"))))) 
  ;; don't want to default to human unless the members are
  (let* ((category-name
          (cond
            ((and (eq species (find-individual 'species :name "human"))
                  (eq type (category-named 'protein)))
             'human-protein-family)
            ((eq type (category-named 'protein))
             'protein-family)
            (t (break "what type of family is this supposed to be?"))))
         (i (def-bio/expr name category-name
              :long long :identifier identifier :synonyms synonyms
              :takes-plurals t
              :members members)))
    i))

(defmacro def-ided-family (word id &key type species members
                           name synonyms maintain-case)
  (unless (stringp word) (error "Word argument should be a string"))
  `(define-family-with-id
     ',word ',id ,.(when type `(:type ',type)) 
     ,.(when species `(:species ',species)) 
     ,.(when members `(:members ',members))
     ,.(when name `(:name ',name)) 
     ,.(when synonyms `(:synonyms ',synonyms))
     ,.(when maintain-case `(:maintain-case ',maintain-case))))


(defun define-family-with-id (word id &key type species members
                              name synonyms maintain-case)
  ;(declare (special word id species))
  #+ignore
  (unless members
    (error "It doesn't make sense to define a family without members"))
  (unless type
    (setq type (category-named 'protein)))
  (unless species
    (when (consp members) 
      (if (loop for m in members
                thereis (human-mnemonic? m))
          (setq species (find-individual 'human))))) 
  ;(lsp-break "def-family pre-let")
  ;; don't want to default to human unless the members are
  (let* ((category-name
          (cond
            ((and (eq species (find-individual 'human))
                  (eq type (category-named 'protein)))
             'human-protein-family)
            ((eq type (category-named 'protein))
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
          (count (find-number (length members))))
      (setq i (bind-dli-variable 'family-members set-of-proteins i))
      (setq i (bind-dli-variable 'count count i))
      ;; If we didn't use such a specific category these would matter.
      i)))



;;;-------------------
;;; fielding acronyms
;;;-------------------
; overnight #15  "20% fetal calf serum (FCS)"

(defun setup-acronym-for-bio-entity (entity acronym)
  ;; called from acronym-is-alternative-for-name should we happen
  ;; to get do-paired-punctuation-interior to see an likely
  ;; acronym when the *special-acronym-handling* flag is down.
  (push-debug `(,entity ,acronym))) ;; (break "acronym stub"))






;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 2017 David D. McDonald  -- all rights reserved
;;; 
;;;     File:  "client-operations"
;;;   Module:  "drivers;chart:psp:"
;;;  Version:  December 2017

;; Broken out of no-brackets-protocol 12/11/17 to make both files easier
;; for people to read as stories. Client-operations is diverse code needed
;; to massage or generate output that is tailored to special applications
;; such as uptake by Intra or formatting for Calisto.

(in-package :sparser)


(defun get-indra-for-cwc? ()
  (and (boundp 'cl-user::*sparser-to-indra*)
       (symbol-value 'cl-user::*sparser-to-indra*)))

(defparameter *indra-post-process* nil)
(defparameter *indra-embedded-post-mods* nil)
(defparameter *callisto-compare* nil)
(defparameter *indra-mention-var-ht*
  (when (get-indra-for-cwc?)
    (make-hash-table :size 10000)))

(defun do-client-translations (sentence)
  (declare (special *sentence-results-stream* *semantic-output-format*
                    *indra-post-process* *callisto-compare*
                    *localization-interesting-heads-in-sentence*
                    *colorized-sentence* *localization-split-sentences*
                    *save-bio-processes*
                    *clause-semantics-list*))
  (declaim (optimize (debug 3)))
  
  (when *save-bio-processes*
    (save-bio-processes sentence *save-bio-processes*))

  (when (and (or (eq *sentence-results-stream* t)
                 (streamp *sentence-results-stream*))
             (not (eq *semantic-output-format* :HMS-JSON)))
    ;;output sentence semantics, if desired, in format specified
    ;; by *semantic-output-format* -- code is in save-doc-semantics
    
    (write-semantics sentence *sentence-results-stream*))

  #+ignore ;;for debugging -- catch the mentions which don't have edges at this point...
  (loop for m in (mentions-in-sentence-edges sentence)
        do
          (when (not (edge-p (mention-source m)))
            (lsp-break "mention ~s has non-edge source" m)))

  (let ((xxx-mentions ;; sort, so that embedding edges for positive-bio-control come out first
         (sort
          (remove-collection-item-mentions ;; why are we removing item-mentions?
           (loop for m in (mentions-in-sentence-edges sentence)
                 when (edge-p (mention-source m))
                 collect m))
          #'>
          :key #'(lambda (m) (edge-position-in-resource-array (mention-source m))))))
    ;; xxx-mentions (previously mentions) is not used any more!!
    (case *save-clause-semantics*
      (:sentence-clauses
       (push (cons (sentence-string *sentence-in-core*)
                   (sentence-clauses))
             *clause-semantics-list*))
      (:mention-clauses
       (setq *save-clause-semantics*
             `(,(sentence-string *sentence-in-core*)
                ,@(sentence-clauses)))
       (push *save-clause-semantics* *clause-semantics-list*)
       (setq *save-clause-semantics* :mention-clauses)))
    (when *indra-post-process*
      (when (get-indra-for-cwc?)
        (clrhash *indra-mention-var-ht*))
      (indra-post-process (mentions-in-sentence-edges sentence)
                          sentence *sentence-results-stream*)
      (when (fboundp 'save-bob-sparser-indra-forms)
        (save-bob-sparser-indra-forms))))
  (when *callisto-compare* (extract-callisto-data sentence))
    
  (when *localization-interesting-heads-in-sentence*
    (let ((colorized-sentence (split-sentence-string-on-loc-heads)))
      (setf (gethash sentence *colorized-sentence*) colorized-sentence)
      (push colorized-sentence *localization-split-sentences*))))

(defun clause-from-top-mention-tree (mentions)
  (let ((top-mentions
         (loop for m in mentions
               when
                 (and (edge-p (mention-source m))
                      (null (edge-used-in (mention-source m)))
                      (null (cdr (all-tts)))
                      (eq (mention-source m)
                          (car (all-tts))))
               collect m)))
    (cond ((cdr top-mentions)
           (warn "multiple-tops ~s"
                 (loop for m in top-mentions
                       collect (edge-form-name
                                (mention-source m)))))
          ((null top-mentions)
           (warn "no top mention!!! in ~s"
                 (sentence-string *sentence-in-core*))))))

;;;;;; Utility function for getting Sparser clauses, parsing from scratch

(defparameter *break-in-sp-clauses* nil)

(defun sp-clauses (s &optional (with-breaks *break-in-sp-clauses*))
  (declare (special *save-clause-semantics* *clause-semantics-list*))
  (setq *save-clause-semantics*  :mention-clauses) ;; :sentence-clauses)
  (let ((*indra-post-process* (list t)))
    (declare (special *indra-post-process*))
    (if with-breaks
        (qpp s)
        (qepp s))
     (when (null (cdr (all-tts)))
       (car *clause-semantics-list*))
     ))

(defun clause-semantics-for-mention (mention)
  (declare (special mention))
  (let* ((desc (base-description mention))
         (cs (list :isa (fom-clause-var mention) :var))
         item-clauses)
    
    (declare (special cs))
    (when (and (individual-p desc)
               (itypep desc 'conjunction))
      (return-from clause-semantics-for-mention nil))
    (push (cat-name (itype-of desc)) cs)
    (loop for d in (dependencies mention)
          do
            (let ((key (intern (pname (var-name (dependency-variable d))) :keyword)))
              (case key
                (:items
                 (loop for item in (dependency-value d)
                       do
                         (if (mention-p item)
                             (loop for scs
                                   in (clause-semantics-for-mention item)
                                   do (push scs item-clauses))
                             (break "not a mention ~s" item)))
                 (push key cs)
                 (push `(,(intern "SEQ-FN" (find-package :kb))
                         ,@(loop for item in (dependency-value d)
                                 collect
                                   (fom-clause-var item)))
                       cs))
                ((:left :right)
                 (push key cs)
                 (let ((item (dependency-value d)))
                   (push
                    (cond ((mention-p item)
                           (setq item-clauses
                                 (append item-clauses
                                         (let ((clauses
                                                (clause-semantics-for-mention item)))
                                           (if (consp clauses)
                                               clauses
                                               (list item)))))
                           (fom-clause-var item))
                          ((and (individual-p item)
                                (itypep item 'number))
                           (value-of 'value item))
                          ((individual-p item)
                           (lsp-break "item is ~s" item))
                          (t item))
                    cs)))
                        
                (t
                 (push  key cs)
                 (push (make-clause-ref key (dependency-value d)) cs)))))

    (setq cs (reverse cs))
    `(,cs ,@item-clauses)))

(defun mention-clause-tree (m &optional parent-mention)
  (typecase m 
    (discourse-mention
     `(:var ,(fom-clause-var m)
            :isa ,(cat-name (itype-of (edge-referent (mention-source m))))
            ,.(when (itypep (edge-referent (mention-source m)) 'plural)
                (list :plural t))
            ,@(loop for d in (dependencies m)
                    append
                      (let ((val (dependency-value d)))
                        `(,(intern (pname ;; not sure why, but this extra pname
                                    ;; is needed! see
                                    ;; (clic::sent-clauses "Does MAP2K1 phosphorylate and activate MAPK1?")
                                    (pname (dependency-variable d)))
                                   :keyword)
                           ,(cond ((eq val '*lambda-var*)
                                   (if parent-mention
                                       (fom-clause-var parent-mention)
                                       (loop for mention in (all-mentions)
                                             when (loop for d2 in (dependencies mention)
                                                        thereis (and (eq (var-name (dependency-variable d2))
                                                                         'PREDICATION)
                                                                     (eq (dependency-value d2) m)))
                                             do (return (fom-clause-var mention)))))
                                  ((consp val)
                                   (mapcar #'mention-clause-tree val ))
                                  (t
                                   (typecase val
                                     (word (pname val))
                                     (polyword (pname val))
                                     (number val)
                                     (t
                                      (mention-clause-tree val m))))))))))
    (t m)))

(defun sentence-clause-tree ()
  (let ((s-edge (car (all-tts))))
    (mention-clause-tree (edge-mention s-edge))))

(defun sentence-clauses ()
  (unwrap-clause-tree (sentence-clause-tree)))

(defparameter *sentence-clause-var-ht* (make-hash-table))

(defun unwrap-clause-tree (ct)
  (cons (clause-tree->clause ct)
        (loop for (key val) on (cddr ct) by #'cddr
              append (cond ((and (consp val)
                                 (eq (car val) :var)
                                 (null (gethash (second val)
                                                *sentence-clause-var-ht*)))
                            (setf (gethash (second val)
                                           *sentence-clause-var-ht*)
                                  val)
                            (unwrap-clause-tree val))
                           ((and (eq key :items)
                                 (consp (car val)))
                            (loop for item in val
                                        append (unwrap-clause-tree item)))))))

(defmethod fom-clause-var ((n number))
  (intern (format nil "MV~s" n) :SP))

(defmethod fom-clause-var ((m discourse-mention))
  (fom-clause-var (mention-uid m)))

(defun make-pseudo-clause-for-prot-indiv (i)
  (when (itypep i 'protein)
    `(protein ,@(when (value-of 'name i) `((:name ,(pname (value-of 'name i)))))
              ,@(when (value-of 'uid i) `((:uid ,(value-of 'uid i)))))))

(defun make-pseudo-clause-for-indiv (i)
  (if (itypep i 'protein)
      (make-pseudo-clause-for-prot-indiv i)
      (loop for binding in (indiv-binds i)
              as val = (binding-value binding)
            collect `(,(intern (pname (pname (binding-variable binding)))
                               :keyword)
                       ,(if (individual-p val)
                            (make-pseudo-clause-for-indiv val)
                            val)))))


(defun clause-tree->clause (ct)
  `(:var ,(second ct) ;; already is a clause-var
     ,@(loop for (key val) on (cddr ct) by #'cddr
             append
               `(,key ,(if (and (consp val)
                                (eq (car val) :var))
                           (second val) ;; already is a clause-var
                           (make-clause-ref key val))))))

(defun clause-with-list (cl)
  (loop for (KEY VAL) on cl by #'cddr
        when (and
              (not (member key
                           '(:has-determiner :prepositional-phrase :prep
                             :family-members :progressive :modal)))
              (consp val))
        do (return (list key val))))

(defparameter *make-clause-ref* nil)
(defparameter *det-refs* nil)
(defparameter *prep-refs* nil)
(defparameter *modal-refs* nil)
(defparameter *non-mention-sents* nil)

(defparameter *warn-individuals* nil)

(defun make-clause-ref (key ref)
  (declare (special key ref))
  (case key
    ((:present :progressive :perfect :past :present)
     (pname key))
    (:has-determiner (cond ((individual-p ref)
                            (pushnew (semtree ref) *det-refs* :test #'equal)
                            (pname (itype-of (car (semtree ref)))))
                           ((category-p ref)
                            ;; so we don't get #<ref-category WHAT> in the output
                            (pname ref))
                           (t ref)))
    (:prep (cond ((individual-p ref)
                  ;; so far these are all :PREP (#<in 86395>) from COPULAR-PREDICATION-OF-PP
                  ;; we could decide to drop prep from the dependencies entirely instead
                  (pushnew (semtree ref) *prep-refs* :test #'equal)
                  (pname (itype-of (car (semtree ref)))))
                 (t ref)))
    ;; no need to have a separate clause for modals
    (:modal (cond ((individual-p ref)
                   (pushnew (semtree ref) *modal-refs* :test #'equal)
                   (pname (itype-of (car (semtree ref)))))
                  ((mention-p ref)
                   (pname (base-description ref)))
                  (t ref)))
    (:family-members
     (loop for i in (value-of 'items ref)
           collect (make-pseudo-clause-for-prot-indiv i)))
    (:items
     (if (consp (car ref)) ;; are these already mentions? if not, it's a distributed conjunction
         (mapcar #'second ref)
         (loop for item in ref
               collect (if (individual-p item)
                           (make-pseudo-clause-for-indiv item)
                           item))))
    (:modified-amino-acid
     (cond ((eq (type-of ref) 'discourse-mention)
            (fom-clause-var ref))
           (t
            (push (list :modified-amino-acid (sentence-string *sentence-in-core*)) *non-mention-sents*)
            (semtree ref))))
    (t
     (let ((ref-id (typecase ref
                     (individual
                      (cond ((and (member key '(:number :left :right)) ;; :left and :right for hyphenatednumbers like 824-832 in
                                  ;; "amino acids 824-832"
                                  (itypep ref 'number))
                             (value-of 'value ref))
                            ((itypep ref 'event-relation)
                             (push (list 'event-relation (sentence-string *sentence-in-core*))
                                   *non-mention-sents*)
                             (when *warn-individuals*
                               (warn "individual as mention ~s" 'event-relation)))
                            ((itypep ref 'protein-family)
                             (when *warn-individuals*
                               (warn "protein-family")))
                            ((itypep ref 'comparative-attribution)
                             (push (list 'comparative-attribution (sentence-string *sentence-in-core*))
                                   *non-mention-sents*)
                             (when *warn-individuals*
                               (warn "individual as mention ~s" 'comparative-attribution)))
                            
                            (t
                             (push (list "individual as mention" (semtree ref)
                                         (sentence-string *sentence-in-core*))
                                   *non-mention-sents*)
                             (when *warn-individuals*
                               (warn "individual as mention ~s in ~%-----  ~s" (semtree ref)
                                     (sentence-string *sentence-in-core*)))
                             (semtree ref))))
                     (discourse-mention (fom-clause-var ref))
                     (referential-category (cat-name ref))
                     (string ref)
                     (word (pname ref))
                     (polyword (pname ref))
                     (symbol ref)
                     (number ref))))
       (push (list ref ref-id)
             *make-clause-ref*)
       ref-id))))



;;;----------------------------------
;;; processing for comparison to callisto annotations
;;;----------------------------------
(defparameter *sp-clsto-entity-mentions* nil)
(defparameter *sp-clsto-relations* nil)
(defparameter *sp-clsto-used-entity-edges* nil)
(defparameter *sp-clsto-used-relation-edges* nil)
(defun extract-callisto-data (sentence)
  (let* ((mentions
          ;; sort, so that embedding edges for positive-bio-control come out first
          (sort
           (remove-collection-item-mentions
            (mentions-in-sentence-edges sentence))
           #'>
           :key #'(lambda (m) (edge-position-in-resource-array (mention-source m)))))
         (mentions-copy mentions))
    (declare (special mentions-copy))
    (loop for mention in mentions
          do (let* ((ref (base-description mention))
                    (edge (mention-source mention))
                    (head-edge (find-head-edge edge))
                    (dependencies (dependencies mention)))
               ;(declare (special edge))
               (cond ((itypep ref '(:or bio-chemical-entity molecular-location
                                    bio-movement ;; translocation
                                    cellular-process ;; autophagy, apoptosis
                                    pathway
                                    ))
                      (unless (edge-subsumed-by-edge-in-list edge *sp-clsto-used-entity-edges*)
                        (if (and (is-basic-collection? ref)
                                 (not (eq (edge-rule edge) 'make-protein-collection))
                                 (loop for item in (get-mention-items dependencies)
                                       always (typep item 'discourse-mention)))
                            (extract-callisto-conjunction-data ref edge head-edge dependencies)
                            (push `( ;;,mention
                                    (:category ,(cat-name (itype-of ref)))
                                    (:uid ,(value-of 'uid ref))
                                    (:head ,(get-edge-char-offsets-and-surface-string head-edge))
                                    (:full ,(get-edge-char-offsets-and-surface-string edge)))
                                  *sp-clsto-entity-mentions*))
                        (when (and (itypep ref '(:or bio-chemical-entity molecular-location))
                                   (not (itypep ref '(:or bio-complex dimer residue-on-protein
                                                      molecular-location))))
                          (push edge *sp-clsto-used-entity-edges*))))
                     ((itypep ref '(:or bio-control post-translational-modification))
                      ;;(lsp-break "at type bio-control/post-trans-mod")
                      (unless (or (edge-subsumed-by-edge-in-list edge *sp-clsto-used-relation-edges*)
                                  (and (null dependencies)
                                       ;; we got a lot events for listings of p-values
                                       (equal "p" (trim-whitespace (extract-string-spanned-by-edge edge)))))
                        (push
                         `( ;;,mention
                           (:event (:full ,(get-edge-char-offsets-and-surface-string edge)))
                           (:relation (:head ,(get-edge-char-offsets-and-surface-string head-edge)))
                           ,.(loop for item in dependencies
                                   when (and (typep (second item) 'discourse-mention)
                                             (not (member (pname (car item)) '(modifier raw-text))))
                                   collect `(,(pname (car item))
                                              (:head ,(get-edge-char-offsets-and-surface-string
                                                       (find-head-edge (mention-source (second item)))))
                                              (:full ,(get-edge-char-offsets-and-surface-string
                                                       (mention-source (second item)))))
                                   end
                                   when (eq (second item) '*lambda-var*)
                                   collect (let ((lambda-edge (get-lambda-ref-edge-from-pred-edge edge)))
                                                   `(,(pname (car item))
                                              (:head ,(get-edge-char-offsets-and-surface-string
                                                       (find-head-edge lambda-edge)))
                                              (:full ,(get-edge-char-offsets-and-surface-string
                                                       lambda-edge))))))
                         *sp-clsto-relations*)
                        (push edge *sp-clsto-used-relation-edges*))))))))

(defun get-mention-items (dependencies)
  (loop for bb in dependencies
        when (eq 'items (pname (car bb)))
        do (return (second bb))))

(defun extract-callisto-conjunction-data (ref edge head-edge dependencies)
  (loop for sub-mention in (get-mention-items dependencies)
        do
          (let* ((ref (base-description sub-mention))
                 (edge (mention-source sub-mention))
                 (head-edge (find-head-edge edge))
                 (dependencies (dependencies sub-mention)))
            (push `( ;;,mention
                    (:category ,(cat-name (itype-of ref)))
                    (:uid ,(value-of 'uid ref))
                    (:head ,(get-edge-char-offsets-and-surface-string head-edge))
                    (:full ,(get-edge-char-offsets-and-surface-string edge)))
                  *sp-clsto-entity-mentions*))))
          

(defun get-edge-char-offsets-and-surface-string (edge)
  (let* ((surface-string (trim-whitespace (extract-string-spanned-by-edge edge)))
        (char-start (- (pos-character-index (pos-edge-starts-at edge)) 1))
         ;;(char-end (- (pos-character-index (pos-edge-ends-at edge)) 1))
         ;; the ends at doesn't appreciate trimmed whitespace
         (char-end (+ char-start (length surface-string)))) 
    (list char-start char-end surface-string)))
                                             
(defun edge-subsumed-by-edge-in-list (edge edge-list)
  (member edge edge-list :test #'(lambda(edge x) (edge-subsumes-edge? x edge))))
                          
;;;----------------------------------
;;; diverse processing for HMS/Indra
;;;----------------------------------

(defparameter *end-of-sentence-display-operation* nil)
(defparameter *save-bio-processes* nil)

(defparameter *colorized-sentence* (make-hash-table :size 1000 :test #'equal))


(defparameter *complex-statements* nil)
(defun read-from-json-list
    (&optional (f "~/projects/r3/corpus/HMS-complex-data/reach_complex_stmts.json"))
  (with-open-file (s f :direction :input)
    (loop until (eql (read-char s) #\])
          do
            (push (funcall (intern "DECODE-JSON" :json) s) *complex-statements*)))
  (format t "There are ~s items in *complex-statements*"
          (length *complex-statements*)))


(defun find-reach-sentence (indra-complex)
  (list (cdr (assoc :text (second (assoc :evidence indra-complex))))
        (loop for m in (cdr (assoc :members indra-complex))
              collect (cdr (assoc :db--refs m)))))

(defparameter *proteins* (make-hash-table :size 100000 :test #'equal))
(defun find-reach-proteins (n)
  (unless (and (boundp '*complex-statements*)
               (consp *complex-statements*))
    (read-from-json-list))
  (clrhash *proteins*)
  (loop for indra-complex in *complex-statements*
        as i from 1 to n
        do
          (loop for m in (cdr (assoc :members indra-complex))
                  as word = (cdadr (assoc :db--refs m))
                unless
                  (or (single-term-rewrite? word :no-warn t)
                      (single-term-rewrite? (string-downcase word) :no-warn t)
                      (single-term-rewrite? (remove-prot-affixes word)
                                            :no-warn t));; (resolve (cdadr (assoc :db--refs m))) 
                do (setf (gethash (cadr (assoc :db--refs m)) *proteins*)
                         (cddr (assoc :db--refs m)))))
  *proteins*)

(defparameter *prot-prefixes*
 '("Ad-" "Adv-" "endogenous " "exogenous " "EGFP-" "eGFP-" "egfp-" "FLAG-" "Flag-" "flag-" "full-length " "full length " "GFP-" "gfp-" "Gfp-" "gfp" "GST " "Gst-" "HA-" "Ha-" "h" "hs" "Hs" "lenti-" "Lenti-" "lent-" "lentivirus-" "Lentivirus-" "LV-" "Lv-" "Luc-" "mammalian " "Mammalian " "MBP-" "mCherry-" "mcherry-" "mChy-" "Chy-" "CHY-" "MCHY-" "mEGFP-" "MMTV-" "mmu-" "Mmu-" "murine " "Murine " "oncogene " "oncogenic " "oncoprotein " "myc-" "Myc-" "MYC-" "protein " "proto-oncogene " "rAAV-" "recombinant " "Recombinant " "rh-" "Rh-" "rh" "Rh" "Wild type " "Wild-type " "wild-type " "wild type " "WT " "wt " "wt-" "WT-" "wt" "Wt" "WT" "YFP-" "protease " "transcription factor " "Transcription factor " "activated " "activated-" "active " "cytosolic " "cytoplasmic " "mutant " "Mutant " "mutated " "Mutated " "mut" "myr-" "Myr-" "myr" "nuclear " "p-" "P-" "p" "phospho-" "Phospho-" "phosphor-" "Phosphor-" "phosphorylated-" "phosphorylated " "pro-" "Pro-" "pro" "Ub-" "ubiquitinated " "DN-" "dn-" "dn" "dominant negative " "dominant-negative " "sh" "sh-" "SH-" "shRNA-" "si-" "Si-" "silencing " "Targeting " "-" ))
(defparameter *prot-suffixes*
 '("-flag" "-Flag" "-FLAG" "-Gfp" "-GFP" "-Gst" "-GST" "-HA" "-Ha" "-mcherry" "-mCherry" "-mChy" "-Chy" "-CHY" "-MCHY" "-myc" "-Myc" "-MYC" "-wt" "-Wt" "-WT" "-YFP" " protein" " Protein" " proteins" " Proteins" "-EGFP" "-eGFP" " mRNA" "-Ub" " knockdown" "-KD" " KD" " knockout" " siRNA" " siRNAs" " shRNA" "-shRNA" "-luc" "-Luc" "-LUC" "-" )) ; removed "KD"
(defun remove-prot-affixes (protein)
  (let* ((prot-no-pref nil)
         (prot-no-suf nil)
         (no-prefix-prot
          (loop for pref in *prot-prefixes*
                as last-char = (char pref (- (length pref) 1))
                when (and (not (eq (length protein)
                                   (length pref)))
                          (eq 0 (search pref protein))
                          (or (eq #\- last-char)
                              (eq #\  last-char)
                              (upper-case-p (char protein (length pref)))))
                do (unless prot-no-pref
                     (setq prot-no-pref (subseq protein (length pref))))
                finally (return (or prot-no-pref
                                    protein)))))
;    (lsp-break "no-pref: ~s" no-prefix-prot)
    (loop for suf in *prot-suffixes*
          when (and (not (eq (length no-prefix-prot)
                             (length suf)))
                    (eq (- (length no-prefix-prot)
                           (length suf))
                        (search suf no-prefix-prot)))
          do (unless prot-no-suf
               (setq prot-no-suf (subseq no-prefix-prot 0
                                       (- (length no-prefix-prot)
                                          (length suf)))))
          finally (return (or prot-no-suf
                              no-prefix-prot)))))

(defun find-reach-protein (indra-complex)
  (list (cdr (assoc :text (second (assoc :evidence indra-complex))))
        (loop for m in (cdr (assoc :members indra-complex))
              collect (cdr (assoc :db--refs m)))))

(defun find-reach-rule (indra-complex)
  (let ((evidence (second (assoc :evidence indra-complex))))
    (assoc :found--by (cdr (assoc :annotations evidence)))))

(defun contains-type? (s type)
  (when (consp s)
        (case (car s)
          (set (loop for ss in (cdr s)
                     collect (contains-type? ss type)))
          (t
           (if (itypep (car s) type)
               (list type)
               (let ((containing-branches
                      (loop for branch in (cdr s)
                            as contains? = (and (consp branch)
                                                (consp (second branch))
                                                (case (car branch)
                                                  (type nil)
                                                  (t (contains-type? (second branch) type))))
                            when contains?
                            collect (list (car branch) contains?))))
                 (when containing-branches
                   (cons (car s) containing-branches))))))))


(defun type-expressions-in (s type)
  (when (consp s)
    (case (car s)
      (set (loop for ss in (cdr s)
                 append (type-expressions-in ss type)))
      (t
       (if (and (symbolp (car s))
                (category-named (car s))
                (itypep (car s) type))
           (list s)
           (loop for branch in (cdr s)
                 as contains? = (and (consp branch)
                                     (consp (second branch))
                                     (case (car branch)
                                       (type nil)
                                       (t (type-expressions-in (second branch) type))))
                 when contains?
                 append contains?))))))

(defparameter *complex-var-ht* (make-hash-table :size 1000 :test #'equal))
(defun complex->contains-type-ht (n &key (start 0))
  (let ((complex-set (reach-collect-bio-processes n :start start)))
    (loop for statement in complex-set
          do (let ((sent (caar statement))
                   (complexes (second statement)))
               (loop for comp in complexes
                     do (let ((contains-prot  (contains-type? comp 'protein)))
                          (when contains-prot
                            (pushnew sent (gethash contains-prot *complex-var-ht*)))))))))
                              

(defparameter *reach-complex-processes* 
  '(:or AFFINITY BINDING BIO-ACTIVITY BIO-ASSOCIATE BIO-COMPLEX
    COOPERATE DIMERIZE BIO-FORM HETERODIMERIZE INTERACT LIGATE OLIGOMERIZE RECRUIT))

(defun reach-collect-bio-processes (n &key (start 0))
  (unless (and (boundp '*complex-statements*)
               (consp *complex-statements*))
    (read-from-json-list))
  (loop for *rcs* in (nthcdr start *complex-statements*)
        as i from 1 to n
        collect
          (find-reach-bio-processes (car (find-reach-sentence *rcs*))
                                    (second (find-reach-sentence *rcs*)))))

(defun find-reach-bio-processes (sent &optional other-data)
  (let ((*save-bio-processes* *reach-complex-processes*)
        (*saved-bio-processes* nil)
        (*blank-sents* nil))
    (declare (special *save-bio-processes* *saved-bio-processes* *blank-sents*))
    (safe-parse sent)
    (list (list sent other-data)
          (loop for s in *saved-bio-processes*
                append (second s)))))

(defun complex-mention-in-pathway? (m)
      (and (itypep (base-description m) 'bio-complex)
           (and (edge-p (mention-source m))
                (edge-used-in (mention-source m))
                (itypep (edge-referent (edge-used-in (mention-source m)))
                        'pathway))))


(defun indra-post-process (mentions sentence output-stream)
  (setq *indra-embedded-post-mods* nil)
  (loop for mention in mentions
          unless (complex-mention-in-pathway? mention)
        do (indra-post-process-mention mention sentence output-stream)))

(defun indra-post-process-mention (mention sentence output-stream
                                   &optional
                                     (ippm-ref (base-description mention))
                                     (nec-vars? nil))
  (declare (special ippm-ref))
  (unless (member ippm-ref *indra-embedded-post-mods*)
    (let*  ((necessary-vars (necessary-vars? ippm-ref))
            (desc (if (and (c-itypep ippm-ref 'positive-bio-control)
                           (value-of 'agent ippm-ref)
                           (individual-p (value-of 'affected-process ippm-ref))
                           (itypep (value-of 'affected-process ippm-ref) 'post-translational-modification))
                      ;;e.g. "Rho induces tyrosine phosphorylation of gamma-catenin"
                      (bind-dli-variable 'agent
                                         (value-of 'agent ippm-ref)
                                         (value-of 'affected-process ippm-ref))
                      ippm-ref)))
      ;; Revise the code to 1) allow for conjoined verbs (use c-itypep)
      ;;  and follwing on that 2) allow a single mention/edge to have more
      ;;  than one type of INDRA statement (MEK phosphorylates and activates ERK"
      (when (not (eq desc ippm-ref))
        (push (value-of 'affected-process ippm-ref) *indra-embedded-post-mods*))
      (maybe-push-sem mention ippm-ref sentence necessary-vars output-stream desc nec-vars?))))

(defun necessary-vars? (Ref)
  (cond ((or (c-itypep ref 'bio-activate)
              (c-itypep ref 'bio-inactivate)
              (c-itypep ref 'inhibit)
              (c-itypep ref 'gene-transcript-express)
              (c-itypep ref 'gene-transcript-over-express)
              (c-itypep ref 'gene-transcript-under-express)
              (c-itypep ref 'gene-transcript-co-express)
              (c-itypep ref 'gene-transcript-co-over-express)
              (c-itypep ref 'transcribe))
         '(object affected-process modifier)) ;; modifier is for "p-ERK expression"

        ((and (c-itypep ref 'bio-scalar)
              (not (c-itypep ref 'sensitivity)))
         '(measured-item))
        ((c-itypep ref 'inhibit)
         '(affected-process))
        ((c-itypep ref 'site)
         '(process))
        ((and (c-itypep ref 'negative-bio-control)
              (individual-p (value-of 'affected-process ref))
              (itypep (value-of 'affected-process ref) 'post-translational-modification))
         '(agent))

        ((c-itypep ref 'bio-control)
         '(affected-process object modifier))

        
        ((or (c-itypep ref 'translocation)
             (c-itypep ref 'import)
             (c-itypep ref 'export)
             (c-itypep ref 'recruit))
         '(object moving-object moving-object-or-agent-or-object agent))
        ((c-itypep ref 'auto-phosphorylate)
         '(agent substrate))
        
        ;; complexes/binding
        ((c-itypep ref 'binding)
         '(binder bindee direct-bindee))
        ((c-itypep ref 'interact)
         '(participant using interactor modifier purpose cell-line by-means-of predication manner following appositive-description))
        ((c-itypep ref 'bio-associate)
         '(participant))
        ((c-itypep ref 'bio-activity)
         '(protein modifier))
        ;;  (BIO-ACTIVITY
    ;; (MODIFIER
    ;; (PROTEIN (RAW-TEXT "TAL1") (UID "UP:P17542") (NAME "TAL1_HUMAN")))
    ;; (MODIFIER (DNA-BINDING (RAW-TEXT "DNA binding"))) (RAW-TEXT "activity"))
        ((or (c-itypep ref 'complex)
             (c-itypep ref 'bio-complex))
             ;(c-itypep ref 'heterodimer)
         '(component))
        ;; cooperate?
        ((c-itypep ref 'dimerize)
         '())
         ((c-itypep ref 'bio-form)
          '(agent object))
         ((c-itypep ref 'recruit)
          '(moving-object destination))
         
        ((or (c-itypep ref 'post-translational-modification)
             (c-itypep ref 'methylation)
             (c-itypep ref 'site)
             ;;(c-itypep ref 'residue-on-protein)
             (and (is-basic-collection? ref)
                  (or (c-itypep (value-of 'type ref)
                                'post-translational-modification))))
         '(substrate agent-or-substrate site substrate-or-site))))

(defun maybe-push-sem (mention ref sentence necessary-vars output-stream &optional desc nec-vars?)
  (declare (special mention ref sentence necessary-vars output-stream desc))
  (cond ((and (is-basic-collection? ref)
              (c-itypep ref 'caused-bio-process))
         (let ((external-bindings
                (loop for b in (indiv-binds ref)
                      unless (member (var-name (binding-variable b))
                                     '(raw-text items type number))
                      collect b)))
           (loop for cref in (value-of 'items ref)
                 do
                   (indra-post-process-mention mention sentence output-stream
                                               (if external-bindings
                                                   (do-external-bindings cref external-bindings)
                                                   cref)
                                               (has-necessary-vars necessary-vars cref)))
           (push-sem->indra-post-process
            mention
            sentence
            ;; is there any variable bound to the lambda expression
            ;;   (thus a trace to containing item)
            (loop for b in (indiv-binds ref)
                  thereis (eq (binding-value b) '*lambda-var*))
            output-stream
            desc)
           ))
        ((and (individual-p ref)
              (or (get-indra-for-cwc?)
                  nec-vars?
                  (and (not (itypep ref 'prepositional-phrase))
                       necessary-vars
                       (has-necessary-vars necessary-vars ref))))
         (push-sem->indra-post-process
          mention
          sentence
          ;; is there any variable bound to the lambda expression
          ;;   (thus a trace to containing item)
          (loop for b in (indiv-binds ref)
                thereis (eq (binding-value b) '*lambda-var*))
          output-stream
          desc))))

(defun do-external-bindings (i bindings)
  (loop for b in bindings
        do
          (setq i (or (bind-dli-variable (binding-variable b)
                                         (binding-value b)
                                         i)
                      i)))
  i)

(defun has-necessary-vars (necessary-vars ref)
  (or
   (loop for v in necessary-vars when  (value-of v ref)
         collect (list v (value-of v ref)))
   (when (itypep ref 'bio-complex)
     (let ((pred (value-of 'predication ref)))
       (when (and (itypep pred 'bio-form)(value-of 'using pred))
         `((,(car necessary-vars)
             ,(value-of 'using pred))))))))

(defun c-itypep (c super)
  (or
   (itypep c super)
   (and (is-basic-collection? c)
        (loop for item in (value-of 'items c) thereis (itypep item super)))))
              
(defparameter *show-indra-lambda-substitutions* nil)

(defun get-pmid ()
  (when *current-article* (symbol-name (name *current-article*))))


(defmethod get-indra-sexp ((mention discourse-mention))
  (when (get-indra-for-cwc?)
    (get-indra-sexp (fom-clause-var mention))))

(defmethod get-indra-sexp ((mention-var symbol))
  (when (get-indra-for-cwc?)
    (gethash mention-var *indra-mention-var-ht*)))

(defmethod save-indra-sexpr ((mention discourse-mention)(indra-sexpr cons))
  (when (get-indra-for-cwc?)
    (save-indra-sexpr (fom-clause-var mention) indra-sexpr)))

(defmethod save-indra-sexpr ((mention-var symbol)(indra-sexpr cons))
  (when (get-indra-for-cwc?)
    (when (consp (car indra-sexpr))
      (setq indra-sexpr (car indra-sexpr)))
    (setf (get mention-var :save-indra-sexpr) indra-sexpr)
    (setf (gethash mention-var *indra-mention-var-ht*) indra-sexpr)))

(defun maybe-do-lambda-expansion (desc desc-sexp lambda-expansion)
  ;; when we have a *lambda-var* in the desc-sexp, and we know the
  ;;  variable to be bound, do the substitution
  (declare (special *predication-links-ht*))
  (when lambda-expansion
    (let ((subst-desc-sexp
           (subst
            (sem-sexp (gethash desc *predication-links-ht*))
            '*lambda-var*
            desc-sexp)))
      (when *show-indra-lambda-substitutions*
        (pprint `(,desc-sexp ===> ,subst-desc-sexp))
        (terpri))
      (setq desc-sexp subst-desc-sexp)))
  desc-sexp)


(defun make-indra-post-process-entry (mention sentence desc-sexp)
  `(,(retrieve-surface-string (mention-source mention))
     ,desc-sexp
     (TEXT ,(if (and (boundp '*indra-text*)
                     (stringp (eval '*indra-text*)))
                (eval '*indra-text*)
                (sentence-string sentence)))))

(defun maybe-save-indra-for-cwc? (mention sentence desc)
  (when (get-indra-for-cwc?)
    (if (and (individual-p desc)
             (or (itypep desc 'bio-entity)
                 (itypep desc 'disease)
                 (itypep desc 'bio-location)    ;; for "immune system"
                 (itypep desc 'bio-mechanism))) ;; for pathways
        (if (itypep desc 'collection)
            (push-sem-bio-entity-collection mention desc)
            (push-sem-bio-entity mention desc))
        (if (itypep desc 'collection)
            (push-sem-non-entity-collection mention desc)
            (let ((indra-form
                   (indra-form-for-sexpr
                    `(,(retrieve-surface-string (mention-source mention))
                       (,(cat-name (itype-of desc))
                         ,@(loop for (var val) in (dependencies mention)
                                 collect
                                   (list (intern (symbol-name (pname var)) "SPARSER")
                                         (cond ((eq (type-of val) 'discourse-mention)
                                                (push-sem->indra-post-process val sentence nil nil))
                                               ((and (individual-p val)
                                                     (or (itypep val 'bio-entity)
                                                         (itypep val 'bio-location)))
                                                (if (itypep val 'collection)
                                                    (loop for s
                                                          in (cdr (assoc 'sp::items (cdr (sem-sexp val))))
                                                          collect (get-indra-for-krisp-ent s))
                                                    (get-indra-entity-form-from-sem-sexp
                                                     (itype-of val)
                                                     (sem-sexp val)
                                                     (fom-clause-var mention)
                                                     mention)))
                                               ((individual-p val)
                                                (indra-form-for-sexpr (sem-sexp val) nil nil))
                                               (t val))))))
                    nil)))
              (when indra-form
                (save-indra-sexpr mention indra-form)))))))

(defun push-sem->indra-post-process (mention sentence lambda-expansion output-stream
                                     &optional (desc (base-description mention)))
  (declare (special *indra-text* *predication-links-ht* *indra-post-process*))
  (let ((already-has-indra-form? (get (fom-clause-var mention) :indra-form-for-sexpr)))
    (when already-has-indra-form?
      (return-from push-sem->indra-post-process already-has-indra-form?)))

  (push (make-indra-post-process-entry
         mention sentence
         (maybe-do-lambda-expansion
          desc
          (if (get-indra-for-cwc?)
              (cwc-sem-sexp mention sentence)
              (sem-sexp desc))
          lambda-expansion))
        *indra-post-process*)
  (maybe-save-indra-for-cwc? mention sentence desc))

(defun cwc-sem-sexp (mention sentence)
  `(,(cat-name (itype-of (base-description mention)))
     ,@(loop for (var val) in (dependencies mention)
             collect
               `(,(pname var)
                  ,(cond ((eq (type-of val) 'discourse-mention)
                          (push-sem->indra-post-process val sentence nil nil))
                         ((and (individual-p val)
                               (or (itypep val 'bio-entity)
                                   (itypep val 'bio-location)))
                          (if (itypep val 'collection)
                              (loop for s
                                    in (cdr (assoc 'sp::items (cdr (sem-sexp val))))
                                    collect (get-indra-for-krisp-ent s))
                              (get-indra-entity-form-from-sem-sexp
                               (itype-of val)
                               (sem-sexp val)
                               (fom-clause-var mention)
                               mention)))
                         ((individual-p val)
                          (indra-form-for-sexpr (sem-sexp val) nil nil))
                         ((or (numberp val) (symbolp val))
                          val)
                         ((consp val)
                          (cond ((loop for item in val
                                       always
                                         (eq (type-of item) 'discourse-mention))
                                 (loop for v-mention in val
                                       collect (cwc-sem-sexp v-mention sentence)))
                                ((loop for item in (cdr val)
                                       thereis
                                         (eq (type-of item) 'discourse-mention))
                                 (loop for item in (cdr val)
                                       append
                                         (cond ((eq (type-of item) 'discourse-mention)
                                                (list (cwc-sem-sexp item sentence)))
                                               ((individual-p item)
                                                (indra-form-for-sexpr
                                                 (sem-sexp item)))
                                               (t (format t "Bad item in attribute ~s, value=~s"
                                                          (pname var)
                                                          val)
                                                  nil))))
                                ((member (pname var) '(wh-path items))
                                 val)
                                (t
                                 (loop for item in val
                                       always
                                         (and (individual-p item)
                                              (itypep item 'sequence-selector)))
                                 val)
                                (t
                                 (break "unusual CONSP value for variable ~s is ~s"
                                        var val))))
                         (t (pname val)))))))

(defun push-sem-bio-entity (mention desc)
  (let ((indra-form
         (get-indra-entity-form-from-sem-sexp
          (itype-of desc)
          (sem-sexp desc)
          (fom-clause-var mention)
          mention)))
    (when indra-form
      (save-indra-sexpr mention indra-form))))

(defun push-sem-bio-entity-collection (mention desc)
  (let ((items (loop for (var val) in (dependencies mention)
                     when (or (equal (pname (var-name var)) "ITEMS")
                              (equal (pname (var-name var)) "ELEMENTS"))
                     do (return val))))
    (save-indra-sexpr mention
                      `(:collection-members
                        ,.(loop for m in items
                                when (eq (type-of m) 'discourse-mention)
                                collect
                                  (push-sem->indra-post-process m (sentence) nil nil))))))

(defun push-sem-non-entity-collection (mention desc)
  (push-sem-bio-entity-collection mention desc))

(defun contains-atom (atom list-struct)
  (if (not (consp list-struct))
      (eq atom list-struct)
      (loop for item in list-struct
            thereis (contains-atom atom item))))

(defun contains-list (l list-struct)
  (when (consp list-struct)
    (or (equal l list-struct)
        (loop for item in list-struct
              thereis (contains-list l item)))))

(defun contains-string (string list-struct)
  (if (not (consp list-struct))
      (equal string list-struct)
      (loop for item in list-struct
              thereis (contains-string string item))))

;;;;;;;;;;;;;;;;;;;;;;;;; New code used for indexing COVID (CORD-19) articles
;;; THis is probably not the right place for this code, but for today...?
;;; DAVID -- LET'S TALK

;; how to do this generally?  We need to move the data. 
(defparameter *mentions-dir*
  "~/projects/r3/corpus/covid/2020-05-12/document_parses/pdf_json/mentions/")

(defun mention-files ()
  (uiop::directory-files *mentions-dir*))

(defvar *mention-files* nil)

(defun install-mention-files ( &key (n nil) (quiet nil))
  (unless (consp *mention-files*)
    (setq *mention-files* (mention-files)))
  (unless n (setq n (length *mention-files*)))
  (time
   (loop for f in *mention-files*
         as i from 1 to n
         do
           (when (and (not quiet)
                      (eql i (* 100 (floor i 100))))
             (print i))
           (install-mention-file f))
   ))

    
(defun install-mention-file (path)
  (load path))

(defvar *mentions-by-sent* (make-hash-table :test #'equal :size 3000000))
(defvar *mentions-by-para* (make-hash-table :test #'equal :size 3000000))
(defvar *mentions-by-article* (make-hash-table :test #'equal :size 3000000))

(defvar *macro-mentions* (make-hash-table :test #'equal :size 300000)
  "mentions which stand for sets of other mentions, such as 'protease' or 'interact'")

(defun reset-mentions ()
  (clrhash *mentions-by-sent*)
  (clrhash *mentions-by-para*)
  (initialize-macro-mentions)
  )

(defun dprop (prop descrip)
  (second (assoc prop descrip)))


;; file format no longer allows for multiple articles in the list

;; have to make sp::install-article-mentions a macro because the output
;;  function for the files did not quote the second or third argument

(defmacro install-article-mentions (file-name article-id by-cat)
  `(install-article-mentions-fn ,file-name ',article-id ',by-cat))

(defun install-article-mentions-fn (file-name article-id
                                        by-cat)
  ;;(format t "~%Installing article ~a" article-id)
  (loop for (categ cat-data) in by-cat
        ;;do (format t "~%Category ~a" categ)
        do 
          (loop for (descrip locations) in cat-data
                do
                  (loop for loc in locations
                        do (install-mention descrip article-id loc)
                          ))))


;;; we want to install mentions by category and name (and possibly uid?)
;;; later we'll deal with relations

(defun install-mention (descrip article-id loc)
  (let* ((loc-string (etypecase loc
                       (symbol (pname loc))
                       (string loc)))
         (loc-parts loc)
         (full-loc (cons article-id loc-parts))
         (para-parts (subseq loc-string 0 (find  "." loc-string :from-end t)))
         )
    ;; amazingly, because there are tens of thousands of descrips
    ;;  that start with e.g. (protein ...)
    ;;  it is faster to convert the descrip to a string and
    ;;  hash on the string
    (setq descrip (sp-prin1-to-string descrip))
    (push full-loc (gethash descrip *mentions-by-sent*))
    (push full-loc (gethash descrip *mentions-by-para*))
    (unless (member article-id (gethash descrip *mentions-by-article*) :test #'equal)
      (push article-id (gethash descrip *mentions-by-article*)))
    ))

    
;;; cats list can include category symbols or names (strings)
;;; collect all of the MENTIONS for each named category that where each mention from a pair appears in the same
;;; paragraph or sentence

(defparameter *location-hash* (make-hash-table :test #'equal))
(defvar *mentions-files* nil)

(defun maybe-initialize-mention-hashes (&key (n 15000))
  (unless (> (hash-table-count sp::*mentions-by-para*) 0)
    (time (length
           (setq *mentions-files*
                        (directory "~/projects/r3/corpus/covid/2020-05-12/document_parses/pdf_json/mentions/*.lisp"))))
    (time (loop for f in *mentions-files* as i from 1 to n  do (when (eql i (* 1000 (floor i 1000)))  (print i))(load f))))
  (unless (> (hash-table-count sp::*macro-mentions*) 0)
    (initialize-macro-mentions))
  )

(defparameter *multiple-count-class-terms* nil)
(defparameter *in-article-ht* (make-hash-table :size 85000))

(defun find-biggest-intersecting-ment-strings (ment-strings &key (in-articles nil) (in-paras nil))
  (clrhash *location-hash*)
  (clrhash *in-article-ht*)
  (let* ((ht (if in-paras *mentions-by-para* *mentions-by-sent*))
         (in-articles (when in-articles
                        (loop for article in in-articles do (setf (gethash article *in-article-ht*) t))
                        *in-article-ht*)))
    (loop for ment-string in ment-strings
          do
            (let ((macro-mention (gethash ment-string *macro-mentions*)))
              (if macro-mention
                  (mark-macro-mention-items macro-mention ment-string ht)
                  (let ((locs (gethash ment-string ht)))
                    (loop for dloc in locs
                          when (or (null in-articles)
                                   (gethash (car dloc) *in-article-ht*))
                          do
                            (pushnew ment-string (gethash dloc *location-hash*)))))))
    (second
     ;; the actual sentence locations (loc-1 ... loc-k) with the highest number of items
     (car ;; (#n ((loc-1 . matches-1) ... (loc-k . matches-k))) group of locations with maximum length
      (sort
       (group-by (hal *location-hash* )
                 #'(lambda (x) (length (cdr x))))
       #'>
       :key #'car)))))

(defun mark-macro-mention-items (macro-mention-items macro-mention ht)
  (loop for indirect-description in macro-mention-items
        ;; these are the descriptions of the proteins that are indirectly described
        ;;  by the class term -- so "kinases" will map to the set of all kinases
        do
          (loop for ind-loc in (gethash indirect-description ht)
                do
                  (if *multiple-count-class-terms*
                      (pushnew 
                       ;; do we count multiple instances of the class "kinase"
                       indirect-description
                       (gethash ind-loc *location-hash*))
                      (let ((loc-items (gethash ind-loc *location-hash*)))
                        (or ;; check if there is already a macro item marked
                         (loop for item in loc-items
                               when (and (consp item) (equal (car item) macro-mention))
                               do
                                 (push indirect-description (cdr item))
                                 (return t))
                         ;; else, add a grouped list for the macro-items
                         (push (list macro-mention indirect-description)
                               (gethash ind-loc *location-hash*))))
                      ))))



;;;  FIND THE INTERSECTING LOCATIONS
;;; categories are <categorysymbol> or (<categorysymbol> "name")
;;; may want to extend this later for relations etc. 
;;; if in-paras is nil then in same sentences






;;; OLD CODE
#+ignore
(defun find-intersecting-cat-mentions (cats &optional (in-paras nil))
  (flet ((full-loc (m)
           (list (mention-article m)
                 (if in-paras (mention-para m) (mention-location m)))))

    (let* ((ht (if in-paras *mentions-by-para* *mentions-by-sent*))
           (numcats (length cats))
           (all-hits nil)
           (cats-mentions
             (loop for cat in cats
                   collect (list cat (gethash cat ht))))
           loc-by-cat-ments
           ) ;; hash returns list of mentions
      (print cats-mentions)
      (clrhash *location-hash*)
      (loop for (cat mentions) in cats-mentions
            do (loop for m in mentions
                     for loc = (full-loc m)
                     do (print (list loc cat m))
                        (pushnew (list cat m) (gethash loc *location-hash*))))

;;; for now get |probes| or |probes|-1  in same location
;;; we might want to also n>1 matching rather than require all are together. 

      (maphash #'(lambda (loc catments)
                   (let ((loc-cat-count (length (remove-duplicates catments :key #'car))))
                     (when (> loc-cat-count (max (- numcats 2) 1))
                       (push (list loc-cat-count loc catments) all-hits))
                     ))
               *location-hash*)
      (setf all-hits (sort all-hits #'> :key #'car)))))
      



(defun load-test-mentions (&optional (file "/Users/mark/cwc-integ/spire/covid/mentions-test-file.lisp"))
  (reset-mentions)
  (time (load file)))


;;; THIS IS THE CODE TO SEARCH FOR SENTENCES THAT HAVE THE GREATEST NUMBER OF
;;;  ITEMS IN COMMON WITH A QUERY


(defun sentence-indexable-mentions (&optional (s (sentence)))
  (loop for m in (sentence-mentions (sentence)) 
        when (gethash (sp-head-mention-string m) *mentions-by-sent*)
        collect (krisp->sexpr (mention-head-referent m))))

(defparameter *sorted-intersection-descrip-mentions* nil)

(defparameter *articles-about-topics* nil)

(defun sorted-intersection-descrip-mentions (sent-mentions article-topic-mentions n-articles &aux sent-mention-strings)
  (setq sent-mention-strings
        (loop for m in sent-mentions
              collect (sp-head-mention-string m)))
  (setq *articles-about-topics* nil)
  (setq *articles-about-topics*
        (get-articles-about-topics article-topic-mentions))
                     
  (let ((*max-sentences*
           (find-biggest-intersecting-ment-strings
            sent-mention-strings
            :in-articles
            *articles-about-topics*
            )))
    (declare (special *max-sentences*))
    
    (setq *sorted-intersection-descrip-mentions*
          (sort 
           (group-by *max-sentences*
                     #'caar ;; the article
                     #'cdar ;; the TOCs within the article
                     )
           #'>
           :key #'(lambda(x)(length (second x)))))
    ))

(defun get-articles-about-topics (article-topic-mentions)
  (when (consp article-topic-mentions)
    (setq *articles-about-topics*
          (gethash (sp-head-mention-string (car article-topic-mentions)) *mentions-by-article*))
    (loop for m in (cdr article-topic-mentions)
          do
            (setq *articles-about-topics*
                  (loop for art in *articles-about-topics*
                        when (member art (gethash (sp-head-mention-string m)*mentions-by-article*))
                        collect art)))
    *articles-about-topics*))
(defparameter *sent-mention-descriptions* nil)
(defparameter *sent-mentions* nil)
(defparameter *sent-mention-strings* nil)
(defparameter *topic-mention-strings* nil)
(defparameter *article-topic-mentions* nil)
(defvar *article-mention-ht*)
(defvar *art-group*)

(defun best-references-for-sentence (&key (s (sentence))
                                       (n-articles 5)
                                     &aux article-topic-mentions)
  (maybe-initialize-mention-hashes) ;;test
  (when (stringp s)
    (qepp s)
    (setq s (sentence)))
  (setq *sent-mention-descriptions*
        (remove-duplicates
         (find-indexed-descriptions
          (remove-duplicates
           (sentence-mentions s)))
         :test #'equal))
  (setq *article-topic-mentions* (find-article-topic-mentions s))
  (setq *topic-mention-strings*
        (loop for m in *article-topic-mentions*
             collect
             (list (mention-string-from-sentence m (sentence-string s))
                   (sp-head-mention-string m)
                   m)))
  (setq *sent-mentions*
        (remove-duplicates
         (loop for m
               in
                 (find-indexed-mentions (sentence-mentions s))
               unless (member m *article-topic-mentions* :test #'equal)
               collect m)))
  
  (setq *sent-mention-strings*
        (loop for m in *sent-mentions*
              collect
                (list (mention-string-from-sentence m (sentence-string s))
                      (sp-head-mention-string m)
                      m)))
  
  (list (sentence-and-mention-description s  (append *article-topic-mentions* *sent-mentions*))
        (loop for *art-group-with-article*
              in
                (collect-n-art-groups *sent-mentions* *article-topic-mentions*)
              collect
              ;; (car *art-group-with-article*) is the document for the article
                (let* ((*write-article-objects-file* nil)
                       (article (run-json-article (car *art-group-with-article*)))
                       (*article-mention-ht* (article-mention-ht article)))
                  (declare (special *write-article-objects-file*))
                  (best-article-references article
                                           (append *sent-mention-strings*
                                                   *topic-mention-strings*)
                                           (second *art-group-with-article*)
                                           *article-mention-ht*)))))

(defun collect-n-art-groups (*sent-mentions* *article-topic-mentions* 
                             &optional (n-articles 5)(max-ct 200)
                             &aux art-list)
  (declare (special *sent-mentions* *article-topic-mentions* *article-paragraph-count-ht*))
  (loop for ag in
          (sorted-intersection-descrip-mentions *sent-mentions* *article-topic-mentions* n-articles)
        do
          (if (numberp  (gethash (car ag) *article-paragraph-count-ht*))
              (when (< (gethash (car ag) *article-paragraph-count-ht*) max-ct)
                (push (list (make-json-article-from-file-handle (car ag)) ag) art-list))
              (multiple-value-bind (article para-count) (make-json-article-from-file-handle (car ag))
                (when (< para-count max-ct)
                  (push (list article ag) art-list))))
          (when (>= (length art-list) n-articles)
            (return art-list))
        finally
          (return art-list)
          ))
                  



(defun best-article-references (article *sent-mention-strings* art-group article-mention-ht)
  (declare (special *art-group* *article-mention-ht*))
  (setq *art-group* art-group)
  (setq *article-mention-ht* article-mention-ht)
  ;;(lsp-break "~%best-article-references~%")
  `(,article
    ,(loop for desc in *sent-mention-strings*
           collect
             `(,(car desc) ,(second desc)
                ,(if (gethash (second desc)  *macro-mentions*)
                     (loop for macro-item in (gethash (second desc)  *macro-mentions*)
                           append (gethash macro-item article-mention-ht))
                     (gethash (second desc) article-mention-ht))))

    ,(loop for toc-right in (remove-duplicates (second art-group) :test #'equal)
           collect
             (let* ((toc (format nil "~a.~a"
                                 (slot-value article 'name)
                                 toc-right))
                    (sentence
                     (sentence-for-toc
                      toc
                      article))
                    (paragraph
                     (cond (sentence (parent sentence))
                           (t (format t
                                      "~%Can't find sentence for TOC ~s~%"
                                      toc)))))
               (declare (special sentence paragraph))
               (when sentence
                 (list (toc-index paragraph)
                       ;;(subseq (content-string paragraph)
                       (1- (starts-at-char sentence))
                       (1- (ends-at-char sentence)) ;)
                       ))

               ))))

(defparameter *article-mention* nil)

(defun find-article-topic-mentions (sentence)
  (let* ((s-mentions (sentence-mentions sentence)))
    (setq *article-mention* (loop for m in s-mentions
                                 when (and (eq (type-of m) 'discourse-mention)
                                           (itypep (base-description m) 'published-article))
                                  do (return m)))
    (when *article-mention*
      (loop for dep in (dependencies *article-mention*)
            when (eq (var-name (car dep)) 'topic)
              collect (second dep)))
    ))

(defun sentence-and-mention-description (sent mentions)
  (let ((str (sentence-string sent)))
    (list str
          (loop for m in mentions
                collect
                  (list (mention-string-from-sentence m str)
                        (mention-offsets m)
                        (sp-head-mention-string m)
                        ))
    )))


(defun mention-string-from-sentence (m sent-str)
  (let* ((bounds (mention-offsets m))
         (low (1- (car bounds)))
         (high (1- (cdr bounds))))
    (subseq sent-str low high)))


(defun find-indexed-descriptions (mentions)
  (loop for m in mentions
        when
          (let ((m-string (sp-head-mention-string m)))
            (or (gethash m-string *mentions-by-sent*)
                (gethash m-string *macro-mentions*)))
        collect (krisp->sexpr (mention-head-referent m))))

(defun find-indexed-mentions (mentions)
  (loop for m
        in mentions
        when (or (gethash (sp-head-mention-string m) *mentions-by-sent*)
                 (loop for sub
                       in
                         (gethash (sp-head-mention-string m) *macro-mentions*)
                         thereis (gethash sub *mentions-by-sent*)))
        collect m))

(defun sp-prin1-to-string (item)
  (let ((*package* (find-package :sp)))
    (format nil "~s"
            (remove-raw-text item))))

(defun remove-raw-text (descrip)
  (if (consp descrip)
      (let ((cleaned
             (loop for d in descrip
                   unless (and (consp d)
                               (member (car d)
                                       '(raw-text count family-members)))
                   collect d)))
        ;; normalize the order of the UID and NAME (among other fields)
        ;;  for some reason, these are in different orders for "androgen" and "androgens"
        `(,(car cleaned) ,.(sort (cdr cleaned) #'string< :key #'car)))
      descrip))


(defun sp-head-mention-string (item)
  (etypecase item
    (string (qepp item)
            (sp-head-mention-string
             (edge-mention (car (all-tts)))))
    (discourse-mention 
     (sp-prin1-to-string
      (krisp->sexpr
       (mention-head-referent item))))))


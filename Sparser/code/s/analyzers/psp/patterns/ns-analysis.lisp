(in-package :sparser)

;;; --------------------------------------------------------
;;; Code to explore the results of the NS example collection
;;; --------------------------------------------------------

(defun ns-examples->file (&optional (filename "sparser:tools;ns-stuff;ns-examples.lisp"))
  "Save the collected ns examples to a file"
  (with-open-file (stream filename :direction :output :if-exists :supersede)
    (pprint *collect-ns-examples* stream))
  filename)

(defun clean-up-ns-collection ()
  "Just some clean up to group things by pattern and rule once we've
collected a set of ns-examples"
  ;; results are of the form:

  ;; (((ADJECTIVE IN-VITRO) :HYPHEN :LOWER)
  ;; ((DO-RELATION-BETWEEN-FIRST-AND-SECOND PHOSPHORYLATE VP+ED) \"in vitro–phosphorylated\")
  ;; ((DO-RELATION-BETWEEN-FIRST-AND-SECOND LABELE VP+ED) \"in vitro–labeled\")
  ;; ((DO-RELATION-BETWEEN-FIRST-AND-SECOND TRANSLATE VP+ED) \"in vitro–translated\"))

  ;; which is (pattern of words/edges) followed by sets of ((rule to
  ;; form edge and edge-form and edge-category) \"actual text
  ;; examples\") for each type of (rule edge set) that exists
  (loop for i in (group-by (remove nil *collect-ns-examples*) #'caar)
        when (equal "==>" (second (first (second i)))) 
        ;; cases with no rules get dropped at this point e.g., >20% -- will need to catch these later
        collect 
        (let ((grouped (group-by (second i) #'third #'cdar)))
          (cons (car i)
                (loop for g in grouped
                      collect 
                      (cons (car g)
                            (remove-duplicates (mapcar #'car  (second g)) :test #'equal)))))))

(defun ns-pattern-rules (cleaned-ns)
  "Given the output of clean-up-ns-collection, just pull out the patterns and unique rules"
  (loop for i in cleaned-ns
        collect (list (car i) 
                      (remove-duplicates (loop for j in (cdr i)
                            collect (caar j))))))

(defun ns-multiple-rule-patterns (rule-patterns)
  "Given the output of ns-pattern-rules, return those patterns that have multiple rules"
  (loop for rp in rule-patterns
        when (second (second rp)) ;; checking there is more than one rule
        collect rp
          #+ignore (let ((psr-rules 0))
                  (cons (car rp)
                         (loop for r in (second rp)
                              do (if (eq (symbol-package r) (find-package 'rule))
                                     (incf psr-rules)
                                     collect r))
                         (format t "psr rules: ~s" rules-psr)))
          ))

#+ignore
(length (setq *ns-multiple* (ns-multiple-rule-patterns (setq *rule-patterns* (ns-pattern-rules (setq *cleaned-ns* (clean-up-ns-collection)))))))

;;; ---------------------------------------------------------------
;;; Code to filter NS for words to identify by TRIPS or other means
;;; ---------------------------------------------------------------

(defun collect-ns->trips-file (&key (prefix "ns-undef-for-trips")
                                 (n 2500) (interim-files nil))
  "Having run (collect-ns-examples) to turn on collection and then
running articles so that *collect-ns-examples* is full of items, go
through the rest of the steps to create a filtered NS list for words
to identify by TRIPS. Default name is ns-undef-for-trips which will
create files in r3/corpus/trips-defs/ns-undef-for-trips-$n.lisp where
$n split into files of 2500 undefined words at a time to run through
trips. Use the keyword interim-files if you want files of the interim
ns-filtering steps, that will be saved in sparser:tools;ns-stuff;"
  (format t "found ~s items in ns-unknown-sublist~%" (ns-unknown-sublist))
  (when interim-files
    (ns-unknown-sublist->file :prefix prefix))
  (format t "found ~s ns-unknown-items~%" (ns-unknown-items))
  (format t "found ~s rd-ns items" (ns-unknown-rd-items))
  (when interim-files
    (ns-unknown-rd-items->file :prefix prefix))
  (format t "found ~s undef-ns items~%" (remove-predef-ns))
  (when interim-files
    (ns-undef-items->file :prefix prefix))
  (split-ns-file-for-trips :prefix prefix :n n)
  )

(defparameter *ns-unknown-sublist* nil)
(defun ns-unknown-sublist (&optional (ns-examples *collect-ns-examples*))
  (length
   (setq *ns-unknown-sublist*
         (loop for n in ns-examples
                                        ; do (print (car (third n)))
                                        ; do (print (caar n))
               unless
                 (let ((*ns-ex* n))
                   (declare (special *ns-ex*))
                   ;; to help diagnose errors in this process
                   (or (not (stringp (second (car n))))
                       (and (consp (third n))
                            (or (memq (car (third n)) 
                                      (list
                                       'DO-RELATION-BETWEEN-FIRST-AND-SECOND
                                       'MAKE-PROTEIN-COLLECTION
                                       'MAKE-BIO-COMPLEX
                                       'MAKE-AMINO-COLLECTION
                                       'COMPOSE-SALIENT-HYPHENATED-LITERALS
                                       'RESOLVE-TRAILING-STRANDED-HYPHEN
                                       'RESOLVE-INITIAL-STRANDED-HYPHEN
                                       'MAKE-EDGE-OVER-MUTATED-PROTEIN
                                       'RESOLVE-PROTEIN-PREFIX
                                       :REIFY-RESIDUE
                                       :REIFY-POINT-MUTATION-AND-MAKE-EDGE
                                       'PACKAGE-APPROXIMATION-NUMBER
                                       'MAKE-NS-PAIR ;; these are mostly not of interest, but may have some false-negs
                                       :NUMBER-FSA
                                       'MAKE-WILD-TYPE-EDGE
                                       ))
                                (when (and (symbolp (car (third n)))
                                           (symbol-package (car (third n))))
                                  (equal "RULE" (package-name (symbol-package (car (third n))))))
                                ))
                       (member (caaar n) 
                               (list :ASTERISK :GREEK_LUNATE_EPSILON_SYMBOL :HYPHEN :TILDA :PLUS-SIGN :EQUAL-SIGN
                                     :GREATER-THAN_OR_SLANTED_EQUAL_TO :GREATER-THAN_OR_EQUAL_TO :GREATER-THAN 
                                     :LESS-THAN_OR_SLANTED_EQUAL_TO :LESS-THAN_OR_EQUAL_TO :LESS-THAN
                                     :SHARP-SIGN :DIGITS :NUMBER :VERTICAL-BAR :UNDER-BAR :AND-SIGN 
                                     :LEFT-POINTING-DOUBLE-ANGLE-QUOTATION_MARK
                                     '(COMMON-NOUN |HTTP://|))
                               :test #'equal) 
                       ;; removed :SINGLE-DIGIT because there are several things of interest starting with 5α
                       (and (eq (length (caar n)) 1)
                            (memq (caaar n) '(:LOWER :SINGLE-CAP :SINGLE-LOWER :LITTLE-P)))
                       (and (eq (length (caar n)) 2)
                            (or (and (memq (second (caar n)) '(:HYPHEN :COLON))
                                     (memq (first (caar n)) '(:LOWER :SINGLE-LOWER :SINGLE-CAP
                                                              :SINGLE-DIGIT :PROTEIN :FORWARD-SLASH :HYPHEN)))
                                (and (eq (first (caar n)) :DOUBLE-QUOTE)
                                     (memq (second (caar n)) '(:LOWER :SINGLE-DIGIT :PROTEIN :CELLULAR-PROCESS 
                                                               :ACTIVATION-LOOP :CAPITALIZED)))))))
               collect (list (caar n) (second (car n)) (car (third n)))))))

(defun ns-unknown-sublist->file (&key (prefix "1-500")
                                    (filename 
                                     (format nil
                                             "sparser:tools;ns-stuff;ns-unknown-sublist-~a.lisp"
                                             prefix)))
  "Save the collected ns examples to a file"
  (with-open-file (stream filename :direction :output :if-exists :supersede)
    (pprint *ns-unknown-sublist* stream))
  filename)

(defparameter *ns-unknown-items* nil)
(defun ppcre-split (pat x)
  (list x))

(defun ppcre-scan (pat x)
  x)

(when (find-package :ppcre)
  (setf (symbol-function 'ppcre-split)
        (symbol-function (intern "SPLIT" (find-package :ppcre))))
  (setf (symbol-function 'ppcre-scan)
        (symbol-function (intern "SCAN" (find-package :ppcre)))))


(defparameter *bad-end-chars*
  '("#" "$" "&" "*" "+" "/"  ":" "=" "-" "\\" "^" "_"
    "`"  "|" "~" "«" "®" "°" "±" "´" "·" "º" "Å" "É"
    "Ö"  "ß" "ö" "͂" "‐" "–" "―" "…" " " "″" "™" "→" "↔" 
    "−" "∩" "∼" "≈" "≠" "≤" "≥" "≫" "⊇" "⋅" "▵" "⩽"
    "⩾" "•" "“" "‑"))

;; Set to ignore because of not everyone has ppcre loaded, so need to remove the ignore to do this step
;;; Now use the covering functions defined above
(defun ns-unknown-items (&optional (ns-unknown-sublist *ns-unknown-sublist*)(others nil))
  "Split items at slashes and colons"
  (declare (special ns-unknown-sublist others *ns-unknown-items*))
  (let ((base-strings (append others (mapcar #'second (remove nil ns-unknown-sublist)))))
    (declare (special base-strings))
    (let ((split-lists
           (loop for n in base-strings
                 unless
                   (and (stringp n)
                        (or
                         (member (subseq n 0 1) *bad-end-chars* :test #'equal)
                         (member (subseq n (- (length n) 1)) *bad-end-chars* :test #'equal)))
                 collect (ppcre-split "[/:]" n))))
      (declare (special split-lists))
      (let ((split-strings (loop for l in split-lists when (consp l) append l)))
        (declare (special split-strings))
        ;;(pprint `(setq split-strings ',split-strings))
        (let ((dedup (remove-duplicates split-strings :test #'equal)))
          ;;(pprint `(setq dedup ',dedup))
          (length (setq *ns-unknown-items* dedup)))))))

(defparameter *rd-ns* nil)

;; Set to ignore because of not everyone has ppcre loaded, so need to remove the ignore to do this step
;;; Now use the covering functions defined above
(defun ns-unknown-rd-items (&optional (ns-unknown-items *ns-unknown-items*))
  "Remove items that start with any of several characters or end with hyphen, or have an em dash since those are really sentence punctuation; also remove any items that are a single character"
  (length (setq *rd-ns*
                (loop for str
                      in
                        (sort
                         (remove-duplicates
                          (loop for x in ns-unknown-items
                                        ; do (print (length x))
                                unless
                                  (or (search " " x)
                                      (ppcre-scan "^[-~+#0-9_&«*\"]" x)
                                      (ppcre-scan "[‑–−-]$" x)
                                      (search "—" x) 
                                      ;; we need to not make em dashes
                                      ;; equivalent to hyphens before no-space
                                      ;; but that hasn't been done yet
                                      (> 2 (length x))) ;; apparently > is actually ≥
                                collect
                                  (loop for pre in '("anti" "pre" "non" "phospho" "GTP" "GDP" "p" "co")
                                        do
                                          (when
                                              (or
                                               (eq 0 (search (format nil "~a-" pre) x :test #'equalp))
                                               (eq 0 (search (format nil "~a–" pre) x :test #'equalp)) )
                                            (return (subseq x (+ 1 (length pre)))))
                                        finally (return x)))
                              
                          :test #'equal) #'string<)
                      when (not (non-bio-entity? str))
                      collect str))))

(defun non-bio-entity? (str)
  (or (equal str "TAB") ;; strange edge case
      (let* ((wd (resolve str))
             (rs (when wd (rule-set-for wd)))
             (cats (when rs (rs-distinct-categories rs))))
        (when cats
          (loop for c in cats thereis (not (eq (cat-name c) 'bio-entity)))))))

(defun ns-unknown-rd-items->file (&key (prefix "1-500")
                                    (filename 
                                     (format nil
                                             "sparser:tools;ns-stuff;ns-unknown-rd-items-~a.lisp"
                                             prefix)))
  "Save the collected ns examples to a file"
  (declare (special *bio-entity-heads* *bio-chemical-heads*))
  (with-open-file (stream filename :direction :output :if-exists :supersede)
    (pprint `(in-package :sp) stream)
    (pprint
     `(defparameter ,(intern (format nil "*NS-RD-~a*" prefix) (find-package :sp))
        ',*rd-ns*)
     stream)
    (terpri stream)
    (when *bio-entity-heads*
      (pprint
       `(defparameter ,(intern (format nil "*BIO-ENTITY-HEADS-~a*" prefix) (find-package :sp))
          ',(mapcar #'car (hal *bio-entity-heads*)))
       stream))
    (terpri stream)
    (when *bio-chemical-heads*
      (pprint
       `(defparameter ,(intern (format nil "*BIO-CHEMICAL-HEADS-~a*" prefix) (find-package :sp))
          ',(hal *bio-chemical-heads*))
       stream)))
  filename)

(defun ns-biochemical-heads->file (&key (prefix "1-500")
                                     (filename 
                                      (format nil
                                              "sparser:tools;ns-stuff;ns-biochemical-heads-~a.lisp"
                                              prefix))
                                     (bio-entity-heads nil))
  "Save the collected biochemical-heads to a file"
  (declare (special *bio-chemical-heads* *bio-entity-heads*))
  (when (and 
             (boundp '*bio-chemical-heads*)
             *bio-chemical-heads*)
    (with-open-file (str filename :direction :output :if-does-not-exist :create
                         :if-exists :supersede)
      (print `(in-package :sparser) str)
      (when bio-entity-heads
        (print `(defparameter *bio-entity-head-strings*
                  (remove-duplicates
                   (append
                    ',(mapcar #'car (hal *bio-entity-heads*))
                    (if (boundp '*bio-entity-head-strings*)
                        *bio-entity-head-strings*
                        nil))
                   :test #'equal))
                     
               str))
      (pprint
       `(defparameter *incremental-biochem-heads*
          ',(loop for pair in (hal *bio-chemical-heads*)
                  when (second (car pair))
                    collect pair))
       str)
      (pprint `(unless (boundp '*all-biochemical-heads*)
                 (defparameter *all-biochemical-heads*
                   (make-hash-table :size 300000 :test #'equal)))
              str)
      (pprint
       `(loop for h in *incremental-biochem-heads*
              do
                (incf (gethash (car h) *all-biochemical-heads* 0)
                      (cdr h)))
       str))))

     
          
(defparameter *undef-ns* nil)

(defparameter *bad-inits*
  '("p-" "phospho-" "co-" "anti-" "#" "$" "&" "*" "+" "/"  ":" "=" "-"
    "\\" "^" "_" "`"  "|" "~"
    "«" "®" "°" "±" "´" "·" "º" "Å" "É" "Ö"  "ß" "ö" "͂"
    "‐" "–" "―" "…" " " "″" "™" "→" "↔" 
    "−" "∩" "∼" "≈" "≠" "≤" "≥" "≫" "⊇" "⋅" "▵" "⩽" "⩾" "•" "“" "‑"))

(defun remove-predef-ns (&optional (rd-ns *rd-ns*))
  "Remove items that resolve and hence are already defined in Sparser"
  (length (setq *undef-ns*
                 (loop for x in rd-ns
                       unless (or (< (length x) 3)
                                  (and (eq 3 (length x))
                                       (or (eq 1 (or (search "-" x)
                                                     (search "–" x)
                                                     (search "‑" x)))
                                           (and (eq 2 (search "s" x)) 
                                                (upper-case-p (char x 1)))))
                                  (loop for bad-initial in *bad-inits* 
                                        thereis (eq 0 (search bad-initial x)))
                                  (resolve x)
                                  (resolve (string-downcase x)))
                       collect x))))


(defun ns-undef-items->file (&key (prefix "1-500")
                             (filename 
                              (format nil
                                      "sparser:tools;ns-stuff;ns-undef-items-~a.lisp"
                                      prefix)))
  "Save the collected undefined items to a file"
  (with-open-file (stream filename :direction :output :if-exists :supersede)
    (pprint `(in-package :sp) stream)
    (pprint
     `(defparameter ,(intern (format nil "*NS-UNDEF-~a*" prefix) (find-package :sp))
        ',*undef-ns*)
     stream))
  filename)

(defun split-ns-file-for-trips (&key (n 2500) (file nil) (prefix nil))
  "Split ns-undef-items into files of a size that is manageable for
pushing through TRIPS; n specifies the number of items being sent to
TRIPS (on Laurel's machine, 2500 takes 20min - trying to hunt down why
that is); when file is nil, it is assumed this is being run directly
after remove-predef-ns and that the values of interest are in
*undef-ns*, otherwise specify the name of a file in tools/ns-stuff
e.g., \"ns-undef-items\" n is for the number of items per file and
filenum is for the output name"
  (let* ((undef-ns 
         (if file
             (with-open-file (stream 
                              (concatenate 'string "sparser:tools;ns-stuff;"
                                           file ".lisp")
                              :direction :input
                              :external-format :UTF-8)
               (read stream nil))
             *undef-ns*))
         (quot (floor (length undef-ns) n)))
    (loop for i from 0 to quot
          do (ns-undef->trips (subseq undef-ns (* i n)
                                      (unless (eq i quot)
                                        (* (+ i 1) n)))
                              (if prefix
                                  prefix
                                  (if file
                                      file
                                      "ns-undef-for-trips"))
                              (+ i 1)))))

(defun ns-undef->trips (undef-ns file i)
  "Given a sublist of the of undef-ns examples, create a file with that sublist"
  (with-open-file (stream 
                   (make-pathname 
                    :name (concatenate 'string file "-" (write-to-string i))
                    :type "lisp"
                    :defaults
                    (asdf:system-relative-pathname :r3 
                                                   "../corpus/trips-defs/"))
                   :direction :output :if-exists :supersede
                   :external-format :UTF-8)
        (format stream "(in-package :get-defs)~%~%")
        (format stream "(defparameter *terms*~%'~s)" undef-ns)))


(defparameter *prefixes* nil)        
(defun ns-prefixes (&optional (rd-ns *rd-ns*))
  "Pull out the prefixes (i.e., things before a hyphen) that don't already have definitions"
  (length (setq *prefixes* 
                (remove-duplicates 
                 (loop for x in *rd-ns* 
                       when (and (search "-" x) 
                                 (not (resolve (subseq x 0 (search "-" x))))) 
                       collect (subseq x 0 (search "-" x)))
                 :test #'equal))))

; A hash-table and associated functions for a one-time operation, but unlikely to need again so commenting out the creation of the hash-table and associated functions

#+ignore(defparameter *no-colons-prot-ht* 
  (make-hash-table :size 10000 :test #'equalp)) ; actually should be 140000
#+ignore(defun collect-no-colon-protein-ids (&optional (prot-def-file "sparser:bio;standardized-protein-defs-complete.lisp"))
  (with-open-file (stream prot-def-file :direction :input :external-format :UTF-8)
      (loop for prot = (read stream nil)
            when (eq 'define-protein (first prot))
            do (get-set-no-colons-hash (second prot))
              (when (consp (third prot))
                (loop for i in (third prot)
                      do (get-set-no-colons-hash i))))))

#+ignore(defun no-colons-p (string)
  (unless (search ":" string)
      string))

#+ignore(defun get-set-no-colons-hash (string)
  (when (no-colons-p string)
    (unless (gethash string *no-colons-prot-ht*)
      (setf (gethash string *no-colons-prot-ht*)
            string))))


; Preliminary versions of the above

#+ignore
(lsetq *ns-list*                       
   append  (ppcre-split "[/:]" (second (car n))))
#+ignore
(lsetq *rd-ns*
     (sort
        (remove-duplicates
          (loop for x in *ns-list*
               unless
                  (or (search " " x)
                  (loop for c in '("-" "~" "+" "=" "≥" ">" "<" "≤" "#" "%" "*" "&" "°" "1" "2" "3" "4" "5" "6" "7" "8" "9" "0") thereis (eq 0 (search c x))))
               collect x)
            :test #'equal) #'string<))
#+ignore
(lsetq *prefixes* (remove-duplicates (loop for x in *rd-ns* when (and (search "-" x) (not (resolve (subseq x 0 (search "-" x))))) collect (subseq x 0 (search "-" x))) :test #'equal))




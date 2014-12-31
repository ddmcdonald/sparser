;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2014 SIFT LLC. All Rights Reserved
;;;
;;;    File: "mechanics"
;;;  Module: "grammar/model/sl/biology/
;;; version: September 2014

;; Initiated 3/2/14. 5/22/14 Added synonyms field to def-bio.
;; 6/9/14 Pulled types out from regular kinds. 7/24/14 reorganized.
;; 9/8/14 lifted taxonomy out to its own file, added keyword to
;; inhibit plurals, defaults to allow plurals

(in-package :sparser)

;;;-------------------------------------------
;;; macro for defining individual particulars
;;;-------------------------------------------

(defmacro def-bio (short kind &key greek identifier long synonyms takes-plurals)
  ;; short = "NIK", long = "NF-κB-inducing kinase"
  ;; kind = kinase, greek = "alpha"
  ;; Makes individuals (particulars), that are instances of 
  ;; a specific kind. Staying vague about what they might denote.
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
    (setq takes-plurals t))

  `(def-bio/expr ,short ',kind 
     :greek ',greek :identifier ',identifier 
     :long ,long :synonyms ',synonyms :takes-plurals ,takes-plurals))


(defun def-bio/expr (short kind &key greek identifier long synonyms takes-plurals)
  ;; use find-individual with their names to retrieve these. 
  (let* ((word (resolve/make short))
         (category (category-named kind :break-if-undefined)))
    (make-typed-bio-entity word category
                          greek identifier
                          long synonyms takes-plurals)))
 

(defun define-bio (word category-name)
  (let ((category (category-named category-name :break-if-undefined)))
    (make-typed-bio-entity word category)))


(defun make-typed-bio-entity (word category &optional greek identifier long synonyms takes-plurals)
  (declare (special *inihibit-constructing-plural*))
  (let ((label (or (override-label category) category))
        (form (category-named 'proper-noun))
        ;; proper noun makes sense for named protiens and such
        ;; but the marker may actually be the capitalization
        ;; of the word, which would have to be caught upstream
        ;; and passed through in a parameter. 
        (*inihibit-constructing-plural* (not takes-plurals))
        rules  i   )

    ;; There is a bug that I can't sort out with the available evidence
    ;; when redefining a def-bio entity involving a list of rules being 
    ;; expected to be a structure. Until there's time to creep up on
    ;; that bug and kill it, I've separated the find from the make and
    ;; not looking for the possibility that a redefinition actually
    ;; added or changed something substantive. ddm - 12/30/14
    (setq i (find-individual category :name word))
    (when i
      (return-from make-typed-bio-entity i))
    (setq i (define-individual category :name word))

      ;; The real form to use
      ;;     (setq i (find-or-make-individual category :name word))
      ;; The find-or-make call will set up a rule for the short form
      ;; as a common noun that has this individual as its referent.
      ;; Ignoring brackets since this runs with the new chunker

      ;;(push-debug `(,i ,word)) (break "find base rule")
      ;; This is packaged up some place, but no time to see where
      (let* ((rules (get-tag-for :rules i))
             (rule (when rules (car rules))))
        (when rule
          (setf (edge-form rule) category::proper-noun)))

      (let* ((pname (etypecase word 
                      (word (word-pname word))
                      (polyword (pw-pname word))))
             (downcased-pname (string-downcase pname)))
        (unless synonyms ;; probably done there
          (unless (string= downcased-pname pname) ;; case-sensitive
            (let ((lowercase-word (resolve/make downcased-pname)))
              (push (define-cfr label `(,lowercase-word)
                      :form form
                      :referent i)
                    rules)))))
   
      (when identifier
        (bind-variable 'uid identifier i))

      (when synonyms ;; quoted list of strings
        (dolist (syn synonyms)
          (push (define-cfr label `(,(resolve/make syn))
                  :form form
                  :referent i)
                rules)))

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
                (word-pname word) long greek label form i)))
          (setq rules (nconc additional-rules rules))))

      (when rules
        (push-onto-plist i rules :rules))

      i))


(defun rules-with-greek-chars-substituted (short long greek-words label form i)
  (unless *greek-character-map*
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


;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;     File:  "section"
;;;   Module:  "objects;doc:"
;;;  Version:  1.5 May 1994

;; 1.1 (5/21/92 v2.2) Changed the presumptions about what data structure
;;     goes into the "full name" field
;; 1.2 (6/26) fixed Section-marker-named to use sm-
;; 1.3 (7/13) changed the value saved in the rule set from the initiate
;;     fn to the object itself (initiate was motivated by sgml, but was 
;;     short-sighted and doesn't hack it for paragraphs)
;; 1.4 (1/13/94) Fixed bug in installation of the completion action
;; 1.5 (5/3) tweeked def-form to get implicit-close right

(in-package :sparser)

#|  n.b. the Def. form is in grammar;forms:sectionizing   |#

;;;--------
;;; object
;;;--------

(defstruct (section-marker
            (:conc-name #:sm-)
            (:print-function print-section-marker-structure))
  word                 ;; artificial word, prefixes "SM-" to an
                       ;; upcase version of the full-name

  full-name            ;; a string that acts as the name of the
                       ;; section marker and the basis of indexing it

  terminates-previous  ;; a section marker
  initiation-action    ;; an object suitable for funcall
  termination-action   ;; ditto
  interior-markup      ;; ditto
  plist
  )


(defun print-section-marker-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<section-marker " stream)
  (if (sm-full-name obj)
    (write-string (sm-full-name obj) stream)
    (write-string (word-pname (sm-word obj)) stream))
  (write-string ">" stream))


;;;-------
;;; sugar
;;;-------

(defun no-actions/section-marker (sm)
  (let ((plist (sm-plist sm)))
    (member :no-actions plist)))


;;;-----------
;;; indexing
;;;-----------

(defvar *section-markers* nil)
  ;; an alist of (word . marker)

(defun index/section-marker (word sm)
  (setq *section-markers*
        (cons `(,word ,sm)
              *section-markers*)))

(defun find/section-marker (word)
  (cadr (assoc word *section-markers*)))

(defun section-marker-named (string)
  (unless (stringp string)
    (error "argument must be a string.~
            ~% ~A is a ~A" string (type-of string)))
  (let ((word (word-named string)))
    (or (find/section-marker word)
        (let ((sm-word (word-named
                        (concatenate 'string  "SM-"
                                     string))))
          (or (find/section-marker sm-word)
              (format t "no section-marker named \"~A\" or \"~A\""
                      string sm-word))))))

(defun delete/section-marker (sm)
  (unless (no-actions/section-marker sm)
    (delete-completion-action (sm-word sm) :section-marker))
  (setq *section-markers*
        (delete sm *section-markers* :test #'eq :key #'cadr))
  sm )


;;;-------------------
;;; internal def-form
;;;-------------------

(defun define-section-marker/expr (string
                                   initiate terminate close interior
                                   no-actions?)

  (let* ((sm-string (concatenate 'string
                                 "SM-"
                                 string))
         (sm-symbol (intern sm-string *word-package*))
         (sm (if (and (boundp sm-symbol)
                      (rs-fsa (word-rule-set (symbol-value sm-symbol))))
               (find/section-marker (symbol-value sm-symbol))
               (make-a-new-section-marker
                (define-section-marking-word string)
                string  ;; "full name"
                ))))

    (populate-section-marker
     sm initiate terminate close interior no-actions?)))



(defun make-a-new-section-marker (sm-word name)
  (let ((sm (make-section-marker :word      sm-word
                                 :full-name name)))
    (index/section-marker sm-word sm)
    sm ))



(defun populate-section-marker (sm
                                initiate terminate close interior
                                no-actions?)

  (setf (sm-initiation-action sm)  initiate)
  (setf (sm-termination-action sm) terminate)
  (when interior
    (setf (sm-interior-markup sm)
          (setup-interior-markup-data interior)))
  (let ((sm-to-close (if (and close (stringp close))
                       (section-marker-named close)
                       close)))
    (when close
      (unless sm-to-close
        (break "There is no section marker named ~A" close)))
    (setf (sm-terminates-previous sm) sm-to-close)

    (if no-actions?  ;; e.g. SGML is done by a meta routine
      (setf (sm-plist sm) `(:no-actions))
      (else
        ;; Put the initiation action on the action list of the word.
        ;; The termination action and what it closes will be handled
        ;; automatically when the action fires.
        (let* ((word (sm-word sm))
               (rs (word-rule-set word)))
          (unless rs
            (setf (word-rule-set word)
                  (setq rs (make-rule-set :backpointer word))))
          (if (rs-completion-actions rs)
            (if (member :section-marker (rs-completion-actions rs))
              (then
                (let ((cell-to-change
                       (cdr (member :section-marker
                                     (rs-completion-actions rs)))))
                  (rplaca cell-to-change
                          sm)))

              (setf (rs-completion-actions rs)
                    (cons :section-marker
                          ;;(cons initiate
                          ;;      (rs-completion-actions rs))
                          (cons sm
                                (rs-completion-actions rs))
                          )))
            (setf (rs-completion-actions rs)
                  ;;`(:section-marker ,initiate)
                  `(:section-marker ,sm)
                  )))))
    sm))


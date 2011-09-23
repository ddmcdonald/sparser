;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1994-1996 David D. McDonald  -- all rights reserved
;;;
;;;      File:  "defining verbs"
;;;    Module:  "interface;grammar:"
;;;   version:  0.3 July 1996

;; made its own file and made to work 11/17/94. Integrated with defining
;; sublanguage verbs 3/8/95.  4/27 fixed bugs in that
;; 0.1 (8/11) Changed the return value from define-word-as-verb so it could
;;      properly signal cancels.
;; 0.2 (1/2/96) tweeked Save-irregular-verb-definition so it would gen a category
;;      rather than just define the word.
;; 0.3 (7/22) Re-worked how Save-irregular-verb-definition did categories and
;;      make it give the verbs referents.

(in-package :sparser)


;;;-------------------------------------------------------------------
;;; getting all the spelling forms hypothesized, checked, and defined
;;;-------------------------------------------------------------------

;; This is in [syntax;categories]
#|
(define-autodef-data 'verb
  :display-string "verb"
  :form 'define-word-as-verb
  :dossier "dossiers;semantics-free verbs"
  :module *known-verbs*
  :description "words that are to be treated strictly as verbs: not sometimes also as nouns, etc. The verb will have no semantics"
  :examples "\"describe\" \"expect\" \"give\"" 
  :write-fn 'save-irregular-verb-definition )  |#


(defun define-word-as-verb (string &key word
                                        stem
                                        past-tense
                                        past-participle
                                        present-participle
                                        third-singular
                                        third-plural 
                                        (category word)
                                        referent )

  ;; When working from DM&P, the string may be for any of the verb's
  ;; morphological variants, so we orient this off of an initial
  ;; calculation of what the stem ought to be, and have the user
  ;; check it via a dialog before burning it in.
                            
  (let* ((word (or word (resolve-string-to-word/make string)))
         (stem (or stem (stem-form-of-verb word))))

    (unless past-tense
      (setq past-tense (ed-form-of-verb stem)))
    (unless past-participle
      (setq past-participle past-tense))
    (unless present-participle
      (setq present-participle (ing-form-of-verb stem)))
    (unless third-singular
      (setq third-singular (s-form-of-verb stem)))
    (unless third-plural
      (setq third-plural stem))

    (multiple-value-bind (stem/ok past-tense/ok past-participle/ok
                          present-participle/ok third-singular/ok)

                         (check-verb-dialog  ;; launch the window
                          stem past-tense past-participle
                          present-participle third-singular)

      (unless (null stem/ok)
        ;; if stem/ok is nil it means that the check-dialog was
        ;; canceled
        (make-verb-rules/aux2 stem/ok category referent
                              :past-tense  past-tense/ok
                              :past-participle  past-participle/ok
                              :present-participle  present-participle/ok
                              :third-singular  third-singular/ok
                              :third-plural  third-plural ))

      (setf (unit-plist word)
            `(:stem ,stem/ok
              :past-tense ,past-tense/ok
              :past-participle ,past-participle/ok
              :present-participle  ,present-participle/ok
              :third-singular  ,third-singular/ok
              :third-plural  ,third-plural
              ,@(word-plist word)))

      (if stem/ok
        stem/ok
        :cancel) )))


;;;----------------------------
;;; writing out the definition
;;;----------------------------

(defun save-irregular-verb-definition (w stream)
  ;; called from Save-word-definition after the dossier has been opened
  ;; and set to the stream and the date information has been written
  (let* ((plist (unit-plist w)))
    (when (cadr (member :stem plist :test #'eq))
      ;; sanity check. If one of them is there, I'll assume that they
      ;; all are since it's populated by a program.
      (let ((stem (word-pname (cadr (member :stem plist :test #'eq))))
            (past (word-pname (cadr (member :past-tense plist :test #'eq))))
            (past-part (word-pname (cadr (member :past-participle plist :test #'eq))))
            (pres-part (word-pname (cadr (member :present-participle plist :test #'eq))))
            (third-sing (word-pname (cadr (member :third-singular plist :test #'eq))))
            (third-plural (word-pname (cadr (member :third-plural plist :test #'eq)))))
        

        (format stream "~&(make-verb-rules/aux2  (define-word \"~A\")~
                        ~%       (find-or-make-category-object '~A :referential)~
                        ~%       (category-named '~A)"
                stem stem stem)
        (format stream "~%  :past-tense \"~A\"~
                        ~%  :past-participle \"~A\"~
                        ~%  :present-participle \"~A\"~
                        ~%  :third-singular \"~A\"~
                        ~%  :third-plural \"~A\" "
                past past-part pres-part
                third-sing third-plural )
        (write-string ")" stream)
        w ))))


(defun write-minimal-irregulars-as-rdata (w stream
                                          &optional (indentation
                                                     "    "))
  ;; Writes the smallest set of specifications needed, given
  ;; how the verb was defined. Fits into the ':verb' subfield
  ;; of some rdata field that its caller is writing.
  (let* ((plist (word-plist w))
         (stem (cadr (member :stem plist :test #'eq))))
    (unless stem
      (break "Threading bug: this routine doesn't make sense ~
              unless the word~%has been run through a definition ~
              routine that gives it a stem~%and a property list ~
              that records its conjugation:~%   ~A~%" w))
    (let
      ((past (cadr (member :past-tense plist :test #'eq)))
       (past-part (cadr (member :past-participle plist :test #'eq)))
       (pres-part (cadr (member :present-participle plist :test #'eq)))
       (third-sing (cadr (member :third-singular plist :test #'eq)))
       (third-plural (cadr (member :third-plural plist :test #'eq)))
       irregular-past  irregular-past-part  irregular-pres-part
       irregular-third-sing  irregular-third-plural )

      (when (not (eq past (ed-form-of-verb stem)))
        (setq irregular-past past))
      (when (not (eq past-part (ed-form-of-verb stem)))
        (setq irregular-past-part past-part))
      (when (not (eq pres-part (ing-form-of-verb stem)))
        (setq irregular-pres-part pres-part))
      (when (not (eq third-sing (s-form-of-verb stem)))
        (setq irregular-third-sing third-sing))
      (when (not (eq third-plural stem))
        (setq irregular-third-plural third-plural))

      (if (not (or irregular-past  irregular-past-part  irregular-pres-part
                   irregular-third-sing  irregular-third-plural ))
        (format stream "\"~A\"" (word-pname w))
        (else
          (format stream "(\"~A\"" (word-pname w))
          (when irregular-third-sing
            (format stream "~&~A:third-singular \"~A\""
                    indentation
                    (word-pname irregular-third-sing)))
          (when irregular-third-plural
            (format stream "~&~A:third-plural \"~A\""
                    indentation
                    (word-pname irregular-third-plural)))
          (when irregular-pres-part
            (format stream "~&~A:present-participle \"~A\""
                    indentation
                    (word-pname irregular-pres-part)))
          (when irregular-past
            (format stream "~&~A:past-tense \"~A\""
                    indentation
                    (word-pname irregular-past)))
          (when irregular-past-part
            (format stream "~&~A:past-participle \"~A\""
                    indentation
                    (word-pname irregular-past-part)))
          (format stream ")"))))))
          
  



;;;------------------------------
;;; widgets in verb-check dialog
;;;------------------------------

(defparameter *vcd/infinitive-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(45 13)
          #@(72 30)
          "      Infinitive, 
3d plural, etc."
          'NIL
          :VIEW-FONT
          '("Times" 12 :SRCOR :PLAIN)))

(defparameter *vcd/instruction-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(71 162)
          #@(287 16)
          "Change any spellings that are wrong"
          'NIL))

(defparameter *vcd/3d-singular-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(55 52)
          #@(60 16)
          "3d singular
"
          'NIL
          :VIEW-FONT
          '("Times" 12 :SRCOR :PLAIN)))

(defparameter *vcd/past-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(88 77)
          #@(28 16)
          "past"
          'NIL
          :VIEW-FONT
          '("Times" 12 :SRCOR :PLAIN)))

(defparameter *vcd/past-participle-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(42 104)
          #@(74 16)
          "past participle"
          'NIL
          :VIEW-FONT
          '("Times" 12 :SRCOR :PLAIN)))

(defparameter *vcd/present-participle-text*
  (MAKE-DIALOG-ITEM
          'STATIC-TEXT-DIALOG-ITEM
          #@(30 133)
          #@(88 16)
          "present participle"
          'NIL
          :VIEW-FONT
          '("Times" 12 :SRCOR :PLAIN)))

(defparameter *vcd/infinitive-box*
  (MAKE-DIALOG-ITEM
          'EDITABLE-TEXT-DIALOG-ITEM
          #@(127 18)
          #@(162 16)
          "infinitive"
          'NIL
          :ALLOW-RETURNS
          NIL))

(defparameter *vcd/3d-box*
  (MAKE-DIALOG-ITEM
          'EDITABLE-TEXT-DIALOG-ITEM
          #@(126 48)
          #@(161 16)
          "3d"
          'NIL
          :ALLOW-RETURNS
          NIL))

(defparameter *vcd/past-box*
  (MAKE-DIALOG-ITEM
          'EDITABLE-TEXT-DIALOG-ITEM
          #@(127 75)
          #@(161 16)
          "past"
          'NIL
          :ALLOW-RETURNS
          NIL))

(defparameter *vcd/past-part-box*
  (MAKE-DIALOG-ITEM
          'EDITABLE-TEXT-DIALOG-ITEM
          #@(127 102)
          #@(161 16)
          "past part"
          'NIL
          :ALLOW-RETURNS
          NIL))

(defparameter *vcd/pres-part-box*
  (MAKE-DIALOG-ITEM
          'EDITABLE-TEXT-DIALOG-ITEM
          #@(127 130)
          #@(162 16)
          "pres part"
          'NIL
          :ALLOW-RETURNS
          NIL))


;;;--- Buttons

(defvar *vcd/accept-return-values* nil)

(defparameter *vcd/ok-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(331 16)
          #@(62 25)
          "ok"
          'vcd/ok-button-action
          :VIEW-FONT
          '("Chicago" 14 :SRCOR :PLAIN)
          :DEFAULT-BUTTON
          T))

(defun vcd/ok-button-action (ok-button)
  (declare (ignore ok-button))
  (setq *vcd/accept-return-values* t)
  (ccl:return-from-modal-dialog nil))


(defparameter *vcd/help-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(331 65)
          #@(62 20)
          "help"
          'NIL
          :DEFAULT-BUTTON
          NIL))

(ccl:dialog-item-disable *vcd/help-button*)


(defparameter *vcd/cancel-button*
  (MAKE-DIALOG-ITEM
          'BUTTON-DIALOG-ITEM
          #@(333 105)
          #@(62 20)
          "cancel"
          'vcd/cancel-button-action
          :DEFAULT-BUTTON
          NIL))

(defun vcd/cancel-button-action (cancel-button)
  (declare (ignore cancel-button))
  (setq *vcd/accept-return-values* nil)
  (ccl:return-from-modal-dialog nil))


;;;-----------------------
;;; the verb-check window
;;;-----------------------

(defvar *verb-check-dialog* nil)

(defun instantiate-verb-dialog ()
  (setq *verb-check-dialog*
        (MAKE-INSTANCE 'DIALOG
          :WINDOW-TYPE  :DOCUMENT-WITH-GROW
          :window-title "Check verb"
          :window-show nil           ;; <--- n.b.
          :VIEW-POSITION  #@(79 54)
          :VIEW-SIZE  #@(431 192)
          :VIEW-FONT  '("Chicago" 12 :SRCOR :PLAIN)
          :VIEW-SUBVIEWS
             (LIST *vcd/infinitive-text*
                   *vcd/instruction-text*
                   *vcd/3d-singular-text*
                   *vcd/past-text*
                   *vcd/past-participle-text*
                   *vcd/present-participle-text*
                   *vcd/infinitive-box*
                   *vcd/3d-box*
                   *vcd/past-box*
                   *vcd/past-part-box*
                   *vcd/pres-part-box*
                   *vcd/ok-button*
                   *vcd/help-button*
                   *vcd/cancel-button* ))))

;(instantiate-verb-dialog)


;;--- populating the cells for a new verb

(defun setup-verb-dialog-texts (infinitive past-tense past-participle
                                present-participle third-singular)

  (let ((inf-string (word-pname infinitive))
        (3d-string (word-pname third-singular))
        (past-string (word-pname past-tense))
        (past-part-string (word-pname past-participle))
        (pres-part-string (word-pname present-participle)))

    (ccl:set-dialog-item-text *vcd/infinitive-box* inf-string)
    (ccl:set-dialog-item-text *vcd/3d-box* 3d-string)
    (ccl:set-dialog-item-text *vcd/past-box* past-string)
    (ccl:set-dialog-item-text *vcd/past-part-box* past-part-string)
    (ccl:set-dialog-item-text *vcd/pres-part-box* pres-part-string)))


;;--- retrieving the revised values from the cells afterwards

;(extract-verb-dialog-strings)
(defun extract-verb-dialog-strings ()
  (values
   (ccl:dialog-item-text *vcd/infinitive-box*)
   (ccl:dialog-item-text *vcd/3d-box*)
   (ccl:dialog-item-text *vcd/past-box*)
   (ccl:dialog-item-text *vcd/past-part-box*)
   (ccl:dialog-item-text *vcd/pres-part-box*)))


;;;---------------
;;; dialog driver
;;;---------------

#|  test case
(;;setup-verb-dialog-texts   
 check-verb-dialog
 (define-word "vorple")   ;; inf.
 (define-word "vorpled")  ;; past
 (define-word "vorpled")  ;; past part.
 (define-word "vorpling") ;; pres. part.
 (define-word "vorples")  ;; 3d sing.
)  |#

(defun check-verb-dialog (infinitive past-tense past-participle
                          present-participle third-singular)

  (let ((inf-string (word-pname infinitive))
        (3d-string (word-pname third-singular))
        (past-string (word-pname past-tense))
        (past-part-string (word-pname past-participle))
        (pres-part-string (word-pname present-participle)))

    (ccl:set-dialog-item-text *vcd/infinitive-box* inf-string)
    (ccl:set-dialog-item-text *vcd/3d-box* 3d-string)
    (ccl:set-dialog-item-text *vcd/past-box* past-string)
    (ccl:set-dialog-item-text *vcd/past-part-box* past-part-string)
    (ccl:set-dialog-item-text *vcd/pres-part-box* pres-part-string)

    (instantiate-verb-dialog)
    (ccl:modal-dialog *verb-check-dialog*)

    (when *vcd/accept-return-values*
      (multiple-value-bind (inf-string/after 3d-string/after
                            past-string/after past-part-string/after
                            pres-part-string/after )
                           (extract-verb-dialog-strings)
        (values
         (if (equal inf-string inf-string/after)
           infinitive
           (let ((new-infinitive
                  (define-word/expr inf-string/after)))
             (assign-brackets-as-a-main-verb new-infinitive)
             new-infinitive))

         (if (equal past-string past-string/after)
           past-tense
           (let ((new-past-tense
                  (define-word/expr past-string/after)))
             (assign-brackets-as-a-main-verb new-past-tense)
             new-past-tense))

         (if (equal past-part-string past-part-string/after)
           past-participle
           (let ((new-past-participle
                  (define-word/expr past-part-string/after)))
             (assign-brackets-as-a-main-verb new-past-participle)
             new-past-participle))

         (if (equal pres-part-string pres-part-string/after)
           present-participle
           (let ((new-present-participle
                  (define-word/expr pres-part-string/after)))
             (assign-brackets-as-a-main-verb new-present-participle)
             new-present-participle))

         (if (equal 3d-string 3d-string/after)
           third-singular
           (let ((new-third-singular
                  (define-word/expr 3d-string/after)))
             (assign-brackets-as-a-main-verb new-third-singular)
             new-third-singular)))))))


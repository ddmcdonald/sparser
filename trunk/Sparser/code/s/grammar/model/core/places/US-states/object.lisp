;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "object"
;;;   Module:  "model;core:names:places:US States:"
;;;  version:  September 1991      (v1.9)

;; initiated in September 1990

(in-package :CTI-source)


;;;--------
;;; object
;;;--------

(define-category State)  ;;??change the whole thing to ignore the
                      ;;country? -- getting Saskatchawan in there
                      ;;w/o anything special??
      ;;The grammar is done in these terms just to get a feel for it



(define-category US-State)
;  :slots ((name word)
;          (abbreviations (:list word)))
;  :index (:hash-on-slot name))

(defstruct (US-state
            (:print-function print-US-state-structure))
  rules dossier name abbreviations )


(defun Print-US-state-structure (obj stream depth)
  (declare (ignore depth))
  (write-string "#<US-state " stream)
  (princ-word (US-state-name obj) stream)
  (write-string ">" stream))

(defun Display-US-state (US-state stream)
  (display-word (US-state-name US-state) stream))

;;;------------
;;; ancilaries
;;;------------

(setf (cat-index (category-named 'category::US-state))
      (make-index/hash-on-slot))

(defun Find/US-state (word)
  (gethash word (cat-index (category-named/c-symbol
                            'category::US-state))))

(defun US-state-named (string)
  (let ((word (resolve-string-to-word string)))
    (find/US-state word)))

(defun Index/US-state (word US-state)
  (setf (gethash word (cat-index (category-named/c-symbol
                                  'category::US-state)))
        US-state))

(defun all-US-states ()
  (let ( accumulating-US-states )
    (maphash #'(lambda (word US-state)
                 (declare (ignore word))
                 (push US-state
                       accumulating-US-states))
             (cat-index (category-named/c-symbol
                         'category::US-state)))
    accumulating-US-states))


(defun list-the-US-states ()
  (let ((the-US-states (all-US-states)))
    (pl (sort the-US-states
              #'word-order
              :key #'US-state-name)
        nil)))


(defun Delete-US-state (string)
  (let* ((word (word-named string))
         (US-state (find/US-state word)))
    (unless US-state
      (error "There is no US-state named ~A" string))
    (delete/US-state US-state word)))

(defun Delete/US-state (US-state
                  &optional
                  (word ({{{US-state-name
                          US-state)) )
  ;; delete the rules that invoke it
  (dolist (rule (US-state-rules US-state))
    (delete-cfr/cfr rule))
  ;; strand it -- remove it from the catalog
  (remhash word (cat-index (category-named/c-symbol
                            'category::US-state)))
  US-state )

;;;---------------
;;; defining form
;;;---------------


(defun Define-US-state (string &key abbreviations )

  (let ((word (resolve/make string))
        US-state abbrev-word abbrev-cfr )

    (if (setq US-state (find/US-state word))
      US-state
      (else
        (setq US-state (make-US-state
                        :name word))
        (let ( rules )
          (push (define-cfr category::state `( ,word )
                  :form category::proper-noun
                  :referent US-state)
                rules)
          (dolist (abbrev-string abbreviations)
            (setq abbrev-word (resolve/make abbrev-string))
            (setq abbrev-cfr
                  (define-cfr category::state `( ,abbrev-word ) 
                    :form category::proper-noun
                    :referent US-state ))
            (disable-cfr abbrev-cfr)
            (install-word-as-abbreviation abbrev-word abbrev-cfr)
            (push abbrev-cfr rules))

          (setf (US-state-rules US-state) rules))

        (index/US-state word US-state)
        US-state ))))


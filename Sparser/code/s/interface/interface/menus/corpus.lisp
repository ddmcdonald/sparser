;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1992-1996  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "corpus"
;;;    Module:  "interface;menus:"
;;;   version:  0.4 June 1996

;; initiated 3/20/92 v2.2
;; 0.1 (1/25/94) redesigned from scratch for MCL 2.0
;; 0.2 (3/30) reset again and next when a new doc-stream is selected
;; 0.3 (4/19) added a check that the corpus is connected/
;; 0.4 (4/11/95) finally put in code to ignore the nils from corpora that
;;      aren't available on the local machine.
;;     (12/11) added an 'or' into Create-the-corpus-menu to keep the corpus menus
;;      from being omitted when launching on the Book.
;;     (6/27/96) modified and moved the gate used to check that the data file has
;;      been loaded (*doc-streams-for-menu*)

(in-package :sparser)


;;;-------------
;;; menu object
;;;-------------

(defparameter *corpus-menu* nil)

(defun create-the-corpus-menu ()
  (when (or *connect-to-the-corpus*
            cl-user::location-of-text-corpora)
    
    (when (and (boundp '*doc-streams-for-menu*)
               *doc-streams-for-menu*)
      ;; this global is setup in "corpus;Sparser-drivers:menu data"
      ;; where it is set by hand to a carefully ordered and selected
      ;; configuration of document streams and labled lists of them.
      ;; If the global doesn't exist then that code wasn't loaded and
      ;; we can't make the menu.
      
      (let ((ds-items (convert-doc-stream-menu-data-to-menus)))
        (setq *corpus-menu*
              (make-instance 'menu
                :menu-title "Corpus"
                :menu-items  ds-items ))))))


#| It would be nice to open and run a file selected off
   the 'open' menu, but I cann't (1/16/94) find any way
   to run it in the MCL 2.0 documentation
(list (make-instance 'menu-item
        :menu-item-title "-" )
      (make-instance 'menu-item
        :menu-item-title "any file"
        :menu-item-action
        'run-file-from-open-menu )) |#


;;;-------------------------------------------
;;; converting document streams to menu items
;;;-------------------------------------------

(defparameter *str-of-document-stream-menu-items* nil)

(defun convert-doc-stream-menu-data-to-menus ()
  (let ( menu-items  menu-item )
    (dolist (entry *doc-streams-for-menu*)
      (setq menu-item (make-corpus-menu-items entry))
      (when menu-item
        (push menu-item menu-items)))
    (setq *str-of-document-stream-menu-items*
          (nreverse menu-items))))


(defun make-corpus-menu-items (entry)
  ;; an entry is either a document stream or a list.
  ;; If it is a list the first element is a string that is to be used
  ;; as the title of the menu item and the rest is a list of entries
  (when entry
    (etypecase entry
      (cons
       (let ((items (mapcar #'make-corpus-menu-items
                            (cadr entry))))
         (when (some-item/s-in-list-is-nil items)
           (setq items (remove-nils-from-list items)))
         (when items
           (make-instance 'menu
             :menu-title (car entry)
             :menu-items items ))))
      
      (document-stream
       (let* ((title (symbol-name (ds-name entry)))
              (menu-item
               (make-instance 'doc-stream-menu-item
                 :menu-item-title title
                 :stream entry
                 :update-function 'check-if-ds-is-selected
                 :menu-item-action #'(lambda ()
                                       (eval-enqueue
                                        `(select-ds ,entry))))))
         (setf (ds-menu-item entry) menu-item)
         menu-item )))))


(defclass doc-stream-menu-item (menu-item)
  ((document-stream :initarg :stream
                    :accessor doc-stream-menu-item-stream)))

(defun check-if-ds-is-selected (ds-menu-item)
  (let ((ds (doc-stream-menu-item-stream ds-menu-item)))
    (if (eq ds *document-stream-to-use*)
      (set-menu-item-check-mark ds-menu-item t)
      (set-menu-item-check-mark ds-menu-item nil))))


(defun select-ds (ds)
  ;; called when a document stream is selected on the corpus menu
  (let ((menu-item (ds-menu-item ds)))
    (set-menu-item-title *start-corpus* "start")
    (setq *current-file* nil
          *files-remaining* nil)
      ;; n.b. these variables are part of the state of running a
      ;; document-stream.

    (if (menu-item-check-mark menu-item)
      (then
        (setq *document-stream-to-use* nil)
        (set-menu-item-check-mark menu-item nil))
      (else
        (setq *document-stream-to-use* ds)
        (set-menu-item-check-mark menu-item t)))))



;;;----------------------------------------
;;; wigets and actions on the Sparser menu
;;;----------------------------------------

(defparameter *start-corpus*
  (make-instance 'menu-item
    :menu-item-title "start"
    :update-function 'has-a-ds-been-selected?
    :menu-item-action 'initiate-corpus-run ))

(defun initiate-corpus-run ()
  (eval-enqueue '(analyze-document-stream *document-stream-to-use*))
  (set-menu-item-title *start-corpus* "restart"))

(defun has-a-ds-been-selected? (start-corpus-menu-item)
  ;; menu-item update function. //probably can't use
  (if *document-stream-to-use*
    (menu-item-enable start-corpus-menu-item)
    (menu-item-disable start-corpus-menu-item)))



(defparameter *repeat-last-article*
  (make-instance 'menu-item
    :menu-item-title "again"
    :update-function 'ds-ongoing?
    :menu-item-action 'repeat-last-file ))

(defun dS-ongoing? (repeat-menu-item)
  (if *current-file*
    (menu-item-enable repeat-menu-item)
    (menu-item-disable repeat-menu-item)))



(defparameter *continue/next*
  (make-instance 'menu-item
    :menu-item-title (if *pause-between-articles*
                       "next"  "continue")
    :update-function 'ds-files-remaining?
    :menu-item-action (if *pause-between-articles*
                        'do-next-file  'continue-with-rest-of-files )))

(defun dS-files-remaining? (continue/next-menu-item)
  (if *files-remaining*
    (menu-item-enable continue/next-menu-item)
    (menu-item-disable continue/next-menu-item)))

(defun convert-c/n-button-to-Continue ()
  (setq *pause-between-articles* nil)
  (ccl:set-menu-item-title *continue/next* "continue")
  (ccl:set-menu-item-action-function *continue/next*
                                     'continue-with-rest-of-files)
  *continue/next* )

(defun convert-c/n-button-to-Next ()
  (setq *pause-between-articles* t)
  (ccl:set-menu-item-title *continue/next* "next")
  (ccl:set-menu-item-action-function *continue/next*
                                     'do-next-file)
  *continue/next* )




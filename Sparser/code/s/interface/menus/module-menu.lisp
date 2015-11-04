;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992-1996  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "module menu"
;;;    Module:  "interface;menus:"
;;;   version:  1.3 June 1996

;; initiated 3/9/92 v2.2.  Fleshed out 5/1,2.  Converted driver
;; to a function 6/25.
;; 0.1 (1/10/94) utterly revamped to fit MCL 2.0, pulling in from old postprocessing code
;; 0.2 (4/6) removing the category and word submenus since their vast number was
;;      blowing out the capacity of the Mac's menu system.
;; 0.3 (4/19) added an nreverse in Establish-gmod-menu to get the order consistent
;;      with the order given in the defining file.
;; 0.4 (4/24) added the gate *spm/inculde-grammar-modules*
;; 0.5 (10/12) trying a different timing of when the module is constructed
;; 1.0 (12/30) added inclusion of object menu items
;; 1.1 (3/22/95) Put in a check that leaf modules had contents to gate whether
;;      they (and recursively their parents) go into the menu.  Pulled the
;;      'describe' code because there's so little postprocessing, etc. that
;;      it doesn't have significant contents
;; 1.2 (4/3) put in a filter for 'public grammar' that runs when Sparser is
;;      an application
;; 1.3 (6/20) added rules item to the menu
;;     (6/6/96) adjusted the public grammar filter for the case of academics

(in-package :sparser)


;;;---------------------
;;; pointer to the menu
;;;---------------------

(defparameter *grammar-modules-menu* nil)

;;;-----------
;;; installer
;;;-----------

(defun install-grammar-modules-menu ()
  ;; called from Launch-Sparser-menus when the load is finished
  (unless *grammar-modules-menu* ;; don't do it twice
    (let ((menu (establish-gmod-menu)))
      (when (or *words-menu-item* *categories-menu-item* *cfrs-menu-item*)
        ;; additions go at the bottom of the menu
        (ccl:add-menu-items menu (make-instance 'menu-item
                                   :menu-item-title "-"))
        (when *words-menu-item*
          (ccl:add-menu-items menu *words-menu-item*))
        (when *categories-menu-item*
          (ccl:add-menu-items menu *categories-menu-item*))
        (when *cfrs-menu-item*
          (ccl:add-menu-items menu *cfrs-menu-item*)))

      (ccl:menu-install menu))))


;(install-grammar-modules-menu)
;(menu-deinstall *grammar-modules-menu*)
;(setq *grammar-modules-menu* nil)



;;;---------------------
;;; assembling the menu
;;;---------------------

(defun establish-gmod-menu ()
  (format t "~%-------------------------------~
             ~%Grammar modules:~%~%")
  (let ( contents  submenus )

    (dolist (topmod *toplevel-grammar-modules*)
      (setq contents nil)
      (if (gmod-sub-modules topmod)
        (then
          (setq contents (do-menus/nonterminal-module topmod ""))
          (when contents
            (push contents submenus)))

        (when (gmod-files topmod)
          (setq contents (do-menus/leaf-module topmod ""))
          (when contents
            (push contents submenus)))))

    (let ((menu (make-instance 'menu :menu-title "grammar")))
      (apply #'add-menu-items menu (nreverse submenus))
      (setq *grammar-modules-menu* menu))))



(defun do-menus/nonterminal-module (gmod indent)
  (let ((daughter-modules (gmod-sub-modules gmod))
        (new-indent (concatenate 'string indent "  "))
        contents  submenus )
    (dolist (gmod daughter-modules)
      (setq contents nil)
      (if (gmod-sub-modules gmod)
        (then
          (setq contents
                (do-menus/nonterminal-module gmod new-indent))
          (when contents
            (push contents submenus)))
        (when (gmod-files gmod)
          (setq contents (do-menus/leaf-module gmod new-indent))
          (when contents
            (push contents submenus)))))

    (when submenus
      (format t "~&~A~A" indent (gmod-princ-name gmod))
      (let ((menu (make-instance 'menu
                    :menu-title (gmod-princ-name gmod))))
        (apply #'add-menu-items menu submenus)
        menu ))))




(defun do-menus/leaf-module (gmod indent)
  (format t "~&~A~A" indent (gmod-princ-name gmod))
  (let ((files (gmod-files gmod))
        (name (gmod-princ-name gmod))
        items  )

    (unless name
      (break "grammar module ~S needs a princ-name" gmod))

    (when files
      (if *sparser-is-an-application?*
        ;; The grammar is made available in two different modes as
        ;; reflected in these flags. The whole thing is opened up
        ;; to academics, but only designated 'public' files are
        ;; available to commercial licensees.
        (if *academic-grammar*
          (push (make-menu/files files) items)

          (let ((public-files (public-files-filter files)))
            (when public-files
              (push (make-menu/files public-files) items))))

        (push (make-menu/files files) items)))

      #| pulling this 3/21/95 until Describe-mod and the
         accumulators produce more interesting information.
      (push (make-instance 'menu-item
              :menu-item-title "describe"
              :menu-item-action #'(lambda ()
                                    (eval-enqueue
                                     `(describe-gmod ,gmod))))
            items) |#

    (when items
      (let ((menu (make-instance 'menu
                    :menu-title name)))
        (apply #'add-menu-items menu items)
        menu ))))


;;;-------------
;;; subroutines 
;;;-------------

(defun make-menu/files (list-of-raw-namestrings)
  (make-instance 'menu
    :menu-title "files"
    :menu-items (let ( items )
                  (dolist (s list-of-raw-namestrings)
                    (push (make-menu-item/file s)
                          items ))
                  (nreverse items))))


(defun make-menu-item/file (string)
  ;; the string is a 'raw-namestring' like "sl;pct:position object"
  ;; We present the file name as the title of the menu, and
  ;; the corresponding full pathname as the item to be edited.

  (let* ((index-of-filename-colon (position #\: string :from-end t)))

    (unless index-of-filename-colon
      ;; sometimes the raw name as just a logical: "reports;object"
      (setq index-of-filename-colon
            (position #\; string :from-end t)))

    (let* ((filename (subseq string (1+ index-of-filename-colon)))
           (pathname (expand-namestring string))
           (fasl-index (search ".FASL" filename)))

      (when fasl-index
        (setq filename (subseq filename 0 fasl-index))
        (setq pathname (subseq pathname 0 (search ".FASL" pathname)))
        (let ((index-of-f (search ":f:" pathname)))
          (unless index-of-f
            (break "File has fasl extension but no 'f':~%  ~A" pathname))
          (setq pathname
                (concatenate 'string
                             (subseq pathname 0 (1+ index-of-f))
                             "s"
                             (subseq pathname (+ 2 index-of-f))))
          ;(break)
          ))

      (make-instance 'menu-item
        :menu-item-title filename
        :menu-item-action
        #'(lambda ()
            (eval-enqueue `(ed ,pathname)))))))



(defun public-files-filter (files)
  ;; return those file-namestrings on the list that are 'public'
  ;; given the current conventions (4/3/95)
  (let ( public-files )
    (dolist (f files)
      (cond ((position #\; f)
             ;; it involves a llogical directory
             (when (search "public-" f)
               (push f public-files)))
            ((search ":grammar:" f)
             (when (probe-file
                    (concatenate 'string
                                 cl-user::location-of-sparser-directory
                                 "grammar"))
               (when (file-in-public-module f)
                 (push f public-files))))))

    (when public-files
      (nreverse public-files))))


(defun file-in-public-module (namestring)
  (dolist (directory-name *public-grammar-directories* nil)
    (when (search directory-name namestring)
      (return-from File-in-public-module t))))

 






(defun make-menu-item/word (word)
  (make-instance 'menu-item
    :menu-item-title (word-pname word)
    :menu-item-action
      #'(lambda ()
          (eval-enqueue `(inspect ,word)))))

(defun make-menu/words (list-of-words)
  (make-instance 'menu
    :menu-title "words"
    :menu-items (let ( items )
                  (dolist (w list-of-words)
                    (push (make-menu-item/word w)
                          items))
                  (nreverse items))))


(defun make-menu-item/pw (pw)
  (make-instance 'menu-item
    :menu-item-title (pw-pname pw)
    :menu-item-action
      #'(lambda ()
          (eval-enqueue `(inspect ,pw)))))

(defun make-menu/pws (list-of-pws)
  (make-instance 'menu
    :menu-title "polywords"
    :menu-items (let ( items )
                  (dolist (pw list-of-pws)
                    (push (make-menu-item/pw pw)
                          items))
                  (nreverse items))))



(defun make-menu-item/object (o)
  (make-instance 'menu-item
    :menu-item-title (symbol-name (cat-symbol o))
    :menu-item-action #'(lambda ()
                          (eval-enqueue `(inspect ,o)))))

(defun make-menu/objects (list-of-objects)
  (make-instance 'menu
    :menu-title "Object types"
    :menu-items (let ( items )
                  (dolist (o list-of-objects)
                    (push (make-menu-item/object o) items))
                  (nreverse items))))



(defun make-menu-item/nonterminal (c)
  (make-instance 'menu-item
    :menu-item-title (symbol-name (cat-symbol c))
    :menu-item-action #'(lambda ()
                          (eval-enqueue `(inspect ,c)))))

(defun make-menu/nonterminals (list-of-simple-categories)
  (make-instance 'menu
    :menu-title "Nonterminals"
    :menu-items (let ( items )
                  (dolist (c list-of-simple-categories)
                    (push (make-menu-item/nonterminal c) items))
                  (nreverse items))))



(defun make-menu-item/cfrs (r)
  (make-instance 'menu-item
    :menu-item-title (format nil "~A" r)
    :menu-item-action #'(lambda ()
                          (eval-enqueue `(inspect ,r)))))

(defun make-menu/cfrs (list-of-cfrs)
  (make-instance 'menu
    :menu-title "context free rules"
    :menu-items (let ( items )
                  (dolist (r list-of-cfrs)
                    (push (make-menu-item/cfrs r) items))
                  (nreverse items))))



(defun make-menu-item/csrs (r)
  (make-instance 'menu-item
    :menu-item-title (format nil "~A" r)
    :menu-item-action #'(lambda ()
                          (eval-enqueue `(inspect ,r)))))

(defun make-menu/csrs (list-of-csrs)
  (make-instance 'menu
    :menu-title "context free rules"
    :menu-items (let ( items )
                  (dolist (r list-of-csrs)
                    (push (make-menu-item/csrs r) items))
                  (nreverse items))))


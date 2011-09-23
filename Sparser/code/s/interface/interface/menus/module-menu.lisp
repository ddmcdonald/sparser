;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;; copyright (c) 1992,1993,1994  David D. McDonald  -- all rights reserved
;;;
;;;      File:  "module menu"
;;;    Module:  "interface;menus:"
;;;   version:  0.5 October 1994

;; initiated 3/9/92 v2.2.  Fleshed out 5/1,2.  Converted driver
;; to a function 6/25.
;; 0.1 (1/10/94) utterly revamped to fit MCL 2.0, pulling in from old postprocessing code
;; 0.2 (4/6) removing the category and word submenus since their vast number was
;;      blowing out the capacity of the Mac's menu system.
;; 0.3 (4/19) added an nreverse in Establish-gmod-menu to get the order consistent
;;      with the order given in the defining file.
;; 0.4 (4/24) added the gate *spm/inculde-grammar-modules*
;; 0.5 (10/12) trying a different timing of when the module is constructed

(in-package :sparser)


;;---- gate guarding the launching of the menu

(unless (boundp '*spm/inculde-grammar-modules*)
  (defparameter *spm/inculde-grammar-modules* t
    "Referenced in Launch-sparser-menus, and usually overridden
     in a grammar-modules 'include' file."))



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
      (ccl:menu-install menu))))
  #| 10/12  This global loses its macptr over an image save, so probably
       have to do the whole process as part of the launch
  (if *grammar-modules-menu*
    (menu-install *grammar-modules-menu*)
    (format t "~%~%Cannot bring up the grammar modules menu because ~
               ~%*grammar-modules-menu* is nil. Either Establish-gmod-menu~
               ~%was never run, or it got an error"))) |#

;(menu-install *grammar-modules-menu*)
;(menu-deinstall *grammar-modules-menu*)


;;;---------------------
;;; assembling the menu
;;;---------------------

(defun establish-gmod-menu ()
  (format t "~%~%-------------------------------~
             ~%Grammar modules:~%~%")
  (let ( submenus )
    (dolist (topmod *toplevel-grammar-modules*)
      (if (gmod-sub-modules topmod)
        (push (do-menus/nonterminal-module topmod "")
              submenus)
        (when (gmod-files topmod)
          (push (do-menus/leaf-module topmod "")
                submenus))))
    (let ((menu (make-instance 'menu :menu-title "grammar")))
      (apply #'add-menu-items menu (nreverse submenus))
      (setq *grammar-modules-menu* menu))))


(defun do-menus/nonterminal-module (gmod indent)
  (format t "~&~A~A" indent (gmod-princ-name gmod))
  (let ((menu (make-instance 'menu
                :menu-title (gmod-princ-name gmod)))
        (daughter-modules (gmod-sub-modules gmod))
        (new-indent (concatenate 'string indent "  "))
        submenus )
    (dolist (gmod daughter-modules)
      (if (gmod-sub-modules gmod)
        (push (do-menus/nonterminal-module gmod new-indent)
              submenus)
        (when (gmod-files gmod)
          (push (do-menus/leaf-module gmod new-indent)
                submenus))))
    (apply #'add-menu-items menu submenus)
    menu ))


(defun do-menus/leaf-module (gmod indent)
  (format t "~&~A~A" indent (gmod-princ-name gmod))
  (let ((files (gmod-files gmod))
        #|(cf (gmod-cf-rules gmod))
        (cs (gmod-cs-rules gmod))
        (words (gmod-words gmod))
        (pw (gmod-polywords gmod))
        (simple-categories (gmod-non-terminals gmod))
        (object-types (gmod-object-types gmod))|#
        (name (gmod-princ-name gmod)))

    (unless name
      (break "grammar module ~S needs a princ-name" gmod))

    (let ((menu (make-instance 'menu
                  :menu-title name))
          items )

      (when files
        (push (make-menu/files files) items))

      #|  Ignoring these (4/6/94) because they generate so many
          menus that they'll blow out the carrying capacity of
          the menu system under MCL 2.0
      (when words
        (push (make-menu/words words) items))
      (when pw
        (push (make-menu/pws pw) items))
      (when object-types
        (push (make-menu/objects object-types) items))
      (when cf
        (push (make-menu/cfrs cf) items))
      (when cs
        (push (make-menu/csrs cs) items))
      (when simple-categories
        (push (make-menu/nonterminals simple-categories) items))|#
      
      (push (make-instance 'menu-item
              :menu-item-title "describe"
              :menu-item-action #'(lambda ()
                                    (eval-enqueue
                                     `(describe-gmod ,gmod))))
            items)

      (apply #'add-menu-items menu items)
      menu )))


;;;-------------
;;; subroutines 
;;;-------------

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



(defun make-menu/files (list-of-raw-namestrings)
  (make-instance 'menu
    :menu-title "files"
    :menu-items (let ( items )
                  (dolist (s list-of-raw-namestrings)
                    (push (make-menu-item/file s)
                          items ))
                  (nreverse items))))




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


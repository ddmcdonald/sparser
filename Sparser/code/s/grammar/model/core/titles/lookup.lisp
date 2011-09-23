;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(CTI-source LISP) -*-
;;; copyright (c) 1990,1991  Content Technologies Inc.  -- all rights reserved
;;;
;;;     File:  "lookup"
;;;   Module:  "model;sl:whos news:posts:"
;;;  version:  May 1991      system version 1.8.5

(in-package :CTI-source)


(defun lookup/title (left-ref right-ref)
  ;; ///change the name after changing the :merge routine
  ;; of the title composing rules to the new name
  (let ((right-string
         (typecase right-ref
           (title (etypecase (title-name right-ref)
                    (word (word-pname (title-name right-ref)))
                    (polyword (pw-pname (title-name right-ref)))))
           (list (if (eq (first right-ref) :new-title)
                   (second right-ref)
                   (break/debug "Bad data")))
           (string right-ref)
           (otherwise
            (break/debug "Lookup/title: new kind of right-ref: ~A~%"
                         right-ref))))
        (left-string
         (typecase left-ref
           (word (word-pname left-ref))
           (category (extract-string-from-category left-ref))
           (category-of-company
            (word-pname (company-category-name left-ref)))
           (string left-ref)
           (list (if (eq (first left-ref) :new-title)
                   (second left-ref)
                   (break/debug "Bad data")))
           (title (etypecase (title-name left-ref)
                    (word (word-pname (title-name left-ref)))))
           (otherwise
            (break/debug "Lookup/title: new kind of left-ref: ~A~%"
                         left-ref))))

        (end-of-left (pos-edge-ends-at *left-edge-into-reference*))
        (start-of-right (pos-edge-starts-at *right-edge-into-reference*)))

    (if (eq end-of-left start-of-right)
      (list :new-title
            (concatenate 'string left-string " " right-string))

      (let ((intermediaries (terminals-in-segment/one-string
                             end-of-left start-of-right)))
        (list :new-title
              (concatenate 'string
                 left-string " " intermediaries " " right-string))))))
  

(defun extract-string-from-category (c)
  (cond ((member :self-referential-word (cat-plist c))
         (let ((obj (cadr (member :self-referential-word
                                  (cat-plist c)))))
           (etypecase obj
             (polyword (pw-pname obj)))))
        (t (break/debug
            "New case for Extract-string-from-category"))))




;; The old scheme that used the examination buffer
#|
(defun right-recursive-rule/title (string name title)
  (if (not (multi-word-string string))
    (define-cfr c::title `(,name)
      :referent title)
    (else
      (parse-into-examination-buffer string)

      (unless (eq (last-constituent/exb/c) c::title)
        (break "Unexpected case.  The last constituent is not already ~
                a title:~%   ~A~%   Check that the titles are being ~
                defined shortest first" (last-constituent/exb/c)))
      (unless (= 2 (number-of-constituents-in-examination-buffer))
        (break "In doing titles didn't expect more than 2 constituents,~
                ~%      but there are ~A:~%~A"
               (number-of-constituents-in-examination-buffer)
               (contents-of-examination-buffer)))

      (let* ((first-constituent (first-constituent/exb))
             (first-category    (first-constituent/exb/c))
             (referent-first-constituent
              (etypecase first-constituent
                (word first-constituent)
                (edge (edge-referent first-constituent))))
             (anchor-title (edge-referent (last-constituent/exb))))

        (setf (title-extensions anchor-title)
              (push (cons referent-first-constituent
                          title)
                    (title-extensions anchor-title)))

        (push (define-cfr c::title `(,first-category ,c::title)
                :referent '(:merge lookup/title left-edge right-edge))
              (title-rules title))
        ))))


(defun lookup/title (key anchor
                     &key anchor-composite extended-title)
  ;; Called to compute the referent of a compositional title edge.
  ;; Both the key and anchor are referents
 (when (composite? anchor)
    (setq anchor-composite anchor)
    (setq anchor (ecase (cat-symbol (first anchor-composite))
                   (c::title+company  (second anchor-composite))
                   (c::title+status
                    ;; in Dec1;195 there is a referring use of a title
                    ;; adjacent to a title -- this catches it without
                    ;; having a model of why
                    (return-from lookup/title nil)))))
 
  (let* ((extension-table (title-extensions anchor))
         (title (cdr (assoc key extension-table :test #'equal))))
    (if title
      (then
        (if anchor-composite
          (then
            ;(break "check anchor-composite")
            (ecase (cat-symbol (first anchor-composite))
              (c::title+company
               (list c::title+company title (third anchor-composite)))
              ))
          title))

      (if *parsing-into-examination-buffer*
        (then  
          ;;it's probably composing together the very case being
          ;; defined.  We don't want the edge to go through
          (throw :abort-edge-because-of-referent :aborted))

        (else ;; during a real parse
          (if (composite? key)
            (let ((buried-key          
                   (look-under-top/referents/left :non-composite)))
              (unless buried-key
                (break "Expected to be able to find a buried key."))
              (setq title
                    (cdr (assoc buried-key extension-table :test #'equal)))
              (unless title            
                (break "Lookup/title -- a new key for anchor:~
                        ~%     anchor: ~A~
                        ~%        key: ~A" anchor buried-key))
              
              ;; now we have to knit the newly identified title into
              ;; that topmost (left edge) composite that was our original
              ;; key.
              (replace-rightmost-title key title)
              (setq extended-title title) )
            
            (else
              (setq extended-title
                    (assemble-new-title/anchor+key anchor key))))

          (when anchor-composite
            ;; then we have to fit the extended title into the right place
            (ecase (cat-symbol (first anchor-composite))
              (c::title+company
               (list c::title+company extended-title (third anchor-composite)))
              ))
          extended-title )))))


(defun assemble-new-title/anchor+key (anchor key)
  (format t "~&~%Define a new title for~
             ~%   ~A  ~A~%" key anchor)
  (let ((anchor-string
         (pw-pname (title-name (etypecase anchor
                                 (title anchor)))))
        (key-string
         (etypecase key
           (word (word-pname key))
           (category-of-company  ;; e.g. "center"
            (word-pname (company-category-name key)))
           (title (let ((name (title-name key)))
                    (etypecase name
                      (word (word-pname name))
                      (polyword (pw-pname name)))))
           (category ;;presumably a self-referential-word
            (symbol-name (cat-symbol key)))
           )))
    (let* ((composed-string
            (concatenate 'string key-string " " anchor-string))
           (pname (resolve-string-to-word/make composed-string))
           (title
            (make-title :name pname)))

      (index/title pname title)
      title )))  |#


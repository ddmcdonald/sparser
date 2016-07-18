;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER LISP) -*-
;;; copyright (c) 1991,1992,1993,1994 David D. McDonald  -- all rights reserved
;;; $Id$
;;;
;;;     File:  "loader"
;;;   Module:  "objects;model:kraql:"
;;;  version:  August 2015

(in-package :sparser)

;;;---------------------------------------------------------------------------
;;; This function from Peter Norvig's text...
;;; copyright (c) 1991 Peter Norvig
;;;---------------------------------------------------------------------------
(defun find-all (item sequence &rest keyword-args
                 &key (test #'eql) test-not &allow-other-keys)
  "Find all those elements of sequence that match item,
  according to the keywords.  Doesn't alter sequence."
  (if test-not
      (apply #'remove item sequence
             :test-not (complement test-not) keyword-args)
      (apply #'remove item sequence
             :test (complement test) keyword-args)))

#| 
duplicated below 
;; a useful equality check.
(defun set-equal (list-1 list-2 &key (key #'identity) (test #'eql))
  "Returns t, when list-1 and list-2 contain the same elements."
  (null (set-exclusive-or list-1 list-2 :key key :test test)))
|#

;;;---------------------------------------------------------------------------
;;; Cache functionality
;;;---------------------------------------------------------------------------

;; Define the cache.
(defvar *kraql-cache* nil)
(setf *kraql-cache* (make-hash-table :test #'equal))

(defun clear-kraql-cache ()
  (clrhash *kraql-cache*))

(defun check-kraql-cache (rule-form initial-blists)
  (gethash (list rule-form initial-blists) *kraql-cache*))

(defun write-kraql-cache (rule-form initial-blists resulting-blists)
  ;;(format t "Writing cache for:~%  ~S~%  ~S~%  = ~S~%" rule-form initial-blists resulting-blists)
  (setf (gethash (list rule-form initial-blists) *kraql-cache*)
    (or resulting-blists :empty)))

;;;---------------------------------------------------------------------------
;;; Rules to use.
;;;---------------------------------------------------------------------------


(defvar *kraql-rules* '())


;;;---------------------------------------------------------------------------
;;; Individuals-to-use
;;;---------------------------------------------------------------------------

(defvar *kraql-indivs* '())

;;;---------------------------------------------------------------------------
;;; Rule handling.
;;;---------------------------------------------------------------------------

(defun attend-to-rule (rule &key initial-blists (remove-dupes t) (use-cache t))
  ;;(format t "Doing rule: ~A~%" rule)
  (unless initial-blists
    (setf initial-blists :init))
  (let* ((body (get-body rule))
         (head (get-head rule))
         (action (get-action rule))
         (cached-answer (when (and head use-cache)
                          (check-kraql-cache rule initial-blists)))
         (blists (or cached-answer
                     (attend-to-body body :blists (if (consp initial-blists)
                                                      (copy-list initial-blists)
                                                    initial-blists)))))
    (when (eq blists :empty)
      (setf blists nil))
    ;;(when cached-answer
    ;;  (format t "Using cached answer.~%"))
    (dolist (blist blists)
      (attend-to-action action blist))
    (cond
     (head
      (when (and use-cache (not cached-answer))
        (write-kraql-cache rule initial-blists blists))
      (remove-duplicates
       (mapcar #'(lambda (blist)
                   (sub-stmt head blist))
               blists)
       :test #'equal))  ;; <<<<<<<<<<< ================== THIS IS THE CHANGE THAT AVOIDS THE STACK OVERFLOW
     ((and (null action) remove-dupes)
      (remove-duplicates blists :test 'equal))
     (t
      blists))))

(defun get-body (rule) (second (member :body rule)))
(defun get-head (rule) (second (member :head rule)))
(defun get-action (rule) (second (member :action rule)))

(defun var-p (form)
  (when (symbolp form)
    (let ((str (symbol-name form)))
      (and (> (length str) 1)
           (eql (elt str 0) #\?)))))

(defun attend-to-body (body &key (blists :init))
  "Searches for and returns binding lists that satisfy this body"
  (dolist (stmt body)
    (when blists
      (setf blists (attend-to-body-stmt stmt blists))))
  blists)

(defun single-var-blists (var vals)
  (mapcar #'(lambda (i) (list (cons var i))) vals))

(defun get-bound-vars (blists)
  (when (consp blists)
    (mapcar #'car (car blists))))

(defun make-kraql-call (sym rule-portion)
 (intern (string-upcase (format nil "KRAQL-~A-~A" rule-portion sym)) :sparser))

(defun make-kraql-body-call (sym)
  (make-kraql-call sym 'body))

(defun make-kraql-action-call (sym)
  (make-kraql-call sym 'action))

;;;---------------------------------------------------------------------------
;;; Body handling.
;;;---------------------------------------------------------------------------


(defun attend-to-body-stmt (stmt blists)
  (cond
   ((find-rules-by-head-pred (first stmt))
    (let* ((rel-rules (find-rules-by-head-pred (first stmt)))
           (rules-to-run (remove-if-not #'(lambda (r) (= (length (get-head r)) (length stmt))) rel-rules))
           (vars (remove-if-not #'var-p stmt))
           (result-heads (remove-duplicates
                          (mapcan
                           #'(lambda (r)
                               (run-inner-rule-over-blists r stmt blists))
                           rules-to-run)
                          :test #'equal)))
      ;; now use the resulting heads to constrain the blists.
      (let ((sub-blists (remove-duplicates
                         (mapcar #'(lambda (head)
                                     (remove
                                      nil
                                      (mapcar #'(lambda (var)
                                                  (let* ((index (position var stmt))
                                                         (val (nth index head)))
                                                    (unless (var-p val)
                                                      (cons var (nth index head)))))
                                              vars)))
                                 result-heads)
                         :test #'set-equal)))
        (setf blists
          (constrain-blists blists sub-blists)))))
   ((and (keywordp (first stmt))
         (fboundp (make-kraql-body-call (first stmt))))
    (setf blists (apply (make-kraql-body-call (car stmt)) (list stmt blists))))
   ((and (= (length stmt) 3)
         (not (keywordp (first stmt))))
    (setf blists (kraql-body-slot-val stmt blists)))
   (t
    (error "Undefined body stmt: ~A" stmt)))
  blists)

(defun run-inner-rule-over-blists (rule rule-request blists)
  ;; We eval each rule exactly once for each binding, leaning on the cache.
  (unless (consp blists)
    (setf blists (list nil)))
  (let* ((vars (remove-if-not #'var-p rule-request))
         (head (get-head rule))
         (trans-blist (mapcar #'cons (cdr head) (cdr rule-request))))
    (mapcan
     #'(lambda (blist)
         ;; Construct the initial-blist for the rule.
         ;; The cdrs should contain ground elements only,
         ;; otherwise there should be no binding.
         (let* ((all-bound-vars (mapcar #'car blist))
                (bound-vars (intersection vars all-bound-vars))
                (sub-blist (car (sub-blists (list blist) bound-vars)))
                (r-blist (remove nil
                                (mapcar
                                 #'(lambda (binding)
                                     (let* ((stmt-val (cdr binding))
                                            (bound-val (cdr (assoc stmt-val sub-blist))))
                                       (cond (bound-val
                                              (cons (car binding) bound-val))
                                             ((not (var-p stmt-val))
                                              (cons (car binding) stmt-val))
                                             (t
                                              nil))))
                                 trans-blist))))
           (attend-to-rule rule :initial-blists (list r-blist))))
     blists)))

(defun run-inner-rule-over-blists-bak (rule rule-request blists)
  ;; We eval each rule exactly once for each unique binding.
  (unless (consp blists)
    (setf blists (list nil)))
  (let* ((all-bound-vars (mapcar #'car (car blists)))
         (vars (remove-if-not #'var-p rule-request))
         (bound-vars (intersection vars all-bound-vars))
         (sub-blists (sub-blists blists bound-vars))
         (head (get-head rule))
         (trans-blist (mapcar #'cons (cdr head) (cdr rule-request))))
    (mapcan
     #'(lambda (blist)
         ;; Construct the initial-blist for the rule.
         ;; The cdrs should contain ground elements only,
         ;; otherwise there should be no binding.
         (let ((r-blist (remove nil
                                (mapcar
                                 #'(lambda (binding)
                                     (let* ((stmt-val (cdr binding))
                                            (bound-val (cdr (assoc stmt-val blist))))
                                       (cond (bound-val
                                              (cons (car binding) bound-val))
                                             ((not (var-p stmt-val))
                                              (cons (car binding) stmt-val))
                                             (t
                                              nil))))
                                 trans-blist))))
           (attend-to-rule rule :initial-blists (list r-blist))))
     sub-blists)))

(defun sub-blists (blists vars)
  (remove-duplicates
   (mapcar #'(lambda (blist)
               (remove-if-not #'(lambda (b)
                                  (member (car b) vars))
                              blist))
           blists)))

(defun find-rules-by-head-pred (pred &key include-actions)
  (let ((rules (find-all pred *kraql-rules* :key #'get-rule-pred)))
    (cond (include-actions
           rules)
          (t
           (remove-if #'get-action rules)))))

(defun get-rule-pred (rule)
  (car (get-head rule)))

(defun bindings-by-var-name (bindings var)
  (remove-if-not
     #'(lambda (binding)
         (eq var (var-name (binding-variable binding))))
     bindings))

(defun bindings-by-var-names (bindings vars)
  (remove-if-not
   #'(lambda (binding)
       (find (var-name (binding-variable binding)) vars))
   bindings))

(defun slot-bindings-by-name (indiv slotname)
  (let ((bindings (indiv-binds indiv)))
    (bindings-by-var-name bindings slotname)))

(defun slot-bindings-by-names (indiv slotnames)
  (let ((bindings (indiv-binds indiv)))
    (bindings-by-var-names bindings slotnames)))

(defun slot-bound-in-by-name (indiv slotname)
  (let ((bindings (indiv-bound-in indiv)))
    (bindings-by-var-name bindings slotname)))

(defun kraql-indivs ()
  (collect-kraql-indivs-if
   #'(lambda (val)
       (declare (ignore val))
       t)))


(defun bound-p (var blists)
  (and (listp blists)
       (assoc var (car blists))))

(defun subset-p (little-set big-set &key (test #'equal))
  (null (set-difference little-set big-set :test test)))

(defun constrain-blists (blists constraint-blists)
  ;; constraint-blists contain all acceptable bindings for (optional) blists.
  (let* ((bound-vars (when (consp blists)
                       (mapcar #'car (car blists))))
         (constrained-vars (mapcar #'car (car constraint-blists)))
         (intersecting-vars (intersection bound-vars constrained-vars)))
    (cond
     ((eq blists :init)                 ; It's new.  Return the constrainers as the blists.
      constraint-blists)
     (intersecting-vars                 ; Intersection: return the constrained/extended blists.
      (mapcan #'(lambda (blist)
                  ;; find all constrainers that share bindings with this one.
                  (let* ((my-vals (mapcar #'(lambda (var) (assoc var blist)) intersecting-vars))
                         (my-supporters (remove-if-not #'(lambda (supporter)
                                                           (subset-p my-vals supporter))
                                                       constraint-blists)))
                    (mapcar #'(lambda (supporter)
                                (let ((extension (set-difference supporter my-vals :test #'equal)))
                                  (append blist extension)))
                            my-supporters)))
              blists))
     (t                                 ; no intersection; return the cartesian product.
      (mapcan #'(lambda (blist)
                  (mapcar #'(lambda (constraint-blist)
                              (append blist constraint-blist))
                          constraint-blists))
              blists)))))

(defun attend-to-action (action blist)
  (dolist (stmt action)
    (attend-to-action-stmt stmt blist)))

(defun sub-stmt (stmt blist)
  (cond
   ((listp stmt)
    (sublis blist (copy-list stmt) :test #'equal))
   (t
    (car (sublis blist (list stmt) :test #'equal)))))


(defun attend-to-action-stmt (stmt blist)
  (let ((ground-stmt (sub-stmt stmt blist)))
    (cond
     ((and (keywordp (first stmt))
           (fboundp (make-kraql-action-call (first stmt))))
      (apply (make-kraql-action-call (first stmt)) (list ground-stmt)))
     ((and (= (length stmt) 3)
           (not (keywordp (car stmt))))
      (kraql-action-add-slot ground-stmt))
     (t
      (format t "action stmt unclear: ~s" ground-stmt)))))



;; ---------------------------------------------
;; All the KRAQL body statements to support the above.
;; ---------------------------------------------

(defun all-individual-categories (individual)
  ;; Can't use mapcan here, since it'll destroy Sparser subcat lattice!
  (when (individual-p individual)
    (remove-duplicates
     (apply #'append
            (mapcar #'(lambda (c)
                        (super-categories-of c))
                    (indiv-type individual))))))

(defun immediate-individual-categories (individual)
  (when (individual-p individual)
    (let ((itype (indiv-type individual)))
      (if (listp itype) itype (list itype)))))

(defun body-isa-helper (stmt blists cat-fn)
  (let* ((bound-vars (get-bound-vars blists))
         (var (second stmt))
         (cat-names (if (symbolp (third stmt)) (list (third stmt)) (third stmt)))
         (cats (mapcar #'resolve-symbol-to-category/check cat-names)))
    (cond
     ((member var bound-vars)
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let* ((b-indiv (cdr (assoc var blist))))
               (intersection cats (apply cat-fn (list b-indiv)))))
         blists)))
     (t
      (let* ((fn #'(lambda (val) (intersection cats (apply cat-fn (list val)))))
             (my-blists nil))
        (cond
         ((and (eq (fourth stmt) :sent)
               (var-p var)
               (var-p (fifth stmt)))
          (setf my-blists
            (mapcar #'(lambda (elt)
                        (list (cons var (car elt))
                              (cons (fifth stmt) (cdr elt))))
                    (collect-parsed-indivs-if fn :keep-sentence t))))
         ((and (eq (fourth stmt) :sent)
               (var-p (fifth stmt)))
          (setf my-blists
            (mapcar #'(lambda (elt)
                        (list (cons var (car elt))
                              (cons (fifth stmt) (cdr elt))))
                    (collect-parsed-indivs-if #'(lambda (val) (eq val var)) :keep-sentence t))))
         ((eq (fourth stmt) :sent)
          (setf my-blists
            (single-var-blists var (collect-parsed-indivs-if fn))))
         ((eq (fourth stmt) :tts)
          (setf my-blists
            (single-var-blists var (collect-tts-indivs-if fn))))
         (t
          (setf my-blists
            (single-var-blists var (collect-kraql-indivs-if fn)))))
        (setf blists (constrain-blists blists my-blists)))))
    blists))

(defun kraql-body-article (stmt blists)
  (let* ((bound-vars (get-bound-vars blists))
         (sent-form (second stmt))
         (article-form (third stmt)))
    (cond ((and (var-p sent-form)
                (not (find sent-form bound-vars)))
           ;;(error "Sentence is unbound, cannot find in article.")
           ;; Just bind it to nil for now.
           (setf blists
             (constrain-blists blists (single-var-blists article-form (list :unknown))))
           )
          ((var-p article-form)
           ;; Bind the article form to the article obj.
           (setf blists
             (apply #'append
                    (mapcar
                     #'(lambda (blist)
                         (let* ((sent-obj (if (var-p sent-form)
                                            (cdr (assoc sent-form blist :test #'equal))
                                            sent-form))
                                (article-obj (third sent-obj)))
                           (constrain-blists
                            (list blist)
                            (single-var-blists article-form (list article-obj)))))
                     blists))))
          (t
           ;; Filter blists by article.
           (setf blists
             (delete-if-not
              #'(lambda (blist)
                  (let* ((sent-obj (if (var-p sent-form)
                                       (cdr (assoc sent-form blist :test #'equal))
                                     sent-form))
                         (article-obj (third sent-obj)))
                    (eq article-obj article-form)))
              blists))))
    blists))

(defun kraql-body-protein-name (stmt blists)
  (let* ((bound-vars (get-bound-vars blists))
         (prot-form (second stmt))
         (name-form (third stmt)))
    (cond ((and (var-p prot-form)
                (not (find prot-form bound-vars)))
           (error "Protein is unbound, cannot find by name."))
          ((var-p name-form)
           ;; Bind the name form to the name.
           (setf blists
             (apply #'append
                    (mapcar
                     #'(lambda (blist)
                         (let* ((prot-obj (if (var-p prot-form)
                                            (cdr (assoc prot-form blist))
                                            prot-form))
                                (name-str (prot-name prot-obj)))
                           (constrain-blists
                            (list blist)
                            (single-var-blists name-form (list name-str)))))
                     blists))))
          (t
           ;; Filter blists by article.
           (setf blists
             (delete-if-not
              (lambda (blist)
                (let* ((prot-obj (if (var-p prot-form)
                                     (cdr (assoc prot-form blist))
                                   prot-form))
                       (name-str (prot-name prot-obj)))
                  (equalp name-str name-form)))
              blists))))
    blists))

(defun get-stmt-vars (stmt)
  (remove-if-not #'var-p stmt))

(defun nullify-vars (stmt)
  (subst-if nil #'var-p stmt))

(defun prune-blist (blist vars-to-keep)
  (remove-if-not #'(lambda (b) (find (car b) vars-to-keep)) blist))

(defun kraql-body-bound (stmt blists)
  (let* ((var (second stmt)))
    (when (consp blists)
      (delete-if-not
       #'(lambda (blist)
           (blist-val var blist))
       blists))))

;; [sfriedman:20150503.2101CST] This is not very efficient at present.
(defun kraql-body-not (stmt blists)
  ;;(format t "Doing :not - ~A~%" stmt)
  (let* (;;(bound-vars (get-bound-vars blists))
         (sub-stmt (second stmt))
         (sub-vars (get-stmt-vars sub-stmt)))
    (delete-if
     #'(lambda (blist)
         (let ((rel-blist (prune-blist blist sub-vars)))
           (attend-to-body-stmt sub-stmt (list rel-blist))))
     blists)))

;; (:aggregate ?ans (the-form) (the-query))
(defun kraql-body-aggregate (stmt blists)
  ;;(format t "Doing aggregate ~A~%" stmt)
  (let* ((var-form (second stmt))
         (ans-form (third stmt))
         (ans-vars (get-stmt-vars ans-form))
         (query-form (fourth stmt))
         (query-vars (get-stmt-vars query-form))
         (rel-vars (union ans-vars query-vars)))
    (unless (listp blists)
      (setf blists '(nil)))
    (apply #'append
           (mapcar
            #'(lambda (blist)
                (let* ((rel-blist (prune-blist blist rel-vars))
                       (results (attend-to-body-stmt query-form (list rel-blist)))
                       (subd (remove-duplicates
                              (nullify-vars
                               (mapcar #'(lambda (r) (sub-stmt ans-form r)) results))
                              :test #'equal)))
                  (constrain-blists
                   (list blist)
                   (single-var-blists var-form (list subd)))))
            blists))))

(defun kraql-body-isa-local (stmt blists)
  (body-isa-helper stmt blists #'immediate-individual-categories))

(defun kraql-body-isa (stmt blists)
  (body-isa-helper stmt blists #'all-individual-categories))

(defun kraql-body-different (stmt blists)
  (let* ((terms (cdr stmt))
         (n-terms (length terms)))
    (delete-if-not
     #'(lambda (blist)
         (let* ((subd-terms (sub-stmt terms blist))
                (pruned-terms (remove-duplicates subd-terms :test #'equal)))
           (= n-terms (length pruned-terms))))
     blists)))

(defun kraql-body-set (stmt blists)
  (let* ((dest (second stmt))
         (source (third stmt)))
    (unless (var-p dest)
      (error "~A must be a variable to set it." dest))
    (apply #'append
           (mapcar
            #'(lambda (blist)
                (let ((subd (sub-stmt source blist)))
                  (constrain-blists (list blist) (single-var-blists dest (list subd)))))
            blists))))

(defun kraql-body-same (stmt blists)
  (let* ((terms (cdr stmt))
         (var-terms (remove-if-not #'var-p terms))
         (ground-terms (remove-if #'var-p terms))
         (unbound-terms (remove-if #'(lambda (term) (bound-p term blists)) var-terms))
         (bound-terms (set-difference var-terms unbound-terms :test #'equalp)))
    (cond
     ((null bound-terms)
      (setf blists
        (constrain-blists blists (list (mapcar #'(lambda (var)
                                                   (cons var (car ground-terms)))
                                               var-terms)))))
     (t
      (setf blists
        (delete-if
         #'(lambda (blist)
             (let ((subd-terms (sub-stmt terms blist)))
               (cdr (remove-duplicates subd-terms :test #'equal))))
         blists))))
    blists))

(defun kraql-body-merge (stmt blists)
  (let ((terms (cdr stmt)))
    (remove-duplicates
     blists
     :test #'set-equal
     :key #'(lambda (blist)
              (mapcar #'(lambda (term)
                          (cdr (assoc term blist)))
                      terms)))))

(defun kraql-body-try (stmt blists)
  (let* ((clauses (cdr stmt))
         (newbody (list :body clauses)))
    (mapcan #'(lambda (blist)
                (or (attend-to-rule newbody :initial-blists (list (copy-list blist)))
                    (list blist)))
            blists)))


(defun kraql-body-slot-val (stmt blists)
  (when (eql (first stmt) :slot-val)
    (setf stmt (cdr stmt)))
  (let ((bound-vars (get-bound-vars blists))
        (slotname (first stmt))
        (indiv (second stmt))
        (slot-val (third stmt)))
    (cond
     ((and (var-p indiv) (var-p slot-val)
           (member indiv bound-vars) (not (member slot-val bound-vars)))
      ;; Lookup the slot.
      (setf blists
        (apply #'append
               (mapcar
                #'(lambda (blist)
                    (let* ((b-indiv (blist-val indiv blist))
                           (slot-bindings (slot-bindings-by-name b-indiv slotname)))
                      (constrain-blists (list blist) (single-var-blists slot-val (mapcar #'binding-value slot-bindings)))))
                blists))))
     ((and (var-p indiv) (var-p slot-val) (member indiv bound-vars) (member slot-val bound-vars))
      ;; Constrain our blist by this slot val.
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let* ((b-indiv (blist-val indiv blist))
                    (b-slot (blist-val slot-val blist))
                    (slot-bindings (slot-bindings-by-name b-indiv slotname)))
               (member b-slot (mapcar #'binding-value slot-bindings) :test #'equal)))
         blists)))
     ((and (var-p indiv) (var-p slot-val)
           (not (member indiv bound-vars)) (member slot-val bound-vars)
           (every #'individual-p (all-bindings slot-val blists)))
      ;; Lookup the unbound individual by the individual in the slot, using bound-in.
      (setf blists
        (apply #'append
               (mapcar
                #'(lambda (blist)
                    (let* ((b-slot-val (blist-val slot-val blist))
                           (slot-bindings (slot-bound-in-by-name b-slot-val slotname)))
                      (constrain-blists (list blist) (single-var-blists indiv (mapcar #'binding-body slot-bindings)))))
                blists)))
      )
     ((and (var-p indiv) (var-p slot-val)
           (not (member indiv bound-vars)) (member slot-val bound-vars))
      ;; Lookup the individual by the slot, using bound-in.
      (error "Not supported: lookup individual by non-individual slot-val.")
      )
     ((and (var-p indiv) (member indiv bound-vars)
           (not (var-p slot-val)))
      ;; Check equality of the slot to the given slot-val.
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let* ((b-indiv (blist-val indiv blist))
                    (slot-bindings (slot-bindings-by-name b-indiv slotname))
                    (slot-vals (mapcar #'binding-value slot-bindings)))
               (member slot-val slot-vals :test #'equalp)))
         blists)))
     (t
      (error "Unsupported slot-val operation ~s" stmt)
      ))
    blists))

(defun set-equal (list-1 list-2 &key (key #'identity) (test #'eql))
  "Returns t, when list-1 and list-2 contain the same elements."
  (null (set-exclusive-or list-1 list-2 :key key :test test)))

(defun kraql-body-slot-vals (stmt blists)
  (let ((bound-vars (get-bound-vars blists))
        (slot-names (if (consp (second stmt)) (second stmt) (list (second stmt))))
        (indiv (third stmt))
        (vals (fourth stmt)))
    (cond
     ((or (null slot-names) (var-p (car slot-names)) (not (find indiv bound-vars)))
      ;; punt
      (error "Not supported: slot-vals on unbound individual or unbound slot-name."))
     ((and (var-p vals) (not (find vals bound-vars)))
      ;; Look up the binding vals.
      (setf blists
        (apply #'append
               (mapcar
                #'(lambda (blist)
                    (let* ((b-indiv (blist-val indiv blist))
                           (my-vals (remove-duplicates
                                     (mapcar #'binding-value (slot-bindings-by-names b-indiv slot-names)))))
                      (constrain-blists (list blist) (single-var-blists vals (list my-vals)))))
                blists))))
     ((var-p vals)
      ;; Prune blists that aren't eql to the blist's vals.
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let* ((b-indiv (blist-val indiv blist))
                    (b-vals (blist-val vals blist))
                    (my-vals (remove-duplicates
                              (mapcar #'binding-value (slot-bindings-by-names b-indiv slot-names)))))
               (set-equal my-vals b-vals)))
         blists)))
     (t
      ;; Prune blists that aren't in the ground vals.
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let* ((b-indiv (blist-val indiv blist))
                    (my-vals (remove-duplicates
                              (mapcar #'binding-value (slot-bindings-by-names b-indiv slot-names)))))
               (set-equal my-vals vals)))
         blists))
      ))
    blists))

(defun kraql-body-slot-nbr (stmt blists)
  (let ((bound-vars (get-bound-vars blists))
        (slotname (second stmt))
        (indiv (third stmt))
        (slot-nbr (fourth stmt)))
    (cond
     ((and (var-p indiv) (numberp slot-nbr) (member indiv bound-vars))
      ;; Ensure the nbr.
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let* ((b-indiv (blist-val indiv blist))
                    (nbr-slot-bindings (length (slot-bindings-by-name b-indiv slotname))))
               (= nbr-slot-bindings slot-nbr)))
         blists)))
     (t
      ;; punt
      (error "Not supported: slot-nbr on unbound individual or unbound nbr.")
      ))
    blists))

(defun all-bindings (var blists)
  (remove-duplicates
   (mapcar #'(lambda (blist)
               (blist-val var blist))
           blists)
   :test #'equal))

;; Note: returns it as a string right now.
(defun kraql-body-bp-id (stmt blists)
  (let ((bound-vars (get-bound-vars blists))
        (ent (second stmt))
        (name (third stmt)))
    (cond
     ((and (var-p name)
           (var-p ent)
           (member ent bound-vars))
      ;; Lookup the name.
      (let* ((ent-fillers (all-bindings ent blists))
             (constraining-blists (mapcar #'(lambda (filler)
                                              (list (cons ent filler)
                                                    (cons name (bp-id-of-individual filler))))
                                          ent-fillers)))
        (setf blists (constrain-blists blists constraining-blists))))
     (t
      (error "bp-id only supports looking up names right now.")))))

(defun collection-items (indiv)
  (when (collection-p indiv)
    (value-of 'items indiv)))
    

(defun kraql-body-item (stmt blists)
  "Select item(s) from a collection if it's a collection, otherwise bind to itself"
  (let ((bound-vars (get-bound-vars blists))
        (coll-form (second stmt))
        (item-form (third stmt)))
    (cond
     ((and (or (not (var-p item-form)) (find item-form bound-vars))
           (or (not (var-p coll-form)) (find coll-form bound-vars)))
      ;; Delete blists if the item is not in the collection.
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let ((coll (if (var-p coll-form) (blist-val coll-form blist) coll-form))
                   (item (if (var-p item-form) (blist-val item-form blist) item-form)))
             (cond
              ((collection-p coll)
               (find item (collection-items coll)))
              (t
               (equal coll item)))))
         blists)))
     ((and (var-p item-form) (not (find item-form bound-vars))
           (or (not (var-p coll-form)) (find coll-form bound-vars)))
      ;; Lookup.
      (setf blists
        (apply #'append
               (mapcar
                #'(lambda (blist)
                    (let* ((coll (if (var-p coll-form) (blist-val coll-form blist) coll-form))
                           (items (if (collection-p coll) (collection-items coll) (list coll))))
                      (constrain-blists (list blist) (single-var-blists item-form items))))
                blists))))
     (t
      (error "Unsupported collection lookup.")))
    blists))

;; Either:
;; (:search-partial <slot-name> ?var <string>)
;; (:search-partial (<slot-name> <slot-name> ...) ?var <string>)
(defun kraql-body-search-partial (stmt blists)
  (kraql-search-helper stmt blists t))

(defun kraql-body-search-exact (stmt blists)
  (kraql-search-helper stmt blists nil))

(defun kraql-search-helper (stmt blists &optional (partial t) &aux indivs)
  (let* ((slot-names (if (consp (second stmt))
                         (second stmt)
                       (list (second stmt))))
         (ent (third stmt))
         (search-term (fourth stmt))
         (fn #'(lambda (val)
                 (let ((b-vals (remove-if-not
                                #'stringp
                                (mapcar #'binding-value
                                        (remove-if-not
                                         #'(lambda (b)
                                             (member (var-name (binding-variable b)) slot-names))
                                         (indiv-binds val))))))
                   (some #'(lambda (b-val)
                             (if partial
                                 (search search-term b-val :test #'char-equal)
                               (equalp search-term b-val)))
                         b-vals)))))
    (cond
     ((and (var-p ent) (not (bound-p ent blists)))
      (setf indivs (collect-kraql-indivs-if fn))
      (constrain-blists blists (single-var-blists ent indivs)))
     ((and (var-p ent) (bound-p ent blists))
      (setf blists
        (delete-if-not
         #'(lambda (blist)
             (let ((val (blist-val ent blist)))
               (funcall fn val)))
         blists))
      blists))))

(defun collect-kraql-indivs-if (pred &aux ents)
  (maphash #'(lambda (key val)
               (declare (ignore key))
               (when (funcall pred val)
                 (push val ents)))
           *kraql-indivs*)
  ents)

(defun collect-sentences-if (pred)
  (declare (special *all-sentences*))
  (loop for s in *all-sentences*
      when (funcall pred s)
      collect s))

(defun collect-sentences-mentioning-individual (individual)
  (collect-sentences-if
   #'(lambda (s)
       (find individual (second s)))))

(defun collect-sentences-mentioning-category (cat-symbol)
  (collect-sentences-if
   #'(lambda (s)
       (some #'(lambda (e)
                 (itypep e cat-symbol))
             (second s)))))

(defun collect-parsed-indivs-if (pred &key keep-sentence &aux ans)
  (declare (special *all-sentences*))
  (dolist (s *all-sentences*)
    (dolist (e (second s))
      (when (funcall pred e)
        (cond
         (keep-sentence
          (push (cons e s) ans))
         (t
          (push e ans))))))
  ans)

(defun collect-tts-indivs-if (pred &aux ans)
  (multiple-value-bind (semtree-indivs semtree-cats semtree-bindings)
      (semtree-data)
    (declare (ignore semtree-cats semtree-bindings))
    (dolist (e semtree-indivs)
      (when (funcall pred e)
        (push e ans)))
    ans))

;; ---------------------------------------------
;; TTS accessors.
;; ---------------------------------------------


(defun get-all-semtrees ()
  (remove nil (mapcar #'(lambda (e)
                          (when (sparser::edge-p e)
                            (sparser::semtree e)))
                      (get-treetops))))

(defun get-treetops ()
  (let ((prev-sent (sparser::previous (sparser::sentence))))
    (sparser::all-tts
     (sparser::starts-at-pos prev-sent)
     (sparser::ends-at-pos prev-sent))))

(defun semtree-nodes (semtree)
  (when (consp semtree)
    (let* ((elts (cons (car semtree) (remove-if #'consp (cdr semtree))))
           (relns (remove-if-not #'consp (cdr semtree)))
           (members (second (find :members relns :key #'car)))
           (subtrees (mapcar #'second (remove :members relns :key #'car))))
      (remove nil (remove-duplicates (append elts (mapcan #'semtree-nodes (append members subtrees))))))))

  (defun semtree-data ()
  (let* ((semtrees (get-all-semtrees))
         (semtree-nodes (remove-duplicates (mapcan #'semtree-nodes semtrees)))
         (semtree-indivs (remove-if-not #'sparser::individual-p semtree-nodes))
         (semtree-cats (remove-if-not #'sparser::category-p semtree-nodes))
         (semtree-bindings (remove-duplicates
                            (apply #'append (mapcar #'sparser::indiv-binds semtree-indivs)))))
    (values semtree-indivs
            semtree-cats
            semtree-bindings)))

;; ---------------------------------------------
;; All the KRAQL action statements to support the above.
;; ---------------------------------------------

(defun kraql-action-eval (stmt)
  (eval (second stmt)))

(defun kraql-action-isa (stmt)
  (let* ((ent (second stmt))
         (cat-name (third stmt))
         (cat (resolve-symbol-to-category/check cat-name)))
    (change-itype ent cat)))

(defun kraql-action-add-slot (stmt)
  (when (eql (car stmt) :add-slot)
    (setf stmt (cdr stmt)))
  (let* ((slot-name (first stmt))
         (ent (second stmt))
         (val (third stmt)))
    (old-bind-variable slot-name val ent)))


(defun kraql-action-isa-specialize (stmt)
  (let* ((ent (second stmt))
         (cat-name (third stmt))
         (cat (resolve-symbol-to-category/check cat-name)))
    (specialize-itype ent cat)))

(defun kraql-action-remove-slot (stmt)
  (let* ((slot-name (second stmt))
         (ent (third stmt))
         (val (fourth stmt))
         (named-bindings (slot-bindings-by-name ent slot-name))
         (my-binding (find val named-bindings :key #'binding-value)))
    (cond
     (my-binding
      (remove-binding-from-individual my-binding ent))
     (t
      (warn "Could not find/remove binding (~A ~A ~A)" slot-name ent val)))))

;; ---------------------------------------------
;; Methods to support entity retrieval.
;; ---------------------------------------------

(defun kraql-retrieve-individuals (clauses &aux blists)
  ;; First find the retrieval cue.
  (cond ((and (consp clauses)
              (consp (first clauses)))
         (let* ((ret-clause (first clauses))
                (cmd (first ret-clause))
                (indiv-var
                 (cond
                  ((member cmd '(:isa :isa-local))
                   (second ret-clause))
                  ((member cmd '(:search-exact :search-partial))
                   (third ret-clause)))))
           (cond
            (indiv-var
             ;; Track the individual.
             (setf blists (attend-to-rule (list :body clauses) :remove-dupes nil))
             ;; Return all bindings of the designated individual.
             (values
              (all-bindings indiv-var blists)
              blists))
            (t
             (error "Unable to formulate command ~A as retrieval." cmd)))))
        (t
         (error "Unable to formulate ~A as an individual retrieval." clauses))))


;;;EXAMPLE:
;;;(kraql-filter phosphorylation-objs '?phos
;;;              '((:isa ?phos phosphorylate)
;;;                (:try
;;;                 (substrate ?phos ?aa)
;;;                 (:isa ?aa amino-acid))
;;;                (:try
;;;                 (substrate ?phos ?prot)
;;;                 (:isa ?prot protein))
;;;                (:try
;;;                 (substrate ?phos ?res)
;;;                 (:isa ?res residue-on-protein)
;;;                 (:try (position ?res ?site))
;;;                 (:try (amino-acid ?res ?aa))
;;;                 (:try (on-protein ?res ?prot)))))

(defun kraql-filter (individuals var clauses &aux ans-indivs ans-blists)
  (dolist (i individuals)
    (let ((blists (attend-to-rule
                   `(:body ,clauses) :initial-blists (list (list (cons var i))))))
      (when blists
        (pushnew i ans-indivs)
        (dolist (blist blists)
          (push blist ans-blists)))))
  (values ans-indivs ans-blists))

(defun select-if (pred blists)
  (remove-if-not pred blists))

(defun select-if-bound (var blists)
  (remove-if-not #'(lambda (blist) (assoc var blist)) blists))

(defun select-if-any-bound (vars blists)
  (remove-if-not #'(lambda (blist)
                     (some #'(lambda (var)
                               (assoc var blist))
                           vars))
                 blists))

(defun select-if-none-bound (vars blists)
  (remove-if-not #'(lambda (blist)
                     (every #'(lambda (var)
                                (null (assoc var blist)))
                            vars))
                 blists))

(defun blist-val (var blist)
;;  (cdr (assoc var blist)))
  (let ((val (cdr (assoc var blist))))
    (if (var-p val) nil val)))


(defun lookup (var blists)
  (remove-duplicates
   (remove nil
    (mapcar #'(lambda (blist) (blist-val var blist)) blists))))

(defun lookup-all (vars blists)
  (remove-duplicates
   (remove nil
           (mapcar #'(lambda (blist)
                       (mapcar #'(lambda (var)
                                   (blist-val var blist))
                               vars))
                   blists))
   :test #'equal))

(defun kraql-run (rule)
  (attend-to-rule rule))

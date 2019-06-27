;;;---------------------------------------------------------------------------
;;; Copyright (c) 2015-2018 Smart Information Flow Technologies
;;;
#||
This code ingests VerbNet XML files, assembles an intermediate 
representation, and originally would convert forms in that representation
into ECIs.

Now, however, we ingest the XML and stop with the sexp's of the intermediate
representations, which we write to a single file as a calls to a macro that
will reconstitute those forms when we load the file.

To make the out-file of executable forms, write-out-def-verb-forms reads the
XML from *vn-path* (see vn-dir) and writes the file of forms to *defverb-out-path*.


||#

(in-package :sparser)

(ql:quickload "split-sequence")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(load "~/projects/cwc-integ/clic/ecipedia/wordnet-integration.lisp")
(load-wn)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; just in case
(defpackage "ONT")
(defpackage "VN")


;;; (convert-verbnet-files :filetype :lisp)  
;;; (convert-verbnet-files :filetype :json)
       ;; (&key (dirname *vn-path*) (filetype :lisp))

                      
(defvar *forms* nil)
(defvar *vn-classes* nil "Accumulated name symbols to iterate over")
(declaim (special *propvals*))
(defparameter *dbg* nil)

(defparameter *verbnet-classes* nil
  "holds result of parsing a file")

(defparameter *verbnet-verbs* nil
"holds all members of all classes")


(defvar *simple-dressing*
  (asdf::system-relative-pathname :spire "data/simple_dressing-41.3.1.xml"))

(defvar *spray97*
  (asdf::system-relative-pathname :spire "data/spray-9.7.xml"))


;;---  file system globals, computing pathnames

(defparameter *defverb-out-path*
  (asdf::system-relative-pathname :sparser "Sparser/code/s/grammar/rules/words/one-offs/verbnet/vn-classes.lisp"))

(defparameter *definstance-out-path*
  (asdf:system-relative-pathname :sparser "Sparser/code/s/grammar/rules/words/one-offs/verbnet/vn-instances.lisp"))

(defparameter *mixins-out-path*
  (asdf:system-relative-pathname :sparser "Sparser/code/s/grammar/rules/words/one-offs/verbnet/vn-mixins.lisp"))

(defparameter *vn-path* (asdf::system-relative-pathname :clic "verbnet-master/vn-gl/"))
(defparameter *vn-version* "verbnet-3.3-modified")
;;(defparameter *vn-eci-path* (asdf::system-relative-pathname :eci "./VN-ECI-defs/"))

#| The 'version' arguments here presume a layered directory structure where we have
multiple instances of VerbNet (3.1, 3.2, ...) stored under a common verbnet directory.
Presently (7/10/18) we have a single level, so the *vn-path* variable is the
root of all of the individual VerbNet xml files. |#

(defun vn-file (name &key (type "xml") (path *vn-path*) version) ;; (version *vn-version*)
  "Construct and return a pathname to an xml file. Usually just working from
   the filename, e.g. 'push-12' or 'throw-17.1' -- note that the period is significant."
  (let ((dir (if version (append (pathname-directory path) (list version))
                 (pathname-directory path)))
        (typestr (if (symbolp type) (string-downcase (string type)) type)))        
    (make-pathname :name name :type typestr
                   :directory dir
                   :device (pathname-device path))))

(defun vn-dir (&key (name :wild) (type "xml") (path *vn-path*)) ;; (version *vn-version*)
  "Return a list of pathnames to all of the xml files in the directory"
  (cl-user::directory ;; 329 files in 3.3
   (make-pathname :name name :type type
                  :directory (pathname-directory path) ;;(append (pathname-directory path) (list version))
                  )))



(defparameter *verbnet-instances* nil
  "Stash an alist of (instance orig) pairs.")

;(defparameter *verbnet-subclasses* nil
;  "Hold a list of (vnsubclass-xmlrep superclass) pairs to process.")

(defparameter *verbnet-current-word* nil
  "Stash the stringified current word while parsing verbnet XML.")

(defun verbnet-symbolify (str &optional (package *package*))
  (intern (string-upcase str) package))

;;; vn used underscores within the name, dash after before number. mix of . and - after that. (not sure of pattern import)
(defun intern-vnname (id)
  (intern (string-upcase (string id)) :vn))



;;;-------------------------
;;;    diverse drivers
;;;-------------------------

(defun xparse-tst (&optional (file *simple-dressing*))
  "Returns an xmls:node object with no additional processing.
   Useful to see all the details that we could be extracting"
  (with-open-file (stream file)
    (xmls::parse stream)))

;;creates vn-classes.lisp file, with all verb class info
(defun vnparse-class (&optional (file *simple-dressing*))
  "Returns a list of (def-verb-class ..) forms from the XML in one file"
  (with-open-file (stream file)
    (verbnet-parse stream)))

;;creates vn-instances file, with all verb instance info (defined as categories)
(defun vnparse-instances (out-path)
    (with-open-file (stream
                     out-path
                     :direction :output
                     :if-exists :supersede)
    (loop for class in *vn-classes*
      do (pprint (create-verb-instances class) stream))))

;;creates vn-mixins file, with all class info formatted as mixins for instances
(defun vnparse-mixins(out-path)
    (with-open-file (stream
                     out-path
                     :direction :output
                     :if-exists :supersede)
    (loop for class in *vn-classes*
      do (pprint (create-mixin-category class) stream))))

(defun verbnet-parse-xml (verbnet-namestring)
  "Convert the VerbNet XML file in VERBNET-NAMESTRING into an
  intermediate representation for further analysis."
   (declare (special *verbnet-instances* *verbnet-subclasses*))
   (setf *verbnet-instances* nil)
  ;; (setf *verbnet-subclasses* nil)
  (with-open-file (stream verbnet-namestring)
    (let ((form (xmls::parse stream)))
      (verbnet-parse form))))

(defun process-verbnet ()
  "Walk through every file in the VerbNet directory
   and construct the equivalent intermedate forms"
  (let ((pathnames (vn-dir)))
    (loop for path in pathnames
       do (vnparse-class path))))

(defun write-out-def-verb-forms ()
  "Walk through every file in the VerbNet directory.
   Make the intermete sexp forms and save them to
   the designated outpath as one big file."
  (let* ((xml-pathnames (vn-dir))
         (out-dir *vn-path*)
         (out-path *defverb-out-path*))
    (with-open-file (stream
                     out-path
                     :direction :output
                     :if-exists :supersede)
      ;; (date-&-time-as-formatted-string)
      (format stream ";; 5/28/19~&~%")
      (loop for path in xml-pathnames
         as forms = (vnparse-class path)
         do (loop for form in forms
               do (write-def-verb-form form stream))))))

(defun write-def-verb-form (form stream)
  "Placeholder for something more interesting"
  (pprint form stream)
  (format stream "~&~%"))

(defgeneric create-verb-instances (name)
   (:method ((name symbol))
     (let ((members (vn-members name)))
     (loop for member in members
        as nm = (get-vn-path member :name)
        as ss = (get-vn-path member :wn-sense)
        as frames = (vn-frames name)
        collect (loop for cons on ss
            as nm = (car cons)
            as sensehash = (gethash nm *wn-senses*)
            as word = nil
            do (if sensehash
                (setq word (slot-value (slot-value sensehash 'sense-word) 'lemma)))
              collect `(define-category ,nm :mixins ,name :realization (:verb ,word) )) ) )))

(defgeneric create-mixin-category (name)
  (:method ((name symbol))
    (let* ((rolenames (vn-role-names name)) (frames (vn-frames name) ) (roles (loop for role in rolenames collect (concatenate 'string "with-" role))))
     (setq patterns nil)
    (loop for frame in frames
      as pattern = (collect-syntax frame)
      do (push pattern patterns))
    (loop for pattern in patterns 
      do (setf (car (nth 0 pattern)) ':s)
      do (if (nth 2 pattern) (if (eq (car (nth 2 pattern)) ':np) (setf (car (nth 2 pattern)) ':o)))
      do (if (nth 3 pattern) (if (eq (car (nth 3 pattern)) ':np) (setf (car (nth 3 pattern)) ':io)))
      do (if (nth 4 pattern) (if (eq (car (nth 4 pattern)) ':np) (setf (car (nth 4 pattern)) ':io))))
    (list `(define-mixin-category ,name :specializes subcategorization-pattern :mixins ,roles :realization ,patterns)))))
    
  
  (defgeneric convert-frames (class)
    (:method ((name symbol))
      (let (frames (vn-frames name))
        (loop for frame in frames
          collect (cform-prop frame :syntax)))))



;;;---------------
;;; verbnet-parse
;;;---------------

(defgeneric verbnet-parse (thing &optional superclass)
  (:documentation "Return the intermediate representation of THING.
The intermediate representation is a list of the following types of
forms:

(def-verb-class <verb-string> <parent-verb-string> <data>*)
  where <data> contains one or more s-expressions like:
    (<element-keyword> <attributes> <data>)
      where <attributes> is a list of keyword/string pairs.

(def-verb-instance <instance> <class>)
   where <instance> is the verb as a string, and <class> is
   this instance's verb class <verb-string>.
"))

(defmethod verbnet-parse ((vn-stream stream) &optional superclass)
  "Given a stream to a VerbNet xml file, apply xmls:parse to it to produce
   an xmls node representing the content of the file and pass the node
   to the next step. 
   N.b. the stream should contain a single VerbNet form."
  (declare (ignore superclass))
  (verbnet-parse (xmls:parse vn-stream)))

(defmethod verbnet-parse ((vn-string string) &optional superclass)
  (declare (ignore superclass))
  (list vn-string))

(defmethod verbnet-parse ((attr-list list) &optional superclass)
  (declare (ignore superclass))
  (loop for attr in attr-list appending
       (list (verbnet-symbolify (first attr) :keyword)
             (second attr))))

(defmethod verbnet-parse ((vn-xmlrep xmls::node) &optional superclass)
  (declare (special *verbnet-classes*) (special *verbnet-instances* *verbnet-current-word*))
  (let ((tag (verbnet-symbolify (xmls:xmlrep-tag vn-xmlrep) :keyword)))
    (case tag
      ((:VNCLASS :VNSUBCLASS)
       (let* ((id (verbnet-vnclass-id vn-xmlrep))
              (super superclass) ; (or (xmls:xmlrep-attrib-value "superclass" vn-xmlrep nil) s)
              (members (verbnet-vnclass-members vn-xmlrep))
              (subs (verbnet-vnclass-subs vn-xmlrep))
              (subnames (mapcar #'verbnet-vnclass-id subs))
              (newform nil)
              (child-classes nil))
         ;;(format t "~%top vn-parse ~a ~a ~a " id superclass super)
         (setf child-classes
               (loop for c in subs
                  appending (verbnet-parse c id)))
         (format t "~%Reading class ~a (~a) ~%~10tmembers ~a ~%~10tsubnames ~a~%"
                 id super members subnames)
         (setf newform 
               `(def-verb-class ,id
                    ,@(when super (list (list :superclass super)))
                  ,@(when subnames (list (cons :subclasses subnames)))
                  ,@(when members (list (cons :members members)))
                  ,@(verbnet-parse-children vn-xmlrep id)) )             
         (cons newform child-classes)))

      ((:SUBCLASSES :MEMBERS) nil)
      
      (t (let ((parsed-attributes (verbnet-parse (xmls:xmlrep-attribs vn-xmlrep)))
               (parsed-children (verbnet-parse-children vn-xmlrep superclass)))        
           (if parsed-attributes
             (append (list tag parsed-attributes)
                     parsed-children)
             (cons tag parsed-children))
           ;; Original: left around stray nil's in the output
           ;;    whenever there weren't attributes. 
           ;; (append (list tag (verbnet-parse (xmls:xmlrep-attribs vn-xmlrep)))
           ;;         (verbnet-parse-children vn-xmlrep superclass))
           )))))



;;;----------------------------
;;; handling particular fields
;;;----------------------------

;;--- members
#|
    <MEMBERS>
        <MEMBER name="don" wn="don%2:29:00" grouping=""/>
        <MEMBER name="doff" wn="doff%2:35:00" grouping=""/>
        <MEMBER name="wear" wn="wear%2:29:00 wear%2:29:04 wear%2:29:01" grouping="wear.01"/>  |#

(defun verbnet-vnclass-members (vnclass-xmlrep)
  "Called from xmls:node case of verbnet-parse. Extract the members element if there is one
   and return all the lemmas as strings. Include the WordNet synset stringss, but for now
   ignore the rest."
  (let* ((members-form (xmls:xmlrep-find-child-tag "MEMBERS" vnclass-xmlrep nil))
         (members (when members-form (xmls:xmlrep-find-child-tags "MEMBER" members-form))))
    (loop for m in members
      as name = (xmls:xmlrep-attrib-value "name" m)
      as *synsets* = nil
      as vnsensekeys =  (split-sequence:SPLIT-SEQUENCE #\Space (xmls:xmlrep-attrib-value "wn" m))
      do (push (intern (string-upcase name)) *verbnet-verbs*)
      do (loop for sense in vnsensekeys
          as wnsensekey = (concatenate 'string sense "::")
          do ( if (equal (subseq wnsensekey 0 1) "?")
            (setq wnsensekey (subseq wnsensekey 1)))
          do (push wnsensekey *synsets*))
       collect `(:MEMBER (:NAME ,name) (:wn-sense ,*synsets*)) )))
 

;;--- subclasses

(defun verbnet-vnclass-subs (vnclass-xmlrep)
  (let ((subsnode (xmls:xmlrep-find-child-tag "SUBCLASSES" vnclass-xmlrep nil)))
    (when subsnode (xmls:xmlrep-find-child-tags "VNSUBCLASS" subsnode))))
  


;;--- default / fall-through that gets everything else

(defun verbnet-parse-children (vn-xmlrep &optional superclass)
  (loop for child in (xmls:xmlrep-children vn-xmlrep)
       when (verbnet-parse child superclass) collect it))



(defun verbnet-instances (instance-list)
  (loop for instance in instance-list collecting
       (list 'def-verb-instance (first instance) (second instance))))

(defun verbnet-vnsubclass (vnsubclass-xmlrep superclass)
  ;; Make it look like a VNCLASS; their types are the same.
  ;; Set the "superclass" attribute to connect it.
  (verbnet-parse
   (xmls:make-xmlrep
    "VNCLASS"
    :attribs (if superclass 
                 (cons (list "superclass" superclass) (xmls:xmlrep-attribs vnsubclass-xmlrep))
                 (xmls:xmlrep-attribs vnsubclass-xmlrep))
    :children (xmls:xmlrep-children vnsubclass-xmlrep))))

(defun verbnet-vnclass-id (vnclass-xmlrep)
  "Given a xmls:node for the 'VNCLASS' element (the outtermost element after the
   preamble), extract the value  of its 'ID' element."
  ;; <VNCLASS ID="simple_dressing-41.3.1" ... >
  (xmls:xmlrep-attrib-value "ID" vnclass-xmlrep))

  ;; [mboldt:20160722] I used to trim the numbers off the end to make
  ;; it look tidy, but there are repeats that differ only in numbers,
  ;; so that's no good.
  ;; (cl-ppcre:regex-replace
  ;;  "^([a-z_]+).*"
  ;;  (xmls:xmlrep-attrib-value "ID" vnclass-xmlrep)
  ;;  "\\1")
  




;;-------- Thematic roles

#|           ex. from disassemble-23.3  VN 3.3
    <THEMROLES>
        <!--Patient is interpreted as Figure, Co-Patient as Ground-->
        <THEMROLE type="Agent">
            <SELRESTRS logic="or">
                <SELRESTR Value="+" type="animate"/>
                <SELRESTR Value="+" type="machine"/>
            </SELRESTRS>
        </THEMROLE>
|#

(defun verbnet-vnclass-args (vnclass-xmlrep)
  (let* ((themroles (xmls:xmlrep-find-child-tag "THEMROLES" vnclass-xmlrep nil))
         (themrole (when themroles (xmls:xmlrep-find-child-tags "THEMROLE" themroles))))
    (loop for tr in themrole collecting (verbnet-themrole-arg tr))))

(defun verbnet-themrole-arg (themrole-xmlrep)
  ;; (arg::agent :role agent :isa animate)
  (let* ((type (xmls:xmlrep-attrib-value "type" themrole-xmlrep))
         (role (verbnet-symbolify type))
         (selrestr (verbnet-selrestr-type themrole-xmlrep)))
    `(,(verbnet-symbolify type :arg)
      ,@(if role (list :role role))
      ,@(if selrestr (list :isa selrestr)))))

(defun verbnet-selrestr-type (themrole-xmlrep)
  (let* ((selrestrs (xmls:xmlrep-find-child-tag "SELRESTRS" themrole-xmlrep nil))
         ;; FIXME eventually, this needs to handle multiple.
         (selrestr (when selrestrs (xmls:xmlrep-find-child-tag "SELRESTR" selrestrs nil))))
    ;; FIXME check for value="+" and value="-"
    (when selrestr (verbnet-symbolify (xmls:xmlrep-attrib-value "type" selrestr)))))




(defun cform-pchain (form keys)
  "Given the sexp 'form' and a list of keys, interpret the keys as 
   a succession of lookups in the form -- a role chain style accessor."
  (let ((res form))
    (loop for key in keys
          do (setf res
                   (cond ((numberp key) (nth key res))
                         ((consp key) (apply #'cform-prop res key))
                         (t (cform-prop res key)))))
    res))

(defun cform-prop (form key)
  "Given the sexp 'form', find and return the component of the sexp
   that's designated by 'key'.  Used liberally in code below as an accessor."
  (let* ((props (or (and (consp (second form))
                         (member key (second form)))
                    (member key form)))
         kprop ;; set in the last clause of the cond
         (kprops (cddr form)))
    
    (cond (props (second props))
          ((and kprops (eq key t)) (first kprops))
          ((and kprops (member key '(:superclass :members)))
           (cdr (assoc key kprops)))
          ((and kprops (member key '(:frames :semantics :examples :args)))
           (cddr (assoc key kprops)))
          ((and kprops (setf kprop (assoc key kprops)))
           (cond ((null (cddr kprop)) (second kprop))
                 ((null (second kprop)) (cddr kprop))
                 (t (cdr kprop)))))))

;; (cform-prop '(:themrole (:type "Attribute")(:selrestrs (:logic "or") (:selrestr :type "foo" :value "+"E)))))




;;--- argument manipulation -- n.b. arg package is not @ prefix in ECI-speak

(defparameter *vn-eci-role-renamings*  ;; role names that change from vn to eci
  'arg::((initial_location initial-location)
         (source initial-location)
         (destination final-location)
         (product result) ;; follows iso (vn also has result, product is +concrete)
    ;    (asset amount) ;; asset is also +concrete  (maybe leave it? - not relevant in our domains.)
         (initial_time start-time)
         (final_time end-time)))

(defun vn2eci-rolemap (arg)
  (when arg
    (let* ((vn-source-role (intern (string-upcase (string arg)) :arg))
           (target (second (assoc vn-source-role *vn-eci-role-renamings*))))
      (when (and (member arg '("Initial_Location" "Destination" "Product" "Initial_Time" "Final_Time")
                         :test #'equal)
                 (null target))
        (format t "%in vn2eci failed to map ~s -> ~s" arg target)
        (break))
      (when target
        (format t "~%Mapping Role ~s to ~s" arg target))
      (or target vn-source-role))))

(defun intern-arg (s)
  (if (and s (not (consp s)))
      (intern (string s) :arg)
      s))




(defun convert-vn-feature (vntype)
  (when vntype ;; don't intern NIL in :vn package!
    (intern (string-upcase vntype) :vn)))



  
;; like the SELRSTRS in
;;  (:THEMROLE (:TYPE "Instrument")
;;    (:SELRESTRS (:LOGIC "or") (:SELRESTR (:TYPE "body_part" :VALUE "+"))
;;                              (:SELRESTR (:TYPE "refl" :VALUE "+")))))

(defun convert-vn-args (class-form)
  ;; called by create-vn-eci-form
  (let* ((themroles (cform-prop class-form :themroles)))
    (loop for tr in themroles
          collecting 
          (let* ((type (cform-prop tr :type)) ; (:type "agent") - type is the role name
                 (srs (cform-prop tr :selrestrs)) ; ((:selrestr (:type..)))
                 (conv-srs (convert-selrestrs srs))
                 (arg (vn2eci-rolemap type)) ; (intern (string-upcase type) :arg))
;                 (srv (convert-vn-feature vr)) ;; need to apply mapping
;                 (role (intern (format nil "~:@(~a-~a~)" id arg) :vn)) ;; predicate used
                 )
            (if conv-srs
              `(,arg  :isa ,conv-srs)
              (list arg)) ))))

(defun convert-selrestrs (srs)
  (flet ((convert-sr (selr)
           (let* ((typform (cform-prop selr :type))
                  (typ (convert-vn-feature typform))
                  (val (cform-prop selr :value)))
             (if (or (null val) (equal val "+")) typ `(:not ,typ)))))
    (when srs    
      (let* ((srs1 (first srs))
             (logic (when (and (consp srs1) (eq (car srs1) :logic))
                      (intern (string-upcase (second srs1)) :keyword))))
        (print `(logic- ,logic))
        (cond (logic
               (cons logic
                     (loop for selr in (cdr srs) collecting  (convert-sr selr))))
              ((and (consp srs1) (eq (car srs1) :selrestr) )
               (let ((typs (loop for selr in srs
                                 do (print selr)
                                 collecting (convert-sr selr))))
                 (if (null (cdr typs)) (first typs)
                     (cons :and typs)))))))))






(defun collect-semantics (frame)
  (let* ((sem ""))
    (loop for pred in (cform-prop frame :semantics)
          for bool = (cform-prop pred :bool)
          with morepreds = nil
          do (setf sem (concatenate 'string sem
                          (if morepreds "," "")
                          (if bool bool "")
                          (cform-prop pred :value)
                          "("))
             (setf morepreds t)
             (loop for arg in (cform-prop pred :args)
                   with more = nil
                do (setf sem (concatenate 'string sem (if more "," "")
                                          (cform-prop arg :value)))
                      (setf more t))
             (setf sem (concatenate 'string sem ")")) ;; closes pred args
          )
    sem))

;; "motion(during(E0),Theme),location(start(E0),Theme,Initial_Location),location(end(E0),Theme,Destination),equals(E0,E1),motion(during(E1),Agent),location(start(E1),Agent,Initial_Location),location(end(E1),Agent,Destination),cause(Agent,E0)"

  

(defun convert-semarg (arg)
  ;;returns an arg::var or (<relative time> <state>) like (:pre E)
  (let ((argstr (cform-prop arg :value)))
    (when (eq (elt argstr 0) #\?) ;; remove ? if presentn
      (setf argstr (subseq argstr 1)))
    (if (not (position #\( argstr))
        (vn2eci-rolemap argstr)
        ;;; at present, only time argstring has included ()s is if sub-arg is an event symbol
        (let* ((arglist (read-from-string (concatenate 'string "(" argstr ")" ))) ;; should make "before(E)" look like '(BEFORE (E))
               (ev (car (second arglist)))
               (whenf (intern (string (first arglist)) :keyword))
               (relwhen (case whenf
                          ((:START :BEFORE) :start)
                          ((:END :AFTER :RESULT) :end)
                          ((:during) :during)
                          (t whenf)))) ;; includes :during
;          (format t "in-convert-semarg relwhen ~s fn ~s pkg: ~a ~%" relwhen whenf (symbol-package (car arglist)))
          (list relwhen ev)))))
                
(defun event-symbol (str)
  (setq str (string str))
  (and (char-equal (elt str 0) #\E)
       (or (= (length str) 1)
           (every #'digit-char-p (subseq str 1)))))
;  (eql 0 (cl-ppcre::scan "E(:DIGIT-CLASS)*" (string str))))

(defun convert-pred (pred)
;;; convert the xml ized semantics of a term
  (let* ((predicate (intern (string-upcase (cform-prop pred :value)) :vn))
         (bool (if (equal (cform-prop pred :bool) "!") :not nil))
         (args (loop for arg in (cform-prop pred :args)
                     collect (convert-semarg arg)))
         (arg1 (car args))
         (state (cond ;; determine if this statement goes in a state and which one. 
                  ((and (or (and (consp arg1) (event-symbol (second arg1)));; a state arg
                            (event-symbol arg1))
                        (not (member (intern (string predicate) :vn) 'vn::(meets cause equals))))
                      ;   (member (car arg1) '(:start :during :end))) ;; should be anyway
                   (setf args (cdr args)) ;; rest stay
                   arg1)))
         (term (cons predicate args)))
    (list
     (if (eq bool :not) (list 'vn::not term) term)
     state)))
  
(defun concat-state (e wh)
  (intern-arg (concatenate 'string (string wh) "-" (string e))))


;; e-states are sorted 
(defun compute-state-name (state-pair)
  (let* (;(last-e (car (last e-states)))
         ;(first-e (car e-states))
         (rel (if (consp state-pair) (first state-pair) :during)) ;; (:start e1) -> :start
         (s (if (consp state-pair) (second state-pair) state-pair))
         (es (intern-arg s))
         )
;    (print (list rel s es))
    (if (eq rel :during) es 
        (concat-state es rel))))


;(defparameter *f* nil)

(defun remove-elts (elts list)
  (remove-if #'(lambda (e) (member e elts :test #'equal)) list))

;; ignores case
(defun has-prefix (sym pref)
  (let* ((str (string sym))
         (prf (string pref))
         (sl (length str))
         (pl (length prf)))
    (and (>= sl pl)
         (loop for i from 0 to (1- pl)
               do (unless (char-equal (elt str i) (elt prf i))
                    (return nil))
               finally (return t)))))

        


(defun compute-states (frame)
  (let* ((states nil); 'arg::(start-e e end-e))
         (general nil)
         (termstates ;; first collect general terms and additional En states
           (loop for pred in (cform-prop frame :semantics)
                 for term-state = (convert-pred pred)
                 for term = (first term-state)
                 for state = (second term-state)
              ;; for state-sym (make-state-sym state)
                 do ;; (format t "~%compute term ~a state ~a states ~a~%" term state states)
                    (cond ((null state) (pushnew term general)) 
                          ((not (consp state))  (pushnew (intern-arg state) states)) ;; arg::e
                          ((consp state) (pushnew (compute-state-name state) states))
                          )
                 collect term-state))
         (moregens nil)
         (state-equivs nil))         
;    (format t "~% in compute-states: general ~s  (package ~s) ~2%"  general *package*) 
;    (format t "~% in compute-states: termstates ~s ~%states ~s ~%general ~s ~2%"  termstates states general) 

    ;sort additional states into the states list (E0 E1..)
    (setq states (sort states #'string< :key #'string))
;    (pushnew 'arg::e states)
    ;; add intermedate states and collect general statements about states into moregen
 ;   (format t "~%sorted states = ~s~%" states) 

    (let ((previous-end nil)
          (state-names nil)
          (moregen nil))          
      (setq states
            (loop for (es . more) on states
                  unless (or (has-prefix es "END-")(has-prefix es "START-"))
                    do
                       (let ((ends (concat-state es :end))
                             (starts (concat-state es :start)))
                         (cond (previous-end
                                (push (list starts previous-end) state-equivs)
                                (setf starts previous-end))
                               (t (pushnew  starts state-names)))
                         (setf previous-end ends)
                         (pushnew es state-names)
                         (pushnew ends state-names)
                         (push `(vn::start-of ,es ,starts) moregen)
                         (when more
                           (push `(vn::meets ,es ,(first more)) moregen))
                         (push `(vn::end-of ,es ,ends) moregen))
                  finally (setf moregens (reverse moregen))
                          (return (reverse state-names))))
      ;; replace states on terms like (:start e1) with statename arg::start-e1
      (loop for ts in termstates
            for state-ref = (second ts)
            for stnam = (compute-state-name state-ref)
            for st-trunam = (or (second (assoc stnam state-equivs)) stnam)
            do (setf (second ts) st-trunam))
      (setf general (remove-duplicates (append general moregens) :test #'equal))
      (values termstates states general) ; state-equivs
    )))


(defun convert-semantics (cform i)
  ;; i is which frame to use - looks for longest set of terms
  (declare (special *f*));; for debugging
  (let* ((frame (setq *f* (cform-pchain cform `(:frames ,i))))
         (states-alist))

    (multiple-value-bind (termstates states general) (compute-states frame)
      ;; add in inherited states
      (setf states (append 'arg::(start-e e end-e) states))
      (setq states-alist (mapcar #'list states))

    ;; now add relative states (:start-En) En (:end-En)
;       (print (list 'states-alist states-alist))
;      (format t "~%general = ~a" general)
    ;; bundle preds by state 
      (loop for term in termstates
            for pred = (first term) ; (prog1 (first term) (print term))
            for state = (second term)
            do
;                 (format t "~%working on term/state ~s ~a" pred state)
                 (if state
                     (push pred (cdr (assoc state states-alist)))
;                     (format t "~%~a in general?" pred)
;                     (push pred general)
                     ))
;      (print (list 'added-relative-states states-alist ))
      ;; add :holds-in
      (let* ((holds (loop for state in states-alist
                        when (cdr state)  ;; a list of predications
                          collect (cons :holds-in state)))

           ;; these states are the ones actually referenced in :holds-in statements
             (state-names (loop for s in states
                        when (or (member s holds :key #'second)
                                 (member s general :key #'third))
                            collect s)))

        ;; these states are inherited from EVENT
        (setq state-names (remove-elts 'arg::(start-e e end-e) state-names)) 
        ;; these terms are also inherited
        (setf general (remove-elts '((vn::CAUSE ARG::AGENT ARG::E)
                                     (vn::START-OF ARG::E ARG::START-E)
                                     (vn::END-OF ARG::E ARG::END-E))
                                   general))
        (values 
         (if general
             (cons `(:holds-in arg::this-context ,@general) holds)
             holds)
         state-names)))))




#|           <SYNTAX>
                <NP value="Agent">
                    <SYNRESTRS/>
                </NP>
                <VERB/>
                <NP value="Theme">
                    <SYNRESTRS/>
                </NP>
            </SYNTAX> |#
(defun collect-syntax (frame)
  (loop for trm in (cform-prop frame :syntax)
        for selr = (remove-if #'null (list
                                      (cform-prop trm ':value)
                                      (cform-pchain trm '(:synrestrs :value))
                                      (cform-pchain trm '(:synrestrs :type))))
        collect (cons (car trm) selr)))



#|
    <FRAMES>
        <FRAME>
            <DESCRIPTION descriptionNumber="0.2" primary="NP V NP" secondary="Basic Transitive" xtag=""/>
            <EXAMPLES>
                <EXAMPLE>She always wears purple dresses.</EXAMPLE>
            </EXAMPLES>
            <SYNTAX>
                <NP value="Agent">
                    <SYNRESTRS/>
                </NP>
                <VERB/>
                <NP value="Theme">
                    <SYNRESTRS/>
                </NP>
            </SYNTAX>
            <SEMANTICS>
                <PRED value="wear">
                    <ARGS>
                        <ARG type="Event" value="E"/>
                        <ARG type="ThemRole" value="Agent"/>
                        <ARG type="ThemRole" value="Theme"/>
                    </ARGS>
                </PRED>
            </SEMANTICS>
        </FRAME>
    </FRAMES>  |#
(defun convert-vn-frames (class-form)
  "Walk through all of the 'frame' expressions of the 'frames' component of
   the form. Return a list of all the elements we want."
  (let* ((frames (cform-prop class-form :frames)))
    (loop for frame in frames
       collecting 
         (let* ((primary (cform-pchain frame '(:description :primary)))                
                (example (cform-pchain frame '(:examples 0 t 0)))
                (sem (collect-semantics frame))
                (syn (collect-syntax frame)))
           (list :frame primary example syn sem )))))






(defparameter *top-vn-classes* 
  'vn::((9 PUT-9)
        (10 REMOVE-10)
        (11 TRANSPORT-11)
        (12 PUSH-12)   ;; has base def
        (13 GIVE-GET-13)
        (14 LEARN-14)  ;; has base def
        (15 HOLD-KEEP-15)
        (16 CONCEAL-16)
        (17 THROW-17)
        (18 HIT-18)
        (19 POKE-19)  ;; has base def
        (20 TOUCH-20) ;; has base def
        (21 CUT-21)
        (22 COMBINE-22)
        (23 SEPARATE-23)
        (24 COLORING-24) ;; has base def
        (25 CREATE-IMAGE-25)
        (26 CREATE-TRANSFORM-26)
        (27 ENGENDER-27) ;; has base def
        (28 CALVE-28) ;; has base def
        (29 PREDICATE-COMPLEMENT-29)
        (30 PERCEIVE-30)
        (31 PSYCHOLOGICAL-STATE-31)
        (32 DESIRE-32)
        (33 JUDGEMENT-33)  ;; has base def
        (34 ASSESS-34)
        (35 SEARCH-35)
        (36 SOCIAL-INTERACTION-36)
        (37 COMMUNICATE-37)
        (38 ANIMAL_SOUNDS-38) ;; has base def ANIMAL_SOUNDS-38
        (39 INGEST-39)
        (40 BODY-ACTIONS-40)
        (41 GROOMING-41)
        (42 KILL-42)
        (43 EMIT-43)
        (44 DESTROY-44) ;; has base def
        (45 CHANGE-STATE-45)
        (46 LODGE-46)   ;; has base def
        (47 EXIST-47)
        (48 APPEAR-DISAPPEAR-48)
        (49 BODY_INTERNAL_MOTION-49) ;; has base def BODY_INTERNAL_MOTION-49
        (50 ASSUMING_POSITION-50) ;; has base def ASSUMING_POSITION-50
        (51 MOTION-51)
        (52 AVOID-52)     ;; has base def
        (53 LINGER-RUSH-53)
        (54 MEASURE-COST-54)
        (55 BEGIN-END-55)
        (56 WEEKEND-56)  ;; has base def
        (57 WEATHER-57)  ;; has base def
        (58 URGE-58)
        (59 FORCE-59)    ;; has base def
        (60 ORDER-60)    ;; has base def
        (61 TRY-61)      ;; has base def
        (62 WISH-62)     ;; has base def
        (63 ENFORCE-63)  ;; has base def
        (64 ALLOW-64)    ;; has base def
        (65 ADMIT-65)    ;; has base def
        (66 CONSUME-66)  ;; has base def
        (67 FORBID-67)   ;; has base def
        (68 PAY-68)      ;; has base def
        (69 REFRAIN-69)  ;; has base def
        (70 RELY-70)     ;; has base def
        (71 CONSPIRE-71) ;; has base def
        (72 HELP-72)     ;; has base def
        (73 COOPERATE-73) ;; has base def
        (74 SUCCEED-74)   ;; has base def
        (75 NEGLECT-75)   ;; has base def
        (76 LIMIT-76)     ;; has base def
        (77 ACCEPT-77)    ;; has base def
        (78 INDICATE-78)  ;; has base def
        (79 DEDICATE-79)  ;; has base def
        (80 FREE-80)      ;; has base def
        (81 SUSPECT-81)   ;; has base def
        (82 WITHDRAW-82)  ;; has base def
        (83 COPE-83)      ;; has base def
        (84 DISCOVER-84)  ;; has base def
        (85 DEFEND-85)    ;; has base def
        (86 RELATE-86)
        (87 COMPREHEND-87)
        (88 CARE-88)
        (89 SETTLE-89)    ;; has base def
        (90 EXCEED-90)    ;; has base def
        (91 MATTER-91)    ;; has base def
        (92 CONFINE-92)   ;; has base def
        (93 ADOPT-93)     ;; has base def
        (94 RISK-94)      ;; has base def
        (95 ACQUIESCE-95) ;; has base def
        (96 ADDICT-96)    ;; has base def
        (97 DEDUCE-97) ;; base-97.1 deduce-97.2
        (98 CONFRONT-98)  ;; has base def
        (99 ENSURE-99)    ;; has base def
        (100 OWN-100)     ;; has base def
        (101 PATENT-101)  ;; has base def
        (102 PROMOTE-102)  ;; has base def
        (103 REQUIRE-103)  ;; has base def
        (104 SPEND_TIME-104)  ;; has base def SPEND_TIME-104
        (105 USE-105)      ;; has base def
        (106 VOID-106)     ;; has base def
        (107 INVOLVE-107)  ;; has base def
        (108 MULTIPLY-108) ;; has base def
        (109 SEEM-109)     ;; has base def
        ;; added in 3.3
        (110 REPRESENTATION-110)
        (111 CONDUCT-111)
        (112 RECIPROCATE-112)
        (113 RESPOND-113)
        (114 ACT-114)
        
        ))


;; base class names defined by VN use _ internally within the name.
;; some of the ones above do not, they have internal dashes. 
;; but we dont run these next two functions ON the above names, only ones out of VN files. 
;;; return the name of the top category based on its number (embedded in class name)
(defun lookup-base-eci (id &optional (whole nil))
  (let* ((sid (string id))
         (dash-pos (1+ (position #\- sid)))
         (l (length sid))
         (dash2-pos (or (position #\- sid :start dash-pos) l))
         (period-pos (or (position #\. sid :start dash-pos) l))
         (end-pos (min l dash2-pos period-pos))
         (basenum (read-from-string (subseq sid dash-pos end-pos)))
         (cell (assoc basenum *top-vn-classes*)))
         
    ;;; they are starting to add classes. We will assume they are top level.
    (when (null cell)
      (setf cell (list basenum (string-upcase (subseq sid 0 dash-pos))))
      (setf *top-vn-classes*
            (append *top-vn-classes* (list cell))))
    (if whole cell (second cell))))


(defun is-base-class-name (id)
  (let* ((sid (string id))
         (dash-pos (1+ (position #\- sid))))         
    (and (not (find #\- sid :start dash-pos))
         (not (find #\. sid :start dash-pos)))))



(defparameter *vn-classes-by-type* nil)

(defun vnsubtype-num (classname)
  (let* ((beg (position #\. classname))
         (end (if beg (or (position #\. classname :start (1+ beg))
                          (position #\- classname :start (1+ beg)))))
         (numstr (if beg (subseq classname (1+ beg) end))))         
    (if (or (null numstr) (equal numstr "")) 0
        (read-from-string numstr))))

(defun vnsub< (a b)(< (vnsubtype-num (string a)) (vnsubtype-num (string b))))

(defun sort-vn-files (&optional (dirpath *vn-path*) (version *vn-version*))
  (setf *vn-classes-by-type* (mapcar #'(lambda (typ) (list (second typ))) *top-vn-classes*))
  (loop for path in (vn-dir :path dirpath :version version)
        for name = (pathname-name path)
        for id = (intern (string-upcase name) :vn)
        for type = (lookup-base-eci name)
        do (let* ((typecell (assoc type *vn-classes-by-type* :test #'string-equal)))
             (format t "~%in sort files assoc type ~a typecell ~a" type typecell)
             (pushnew id (cdr typecell))))
  (setf *vn-classes-by-type*
        (loop for (type . subs) in *vn-classes-by-type*
             ; do (print (list 'before-sort subs))
             collecting (cons type (sort subs #'vnsub<))))
  (format t "~%VN CLASSES BY TYPE~% ~s~2%" *vn-classes-by-type*)
  *vn-classes-by-type* )




;;--- move this elsewhere

(defun find-longest-frame-semantics (frames)
  (let ((longest 0) (n 0) (exl "??"))
    (loop for frame in frames ; (cddr frames)
          for i from 0
          for sem = (cform-prop frame :semantics)
          for l = (length sem)
          for ex = (cform-pchain frame '(:examples 0 t 0)) ; (third (cform-pchain frame '(:examples 0)))
;          do  (print (list l sem ex))
          when (> l n)
            do (setf n l)
               (setf longest i)
               (setf exl ex))
;    (format t "~% using longest semantics ~a ~s" longest exl)
    longest))



;;;---------------------------------------------------------
;;; Data structure and operations over def-verb-class forms
;;;---------------------------------------------------------

(defvar *vn-class-data* (make-hash-table)
  "From vn-class-name symbols to a list of their value")
(defun get-vn-data (class-name)
  (gethash class-name *vn-class-data*))

(defun clear-vn-class-data ()
  (clrhash *vn-class-data*)
  (setq *vn-classes* nil))


;;--- definition of def-verb-class

(defmacro def-verb-class (vn-class-string &rest alist)
  (let ((class-name (intern (string-upcase vn-class-string) (find-package :sparser))))
    `(define-vn-verb-class ',class-name ',alist)))

(defun define-vn-verb-class (class-name alist)
  (push class-name *vn-classes*)
  (setf (gethash class-name *vn-class-data*) alist)
  class-name)


;;--- generic walker for these expressions

(defgeneric get-vn-path (name keys)
  (:documentation "Given a symbol naming a VerbNet class, or any
    sub-expression recursively inside it. Walk down the sexp following
    the keywords in succession.")
  
  (:method ((name symbol) (keys list))
    (let ((entry (get-vn-data name)))
      (unless entry (format t "No verbnet class data for ~s" name) nil)
      (when entry
        (let ((value-form entry))
          (loop for key in keys
             do (setq value-form (assoc key value-form)))
          value-form))))

  (:method ((sexp list) (key symbol))
    "Operates over an sexp returned by an assoc,
     e.g. (:themrole (:type \"Goal\") (:selrestrs))
     Expects the keyword to be at this level."
     (let ((value (assoc key (cdr sexp))))
       (cadr value)))
  
  (:method ((sexp list) (keys list))
    (let ((value-form sexp))
      (loop for key in keys
         do (setq value-form (vn-form-assoc key value-form)))
      value-form)))

(defun vn-form-assoc (item alist)
  "Appreciates the format of the items in a def-verb expression,
   trying to distinguish alists from plists when the alists could
   be headed by a keyword. Does the 'cadr' operation so just
   the value proper is returned."
  (cond
    ((keywordp (car alist)) ;; two cases
     (cond
       ((every #'listp (cdr alist))
        (cadr (assoc item (cdr alist))))
       ((every #'atom alist) ;; actually a plist
        (cadr (memq item alist)))
       (t (break "keyword initial: alist = ~a" alist))))
    (t (break "not keyword inital: alist = ~a" alist))))
  

;;--- toplevel accessors

(defgeneric vn-members (name)
  (:method ((name symbol)) (cdr (get-vn-path name '(:members)))))
(defgeneric vn-roles (name)
  (:method ((name symbol)) (cdr (get-vn-path name '(:themroles)))))
(defgeneric vn-frames (name)
  (:method ((name symbol)) (cdr (get-vn-path name '(:frames)))))

;;--- deeper accessors

(defgeneric wn-synsets (class)
  (:method ((name symbol))
    (let ((members (vn-members name)))
      (loop for member in members
         as senses = (get-vn-path member :wn-sense)
         as name = (get-vn-path member :name)
         as *synsets* = nil
         do (loop for cons on senses
            as sensehash = (gethash (car cons) *wn-senses*)
            as ss = nil
            do (if sensehash
              (setq ss (gethash (slot-value sensehash 'wn-synset) *wn-synsets*) ) )
            do (push ss *synsets*))
         collect `(,name ,*synsets*)))))

(defgeneric synset-pointers (class)
  (:method ((name symbol))
     (let ((members (vn-members name)))
      (loop for m in members
         as senses = (get-vn-path m :wn-sense)
         as name = (get-vn-path m :name)
         do (setq *synsets* nil)
         do (loop for cons on senses
            as sensehash = (gethash (car cons) *wn-senses*)
            as ss = nil
            do (if sensehash
              (setq ss (gethash (slot-value sensehash 'wn-synset) *wn-synsets*) ) )
            do (push ss *synsets*))
         do (setf (cadr (assoc :wn-sense (cdr m))) *synsets*)) )))
          

(defgeneric vn-role-names (class)
  (:method ((name symbol))
    (let ((role-forms (vn-roles name)))
      (loop for form in role-forms
         collect (get-vn-path form :type)))))

(defgeneric vn-subcat-patterns (class)
  (:method ((name symbol))
    (let ((frames (vn-frames name)))
      (loop for frame-exp in frames
         collect (get-vn-path frame-exp '(:description :primary))))))

(defgeneric vn-subcat-pattern (frame)
  (:method ((frame-exp list))
    (get-vn-path frame-exp '(:description :primary))))

(defgeneric vn-subcat-xtag? (class)
  (:method ((name symbol))
    (let ((frames (vn-frames name)))
      (loop for frame-exp in frames
         as xtag = (get-vn-path frame-exp '(:description :xtag))
         do (when (and xtag
                       (not (equal xtag "")))
              (format t "~&~a '~a'" name xtag)))
      nil)))

(defun collect-subcat-patterns ()
  (loop for vn in *vn-classes* ;; symbols naming the classes
       as frameset = (vn-frames vn)
       do (loop for frame in frameset
               as pattern = (vn-subcat-pattern frame)
               do (link-subcat-frame-to-vnclass vn pattern frame))))

(defclass vn-subcat-frame (named-object)
  ((primary :initform nil :accessor vnf-description)
   (classes :initform nil :accessor vn-classes)
   ))

(setup-find-or-make vn-subcat-frame)

(defun link-subcat-frame-to-vnclass (class pattern frame)
  "Reify the pattern string, make the subcat datum, and stash the class"
  (declare (ignore frame)) ;; one step at a time
  (flet ((string-to-symbol (s)
           (let ((pname (substitute #\- #\space s :test #'string-equal)))
             (intern pname (find-package :clic)))))
    (let* ((name (string-to-symbol pattern))
           (sf (find-or-make-vn-subcat-frame name)))
      (push class (vn-classes sf))
      sf)))

#| (loop for sf being the hash-value in *vn-subcat-frame-table* 
     do (format t "~&~a ~a" (length (vn-classes sf)) (name sf))) |#

(defun sort-vnsf-by-users ()
  (let ((subcat-frames
         (loop for sf being the hash-value in *vn-subcat-frame-table*
              collect sf)))
    (sort subcat-frames
          #'(lambda (sf1 sf2)
              (let ((classes1 (length (vn-classes sf1)))
                    (classes2 (length (vn-classes sf2))))
                (cond
                  ((> classes1 classes2) t)
                  ((> classes2 classes1) nil)
                  ((= classes1 classes2)
                   (let ((pname1 (symbol-name (name sf1)))
                         (pname2 (symbol-name (name sf2))))
                     (cond 
                       ((string< pname1 pname2) t)
                       ((string< pname2 pname1) nil))))))))))

(defun display-vnsf-by-usage (sorted)
  (loop for sf in sorted
     do (format t "~&~a~4T~a~%"
                (length (vn-classes sf)) (name sf))))

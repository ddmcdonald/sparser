;;; THIS FILE NEEDS TO HAVE A HOME, BUT SHOULD ONLY BE LOADED IN A SYSTEM THAT HAS CL-JSON

(in-package :sparser)
(defun jsonify-cats (&optional cats (show-leaves nil) (stream t))
  (let ((json::*json-output* stream)
        (cats (or cats
                  (sort
                   (loop for cat in sp::*categories-defined*
                      when (and (not (sp::form-category? cat))
                                (sp::cat-lattice-position cat)
                                (or show-leaves
                                    (sp::subcategories-of cat)))
                      collect cat)
                   #'string<
                   :key #'sp::pname))))
    (declare (special json::*json-output*))
      
    (json::with-object  nil
      (loop for cat in cats do (jsonify-cat cat)
           (terpri json::*json-output*)))))

(defun jsonify-cat (cat)
  (json::as-object-member
      ((sp::pname cat))
    (json::with-object
        nil
      (json::encode-object-member
       "parent"
       (sp::pname (sp::lp-super-category (sp::cat-lattice-position cat))))
      (json::as-object-member
          ("roles")
        (json::with-array
            nil
          (loop for var in (sp::cat-slots cat)
             do
               (json::encode-array-member (sp::pname var))))))))

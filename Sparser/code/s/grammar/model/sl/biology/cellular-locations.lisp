;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:(SPARSER COMMON-LISP) -*-
;;; Copyright (c) 2017 SIFT LLC. All Rights Reserved
;;;
;;;    File: "cellular-locations"
;;;  Module: "grammar/model/sl/biology/
;;; version: February 2017

;; Broken out from taxonomy 2/3/17

(in-package :sparser)


(define-category cellular-location  :specializes bio-location
  :mixins (has-uid)
  :instantiates self
  :index (:permanent :key name))


;; These came from the MITRE RAS1 owl file

(defmacro define-cellular-location (name id &key (adj nil)(synonyms nil))
  (def-cell-loc name id :adj adj :synonyms synonyms))

(defun def-cell-loc (name id &key adj synonyms)
  (flet ((hyphen-subs (str)
           (substitute #\- #\space str)))
    (let ((cat-name (intern (string-upcase (hyphen-subs name))
                            (find-package :sparser))))
      `(progn
         (define-category ,cat-name :specializes cellular-location
           :bindings (uid ,id name ,name)
           :realization
             (:noun ,name
              ,@(when adj `(:adj ,adj))))
         (handle-mitre-link
          ,(find-symbol (symbol-name cat-name) (find-package :category)) ,id)
         ,@(loop for syn in synonyms collect `(def-synonym ,cat-name (:noun ,syn)))))))

       
(define-cellular-location "Golgi apparatus" "GO:0005794")
(define-cellular-location "basolateral plasma membrane" "GO:0016323")
;(define-cellular-location "caveola" "GO:0005901")
(def-indiv-with-id cellular-location "caveola" "GO:0005901" :name "caveola" :plural "caveolae")
(define-cellular-location "cell leading edge" "GO:0031252")
(define-cellular-location "cell-cell junction" "GO:0005911")
(define-cellular-location "chloride channel" "GO:0005254" :synonyms ("chloride-channel" "Cl channel" "calcium-activated Cl channel" "Ca-activated Cl channel"))
(define-cellular-location "cytoplasm" "GO:0005737" :adj "cytoplasmic")
(define-cellular-location "cytoplasmic vesicle" "GO:0031410")
(define-cellular-location "cytoskeleton" "GO:0005856" :adj "cytoskeletal")
(define-cellular-location "cytosol" "GO:0005829" :adj "cytosolic")
(define-cellular-location "dendritic spine" "GO:0043197")
(define-cellular-location "early endosome" "GO:0005769")
(define-cellular-location "endoplasmic reticulum membrane" "GO:0005789")
;(define-cellular-location "endoplasmic reticulum" "GO:0005783")
(define-cellular-location "endosome" "GO:0005768" :adj "endosomal")
(define-cellular-location "extracellular matrix" "GO:0031012" :synonyms ("ECM"))
(define-cellular-location "extracellular region" "GO:0005576" :adj "extracellular")
(define-cellular-location "focal adhesion" "GO:0005925")
(define-cellular-location "growth cone" "GO:0030426")
(define-cellular-location "hemidesmosome" "GO:0030056")
(define-cellular-location "integral to membrane" "GO:0016021")
(define-cellular-location "intracellular" "GO:0005622")
(define-cellular-location "lamellipodium" "GO:0030027")
(define-cellular-location "lamellipodia" "GO:0030027")
(define-cellular-location "filopodium" "GO:0030175")
(define-cellular-location "filopodia" "GO:0030175")
(define-cellular-location "membrane raft" "GO:0045121")
(define-cellular-location "membrane" "GO:0016020")
(define-cellular-location "mitochondrial inner membrane" "GO:0005743")
(define-cellular-location "mitochondrial intermembrane space" "GO:0005758")
(define-cellular-location "mitochondrial matrix" "GO:0005759")
(define-cellular-location "neuromuscular junction" "GO:0031594")
(define-cellular-location "nucleoplasm" "GO:0005654")
(define-cellular-location "nucleus" "GO:0005634" :adj "nuclear")
(define-cellular-location "plasma membrane" "GO:0005886" :synonyms ("PM" "cell membrane" "cellular membrane"))
(define-cellular-location "platelet dense granule lumen" "GO:0031089")
(define-cellular-location "trailing edge" "GO:0031254")
(define-cellular-location "juxtamembrane" "GO:????");; corresponds to both the plasma membrane and a side of the plasma membrane, so can be any of 4 GO#s: GO:0005886, GO:0019897, GO:0009898, GO:0009897

(noun "cell adhesive structure" :super cellular-location)
;(noun "membrane" :super cellular-location)
(noun "plasma" :super cellular-location)

(define-category stress-granule :specializes cellular-location
  :realization
     (:noun "SG"))
(def-synonym stress-granule
  (:noun "stress granule"))



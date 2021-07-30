;;; -*- Mode:LISP; Syntax:Common-Lisp; Package:SPARSER -*-
;;;  copyright (c) 2021 SIFT LLC, All rights reserved
;;;
;;;       File: "motif-key-words:
;;;     Module: grammar/model/dossiers/
;;;    Version: July 2021

;; Copied from acumen/trunk/code/LuceneSearchTest/lm_rules.txt
;; and modified to drive word-spotting starting 6/9/21

(in-package :sparser)


;; (make-spotter-for-motif-pair '("salmon_PROP" . "salmon of wisdom"))

(defun make-spotter-for-motif-pair (pair) ; e.g. ("salmon_PROP" . "salmon of wisdom")
  "Same basic function as setup-word-to-spot, but adapted to work
   from the pairs derived from LuceneSearchTest/lm_rules.txt.
      We decompose the type (e.g. 'salmon_PROP') into the kind of motif
   ('PROP') and the tag ('salmon') that groups different phrases together
   as triggering the same motif.
      A 'spotter' looks for an instance of one particular phrase. A group
   of spotters/phrases is based on the tag that several phases share."
  
  (flet ((extract-kind-from-lm-string (note-string)
           (let* ((underbar (position #\_ note-string))
                  (tag (subseq note-string 0 underbar)) ; "salmon"
                  (kind (subseq note-string (1+ underbar)))) ; "PROP"
             (values (intern (string-upcase kind) (find-package :sparser))
                     (intern (string-upcase tag) (find-package :sparser))))))
    
    (let* ((string (cdr pair)) ; "salmon of wisdom"
           (word (resolve/make string))
           (note (car pair)) ; "salmon_PROP"
           (name (intern ; salmon-of-wisdom
                  (string-upcase (substitute #\- #\space string))
                  (find-package :sparser))))
      
      ;; decompose the note and shift from strings to symbols
      (multiple-value-bind (kind ; PROP
                            tag) ; salmon
          (extract-kind-from-lm-string note)
        ;; The tag corresponds to the group
        
        (let ((spotting-group (find-or-make-word-spotting-group tag)))
          
          (let ((spotter (find-or-make-motif-spotter name)))
            (push spotter (get-notables spotting-group))
            (setf (kind-of-notable spotter) kind)
            (setf (part-of-group spotter) spotting-group)
            (setf (note-trigger spotter) word)

            (setup-motifs-language-spec word spotter kind)
            (setup-word-to-spotter word spotter)

            (values spotter spotting-group)))))))


(defvar *motif-groups* nil)
(defvar *motif-spotters* nil)

;; (assimiate-motif-type-word-pairs *motif-type-word-pairs*)

(defun assimiate-motif-type-word-pairs (list-of-pairs)
  "Pass each pair through the constructor. Collect raw statistics
   along the way to provide something to record and report"
  (let ( spotters  groups )
    (loop for pair in list-of-pairs
       do (multiple-value-bind (spotter group)
              (make-spotter-for-motif-pair pair)
            (pushnew spotter spotters)
            (pushnew group groups)))
    (setq *motif-groups* groups
           *motif-spotters* spotters)
    (format t "~&~%~a spotters in ~a groups"
            (length spotters) (length groups))
    :done))


(defparameter *motif-type-word-pairs*
  '(("salmon_PROP" . "salmon of wisdom")
    ("salmon_PROP" . "salmon of knowledge")
    ("children-of-lir_EVENT" . "years as a swan")
    ("children-of-lir_EVENT" . "children of lir")
    ("finn-mccool_CHAR" . "finn mccool")
    ("finn-mccool_CHAR" . "fionn mac cumhaill")
    ("finn-mccool_CHAR" . "finn mac cumhaill")
    ("finn-mccool_CHAR" . "finn umaill")
    ("finn-mccool_CHAR" . "finn maccool")
    ("wren_PROP" . "wren-lore")
    ("wren_PROP" . "wren boys")
    ("magic-harp_PROP" . "magic harp")
    ("magic-harp_PROP" . "dagda's harp")
    ("magic-harp_PROP" . "irish harp")
    ("tir-na-nog_PROP" . "tir na nog")
    ("tir-na-nog_PROP" . "tir na hoige")
    ("shamrock_PROP" . "shamrock")
    ("leprechaun_PROP" . "leprechaun")
    ("king-conchobar_CHAR" . "king conchobar")
    ("king-conchobar_CHAR" . "king conchobar mac nessa")
    ("fairy-fort_PROP" . "fairy fort")
    ("aos-si_CHAR" . "aos si")
    ("banshee_CHAR" . "banshee")
    ("cu-chulainn_CHAR" . "cu chulainn")
    ("cu-chulainn_CHAR" . "cu chulaind")
    ("cu-chulainn_CHAR" . "cuchulainn")
    ("cu-chulainn_CHAR" . "cuhullin")
    ("cu-chulainn_CHAR" . "setanta")
    ("cu-chulainn_CHAR" . "culann's hound")
    
    ("haman_CHAR" . "haman")
    ("golem_CHAR" . "golem")
    ("amalek_CHAR" . "amalek")
    ("amalek_CHAR" . "children of amalek")
    ("amalek_CHAR" . "amalekite")
    ("babel_PROP" . "tower of babel")
    ("dove_PROP" . "dove")
    ("name-in-vain_EVENT" . "name in vain")
    ("leviathan-behemoth_PROP" . "leviathan")
    ("leviathan-behemoth_PROP" . "behemoth")
    ("milk-with-meat_EVENT" . "milk with meat")
    ("ark-of-the-covenant_EVENT" . "ark of the covenant")
    ("kiddush_EVENT" . "kiddush")
    ("kiddush_EVENT" . "kiddush hashem")
    ("70-languages_PROP" . "seventy languages")
    ("70-languages_PROP" . "70 languages")
    
    ("reyes_CHAR" . "reyes magos")
    ("reyes_CHAR" . "three kings")
    ("agueybana_CHAR" . "agueybana")
    ("atabey_CHAR" . "atabey")
    ("cofresi_CHAR" . "roberto cofresi")
    ("cofresi_CHAR" . "cofresi")
    ("coqui_PROP" . "coqui")
    ("coqui_PROP" . "coquis")
    ("coqui_PROP" . "coquies")
    ("coqui_PROP" . "ko-kee")
    ("divina_CHAR" . "divina providencia")
    ("divina_CHAR" . "our lady of providence")
    ("guanina_CHAR" . "guanina")
    ("hormigueros_EVENT" . "hormigueros")
    ("juan-bobo_CHAR" . "juan bobo")
    ("yocahu_CHAR" . "yocahu")
    ("yocahu_CHAR" . "yocaju")
    ("yocahu_CHAR" . "yokaju")
    ("yocahu_CHAR" . "yokahu")
    ("yocahu_CHAR" . "yokiyu")
    ("yocahu_CHAR" . "yoquiyu")
    ("jibarito_CHAR" . "jibarito")
    ("jibarito_CHAR" . "jibaro")
    ("guaraguao_CHAR" . "el guaraguao")
    ("guaraguao_CHAR" . "guaraguao")
    ("pitirre_CHAR" . "el pitirre")
    ("pitirre_CHAR" . "pitirre")
    ("pava_PROP" . "la pava")
    ("chupacabra_CHAR" . "chupacabra")
    ))

(eval-when (:load-toplevel :execute)
  (assimiate-motif-type-word-pairs *motif-type-word-pairs*))

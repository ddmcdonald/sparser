;; Copied from acumen/trunk/cod/LuceneSearchTest/lm_rules.txt
;; Modified to drive word-spotting 6/9/21

(in-package :sparser)

(defclass motif-spotter (spotter)
  ((kind :initarg :type :accessor kind-of-motif
     :documentation "one of the symbols char(acter) prop, event"))
  (:documentation "Specialization of spotter class to hold things
    that are specific to the lm-rule data"))

(defun lm-rule-to-spotter (pair)
  "Same basic function as setup-word-to-spot, but adapted to work
   from the pairs derived from lm_rules.txt"
  (flet ((extract-kind-from-lm-string (note-string)
           (let* ((underbar (position #\_ note-string))
                  (tag (subseq note-string 0 underbar)) ; "salmon"
                  (kind (subseq note-string (1+ underbar)))) ; "PROP"
             (values (intern (string-downcase kind) (find-package :sparser))
                     (intern tag (find-package :sparser))))))
    
    (let* ((string (cdr pair)) ; "salmon of wisdom"
           (word (resolve/make string))
           (note (car pair)) ; "salmon_PROP"
           (name (intern (substitute #\- #\space string) (find-package :sparser))))
      (multiple-value-bind (kind tag) ;; decompose and shift to symbols
          (extract-kind-from-lm-string note)
        (let ((spotter (make-instance 'motif-spotter
                                      :name name
                                      :for word
                                      :type kind
                                      :note note)))
          (setup-note-for-spotting spotter
        


           
      )))

(
  ("salmon_PROP" . "salmon of wisdom")
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
  ("chupacabra_CHAR" . "chupacabra") )

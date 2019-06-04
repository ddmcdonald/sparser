(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv8758 :isa regulate :object mv8760 :agent mv8759 :present "PRESENT" :raw-text "regulate")
   (:var mv8760 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv8759 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv8766 :isa regulate :object mv8767 :agent mv8763 :present "PRESENT" :raw-text "regulate")
   (:var mv8767 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv8763 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv8769 :isa tell :theme mv8773 :theme mv8770 :present "PRESENT")
   (:var mv8773 :isa involve :theme mv8775 :participant mv8772)
   (:var mv8775 :isa apoptosis :raw-text "apoptosis")
   (:var mv8772 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8770 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv8780 :isa be :subject mv8779 :predicate mv8795 :present "PRESENT")
   (:var mv8779 :isa what)
   (:var mv8795 :isa gene :plural t :predication mv8785 :has-determiner "THE" :raw-text "genes")
   (:var mv8785 :isa have :possessor mv8795 :that-rel t :thing-possessed mv8787 :present "PRESENT")
   (:var mv8787 :isa evidence :fact mv8790 :predication mv8786)
   (:var mv8790 :isa regulate :agent mv8778 :progressive mv8789 :raw-text "regulated")
   (:var mv8778 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv8789 :isa be) (:var mv8786 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv8798 :isa be :subject mv8797 :predicate mv8800 :present "PRESENT")
   (:var mv8797 :isa what) (:var mv8800 :isa involve :theme mv8802 :participant mv8799)
   (:var mv8802 :isa apoptosis :raw-text "apoptosis")
   (:var mv8799 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv8806 :isa be :subject mv8805 :predicate mv8808 :present "PRESENT")
   (:var mv8805 :isa what) (:var mv8808 :isa role :process mv8810 :participant mv8807)
   (:var mv8810 :isa apoptosis :raw-text "apoptosis")
   (:var mv8807 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv8814 :isa be :subject mv8813 :predicate mv8816 :present "PRESENT")
   (:var mv8813 :isa what) (:var mv8816 :isa role :process mv8820 :participant mv8815)
   (:var mv8820 :isa regulate :cellular-process mv8818 :raw-text "regulation")
   (:var mv8818 :isa apoptosis :raw-text "apoptotic")
   (:var mv8815 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv8825 :isa be :subject mv8824 :predicate mv8832 :present "PRESENT")
   (:var mv8824 :isa what) (:var mv8832 :isa evidence :statement mv8831 :has-determiner "THE")
   (:var mv8831 :isa target :agent mv8822 :object mv8823 :present "PRESENT" :raw-text "targets")
   (:var mv8822 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv8823 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv8838 :isa regulate :object mv8839 :agent mv8835 :present "PRESENT" :raw-text "regulate")
   (:var mv8839 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv8835 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv8845 :isa regulate :object mv8846 :agent mv8842 :present "PRESENT" :raw-text "regulate")
   (:var mv8846 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv8842 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv8850 :isa be :subject mv8849 :predicate mv8853 :present "PRESENT")
   (:var mv8849 :isa what)
   (:var mv8853 :isa significance :agent mv8847 :has-determiner "THE" :modifier mv8852)
   (:var mv8847 :isa protein :context mv8848 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv8848 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv8852 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv8861 :isa be :subject mv8860 :predicate mv8864 :present "PRESENT")
   (:var mv8860 :isa what)
   (:var mv8864 :isa significance :result mv8859 :agent mv8858 :has-determiner "THE" :modifier
    mv8863)
   (:var mv8859 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv8858 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv8863 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv8870 :isa be :subject mv8869 :predicate mv8876 :present "PRESENT")
   (:var mv8869 :isa what) (:var mv8876 :isa has-synonym :plural t :item mv8874)
   (:var mv8874 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv8879 :isa be :subject mv8878 :predicate mv8890 :present "PRESENT")
   (:var mv8878 :isa what)
   (:var mv8890 :isa gene :plural t :predication mv8888 :quantifier mv8880 :raw-text "genes")
   (:var mv8888 :isa mutation :object mv8890 :that-rel t :context mv8877 :present "PRESENT"
    :raw-text "mutated")
   (:var mv8877 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv8880 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv8899 :isa mutation :object mv8898 :context mv8891 :present "PRESENT" :raw-text
    "mutated")
   (:var mv8898 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv8891 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv8913 :isa polar-question :statement mv8911)
   (:var mv8911 :isa bio-activate :agent mv8903 :object mv8901 :raw-text "activate")
   (:var mv8903 :isa phosphorylate :site mv8910 :raw-text "phosphorylation")
   (:var mv8910 :isa residue-on-protein :raw-text "S221" :position mv8908 :amino-acid mv8906)
   (:var mv8908 :isa number :value 221) (:var mv8906 :isa amino-acid :name "serine" :letter "S")
   (:var mv8901 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv8926 :isa polar-question :statement mv8924)
   (:var mv8924 :isa bio-activate :agent mv8916 :object mv8914 :raw-text "activate")
   (:var mv8916 :isa phosphorylate :site mv8923 :raw-text "phosphorylation")
   (:var mv8923 :isa residue-on-protein :raw-text "S222" :position mv8921 :amino-acid mv8919)
   (:var mv8921 :isa number :value 222) (:var mv8919 :isa amino-acid :name "serine" :letter "S")
   (:var mv8914 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv8929 :isa simulate :object mv8933 :present "PRESENT" :raw-text "Simulate")
   (:var mv8933 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv8928
    :component mv8927)
   (:var mv8928 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv8927 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv8935 :isa be :subject mv8934 :predicate mv8943 :present "PRESENT")
   (:var mv8934 :isa what) (:var mv8943 :isa member :plural t :set mv8940 :has-determiner "THE")
   (:var mv8940 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv8945 :isa be :subject mv8944 :predicate mv8953 :present "PRESENT")
   (:var mv8944 :isa what) (:var mv8953 :isa member :plural t :set mv8950 :has-determiner "THE")
   (:var mv8950 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv8955 :isa be :subject mv8954 :predicate mv8963 :present "PRESENT")
   (:var mv8954 :isa what) (:var mv8963 :isa member :plural t :set mv8960 :has-determiner "THE")
   (:var mv8960 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv8965 :isa be :subject mv8964 :predicate mv8977 :present "PRESENT")
   (:var mv8964 :isa what) (:var mv8977 :isa member :plural t :set mv8975 :has-determiner "THE")
   (:var mv8975 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv8980 :isa be :subject mv8979 :predicate mv8988 :present "PRESENT")
   (:var mv8979 :isa what) (:var mv8988 :isa member :plural t :set mv8978 :has-determiner "THE")
   (:var mv8978 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras" :count
    3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv8990 :isa be :subject mv8989 :predicate mv8993 :present "PRESENT")
   (:var mv8989 :isa what) (:var mv8993 :isa has-name :item mv8996 :quantifier mv8991)
   (:var mv8996 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv8991 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv9000 :isa be :subject mv8999 :predicate mv9003 :present "PRESENT")
   (:var mv8999 :isa what) (:var mv9003 :isa has-name :item mv8998 :quantifier mv9001)
   (:var mv8998 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv9001 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv9011 :isa affect :manner mv9009 :agent mv9007 :object mv9008 :present "PRESENT"
    :raw-text "affect")
   (:var mv9009 :isa how)
   (:var mv9007 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9008 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv9013 :isa list :theme mv9019 :present "PRESENT")
   (:var mv9019 :isa gene :plural t :predication mv9017 :quantifier mv9014 :raw-text "genes")
   (:var mv9017 :isa regulate :object mv9019 :agent mv9012 :past "PAST" :raw-text "regulated")
   (:var mv9012 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9014 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv9023 :isa list :theme mv9034 :present "PRESENT")
   (:var mv9034 :isa gene :plural t :predication mv9029 :quantifier mv9024 :has-determiner "THE"
    :raw-text "genes")
   (:var mv9029 :isa regulate :object mv9034 :agent mv9022 :past "PAST" :raw-text "regulated")
   (:var mv9022 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9024 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv9038 :isa list :theme mv9044 :present "PRESENT")
   (:var mv9044 :isa gene :plural t :predication mv9042 :has-determiner "THE" :raw-text "genes")
   (:var mv9042 :isa regulate :object mv9044 :agent mv9037 :past "PAST" :raw-text "regulated")
   (:var mv9037 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv9049 :isa be :subject mv9048 :predicate mv9064 :present "PRESENT")
   (:var mv9048 :isa what)
   (:var mv9064 :isa regulator :plural t :theme mv9059 :has-determiner "THE" :predication mv9051
    :context mv9052 :raw-text "regulators")
   (:var mv9059 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv9047 mv9058))
   (:var mv9047 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9058 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9051 :isa common) (:var mv9052 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv9066 :isa be :subject mv9065 :predicate mv9079 :present "PRESENT")
   (:var mv9065 :isa what)
   (:var mv9079 :isa upstream-segment :plural t :pathwaycomponent mv9075 :has-determiner "THE"
    :predication mv9068 :raw-text "upstreams")
   (:var mv9075 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv9072 mv9074))
   (:var mv9072 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv9074 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9068 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv9082 :isa be :subject mv9081 :predicate mv9094 :present "PRESENT")
   (:var mv9081 :isa what)
   (:var mv9094 :isa upstream-segment :plural t :pathwaycomponent mv9090 :has-determiner "THE"
    :predication mv9084 :raw-text "upstreams")
   (:var mv9090 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv9080 mv9089))
   (:var mv9080 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9089 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9084 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv9097 :isa be :subject mv9096 :predicate mv9104 :present "PRESENT")
   (:var mv9096 :isa what)
   (:var mv9104 :isa gene :plural t :predication mv9102 :has-determiner "THE" :raw-text "genes")
   (:var mv9102 :isa regulate :object mv9104 :that-rel t :agent mv9095 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9095 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv9109 :isa be :subject mv9108 :predicate mv9120 :present "PRESENT")
   (:var mv9108 :isa what)
   (:var mv9120 :isa micro-rna :plural t :predication mv9114 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv9114 :isa regulate :agent mv9120 :that-rel t :object mv9118 :present "PRESENT" :raw-text
    "regulate")
   (:var mv9118 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv9115 mv9116 mv9105 mv9106 mv9107))
   (:var mv9115 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv9116 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9105 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9106 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv9107 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv9123 :isa be :subject mv9122 :predicate mv9134 :present "PRESENT")
   (:var mv9122 :isa what)
   (:var mv9134 :isa micro-rna :plural t :predication mv9128 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv9128 :isa regulate :agent mv9134 :that-rel t :object mv9132 :present "PRESENT" :raw-text
    "regulate")
   (:var mv9132 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv9129 mv9130 mv9121))
   (:var mv9129 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv9130 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9121 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv9136 :isa be :subject mv9135 :predicate mv9144 :present "PRESENT")
   (:var mv9135 :isa what)
   (:var mv9144 :isa regulator :plural t :theme mv9141 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv9141 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv9148 :isa regulate :|affected-process-OR-object| mv9146 :agent mv9145 :organ mv9151
    :present "PRESENT" :raw-text "regulate")
   (:var mv9146 :isa what)
   (:var mv9145 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9151 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv9156 :isa regulate :|affected-process-OR-object| mv9153 :|agent-OR-cause| mv9155 :organ
    mv9159 :present "PRESENT" :raw-text "regulate")
   (:var mv9153 :isa what) (:var mv9155 :isa pronoun/inanimate :word "it")
   (:var mv9159 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv9169 :isa regulate :object mv9168 :agent mv9161 :present "PRESENT" :raw-text
    "regulated")
   (:var mv9168 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv9161 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv9181 :isa regulate :object mv9180 :agent mv9179 :present "PRESENT" :raw-text
    "regulated")
   (:var mv9180 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv9179 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv9191 :isa regulate :object mv9190 :agent mv9189 :present "PRESENT" :raw-text
    "regulated")
   (:var mv9190 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv9189 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv9200 :isa regulate :|affected-process-OR-object| mv9196 :agent mv9193 :present "PRESENT"
    :raw-text "regulated")
   (:var mv9196 :isa these :quantifier mv9194 :word "these") (:var mv9194 :isa which)
   (:var mv9193 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv9210 :isa regulate :|affected-process-OR-object| mv9206 :agent mv9203 :present "PRESENT"
    :raw-text "regulated")
   (:var mv9206 :isa these :quantifier mv9204 :word "these") (:var mv9204 :isa which)
   (:var mv9203 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv9217 :isa bio-use :agent mv9219 :object mv9218 :present "PRESENT" :raw-text "use")
   (:var mv9219 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv9218 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv9224 :isa regulate :location mv9222 :agent mv9220 :affected-process mv9226 :present
    "PRESENT" :raw-text "regulate")
   (:var mv9222 :isa where)
   (:var mv9220 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9226 :isa gene-transcript-express :object mv9221 :has-determiner "THE" :raw-text
    "expression")
   (:var mv9221 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv9250 :isa polar-question :statement mv9234)
   (:var mv9234 :isa tell :agent mv9233 :theme mv9249 :beneficiary mv9235 :modal "CAN")
   (:var mv9233 :isa interlocutor :name "hearer")
   (:var mv9249 :isa transcription-factor :plural t :predication mv9247 :quantifier mv9236
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv9247 :isa share :object mv9249 :that-rel t :participant mv9244 :modal "CAN" :raw-text
    "shared")
   (:var mv9244 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9231 mv9243))
   (:var mv9231 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9243 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9236 :isa all :word "all") (:var mv9235 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv9268 :isa polar-question :statement mv9256)
   (:var mv9256 :isa tell :agent mv9255 :theme mv9266 :theme mv9257 :modal "CAN")
   (:var mv9255 :isa interlocutor :name "hearer")
   (:var mv9266 :isa share :object mv9265 :participant mv9264 :modal "CAN" :raw-text "shared")
   (:var mv9265 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv9264 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9253 mv9263))
   (:var mv9253 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9263 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9257 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv9270 :isa be :subject mv9269 :predicate mv9278 :present "PRESENT")
   (:var mv9269 :isa what)
   (:var mv9278 :isa regulator :plural t :theme mv9275 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv9275 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv9282 :isa regulate :|affected-process-OR-object| mv9279 :agent mv9281 :present "PRESENT"
    :raw-text "regulate")
   (:var mv9279 :isa what)
   (:var mv9281 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv9284 :isa be :subject mv9283 :predicate mv9285 :present "PRESENT")
   (:var mv9283 :isa what)
   (:var mv9285 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv9292 :isa polar-question :statement mv9288)
   (:var mv9288 :isa involve :object mv9286 :theme mv9290 :past "PAST")
   (:var mv9286 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9290 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?" (:var mv9301 :isa polar-question :statement mv9295)
   (:var mv9295 :isa involve :object mv9293 :theme mv9299 :past "PAST")
   (:var mv9293 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9299 :isa regulate :cellular-process mv9297 :raw-text "regulation")
   (:var mv9297 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?" (:var mv9309 :isa polar-question :statement mv9304)
   (:var mv9304 :isa involve :object mv9302 :theme mv9306 :past "PAST")
   (:var mv9302 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9306 :isa regulate :affected-process mv9307 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv9307 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv9321 :isa regulate :object mv9320 :agent mv9310 :present "PRESENT" :raw-text
    "regulated")
   (:var mv9320 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv9312 :raw-text
    "genes")
   (:var mv9312 :isa apoptosis :raw-text "apoptotic")
   (:var mv9310 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv9323 :isa list :theme mv9330 :present "PRESENT")
   (:var mv9330 :isa gene :plural t :has-determiner "THE" :cellular-process mv9325 :raw-text
    "genes")
   (:var mv9325 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv9342 :isa involve :object mv9345 :theme mv9340 :present "PRESENT")
   (:var mv9345 :isa gene :plural t :predication mv9335 :has-determiner "WHAT" :raw-text "genes")
   (:var mv9335 :isa regulate :object mv9345 :agent mv9331 :past "PAST" :raw-text "regulated")
   (:var mv9331 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9340 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv9347 :isa list :theme mv9349 :present "PRESENT")
   (:var mv9349 :isa gene :plural t :predication mv9350 :raw-text "genes")
   (:var mv9350 :isa regulate :object mv9349 :agent mv9346 :past "PAST" :raw-text "regulated")
   (:var mv9346 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv9362 :isa involve :object mv9361 :theme mv9360 :present "PRESENT")
   (:var mv9361 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv9360 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv9375 :isa involve :object mv9377 :theme mv9373 :present "PRESENT")
   (:var mv9377 :isa gene :plural t :predication mv9369 :has-determiner "WHAT" :raw-text "genes")
   (:var mv9369 :isa regulate :object mv9377 :that-rel t :agent mv9364 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9364 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9373 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv9379 :isa list :theme mv9385 :present "PRESENT")
   (:var mv9385 :isa gene :plural t :predication mv9383 :has-determiner "THE" :raw-text "genes")
   (:var mv9383 :isa regulate :object mv9385 :agent mv9378 :past "PAST" :raw-text "regulated")
   (:var mv9378 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv9389 :isa list :theme mv9395 :present "PRESENT")
   (:var mv9395 :isa gene :plural t :has-determiner "THE" :predication mv9391 :raw-text "genes")
   (:var mv9391 :isa regulate :object mv9395 :agent mv9388 :raw-text "regulated")
   (:var mv9388 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv9404 :isa regulate :object mv9403 :agent mv9396 :present "PRESENT" :raw-text
    "regulated")
   (:var mv9403 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv9396 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv9414 :isa involve :object mv9413 :theme mv9412 :present "PRESENT")
   (:var mv9413 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv9412 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv9427 :isa involve :object mv9426 :present "PRESENT")
   (:var mv9426 :isa gene :plural t :has-determiner "WHAT" :predication mv9418 :raw-text "genes")
   (:var mv9418 :isa regulate :object mv9426 :agent mv9416 :raw-text "regulated")
   (:var mv9416 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv9430 :isa let :complement mv9451 :present "PRESENT")
   (:var mv9451 :isa know :agent mv9431 :statement mv9450 :present "PRESENT")
   (:var mv9431 :isa interlocutor :name "speaker")
   (:var mv9450 :isa wh-question :statement mv9445 :wh if)
   (:var mv9445 :isa involve :object mv9449 :theme mv9443 :present "PRESENT")
   (:var mv9449 :isa gene :plural t :quantifier mv9434 :predication mv9439 :has-determiner "THE"
    :raw-text "genes")
   (:var mv9434 :isa any :word "any")
   (:var mv9439 :isa regulate :object mv9449 :agent mv9429 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9429 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9443 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv9453 :isa let :complement mv9475 :present "PRESENT")
   (:var mv9475 :isa know :agent mv9454 :statement mv9474 :present "PRESENT")
   (:var mv9454 :isa interlocutor :name "speaker")
   (:var mv9474 :isa wh-question :statement mv9469 :wh whether)
   (:var mv9469 :isa involve :object mv9473 :theme mv9467 :present "PRESENT")
   (:var mv9473 :isa gene :plural t :quantifier mv9458 :predication mv9463 :has-determiner "THE"
    :raw-text "genes")
   (:var mv9458 :isa any :word "any")
   (:var mv9463 :isa regulate :object mv9473 :agent mv9452 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9452 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9467 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv9494 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv9496 :isa tell :beneficiary mv9497 :present "PRESENT")
   (:var mv9497 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv9507 :isa tell :theme mv9516 :beneficiary mv9508 :present "PRESENT")
   (:var mv9516 :isa wh-question :statement mv9514 :wh if)
   (:var mv9514 :isa involve :object mv9506 :theme mv9513 :present "PRESENT")
   (:var mv9506 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9513 :isa apoptosis :raw-text "apoptosis")
   (:var mv9508 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv9518 :isa tell :theme mv9528 :theme mv9519 :present "PRESENT")
   (:var mv9528 :isa wh-question :statement mv9526 :wh whether)
   (:var mv9526 :isa involve :object mv9517 :theme mv9525 :present "PRESENT")
   (:var mv9517 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9525 :isa apoptosis :raw-text "apoptosis")
   (:var mv9519 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv9531 :isa be :subject mv9530 :predicate mv9543 :present "PRESENT")
   (:var mv9530 :isa what)
   (:var mv9543 :isa gene :plural t :predication mv9541 :predication mv9532 :raw-text "genes")
   (:var mv9541 :isa involve :object mv9543 :that-rel t :theme mv9539 :present "PRESENT")
   (:var mv9539 :isa apoptosis :raw-text "apoptosis")
   (:var mv9532 :isa regulate :object mv9543 :agent mv9529 :raw-text "regulated")
   (:var mv9529 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv9546 :isa be :subject mv9545 :predicate mv9558 :present "PRESENT")
   (:var mv9545 :isa what)
   (:var mv9558 :isa gene :plural t :predication mv9556 :predication mv9547 :raw-text "genes")
   (:var mv9556 :isa involve :object mv9558 :that-rel t :theme mv9554 :present "PRESENT")
   (:var mv9554 :isa apoptosis :raw-text "apoptosis")
   (:var mv9547 :isa regulate :object mv9558 :agent mv9544 :raw-text "regulated")
   (:var mv9544 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv9563 :isa downstream-segment :pathwaycomponent mv9559 :has-determiner "WHAT" :modifier
    mv9562 :raw-text "downstream")
   (:var mv9559 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9562 :isa gene :plural t :raw-text "genes"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv9575 :isa be :subject mv9574 :predicate mv9577 :present "PRESENT")
   (:var mv9574 :isa what)
   (:var mv9577 :isa involve :theme mv9582 :participant mv9573 :has-determiner "THE")
   (:var mv9582 :isa regulate :cellular-process mv9580 :raw-text "regulation")
   (:var mv9580 :isa apoptosis :raw-text "apoptotic")
   (:var mv9573 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv9588 :isa involve :theme mv9590 :object mv9589 :present "PRESENT")
   (:var mv9590 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv9589 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv9596 :isa involve :theme mv9598 :object mv9597 :present "PRESENT")
   (:var mv9598 :isa bio-process :plural t :has-determiner "WHAT" :raw-text "processes")
   (:var mv9597 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv9610 :isa involve :object mv9609 :theme mv9607 :present "PRESENT")
   (:var mv9609 :isa gene :plural t :has-determiner "WHICH" :predication mv9601 :raw-text "genes")
   (:var mv9601 :isa regulate :object mv9609 :agent mv9599 :raw-text "regulated")
   (:var mv9599 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9607 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv9626 :isa involve :object mv9629 :theme mv9623 :present "PRESENT")
   (:var mv9629 :isa gene :plural t :organ mv9619 :has-determiner "WHICH" :predication mv9614
    :raw-text "genes")
   (:var mv9619 :isa liver :has-determiner "THE")
   (:var mv9614 :isa regulate :object mv9629 :agent mv9612 :raw-text "regulated")
   (:var mv9612 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9623 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv9641 :isa involve :object mv9640 :theme mv9638 :present "PRESENT")
   (:var mv9640 :isa gene :plural t :has-determiner "WHICH" :predication mv9632 :raw-text "genes")
   (:var mv9632 :isa regulate :object mv9640 :agent mv9630 :raw-text "regulated")
   (:var mv9630 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9638 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv9645 :isa bio-activate :agent mv9644 :object mv9643 :present "PRESENT" :raw-text
    "activates")
   (:var mv9644 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv9643 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv9647 :isa bio-activate :agent mv9646 :object mv9648 :present "PRESENT" :raw-text
    "activates")
   (:var mv9646 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv9648 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv9651 :isa phosphorylate :agent mv9649 :substrate mv9650 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv9649 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv9650 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv9654 :isa dephosphorylate :agent mv9652 :substrate mv9653 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv9652 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv9653 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv9656 :isa upregulate :agent mv9655 :object mv9657 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv9655 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9657 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv9661 :isa binding :binder mv9660 :direct-bindee mv9664 :present "PRESENT" :raw-text
    "binds")
   (:var mv9660 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv9664 :isa protein :has-determiner "THE" :modifier mv9659 :modifier mv9663 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv9659 :isa growth-factor :raw-text "growth factor")
   (:var mv9663 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv9665 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv9671 :isa binding :binder mv9678 :direct-bindee mv9679 :present "PRESENT" :raw-text
    "binds")
   (:var mv9678 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv9669
    :component mv9668)
   (:var mv9669 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv9668 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv9679 :isa bio-complex :quantifier mv9672 :raw-text "EGFR-EGF" :component mv9674
    :component mv9673)
   (:var mv9672 :isa another :word "another")
   (:var mv9674 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv9673 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv9685 :isa binding :binder mv9687 :direct-bindee mv9680 :present "PRESENT" :raw-text
    "binds")
   (:var mv9687 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv9682
    :component mv9682)
   (:var mv9682 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv9680 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv9688 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv9694 :isa binding :binder mv9690 :direct-bindee mv9691 :present "PRESENT" :raw-text
    "binds")
   (:var mv9690 :isa protein :predication mv9693 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv9693 :isa binding :direct-bindee mv9690 :binder mv9692 :raw-text "bound")
   (:var mv9692 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv9691 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv9698 :isa binding :binder mv9696 :direct-bindee mv9699 :present "PRESENT" :raw-text
    "binds")
   (:var mv9696 :isa protein :predication mv9697 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv9697 :isa binding :direct-bindee mv9696 :binder mv9695 :raw-text "bound")
   (:var mv9695 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv9699 :isa protein :predication mv9706 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv9706 :isa binding :direct-bindee mv9699 :that-rel t :bindee mv9705 :present "PRESENT"
    :negation mv9702 :raw-text "bound")
   (:var mv9705 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9702 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv9711 :isa binding :binder mv9710 :direct-bindee mv9712 :present "PRESENT" :raw-text
    "binds")
   (:var mv9710 :isa protein :predication mv9709 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv9709 :isa binding :direct-bindee mv9710 :binder mv9708 :raw-text "bound")
   (:var mv9708 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv9712 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv9722 :isa binding :binder mv9716 :direct-bindee mv9723 :present "PRESENT" :raw-text
    "binds")
   (:var mv9716 :isa protein :predication mv9724 :predication mv9715 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv9724 :isa binding :direct-bindee mv9716 :that-rel t :bindee mv9713 :present "PRESENT"
    :negation mv9719 :raw-text "bound")
   (:var mv9713 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv9719 :isa not :word "not")
   (:var mv9715 :isa binding :direct-bindee mv9716 :binder mv9714 :raw-text "bound")
   (:var mv9714 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv9723 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv9726 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv9731 :isa affect :manner mv9728 :agent mv9730 :object mv9727 :present "PRESENT"
    :raw-text "affect")
   (:var mv9728 :isa how)
   (:var mv9730 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9727 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv9740 :isa explicit-suggestion :suggestion mv9734 :marker let-as-directive)
   (:var mv9734 :isa highlight :theme mv9736 :present "PRESENT")
   (:var mv9736 :isa downstream-segment :pathwaycomponent mv9733 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv9733 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv9749 :isa explicit-suggestion :suggestion mv9743 :marker let-as-directive)
   (:var mv9743 :isa move-something-somewhere :goal mv9747 :theme mv9742 :present "PRESENT")
   (:var mv9747 :isa bottom :has-determiner "THE")
   (:var mv9742 :isa protein :predication mv9744 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9744 :isa phosphorylate :substrate mv9742 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv9758 :isa explicit-suggestion :suggestion mv9754 :marker let-as-directive)
   (:var mv9754 :isa put-something-somewhere :theme mv9751 :present "PRESENT")
   (:var mv9751 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv9766 :isa explicit-suggestion :suggestion mv9761 :marker let-as-directive)
   (:var mv9761 :isa show :at-relative-location mv9764 :|statement-OR-theme| mv9760 :present
    "PRESENT")
   (:var mv9764 :isa top-qua-location :has-determiner "THE")
   (:var mv9760 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv9777 :isa polar-question :statement mv9775)
   (:var mv9775 :isa decrease :agent mv9767 :object mv9771 :raw-text "decrease")
   (:var mv9767 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9771 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv9792 :isa polar-question :statement mv9789)
   (:var mv9789 :isa decrease :agent mv9778 :|affected-process-OR-object| mv9783 :raw-text
    "decrease")
   (:var mv9778 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9783 :isa bio-amount :measured-item mv9785 :has-determiner "THE" :raw-text "amount")
   (:var mv9785 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv9803 :isa polar-question :statement mv9801)
   (:var mv9801 :isa decrease :agent mv9795 :object mv9793 :raw-text "decrease")
   (:var mv9795 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv9793 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv9826 :isa polar-question :statement mv9825)
   (:var mv9825 :isa event-relation :subordinated-event mv9823 :event mv9820)
   (:var mv9823 :isa wh-question :statement mv9821 :wh if)
   (:var mv9821 :isa increase :|agent-OR-cause| mv9809 :level mv9819 :|affected-process-OR-object|
    mv9813 :raw-text "increase")
   (:var mv9809 :isa interlocutor :name "person-and-machine")
   (:var mv9819 :isa measurement :number mv9816) (:var mv9816 :isa number :value 10)
   (:var mv9813 :isa bio-amount :measured-item mv9804 :has-determiner "THE" :raw-text "amount")
   (:var mv9804 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9820 :isa vanish :agent mv9806 :raw-text "vanish")
   (:var mv9806 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv9851 :isa polar-question :statement mv9850)
   (:var mv9850 :isa event-relation :subordinated-event mv9848 :event mv9844)
   (:var mv9848 :isa wh-question :statement mv9845 :wh if)
   (:var mv9845 :isa increase :|agent-OR-cause| mv9832 :|multiplier-OR-cause| mv9843
    :|affected-process-OR-object| mv9836 :raw-text "increase")
   (:var mv9832 :isa interlocutor :name "person-and-machine")
   (:var mv9843 :isa measurement :number mv9840) (:var mv9840 :isa number :value 10)
   (:var mv9836 :isa bio-amount :measured-item mv9827 :has-determiner "THE" :raw-text "amount")
   (:var mv9827 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9844 :isa vanish :agent mv9829 :raw-text "vanish")
   (:var mv9829 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv9873 :isa polar-question :statement mv9872)
   (:var mv9872 :isa event-relation :subordinated-event mv9870 :event mv9867)
   (:var mv9870 :isa wh-question :statement mv9868 :wh if)
   (:var mv9868 :isa increase :|agent-OR-cause| mv9858 :|multiplier-OR-cause| mv9866 :object mv9853
    :raw-text "increase")
   (:var mv9858 :isa interlocutor :name "person-and-machine")
   (:var mv9866 :isa measurement :number mv9863) (:var mv9863 :isa number :value 10)
   (:var mv9853 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv9867 :isa vanish :agent mv9852 :raw-text "vanish")
   (:var mv9852 :isa protein :predication mv9855 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9855 :isa phosphorylate :substrate mv9852 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv9899 :isa polar-question :statement mv9898)
   (:var mv9898 :isa event-relation :subordinated-event mv9896 :event mv9892)
   (:var mv9896 :isa wh-question :statement mv9893 :wh if)
   (:var mv9893 :isa increase :|agent-OR-cause| mv9880 :|multiplier-OR-cause| mv9891
    :|affected-process-OR-object| mv9884 :raw-text "increase")
   (:var mv9880 :isa interlocutor :name "person-and-machine")
   (:var mv9891 :isa measurement :number mv9888) (:var mv9888 :isa number :value 10)
   (:var mv9884 :isa bio-amount :measured-item mv9875 :has-determiner "THE" :raw-text "amount")
   (:var mv9875 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv9892 :isa vanish :agent mv9874 :raw-text "vanish")
   (:var mv9874 :isa protein :predication mv9877 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9877 :isa phosphorylate :substrate mv9874 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv9911 :isa polar-question :statement mv9909)
   (:var mv9909 :isa increase :cause mv9903 :adverb mv9906 :raw-text "increase")
   (:var mv9903 :isa bio-amount :measured-item mv9900 :has-determiner "THE" :raw-text "amount")
   (:var mv9900 :isa protein :predication mv9905 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9905 :isa phosphorylate :substrate mv9900 :raw-text "phosphorylated")
   (:var mv9906 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?" (:var mv9921 :isa polar-question :statement mv9920)
   (:var mv9920 :isa copular-predication :item mv9912 :value mv9918 :predicate mv9914)
   (:var mv9912 :isa protein :predication mv9915 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv9915 :isa binding :direct-bindee mv9912 :bindee mv9913 :past "PAST" :raw-text "bound")
   (:var mv9913 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv9918 :isa high :adverb mv9917) (:var mv9917 :isa eventually :name "eventually")
   (:var mv9914 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv9930 :isa polar-question :statement mv9929)
   (:var mv9929 :isa copular-predication :item mv9922 :value mv9927 :predicate mv9924)
   (:var mv9922 :isa protein :predication mv9925 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9925 :isa binding :direct-bindee mv9922 :bindee mv9923 :past "PAST" :raw-text "bound")
   (:var mv9923 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv9927 :isa transient) (:var mv9924 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv9937 :isa polar-question :statement mv9936)
   (:var mv9936 :isa sustained :participant mv9932 :past "PAST")
   (:var mv9932 :isa protein :predication mv9934 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv9934 :isa binding :direct-bindee mv9932 :binder mv9931 :raw-text "bound")
   (:var mv9931 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv9944 :isa polar-question :statement mv9943)
   (:var mv9943 :isa copular-predication :item mv9938 :value mv9942 :predicate mv9939)
   (:var mv9938 :isa protein :predication mv9940 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9940 :isa phosphorylate :substrate mv9938 :raw-text "phosphorylated")
   (:var mv9942 :isa high :adverb mv9941) (:var mv9941 :isa always :name "always")
   (:var mv9939 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv9951 :isa polar-question :statement mv9950)
   (:var mv9950 :isa copular-predication :item mv9945 :value mv9949 :predicate mv9946)
   (:var mv9945 :isa protein :predication mv9947 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9947 :isa phosphorylate :substrate mv9945 :raw-text "phosphorylated")
   (:var mv9949 :isa high :adverb mv9948) (:var mv9948 :isa eventually :name "eventually")
   (:var mv9946 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv9958 :isa polar-question :statement mv9957)
   (:var mv9957 :isa copular-predication :item mv9952 :value mv9956 :predicate mv9953)
   (:var mv9952 :isa protein :predication mv9954 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9954 :isa phosphorylate :substrate mv9952 :raw-text "phosphorylated")
   (:var mv9956 :isa high :adverb mv9955) (:var mv9955 :isa ever :name "ever")
   (:var mv9953 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv9968 :isa polar-question :statement mv9967)
   (:var mv9967 :isa copular-predication :item mv9959 :value mv9962 :predicate mv9960)
   (:var mv9959 :isa protein :predication mv9961 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9961 :isa phosphorylate :substrate mv9959 :raw-text "phosphorylated")
   (:var mv9962 :isa high) (:var mv9960 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv9974 :isa polar-question :statement mv9973)
   (:var mv9973 :isa copular-predication :item mv9969 :value mv9972 :predicate mv9970)
   (:var mv9969 :isa protein :predication mv9971 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9971 :isa phosphorylate :substrate mv9969 :raw-text "phosphorylated")
   (:var mv9972 :isa high) (:var mv9970 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv9985 :isa polar-question :statement mv9979)
   (:var mv9979 :isa sustained :theme mv9975 :level mv9983 :past "PAST")
   (:var mv9975 :isa protein :predication mv9977 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9977 :isa phosphorylate :substrate mv9975 :raw-text "phosphorylated")
   (:var mv9983 :isa level :has-determiner "A" :predication mv9982 :raw-text "level")
   (:var mv9982 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv9991 :isa polar-question :statement mv9990)
   (:var mv9990 :isa sustained :participant mv9986 :past "PAST")
   (:var mv9986 :isa protein :predication mv9988 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9988 :isa phosphorylate :substrate mv9986 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv9997 :isa polar-question :statement mv9996)
   (:var mv9996 :isa copular-predication :item mv9992 :value mv9995 :predicate mv9993)
   (:var mv9992 :isa protein :predication mv9994 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9994 :isa phosphorylate :substrate mv9992 :raw-text "phosphorylated")
   (:var mv9995 :isa transient) (:var mv9993 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv10008 :isa polar-question :statement mv10007)
   (:var mv10007 :isa copular-predication :item mv10006 :value mv10004 :predicate mv10000)
   (:var mv10006 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv9999
    :component mv9998)
   (:var mv9999 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv9998 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv10004 :isa high :adverb mv10003) (:var mv10003 :isa ever :name "ever")
   (:var mv10000 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv10017 :isa polar-question :statement mv10014)
   (:var mv10014 :isa bio-form :agent mv10016 :past "PAST" :raw-text "formed")
   (:var mv10016 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv10010
    :component mv10009)
   (:var mv10010 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv10009 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv10040 :isa polar-question :statement mv10039)
   (:var mv10039 :isa event-relation :subordinated-event mv10035 :event mv10037)
   (:var mv10035 :isa wh-question :statement mv10029 :wh if)
   (:var mv10029 :isa increase :|agent-OR-cause| mv10027 :level mv10034 :object mv10018 :present
    "PRESENT" :raw-text "increase")
   (:var mv10027 :isa interlocutor :name "person-and-machine")
   (:var mv10034 :isa measurement :number mv10031) (:var mv10031 :isa number :value 10)
   (:var mv10018 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10037 :isa copular-predication :item mv10021 :value mv10025 :predicate mv10019)
   (:var mv10021 :isa bio-amount :measured-item mv10023 :has-determiner "THE" :raw-text "amount")
   (:var mv10023 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv10025 :isa low :adverb mv10024) (:var mv10024 :isa always :name "always")
   (:var mv10019 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv10065 :isa polar-question :statement mv10064)
   (:var mv10064 :isa event-relation :subordinated-event mv10060 :event mv10062)
   (:var mv10060 :isa wh-question :statement mv10052 :wh if)
   (:var mv10052 :isa increase :|agent-OR-cause| mv10050 :|multiplier-OR-cause| mv10058 :object
    mv10041 :present "PRESENT" :raw-text "increase")
   (:var mv10050 :isa interlocutor :name "person-and-machine")
   (:var mv10058 :isa measurement :number mv10055) (:var mv10055 :isa number :value 100)
   (:var mv10041 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10062 :isa copular-predication :item mv10044 :value mv10048 :predicate mv10042)
   (:var mv10044 :isa bio-amount :measured-item mv10046 :has-determiner "THE" :raw-text "amount")
   (:var mv10046 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv10048 :isa low :adverb mv10047) (:var mv10047 :isa always :name "always")
   (:var mv10042 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv10092 :isa polar-question :statement mv10091)
   (:var mv10091 :isa event-relation :subordinated-event mv10087 :event mv10089)
   (:var mv10087 :isa wh-question :statement mv10077 :wh if)
   (:var mv10077 :isa increase :|agent-OR-cause| mv10075 :level mv10085
    :|affected-process-OR-object| mv10079 :present "PRESENT" :raw-text "increase")
   (:var mv10075 :isa interlocutor :name "person-and-machine")
   (:var mv10085 :isa measurement :number mv10082) (:var mv10082 :isa number :value 100)
   (:var mv10079 :isa bio-amount :measured-item mv10066 :has-determiner "THE" :raw-text "amount")
   (:var mv10066 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10089 :isa copular-predication :item mv10069 :value mv10073 :predicate mv10067)
   (:var mv10069 :isa bio-amount :measured-item mv10071 :has-determiner "THE" :raw-text "amount")
   (:var mv10071 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv10073 :isa high :adverb mv10072) (:var mv10072 :isa ever :name "ever")
   (:var mv10067 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv10121 :isa polar-question :statement mv10120)
   (:var mv10120 :isa event-relation :subordinated-event mv10116 :event mv10118)
   (:var mv10116 :isa wh-question :statement mv10104 :wh if)
   (:var mv10104 :isa increase :|agent-OR-cause| mv10102 :|multiplier-OR-cause| mv10113
    :|affected-process-OR-object| mv10106 :present "PRESENT" :raw-text "increase")
   (:var mv10102 :isa interlocutor :name "person-and-machine")
   (:var mv10113 :isa measurement :number mv10110) (:var mv10110 :isa number :value 100)
   (:var mv10106 :isa bio-amount :measured-item mv10093 :has-determiner "THE" :raw-text "amount")
   (:var mv10093 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10118 :isa copular-predication :item mv10096 :value mv10100 :predicate mv10094)
   (:var mv10096 :isa bio-amount :measured-item mv10098 :has-determiner "THE" :raw-text "amount")
   (:var mv10098 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv10100 :isa high :adverb mv10099) (:var mv10099 :isa ever :name "ever")
   (:var mv10094 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv10131 :isa polar-question :statement mv10127)
   (:var mv10127 :isa phosphorylate :cause mv10125 :past "PAST" :raw-text "phosphorylated")
   (:var mv10125 :isa bio-amount :measured-item mv10122 :has-determiner "THE" :raw-text "amount")
   (:var mv10122 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv10142 :isa polar-question :statement mv10141)
   (:var mv10141 :isa copular-predication :item mv10135 :value mv10139 :predicate mv10133)
   (:var mv10135 :isa bio-amount :measured-item mv10132 :has-determiner "THE" :raw-text "amount")
   (:var mv10132 :isa protein :predication mv10137 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10137 :isa phosphorylate :substrate mv10132 :raw-text "phosphorylated")
   (:var mv10139 :isa high :adverb mv10138) (:var mv10138 :isa eventually :name "eventually")
   (:var mv10133 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv10153 :isa polar-question :statement mv10152)
   (:var mv10152 :isa copular-predication :item mv10146 :value mv10150 :predicate mv10144)
   (:var mv10146 :isa bio-amount :measured-item mv10143 :has-determiner "THE" :raw-text "amount")
   (:var mv10143 :isa protein :predication mv10148 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10148 :isa phosphorylate :substrate mv10143 :raw-text "phosphorylated")
   (:var mv10150 :isa high :adverb mv10149) (:var mv10149 :isa ever :name "ever")
   (:var mv10144 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv10164 :isa polar-question :statement mv10162)
   (:var mv10162 :isa increase :cause mv10157 :adverb mv10160 :raw-text "increasing")
   (:var mv10157 :isa bio-amount :measured-item mv10154 :has-determiner "THE" :raw-text "amount")
   (:var mv10154 :isa protein :predication mv10159 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10159 :isa phosphorylate :substrate mv10154 :raw-text "phosphorylated")
   (:var mv10160 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv10174 :isa polar-question :statement mv10173)
   (:var mv10173 :isa copular-predication :item mv10168 :value mv10171 :predicate mv10166)
   (:var mv10168 :isa bio-amount :measured-item mv10165 :has-determiner "THE" :raw-text "amount")
   (:var mv10165 :isa protein :predication mv10170 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10170 :isa phosphorylate :substrate mv10165 :raw-text "phosphorylated")
   (:var mv10171 :isa high) (:var mv10166 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv10185 :isa polar-question :statement mv10184)
   (:var mv10184 :isa copular-predication :item mv10178 :value mv10182 :predicate mv10176)
   (:var mv10178 :isa bio-amount :measured-item mv10175 :has-determiner "THE" :raw-text "amount")
   (:var mv10175 :isa protein :predication mv10180 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10180 :isa phosphorylate :substrate mv10175 :raw-text "phosphorylated")
   (:var mv10182 :isa high :adverb mv10181) (:var mv10181 :isa sometimes) (:var mv10176 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv10200 :isa polar-question :statement mv10193)
   (:var mv10193 :isa sustained :theme mv10189 :level mv10197 :past "PAST")
   (:var mv10189 :isa bio-amount :measured-item mv10186 :has-determiner "THE" :raw-text "amount")
   (:var mv10186 :isa protein :predication mv10191 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10191 :isa phosphorylate :substrate mv10186 :raw-text "phosphorylated")
   (:var mv10197 :isa level :has-determiner "A" :predication mv10196 :raw-text "level")
   (:var mv10196 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv10210 :isa polar-question :statement mv10208)
   (:var mv10208 :isa sustained :participant mv10204 :past "PAST")
   (:var mv10204 :isa bio-amount :measured-item mv10201 :has-determiner "THE" :raw-text "amount")
   (:var mv10201 :isa protein :predication mv10206 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10206 :isa phosphorylate :substrate mv10201 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv10220 :isa polar-question :statement mv10219)
   (:var mv10219 :isa copular-predication :item mv10214 :value mv10217 :predicate mv10212)
   (:var mv10214 :isa bio-amount :measured-item mv10211 :has-determiner "THE" :raw-text "amount")
   (:var mv10211 :isa protein :predication mv10216 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10216 :isa phosphorylate :substrate mv10211 :raw-text "phosphorylated")
   (:var mv10217 :isa transient) (:var mv10212 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv10231 :isa polar-question :statement mv10229)
   (:var mv10229 :isa copular-predication :item mv10224 :value mv10228 :predicate mv10227)
   (:var mv10224 :isa bio-amount :measured-item mv10221 :has-determiner "THE" :raw-text "amount")
   (:var mv10221 :isa protein :predication mv10226 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10226 :isa phosphorylate :substrate mv10221 :raw-text "phosphorylated")
   (:var mv10228 :isa high) (:var mv10227 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv10254 :isa polar-question :statement mv10253)
   (:var mv10253 :isa event-relation :subordinated-event mv10250 :event mv10251)
   (:var mv10250 :isa wh-question :statement mv10240 :wh if)
   (:var mv10240 :isa increase :|agent-OR-cause| mv10238 :level mv10248
    :|affected-process-OR-object| mv10242 :present "PRESENT" :raw-text "increase")
   (:var mv10238 :isa interlocutor :name "person-and-machine")
   (:var mv10248 :isa measurement :number mv10245) (:var mv10245 :isa number :value 100)
   (:var mv10242 :isa bio-amount :measured-item mv10233 :has-determiner "THE" :raw-text "amount")
   (:var mv10233 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv10251 :isa copular-predication :item mv10232 :value mv10236 :predicate mv10234)
   (:var mv10232 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv10236 :isa low :adverb mv10235) (:var mv10235 :isa eventually :name "eventually")
   (:var mv10234 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv10281 :isa polar-question :statement mv10280)
   (:var mv10280 :isa event-relation :subordinated-event mv10277 :event mv10278)
   (:var mv10277 :isa wh-question :statement mv10274 :wh if)
   (:var mv10274 :isa increase :|affected-process-OR-object| mv10263 :|multiplier-OR-cause| mv10272
    :raw-text "increased")
   (:var mv10263 :isa bio-amount :measured-item mv10256 :has-determiner "THE" :raw-text "amount")
   (:var mv10256 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv10272 :isa measurement :number mv10269) (:var mv10269 :isa number :value 100)
   (:var mv10278 :isa copular-predication :item mv10255 :value mv10260 :predicate mv10257)
   (:var mv10255 :isa protein :predication mv10258 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv10258 :isa active) (:var mv10260 :isa low :adverb mv10259)
   (:var mv10259 :isa eventually :name "eventually") (:var mv10257 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv10308 :isa polar-question :statement mv10307)
   (:var mv10307 :isa event-relation :subordinated-event mv10303 :event mv10305)
   (:var mv10303 :isa wh-question :statement mv10293 :wh if)
   (:var mv10293 :isa increase :|agent-OR-cause| mv10291 :level mv10301
    :|affected-process-OR-object| mv10295 :present "PRESENT" :raw-text "increase")
   (:var mv10291 :isa interlocutor :name "person-and-machine")
   (:var mv10301 :isa measurement :number mv10298) (:var mv10298 :isa number :value 100)
   (:var mv10295 :isa bio-amount :measured-item mv10283 :has-determiner "THE" :raw-text "amount")
   (:var mv10283 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv10305 :isa copular-predication :item mv10286 :value mv10289 :predicate mv10284)
   (:var mv10286 :isa bio-amount :measured-item mv10282 :has-determiner "THE" :raw-text "amount")
   (:var mv10282 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv10289 :isa low :adverb mv10288) (:var mv10288 :isa eventually :name "eventually")
   (:var mv10284 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv10336 :isa polar-question :statement mv10335)
   (:var mv10335 :isa event-relation :subordinated-event mv10331 :event mv10333)
   (:var mv10331 :isa wh-question :statement mv10321 :wh if)
   (:var mv10321 :isa increase :|agent-OR-cause| mv10319 :level mv10329
    :|affected-process-OR-object| mv10323 :present "PRESENT" :raw-text "increase")
   (:var mv10319 :isa interlocutor :name "person-and-machine")
   (:var mv10329 :isa measurement :number mv10326) (:var mv10326 :isa number :value 100)
   (:var mv10323 :isa bio-amount :measured-item mv10310 :has-determiner "THE" :raw-text "amount")
   (:var mv10310 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv10333 :isa copular-predication :item mv10313 :value mv10317 :predicate mv10311)
   (:var mv10313 :isa bio-amount :measured-item mv10309 :has-determiner "THE" :raw-text "amount")
   (:var mv10309 :isa protein :predication mv10315 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv10315 :isa active) (:var mv10317 :isa low :adverb mv10316)
   (:var mv10316 :isa always :name "always") (:var mv10311 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv10346 :isa explicit-suggestion :suggestion mv10340 :marker let-as-directive)
   (:var mv10340 :isa move-something-somewhere :at-relative-location mv10343 :theme mv10344
    :present "PRESENT")
   (:var mv10343 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv10344 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv10338 mv10339))
   (:var mv10338 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv10339 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv10349 :isa phosphorylate :agent mv10347 :substrate mv10348 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv10347 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv10348 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv10350 :isa move-something-somewhere :at-relative-location mv10353 :theme mv10355
    :present "PRESENT")
   (:var mv10353 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv10355 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv10358 :isa phosphorylate :agent mv10356 :substrate mv10357 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv10356 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv10357 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv10368 :isa explicit-suggestion :suggestion mv10361 :marker let-as-directive)
   (:var mv10361 :isa highlight :theme mv10363 :present "PRESENT")
   (:var mv10363 :isa upstream-segment :pathwaycomponent mv10360 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv10360 :isa protein :predication mv10366 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10366 :isa phosphorylate :substrate mv10360 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv10377 :isa explicit-suggestion :suggestion mv10371 :marker let-as-directive)
   (:var mv10371 :isa show :at-relative-location mv10375 :|statement-OR-theme| mv10370 :present
    "PRESENT")
   (:var mv10375 :isa top-qua-location :has-determiner "THE")
   (:var mv10370 :isa protein :predication mv10372 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv10372 :isa phosphorylate :substrate mv10370 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv10390 :isa explicit-suggestion :suggestion mv10380 :marker let-as-directive)
   (:var mv10380 :isa show :at-relative-location mv10387 :|statement-OR-theme| mv10382 :present
    "PRESENT")
   (:var mv10387 :isa top-qua-location :has-determiner "THE")
   (:var mv10382 :isa downstream-segment :pathwaycomponent mv10379 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv10379 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv10401 :isa explicit-suggestion :suggestion mv10392 :marker let-as-directive)
   (:var mv10392 :isa move-something-somewhere :goal mv10398 :theme mv10399 :present "PRESENT")
   (:var mv10398 :isa top-qua-location :has-determiner "THE")
   (:var mv10399 :isa element :plural t :modifier mv10393)
   (:var mv10393 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv10406 :isa affect :manner mv10403 :agent mv10405 :object mv10402 :present "PRESENT"
    :raw-text "affect")
   (:var mv10403 :isa how)
   (:var mv10405 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10402 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv10410 :isa affect :manner mv10408 :agent mv10407 :object mv10411 :present "PRESENT"
    :raw-text "affect")
   (:var mv10408 :isa how)
   (:var mv10407 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv10411 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv10414 :isa be :subject mv10413 :predicate mv10416 :present "PRESENT")
   (:var mv10413 :isa what) (:var mv10416 :isa path :endpoints mv10420 :has-determiner "THE")
   (:var mv10420 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv10418 mv10412))
   (:var mv10418 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10412 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv10425 :isa affect :manner mv10423 :agent mv10422 :object mv10426 :present "PRESENT"
    :raw-text "affect")
   (:var mv10423 :isa how)
   (:var mv10422 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv10426 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv10431 :isa affect :manner mv10429 :agent mv10427 :object mv10428 :present "PRESENT"
    :raw-text "affect")
   (:var mv10429 :isa how)
   (:var mv10427 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv10428 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv10436 :isa affect :manner mv10433 :agent mv10435 :object mv10432 :present "PRESENT"
    :raw-text "affect")
   (:var mv10433 :isa how)
   (:var mv10435 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10432 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv10440 :isa affect :manner mv10437 :agent mv10439 :object mv10441 :present "PRESENT"
    :raw-text "affect")
   (:var mv10437 :isa how)
   (:var mv10439 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv10441 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv10448 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv10452 :isa affect :agent mv10454 :object mv10453 :present "PRESENT" :raw-text "affect")
   (:var mv10454 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv10453 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv10458 :isa bio-activate :agent mv10460 :object mv10459 :present "PRESENT" :raw-text
    "activate")
   (:var mv10460 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv10459 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv10469 :isa explicit-suggestion :suggestion mv10464 :marker let-as-directive)
   (:var mv10464 :isa learning :statement mv10462 :present "PRESENT")
   (:var mv10462 :isa protein :context mv10463 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv10463 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is its relationship with BRAF?"
   (:var mv10471 :isa be :subject mv10470 :predicate mv10473 :present "PRESENT")
   (:var mv10470 :isa what) (:var mv10473 :isa relationship :patient mv10475 :modifier mv10472)
   (:var mv10475 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10472 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv10479 :isa be :subject mv10478 :predicate mv10481 :present "PRESENT")
   (:var mv10478 :isa what) (:var mv10481 :isa relationship :patient mv10477 :modifier mv10480)
   (:var mv10477 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv10480 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv10486 :isa phosphorylate :agent mv10484 :substrate mv10485 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv10484 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv10485 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv10488 :isa what))
  ("Let's stop learning about AKT1." (:var mv10496 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv10505 :isa be :subject mv10504 :predicate mv10508 :present "PRESENT")
   (:var mv10504 :isa what)
   (:var mv10508 :isa response :beneficiary mv10517 :has-determiner "THE" :modifier mv10507
    :raw-text "response")
   (:var mv10517 :isa cell-type :plural t :mutation mv10515)
   (:var mv10515 :isa alter :plural t :|agent-OR-object| mv10503 :raw-text "alterations")
   (:var mv10503 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv10507 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv10521 :isa be :subject mv10520 :predicate mv10524 :present "PRESENT")
   (:var mv10520 :isa what)
   (:var mv10524 :isa response :cell-type mv10533 :has-determiner "THE" :modifier mv10523 :raw-text
    "response")
   (:var mv10533 :isa cell-type :plural t :mutation mv10531)
   (:var mv10531 :isa alter :plural t :|agent-OR-object| mv10519 :raw-text "alterations")
   (:var mv10519 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv10523 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv10536 :isa be :subject mv10535 :predicate mv10539 :present "PRESENT")
   (:var mv10535 :isa what)
   (:var mv10539 :isa frequency :measured-item mv10541 :has-determiner "THE" :measured-item mv10538
    :raw-text "frequency")
   (:var mv10541 :isa protein :context mv10543 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv10543 :isa glioblastoma) (:var mv10538 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv10549 :isa be :subject mv10548 :predicate mv10552 :present "PRESENT")
   (:var mv10548 :isa what)
   (:var mv10552 :isa frequency :measured-item mv10546 :has-determiner "THE" :measured-item mv10551
    :raw-text "frequency")
   (:var mv10546 :isa protein :context mv10547 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv10547 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv10551 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv10558 :isa show :|statement-OR-theme| mv10572 :beneficiary mv10559 :present "PRESENT")
   (:var mv10572 :isa mutation :plural t :object mv10568 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv10568 :isa collection :context mv10557 :raw-text "PTEN and BRAF" :type protein :number 2
    :items (mv10564 mv10566))
   (:var mv10557 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv10564 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv10566 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10559 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv10574 :isa show :|statement-OR-theme| mv10585 :beneficiary mv10575 :present "PRESENT")
   (:var mv10585 :isa mutation :plural t :object mv10580 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv10580 :isa protein :context mv10573 :raw-text "PTEN" :uid "UP:P60484" :name
    "PTEN_HUMAN")
   (:var mv10573 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv10575 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv10588 :isa be :subject mv10587 :predicate mv10598 :present "PRESENT")
   (:var mv10587 :isa what)
   (:var mv10598 :isa mutation :plural t :object mv10593 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv10593 :isa protein :context mv10586 :raw-text "PTEN" :uid "UP:P60484" :name
    "PTEN_HUMAN")
   (:var mv10586 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv10601 :isa be :subject mv10600 :predicate mv10613 :present "PRESENT")
   (:var mv10600 :isa what) (:var mv10613 :isa quality-predicate :item mv10611 :attribute mv10607)
   (:var mv10611 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv10599 mv10610))
   (:var mv10599 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv10610 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10607 :isa location-of :has-determiner "THE" :predication mv10605 :modifier mv10606)
   (:var mv10605 :isa likely :comparative mv10603)
   (:var mv10603 :isa superlative-quantifier :name "most")
   (:var mv10606 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv10629 :isa polar-question :statement mv10624)
   (:var mv10624 :isa there-exists :value mv10628 :predicate mv10616)
   (:var mv10628 :isa upstream-segment :plural t :pathwaycomponent mv10625 :predication mv10618
    :raw-text "upstreams")
   (:var mv10625 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv10614 mv10623))
   (:var mv10614 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv10623 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10618 :isa common) (:var mv10616 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv10633 :isa be :subject mv10632 :predicate mv10645 :present "PRESENT")
   (:var mv10632 :isa what)
   (:var mv10645 :isa upstream-segment :plural t :pathwaycomponent mv10641 :has-determiner "THE"
    :predication mv10635 :raw-text "upstreams")
   (:var mv10641 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv10630 mv10639 mv10631))
   (:var mv10630 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv10639 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10631 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv10635 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv10658 :isa copular-predication :item mv10655 :value mv10646 :predicate mv10652)
   (:var mv10655 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv10646 :isa mutual-exclusivity :disease mv10648 :alternative mv10647)
   (:var mv10648 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv10647 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv10652 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv10663 :isa be :subject mv10662 :predicate mv10673 :present "PRESENT")
   (:var mv10662 :isa what)
   (:var mv10673 :isa gene :disease mv10661 :has-determiner "THE" :predication mv10659 :raw-text
    "genes")
   (:var mv10661 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv10659 :isa mutual-exclusivity :alternative mv10660)
   (:var mv10660 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv10677 :isa be :subject mv10676 :predicate mv10680 :present "PRESENT")
   (:var mv10676 :isa what)
   (:var mv10680 :isa significance :result mv10675 :agent mv10674 :has-determiner "THE" :modifier
    mv10679)
   (:var mv10675 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv10674 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv10679 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv10688 :isa be :subject mv10687 :predicate mv10691 :present "PRESENT")
   (:var mv10687 :isa what)
   (:var mv10691 :isa significance :agent mv10685 :has-determiner "THE" :modifier mv10690)
   (:var mv10685 :isa protein :context mv10686 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv10686 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv10690 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv10697 :isa be :subject mv10696 :predicate mv10700 :present "PRESENT")
   (:var mv10696 :isa what)
   (:var mv10700 :isa significance :agent mv10702 :has-determiner "THE" :modifier mv10699)
   (:var mv10702 :isa protein :context mv10705 :raw-text "PTEN" :uid "UP:P60484" :name
    "PTEN_HUMAN")
   (:var mv10705 :isa cancer :organ mv10704 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv10704 :isa pancreas) (:var mv10699 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv10709 :isa be :subject mv10708 :predicate mv10712 :present "PRESENT")
   (:var mv10708 :isa what)
   (:var mv10712 :isa significance :agent mv10714 :has-determiner "THE" :modifier mv10711)
   (:var mv10714 :isa protein :context mv10717 :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN")
   (:var mv10717 :isa cancer :modifier mv10716 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv10716 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv10711 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv10721 :isa phosphorylate :agent mv10720 :substrate mv10722 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv10720 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv10722 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv10724 :isa binding :binder mv10723 :direct-bindee mv10725 :present "PRESENT" :raw-text
    "binds")
   (:var mv10723 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv10725 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv10731 :isa binding :binder mv10727 :direct-bindee mv10726 :present "PRESENT" :raw-text
    "binds")
   (:var mv10727 :isa protein :predication mv10728 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv10728 :isa binding :direct-bindee mv10727 :bindee mv10730 :past "PAST" :raw-text
    "bound")
   (:var mv10730 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv10726 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv10737 :isa copular-predication :item mv10734 :value mv10736 :predicate mv10735)
   (:var mv10734 :isa protein-family :predication mv10733 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv10733 :isa phosphorylate :substrate mv10734 :raw-text "Phosphorylated")
   (:var mv10736 :isa active) (:var mv10735 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv10738 :isa protein :predication mv10740 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv10740 :isa phosphorylate :substrate mv10738 :target mv10739 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv10739 :isa protein :site mv10745 :modifier mv10746 :raw-text "MAPK1" :uid "UP:P28482"
    :name "MK01_HUMAN")
   (:var mv10745 :isa residue-on-protein :raw-text "S220" :position mv10744 :amino-acid mv10743)
   (:var mv10744 :isa number :value 220) (:var mv10743 :isa amino-acid :name "serine" :letter "S")
   (:var mv10746 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv10751 :isa transcribe :agent mv10748 :object mv10749 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv10748 :isa protein :predication mv10750 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv10750 :isa active)
   (:var mv10749 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv10780 :isa polar-question :statement mv10779)
   (:var mv10779 :isa event-relation :subordinated-event mv10775 :event mv10777)
   (:var mv10775 :isa wh-question :statement mv10763 :wh if)
   (:var mv10763 :isa increase :|agent-OR-cause| mv10761 :|multiplier-OR-cause| mv10772
    :|affected-process-OR-object| mv10765 :present "PRESENT" :raw-text "increase")
   (:var mv10761 :isa interlocutor :name "person-and-machine")
   (:var mv10772 :isa measurement :number mv10769) (:var mv10769 :isa number :value 10)
   (:var mv10765 :isa bio-amount :measured-item mv10752 :has-determiner "THE" :raw-text "amount")
   (:var mv10752 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10777 :isa copular-predication :item mv10755 :value mv10759 :predicate mv10753)
   (:var mv10755 :isa bio-amount :measured-item mv10757 :has-determiner "THE" :raw-text "amount")
   (:var mv10757 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv10759 :isa high :adverb mv10758) (:var mv10758 :isa ever :name "ever")
   (:var mv10753 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv10792 :isa polar-question :statement mv10790)
   (:var mv10790 :isa decrease :agent mv10782 :object mv10786 :raw-text "decrease")
   (:var mv10782 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv10786 :isa protein-family :predication mv10785 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv10785 :isa phosphorylate :substrate mv10786 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv10803 :isa polar-question :statement mv10801)
   (:var mv10801 :isa decrease :agent mv10794 :object mv10797 :raw-text "decrease")
   (:var mv10794 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv10797 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv10808 :isa regulate :manner mv10805 :agent mv10807 :object mv10804 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10805 :isa how)
   (:var mv10807 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10804 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv10813 :isa bio-activate :manner mv10810 :agent mv10812 :object mv10809 :present
    "PRESENT" :raw-text "activate")
   (:var mv10810 :isa how)
   (:var mv10812 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv10809 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv10819 :isa polar-question :statement mv10818)
   (:var mv10818 :isa inhibit :agent mv10815 :object mv10817 :raw-text "inhibit")
   (:var mv10815 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv10817 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv10832 :isa share :object mv10831 :participant mv10830 :present "PRESENT" :raw-text
    "shared")
   (:var mv10831 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv10830 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv10827 mv10828 mv10822))
   (:var mv10827 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10828 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv10822 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv10835 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv10844 :isa be :subject mv10843 :predicate mv10845 :present "PRESENT")
   (:var mv10843 :isa what)
   (:var mv10845 :isa upstream-segment :pathwaycomponent mv10842 :raw-text "upstream")
   (:var mv10842 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv10853 :isa want :agent mv10850 :theme mv10861 :present "PRESENT")
   (:var mv10850 :isa interlocutor :name "speaker")
   (:var mv10861 :isa bio-find :agent mv10850 :object mv10858 :present "PRESENT" :raw-text "find")
   (:var mv10858 :isa treatment :disease mv10849 :has-determiner "A" :raw-text "treatment")
   (:var mv10849 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv10870 :isa bio-use :object mv10863 :modal mv10864 :agent mv10865 :present "PRESENT"
    :raw-text "use")
   (:var mv10863 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv10864 :isa could)
   (:var mv10865 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv10883 :isa polar-question :statement mv10879)
   (:var mv10879 :isa there-exists :value mv10882 :predicate mv10872)
   (:var mv10882 :isa drug :plural t :target mv10878 :quantifier mv10874 :raw-text "drugs")
   (:var mv10878 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10874 :isa any :word "any") (:var mv10872 :isa syntactic-there))
  ("Are they kinases?" (:var mv10888 :isa polar-question :statement mv10884)
   (:var mv10884 :isa be :subject mv10885 :predicate mv10887)
   (:var mv10885 :isa pronoun/plural :word "they")
   (:var mv10887 :isa kinase :plural t :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv10898 :isa polar-question :statement mv10892)
   (:var mv10892 :isa bio-find :agent mv10890 :object mv10894 :modal "CAN" :raw-text "find")
   (:var mv10890 :isa interlocutor :name "hearer")
   (:var mv10894 :isa drug :target mv10896 :has-determiner "A" :raw-text "drug")
   (:var mv10896 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv10920 :isa polar-question :statement mv10904)
   (:var mv10904 :isa tell :agent mv10903 :theme mv10919 :beneficiary mv10905 :modal "CAN")
   (:var mv10903 :isa interlocutor :name "hearer")
   (:var mv10919 :isa transcription-factor :plural t :predication mv10917 :quantifier mv10906
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv10917 :isa share :object mv10919 :that-rel t :participant mv10914 :modal "CAN" :raw-text
    "shared")
   (:var mv10914 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv10901 mv10913))
   (:var mv10901 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10913 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10906 :isa all :word "all") (:var mv10905 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv10938 :isa polar-question :statement mv10926)
   (:var mv10926 :isa tell :agent mv10925 :theme mv10936 :theme mv10927 :modal "CAN")
   (:var mv10925 :isa interlocutor :name "hearer")
   (:var mv10936 :isa share :object mv10935 :participant mv10934 :modal "CAN" :raw-text "shared")
   (:var mv10935 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv10934 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv10923 mv10933))
   (:var mv10923 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10933 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10927 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv10952 :isa polar-question :statement mv10951)
   (:var mv10951 :isa know :agent mv10940 :statement mv10950)
   (:var mv10940 :isa interlocutor :name "hearer")
   (:var mv10950 :isa drug :plural t :target mv10946 :quantifier mv10942 :raw-text "drugs")
   (:var mv10946 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10942 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv10964 :isa polar-question :statement mv10962)
   (:var mv10962 :isa regulate :agent mv10953 :object mv10958 :raw-text "regulate")
   (:var mv10953 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10958 :isa gene :organ mv10961 :has-determiner "THE" :expresses mv10957 :raw-text
    "gene")
   (:var mv10961 :isa lung :has-determiner "THE")
   (:var mv10957 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv10975 :isa polar-question :statement mv10973)
   (:var mv10973 :isa regulate :agent mv10965 :object mv10970 :raw-text "regulate")
   (:var mv10965 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10970 :isa gene :organ mv10972 :has-determiner "THE" :expresses mv10966 :raw-text
    "gene")
   (:var mv10972 :isa liver)
   (:var mv10966 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv10983 :isa polar-question :statement mv10982)
   (:var mv10982 :isa regulate :agent mv10976 :object mv10981 :raw-text "regulate")
   (:var mv10976 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10981 :isa gene :has-determiner "THE" :expresses mv10977 :raw-text "gene")
   (:var mv10977 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv10995 :isa polar-question :statement mv10993)
   (:var mv10993 :isa regulate :agent mv10984 :object mv10989 :raw-text "regulate")
   (:var mv10984 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10989 :isa gene :organ mv10992 :has-determiner "THE" :expresses mv10988 :raw-text
    "gene")
   (:var mv10992 :isa lung :has-determiner "THE")
   (:var mv10988 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv11002 :isa polar-question :statement mv11001)
   (:var mv11001 :isa target :agent mv10996 :object mv10997 :raw-text "target")
   (:var mv10996 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv10997 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv11009 :isa polar-question :statement mv11008)
   (:var mv11008 :isa target :agent mv11003 :object mv11004 :raw-text "target")
   (:var mv11003 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv11004 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv11016 :isa polar-question :statement mv11015)
   (:var mv11015 :isa target :agent mv11010 :object mv11011 :raw-text "target")
   (:var mv11010 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv11011 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv11023 :isa polar-question :statement mv11022)
   (:var mv11022 :isa target :agent mv11017 :object mv11018 :raw-text "target")
   (:var mv11017 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv11018 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv11032 :isa polar-question :statement mv11030)
   (:var mv11030 :isa regulate :agent mv11024 :object mv11029 :raw-text "regulate")
   (:var mv11024 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11029 :isa bio-entity :organ mv11028 :name "cfors") (:var mv11028 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv11041 :isa polar-question :statement mv11039)
   (:var mv11039 :isa regulate :agent mv11033 :object mv11036 :raw-text "regulate")
   (:var mv11033 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11036 :isa protein :organ mv11038 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv11038 :isa liver))
  ("Does it regulate cfos in brain" (:var mv11050 :isa polar-question :statement mv11048)
   (:var mv11048 :isa regulate :|agent-OR-cause| mv11043 :object mv11045 :raw-text "regulate")
   (:var mv11043 :isa pronoun/inanimate :word "it")
   (:var mv11045 :isa protein :organ mv11047 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv11047 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv11056 :isa polar-question :statement mv11055)
   (:var mv11055 :isa regulate :agent mv11051 :object mv11054 :raw-text "regulate")
   (:var mv11051 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11054 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv11070 :isa polar-question :statement mv11067)
   (:var mv11067 :isa regulate :agent mv11057 :object mv11062 :raw-text "regulate")
   (:var mv11057 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11062 :isa gene :cell-type mv11068 :has-determiner "THE" :expresses mv11061 :raw-text
    "gene")
   (:var mv11068 :isa cell-type :plural t :non-cellular-location mv11064)
   (:var mv11064 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv11061 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv11078 :isa polar-question :statement mv11077)
   (:var mv11077 :isa utilize :participant mv11075 :object mv11072 :raw-text "utilize")
   (:var mv11075 :isa pathway :has-determiner "THE" :modifier mv11071 :raw-text "pathway")
   (:var mv11071 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv11072 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv11088 :isa polar-question :statement mv11087)
   (:var mv11087 :isa utilize :participant mv11085 :object mv11079 :raw-text "utilize")
   (:var mv11085 :isa pathway :has-determiner "THE" :modifier mv11082 :raw-text "pathway")
   (:var mv11082 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv11079 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv11090 :isa give :theme mv11097 :beneficiary mv11091 :present "PRESENT")
   (:var mv11097 :isa evidence :statement mv11096 :has-determiner "THE")
   (:var mv11096 :isa decrease :agent mv11095 :object mv11089 :present "PRESENT" :raw-text
    "decreases")
   (:var mv11095 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11089 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv11091 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv11099 :isa give :theme mv11106 :beneficiary mv11100 :present "PRESENT")
   (:var mv11106 :isa evidence :statement mv11105 :has-determiner "THE")
   (:var mv11105 :isa regulate :agent mv11104 :object mv11098 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11104 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11098 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv11100 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv11111 :isa polar-question :statement mv11107)
   (:var mv11107 :isa be :subject mv11108 :predicate mv11110)
   (:var mv11108 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11110 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv11118 :isa polar-question :statement mv11114)
   (:var mv11114 :isa inhibit :object mv11112 :agent mv11116 :past "PAST" :raw-text "inhibited")
   (:var mv11112 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv11116 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv11127 :isa polar-question :statement mv11122)
   (:var mv11122 :isa be :subject mv11119 :predicate mv11120)
   (:var mv11119 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11120 :isa transcription-factor :controlled-gene mv11125 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv11125 :isa gene :expresses mv11121 :raw-text "gene")
   (:var mv11121 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv11146 :isa polar-question :statement mv11130)
   (:var mv11130 :isa be :subject mv11128 :predicate mv11145)
   (:var mv11128 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11145 :isa regulator :plural t :quantifier mv11133 :theme mv11140 :has-determiner "THE"
    :raw-text "regulators")
   (:var mv11133 :isa number :value 1)
   (:var mv11140 :isa gene :has-determiner "THE" :expresses mv11129 :raw-text "gene")
   (:var mv11129 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv11154 :isa polar-question :statement mv11148)
   (:var mv11148 :isa be :subject mv11149 :predicate mv11151)
   (:var mv11149 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv11151 :isa inhibitor :protein mv11147 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv11147 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv11162 :isa polar-question :statement mv11155)
   (:var mv11155 :isa be :subject mv11156 :predicate mv11158)
   (:var mv11156 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv11158 :isa inhibitor :|target-OR-protein| mv11160 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv11160 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv11167 :isa polar-question :statement mv11163)
   (:var mv11163 :isa be :subject mv11166 :predicate mv11165)
   (:var mv11166 :isa bio-entity :name "fakeprotein")
   (:var mv11165 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv11172 :isa polar-question :statement mv11169)
   (:var mv11169 :isa be :subject mv11168 :predicate mv11171)
   (:var mv11168 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv11171 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv11179 :isa polar-question :statement mv11174)
   (:var mv11174 :isa be :subject mv11173 :predicate mv11178)
   (:var mv11173 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11178 :isa regulator :has-determiner "AN" :cellular-process mv11176 :raw-text
    "regulator")
   (:var mv11176 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv11192 :isa polar-question :statement mv11182)
   (:var mv11182 :isa involve :object mv11180 :|context-OR-theme| mv11190 :past "PAST")
   (:var mv11180 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11190 :isa pathway :plural t :quantifier mv11184 :cellular-process mv11185 :raw-text
    "pathways")
   (:var mv11184 :isa any :word "any") (:var mv11185 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?"
   (:var mv11201 :isa polar-question :statement mv11195)
   (:var mv11195 :isa involve :object mv11193 :theme mv11199 :past "PAST")
   (:var mv11193 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11199 :isa regulate :cellular-process mv11197 :raw-text "regulation")
   (:var mv11197 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?"
   (:var mv11209 :isa polar-question :statement mv11204)
   (:var mv11204 :isa involve :object mv11202 :theme mv11206 :past "PAST")
   (:var mv11202 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11206 :isa regulate :affected-process mv11207 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv11207 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv11215 :isa phosphorylate :substrate mv11216 :agent mv11214 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv11216 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11214 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv11226 :isa polar-question :statement mv11217)
   (:var mv11217 :isa be :subject mv11225 :predicate mv11224)
   (:var mv11225 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv11222 :word "one")
   (:var mv11222 :isa number :value 1)
   (:var mv11224 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv11238 :isa polar-question :statement mv11237)
   (:var mv11237 :isa there-exists :value mv11231 :predicate mv11228)
   (:var mv11231 :isa drug :predication mv11235 :has-determiner "A" :raw-text "drug")
   (:var mv11235 :isa target :agent mv11231 :that-rel t :object mv11236 :present "PRESENT"
    :raw-text "targets")
   (:var mv11236 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv11228 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv11251 :isa polar-question :statement mv11249)
   (:var mv11249 :isa there-exists :value mv11246 :predicate mv11241)
   (:var mv11246 :isa pathway :predication mv11247 :has-determiner "AN" :cellular-process mv11244
    :raw-text "pathway")
   (:var mv11247 :isa regulate :affected-process mv11246 :agent mv11239 :past "PAST" :raw-text
    "regulated")
   (:var mv11239 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11244 :isa apoptosis :raw-text "apoptotic") (:var mv11241 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv11267 :isa polar-question :statement mv11264)
   (:var mv11264 :isa there-exists :value mv11259 :predicate mv11254)
   (:var mv11259 :isa pathway :predication mv11265 :has-determiner "AN" :cellular-process mv11257
    :raw-text "pathway")
   (:var mv11265 :isa regulate :affected-process mv11259 :that-rel t :agent mv11252 :present
    "PRESENT" :raw-text "regulated")
   (:var mv11252 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11257 :isa apoptosis :raw-text "apoptotic") (:var mv11254 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv11269 :isa let :complement mv11287 :present "PRESENT")
   (:var mv11287 :isa know :agent mv11270 :statement mv11286 :present "PRESENT")
   (:var mv11270 :isa interlocutor :name "speaker")
   (:var mv11286 :isa wh-question :statement mv11282 :wh if)
   (:var mv11282 :isa there-exists :value mv11285 :predicate mv11275)
   (:var mv11285 :isa gene :plural t :predication mv11281 :quantifier mv11276 :cellular-process
    mv11277 :raw-text "genes")
   (:var mv11281 :isa regulate :object mv11285 :agent mv11268 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11268 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11276 :isa any :word "any") (:var mv11277 :isa apoptosis :raw-text "apoptotic")
   (:var mv11275 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv11289 :isa let :complement mv11298 :present "PRESENT")
   (:var mv11298 :isa know :agent mv11290 :statement mv11297 :present "PRESENT")
   (:var mv11290 :isa interlocutor :name "speaker")
   (:var mv11297 :isa gene :plural t :predication mv11295 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv11295 :isa regulate :object mv11297 :agent mv11288 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11288 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv11300 :isa list :theme mv11311 :present "PRESENT")
   (:var mv11311 :isa gene :plural t :predication mv11305 :quantifier mv11301 :has-determiner "THE"
    :raw-text "genes")
   (:var mv11305 :isa regulate :object mv11311 :agent mv11309 :past "PAST" :raw-text "regulated")
   (:var mv11309 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11299 mv11308))
   (:var mv11299 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11308 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11301 :isa all :word "all"))
  ("List genes regulated by elk1 and srf"
   (:var mv11315 :isa list :theme mv11317 :present "PRESENT")
   (:var mv11317 :isa gene :plural t :predication mv11318 :raw-text "genes")
   (:var mv11318 :isa regulate :object mv11317 :agent mv11322 :past "PAST" :raw-text "regulated")
   (:var mv11322 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11314 mv11321))
   (:var mv11314 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11321 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv11326 :isa list :theme mv11340 :present "PRESENT")
   (:var mv11340 :isa gene :plural t :predication mv11338 :quantifier mv11327 :raw-text "genes")
   (:var mv11338 :isa regulate :object mv11340 :that-rel t :agent mv11336 :present "PRESENT"
    :raw-text "regulated")
   (:var mv11336 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11325 mv11335))
   (:var mv11325 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11335 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11327 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv11342 :isa list :theme mv11348 :present "PRESENT")
   (:var mv11348 :isa evidence :statement mv11347 :has-determiner "THE")
   (:var mv11347 :isa decrease :agent mv11346 :object mv11341 :present "PRESENT" :raw-text
    "decreases")
   (:var mv11346 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11341 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv11350 :isa name-something :patient mv11354 :present "PRESENT")
   (:var mv11354 :isa gene :plural t :predication mv11355 :raw-text "genes")
   (:var mv11355 :isa regulate :object mv11354 :agent mv11359 :past "PAST" :raw-text "regulated")
   (:var mv11359 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11349 mv11358))
   (:var mv11349 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11358 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv11380 :isa copular-predication :item mv11383 :value mv11373 :predicate mv11372)
   (:var mv11383 :isa gene :plural t :has-determiner "WHICH" :predication mv11369 :has-determiner
    "THE" :cellular-process mv11365 :raw-text "genes")
   (:var mv11369 :isa regulate :object mv11383 :agent mv11362 :past "PAST" :raw-text "regulated")
   (:var mv11362 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11365 :isa apoptosis :raw-text "apoptotic") (:var mv11373 :isa active :organ mv11376)
   (:var mv11376 :isa liver :has-determiner "THE") (:var mv11372 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv11402 :isa copular-predication :item mv11404 :value mv11395 :predicate mv11394)
   (:var mv11404 :isa gene :plural t :has-determiner "WHICH" :predication mv11392 :has-determiner
    "THE" :cellular-process mv11388 :raw-text "genes")
   (:var mv11392 :isa regulate :object mv11404 :agent mv11385 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11385 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11388 :isa apoptosis :raw-text "apoptotic") (:var mv11395 :isa active :organ mv11398)
   (:var mv11398 :isa liver :has-determiner "THE") (:var mv11394 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv11420 :isa copular-predication :item mv11423 :value mv11417 :predicate mv11416)
   (:var mv11423 :isa gene :plural t :has-determiner "WHICH" :predication mv11411 :has-determiner
    "THE" :raw-text "genes")
   (:var mv11411 :isa regulate :object mv11423 :agent mv11406 :organ mv11414 :present "PRESENT"
    :raw-text "regulates")
   (:var mv11406 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11414 :isa liver :has-determiner "THE")
   (:var mv11417 :isa apoptosis :raw-text "apoptotic") (:var mv11416 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv11438 :isa copular-predication :item mv11440 :value mv11434 :predicate mv11433)
   (:var mv11440 :isa gene :plural t :has-determiner "WHICH" :predication mv11431 :has-determiner
    "THE" :non-cellular-location mv11428 :raw-text "genes")
   (:var mv11431 :isa regulate :object mv11440 :agent mv11425 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11425 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11428 :isa liver) (:var mv11434 :isa apoptosis :raw-text "apoptotic")
   (:var mv11433 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv11455 :isa copular-predication :item mv11457 :value mv11451 :predicate mv11450)
   (:var mv11457 :isa gene :plural t :has-determiner "WHICH" :predication mv11448 :has-determiner
    "THE" :non-cellular-location mv11445 :raw-text "genes")
   (:var mv11448 :isa regulate :object mv11457 :agent mv11442 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11442 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11445 :isa liver) (:var mv11451 :isa apoptosis :raw-text "apoptotic")
   (:var mv11450 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv11461 :isa bio-find :object mv11463 :present "PRESENT" :adverb mv11459 :raw-text "find")
   (:var mv11463 :isa pathway :plural t :predication mv11464 :raw-text "pathways")
   (:var mv11464 :isa involve :theme mv11463 :object mv11465 :progressive "PROGRESSIVE")
   (:var mv11465 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11459 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv11468 :isa show :|statement-OR-theme| mv11476 :beneficiary mv11469 :present "PRESENT"
    :adverb mv11467)
   (:var mv11476 :isa pathway :plural t :predication mv11473 :modifier mv11470 :raw-text
    "pathways")
   (:var mv11473 :isa involve :theme mv11476 :object mv11474 :progressive "PROGRESSIVE")
   (:var mv11474 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11470 :isa database :name "KEGG" :uid "KEGG")
   (:var mv11469 :isa interlocutor :name "speaker") (:var mv11467 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv11478 :isa show :|statement-OR-theme| mv11484 :beneficiary mv11479 :present "PRESENT"
    :adverb mv11477)
   (:var mv11484 :isa pathway :plural t :predication mv11482 :raw-text "pathways")
   (:var mv11482 :isa involve :theme mv11484 :object mv11483 :progressive "PROGRESSIVE")
   (:var mv11483 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11479 :isa interlocutor :name "speaker") (:var mv11477 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv11486 :isa bio-activate :agent mv11485 :object mv11487 :present "PRESENT" :raw-text
    "activates")
   (:var mv11485 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11487 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv11488 :isa remove :object mv11495 :present "PRESENT" :raw-text "Remove")
   (:var mv11495 :isa fact :statement mv11493 :has-determiner "THE")
   (:var mv11493 :isa bio-activate :agent mv11492 :object mv11494 :present "PRESENT" :raw-text
    "activates")
   (:var mv11492 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11494 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv11498 :isa bio-activate :agent mv11497 :object mv11499 :present "PRESENT" :raw-text
    "activates")
   (:var mv11497 :isa protein-family :predication mv11496 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11496 :isa inactive)
   (:var mv11499 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv11500 :isa remove :object mv11508 :present "PRESENT" :raw-text "Remove")
   (:var mv11508 :isa fact :statement mv11506 :has-determiner "THE")
   (:var mv11506 :isa bio-activate :agent mv11505 :object mv11507 :present "PRESENT" :raw-text
    "activates")
   (:var mv11505 :isa protein-family :predication mv11504 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11504 :isa inactive)
   (:var mv11507 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv11510 :isa show :|statement-OR-theme| mv11513 :present "PRESENT")
   (:var mv11513 :isa pathway :plural t :non-cellular-location mv11509 :raw-text "pathways")
   (:var mv11509 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv11514 :isa show :|statement-OR-theme| mv11520 :beneficiary mv11515 :present "PRESENT")
   (:var mv11520 :isa pathway :plural t :predication mv11518 :raw-text "pathways")
   (:var mv11518 :isa involve :theme mv11520 :object mv11519 :progressive "PROGRESSIVE")
   (:var mv11519 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11515 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv11521 :isa show :|statement-OR-theme| mv11531 :beneficiary mv11522 :present "PRESENT")
   (:var mv11531 :isa pathway :plural t :pathwaycomponent mv11526 :raw-text "pathways")
   (:var mv11526 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
    mv11528 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11528 :isa pronoun/plural :word "them")
   (:var mv11522 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv11532 :isa show :|statement-OR-theme| mv11539 :beneficiary mv11533 :present "PRESENT")
   (:var mv11539 :isa pathway :plural t :pathwaycomponent mv11537 :raw-text "pathways")
   (:var mv11537 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11533 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv11541 :isa show :|statement-OR-theme| mv11548 :beneficiary mv11542 :present "PRESENT")
   (:var mv11548 :isa evidence :statement mv11547 :has-determiner "THE")
   (:var mv11547 :isa decrease :agent mv11546 :object mv11540 :present "PRESENT" :raw-text
    "decreases")
   (:var mv11546 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11540 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv11542 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv11550 :isa show :|statement-OR-theme| mv11561 :beneficiary mv11551 :present "PRESENT")
   (:var mv11561 :isa evidence :statement mv11556 :has-determiner "THE")
   (:var mv11556 :isa decrease :agent mv11555 :|affected-process-OR-object| mv11558 :present
    "PRESENT" :raw-text "decreases")
   (:var mv11555 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11558 :isa bio-amount :measured-item mv11549 :has-determiner "THE" :raw-text "amount")
   (:var mv11549 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv11551 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv11563 :isa show :|statement-OR-theme| mv11570 :beneficiary mv11564 :present "PRESENT")
   (:var mv11570 :isa evidence :statement mv11569 :has-determiner "THE")
   (:var mv11569 :isa regulate :agent mv11568 :object mv11562 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11568 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11562 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv11564 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv11574 :isa show :|statement-OR-theme| mv11572 :present "PRESENT")
   (:var mv11572 :isa transcription-factor :plural t :predication mv11575 :raw-text
    "transcription factors")
   (:var mv11575 :isa share :object mv11572 :participant mv11579 :past "PAST" :raw-text "shared")
   (:var mv11579 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11573 mv11578))
   (:var mv11573 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11578 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv11583 :isa tell :beneficiary mv11584 :present "PRESENT")
   (:var mv11584 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv11590 :isa tell :theme mv11605 :theme mv11591 :present "PRESENT")
   (:var mv11605 :isa regulate :affected-process mv11604 :agent mv11589 :present "PRESENT"
    :raw-text "regulated")
   (:var mv11604 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv11593 :raw-text
    "pathways")
   (:var mv11593 :isa apoptosis :raw-text "apoptotic")
   (:var mv11589 :isa protein :organ mv11602 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv11602 :isa liver :has-determiner "THE")
   (:var mv11591 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv11609 :isa tell :theme mv11619 :beneficiary mv11610 :present "PRESENT")
   (:var mv11619 :isa gene :plural t :predication mv11616 :has-determiner "WHAT" :raw-text "genes")
   (:var mv11616 :isa regulate :object mv11619 :agent mv11617 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11617 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11608 mv11615))
   (:var mv11608 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11615 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11610 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv11621 :isa tell :theme mv11633 :theme mv11622 :present "PRESENT")
   (:var mv11633 :isa regulate :affected-process mv11632 :agent mv11620 :present "PRESENT"
    :raw-text "regulated")
   (:var mv11632 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv11620 :isa protein :organ mv11631 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv11631 :isa liver :has-determiner "THE")
   (:var mv11622 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv11640 :isa involve :theme mv11644 :object mv11642 :present "PRESENT")
   (:var mv11644 :isa pathway :plural t :has-determiner "WHAT" :modifier mv11637 :raw-text
    "pathways")
   (:var mv11637 :isa database :name "KEGG" :uid "KEGG")
   (:var mv11642 :isa signal :modifier mv11641 :raw-text "signaling")
   (:var mv11641 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv11655 :isa regulate :object mv11654 :agent mv11646 :present "PRESENT" :raw-text
    "regulated")
   (:var mv11654 :isa phosphatase :plural t :has-determiner "WHAT" :enzyme mv11645 :raw-text
    "phosphatases")
   (:var mv11645 :isa protein-family :raw-text "MAP kinase" :name
    "mitogen activated protein kinase" :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv11646 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv11663 :isa be :subject mv11668 :predicate mv11664 :present "PRESENT")
   (:var mv11668 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv11659 :raw-text
    "genes")
   (:var mv11659 :isa apoptosis :raw-text "apoptotic")
   (:var mv11664 :isa downstream-segment :pathwaycomponent mv11657 :raw-text "downstream")
   (:var mv11657 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv11677 :isa regulate :object mv11682 :agent mv11670 :organ mv11680 :present "PRESENT"
    :raw-text "regulate")
   (:var mv11682 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv11672 :raw-text
    "genes")
   (:var mv11672 :isa apoptosis :raw-text "apoptotic")
   (:var mv11670 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11680 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv11691 :isa regulate :object mv11693 :agent mv11684 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11693 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv11686 :raw-text
    "genes")
   (:var mv11686 :isa apoptosis :raw-text "apoptotic")
   (:var mv11684 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv11700 :isa be :subject mv11705 :predicate mv11701 :present "PRESENT")
   (:var mv11705 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv11696 :raw-text
    "genes")
   (:var mv11696 :isa apoptosis :raw-text "apoptotic")
   (:var mv11701 :isa upstream-segment :pathwaycomponent mv11705 :modifier mv11694 :raw-text
    "upstream")
   (:var mv11694 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv11712 :isa involve :theme mv11714 :object mv11706 :present "PRESENT")
   (:var mv11714 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv11708 :raw-text
    "pathways")
   (:var mv11708 :isa apoptosis :raw-text "apoptotic")
   (:var mv11706 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv11716 :isa be :subject mv11715 :predicate mv11722 :present "PRESENT")
   (:var mv11715 :isa what)
   (:var mv11722 :isa target-protein :plural t :agent mv11718 :raw-text "targets")
   (:var mv11718 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv11725 :isa be :subject mv11724 :predicate mv11730 :present "PRESENT")
   (:var mv11724 :isa what)
   (:var mv11730 :isa inhibitor :plural t :quantifier mv11726 :protein mv11723 :raw-text
    "inhibitors")
   (:var mv11726 :isa some :word "some")
   (:var mv11723 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv11732 :isa be :subject mv11731 :predicate mv11740 :present "PRESENT")
   (:var mv11731 :isa what)
   (:var mv11740 :isa drug :plural t :predication mv11737 :quantifier mv11733 :raw-text "drugs")
   (:var mv11737 :isa inhibit :agent mv11740 :that-rel t :object mv11738 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv11738 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv11733 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv11743 :isa be :subject mv11742 :predicate mv11752 :present "PRESENT")
   (:var mv11742 :isa what)
   (:var mv11752 :isa gene :plural t :context mv11741 :quantifier mv11744 :raw-text "genes")
   (:var mv11741 :isa signaling-pathway :has-determiner "THE" :modifier mv11749 :raw-text
    "signaling pathway")
   (:var mv11749 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv11744 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv11755 :isa be :subject mv11754 :predicate mv11764 :present "PRESENT")
   (:var mv11754 :isa what)
   (:var mv11764 :isa protein :plural t :in-pathway mv11753 :quantifier mv11756 :raw-text
    "proteins")
   (:var mv11753 :isa signaling-pathway :has-determiner "THE" :modifier mv11761 :raw-text
    "signaling pathway")
   (:var mv11761 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv11756 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv11766 :isa be :subject mv11765 :predicate mv11774 :present "PRESENT")
   (:var mv11765 :isa what) (:var mv11774 :isa member :plural t :set mv11771 :has-determiner "THE")
   (:var mv11771 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv11779 :isa be :subject mv11778 :predicate mv11790 :present "PRESENT")
   (:var mv11778 :isa what)
   (:var mv11790 :isa micro-rna :plural t :predication mv11784 :has-determiner "THE" :raw-text
    "miRNAS")
   (:var mv11784 :isa regulate :agent mv11790 :that-rel t :object mv11788 :present "PRESENT"
    :raw-text "regulate")
   (:var mv11788 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv11785 mv11786 mv11775 mv11776 mv11777))
   (:var mv11785 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv11786 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11775 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11776 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv11777 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv11792 :isa be :subject mv11791 :predicate mv11805 :present "PRESENT")
   (:var mv11791 :isa what)
   (:var mv11805 :isa regulator :plural t :theme mv11801 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv11801 :isa bio-entity :organ mv11800 :name "MAPPK14")
   (:var mv11800 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv11808 :isa be :subject mv11807 :predicate mv11818 :present "PRESENT")
   (:var mv11807 :isa what)
   (:var mv11818 :isa regulator :plural t :theme mv11806 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv11806 :isa protein :organ mv11814 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv11814 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv11821 :isa be :subject mv11820 :predicate mv11828 :present "PRESENT")
   (:var mv11820 :isa what)
   (:var mv11828 :isa regulator :plural t :theme mv11819 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv11819 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv11831 :isa be :subject mv11830 :predicate mv11841 :present "PRESENT")
   (:var mv11830 :isa what)
   (:var mv11841 :isa regulator :plural t :theme mv11829 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv11829 :isa protein :organ mv11837 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv11837 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv11844 :isa be :subject mv11843 :predicate mv11854 :present "PRESENT")
   (:var mv11843 :isa what)
   (:var mv11854 :isa regulator :plural t :theme mv11842 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv11842 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv11857 :isa be :subject mv11856 :predicate mv11864 :present "PRESENT")
   (:var mv11856 :isa what)
   (:var mv11864 :isa regulator :plural t :theme mv11855 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv11855 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv11884 :isa copular-predication :item mv11869 :value mv11867 :predicate mv11870)
   (:var mv11869 :isa what) (:var mv11867 :isa in-common :theme mv11882)
   (:var mv11882 :isa gene :plural t :has-determiner "THE" :expresses mv11879 :raw-text "genes")
   (:var mv11879 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv11874 mv11875 mv11868))
   (:var mv11874 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11875 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv11868 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11870 :isa be :predicate mv11880 :present "PRESENT")
   (:var mv11880 :isa transcription-factor :plural t :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv11888 :isa be :subject mv11887 :predicate mv11899 :present "PRESENT")
   (:var mv11887 :isa what)
   (:var mv11899 :isa transcription-factor :plural t :predication mv11891 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv11891 :isa regulate :agent mv11899 :that-rel t :object mv11897 :present "PRESENT"
    :raw-text "regulate")
   (:var mv11897 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv11896 mv11895))
   (:var mv11896 :isa bio-entity :name "EELK1")
   (:var mv11895 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv11905 :isa be :subject mv11904 :predicate mv11917 :present "PRESENT")
   (:var mv11904 :isa what)
   (:var mv11917 :isa transcription-factor :plural t :predication mv11908 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv11908 :isa regulate :agent mv11917 :that-rel t :object mv11915 :present "PRESENT"
    :raw-text "regulate")
   (:var mv11915 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv11909 mv11910 mv11914 mv11902 mv11903))
   (:var mv11909 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv11910 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11914 :isa bio-entity :name "STAAT3")
   (:var mv11902 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv11903 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv11924 :isa be :subject mv11923 :predicate mv11933 :present "PRESENT")
   (:var mv11923 :isa what)
   (:var mv11933 :isa transcription-factor :plural t :predication mv11927 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv11927 :isa regulate :agent mv11933 :that-rel t :object mv11931 :present "PRESENT"
    :raw-text "regulate")
   (:var mv11931 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv11928 mv11929 mv11920 mv11921 mv11922))
   (:var mv11928 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv11929 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11920 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11921 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv11922 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv11938 :isa be :subject mv11937 :predicate mv11951 :present "PRESENT")
   (:var mv11937 :isa what)
   (:var mv11951 :isa regulator :plural t :theme mv11947 :has-determiner "THE" :context mv11940
    :raw-text "regulators")
   (:var mv11947 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv11934 mv11935 mv11945 mv11936))
   (:var mv11934 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv11935 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv11945 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv11936 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv11940 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv11962 :isa regulate :object mv11961 :agent mv11959 :present "PRESENT" :raw-text
    "regulated")
   (:var mv11961 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv11952 :raw-text
    "genes")
   (:var mv11952 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv11959 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv11967 :isa regulate :|affected-process-OR-object| mv11964 :agent mv11966 :present
    "PRESENT" :raw-text "regulate")
   (:var mv11964 :isa what)
   (:var mv11966 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv11971 :isa regulate :|affected-process-OR-object| mv11968 :|agent-OR-cause| mv11970
    :organ mv11973 :present "PRESENT" :raw-text "regulate")
   (:var mv11968 :isa what) (:var mv11970 :isa pronoun/inanimate :word "it")
   (:var mv11973 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv11979 :isa target :|affected-process-OR-object| mv11976 :agent mv11975 :present
    "PRESENT" :raw-text "target")
   (:var mv11976 :isa what)
   (:var mv11975 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv11983 :isa regulate :|affected-process-OR-object| mv11981 :agent mv11980 :present
    "PRESENT" :raw-text "regulate")
   (:var mv11981 :isa what)
   (:var mv11980 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv11987 :isa regulate :|affected-process-OR-object| mv11985 :agent mv11984 :present
    "PRESENT" :raw-text "regulate")
   (:var mv11985 :isa what)
   (:var mv11984 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv11991 :isa regulate :|affected-process-OR-object| mv11989 :agent mv11988 :present
    "PRESENT" :raw-text "regulate")
   (:var mv11989 :isa what)
   (:var mv11988 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv11995 :isa regulate :|affected-process-OR-object| mv11992 :agent mv11994 :present
    "PRESENT" :raw-text "regulate")
   (:var mv11992 :isa what)
   (:var mv11994 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv11998 :isa downregulate :|agent-OR-cause| mv11997 :object mv11996 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv11997 :isa what)
   (:var mv11996 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv12012 :isa bio-use :patient mv12001 :modal mv12002 :agent mv12003 :theme mv12011
    :present "PRESENT" :raw-text "use")
   (:var mv12001 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv12002 :isa could)
   (:var mv12003 :isa interlocutor :name "speaker")
   (:var mv12011 :isa target :object mv11999 :raw-text "target")
   (:var mv11999 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv12024 :isa bio-use :object mv12015 :modal mv12016 :agent mv12017 :disease mv12013
    :present "PRESENT" :raw-text "use")
   (:var mv12015 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv12016 :isa should)
   (:var mv12017 :isa interlocutor :name "speaker")
   (:var mv12013 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv12029 :isa be :subject mv12033 :predicate mv12035 :present "PRESENT")
   (:var mv12033 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv12035 :isa inhibitor :plural t :protein mv12025 :raw-text "inhibitors")
   (:var mv12025 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv12040 :isa inhibit :agent mv12041 :object mv12036 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv12041 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv12036 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv12045 :isa regulate :agent mv12047 :object mv12046 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12047 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv12046 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv12052 :isa target :agent mv12054 :object mv12053 :present "PRESENT" :raw-text "target")
   (:var mv12054 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv12053 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv12059 :isa be :subject mv12063 :predicate mv12060 :present "PRESENT")
   (:var mv12063 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12060 :isa downstream-segment :pathwaycomponent mv12055 :raw-text "downstream")
   (:var mv12055 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv12078 :isa copular-predication-of-pp :item mv12073 :value mv12077 :prep "IN" :predicate
    mv12069)
   (:var mv12073 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12077 :isa gene :plural t :context mv12065 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12065 :isa signaling-pathway :has-determiner "THE" :modifier mv12072 :raw-text
    "signaling pathway")
   (:var mv12072 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv12069 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv12096 :isa copular-predication-of-pp :item mv12089 :value mv12095 :prep "IN" :predicate
    mv12085)
   (:var mv12089 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12095 :isa gene :plural t :context mv12091 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12091 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv12088 :raw-text
    "signaling pathways")
   (:var mv12088 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv12085 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv12111 :isa copular-predication-of-pp :item mv12106 :value mv12110 :prep "IN" :predicate
    mv12102)
   (:var mv12106 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12110 :isa gene :plural t :context mv12105 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12105 :isa pathway :has-determiner "THE" :non-cellular-location mv12098 :raw-text
    "pathway")
   (:var mv12098 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv12102 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv12126 :isa copular-predication-of-pp :item mv12121 :value mv12125 :prep "IN" :predicate
    mv12117)
   (:var mv12121 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12125 :isa gene :plural t :context mv12113 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12113 :isa signaling-pathway :has-determiner "THE" :modifier mv12120 :raw-text
    "signaling pathway")
   (:var mv12120 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv12117 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv12139 :isa involve :object mv12138 :|context-OR-theme| mv12137 :present "PRESENT")
   (:var mv12138 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12137 :isa pathway :has-determiner "THE" :modifier mv12129 :raw-text "pathway")
   (:var mv12129 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv12151 :isa involve :object mv12150 :|context-OR-theme| mv12149 :present "PRESENT")
   (:var mv12150 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12149 :isa pathway :has-determiner "THE" :modifier mv12148 :raw-text "pathway")
   (:var mv12148 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv12163 :isa involve :object mv12162 :|context-OR-theme| mv12161 :present "PRESENT")
   (:var mv12162 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12161 :isa pathway :has-determiner "THE" :modifier mv12153 :raw-text "pathway")
   (:var mv12153 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv12175 :isa involve :object mv12174 :|context-OR-theme| mv12173 :present "PRESENT")
   (:var mv12174 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12173 :isa pathway :has-determiner "THE" :non-cellular-location mv12165 :raw-text
    "pathway")
   (:var mv12165 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv12191 :isa regulate :object mv12190 :agent mv12189 :present "PRESENT" :superlative
    mv12184 :adverb mv12185 :raw-text "regulated")
   (:var mv12190 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12189 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv12177 mv12178 mv12179))
   (:var mv12177 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv12178 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv12179 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv12184 :isa superlative-quantifier :name "most")
   (:var mv12185 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv12208 :isa regulate :object mv12207 :agent mv12206 :present "PRESENT" :superlative
    mv12201 :adverb mv12202 :raw-text "regulated")
   (:var mv12207 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12206 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv12193 mv12194 mv12195 mv12196))
   (:var mv12193 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv12194 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv12195 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv12196 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv12201 :isa superlative-quantifier :name "most")
   (:var mv12202 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv12225 :isa regulate :object mv12224 :agent mv12223 :present "PRESENT" :superlative
    mv12218 :adverb mv12219 :raw-text "regulated")
   (:var mv12224 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12223 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv12210 mv12211 mv12212 mv12213))
   (:var mv12210 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv12211 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv12212 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv12213 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv12218 :isa superlative-quantifier :name "most")
   (:var mv12219 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv12235 :isa regulate :object mv12234 :agent mv12233 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12234 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12233 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv12248 :isa regulate :object mv12247 :agent mv12246 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12247 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12246 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv12237 mv12245))
   (:var mv12237 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12245 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv12261 :isa regulate :object mv12260 :agent mv12259 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12260 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12259 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv12250 mv12251))
   (:var mv12250 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv12251 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv12273 :isa regulate :object mv12272 :agent mv12271 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12272 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12271 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv12283 :isa regulate :object mv12282 :agent mv12281 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12282 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12281 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv12296 :isa regulate :object mv12295 :agent mv12294 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12295 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12294 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv12285 mv12293))
   (:var mv12285 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12293 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv12306 :isa target :object mv12305 :cause mv12298 :present "PRESENT" :raw-text
    "targeted")
   (:var mv12305 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12298 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv12323 :isa copular-predication-of-pp :item mv12318 :value mv12322 :prep "IN" :predicate
    mv12312)
   (:var mv12318 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12322 :isa gene :plural t :context mv12308 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12308 :isa signaling-pathway :has-determiner "THE" :modifier mv12317 :raw-text
    "signaling pathway")
   (:var mv12317 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv12312 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv12335 :isa bio-use :object mv12334 :context mv12325 :present "PRESENT" :raw-text "used")
   (:var mv12334 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12325 :isa signaling-pathway :has-determiner "THE" :modifier mv12333 :raw-text
    "signaling pathway")
   (:var mv12333 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("What genes does lung cancer target?"
   (:var mv12343 :isa target :object mv12344 :cause mv12337 :present "PRESENT" :raw-text "target")
   (:var mv12344 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12337 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv12351 :isa target :object mv12352 :agent mv12345 :present "PRESENT" :raw-text "target")
   (:var mv12352 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12345 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv12359 :isa target :object mv12360 :agent mv12353 :present "PRESENT" :raw-text "target")
   (:var mv12360 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12353 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv12366 :isa upregulate :object mv12367 :agent mv12361 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv12367 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12361 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv12373 :isa regulate :object mv12378 :agent mv12368 :cell-type mv12379 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12378 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12368 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12379 :isa cell-type :plural t :non-cellular-location mv12375)
   (:var mv12375 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv12386 :isa regulate :object mv12389 :agent mv12381 :organ mv12388 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12389 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12381 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12388 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv12396 :isa regulate :object mv12399 :agent mv12391 :organ mv12398 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12399 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12391 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12398 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv12406 :isa regulate :object mv12407 :agent mv12401 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12407 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12401 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv12416 :isa regulate :object mv12419 :agent mv12408 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12419 :isa gene :plural t :organ mv12414 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12414 :isa liver :has-determiner "THE")
   (:var mv12408 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv12424 :isa be :subject mv12428 :predicate mv12425 :present "PRESENT")
   (:var mv12428 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12425 :isa upstream-segment :modifier mv12420 :raw-text "upstream")
   (:var mv12420 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv12433 :isa be :subject mv12437 :predicate mv12434 :present "PRESENT")
   (:var mv12437 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12434 :isa upstream-segment :pathwaycomponent mv12437 :modifier mv12429 :raw-text
    "upstream")
   (:var mv12429 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv12444 :isa be :subject mv12449 :predicate mv12446 :present "PRESENT")
   (:var mv12449 :isa gene :plural t :predication mv12441 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12441 :isa regulate :object mv12449 :agent mv12443 :past "PAST" :raw-text "regulated")
   (:var mv12443 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv12446 :isa kinase :plural t :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv12456 :isa be :subject mv12461 :predicate mv12458 :present "PRESENT")
   (:var mv12461 :isa gene :plural t :predication mv12454 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12454 :isa regulate :object mv12461 :agent mv12450 :past "PAST" :raw-text "regulated")
   (:var mv12450 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12458 :isa kinase :plural t :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv12467 :isa involve :theme mv12472 :object mv12470 :present "PRESENT")
   (:var mv12472 :isa pathway :plural t :has-determiner "WHAT" :modifier mv12464 :raw-text
    "pathways")
   (:var mv12464 :isa immune :name "immune")
   (:var mv12470 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv12468 mv12462))
   (:var mv12468 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12462 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv12477 :isa involve :theme mv12480 :object mv12478 :present "PRESENT")
   (:var mv12480 :isa pathway :plural t :has-determiner "WHAT" :modifier mv12474 :raw-text
    "pathways")
   (:var mv12474 :isa immune :name "immune")
   (:var mv12478 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv12486 :isa involve :theme mv12491 :object mv12489 :present "PRESENT")
   (:var mv12491 :isa pathway :plural t :has-determiner "WHAT" :modifier mv12483 :raw-text
    "pathways")
   (:var mv12483 :isa immune :name "immune")
   (:var mv12489 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv12487 mv12481))
   (:var mv12487 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12481 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv12498 :isa involve :theme mv12502 :object mv12500 :present "PRESENT")
   (:var mv12502 :isa pathway :plural t :has-determiner "WHAT" :modifier mv12495 :raw-text
    "pathways")
   (:var mv12495 :isa immune :name "immune")
   (:var mv12500 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv12492 mv12493))
   (:var mv12492 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv12493 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv12504 :isa inhibit :|agent-OR-cause| mv12503 :object mv12505 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv12503 :isa what)
   (:var mv12505 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv12508 :isa be :subject mv12507 :predicate mv12506 :present "PRESENT")
   (:var mv12507 :isa what)
   (:var mv12506 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv12510 :isa be :subject mv12509 :predicate mv12511 :present "PRESENT")
   (:var mv12509 :isa what)
   (:var mv12511 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv12514 :isa be :subject mv12513 :predicate mv12515 :present "PRESENT")
   (:var mv12513 :isa what)
   (:var mv12515 :isa downstream-segment :pathwaycomponent mv12512 :raw-text "downstream")
   (:var mv12512 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv12520 :isa be :subject mv12519 :predicate mv12521 :present "PRESENT")
   (:var mv12519 :isa what)
   (:var mv12521 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv12523 :isa be :subject mv12522 :predicate mv12524 :present "PRESENT")
   (:var mv12522 :isa what) (:var mv12524 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv12530 :isa regulate :|affected-process-OR-object| mv12526 :agent mv12525 :present
    "PRESENT" :raw-text "regulated")
   (:var mv12526 :isa what)
   (:var mv12525 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv12534 :isa be :subject mv12533 :predicate mv12540 :present "PRESENT")
   (:var mv12533 :isa what) (:var mv12540 :isa evidence :statement mv12539 :has-determiner "THE")
   (:var mv12539 :isa decrease :agent mv12538 :object mv12532 :present "PRESENT" :raw-text
    "decreases")
   (:var mv12538 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12532 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv12543 :isa be :subject mv12542 :predicate mv12553 :present "PRESENT")
   (:var mv12542 :isa what) (:var mv12553 :isa evidence :statement mv12548 :has-determiner "THE")
   (:var mv12548 :isa decrease :agent mv12547 :|affected-process-OR-object| mv12550 :present
    "PRESENT" :raw-text "decreases")
   (:var mv12547 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12550 :isa bio-amount :measured-item mv12541 :has-determiner "THE" :raw-text "amount")
   (:var mv12541 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv12555 :isa be :subject mv12554 :predicate mv12557 :present "PRESENT")
   (:var mv12554 :isa what)
   (:var mv12557 :isa target-protein :agent mv12560 :has-determiner "THE" :raw-text "target")
   (:var mv12560 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv12567 :isa regulate :object mv12568 :agent mv12562 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12568 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv12562 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv12577 :isa regulate :agent mv12582 :object mv12581 :present "PRESENT" :adverb mv12575
    :adverb mv12576 :raw-text "regulate")
   (:var mv12582 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv12581 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv12578 mv12579 mv12569 mv12570 mv12571))
   (:var mv12578 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv12579 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12569 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12570 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv12571 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv12575 :isa superlative-quantifier :name "most")
   (:var mv12576 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv12589 :isa regulate :agent mv12594 :object mv12593 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12594 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv12593 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv12590 mv12591 mv12583 mv12584 mv12585))
   (:var mv12590 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv12591 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12583 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12584 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv12585 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv12603 :isa regulate :object mv12602 :agent mv12595 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12602 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv12595 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv12610 :isa regulate :agent mv12616 :object mv12620 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12616 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv12620 :isa gene :plural t :context mv12618 :raw-text "genes")
   (:var mv12618 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv12615 :raw-text
    "signaling pathways")
   (:var mv12615 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("What pahtways involve SRF?"
   (:var mv12624 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv12637 :isa copular-predication :item mv12635 :value mv12630 :predicate mv12629)
   (:var mv12635 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12630 :isa common :theme mv12634)
   (:var mv12634 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv12625 mv12633))
   (:var mv12625 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12633 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12629 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv12641 :isa involve :theme mv12643 :object mv12642 :present "PRESENT")
   (:var mv12643 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12642 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv12648 :isa involve :theme mv12652 :object mv12651 :present "PRESENT")
   (:var mv12652 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12651 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv12649 mv12644))
   (:var mv12649 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12644 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv12657 :isa involve :theme mv12660 :object mv12653 :present "PRESENT")
   (:var mv12660 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12653 :isa transcription-factor :has-determiner "THE" :modifier mv12659 :raw-text
    "transcription factor")
   (:var mv12659 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv12672 :isa collection :raw-text "What pathways utilize srf and is srf" :type utilize
    :number 2 :items (mv12664 mv12667))
   (:var mv12664 :isa utilize :participant mv12671 :object mv12665 :present "PRESENT" :raw-text
    "utilize")
   (:var mv12671 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12665 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12667 :isa be :subject mv12671 :predicate mv12668 :present "PRESENT")
   (:var mv12668 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv12685 :isa copular-predication-of-pp :item mv12682 :value mv12683 :prep mv12677
    :predicate mv12676)
   (:var mv12682 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12683 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
    "mitogen activated protein kinase" :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv12677 :isa in :word "in") (:var mv12676 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv12694 :isa target :object mv12693 :cause mv12686 :present "PRESENT" :raw-text
    "targeted")
   (:var mv12693 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12686 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv12702 :isa target :object mv12703 :agent mv12696 :present "PRESENT" :raw-text "target")
   (:var mv12703 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12696 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv12710 :isa target :object mv12711 :cause mv12704 :present "PRESENT" :raw-text "target")
   (:var mv12711 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12704 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv12718 :isa target :object mv12719 :agent mv12716 :present "PRESENT" :raw-text "target")
   (:var mv12719 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12716 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv12725 :isa lead :agent mv12730 :theme mv12728 :modal mv12724 :raw-text "lead")
   (:var mv12730 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12728 :isa development :disease mv12720 :has-determiner "THE" :raw-text "development")
   (:var mv12720 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv12724 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv12738 :isa lead :agent mv12743 :theme mv12741 :modal mv12737 :raw-text "lead")
   (:var mv12743 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12741 :isa development :disease mv12733 :has-determiner "THE" :raw-text "development")
   (:var mv12733 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv12737 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv12750 :isa involve :theme mv12754 :object mv12752 :present "PRESENT")
   (:var mv12754 :isa pathway :plural t :has-determiner "WHAT" :modifier mv12747 :raw-text
    "pathways")
   (:var mv12747 :isa database :name "Reactome" :uid "Reactome")
   (:var mv12752 :isa signal :modifier mv12751 :raw-text "signaling")
   (:var mv12751 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv12756 :isa regulate :|agent-OR-cause| mv12755 :object mv12757 :present "PRESENT"
    :raw-text "regulates")
   (:var mv12755 :isa what)
   (:var mv12757 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv12760 :isa regulate :|agent-OR-cause| mv12759 :object mv12758 :present "PRESENT"
    :raw-text "regulates")
   (:var mv12759 :isa what)
   (:var mv12758 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv12763 :isa regulate :|agent-OR-cause| mv12762 :object mv12761 :present "PRESENT"
    :raw-text "regulates")
   (:var mv12762 :isa what)
   (:var mv12761 :isa protein :organ mv12765 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv12765 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv12778 :isa share :object mv12777 :participant mv12776 :present "PRESENT" :raw-text
    "shared")
   (:var mv12777 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv12776 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv12774 mv12769))
   (:var mv12774 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv12769 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv12791 :isa share :object mv12790 :participant mv12789 :present "PRESENT" :raw-text
    "shared")
   (:var mv12790 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv12789 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv12782 mv12788))
   (:var mv12782 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12788 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv12805 :isa share :object mv12804 :participant mv12803 :present "PRESENT" :raw-text
    "shared")
   (:var mv12804 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv12803 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv12795 mv12796 mv12802))
   (:var mv12795 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12796 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv12802 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?"
   (:var mv12814 :isa tissue :plural t :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv12818 :isa bio-produce :agent mv12815 :object mv12816 :present "PRESENT" :raw-text
    "produces")
   (:var mv12815 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv12816 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv12822 :isa transcribe :agent mv12819 :object mv12820 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv12819 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv12820 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv12843 :isa copular-predication :item mv12839 :value mv12831 :predicate mv12830)
   (:var mv12839 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12831 :isa common :theme mv12841)
   (:var mv12841 :isa gene :plural t :has-determiner "THE" :expresses mv12838 :raw-text "genes")
   (:var mv12838 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv12825 mv12826 mv12834 mv12827 mv12828))
   (:var mv12825 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12826 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv12834 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv12827 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv12828 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv12830 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv12862 :isa copular-predication :item mv12858 :value mv12851 :predicate mv12850)
   (:var mv12858 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12851 :isa common :theme mv12860)
   (:var mv12860 :isa gene :plural t :has-determiner "THE" :expresses mv12857 :raw-text "genes")
   (:var mv12857 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv12846 mv12847 mv12848))
   (:var mv12846 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12847 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv12848 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv12850 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv12868 :isa regulate :object mv12869 :agent mv12863 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12869 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv12863 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv12882 :isa copular-predication :item mv12879 :value mv12874 :predicate mv12873)
   (:var mv12879 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12874 :isa common :theme mv12880)
   (:var mv12880 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv12873 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv12903 :isa copular-predication :item mv12899 :value mv12885 :predicate mv12891)
   (:var mv12899 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12885 :isa in-common :theme mv12901)
   (:var mv12901 :isa gene :plural t :has-determiner "THE" :expresses mv12898 :raw-text "genes")
   (:var mv12898 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv12886 mv12887 mv12894 mv12888 mv12889))
   (:var mv12886 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12887 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv12894 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv12888 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv12889 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv12891 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv12922 :isa copular-predication :item mv12918 :value mv12906 :predicate mv12911)
   (:var mv12918 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12906 :isa in-common :theme mv12920)
   (:var mv12920 :isa gene :plural t :has-determiner "THE" :expresses mv12917 :raw-text "genes")
   (:var mv12917 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv12907 mv12908 mv12909))
   (:var mv12907 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12908 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv12909 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv12911 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv12927 :isa be :subject mv12933 :predicate mv12936 :present "PRESENT")
   (:var mv12933 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12936 :isa regulator :plural t :theme mv12925 :raw-text "regulators")
   (:var mv12925 :isa protein :organ mv12932 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv12932 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv12941 :isa be :subject mv12945 :predicate mv12947 :present "PRESENT")
   (:var mv12945 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12947 :isa regulator :plural t :theme mv12939 :raw-text "regulators")
   (:var mv12939 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv12963 :isa share :object mv12962 :participant mv12965 :present "PRESENT" :raw-text
    "shared")
   (:var mv12962 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12965 :isa gene :plural t :has-determiner "THE" :expresses mv12961 :raw-text "genes")
   (:var mv12961 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv12956 mv12957 mv12950))
   (:var mv12956 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12957 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv12950 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv12971 :isa regulate :agent mv12974 :object mv12969 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12974 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12969 :isa protein :organ mv12973 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv12973 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv12980 :isa regulate :agent mv12981 :object mv12978 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12981 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12978 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv12985 :isa regulate :agent mv12987 :object mv12986 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12987 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12986 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv12991 :isa regulate :agent mv12999 :theme mv12998 :object mv12993 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12999 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12998 :isa bio-entity :has-determiner "THE" :modifier mv12996 :cellular-process mv12997
    :name "pathwya")
   (:var mv12996 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv12997 :isa signal :raw-text "signaling")
   (:var mv12993 :isa gene :plural t :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv13005 :isa regulate :agent mv13006 :object mv13003 :past "PAST" :raw-text "regulated")
   (:var mv13006 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv13003 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv13011 :isa transcribe :agent mv13012 :object mv13009 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv13012 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv13009 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv13015 :isa upregulate :|agent-OR-cause| mv13014 :object mv13013 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv13014 :isa what)
   (:var mv13013 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv13021 :isa gene-transcript-express :location mv13017 :object mv13016 :past "PAST"
    :raw-text "expressed")
   (:var mv13017 :isa where)
   (:var mv13016 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv13026 :isa involve :theme mv13029 :object mv13027 :present "PRESENT")
   (:var mv13029 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13023 :raw-text
    "pathways")
   (:var mv13023 :isa database :name "KEGG" :uid "KEGG")
   (:var mv13027 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv13035 :isa bio-use :agent mv13038 :object mv13036 :present "PRESENT" :raw-text "use")
   (:var mv13038 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13031 :raw-text
    "pathways")
   (:var mv13031 :isa database :name "KEGG" :uid "KEGG")
   (:var mv13036 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv13043 :isa regulate :agent mv13044 :object mv13041 :present "PRESENT" :raw-text
    "regulate")
   (:var mv13044 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv13041 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv13048 :isa regulate :|agent-OR-cause| mv13045 :object mv13049 :present "PRESENT" :adverb
    mv13046 :raw-text "regulate")
   (:var mv13045 :isa which)
   (:var mv13049 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv13046 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv13061 :isa regulate :object mv13060 :agent mv13050 :present "PRESENT" :raw-text
    "regulated")
   (:var mv13060 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv13052 :raw-text
    "genes")
   (:var mv13052 :isa apoptosis :raw-text "apoptotic")
   (:var mv13050 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv13069 :isa be :subject mv13074 :predicate mv13070 :present "PRESENT")
   (:var mv13074 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv13065 :raw-text
    "genes")
   (:var mv13065 :isa apoptosis :raw-text "apoptotic")
   (:var mv13070 :isa upstream-segment :pathwaycomponent mv13074 :modifier mv13063 :raw-text
    "upstream")
   (:var mv13063 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv13083 :isa target :object mv13082 :agent mv13075 :present "PRESENT" :raw-text
    "targeted")
   (:var mv13082 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv13075 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv13091 :isa be :subject mv13096 :predicate mv13093 :present "PRESENT")
   (:var mv13096 :isa gene :plural t :predication mv13089 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv13089 :isa regulate :object mv13096 :agent mv13085 :past "PAST" :raw-text "regulated")
   (:var mv13085 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13093 :isa kinase :plural t :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv13115 :isa share :object mv13114 :participant mv13116 :present "PRESENT" :raw-text
    "shared")
   (:var mv13114 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13102 :raw-text
    "pathways")
   (:var mv13102 :isa immune :name "immune")
   (:var mv13116 :isa gene :plural t :expresses mv13112 :raw-text "genes")
   (:var mv13112 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv13097 mv13098 mv13108 mv13099 mv13100))
   (:var mv13097 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13098 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv13108 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv13099 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv13100 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv13135 :isa share :object mv13134 :participant mv13137 :present "PRESENT" :raw-text
    "shared")
   (:var mv13134 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13122 :raw-text
    "pathways")
   (:var mv13122 :isa immune :name "immune")
   (:var mv13137 :isa gene :plural t :has-determiner "THE" :expresses mv13132 :raw-text "genes")
   (:var mv13132 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv13118 mv13119 mv13120))
   (:var mv13118 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13119 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv13120 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv13144 :isa utilize :participant mv13150 :object mv13146 :present "PRESENT" :raw-text
    "utilize")
   (:var mv13150 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13141 :raw-text
    "pathways")
   (:var mv13141 :isa database :name "KEGG" :uid "KEGG")
   (:var mv13146 :isa gene :plural t :predication mv13147 :raw-text "genes")
   (:var mv13147 :isa regulate :object mv13146 :agent mv13139 :past "PAST" :raw-text "regulated")
   (:var mv13139 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv13157 :isa utilize :participant mv13160 :object mv13158 :present "PRESENT" :raw-text
    "utilize")
   (:var mv13160 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13154 :raw-text
    "pathways")
   (:var mv13154 :isa database :name "Reactome" :uid "Reactome")
   (:var mv13158 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv13165 :isa utilize :participant mv13168 :object mv13166 :present "PRESENT" :raw-text
    "utilize")
   (:var mv13168 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13162 :raw-text
    "pathways")
   (:var mv13162 :isa database :name "KEGG" :uid "KEGG")
   (:var mv13166 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv13176 :isa regulate :|affected-process-OR-object| mv13172 :agent mv13169 :present
    "PRESENT" :raw-text "regulated")
   (:var mv13172 :isa pronoun/plural :quantifier mv13170 :word "them") (:var mv13170 :isa which)
   (:var mv13169 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv13186 :isa gene-transcript-express :object mv13181 :organ mv13185 :present "PRESENT"
    :raw-text "expressed")
   (:var mv13181 :isa these :quantifier mv13179 :word "these") (:var mv13179 :isa which)
   (:var mv13185 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv13199 :isa copular-predication-of-pp :item mv13191 :value mv13197 :prep mv13193
    :predicate mv13192)
   (:var mv13191 :isa these :quantifier mv13189 :word "these") (:var mv13189 :isa which)
   (:var mv13197 :isa pathway :plural t :modifier mv13194 :raw-text "pathways")
   (:var mv13194 :isa immune :name "immune") (:var mv13193 :isa in :word "in")
   (:var mv13192 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv13206 :isa phosphorylate :substrate mv13207 :agent mv13205 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv13207 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv13205 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv13211 :isa be :subject mv13210 :predicate mv13213 :present "PRESENT")
   (:var mv13210 :isa these :quantifier mv13208 :word "these") (:var mv13208 :isa which)
   (:var mv13213 :isa kinase :plural t :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv13222 :isa regulate :|affected-process-OR-object| mv13218 :agent mv13215 :present
    "PRESENT" :raw-text "regulated")
   (:var mv13218 :isa those :quantifier mv13216 :word "those") (:var mv13216 :isa which)
   (:var mv13215 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv13232 :isa regulate :|affected-process-OR-object| mv13228 :agent mv13225 :present
    "PRESENT" :raw-text "regulated")
   (:var mv13228 :isa these :quantifier mv13226 :word "these") (:var mv13226 :isa which)
   (:var mv13225 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv13242 :isa regulate :|affected-process-OR-object| mv13237 :agent mv13241 :present
    "PRESENT" :raw-text "regulated")
   (:var mv13237 :isa these :quantifier mv13235 :word "these") (:var mv13235 :isa which)
   (:var mv13241 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv13261 :isa share :object mv13260 :participant mv13262 :present "PRESENT" :raw-text
    "shared")
   (:var mv13260 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13262 :isa gene :plural t :expresses mv13259 :raw-text "genes")
   (:var mv13259 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv13245 mv13246 mv13255 mv13247 mv13248))
   (:var mv13245 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13246 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv13255 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv13247 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv13248 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv13276 :isa share :object mv13275 :participant mv13274 :present "PRESENT" :raw-text
    "shared")
   (:var mv13275 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13274 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv13264 mv13265 mv13266))
   (:var mv13264 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13265 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv13266 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv13295 :isa share :object mv13294 :participant mv13297 :present "PRESENT" :raw-text
    "shared")
   (:var mv13294 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13297 :isa gene :plural t :has-determiner "THE" :expresses mv13293 :raw-text "genes")
   (:var mv13293 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv13278 mv13279 mv13289 mv13280 mv13281))
   (:var mv13278 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13279 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv13289 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv13280 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv13281 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv13304 :isa involve :theme mv13307 :object mv13306 :present "PRESENT")
   (:var mv13307 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13306 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv13299 mv13300))
   (:var mv13299 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv13300 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv13311 :isa involve :theme mv13313 :object mv13312 :present "PRESENT")
   (:var mv13313 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13312 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv13318 :isa bio-use :agent mv13320 :object mv13319 :present "PRESENT" :raw-text "use")
   (:var mv13320 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13319 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv13325 :isa bio-use :agent mv13327 :object mv13326 :present "PRESENT" :raw-text "use")
   (:var mv13327 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13326 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv13331 :isa utilize :participant mv13333 :object mv13332 :present "PRESENT" :raw-text
    "utilize")
   (:var mv13333 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13332 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv13337 :isa utilize :participant mv13341 :object mv13342 :present "PRESENT" :raw-text
    "utilize")
   (:var mv13341 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv13342 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv13351 :isa target :object mv13350 :agent mv13343 :present "PRESENT" :raw-text
    "targeted")
   (:var mv13350 :isa protein :plural t :has-determiner "WHICH" :raw-text "proteins")
   (:var mv13343 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv13357 :isa utilize :participant mv13360 :object mv13358 :present "PRESENT" :raw-text
    "utilize")
   (:var mv13360 :isa pathway :plural t :has-determiner "WHICH" :modifier mv13354 :raw-text
    "pathways")
   (:var mv13354 :isa database :name "Reactome" :uid "Reactome")
   (:var mv13358 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv13374 :isa copular-predication-of-pp :item mv13369 :value mv13373 :prep "IN" :predicate
    mv13365)
   (:var mv13369 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv13373 :isa transcription-factor :plural t :in-pathway mv13363 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv13363 :isa signaling-pathway :has-determiner "THE" :modifier mv13368 :raw-text
    "signaling pathway")
   (:var mv13368 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv13365 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv13380 :isa regulate :agent mv13384 :object mv13378 :present "PRESENT" :raw-text
    "regulate")
   (:var mv13384 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv13378 :isa protein :organ mv13383 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv13383 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv13390 :isa regulate :agent mv13391 :object mv13388 :present "PRESENT" :raw-text
    "regulate")
   (:var mv13391 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv13388 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv13398 :isa explicit-suggestion :suggestion mv13394 :marker let-as-directive)
   (:var mv13394 :isa move-something-somewhere :at-relative-location mv13396 :theme mv13393
    :present "PRESENT")
   (:var mv13396 :isa top-qua-location)
   (:var mv13393 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv13407 :isa explicit-suggestion :suggestion mv13401 :marker let-as-directive)
   (:var mv13401 :isa show :at-relative-location mv13405 :|statement-OR-theme| mv13400 :present
    "PRESENT")
   (:var mv13405 :isa top-qua-location)
   (:var mv13400 :isa protein :has-determiner "THE" :predication mv13403 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv13403 :isa phosphorylate :substrate mv13400 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv13410 :isa be :subject mv13409 :predicate mv13422 :present "PRESENT")
   (:var mv13409 :isa what)
   (:var mv13422 :isa upstream-segment :plural t :pathwaycomponent mv13418 :has-determiner "THE"
    :predication mv13412 :raw-text "upstreams")
   (:var mv13418 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv13408 mv13417))
   (:var mv13408 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv13417 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv13412 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv13430 :isa polar-question :statement mv13425)
   (:var mv13425 :isa gene-transcript-express :object mv13423 :organ mv13428 :past "PAST" :raw-text
    "expressed")
   (:var mv13423 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13428 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv13437 :isa polar-question :statement mv13433)
   (:var mv13433 :isa gene-transcript-express :object mv13431 :organ mv13435 :past "PAST" :raw-text
    "expressed")
   (:var mv13431 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13435 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv13439 :isa show :at-relative-location mv13442 :|statement-OR-theme| mv13438 :present
    "PRESENT")
   (:var mv13442 :isa top-qua-location)
   (:var mv13438 :isa protein :predication mv13440 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv13440 :isa phosphorylate :substrate mv13438 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv13446 :isa be :subject mv13445 :predicate mv13458 :present "PRESENT")
   (:var mv13445 :isa what)
   (:var mv13458 :isa upstream-segment :plural t :pathwaycomponent mv13454 :has-determiner "THE"
    :predication mv13448 :raw-text "upstreams")
   (:var mv13454 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv13444 mv13453))
   (:var mv13444 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv13453 :isa bio-entity :name "BRA") (:var mv13448 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv13466 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv13460 mv13464))
   (:var mv13460 :isa bio-activate :agent mv13459 :object mv13461 :present "PRESENT" :raw-text
    "activates")
   (:var mv13459 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv13461 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv13464 :isa bio-activate :agent mv13463 :object mv13465 :present "PRESENT" :raw-text
    "activates")
   (:var mv13463 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv13465 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv13468 :isa be :subject mv13467 :predicate mv13470 :present "PRESENT")
   (:var mv13467 :isa what)
   (:var mv13470 :isa path :end mv13474 :start mv13472 :has-determiner "THE")
   (:var mv13474 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv13472 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv13477 :isa remove :object mv13484 :present "PRESENT" :raw-text "remove")
   (:var mv13484 :isa fact :statement mv13482 :has-determiner "THE")
   (:var mv13482 :isa bio-activate :agent mv13481 :object mv13483 :present "PRESENT" :raw-text
    "activates")
   (:var mv13481 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv13483 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv13492 :isa explicit-suggestion :suggestion mv13487 :marker let-as-directive)
   (:var mv13487 :isa show :at-relative-location mv13490 :|statement-OR-theme| mv13486 :present
    "PRESENT")
   (:var mv13490 :isa top-qua-location)
   (:var mv13486 :isa protein :predication mv13488 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv13488 :isa phosphorylate :substrate mv13486 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv13496 :isa be :subject mv13495 :predicate mv13502 :present "PRESENT")
   (:var mv13495 :isa what)
   (:var mv13502 :isa positive-regulator :plural t :theme mv13500 :raw-text "positive regulators")
   (:var mv13500 :isa gene :has-determiner "THE" :expresses mv13499 :raw-text "gene")
   (:var mv13499 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv13507 :isa regulate :agent mv13510 :object mv13508 :present "PRESENT" :raw-text
    "regulate")
   (:var mv13510 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv13508 :isa protein :organ mv13505 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv13505 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv13523 :isa polar-question :statement mv13520)
   (:var mv13520 :isa there-exists :value mv13522 :predicate mv13513)
   (:var mv13522 :isa drug :plural t :predication mv13518 :quantifier mv13515 :raw-text "drugs")
   (:var mv13518 :isa inhibit :agent mv13522 :object mv13519 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv13519 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv13515 :isa any :word "any") (:var mv13513 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv13535 :isa polar-question :statement mv13532)
   (:var mv13532 :isa there-exists :value mv13534 :predicate mv13525)
   (:var mv13534 :isa drug :plural t :predication mv13530 :quantifier mv13527 :raw-text "drugs")
   (:var mv13530 :isa target :agent mv13534 :object mv13531 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv13531 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv13527 :isa any :word "any") (:var mv13525 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv13557 :isa polar-question :statement mv13550)
   (:var mv13550 :isa there-exists :value mv13556 :predicate mv13538)
   (:var mv13556 :isa gene :plural t :predication mv13552 :organ mv13545 :quantifier mv13540
    :raw-text "genes")
   (:var mv13552 :isa regulate :object mv13556 :that-rel t :agent mv13536 :present "PRESENT"
    :raw-text "regulated")
   (:var mv13536 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13545 :isa liver :has-determiner "THE") (:var mv13540 :isa any :word "any")
   (:var mv13538 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv13578 :isa polar-question :statement mv13572)
   (:var mv13572 :isa there-exists :value mv13577 :predicate mv13560)
   (:var mv13577 :isa gene :plural t :predication mv13565 :quantifier mv13562 :raw-text "genes")
   (:var mv13565 :isa involve :object mv13577 :theme mv13567 :past "PAST")
   (:var mv13567 :isa apoptosis :predication mv13574 :raw-text "apoptosis")
   (:var mv13574 :isa regulate :affected-process mv13567 :that-rel t :agent mv13558 :present
    "PRESENT" :raw-text "regulated")
   (:var mv13558 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13562 :isa any :word "any") (:var mv13560 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv13590 :isa there-exists :predicate mv13581)
   (:var mv13581 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv13603 :isa polar-question :statement mv13599)
   (:var mv13599 :isa there-exists :value mv13602 :predicate mv13593)
   (:var mv13602 :isa inhibitor :plural t :|target-OR-protein| mv13591 :quantifier mv13595
    :raw-text "inhibitors")
   (:var mv13591 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv13595 :isa any :word "any") (:var mv13593 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv13618 :isa polar-question :statement mv13614)
   (:var mv13614 :isa there-exists :value mv13617 :predicate mv13606)
   (:var mv13617 :isa gene :plural t :predication mv13610 :raw-text "genes")
   (:var mv13610 :isa regulate :object mv13617 :agent mv13615 :past "PAST" :raw-text "regulated")
   (:var mv13615 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv13604 mv13613))
   (:var mv13604 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv13613 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv13606 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv13633 :isa polar-question :statement mv13623)
   (:var mv13623 :isa bio-find :agent mv13621 :object mv13619 :modal "CAN" :raw-text "find")
   (:var mv13621 :isa interlocutor :name "hearer")
   (:var mv13619 :isa protein :quantifier mv13624 :cellular-process mv13625 :context mv13628
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13624 :isa any :word "any") (:var mv13625 :isa apoptosis :raw-text "apoptotic")
   (:var mv13628 :isa pathway :plural t :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?" (:var mv13635 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv13673 :isa polar-question :statement mv13672) (:var mv13672 :isa look-up :actor mv13654)
   (:var mv13654 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv13685 :isa polar-question :statement mv13677)
   (:var mv13677 :isa show :agent mv13676 :|statement-OR-theme| mv13684 :beneficiary mv13678 :modal
    "CAN")
   (:var mv13676 :isa interlocutor :name "hearer")
   (:var mv13684 :isa gene :plural t :predication mv13681 :raw-text "genes")
   (:var mv13681 :isa regulate :object mv13684 :agent mv13674 :past "PAST" :raw-text "regulated")
   (:var mv13674 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv13678 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv13700 :isa polar-question :statement mv13689)
   (:var mv13689 :isa show :agent mv13688 :|statement-OR-theme| mv13699 :beneficiary mv13690 :modal
    "CAN")
   (:var mv13688 :isa interlocutor :name "hearer")
   (:var mv13699 :isa gene :plural t :predication mv13697 :raw-text "genes")
   (:var mv13697 :isa regulate :object mv13699 :that-rel t :agent mv13686 :modal "CAN" :raw-text
    "regulated")
   (:var mv13686 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv13690 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv13710 :isa polar-question :statement mv13703)
   (:var mv13703 :isa show :agent mv13702 :|statement-OR-theme| mv13706 :beneficiary mv13704 :modal
    "CAN")
   (:var mv13702 :isa interlocutor :name "hearer")
   (:var mv13706 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv13704 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv13724 :isa polar-question :statement mv13714)
   (:var mv13714 :isa tell :agent mv13713 :theme mv13723 :beneficiary mv13715 :modal "CAN")
   (:var mv13713 :isa interlocutor :name "hearer")
   (:var mv13723 :isa gene :plural t :predication mv13719 :has-determiner "THE" :raw-text "genes")
   (:var mv13719 :isa regulate :object mv13723 :agent mv13711 :past "PAST" :raw-text "regulated")
   (:var mv13711 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13715 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv13737 :isa polar-question :statement mv13728)
   (:var mv13728 :isa tell :agent mv13727 :theme mv13736 :beneficiary mv13729 :modal "CAN")
   (:var mv13727 :isa interlocutor :name "hearer")
   (:var mv13736 :isa gene :plural t :predication mv13734 :has-determiner "THE" :raw-text "genes")
   (:var mv13734 :isa regulate :object mv13736 :that-rel t :agent mv13725 :present "PRESENT"
    :raw-text "regulates")
   (:var mv13725 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13729 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv13754 :isa polar-question :statement mv13741)
   (:var mv13741 :isa tell :agent mv13740 :theme mv13753 :beneficiary mv13742 :modal "CAN")
   (:var mv13740 :isa interlocutor :name "hearer")
   (:var mv13753 :isa gene :plural t :predication mv13751 :has-determiner "THE" :raw-text "genes")
   (:var mv13751 :isa regulate :object mv13753 :that-rel t :agent mv13738 :modal "CAN" :raw-text
    "regulated")
   (:var mv13738 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13742 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv13772 :isa polar-question :statement mv13758)
   (:var mv13758 :isa tell :agent mv13757 :theme mv13771 :beneficiary mv13759 :modal "CAN")
   (:var mv13757 :isa interlocutor :name "hearer")
   (:var mv13771 :isa gene :plural t :predication mv13770 :has-determiner "THE" :raw-text "genes")
   (:var mv13770 :isa regulate :object mv13771 :agent mv13755 :modal mv13756 :raw-text "regulated")
   (:var mv13755 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13756 :isa can) (:var mv13759 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv13790 :isa polar-question :statement mv13778)
   (:var mv13778 :isa tell :agent mv13777 :theme mv13788 :theme mv13779 :modal "CAN")
   (:var mv13777 :isa interlocutor :name "hearer")
   (:var mv13788 :isa share :object mv13787 :participant mv13786 :modal "CAN" :raw-text "shared")
   (:var mv13787 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv13786 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv13775 mv13785))
   (:var mv13775 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv13785 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv13779 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv13805 :isa polar-question :statement mv13794)
   (:var mv13794 :isa tell :agent mv13793 :theme mv13803 :theme mv13795 :modal "CAN")
   (:var mv13793 :isa interlocutor :name "hearer")
   (:var mv13803 :isa regulate :object mv13802 :agent mv13791 :modal "CAN" :raw-text "regulated")
   (:var mv13802 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv13791 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13795 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv13825 :isa polar-question :statement mv13809)
   (:var mv13809 :isa tell :agent mv13808 :theme mv13821 :theme mv13810 :modal "CAN")
   (:var mv13808 :isa interlocutor :name "hearer")
   (:var mv13821 :isa regulate :object mv13824 :agent mv13806 :modal "CAN" :raw-text "regulated")
   (:var mv13824 :isa gene :plural t :organ mv13816 :has-determiner "WHICH" :raw-text "genes")
   (:var mv13816 :isa liver :has-determiner "THE")
   (:var mv13806 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13810 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv13837 :isa polar-question :statement mv13829)
   (:var mv13829 :isa tell :agent mv13828 :theme mv13836 :beneficiary mv13830 :modal "CAN")
   (:var mv13828 :isa interlocutor :name "hearer")
   (:var mv13836 :isa gene :plural t :predication mv13834 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv13834 :isa regulate :object mv13836 :agent mv13826 :present "PRESENT" :raw-text
    "regulates")
   (:var mv13826 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13830 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv13847 :isa polar-question :statement mv13845)
   (:var mv13845 :isa affect :agent mv13838 :affected-process mv13843 :raw-text "affect")
   (:var mv13838 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13843 :isa gene-transcript-express :object mv13839 :has-determiner "THE" :raw-text
    "expression")
   (:var mv13839 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv13859 :isa polar-question :statement mv13857)
   (:var mv13857 :isa affect :agent mv13848 :affected-process mv13853 :raw-text "affect")
   (:var mv13848 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13853 :isa gene-transcript-express :object mv13856 :has-determiner "THE" :raw-text
    "expression")
   (:var mv13856 :isa gene :has-determiner "THE" :expresses mv13849 :raw-text "gene")
   (:var mv13849 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv13872 :isa polar-question :statement mv13870)
   (:var mv13870 :isa increase :agent mv13860 :affected-process mv13866 :raw-text "increase")
   (:var mv13860 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13866 :isa gene-transcript-express :object mv13869 :has-determiner "THE" :raw-text
    "expression")
   (:var mv13869 :isa gene :has-determiner "THE" :expresses mv13861 :raw-text "gene")
   (:var mv13861 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv13884 :isa polar-question :statement mv13882)
   (:var mv13882 :isa increase :agent mv13873 :affected-process mv13878 :raw-text "increase")
   (:var mv13873 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13878 :isa transcribe :object mv13881 :raw-text "transcription")
   (:var mv13881 :isa gene :has-determiner "THE" :expresses mv13874 :raw-text "gene")
   (:var mv13874 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv13894 :isa polar-question :statement mv13892)
   (:var mv13892 :isa affect :agent mv13885 :affected-process mv13889 :raw-text "affect")
   (:var mv13885 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13889 :isa gene-transcript-express :object mv13891 :has-determiner "THE" :raw-text
    "expression")
   (:var mv13891 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv13904 :isa polar-question :statement mv13903)
   (:var mv13903 :isa contain :theme mv13901 :patient mv13895)
   (:var mv13901 :isa pathway :has-determiner "THE" :modifier mv13898 :raw-text "pathway")
   (:var mv13898 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv13895 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv13907 :isa bio-find :object mv13909 :present "PRESENT" :raw-text "Find")
   (:var mv13909 :isa treatment :disease mv13905 :has-determiner "A" :raw-text "treatment")
   (:var mv13905 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv13914 :isa bio-find :object mv13924 :present "PRESENT" :raw-text "Find")
   (:var mv13924 :isa gene :plural t :predication mv13920 :organ mv13919 :raw-text "genes")
   (:var mv13920 :isa regulate :object mv13924 :agent mv13912 :past "PAST" :raw-text "regulated")
   (:var mv13912 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13919 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv13928 :isa bio-find :object mv13933 :present "PRESENT" :raw-text "Find")
   (:var mv13933 :isa gene :plural t :predication mv13932 :raw-text "genes")
   (:var mv13932 :isa regulate :object mv13933 :that-rel t :agent mv13926 :present "PRESENT"
    :raw-text "regulates")
   (:var mv13926 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv13938 :isa bio-find :object mv13935 :present "PRESENT" :raw-text "Find")
   (:var mv13935 :isa transcription-factor :plural t :predication mv13939 :raw-text
    "transcription factors")
   (:var mv13939 :isa share :object mv13935 :participant mv13943 :past "PAST" :raw-text "shared")
   (:var mv13943 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv13936 mv13942))
   (:var mv13936 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv13942 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv13950 :isa bio-activate :manner mv13947 :agent mv13949 :object mv13946 :present
    "PRESENT" :raw-text "activate")
   (:var mv13947 :isa how)
   (:var mv13949 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv13946 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv13955 :isa regulate :manner mv13953 :agent mv13951 :object mv13957 :present "PRESENT"
    :raw-text "regulate")
   (:var mv13953 :isa how)
   (:var mv13951 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13957 :isa gene :has-determiner "THE" :expresses mv13952 :raw-text "gene")
   (:var mv13952 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv13973 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv13959 :object mv13977)
   (:var mv13959 :isa how) (:var mv13977 :isa cancer :modifier mv13963 :modifier mv13963)
   (:var mv13963 :isa cause :by-means-of mv13975 :raw-text "cause")
   (:var mv13975 :isa effect :object mv13972 :participant mv13967 :raw-text "effect")
   (:var mv13972 :isa micro-rna :plural t :raw-text "miRNAs")
   (:var mv13967 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv13981 :isa regulate :manner mv13979 :agent mv13978 :affected-process mv13982 :present
    "PRESENT" :raw-text "regulate")
   (:var mv13979 :isa how)
   (:var mv13978 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13982 :isa apoptosis :organ mv13985 :raw-text "apoptosis")
   (:var mv13985 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv13990 :isa regulate :manner mv13988 :agent mv13987 :affected-process mv13991 :present
    "PRESENT" :raw-text "regulate")
   (:var mv13988 :isa how)
   (:var mv13987 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13991 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv13995 :isa regulate :manner mv13993 :agent mv13992 :object mv14000 :present "PRESENT"
    :raw-text "regulate")
   (:var mv13993 :isa how)
   (:var mv13992 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14000 :isa gene :plural t :cellular-process mv13996 :raw-text "genes")
   (:var mv13996 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv14010 :isa wh-question :statement mv14003 :wh how)
   (:var mv14003 :isa be :predicate mv14001 :present "PRESENT")
   (:var mv14001 :isa protein :predication mv14004 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv14004 :isa involve :object mv14001 :theme mv14008 :past "PAST")
   (:var mv14008 :isa regulate :cellular-process mv14006 :raw-text "regulation")
   (:var mv14006 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv14023 :isa wh-question :statement mv14013 :wh how)
   (:var mv14013 :isa be :predicate mv14011 :present "PRESENT")
   (:var mv14011 :isa protein :predication mv14014 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv14014 :isa involve :object mv14011 :theme mv14016 :past "PAST")
   (:var mv14016 :isa regulate :organ mv14019 :|agent-OR-object| mv14020 :raw-text "regulation")
   (:var mv14019 :isa liver :has-determiner "THE")
   (:var mv14020 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv14032 :isa wh-question :statement mv14026 :wh how)
   (:var mv14026 :isa be :predicate mv14024 :present "PRESENT")
   (:var mv14024 :isa protein :predication mv14027 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv14027 :isa involve :object mv14024 :theme mv14029 :past "PAST")
   (:var mv14029 :isa regulate :affected-process mv14030 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv14030 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv14041 :isa wh-question :statement mv14035 :wh how)
   (:var mv14035 :isa be :predicate mv14033 :present "PRESENT")
   (:var mv14033 :isa protein :predication mv14036 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv14036 :isa bio-use :object mv14033 :theme mv14040 :past "PAST" :raw-text "used")
   (:var mv14040 :isa regulate :affected-process mv14039 :raw-text "regulate")
   (:var mv14039 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv14055 :isa copular-predication-of-pp :item mv14050 :value mv14054 :prep "IN" :predicate
    mv14046)
   (:var mv14050 :isa gene :plural t :quantifier how-many :raw-text "genes")
   (:var mv14054 :isa gene :plural t :context mv14043 :quantifier how-many :raw-text "genes")
   (:var mv14043 :isa signaling-pathway :has-determiner "THE" :modifier mv14049 :raw-text
    "signaling pathway")
   (:var mv14049 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv14046 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv14064 :isa affect :manner mv14059 :modal mv14060 :agent mv14062 :object mv14058 :present
    "PRESENT" :raw-text "affect")
   (:var mv14059 :isa how) (:var mv14060 :isa might)
   (:var mv14062 :isa mutation :has-determiner "A" :|agent-OR-object| mv14057 :raw-text "mutation")
   (:var mv14057 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14058 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv14072 :isa polar-question :statement mv14067)
   (:var mv14067 :isa be :subject mv14065 :predicate mv14069)
   (:var mv14065 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14069 :isa regulator :theme mv14066 :has-determiner "A" :raw-text "regulator")
   (:var mv14066 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv14080 :isa polar-question :statement mv14075)
   (:var mv14075 :isa be :subject mv14073 :predicate mv14077)
   (:var mv14073 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14077 :isa regulator :theme mv14074 :has-determiner "A" :raw-text "regulator")
   (:var mv14074 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv14090 :isa polar-question :statement mv14083)
   (:var mv14083 :isa be :subject mv14081 :predicate mv14085)
   (:var mv14081 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14085 :isa regulator :theme mv14088 :has-determiner "A" :raw-text "regulator")
   (:var mv14088 :isa gene :has-determiner "THE" :expresses mv14082 :raw-text "gene")
   (:var mv14082 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv14100 :isa polar-question :statement mv14093)
   (:var mv14093 :isa be :subject mv14091 :predicate mv14095)
   (:var mv14091 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14095 :isa regulator :theme mv14098 :has-determiner "A" :raw-text "regulator")
   (:var mv14098 :isa gene :has-determiner "THE" :expresses mv14092 :raw-text "gene")
   (:var mv14092 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv14109 :isa polar-question :statement mv14104)
   (:var mv14104 :isa be :subject mv14101 :predicate mv14102)
   (:var mv14101 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14102 :isa transcription-factor :controlled-gene mv14107 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv14107 :isa gene :expresses mv14103 :raw-text "gene")
   (:var mv14103 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv14117 :isa polar-question :statement mv14113)
   (:var mv14113 :isa be :subject mv14110 :predicate mv14111)
   (:var mv14110 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14111 :isa transcription-factor :controlled-gene mv14112 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv14112 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv14125 :isa polar-question :statement mv14121)
   (:var mv14121 :isa be :subject mv14118 :predicate mv14119)
   (:var mv14118 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14119 :isa transcription-factor :controlled-gene mv14120 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv14120 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv14135 :isa polar-question :statement mv14129)
   (:var mv14129 :isa be :subject mv14126 :predicate mv14127)
   (:var mv14126 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14127 :isa transcription-factor :controlled-gene mv14133 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv14133 :isa gene :has-determiner "THE" :expresses mv14128 :raw-text "gene")
   (:var mv14128 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv14142 :isa polar-question :statement mv14139)
   (:var mv14139 :isa regulate :object mv14136 :agent mv14137 :past "PAST" :raw-text "regulated")
   (:var mv14136 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14137 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv14152 :isa polar-question :statement mv14146)
   (:var mv14146 :isa be :subject mv14143 :predicate mv14144)
   (:var mv14143 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14144 :isa transcription-factor :controlled-gene mv14150 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv14150 :isa gene :has-determiner "THE" :expresses mv14145 :raw-text "gene")
   (:var mv14145 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv14154 :isa list :theme mv14156 :present "PRESENT")
   (:var mv14156 :isa gene :plural t :predication mv14157 :raw-text "genes")
   (:var mv14157 :isa regulate :object mv14156 :agent mv14153 :past "PAST" :raw-text "regulated")
   (:var mv14153 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv14162 :isa list :theme mv14171 :present "PRESENT")
   (:var mv14171 :isa gene :plural t :predication mv14169 :raw-text "genes")
   (:var mv14169 :isa regulate :object mv14171 :that-rel t :agent mv14161 :present "PRESENT"
    :raw-text "regulated")
   (:var mv14161 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv14173 :isa list :theme mv14180 :present "PRESENT")
   (:var mv14180 :isa gene :plural t :predication mv14178 :quantifier mv14174 :raw-text "genes")
   (:var mv14178 :isa regulate :object mv14180 :that-rel t :agent mv14172 :present "PRESENT"
    :raw-text "regulates")
   (:var mv14172 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14174 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv14182 :isa list :theme mv14188 :present "PRESENT")
   (:var mv14188 :isa gene :plural t :predication mv14186 :has-determiner "THE" :raw-text "genes")
   (:var mv14186 :isa regulate :object mv14188 :agent mv14181 :present "PRESENT" :raw-text
    "regulates")
   (:var mv14181 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv14190 :isa list :theme mv14201 :present "PRESENT")
   (:var mv14201 :isa gene :plural t :predication mv14199 :has-determiner "THE" :raw-text "genes")
   (:var mv14199 :isa regulate :object mv14201 :that-rel t :agent mv14189 :present "PRESENT"
    :raw-text "regulated")
   (:var mv14189 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv14203 :isa list :theme mv14210 :present "PRESENT")
   (:var mv14210 :isa gene :plural t :predication mv14208 :has-determiner "THE" :raw-text "genes")
   (:var mv14208 :isa regulate :object mv14210 :agent mv14202 :present "PRESENT" :raw-text
    "regulates")
   (:var mv14202 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv14211 :isa list :theme mv14213 :present "PRESENT")
   (:var mv14213 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv14218 :isa show :|statement-OR-theme| mv14225 :beneficiary mv14219 :present "PRESENT")
   (:var mv14225 :isa gene :plural t :predication mv14222 :raw-text "genes")
   (:var mv14222 :isa regulate :object mv14225 :agent mv14217 :past "PAST" :raw-text "regulated")
   (:var mv14217 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14219 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv14227 :isa show :|statement-OR-theme| mv14237 :beneficiary mv14228 :present "PRESENT")
   (:var mv14237 :isa gene :plural t :predication mv14235 :raw-text "genes")
   (:var mv14235 :isa regulate :object mv14237 :that-rel t :agent mv14226 :present "PRESENT"
    :raw-text "regulated")
   (:var mv14226 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14228 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv14239 :isa show :|statement-OR-theme| mv14245 :beneficiary mv14240 :present "PRESENT")
   (:var mv14245 :isa gene :plural t :predication mv14244 :raw-text "genes")
   (:var mv14244 :isa regulate :object mv14245 :that-rel t :agent mv14238 :present "PRESENT"
    :raw-text "regulates")
   (:var mv14238 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14240 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv14246 :isa show :|statement-OR-theme| mv14249 :beneficiary mv14247 :present "PRESENT")
   (:var mv14249 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv14247 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv14268 :isa show :statement mv14266 :theme mv14257 :present "PRESENT")
   (:var mv14266 :isa share :object mv14265 :participant mv14264 :present "PRESENT" :raw-text
    "shared")
   (:var mv14265 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv14264 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv14255 mv14263))
   (:var mv14255 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14263 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv14257 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv14281 :isa show :statement mv14279 :theme mv14271 :present "PRESENT")
   (:var mv14279 :isa regulate :object mv14278 :agent mv14269 :present "PRESENT" :raw-text
    "regulated")
   (:var mv14278 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv14269 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14271 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv14283 :isa show :|statement-OR-theme| mv14290 :present "PRESENT")
   (:var mv14290 :isa gene :plural t :predication mv14288 :has-determiner "THE" :raw-text "genes")
   (:var mv14288 :isa regulate :object mv14290 :agent mv14282 :present "PRESENT" :raw-text
    "regulates")
   (:var mv14282 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv14291 :isa show :|statement-OR-theme| mv14293 :present "PRESENT")
   (:var mv14293 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv14300 :isa show :|statement-OR-theme| mv14310 :present "PRESENT")
   (:var mv14310 :isa transcription-factor :plural t :predication mv14308 :raw-text
    "transcription factors")
   (:var mv14308 :isa share :object mv14310 :that-rel t :participant mv14307 :present "PRESENT"
    :raw-text "shared")
   (:var mv14307 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv14299 mv14306))
   (:var mv14299 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14306 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv14312 :isa tell :theme mv14325 :beneficiary mv14313 :present "PRESENT")
   (:var mv14325 :isa gene :plural t :predication mv14324 :has-determiner "THE" :raw-text "genes")
   (:var mv14324 :isa regulate :object mv14325 :agent mv14311 :present "PRESENT" :raw-text
    "regulated")
   (:var mv14311 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14313 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv14327 :isa tell :theme mv14339 :theme mv14328 :present "PRESENT")
   (:var mv14339 :isa regulate :object mv14338 :agent mv14337 :present "PRESENT" :raw-text
    "regulated")
   (:var mv14338 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv14337 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv14326 mv14336))
   (:var mv14326 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14336 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv14328 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv14342 :isa tell :theme mv14351 :theme mv14343 :present "PRESENT")
   (:var mv14351 :isa regulate :object mv14350 :agent mv14341 :present "PRESENT" :raw-text
    "regulated")
   (:var mv14350 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv14341 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14343 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv14356 :isa be :subject mv14355 :predicate mv14360 :present "PRESENT")
   (:var mv14355 :isa what)
   (:var mv14360 :isa positive-regulator :plural t :theme mv14358 :raw-text "positive regulators")
   (:var mv14358 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv14363 :isa be :subject mv14362 :predicate mv14370 :present "PRESENT")
   (:var mv14362 :isa what)
   (:var mv14370 :isa regulator :plural t :theme mv14361 :quantifier mv14364 :raw-text
    "regulators")
   (:var mv14361 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv14364 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv14377 :isa be :subject mv14376 :predicate mv14389 :present "PRESENT")
   (:var mv14376 :isa what)
   (:var mv14389 :isa regulator :plural t :theme mv14385 :has-determiner "THE" :predication mv14379
    :raw-text "regulators")
   (:var mv14385 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv14371 mv14372 mv14383 mv14373 mv14374 mv14375))
   (:var mv14371 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv14372 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv14383 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv14373 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv14374 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv14375 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv14379 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv14392 :isa be :subject mv14391 :predicate mv14404 :present "PRESENT")
   (:var mv14391 :isa what)
   (:var mv14404 :isa regulator :plural t :theme mv14400 :has-determiner "THE" :predication mv14394
    :raw-text "regulators")
   (:var mv14400 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv14390 mv14399))
   (:var mv14390 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14399 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv14394 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv14407 :isa be :subject mv14406 :predicate mv14419 :present "PRESENT")
   (:var mv14406 :isa what)
   (:var mv14419 :isa regulator :plural t :theme mv14415 :has-determiner "THE" :predication mv14409
    :raw-text "regulators")
   (:var mv14415 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv14405 mv14414))
   (:var mv14405 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14414 :isa bio-entity :name "srg") (:var mv14409 :isa common))
  ("What are the common regulators of those genes"
   (:var mv14421 :isa be :subject mv14420 :predicate mv14434 :present "PRESENT")
   (:var mv14420 :isa what)
   (:var mv14434 :isa regulator :plural t :theme mv14432 :has-determiner "THE" :predication mv14423
    :raw-text "regulators")
   (:var mv14432 :isa gene :plural t :has-determiner "THOSE" :raw-text "genes")
   (:var mv14423 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv14437 :isa be :subject mv14436 :predicate mv14445 :present "PRESENT")
   (:var mv14436 :isa what)
   (:var mv14445 :isa gene :plural t :predication mv14441 :has-determiner "THE" :raw-text "genes")
   (:var mv14441 :isa regulate :object mv14445 :agent mv14435 :past "PAST" :raw-text "regulated")
   (:var mv14435 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv14448 :isa be :subject mv14447 :predicate mv14455 :present "PRESENT")
   (:var mv14447 :isa what)
   (:var mv14455 :isa gene :plural t :predication mv14453 :has-determiner "THE" :raw-text "genes")
   (:var mv14453 :isa regulate :object mv14455 :agent mv14446 :present "PRESENT" :raw-text
    "regulates")
   (:var mv14446 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv14460 :isa be :subject mv14459 :predicate mv14474 :present "PRESENT")
   (:var mv14459 :isa what)
   (:var mv14474 :isa regulator :plural t :theme mv14470 :has-determiner "THE" :modifier mv14463
    :raw-text "regulators")
   (:var mv14470 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv14467 mv14468 mv14456 mv14457 mv14458))
   (:var mv14467 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv14468 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv14456 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14457 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv14458 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv14463 :isa frequent :comparative mv14462 :name "frequent")
   (:var mv14462 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv14481 :isa be :subject mv14480 :predicate mv14490 :present "PRESENT")
   (:var mv14480 :isa what)
   (:var mv14490 :isa transcription-factor :plural t :predication mv14484 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv14484 :isa regulate :agent mv14490 :that-rel t :object mv14488 :present "PRESENT"
    :raw-text "regulate")
   (:var mv14488 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv14485 mv14486 mv14477 mv14478 mv14479))
   (:var mv14485 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv14486 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv14477 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14478 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv14479 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv14506 :isa copular-predication-of-pp :item mv14501 :value mv14505 :prep "IN" :predicate
    mv14495)
   (:var mv14501 :isa gene :plural t :has-determiner "WHAT" :modifier mv14492 :raw-text "genes")
   (:var mv14492 :isa other :name "other")
   (:var mv14505 :isa gene :plural t :context mv14499 :has-determiner "WHAT" :modifier mv14492
    :raw-text "genes")
   (:var mv14499 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv14495 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv14523 :isa copular-predication-of-pp :item mv14518 :value mv14522 :prep "IN" :predicate
    mv14512)
   (:var mv14518 :isa protein :plural t :has-determiner "WHAT" :modifier mv14509 :raw-text
    "proteins")
   (:var mv14509 :isa other :name "other")
   (:var mv14522 :isa protein :plural t :in-pathway mv14516 :has-determiner "WHAT" :modifier
    mv14509 :raw-text "proteins")
   (:var mv14516 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv14512 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv14528 :isa be :subject mv14531 :predicate mv14529 :present "PRESENT")
   (:var mv14531 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14529 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv14535 :isa involve :theme mv14537 :object mv14536 :present "PRESENT")
   (:var mv14537 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14536 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv14551 :isa copular-predication-of-pp :item mv14546 :value mv14550 :prep "IN" :predicate
    mv14541)
   (:var mv14546 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv14550 :isa protein :plural t :in-pathway mv14545 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv14545 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv14541 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv14557 :isa involve :theme mv14558 :object mv14553 :present "PRESENT")
   (:var mv14558 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14553 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv14572 :isa copular-predication-of-pp :item mv14567 :value mv14571 :prep "IN" :predicate
    mv14562)
   (:var mv14567 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv14571 :isa gene :plural t :context mv14566 :has-determiner "WHAT" :raw-text "genes")
   (:var mv14566 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv14562 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv14587 :isa answer :patient mv14585 :modal mv14578 :agent mv14579 :theme mv14584 :present
    "PRESENT")
   (:var mv14585 :isa bio-question :plural t :has-determiner "WHAT") (:var mv14578 :isa can)
   (:var mv14579 :isa interlocutor :name "hearer")
   (:var mv14584 :isa micro-rna :plural t :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv14592 :isa regulate :agent mv14593 :object mv14590 :present "PRESENT" :raw-text
    "regulate")
   (:var mv14593 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv14590 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
    :count 8 :family-members
    ((protein (:name "SMAD6_HUMAN") (:uid "UP:O43541"))
     (protein (:name "SMAD9_HUMAN") (:uid "UP:O15198"))
     (protein (:name "SMAD7_HUMAN") (:uid "UP:O15105"))
     (protein (:name "SMAD5_HUMAN") (:uid "UP:Q99717"))
     (protein (:name "SMAD1_HUMAN") (:uid "UP:Q15797"))
     (protein (:name "SMAD2_HUMAN") (:uid "UP:Q15796"))
     (protein (:name "SMAD4_HUMAN") (:uid "UP:Q13485"))
     (protein (:name "SMAD3_HUMAN") (:uid "UP:P84022")))
    :uid "FPLX:SMAD"))
  ("Where does stat3 regulate cfos"
   (:var mv14597 :isa regulate :location mv14595 :agent mv14594 :object mv14598 :present "PRESENT"
    :raw-text "regulate")
   (:var mv14595 :isa where)
   (:var mv14594 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14598 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv14603 :isa involve :theme mv14606 :object mv14604 :present "PRESENT")
   (:var mv14606 :isa pathway :plural t :has-determiner "WHICH" :modifier mv14600 :raw-text
    "pathways")
   (:var mv14600 :isa database :name "KEGG" :uid "KEGG")
   (:var mv14604 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv14620 :isa copular-predication-of-pp :item mv14615 :value mv14619 :prep "IN" :predicate
    mv14611)
   (:var mv14615 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv14619 :isa gene :plural t :context mv14607 :has-determiner "WHICH" :raw-text "genes")
   (:var mv14607 :isa signaling-pathway :has-determiner "THE" :modifier mv14614 :raw-text
    "signaling pathway")
   (:var mv14614 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv14611 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv14633 :isa involve :object mv14632 :|context-OR-theme| mv14622 :present "PRESENT")
   (:var mv14632 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv14622 :isa signaling-pathway :has-determiner "THE" :predication mv14630 :modifier
    mv14631 :raw-text "signaling pathway")
   (:var mv14630 :isa oncogenic)
   (:var mv14631 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("Which kinases regulate x?"
   (:var mv14638 :isa regulate :agent mv14640 :object mv14639 :present "PRESENT" :raw-text
    "regulate")
   (:var mv14640 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv14639 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv14641 :isa downregulate :agent mv14646 :object mv14645 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv14646 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv14645 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv14647 :isa upregulate :agent mv14652 :object mv14651 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv14652 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv14651 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv14663 :isa copular-predication-of-pp :item mv14655 :value mv14661 :prep mv14657
    :predicate mv14656)
   (:var mv14655 :isa these :quantifier mv14653 :word "these") (:var mv14653 :isa which)
   (:var mv14661 :isa pathway :plural t :modifier mv14658 :raw-text "pathways")
   (:var mv14658 :isa immune :name "immune") (:var mv14657 :isa in :word "in")
   (:var mv14656 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv14675 :isa copular-predication-of-pp :item mv14668 :value mv14673 :prep mv14670
    :predicate mv14669)
   (:var mv14668 :isa these :quantifier mv14666 :word "these") (:var mv14666 :isa which)
   (:var mv14673 :isa pathway :plural t :non-cellular-location mv14665 :raw-text "pathways")
   (:var mv14665 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv14670 :isa in :word "in") (:var mv14669 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv14679 :isa be :subject mv14678 :predicate mv14685 :present "PRESENT")
   (:var mv14678 :isa what)
   (:var mv14685 :isa gene :plural t :predication mv14683 :has-determiner "THE" :raw-text "genes")
   (:var mv14683 :isa regulate :object mv14685 :agent mv14677 :present "PRESENT" :raw-text
    "regulates")
   (:var mv14677 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv14695 :isa copular-predication-of-pp :item mv14688 :value mv14693 :prep mv14690
    :predicate mv14689)
   (:var mv14688 :isa those :quantifier mv14686 :word "those") (:var mv14686 :isa which)
   (:var mv14693 :isa pathway :has-determiner "THE" :modifier mv14692 :raw-text "pathway")
   (:var mv14692 :isa immune :name "immune") (:var mv14690 :isa in :word "in")
   (:var mv14689 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv14701 :isa involve :theme mv14702 :object mv14697 :present "PRESENT")
   (:var mv14702 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv14697 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv14712 :isa polar-question :statement mv14705)
   (:var mv14705 :isa show :agent mv14704 :|statement-OR-theme| mv14708 :beneficiary mv14706 :modal
    "CAN")
   (:var mv14704 :isa interlocutor :name "hearer")
   (:var mv14708 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv14706 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv14718 :isa polar-question :statement mv14717)
   (:var mv14717 :isa inhibit :agent mv14715 :object mv14713 :raw-text "inhibit")
   (:var mv14715 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv14713 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv14728 :isa explicit-suggestion :suggestion mv14720 :marker let-as-directive)
   (:var mv14720 :isa build :artifact mv14722 :present "PRESENT")
   (:var mv14722 :isa model :object mv14726 :has-determiner "A")
   (:var mv14726 :isa neighborhood :has-determiner "THE" :modifier mv14725)
   (:var mv14725 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv14746 :isa collection :type know :number 2 :items (mv14744 mv14745))
   (:var mv14744 :isa know :agent mv14729 :statement mv14735 :present "PRESENT")
   (:var mv14729 :isa interlocutor :name "speaker")
   (:var mv14735 :isa bio-activate :agent mv14734 :object mv14736 :present "PRESENT" :raw-text
    "activates")
   (:var mv14734 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv14736 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv14745 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv14738 mv14742))
   (:var mv14738 :isa bio-activate :agent mv14737 :object mv14739 :present "PRESENT" :raw-text
    "activates")
   (:var mv14737 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv14739 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14742 :isa bio-activate :agent mv14741 :object mv14743 :present "PRESENT" :raw-text
    "activates")
   (:var mv14741 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14743 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv14749 :isa phosphorylate :agent mv14747 :substrate mv14748 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv14747 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv14748 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv14752 :isa dephosphorylate :agent mv14750 :substrate mv14751 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv14750 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv14751 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv14763 :isa polar-question :statement mv14762)
   (:var mv14762 :isa copular-predication :item mv14756 :value mv14760 :predicate mv14754)
   (:var mv14756 :isa bio-amount :measured-item mv14753 :has-determiner "THE" :raw-text "amount")
   (:var mv14753 :isa protein :predication mv14758 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv14758 :isa phosphorylate :substrate mv14753 :raw-text "phosphorylated")
   (:var mv14760 :isa high :adverb mv14759) (:var mv14759 :isa always :name "always")
   (:var mv14754 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv14774 :isa polar-question :statement mv14773)
   (:var mv14773 :isa copular-predication :item mv14767 :value mv14771 :predicate mv14765)
   (:var mv14767 :isa bio-amount :measured-item mv14764 :has-determiner "THE" :raw-text "amount")
   (:var mv14764 :isa protein :predication mv14769 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv14769 :isa phosphorylate :substrate mv14764 :raw-text "phosphorylated")
   (:var mv14771 :isa low :adverb mv14770) (:var mv14770 :isa always :name "always")
   (:var mv14765 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv14784 :isa polar-question :statement mv14783)
   (:var mv14783 :isa vanish :agent mv14782 :raw-text "vanish")
   (:var mv14782 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv14776
    :component mv14775)
   (:var mv14776 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv14775 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv14794 :isa polar-question :statement mv14793)
   (:var mv14793 :isa vanish :agent mv14792 :raw-text "vanish")
   (:var mv14792 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv14786
    :component mv14785)
   (:var mv14786 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv14785 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv14824 :isa polar-question :statement mv14823)
   (:var mv14823 :isa event-relation :subordinated-event mv14820 :event mv14816)
   (:var mv14820 :isa wh-question :statement mv14817 :wh if)
   (:var mv14817 :isa increase :|agent-OR-cause| mv14804 :|multiplier-OR-cause| mv14815
    :|affected-process-OR-object| mv14808 :raw-text "increase")
   (:var mv14804 :isa interlocutor :name "person-and-machine")
   (:var mv14815 :isa measurement :number mv14812) (:var mv14812 :isa number :value 10)
   (:var mv14808 :isa bio-amount :measured-item mv14796 :has-determiner "THE" :raw-text "amount")
   (:var mv14796 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv14816 :isa vanish :cause mv14799 :raw-text "vanish")
   (:var mv14799 :isa bio-amount :measured-item mv14795 :has-determiner "THE" :raw-text "amount")
   (:var mv14795 :isa protein :predication mv14801 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv14801 :isa phosphorylate :substrate mv14795 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv14826 :isa show :|statement-OR-theme| mv14833 :beneficiary mv14827 :present "PRESENT")
   (:var mv14833 :isa evidence :statement mv14832 :has-determiner "THE")
   (:var mv14832 :isa regulate :agent mv14831 :object mv14825 :present "PRESENT" :raw-text
    "regulates")
   (:var mv14831 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv14825 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv14827 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv14838 :isa increase :|agent-OR-cause| mv14835 :|affected-process-OR-object| mv14840
    :present "PRESENT" :raw-text "increases")
   (:var mv14835 :isa what)
   (:var mv14840 :isa bio-amount :measured-item mv14834 :has-determiner "THE" :raw-text "amount")
   (:var mv14834 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv14856 :isa copular-predication-of-pp :item mv14851 :value mv14855 :prep "IN" :predicate
    mv14847)
   (:var mv14851 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv14855 :isa kinase :plural t :in-pathway mv14843 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv14843 :isa signaling-pathway :has-determiner "THE" :modifier mv14850 :raw-text
    "signaling pathway")
   (:var mv14850 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv14847 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv14869 :isa polar-question :statement mv14867)
   (:var mv14867 :isa regulate :agent mv14858 :object mv14863 :raw-text "regulate")
   (:var mv14858 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14863 :isa gene :organ mv14866 :has-determiner "THE" :expresses mv14859 :raw-text
    "gene")
   (:var mv14866 :isa liver :has-determiner "THE")
   (:var mv14859 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv14878 :isa regulate :object mv14877 :agent mv14870 :present "PRESENT" :raw-text
    "regulated")
   (:var mv14877 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv14870 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv14887 :isa regulate :|affected-process-OR-object| mv14883 :agent mv14880 :present
    "PRESENT" :raw-text "regulated")
   (:var mv14883 :isa these :quantifier mv14881 :word "these") (:var mv14881 :isa which)
   (:var mv14880 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv14895 :isa regulate :|agent-OR-cause| mv14892 :object mv14896 :present "PRESENT" :adverb
    mv14893 :raw-text "regulate")
   (:var mv14892 :isa these :quantifier mv14890 :word "these") (:var mv14890 :isa which)
   (:var mv14896 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv14893 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv14902 :isa transcribe :agent mv14903 :object mv14900 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv14903 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv14900 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv14907 :isa transcribe :agent mv14904 :object mv14905 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv14904 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv14905 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv14912 :isa utilize :participant mv14915 :object mv14913 :present "PRESENT" :raw-text
    "utilize")
   (:var mv14915 :isa pathway :plural t :has-determiner "WHICH" :modifier mv14909 :raw-text
    "pathways")
   (:var mv14909 :isa database :name "KEGG" :uid "KEGG")
   (:var mv14913 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv14933 :isa copular-predication-of-pp :item mv14926 :value mv14932 :prep "IN" :predicate
    mv14919)
   (:var mv14926 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv14932 :isa transcription-factor :plural t :in-pathway mv14928 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv14928 :isa pathway :plural t :has-determiner "THE" :predication mv14923 :raw-text
    "pathways")
   (:var mv14923 :isa regulate :affected-process mv14928 :agent mv14922 :raw-text "regulated")
   (:var mv14922 :isa calcium :raw-text "calcium") (:var mv14919 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv14939 :isa involve :theme mv14941 :object mv14935 :present "PRESENT")
   (:var mv14941 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14935 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv14948 :isa involve :theme mv14953 :object mv14951 :present "PRESENT")
   (:var mv14953 :isa pathway :plural t :has-determiner "WHAT" :modifier mv14945 :raw-text
    "pathways")
   (:var mv14945 :isa database :name "KEGG" :uid "KEGG")
   (:var mv14951 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv14942 mv14949 mv14943))
   (:var mv14942 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv14949 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv14943 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv14964 :isa share :object mv14963 :participant mv14965 :present "PRESENT" :raw-text
    "shared")
   (:var mv14963 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14965 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv14975 :isa regulate :object mv14974 :agent mv14973 :present "PRESENT" :raw-text
    "regulated")
   (:var mv14974 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv14973 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv14978 :isa be :subject mv14977 :predicate mv14989 :present "PRESENT")
   (:var mv14977 :isa what)
   (:var mv14989 :isa pathway :plural t :pathwaycomponent mv14987 :predication mv14979 :raw-text
    "pathways")
   (:var mv14987 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv14979 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv15006 :isa share :object mv15005 :participant mv15007 :present "PRESENT" :raw-text
    "shared")
   (:var mv15005 :isa pathway :plural t :has-determiner "WHICH" :modifier mv14994 :raw-text
    "pathways")
   (:var mv14994 :isa immune :name "immune")
   (:var mv15007 :isa gene :plural t :expresses mv15003 :raw-text "genes")
   (:var mv15003 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv14990 mv14991 mv14992))
   (:var mv14990 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14991 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv14992 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv15016 :isa regulate :object mv15012 :agent mv15010 :present "PRESENT" :raw-text
    "regulated")
   (:var mv15012 :isa phosphatase :has-determiner "WHAT" :enzyme mv15009 :raw-text "phosphatase")
   (:var mv15009 :isa protein-family :raw-text "MAP kinase" :name
    "mitogen activated protein kinase" :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv15010 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv15023 :isa involve :theme mv15025 :object mv15018 :present "PRESENT")
   (:var mv15025 :isa pathway :plural t :has-determiner "WHAT" :modifier mv15020 :raw-text
    "pathways")
   (:var mv15020 :isa database :name "Reactome" :uid "Reactome")
   (:var mv15018 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv15030 :isa polar-question :statement mv15027)
   (:var mv15027 :isa be :subject mv15026 :predicate mv15029)
   (:var mv15026 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv15029 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv15035 :isa polar-question :statement mv15033)
   (:var mv15033 :isa be :subject mv15031 :predicate mv15032)
   (:var mv15031 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv15032 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv15039 :isa be :subject mv15038 :predicate mv15043 :present "PRESENT")
   (:var mv15038 :isa these :quantifier mv15036 :word "these") (:var mv15036 :isa which)
   (:var mv15043 :isa kinase :plural t :enzyme mv15040 :raw-text "kinases")
   (:var mv15040 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv15050 :isa be :subject mv15049 :predicate mv15046 :present "PRESENT")
   (:var mv15049 :isa these :quantifier mv15047 :word "these") (:var mv15047 :isa which)
   (:var mv15046 :isa protein-family :plural t :raw-text "tyrosine kinases" :uid "NCIT:C17020"
    :name "protein tyrosine kinase"))
  ("Which of these are serine/threonine kinases?"
   (:var mv15055 :isa be :subject mv15054 :predicate mv15061 :present "PRESENT")
   (:var mv15054 :isa these :quantifier mv15052 :word "these") (:var mv15052 :isa which)
   (:var mv15061 :isa kinase :plural t :amino-acid mv15060 :raw-text "kinases")
   (:var mv15060 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv15056 mv15057))
   (:var mv15056 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv15057 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv15066 :isa be :subject mv15065 :predicate mv15068 :present "PRESENT")
   (:var mv15065 :isa these :quantifier mv15063 :word "these") (:var mv15063 :isa which)
   (:var mv15068 :isa phosphatase :plural t :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv15073 :isa be :subject mv15072 :predicate mv15074 :present "PRESENT")
   (:var mv15072 :isa these :quantifier mv15070 :word "these") (:var mv15070 :isa which)
   (:var mv15074 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv15079 :isa be :subject mv15078 :predicate mv15081 :present "PRESENT")
   (:var mv15078 :isa these :quantifier mv15076 :word "these") (:var mv15076 :isa which)
   (:var mv15081 :isa receptor :plural t :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv15087 :isa be :subject mv15086 :predicate mv15090 :present "PRESENT")
   (:var mv15086 :isa these :quantifier mv15084 :word "these") (:var mv15084 :isa which)
   (:var mv15090 :isa receptor :plural t :modifier mv15083 :raw-text "receptors")
   (:var mv15083 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv15097 :isa be :subject mv15096 :predicate mv15093 :present "PRESENT")
   (:var mv15096 :isa these :quantifier mv15094 :word "these") (:var mv15094 :isa which)
   (:var mv15093 :isa protein-family :plural t :raw-text "histone demethylases" :uid "GO:0032452"
    :name "histone demethylase"))
  ("Which of these are histone methylases?"
   (:var mv15104 :isa be :subject mv15103 :predicate mv15100 :present "PRESENT")
   (:var mv15103 :isa these :quantifier mv15101 :word "these") (:var mv15101 :isa which)
   (:var mv15100 :isa protein-family :plural t :raw-text "histone methylases" :uid "GO:0042054"
    :name "histone methyltransferase"))
  ("Which of these are histone methyltransferases?"
   (:var mv15111 :isa be :subject mv15110 :predicate mv15107 :present "PRESENT")
   (:var mv15110 :isa these :quantifier mv15108 :word "these") (:var mv15108 :isa which)
   (:var mv15107 :isa protein-family :plural t :raw-text "histone methyltransferases" :uid
    "GO:0042054" :name "histone methyltransferase"))
  ("Which of these are demethylases?"
   (:var mv15116 :isa be :subject mv15115 :predicate mv15118 :present "PRESENT")
   (:var mv15115 :isa these :quantifier mv15113 :word "these") (:var mv15113 :isa which)
   (:var mv15118 :isa protein-family :plural t :raw-text "demethylases" :uid "GO:0032451" :name
    "demethylase"))
  ("Which of these are methylases?"
   (:var mv15123 :isa be :subject mv15122 :predicate mv15125 :present "PRESENT")
   (:var mv15122 :isa these :quantifier mv15120 :word "these") (:var mv15120 :isa which)
   (:var mv15125 :isa protein-family :plural t :raw-text "methylases" :uid "GO:0008168" :name
    "methyltransferase"))
  ("Which of these are methyltransferases?"
   (:var mv15130 :isa be :subject mv15129 :predicate mv15132 :present "PRESENT")
   (:var mv15129 :isa these :quantifier mv15127 :word "these") (:var mv15127 :isa which)
   (:var mv15132 :isa protein-family :plural t :raw-text "methyltransferases" :uid "GO:0008168"
    :name "methyltransferase"))
  ("Which of these are steroid receptors?"
   (:var mv15137 :isa be :subject mv15136 :predicate mv15141 :present "PRESENT")
   (:var mv15136 :isa these :quantifier mv15134 :word "these") (:var mv15134 :isa which)
   (:var mv15141 :isa receptor :plural t :modifier mv15138 :raw-text "receptors")
   (:var mv15138 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv15148 :isa be :subject mv15147 :predicate mv15144 :present "PRESENT")
   (:var mv15147 :isa these :quantifier mv15145 :word "these") (:var mv15145 :isa which)
   (:var mv15144 :isa protein-family :plural t :raw-text "receptor tyrosine kinases" :uid
    "NCIT:C17660" :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :count 2 :name "receptor tyrosine kinase"))
  ("Which of these are transcription factors?"
   (:var mv15155 :isa be :subject mv15154 :predicate mv15151 :present "PRESENT")
   (:var mv15154 :isa these :quantifier mv15152 :word "these") (:var mv15152 :isa which)
   (:var mv15151 :isa transcription-factor :plural t :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv15161 :isa be :subject mv15160 :predicate mv15164 :present "PRESENT")
   (:var mv15160 :isa these :quantifier mv15158 :word "these") (:var mv15158 :isa which)
   (:var mv15164 :isa protein :plural t :modifier mv15157 :raw-text "proteins")
   (:var mv15157 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv15169 :isa be :subject mv15168 :predicate mv15175 :present "PRESENT")
   (:var mv15168 :isa these :quantifier mv15166 :word "these") (:var mv15166 :isa which)
   (:var mv15175 :isa phosphatase :plural t :modifier mv15174 :raw-text "phosphatases")
   (:var mv15174 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv15170 mv15171))
   (:var mv15170 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv15171 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv15180 :isa be :subject mv15179 :predicate mv15184 :present "PRESENT")
   (:var mv15179 :isa these :quantifier mv15177 :word "these") (:var mv15177 :isa which)
   (:var mv15184 :isa phosphatase :plural t :modifier mv15181 :raw-text "phosphatases")
   (:var mv15181 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv15189 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv15186 :agent mv15188
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv15186 :isa what)
   (:var mv15188 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv15198 :isa gene-transcript-express :object mv15192 :organ mv15197 :present "PRESENT"
    :adverb mv15194 :raw-text "expressed")
   (:var mv15192 :isa these :quantifier mv15190 :word "these") (:var mv15190 :isa which)
   (:var mv15197 :isa liver) (:var mv15194 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv15203 :isa regulate :|agent-OR-cause| mv15202 :object mv15201 :present "PRESENT"
    :raw-text "regulates")
   (:var mv15202 :isa what)
   (:var mv15201 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv15207 :isa increase :|agent-OR-cause| mv15204 :|affected-process-OR-object| mv15209
    :present "PRESENT" :raw-text "increases")
   (:var mv15204 :isa what)
   (:var mv15209 :isa bio-amount :measured-item mv15211 :has-determiner "THE" :raw-text "amount")
   (:var mv15211 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv15214 :isa upregulate :|agent-OR-cause| mv15213 :object mv15215 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv15213 :isa what)
   (:var mv15215 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv15217 :isa downregulate :|agent-OR-cause| mv15216 :object mv15218 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv15216 :isa what)
   (:var mv15218 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv15220 :isa decrease :|agent-OR-cause| mv15219 :|affected-process-OR-object| mv15222
    :present "PRESENT" :raw-text "decreases")
   (:var mv15219 :isa what)
   (:var mv15222 :isa bio-amount :measured-item mv15224 :has-determiner "THE" :raw-text "amount")
   (:var mv15224 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv15227 :isa regulate :|agent-OR-cause| mv15226 :object mv15228 :present "PRESENT"
    :raw-text "regulates")
   (:var mv15226 :isa what)
   (:var mv15228 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv15230 :isa regulate :|agent-OR-cause| mv15229 :object mv15231 :present "PRESENT"
    :raw-text "regulates")
   (:var mv15229 :isa what)
   (:var mv15231 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv15238 :isa regulate :|agent-OR-cause| mv15237 :object mv15239 :present "PRESENT"
    :raw-text "regulates")
   (:var mv15237 :isa what)
   (:var mv15239 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv15246 :isa regulate :agent mv15250 :object mv15249 :present "PRESENT" :raw-text
    "regulate")
   (:var mv15250 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv15249 :isa gene :has-determiner "THE" :expresses mv15248 :raw-text "gene")
   (:var mv15248 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv15251 :isa downregulate :agent mv15258 :object mv15257 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv15258 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv15257 :isa gene :has-determiner "THE" :expresses mv15256 :raw-text "gene")
   (:var mv15256 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv15262 :isa be :subject mv15261 :predicate mv15268 :present "PRESENT")
   (:var mv15261 :isa what)
   (:var mv15268 :isa positive-regulator :plural t :theme mv15266 :raw-text "positive regulators")
   (:var mv15266 :isa gene :has-determiner "THE" :expresses mv15265 :raw-text "gene")
   (:var mv15265 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv15271 :isa transcribe :|agent-OR-cause| mv15270 :object mv15269 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv15270 :isa what)
   (:var mv15269 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv15274 :isa show :|statement-OR-theme| mv15286 :beneficiary mv15275 :present "PRESENT")
   (:var mv15286 :isa evidence :statement mv15281 :has-determiner "THE")
   (:var mv15281 :isa increase :agent mv15272 :|affected-process-OR-object| mv15283 :present
    "PRESENT" :raw-text "increases")
   (:var mv15272 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv15283 :isa bio-amount :measured-item mv15273 :has-determiner "THE" :raw-text "amount")
   (:var mv15273 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv15275 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv15288 :isa show :|statement-OR-theme| mv15291 :beneficiary mv15289 :present "PRESENT")
   (:var mv15291 :isa evidence :has-determiner "THE")
   (:var mv15289 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv15301 :isa be :subject mv15300 :predicate mv15307 :present "PRESENT")
   (:var mv15300 :isa what) (:var mv15307 :isa evidence :statement mv15306 :has-determiner "THE")
   (:var mv15306 :isa regulate :agent mv15305 :object mv15299 :present "PRESENT" :raw-text
    "regulates")
   (:var mv15305 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv15299 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv15309 :isa be :subject mv15308 :predicate mv15318 :present "PRESENT")
   (:var mv15308 :isa what) (:var mv15318 :isa evidence :statement mv15314 :has-determiner "THE")
   (:var mv15314 :isa binding :binder mv15313 :direct-bindee mv15317 :present "PRESENT" :raw-text
    "binds")
   (:var mv15313 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv15317 :isa gene :has-determiner "THE" :expresses mv15316 :raw-text "gene")
   (:var mv15316 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv15328 :isa gene-transcript-express :object mv15327 :organ mv15326 :present "PRESENT"
    :adverb mv15323 :raw-text "expressed")
   (:var mv15327 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv15326 :isa liver) (:var mv15323 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv15336 :isa polar-question :statement mv15332)
   (:var mv15332 :isa gene-transcript-express :object mv15330 :organ mv15334 :past "PAST" :raw-text
    "expressed")
   (:var mv15330 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv15334 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv15345 :isa polar-question :statement mv15343)
   (:var mv15343 :isa gene-transcript-express :object mv15337 :organ mv15342 :adverb mv15339
    :raw-text "expressed")
   (:var mv15337 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv15342 :isa liver) (:var mv15339 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv15350 :isa affect :manner mv15348 :agent mv15346 :object mv15347 :present "PRESENT"
    :raw-text "affect")
   (:var mv15348 :isa how)
   (:var mv15346 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv15347 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv15355 :isa affect :manner mv15352 :agent mv15354 :object mv15351 :present "PRESENT"
    :raw-text "affect")
   (:var mv15352 :isa how)
   (:var mv15354 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15351 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv15359 :isa be :subject mv15358 :predicate mv15373 :present "PRESENT")
   (:var mv15358 :isa what)
   (:var mv15373 :isa regulator :plural t :theme mv15368 :has-determiner "THE" :predication mv15361
    :context mv15362 :raw-text "regulators")
   (:var mv15368 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv15356 mv15357))
   (:var mv15356 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15357 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv15361 :isa common) (:var mv15362 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv15377 :isa be :subject mv15376 :predicate mv15386 :present "PRESENT")
   (:var mv15376 :isa what)
   (:var mv15386 :isa path :plural t :endpoints mv15383 :has-determiner "THE")
   (:var mv15383 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv15374 mv15375))
   (:var mv15374 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15375 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv15392 :isa polar-question :statement mv15391)
   (:var mv15391 :isa affect :agent mv15387 :object mv15390 :raw-text "affect")
   (:var mv15387 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15390 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv15394 :isa regulate :agent mv15393 :object mv15395 :present "PRESENT" :raw-text
    "regulates")
   (:var mv15393 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15395 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv15397 :isa upregulate :agent mv15396 :object mv15398 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv15396 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15398 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv15399 :isa upregulate :agent mv15401 :object mv15400 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv15401 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv15400 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv15411 :isa polar-question :statement mv15410)
   (:var mv15410 :isa regulate :agent mv15405 :object mv15409 :raw-text "regulate")
   (:var mv15405 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv15409 :isa gene :has-determiner "THE" :expresses mv15403 :raw-text "gene")
   (:var mv15403 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv15413 :isa show :|statement-OR-theme| mv15421 :beneficiary mv15414 :present "PRESENT")
   (:var mv15421 :isa evidence :statement mv15420 :has-determiner "THE")
   (:var mv15420 :isa regulate :agent mv15418 :object mv15412 :present "PRESENT" :raw-text
    "regulates")
   (:var mv15418 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv15412 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15414 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv15429 :isa polar-question :statement mv15428)
   (:var mv15428 :isa regulate :agent mv15424 :object mv15427 :raw-text "regulate")
   (:var mv15424 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15427 :isa gene :has-determiner "THE" :expresses mv15422 :raw-text "gene")
   (:var mv15422 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv15432 :isa decrease :agent mv15431 :|affected-process-OR-object| mv15434 :present
    "PRESENT" :raw-text "decreases")
   (:var mv15431 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15434 :isa bio-amount :measured-item mv15430 :has-determiner "THE" :raw-text "amount")
   (:var mv15430 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv15442 :isa polar-question :statement mv15441)
   (:var mv15441 :isa regulate :agent mv15440 :object mv15439 :raw-text "regulate")
   (:var mv15440 :isa bio-entity :name "TNG")
   (:var mv15439 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv15450 :isa polar-question :statement mv15449)
   (:var mv15449 :isa regulate :agent mv15444 :object mv15448 :raw-text "regulate")
   (:var mv15444 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv15448 :isa gene :has-determiner "THE" :expresses mv15447 :raw-text "gene")
   (:var mv15447 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv15452 :isa be :subject mv15451 :predicate mv15463 :present "PRESENT")
   (:var mv15451 :isa what)
   (:var mv15463 :isa pathway :plural t :pathwaycomponent mv15460 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv15460 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv15457 mv15459))
   (:var mv15457 :isa bio-entity :name "TNG")
   (:var mv15459 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv15465 :isa be :subject mv15464 :predicate mv15476 :present "PRESENT")
   (:var mv15464 :isa what)
   (:var mv15476 :isa pathway :plural t :pathwaycomponent mv15473 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv15473 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv15470 mv15472))
   (:var mv15470 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv15472 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv15483 :isa polar-question :statement mv15482)
   (:var mv15482 :isa regulate :agent mv15478 :object mv15481 :raw-text "regulate")
   (:var mv15478 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv15481 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv15492 :isa polar-question :statement mv15491)
   (:var mv15491 :isa regulate :agent mv15485 :object mv15490 :raw-text "regulate")
   (:var mv15485 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv15490 :isa gene :has-determiner "THE" :expresses mv15489 :raw-text "gene")
   (:var mv15489 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv15508 :isa copular-predication-of-pp :item mv15503 :value mv15507 :prep "BETWEEN"
    :predicate mv15496)
   (:var mv15503 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv15507 :isa pathway :plural t :pathwaycomponent mv15502 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv15502 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv15499 mv15501))
   (:var mv15499 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv15501 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15496 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv15514 :isa affect :manner mv15510 :agent mv15512 :object mv15515 :present "PRESENT"
    :raw-text "affect")
   (:var mv15510 :isa how)
   (:var mv15512 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv15515 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv15517 :isa bio-activate :agent mv15516 :object mv15518 :present "PRESENT" :raw-text
    "activates")
   (:var mv15516 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15518 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv15520 :isa bio-activate :agent mv15519 :object mv15521 :present "PRESENT" :raw-text
    "activates")
   (:var mv15519 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv15521 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv15523 :isa be :subject mv15522 :predicate mv15534 :present "PRESENT")
   (:var mv15522 :isa what)
   (:var mv15534 :isa path :plural t :endpoints mv15531 :has-determiner "THE")
   (:var mv15531 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv15528 mv15530))
   (:var mv15528 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv15530 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv15540 :isa polar-question :statement mv15539)
   (:var mv15539 :isa regulate :agent mv15536 :object mv15538 :raw-text "regulate")
   (:var mv15536 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv15538 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv15545 :isa affect :manner mv15543 :agent mv15541 :object mv15542 :present "PRESENT"
    :raw-text "affect")
   (:var mv15543 :isa how)
   (:var mv15541 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15542 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv15547 :isa bio-activate :agent mv15546 :object mv15548 :present "PRESENT" :raw-text
    "activates")
   (:var mv15546 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv15548 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv15552 :isa decrease :agent mv15551 :|affected-process-OR-object| mv15554 :present
    "PRESENT" :raw-text "decreases")
   (:var mv15551 :isa protein-family :predication mv15550 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15550 :isa active)
   (:var mv15554 :isa bio-amount :measured-item mv15549 :has-determiner "THE" :raw-text "amount")
   (:var mv15549 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv15560 :isa be :subject mv15559 :predicate mv15571 :present "PRESENT")
   (:var mv15559 :isa what)
   (:var mv15571 :isa upstream-segment :plural t :pathwaycomponent mv15567 :has-determiner "THE"
    :predication mv15562 :raw-text "upstreams")
   (:var mv15567 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv15557 mv15558))
   (:var mv15557 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15558 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv15562 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv15576 :isa affect :manner mv15574 :agent mv15572 :object mv15573 :present "PRESENT"
    :raw-text "affect")
   (:var mv15574 :isa how)
   (:var mv15572 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15573 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv15582 :isa polar-question :statement mv15581)
   (:var mv15581 :isa regulate :agent mv15577 :object mv15578 :raw-text "regulate")
   (:var mv15577 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15578 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv15590 :isa polar-question :statement mv15589)
   (:var mv15589 :isa regulate :agent mv15583 :object mv15588 :raw-text "regulate")
   (:var mv15583 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15588 :isa gene :has-determiner "THE" :expresses mv15584 :raw-text "gene")
   (:var mv15584 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv15595 :isa affect :manner mv15593 :agent mv15591 :object mv15592 :present "PRESENT"
    :raw-text "affect")
   (:var mv15593 :isa how)
   (:var mv15591 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15592 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv15598 :isa be :subject mv15597 :predicate mv15608 :present "PRESENT")
   (:var mv15597 :isa what)
   (:var mv15608 :isa path :plural t :endpoints mv15605 :has-determiner "THE")
   (:var mv15605 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv15603 mv15596))
   (:var mv15603 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv15596 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv15618 :isa polar-question :statement mv15616)
   (:var mv15616 :isa regulate :agent mv15611 :affected-process mv15614 :raw-text "regulate")
   (:var mv15611 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15614 :isa gene-transcript-express :object mv15609 :has-determiner "THE" :raw-text
    "expression")
   (:var mv15609 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv15622 :isa decrease :agent mv15621 :affected-process mv15624 :present "PRESENT"
    :raw-text "decreases")
   (:var mv15621 :isa protein-family :predication mv15620 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15620 :isa active)
   (:var mv15624 :isa gene-transcript-express :object mv15619 :has-determiner "THE" :raw-text
    "expression")
   (:var mv15619 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv15630 :isa decrease :agent mv15629 :|affected-process-OR-object| mv15632 :present
    "PRESENT" :raw-text "decreases")
   (:var mv15629 :isa protein-family :predication mv15628 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15628 :isa active)
   (:var mv15632 :isa bio-amount :measured-item mv15627 :has-determiner "THE" :raw-text "amount")
   (:var mv15627 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv15638 :isa decrease :agent mv15637 :|affected-process-OR-object| mv15640 :present
    "PRESENT" :raw-text "decreases")
   (:var mv15637 :isa protein-family :predication mv15636 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15636 :isa active)
   (:var mv15640 :isa bio-amount :measured-item mv15635 :has-determiner "THE" :raw-text "amount")
   (:var mv15635 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv15645 :isa inhibit :agent mv15643 :affected-process mv15647 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv15643 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv15647 :isa bio-activity :participant mv15644 :has-determiner "THE" :raw-text "activity")
   (:var mv15644 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv15661 :isa polar-question :statement mv15659)
   (:var mv15659 :isa decrease :agent mv15650 :object mv15651 :raw-text "decrease")
   (:var mv15650 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv15651 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv15672 :isa polar-question :statement mv15670)
   (:var mv15670 :isa decrease :agent mv15662 :object mv15663 :raw-text "decrease")
   (:var mv15662 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv15663 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv15674 :isa bio-activate :agent mv15673 :object mv15675 :present "PRESENT" :raw-text
    "activates")
   (:var mv15673 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv15675 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv15681 :isa want :agent mv15678 :theme mv15692 :present "PRESENT")
   (:var mv15678 :isa interlocutor :name "speaker")
   (:var mv15692 :isa find-out :agent mv15678 :statement mv15689)
   (:var mv15689 :isa wh-question :statement mv15688 :var nil :wh how)
   (:var mv15688 :isa decrease :agent mv15687 :object mv15677 :present "PRESENT" :raw-text
    "decreases")
   (:var mv15687 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv15677 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv15697 :isa want :agent mv15694 :theme mv15714 :present "PRESENT")
   (:var mv15694 :isa interlocutor :name "speaker")
   (:var mv15714 :isa find-out :agent mv15694 :statement mv15711)
   (:var mv15711 :isa wh-question :statement mv15704 :var nil :wh how)
   (:var mv15704 :isa decrease :agent mv15703 :object mv15705 :present "PRESENT" :raw-text
    "decreases")
   (:var mv15703 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv15705 :isa protein :cell-type mv15709 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv15709 :isa cell-type :plural t :cell-line mv15693)
   (:var mv15693 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv15720 :isa want :agent mv15717 :theme mv15736 :present "PRESENT")
   (:var mv15717 :isa interlocutor :name "speaker")
   (:var mv15736 :isa find-out :agent mv15717 :statement mv15733)
   (:var mv15733 :isa wh-question :statement mv15726 :var nil :wh how)
   (:var mv15726 :isa bio-activate :agent mv15715 :object mv15727 :present "PRESENT" :raw-text
    "activates")
   (:var mv15715 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv15727 :isa protein :cell-type mv15731 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv15731 :isa cell-type :plural t :cell-line mv15716)
   (:var mv15716 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv15742 :isa polar-question :statement mv15741)
   (:var mv15741 :isa phosphorylate :agent mv15738 :substrate mv15740 :raw-text "phosphorylate")
   (:var mv15738 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv15740 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv15750 :isa polar-question :statement mv15749)
   (:var mv15749 :isa inhibit :agent mv15743 :object mv15748 :raw-text "inhibit")
   (:var mv15743 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv15748 :isa gene :has-determiner "THE" :expresses mv15744 :raw-text "gene")
   (:var mv15744 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv15758 :isa polar-question :statement mv15757)
   (:var mv15757 :isa stimulate :agent mv15751 :object mv15756 :raw-text "stimulate")
   (:var mv15751 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv15756 :isa gene :has-determiner "THE" :expresses mv15752 :raw-text "gene")
   (:var mv15752 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv15763 :isa want :agent mv15760 :theme mv15782 :present "PRESENT")
   (:var mv15760 :isa interlocutor :name "speaker")
   (:var mv15782 :isa find-out :agent mv15760 :statement mv15779)
   (:var mv15779 :isa wh-question :statement mv15770 :var nil :wh how)
   (:var mv15770 :isa decrease :agent mv15769 :object mv15771 :present "PRESENT" :raw-text
    "decreases")
   (:var mv15769 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv15771 :isa protein :cell-type mv15777 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv15777 :isa cell-type :plural t :cell-line mv15759 :associated-disease mv15773)
   (:var mv15759 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv15773 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv15787 :isa polar-question :statement mv15784)
   (:var mv15784 :isa be :subject mv15785 :predicate mv15783)
   (:var mv15785 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv15783 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv15789 :isa list :theme mv15800 :present "PRESENT")
   (:var mv15800 :isa gene :plural t :predication mv15794 :quantifier mv15790 :has-determiner "THE"
    :raw-text "genes")
   (:var mv15794 :isa regulate :object mv15800 :agent mv15798 :past "PAST" :raw-text "regulated")
   (:var mv15798 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv15788 mv15797))
   (:var mv15788 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv15797 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv15790 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv15804 :isa list :theme mv15818 :present "PRESENT")
   (:var mv15818 :isa gene :plural t :predication mv15810 :quantifier mv15805 :has-determiner "THE"
    :raw-text "genes")
   (:var mv15810 :isa regulate :object mv15818 :agent mv15814 :past "PAST" :raw-text "regulated")
   (:var mv15814 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv15803 mv15813))
   (:var mv15803 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv15813 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv15805 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv15823 :isa show :|statement-OR-theme| mv15836 :beneficiary mv15824 :present "PRESENT")
   (:var mv15836 :isa mutation :plural t :object mv15832 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv15832 :isa collection :context mv15822 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv15821 mv15830))
   (:var mv15822 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv15821 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv15830 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv15824 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv15840 :isa be :subject mv15839 :predicate mv15852 :present "PRESENT")
   (:var mv15839 :isa what)
   (:var mv15852 :isa mutation :plural t :object mv15848 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv15848 :isa collection :context mv15838 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv15837 mv15846))
   (:var mv15838 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv15837 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv15846 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv15857 :isa be :subject mv15856 :predicate mv15867 :present "PRESENT")
   (:var mv15856 :isa what)
   (:var mv15867 :isa gene :disease mv15855 :has-determiner "THE" :predication mv15853 :raw-text
    "genes")
   (:var mv15855 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv15853 :isa mutual-exclusivity :alternative mv15854)
   (:var mv15854 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv15872 :isa be :subject mv15871 :predicate mv15882 :present "PRESENT")
   (:var mv15871 :isa what)
   (:var mv15882 :isa gene :has-determiner "THE" :predication mv15868 :raw-text "genes")
   (:var mv15868 :isa mutual-exclusivity :alternative mv15869)
   (:var mv15869 :isa protein :context mv15870 :raw-text "CDH1" :uid "UP:P12830" :name
    "CADH1_HUMAN")
   (:var mv15870 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("What downregulates it?"
   (:var mv15884 :isa downregulate :|agent-OR-cause| mv15883 :|affected-process-OR-object| mv15885
    :present "PRESENT" :raw-text "downregulates")
   (:var mv15883 :isa what) (:var mv15885 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv15890 :isa have :possessor mv15897 :thing-possessed mv15892 :present "PRESENT")
   (:var mv15897 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv15892 :isa evidence :fact mv15895 :predication mv15891)
   (:var mv15895 :isa regulate :agent mv15886 :progressive mv15894 :raw-text "regulated")
   (:var mv15886 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv15894 :isa be) (:var mv15891 :isa strong))
  ("What increases the amount of myc"
   (:var mv15903 :isa increase :|agent-OR-cause| mv15900 :|affected-process-OR-object| mv15905
    :present "PRESENT" :raw-text "increases")
   (:var mv15900 :isa what)
   (:var mv15905 :isa bio-amount :measured-item mv15907 :has-determiner "THE" :raw-text "amount")
   (:var mv15907 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv15911 :isa inhibit :|agent-OR-cause| mv15910 :object mv15909 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv15910 :isa what)
   (:var mv15909 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv15915 :isa be :subject mv15914 :predicate mv15927 :present "PRESENT")
   (:var mv15914 :isa what) (:var mv15927 :isa quality-predicate :item mv15925 :attribute mv15921)
   (:var mv15925 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv15912 mv15923 mv15913))
   (:var mv15912 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv15923 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv15913 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv15921 :isa location-of :has-determiner "THE" :predication mv15919 :modifier mv15920)
   (:var mv15919 :isa likely :comparative mv15917)
   (:var mv15917 :isa superlative-quantifier :name "most")
   (:var mv15920 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv15930 :isa be :subject mv15929 :predicate mv15939 :present "PRESENT")
   (:var mv15929 :isa what) (:var mv15939 :isa quality-predicate :item mv15928 :attribute mv15936)
   (:var mv15928 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv15936 :isa location-of :has-determiner "THE" :predication mv15934 :modifier mv15935)
   (:var mv15934 :isa likely :comparative mv15932)
   (:var mv15932 :isa superlative-quantifier :name "most")
   (:var mv15935 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv15943 :isa be :subject mv15942 :predicate mv15946 :present "PRESENT")
   (:var mv15942 :isa what)
   (:var mv15946 :isa significance :agent mv15940 :has-determiner "THE" :modifier mv15945)
   (:var mv15940 :isa protein :context mv15941 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv15941 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv15945 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv15958 :isa regulate :|affected-process-OR-object| mv15954 :agent mv15951 :present
    "PRESENT" :raw-text "regulated")
   (:var mv15954 :isa those :quantifier mv15952 :word "those") (:var mv15952 :isa which)
   (:var mv15951 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv15978 :isa copular-predication-of-pp :item mv15975 :value mv15977 :prep "IN" :predicate
    mv15967)
   (:var mv15975 :isa gene :plural t :quantifier mv15962 :has-determiner "THOSE" :raw-text "genes")
   (:var mv15962 :isa which)
   (:var mv15977 :isa gene :plural t :context mv15961 :quantifier mv15962 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv15961 :isa signaling-pathway :has-determiner "THE" :modifier mv15970 :raw-text
    "signaling pathway")
   (:var mv15970 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv15967 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv15989 :isa copular-predication-of-pp :item mv15983 :value mv15987 :prep mv15985
    :predicate mv15984)
   (:var mv15983 :isa these :quantifier mv15981 :word "these") (:var mv15981 :isa which)
   (:var mv15987 :isa pathway :has-determiner "THE" :modifier mv15980 :raw-text "pathway")
   (:var mv15980 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv15985 :isa in :word "in") (:var mv15984 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv15998 :isa gene-transcript-express :object mv15993 :organ mv15997 :present "PRESENT"
    :raw-text "expressed")
   (:var mv15993 :isa pronoun/plural :quantifier mv15991 :word "them") (:var mv15991 :isa which)
   (:var mv15997 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv16013 :isa regulate :|affected-process-OR-object| mv16005 :agent mv16012 :present
    "PRESENT" :superlative mv16007 :adverb mv16008 :raw-text "regulated")
   (:var mv16005 :isa pronoun/plural :quantifier mv16003 :word "them") (:var mv16003 :isa which)
   (:var mv16012 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv16001 mv16002))
   (:var mv16001 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv16002 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv16007 :isa superlative-quantifier :name "most")
   (:var mv16008 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv16021 :isa target :agent mv16022 :object mv16018 :present "PRESENT" :raw-text "target")
   (:var mv16022 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv16018 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv16028 :isa target :|agent-OR-cause| mv16026 :object mv16023 :present "PRESENT" :raw-text
    "target")
   (:var mv16026 :isa those :quantifier mv16024 :word "those") (:var mv16024 :isa which)
   (:var mv16023 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv16031 :isa be :subject mv16030 :predicate mv16032 :present "PRESENT")
   (:var mv16030 :isa what)
   (:var mv16032 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv16035 :isa be :subject mv16034 :predicate mv16033 :present "PRESENT")
   (:var mv16034 :isa what)
   (:var mv16033 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv16041 :isa do :patient mv16036 :present "PRESENT")
   (:var mv16036 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv16051 :isa polar-question :statement mv16049)
   (:var mv16049 :isa there-exists :value mv16047 :predicate mv16044)
   (:var mv16047 :isa inhibitor :protein mv16042 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv16042 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv16044 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv16053 :isa name-something :patient mv16062 :present "PRESENT")
   (:var mv16062 :isa drug :plural t :predication mv16060 :quantifier mv16056 :raw-text "drugs")
   (:var mv16060 :isa inhibit :agent mv16062 :that-rel t :object mv16052 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv16052 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv16056 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv16073 :isa polar-question :statement mv16070)
   (:var mv16070 :isa there-exists :value mv16072 :predicate mv16065)
   (:var mv16072 :isa inhibitor :plural t :quantifier mv16067 :protein mv16063 :raw-text
    "inhibitors")
   (:var mv16067 :isa any :word "any")
   (:var mv16063 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv16065 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv16085 :isa polar-question :statement mv16082)
   (:var mv16082 :isa there-exists :value mv16084 :predicate mv16075)
   (:var mv16084 :isa target-protein :plural t :agent mv16081 :raw-text "targets")
   (:var mv16081 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv16075 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv16089 :isa inhibit :|affected-process-OR-object| mv16086 :agent mv16088 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv16086 :isa what)
   (:var mv16088 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv16094 :isa target :|affected-process-OR-object| mv16090 :agent mv16092 :present
    "PRESENT" :raw-text "target")
   (:var mv16090 :isa what)
   (:var mv16092 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv16101 :isa polar-question :statement mv16100)
   (:var mv16100 :isa target :agent mv16096 :object mv16099 :raw-text "target")
   (:var mv16096 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv16099 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv16104 :isa be :subject mv16103 :predicate mv16113 :present "PRESENT")
   (:var mv16103 :isa what)
   (:var mv16113 :isa target-protein :plural t :quantifier mv16105 :treatment mv16110 :raw-text
    "targets")
   (:var mv16105 :isa some :word "some")
   (:var mv16110 :isa treatment :disease mv16102 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv16102 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv16116 :isa be :subject mv16115 :predicate mv16124 :present "PRESENT")
   (:var mv16115 :isa what)
   (:var mv16124 :isa target-protein :plural t :quantifier mv16117 :disease mv16114 :raw-text
    "targets")
   (:var mv16117 :isa some :word "some")
   (:var mv16114 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv16131 :isa lead :agent mv16136 :theme mv16134 :modal mv16130 :raw-text "lead")
   (:var mv16136 :isa target-protein :plural t :has-determiner "WHAT" :raw-text "targets")
   (:var mv16134 :isa development :disease mv16125 :has-determiner "THE" :raw-text "development")
   (:var mv16125 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv16130 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv16144 :isa lead :agent mv16149 :theme mv16147 :modal mv16143 :raw-text "lead")
   (:var mv16149 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv16147 :isa development :disease mv16139 :has-determiner "THE" :raw-text "development")
   (:var mv16139 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv16143 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv16158 :isa lead :agent mv16161 :theme mv16152 :modal mv16157 :raw-text "lead")
   (:var mv16161 :isa gene :plural t :has-determiner "WHAT" :predication mv16154 :raw-text "genes")
   (:var mv16154 :isa mutation :object mv16161 :raw-text "mutated")
   (:var mv16152 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv16157 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv16165 :isa be :subject mv16164 :predicate mv16169 :present "PRESENT")
   (:var mv16164 :isa what)
   (:var mv16169 :isa mutation :predication mv16171 :has-determiner "THE" :modifier mv16167
    :|agent-OR-object| mv16168 :raw-text "mutation")
   (:var mv16171 :isa lead :agent mv16169 :that-rel t :theme mv16163 :present "PRESENT" :raw-text
    "leads")
   (:var mv16163 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv16167 :isa top-qua-location) (:var mv16168 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv16180 :isa like :agent mv16175 :modal mv16178)
   (:var mv16175 :isa interlocutor :name "speaker") (:var mv16178 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv16201 :isa bio-use :patient mv16191 :modal mv16192 :agent mv16193 :theme mv16200
    :present "PRESENT" :raw-text "use")
   (:var mv16191 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv16192 :isa could)
   (:var mv16193 :isa interlocutor :name "speaker")
   (:var mv16200 :isa treatment :disease mv16189 :raw-text "treat")
   (:var mv16189 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv16204 :isa be :subject mv16203 :predicate mv16212 :present "PRESENT")
   (:var mv16203 :isa what)
   (:var mv16212 :isa drug :plural t :treatment mv16209 :quantifier mv16205 :raw-text "drugs")
   (:var mv16209 :isa treatment :disease mv16202 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv16202 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv16205 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv16219 :isa like :agent mv16215 :modal mv16226)
   (:var mv16215 :isa interlocutor :name "speaker") (:var mv16226 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv16230 :isa how))
  ("Does MEK act on ERK?" (:var mv16240 :isa polar-question :statement mv16238)
   (:var mv16238 :isa bio-act :agent mv16234 :acted-on mv16237 :raw-text "act")
   (:var mv16234 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16237 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv16245 :isa explicit-suggestion :suggestion mv16242 :marker let-as-directive)
   (:var mv16242 :isa build :artifact mv16244 :present "PRESENT")
   (:var mv16244 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv16248 :isa bio-activate :agent mv16247 :object mv16246 :present "PRESENT" :raw-text
    "activates")
   (:var mv16247 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16246 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv16250 :isa bio-activate :agent mv16249 :object mv16251 :present "PRESENT" :raw-text
    "activates")
   (:var mv16249 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv16251 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv16252 :isa remove :object mv16259 :present "PRESENT" :raw-text "Remove")
   (:var mv16259 :isa fact :statement mv16257 :has-determiner "THE")
   (:var mv16257 :isa bio-activate :agent mv16256 :object mv16258 :present "PRESENT" :raw-text
    "activates")
   (:var mv16256 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv16258 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv16271 :isa polar-question :statement mv16262)
   (:var mv16262 :isa tell :agent mv16261 :theme mv16270 :theme mv16263 :modal "CAN")
   (:var mv16261 :isa interlocutor :name "hearer")
   (:var mv16270 :isa copular-predication-of-pp :item mv16264 :value mv16268 :prep mv16266
    :predicate mv16265)
   (:var mv16264 :isa what) (:var mv16268 :isa model :has-determiner "THE")
   (:var mv16266 :isa in :word "in") (:var mv16265 :isa be :modal "CAN")
   (:var mv16263 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv16275 :isa summarize :statement mv16274 :present "PRESENT")
   (:var mv16274 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv16280 :isa summarize :statement mv16279 :present "PRESENT")
   (:var mv16279 :isa model :has-determiner "THE" :predication mv16278)
   (:var mv16278 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv16282 :isa phosphorylate :|agent-OR-cause| mv16281 :substrate mv16283 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv16281 :isa what)
   (:var mv16283 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv16285 :isa binding :binder mv16284 :direct-bindee mv16286 :present "PRESENT" :raw-text
    "binds")
   (:var mv16284 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv16286 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv16291 :isa bio-activate :object mv16287 :present "PRESENT" :raw-text "activated")
   (:var mv16287 :isa protein :predication mv16288 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv16288 :isa phosphorylate :substrate mv16287 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv16295 :isa dephosphorylate :agent mv16292 :substrate mv16293 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv16292 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv16293 :isa protein :predication mv16301 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv16301 :isa binding :direct-bindee mv16293 :that-rel t :bindee mv16294 :present "PRESENT"
    :negation mv16298 :raw-text "bound")
   (:var mv16294 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv16298 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv16312 :isa phosphorylate :agent mv16303 :substrate mv16305 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv16303 :isa protein :predication mv16313 :predication mv16306 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv16313 :isa binding :direct-bindee mv16303 :that-rel t :bindee mv16304 :present "PRESENT"
    :negation mv16309 :raw-text "bound")
   (:var mv16304 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv16309 :isa not :word "not") (:var mv16306 :isa active)
   (:var mv16305 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv16319 :isa bio-activate :object mv16315 :present "PRESENT" :raw-text "activated")
   (:var mv16315 :isa protein :predication mv16316 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv16316 :isa phosphorylate :substrate mv16315 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv16323 :isa dephosphorylate :agent mv16320 :substrate mv16321 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv16320 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv16321 :isa protein :predication mv16329 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv16329 :isa binding :direct-bindee mv16321 :that-rel t :bindee mv16322 :present "PRESENT"
    :negation mv16326 :raw-text "bound")
   (:var mv16322 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv16326 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv16344 :isa phosphorylate :agent mv16332 :substrate mv16331 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv16332 :isa protein :predication mv16347 :mutation mv16346 :raw-text "BRAF" :uid
    "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16347 :isa binding :direct-bindee mv16332 :that-rel t :bindee mv16343 :present "PRESENT"
    :negation mv16340 :raw-text "bound")
   (:var mv16343 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv16340 :isa not :word "not")
   (:var mv16346 :isa point-mutated-protein :position mv16335 :new-amino-acid mv16337
    :original-amino-acid mv16333)
   (:var mv16335 :isa number :value 600)
   (:var mv16337 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv16333 :isa amino-acid :name "valine" :letter "V")
   (:var mv16331 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv16353 :isa copular-predication :item mv16349 :value mv16352 :predicate mv16351)
   (:var mv16349 :isa protein :predication mv16350 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv16350 :isa phosphorylate :substrate mv16349 :raw-text "Phosphorylated")
   (:var mv16352 :isa active) (:var mv16351 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv16356 :isa phosphorylate :agent mv16354 :substrate mv16355 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv16354 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv16355 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv16365 :isa explicit-suggestion :suggestion mv16359 :marker let-as-directive)
   (:var mv16359 :isa move-something-somewhere :goal mv16363 :theme mv16358 :present "PRESENT")
   (:var mv16363 :isa top-qua-location :has-determiner "THE")
   (:var mv16358 :isa protein :predication mv16360 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv16360 :isa phosphorylate :substrate mv16358 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv16373 :isa explicit-suggestion :suggestion mv16368 :marker let-as-directive)
   (:var mv16368 :isa move-something-somewhere :at-relative-location mv16371 :theme mv16367
    :present "PRESENT")
   (:var mv16371 :isa top-qua-location)
   (:var mv16367 :isa protein :predication mv16369 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv16369 :isa phosphorylate :substrate mv16367 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv16375 :isa show :at-relative-location mv16377 :|statement-OR-theme| mv16374 :present
    "PRESENT")
   (:var mv16377 :isa top-qua-location)
   (:var mv16374 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv16386 :isa explicit-suggestion :suggestion mv16381 :marker let-as-directive)
   (:var mv16381 :isa highlight :theme mv16382 :present "PRESENT")
   (:var mv16382 :isa upstream-segment :pathwaycomponent mv16380 :raw-text "upstream")
   (:var mv16380 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv16397 :isa explicit-suggestion :suggestion mv16388 :marker let-as-directive)
   (:var mv16388 :isa move-something-somewhere :goal mv16394 :theme mv16395 :present "PRESENT")
   (:var mv16394 :isa top-qua-location :has-determiner "THE")
   (:var mv16395 :isa element :plural t :modifier mv16389)
   (:var mv16389 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv16400 :isa be :subject mv16399 :predicate mv16412 :present "PRESENT")
   (:var mv16399 :isa what)
   (:var mv16412 :isa downstream-segment :plural t :pathwaycomponent mv16408 :has-determiner "THE"
    :predication mv16402 :raw-text "downstreams")
   (:var mv16408 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv16398 mv16407))
   (:var mv16398 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv16407 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16402 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv16429 :isa polar-question :statement mv16424)
   (:var mv16424 :isa there-exists :value mv16428 :predicate mv16416)
   (:var mv16428 :isa upstream-segment :plural t :pathwaycomponent mv16425 :predication mv16418
    :raw-text "upstreams")
   (:var mv16425 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv16413 mv16422 mv16414))
   (:var mv16413 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv16422 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16414 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv16418 :isa common) (:var mv16416 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv16434 :isa be :subject mv16433 :predicate mv16448 :present "PRESENT")
   (:var mv16433 :isa what)
   (:var mv16448 :isa regulator :plural t :theme mv16443 :has-determiner "THE" :predication mv16436
    :context mv16437 :raw-text "regulators")
   (:var mv16443 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv16430 mv16431 mv16432))
   (:var mv16430 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv16431 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv16432 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv16436 :isa common) (:var mv16437 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv16452 :isa be :subject mv16451 :predicate mv16464 :present "PRESENT")
   (:var mv16451 :isa what)
   (:var mv16464 :isa regulator :plural t :theme mv16460 :predication mv16453 :context mv16454
    :raw-text "regulators")
   (:var mv16460 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv16449 mv16450))
   (:var mv16449 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv16450 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv16453 :isa common) (:var mv16454 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv16471 :isa be :subject mv16470 :predicate mv16481 :present "PRESENT")
   (:var mv16470 :isa what)
   (:var mv16481 :isa protein-family :plural t :molecule-type mv16477 :predication mv16472 :context
    mv16473 :raw-text "transcriptional regulators" :uid "XFAM:PF02082" :name
    "transcriptional regulator")
   (:var mv16477 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv16467 mv16468 mv16469))
   (:var mv16467 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv16468 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv16469 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv16472 :isa common) (:var mv16473 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv16485 :isa be :subject mv16484 :predicate mv16498 :present "PRESENT")
   (:var mv16484 :isa what)
   (:var mv16498 :isa mutation :plural t :object mv16494 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv16494 :isa collection :context mv16483 :raw-text "PTEN, TP53 and BRAF" :type protein
    :number 3 :items (mv16490 mv16482 mv16492))
   (:var mv16483 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv16490 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv16482 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv16492 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv16502 :isa be :subject mv16501 :predicate mv16505 :present "PRESENT")
   (:var mv16501 :isa what)
   (:var mv16505 :isa frequency :measured-item mv16499 :has-determiner "THE" :measured-item mv16504
    :raw-text "frequency")
   (:var mv16499 :isa protein :context mv16500 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv16500 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv16504 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv16522 :isa copular-predication :item mv16519 :value mv16510 :predicate mv16516)
   (:var mv16519 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv16510 :isa mutual-exclusivity :disease mv16512 :alternative mv16511)
   (:var mv16512 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv16511 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv16516 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv16535 :isa copular-predication :item mv16532 :value mv16523 :predicate mv16529)
   (:var mv16532 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv16523 :isa mutual-exclusivity :alternative mv16524)
   (:var mv16524 :isa protein :context mv16525 :raw-text "CDH1" :uid "UP:P12830" :name
    "CADH1_HUMAN")
   (:var mv16525 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv16529 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv16538 :isa be :subject mv16537 :predicate mv16544 :present "PRESENT")
   (:var mv16537 :isa what) (:var mv16544 :isa quality-predicate :item mv16536 :attribute mv16541)
   (:var mv16536 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv16541 :isa location-of :has-determiner "THE" :modifier mv16540)
   (:var mv16540 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv16548 :isa regulate :manner mv16545 :agent mv16547 :object mv16549 :present "PRESENT"
    :raw-text "regulate")
   (:var mv16545 :isa how)
   (:var mv16547 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv16549 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv16551 :isa be :subject mv16550 :predicate mv16552 :present "PRESENT")
   (:var mv16550 :isa what)
   (:var mv16552 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv16564 :isa polar-question :statement mv16553)
   (:var mv16553 :isa be :subject mv16554 :predicate mv16556)
   (:var mv16554 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16556 :isa member :set mv16562 :has-determiner "A")
   (:var mv16562 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv16573 :isa copular-predication-of-pp :item mv16571 :value mv16570 :prep mv16569
    :predicate mv16568)
   (:var mv16571 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16570 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv16569 :isa in :word "in") (:var mv16568 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv16586 :isa copular-predication-of-pp :item mv16583 :value mv16584 :prep mv16578
    :predicate mv16577)
   (:var mv16583 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16584 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv16578 :isa in :word "in") (:var mv16577 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv16588 :isa be :subject mv16587 :predicate mv16601 :present "PRESENT")
   (:var mv16587 :isa what)
   (:var mv16601 :isa has-name :plural t :item mv16597 :quantifier mv16589 :modifier mv16590)
   (:var mv16597 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16589 :isa some :word "some") (:var mv16590 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv16603 :isa be :subject mv16602 :predicate mv16609 :present "PRESENT")
   (:var mv16602 :isa what) (:var mv16609 :isa has-synonym :plural t :item mv16607)
   (:var mv16607 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv16622 :isa share :object mv16621 :participant mv16620 :present "PRESENT" :raw-text
    "shared")
   (:var mv16621 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv16620 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv16612 mv16613 mv16614))
   (:var mv16612 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv16613 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv16614 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv16626 :isa be :subject mv16625 :predicate mv16636 :present "PRESENT")
   (:var mv16625 :isa what)
   (:var mv16636 :isa path :plural t :endpoints mv16633 :has-determiner "THE")
   (:var mv16633 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv16631 mv16624))
   (:var mv16631 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16624 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv16641 :isa polar-question :statement mv16639)
   (:var mv16639 :isa be :subject mv16637 :predicate mv16638)
   (:var mv16637 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv16638 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv16642 :isa remove :object mv16654 :present "PRESENT" :raw-text "Remove")
   (:var mv16654 :isa fact :statement mv16648 :has-determiner "THE")
   (:var mv16648 :isa bio-activate :agent mv16647 :object mv16649 :present "PRESENT" :raw-text
    "activates")
   (:var mv16647 :isa protein-family :predication mv16646 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16646 :isa active)
   (:var mv16649 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv16657 :isa bio-activate :agent mv16656 :object mv16658 :present "PRESENT" :raw-text
    "activates")
   (:var mv16656 :isa protein-family :predication mv16655 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16655 :isa active)
   (:var mv16658 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv16665 :isa copular-predication-of-pp :item mv16659 :value mv16663 :prep mv16661
    :predicate mv16660)
   (:var mv16659 :isa what) (:var mv16663 :isa model :has-determiner "THE")
   (:var mv16661 :isa in :word "in") (:var mv16660 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv16676 :isa polar-question :statement mv16675)
   (:var mv16675 :isa copular-predication :item mv16668 :value mv16673 :predicate mv16666)
   (:var mv16668 :isa bio-amount :measured-item mv16671 :has-determiner "THE" :raw-text "amount")
   (:var mv16671 :isa protein-family :predication mv16670 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv16670 :isa phosphorylate :substrate mv16671 :raw-text "phosphorylated")
   (:var mv16673 :isa high :adverb mv16672) (:var mv16672 :isa ever :name "ever")
   (:var mv16666 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv16689 :isa copular-predication :item mv16686 :value mv16677 :predicate mv16682)
   (:var mv16686 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16677 :isa mutual-exclusivity :disease mv16678 :alternative mv16684)
   (:var mv16678 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv16684 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv16682 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv16701 :isa share :object mv16700 :participant mv16699 :present "PRESENT" :raw-text
    "shared")
   (:var mv16700 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv16699 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv16692 mv16693))
   (:var mv16692 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv16693 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv16711 :isa regulate :agent mv16714 :object mv16713 :present "PRESENT" :adverb mv16709
    :adverb mv16710 :raw-text "regulate")
   (:var mv16714 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv16713 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv16703 mv16704 mv16705))
   (:var mv16703 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv16704 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv16705 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv16709 :isa superlative-quantifier :name "most")
   (:var mv16710 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv16716 :isa be :subject mv16715 :predicate mv16726 :present "PRESENT")
   (:var mv16715 :isa what) (:var mv16726 :isa quality-predicate :item mv16724 :attribute mv16722)
   (:var mv16724 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv16722 :isa location-of :has-determiner "THE" :predication mv16720 :modifier mv16721)
   (:var mv16720 :isa likely :comparative mv16718)
   (:var mv16718 :isa superlative-quantifier :name "most")
   (:var mv16721 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv16731 :isa polar-question :statement mv16727)
   (:var mv16727 :isa be :subject mv16728 :predicate mv16730)
   (:var mv16728 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16730 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv16743 :isa polar-question :statement mv16734)
   (:var mv16734 :isa tell :agent mv16733 :theme mv16742 :theme mv16735 :modal "CAN")
   (:var mv16733 :isa interlocutor :name "hearer")
   (:var mv16742 :isa wh-question :statement mv16739 :wh whether)
   (:var mv16739 :isa be :subject mv16738 :predicate mv16741 :modal "CAN")
   (:var mv16738 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16741 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv16735 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv16747 :isa want :agent mv16744 :theme mv16757 :present "PRESENT")
   (:var mv16744 :isa interlocutor :name "speaker")
   (:var mv16757 :isa know :agent mv16744 :statement mv16756)
   (:var mv16756 :isa wh-question :statement mv16752 :wh if)
   (:var mv16752 :isa be :subject mv16751 :predicate mv16754 :present "PRESENT")
   (:var mv16751 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16754 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv16758 :isa what))
  ("What type of protein is BRAF?"
   (:var mv16766 :isa be :subject mv16763 :predicate mv16767 :present "PRESENT")
   (:var mv16763 :isa type :molecule-type mv16765 :has-determiner "WHAT" :raw-text "type")
   (:var mv16765 :isa protein :raw-text "protein")
   (:var mv16767 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv16770 :isa be :subject mv16769 :predicate mv16772 :present "PRESENT")
   (:var mv16769 :isa what)
   (:var mv16772 :isa bio-activity :participant mv16777 :has-determiner "THE" :raw-text "activity")
   (:var mv16777 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv16787 :isa polar-question :statement mv16780)
   (:var mv16780 :isa be :subject mv16781 :predicate mv16786)
   (:var mv16781 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16786 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv16783 mv16779))
   (:var mv16783 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv16779 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv16796 :isa target :object mv16795 :agent mv16788 :present "PRESENT" :raw-text
    "targeted")
   (:var mv16795 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv16788 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv16803 :isa name-something :patient mv16799 :present "PRESENT")
   (:var mv16799 :isa transcription-factor :plural t :predication mv16806 :raw-text
    "transcription factors")
   (:var mv16806 :isa share :object mv16799 :participant mv16809 :past "PAST" :raw-text "shared")
   (:var mv16809 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv16800 mv16801 mv16802))
   (:var mv16800 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv16801 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv16802 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv16814 :isa tell :theme mv16819 :beneficiary mv16815 :present "PRESENT")
   (:var mv16819 :isa wh-question :statement mv16817 :wh if)
   (:var mv16817 :isa be :subject mv16812 :predicate mv16813 :present "PRESENT")
   (:var mv16812 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv16813 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv16815 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv16824 :isa show :|statement-OR-theme| mv16831 :beneficiary mv16825 :present "PRESENT")
   (:var mv16831 :isa signaling-pathway :plural t :predication mv16826 :raw-text
    "signaling pathways")
   (:var mv16826 :isa share :object mv16831 :participant mv16829 :past "PAST" :raw-text "shared")
   (:var mv16829 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv16822 mv16823))
   (:var mv16822 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv16823 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv16825 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv16836 :isa give :theme mv16843 :beneficiary mv16837 :present "PRESENT")
   (:var mv16843 :isa signaling-pathway :plural t :predication mv16838 :raw-text
    "signaling pathways")
   (:var mv16838 :isa share :object mv16843 :participant mv16841 :past "PAST" :raw-text "shared")
   (:var mv16841 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv16834 mv16835))
   (:var mv16834 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv16835 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv16837 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv16873 :isa polar-question :statement mv16872)
   (:var mv16872 :isa event-relation :subordinated-event mv16868 :event mv16870)
   (:var mv16868 :isa wh-question :statement mv16855 :wh if)
   (:var mv16855 :isa increase :|agent-OR-cause| mv16853 :|multiplier-OR-cause| mv16865
    :|affected-process-OR-object| mv16857 :present "PRESENT" :raw-text "increase")
   (:var mv16853 :isa interlocutor :name "person-and-machine")
   (:var mv16865 :isa measurement :number mv16862) (:var mv16862 :isa number :value 10)
   (:var mv16857 :isa bio-amount :measured-item mv16859 :has-determiner "THE" :raw-text "amount")
   (:var mv16859 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16870 :isa copular-predication :item mv16846 :value mv16851 :predicate mv16844)
   (:var mv16846 :isa bio-amount :measured-item mv16849 :has-determiner "THE" :raw-text "amount")
   (:var mv16849 :isa protein-family :predication mv16848 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv16848 :isa phosphorylate :substrate mv16849 :raw-text "phosphorylated")
   (:var mv16851 :isa high :adverb mv16850) (:var mv16850 :isa ever :name "ever")
   (:var mv16844 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv16876 :isa phosphorylate :agent mv16875 :substrate mv16877 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv16875 :isa protein-family :predication mv16874 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16874 :isa active)
   (:var mv16877 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv16905 :isa polar-question :statement mv16904)
   (:var mv16904 :isa event-relation :subordinated-event mv16900 :event mv16902)
   (:var mv16900 :isa wh-question :statement mv16889 :wh if)
   (:var mv16889 :isa increase :|agent-OR-cause| mv16887 :level mv16898
    :|affected-process-OR-object| mv16891 :present "PRESENT" :raw-text "increase")
   (:var mv16887 :isa interlocutor :name "person-and-machine")
   (:var mv16898 :isa measurement :number mv16895) (:var mv16895 :isa number :value 10)
   (:var mv16891 :isa bio-amount :measured-item mv16893 :has-determiner "THE" :raw-text "amount")
   (:var mv16893 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv16902 :isa copular-predication :item mv16880 :value mv16885 :predicate mv16878)
   (:var mv16880 :isa bio-amount :measured-item mv16883 :has-determiner "THE" :raw-text "amount")
   (:var mv16883 :isa protein-family :predication mv16882 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv16882 :isa phosphorylate :substrate mv16883 :raw-text "phosphorylated")
   (:var mv16885 :isa high :adverb mv16884) (:var mv16884 :isa ever :name "ever")
   (:var mv16878 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv16907 :isa be :subject mv16906 :predicate mv16915 :present "PRESENT")
   (:var mv16906 :isa what)
   (:var mv16915 :isa pathway :plural t :predication mv16912 :quantifier mv16908 :raw-text
    "pathways")
   (:var mv16912 :isa affect :agent mv16915 :that-rel t :object mv16913 :present "PRESENT"
    :raw-text "affect")
   (:var mv16913 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16908 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv16917 :isa be :subject mv16916 :predicate mv16925 :present "PRESENT")
   (:var mv16916 :isa what)
   (:var mv16925 :isa pathway :plural t :predication mv16922 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv16922 :isa affect :agent mv16925 :that-rel t :object mv16923 :present "PRESENT"
    :raw-text "affect")
   (:var mv16923 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv16937 :isa regulate :object mv16936 :agent mv16935 :present "PRESENT" :raw-text
    "regulated")
   (:var mv16936 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv16935 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv16926 mv16927))
   (:var mv16926 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv16927 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv16941 :isa be :subject mv16940 :predicate mv16952 :present "PRESENT")
   (:var mv16940 :isa what)
   (:var mv16952 :isa gene :plural t :predication mv16950 :quantifier mv16942 :raw-text "genes")
   (:var mv16950 :isa regulate :object mv16952 :that-rel t :agent mv16939 :present "PRESENT"
    :raw-text "regulated")
   (:var mv16939 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv16942 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv16958 :isa contain :theme mv16961 :patient mv16960 :present "PRESENT")
   (:var mv16961 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv16960 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv16953 mv16954))
   (:var mv16953 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv16954 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv16964 :isa remove :object mv16973 :present "PRESENT" :raw-text "Remove")
   (:var mv16973 :isa fact :statement mv16968 :has-determiner "THE")
   (:var mv16968 :isa bio-activate :agent mv16962 :object mv16963 :present "PRESENT" :raw-text
    "activates")
   (:var mv16962 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv16963 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv16976 :isa remove :object mv16974 :present "PRESENT" :raw-text "Remove")
   (:var mv16974 :isa protein :predication mv16977 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv16977 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv16985 :isa be :subject mv16984 :predicate mv16995 :present "PRESENT")
   (:var mv16984 :isa what)
   (:var mv16995 :isa path :plural t :endpoints mv16992 :quantifier mv16986)
   (:var mv16992 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv16990 mv16983))
   (:var mv16990 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv16983 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv16986 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv17001 :isa polar-question :statement mv17000)
   (:var mv17000 :isa bio-activate :agent mv16996 :object mv16997 :raw-text "activate")
   (:var mv16996 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv16997 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv17005 :isa protein :has-determiner "WHAT" :modifier mv17004 :modifier mv17006 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17004 :isa drug :plural t :raw-text "drugs")
   (:var mv17006 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv17020 :isa copular-predication-of-pp :item mv17015 :value mv17019 :prep "IN" :predicate
    mv17011)
   (:var mv17015 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv17019 :isa kinase :plural t :in-pathway mv17007 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv17007 :isa signaling-pathway :has-determiner "THE" :modifier mv17014 :raw-text
    "signalling pathway")
   (:var mv17014 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019")
   (:var mv17011 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv17028 :isa target :agent mv17032 :object mv17029 :present "PRESENT" :raw-text "target")
   (:var mv17032 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv17029 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv17036 :isa bio-entity :has-determiner "WHAT" :modifier mv17037 :name "ELLK1")
   (:var mv17037 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv17050 :isa polar-question :statement mv17047)
   (:var mv17047 :isa increase :agent mv17038 :affected-process mv17043 :raw-text "increase")
   (:var mv17038 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17043 :isa gene-transcript-express :object mv17039 :raw-text "expression")
   (:var mv17039 :isa protein :organ mv17046 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv17046 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv17060 :isa polar-question :statement mv17058)
   (:var mv17058 :isa affect :agent mv17051 :affected-process mv17055 :raw-text "affect")
   (:var mv17051 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17055 :isa gene-transcript-express :organ mv17057 :object mv17052 :raw-text
    "expression")
   (:var mv17057 :isa liver)
   (:var mv17052 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv17067 :isa polar-question :statement mv17066)
   (:var mv17066 :isa alter :agent mv17061 :affected-process mv17065 :raw-text "alter")
   (:var mv17061 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17065 :isa gene-transcript-express :object mv17062 :raw-text "expression")
   (:var mv17062 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv17075 :isa polar-question :statement mv17071)
   (:var mv17071 :isa be :subject mv17068 :predicate mv17069)
   (:var mv17068 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17069 :isa protein-family :molecule-type mv17070 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv17070 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv17079 :isa inhibit :agent mv17081 :object mv17080 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv17081 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv17080 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv17084 :isa upregulate :agent mv17082 :object mv17083 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv17082 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17083 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv17088 :isa transcribe :object mv17086 :agent mv17085 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv17086 :isa what)
   (:var mv17085 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv17091 :isa be :subject mv17090 :predicate mv17089 :present "PRESENT")
   (:var mv17090 :isa what)
   (:var mv17089 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv17093 :isa be :subject mv17092 :predicate mv17094 :present "PRESENT")
   (:var mv17092 :isa what)
   (:var mv17094 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv17096 :isa phosphorylate :|agent-OR-cause| mv17095 :substrate mv17097 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv17095 :isa what)
   (:var mv17097 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv17102 :isa target :agent mv17104 :object mv17103 :present "PRESENT" :raw-text "target")
   (:var mv17104 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv17103 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv17107 :isa regulate :|agent-OR-cause| mv17106 :object mv17105 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17106 :isa what) (:var mv17105 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv17110 :isa regulate :|agent-OR-cause| mv17109 :object mv17108 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17109 :isa what)
   (:var mv17108 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv17121 :isa polar-question :statement mv17120)
   (:var mv17120 :isa target :agent mv17119 :object mv17112 :raw-text "target")
   (:var mv17119 :isa bio-entity :name "miR-20b-5pp")
   (:var mv17112 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv17124 :isa be :subject mv17123 :predicate mv17131 :present "PRESENT")
   (:var mv17123 :isa what)
   (:var mv17131 :isa mutation :plural t :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv17137 :isa target :|affected-process-OR-object| mv17134 :agent mv17138 :present
    "PRESENT" :raw-text "target")
   (:var mv17134 :isa what) (:var mv17138 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv17143 :isa polar-question :statement mv17140)
   (:var mv17140 :isa be :subject mv17139 :predicate mv17142)
   (:var mv17139 :isa bio-entity :name "ELLK1")
   (:var mv17142 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv17145 :isa regulate :|agent-OR-cause| mv17144 :object mv17146 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17144 :isa what)
   (:var mv17146 :isa protein :variant-number mv17148 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv17148 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv17152 :isa target :|affected-process-OR-object| mv17149 :agent mv17153 :present
    "PRESENT" :raw-text "target")
   (:var mv17149 :isa what) (:var mv17153 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv17157 :isa be :subject mv17156 :predicate mv17162 :present "PRESENT")
   (:var mv17156 :isa what) (:var mv17162 :isa evidence :statement mv17161 :has-determiner "THE")
   (:var mv17161 :isa phosphorylate :agent mv17154 :substrate mv17155 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv17154 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17155 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv17164 :isa remove :object mv17163 :present "PRESENT" :raw-text "Remove")
   (:var mv17163 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv17169 :isa remove :object mv17172 :present "PRESENT" :raw-text "Remove")
   (:var mv17172 :isa interact :has-determiner "THE" :predication mv17171 :raw-text "interaction")
   (:var mv17171 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv17179 :isa bio-activate :agent mv17177 :object mv17178 :present "PRESENT" :raw-text
    "activates")
   (:var mv17177 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv17178 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv17189 :isa copular-predication-of-pp :item mv17187 :value mv17186 :prep mv17184
    :predicate mv17183)
   (:var mv17187 :isa interact :plural t :quantifier how-many :raw-text "interactions")
   (:var mv17186 :isa model :has-determiner "THE") (:var mv17184 :isa in :word "in")
   (:var mv17183 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv17201 :isa polar-question :statement mv17199)
   (:var mv17199 :isa decrease :agent mv17192 :|affected-process-OR-object| mv17196 :raw-text
    "decrease")
   (:var mv17192 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv17196 :isa bio-amount :measured-item mv17190 :has-determiner "THE" :raw-text "amount")
   (:var mv17190 :isa protein :predication mv17198 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv17198 :isa phosphorylate :substrate mv17190 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv17207 :isa bio-activate :object mv17208 :agent mv17202 :present "PRESENT" :raw-text
    "activate")
   (:var mv17208 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17202 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv17214 :isa bio-activate :object mv17215 :agent mv17209 :present "PRESENT" :raw-text
    "activate")
   (:var mv17215 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17209 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv17219 :isa bio-activate :|affected-process-OR-object| mv17217 :agent mv17216 :present
    "PRESENT" :raw-text "activate")
   (:var mv17217 :isa what)
   (:var mv17216 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv17223 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv17221 :agent mv17220
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv17221 :isa what)
   (:var mv17220 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv17229 :isa regulate :object mv17230 :agent mv17224 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17230 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17224 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv17242 :isa collection :type involve :number 2 :items (mv17234 mv17240))
   (:var mv17234 :isa involve :theme mv17241 :object mv17235 :present "PRESENT")
   (:var mv17241 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17235 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17240 :isa binding :direct-bindee mv17237 :binder mv17239 :present "PRESENT" :raw-text
    "bind")
   (:var mv17237 :isa what)
   (:var mv17239 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv17246 :isa involve :theme mv17248 :object mv17247 :present "PRESENT")
   (:var mv17248 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17247 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv17252 :isa binding :direct-bindee mv17249 :binder mv17251 :present "PRESENT" :raw-text
    "bind")
   (:var mv17249 :isa what)
   (:var mv17251 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv17264 :isa collection :type involve :number 2 :items (mv17256 mv17259))
   (:var mv17256 :isa involve :theme mv17263 :object mv17257 :present "PRESENT")
   (:var mv17263 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17257 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17259 :isa be :subject mv17263 :predicate mv17260 :present "PRESENT")
   (:var mv17260 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv17275 :isa polar-question :statement mv17274)
   (:var mv17274 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv17281 :isa polar-question :statement mv17280)
   (:var mv17280 :isa phosphorylate :agent mv17276 :substrate mv17277 :raw-text "phosphorylate")
   (:var mv17276 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17277 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv17286 :isa bio-activate :agent mv17287 :object mv17282 :present "PRESENT" :raw-text
    "activate")
   (:var mv17287 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv17282 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv17294 :isa target :agent mv17300 :affected-process mv17302 :present "PRESENT" :raw-text
    "target")
   (:var mv17300 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv17302 :isa upstream-segment :plural t :pathwaycomponent mv17299 :raw-text "upstreams")
   (:var mv17299 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv17288 mv17289))
   (:var mv17288 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv17289 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv17308 :isa target :agent mv17309 :object mv17303 :present "PRESENT" :raw-text "target")
   (:var mv17309 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv17303 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv17315 :isa target :agent mv17316 :object mv17310 :present "PRESENT" :raw-text "target")
   (:var mv17316 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv17310 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv17325 :isa target :agent mv17330 :object mv17318 :present "PRESENT" :raw-text "target")
   (:var mv17330 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv17318 :isa transcription-factor :plural t :predication mv17326 :raw-text
    "transcription factors")
   (:var mv17326 :isa share :object mv17318 :participant mv17329 :past "PAST" :raw-text "shared")
   (:var mv17329 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv17319 mv17320))
   (:var mv17319 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv17320 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv17339 :isa target :object mv17340 :agent mv17333 :present "PRESENT" :raw-text "target")
   (:var mv17340 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17333 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv17347 :isa target :object mv17348 :agent mv17343 :present "PRESENT" :raw-text "target")
   (:var mv17348 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17343 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv17361 :isa copular-predication :item mv17358 :value mv17349 :predicate mv17355)
   (:var mv17358 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17349 :isa mutual-exclusivity :disease mv17351 :alternative mv17350)
   (:var mv17351 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv17350 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv17355 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv17366 :isa target :agent mv17368 :object mv17367 :present "PRESENT" :raw-text "target")
   (:var mv17368 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv17367 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv17382 :isa copular-predication-of-pp :item mv17377 :value mv17381 :prep "IN" :predicate
    mv17373)
   (:var mv17377 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv17381 :isa kinase :plural t :in-pathway mv17369 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv17369 :isa signaling-pathway :has-determiner "THE" :modifier mv17376 :raw-text
    "signaling pathway")
   (:var mv17376 :isa bio-entity :name "FAKE") (:var mv17373 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv17385 :isa be :subject mv17384 :predicate mv17397 :present "PRESENT")
   (:var mv17384 :isa what)
   (:var mv17397 :isa mutation :plural t :object mv17390 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv17390 :isa protein :context mv17393 :raw-text "PTEN" :uid "UP:P60484" :name
    "PTEN_HUMAN")
   (:var mv17393 :isa cancer :predication mv17392) (:var mv17392 :isa fictional))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv17399 :isa be :subject mv17398 :predicate mv17411 :present "PRESENT")
   (:var mv17398 :isa what)
   (:var mv17411 :isa mutation :plural t :object mv17404 :has-determiner "THE" :raw-text
    "mutations")
   (:var mv17404 :isa protein :context mv17407 :raw-text "PTEN" :uid "UP:P60484" :name
    "PTEN_HUMAN")
   (:var mv17407 :isa cancer :organ mv17406) (:var mv17406 :isa liver))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv17413 :isa remove :object mv17423 :present "PRESENT" :raw-text "Remove")
   (:var mv17423 :isa fact :statement mv17417 :has-determiner "THE")
   (:var mv17417 :isa transcribe :agent mv17412 :object mv17418 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv17412 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17418 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv17425 :isa transcribe :agent mv17424 :object mv17426 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv17424 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17426 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv17428 :isa remove :object mv17438 :present "PRESENT" :raw-text "Remove")
   (:var mv17438 :isa fact :statement mv17432 :has-determiner "THE")
   (:var mv17432 :isa transcribe :agent mv17427 :object mv17433 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv17427 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17433 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv17453 :isa share :object mv17452 :participant mv17451 :present "PRESENT" :raw-text
    "shared")
   (:var mv17452 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17451 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv17441 mv17450))
   (:var mv17441 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv17450 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv17466 :isa share :object mv17465 :participant mv17464 :present "PRESENT" :raw-text
    "shared")
   (:var mv17465 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17464 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv17457 mv17458))
   (:var mv17457 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv17458 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv17475 :isa database :plural t :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv17477 :isa be :subject mv17476 :predicate mv17479 :present "PRESENT")
   (:var mv17476 :isa what)
   (:var mv17479 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv17490 :isa ask :patient mv17489 :modal mv17483 :agent mv17484 :present "PRESENT")
   (:var mv17489 :isa tissue :plural t :has-determiner "WHAT") (:var mv17483 :isa can)
   (:var mv17484 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv17501 :isa ask :patient mv17500 :modal mv17494 :agent mv17495 :present "PRESENT")
   (:var mv17500 :isa cancer :plural t :has-determiner "WHAT") (:var mv17494 :isa can)
   (:var mv17495 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv17512 :isa ask :patient mv17511 :modal mv17505 :agent mv17506 :present "PRESENT")
   (:var mv17511 :isa bio-mechanism :plural t :has-determiner "WHAT") (:var mv17505 :isa can)
   (:var mv17506 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv17516 :isa regulate :|affected-process-OR-object| mv17514 :agent mv17513 :present
    "PRESENT" :raw-text "regulate")
   (:var mv17514 :isa what)
   (:var mv17513 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv17520 :isa be :subject mv17519 :predicate mv17522 :present "PRESENT")
   (:var mv17519 :isa these :quantifier mv17517 :word "these") (:var mv17517 :isa which)
   (:var mv17522 :isa kinase :plural t :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv17528 :isa be :subject mv17530 :predicate mv17524 :present "PRESENT")
   (:var mv17530 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17524 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv17535 :isa be :subject mv17534 :predicate mv17531 :present "PRESENT")
   (:var mv17534 :isa these :quantifier mv17532 :word "these") (:var mv17532 :isa which)
   (:var mv17531 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv17543 :isa be :subject mv17547 :predicate mv17546 :present "PRESENT")
   (:var mv17547 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17546 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv17538 mv17539))
   (:var mv17538 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv17539 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv17553 :isa target :agent mv17554 :object mv17548 :present "PRESENT" :raw-text "target")
   (:var mv17554 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv17548 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv17560 :isa target :|agent-OR-cause| mv17558 :object mv17555 :present "PRESENT" :raw-text
    "target")
   (:var mv17558 :isa these :quantifier mv17556 :word "these") (:var mv17556 :isa which)
   (:var mv17555 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv17570 :isa polar-question :statement mv17568)
   (:var mv17568 :isa regulate :|agent-OR-cause| mv17566 :object mv17562 :raw-text "regulate")
   (:var mv17566 :isa these :quantifier mv17564 :word "these") (:var mv17564 :isa any :word "any")
   (:var mv17562 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv17573 :isa regulate :|agent-OR-cause| mv17572 :object mv17571 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17572 :isa what)
   (:var mv17571 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv17577 :isa involve :theme mv17579 :object mv17578 :present "PRESENT")
   (:var mv17579 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17578 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv17582 :isa be :subject mv17581 :predicate mv17590 :present "PRESENT")
   (:var mv17581 :isa what)
   (:var mv17590 :isa target-protein :plural t :agent mv17580 :has-determiner "THE" :raw-text
    "targets")
   (:var mv17580 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv17592 :isa be :subject mv17591 :predicate mv17598 :present "PRESENT")
   (:var mv17591 :isa what)
   (:var mv17598 :isa location-of :theme mv17593 :predication mv17596 :modifier mv17597)
   (:var mv17593 :isa pronoun/plural :word "their") (:var mv17596 :isa likely :comparative mv17594)
   (:var mv17594 :isa superlative-quantifier :name "most")
   (:var mv17597 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv17603 :isa polar-question :statement mv17601)
   (:var mv17601 :isa be :subject mv17599 :predicate mv17600)
   (:var mv17599 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv17600 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv17608 :isa polar-question :statement mv17604)
   (:var mv17604 :isa be :subject mv17605 :predicate mv17607)
   (:var mv17605 :isa pronoun/inanimate :word "it")
   (:var mv17607 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv17611 :isa be :subject mv17610 :predicate mv17609 :present "PRESENT")
   (:var mv17610 :isa what)
   (:var mv17609 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv17616 :isa target :|affected-process-OR-object| mv17612 :|agent-OR-cause| mv17614
    :present "PRESENT" :raw-text "target")
   (:var mv17612 :isa what) (:var mv17614 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv17622 :isa regulate :object mv17623 :agent mv17617 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17623 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17617 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv17627 :isa be :subject mv17630 :predicate mv17628 :present "PRESENT")
   (:var mv17630 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv17628 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv17633 :isa be :subject mv17632 :predicate mv17641 :present "PRESENT")
   (:var mv17632 :isa what)
   (:var mv17641 :isa target-protein :plural t :agent mv17631 :has-determiner "THE" :raw-text
    "targets")
   (:var mv17631 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv17648 :isa polar-question :statement mv17647)
   (:var mv17647 :isa target :|agent-OR-cause| mv17643 :object mv17646 :raw-text "target")
   (:var mv17643 :isa pronoun/inanimate :word "it")
   (:var mv17646 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv17653 :isa inhibit :agent mv17652 :object mv17657 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv17652 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv17657 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv17649 mv17650))
   (:var mv17649 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv17650 :isa protein :predication mv17655 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv17655 :isa active))
  ("JAK1 activates STAT3"
   (:var mv17660 :isa bio-activate :agent mv17658 :object mv17659 :present "PRESENT" :raw-text
    "activates")
   (:var mv17658 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv17659 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv17666 :isa want :agent mv17663 :theme mv17676 :present "PRESENT")
   (:var mv17663 :isa interlocutor :name "speaker")
   (:var mv17676 :isa find-out :agent mv17663 :statement mv17673)
   (:var mv17673 :isa wh-question :statement mv17672 :var nil :wh how)
   (:var mv17672 :isa bio-activate :agent mv17661 :object mv17662 :present "PRESENT" :raw-text
    "activates")
   (:var mv17661 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv17662 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv17682 :isa want :agent mv17679 :theme mv17698 :present "PRESENT")
   (:var mv17679 :isa interlocutor :name "speaker")
   (:var mv17698 :isa find-out :agent mv17679 :statement mv17695)
   (:var mv17695 :isa wh-question :statement mv17688 :var nil :wh how)
   (:var mv17688 :isa bio-activate :agent mv17677 :object mv17689 :present "PRESENT" :raw-text
    "activates")
   (:var mv17677 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv17689 :isa protein :cell-type mv17693 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv17693 :isa cell-type :plural t :cell-line mv17678)
   (:var mv17678 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv17703 :isa explicit-suggestion :suggestion mv17700 :marker let-as-directive)
   (:var mv17700 :isa build :artifact mv17702 :present "PRESENT")
   (:var mv17702 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv17705 :isa phosphorylate :agent mv17704 :substrate mv17706 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv17704 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv17706 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
    :count 13 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK14_HUMAN") (:uid "UP:Q16539"))
     (protein (:name "MK11_HUMAN") (:uid "UP:Q15759"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK10_HUMAN") (:uid "UP:P53779"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK09_HUMAN") (:uid "UP:P45984"))
     (protein (:name "MK08_HUMAN") (:uid "UP:P45983"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361"))
     (protein (:name "MK13_HUMAN") (:uid "UP:O15264")))
    :uid "PR:000000019"))
  ("What kinases regulate IL2?"
   (:var mv17714 :isa regulate :agent mv17715 :object mv17710 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17715 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17710 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv17716 :isa upregulate :|agent-OR-cause| mv17718 :object mv17717 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv17718 :isa what)
   (:var mv17717 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv17722 :isa have :possessor mv17720 :thing-possessed mv17724 :modal mv17721)
   (:var mv17720 :isa what)
   (:var mv17724 :isa effect :object mv17719 :affected-process mv17727 :has-determiner "THE"
    :raw-text "effect")
   (:var mv17719 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17727 :isa bio-activate :raw-text "activation") (:var mv17721 :isa can))
  ("Are there any drugs for IL10?" (:var mv17743 :isa polar-question :statement mv17739)
   (:var mv17739 :isa there-exists :value mv17742 :predicate mv17733)
   (:var mv17742 :isa drug :plural t :target mv17731 :quantifier mv17735 :raw-text "drugs")
   (:var mv17731 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv17735 :isa any :word "any") (:var mv17733 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv17748 :isa gene-transcript-express :agent mv17749 :object mv17744 :present "PRESENT"
    :raw-text "express")
   (:var mv17749 :isa tissue :plural t :has-determiner "WHICH")
   (:var mv17744 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv17754 :isa regulate :manner mv17752 :agent mv17750 :object mv17751 :present "PRESENT"
    :raw-text "regulate")
   (:var mv17752 :isa how)
   (:var mv17750 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17751 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv17760 :isa be :subject mv17759 :predicate mv17770 :present "PRESENT")
   (:var mv17759 :isa what)
   (:var mv17770 :isa transcription-factor :plural t :predication mv17762 :raw-text
    "transcription factors")
   (:var mv17762 :isa binding :binder mv17770 :that-rel t :direct-bindee mv17769 :present "PRESENT"
    :raw-text "bind")
   (:var mv17769 :isa gene :plural t :has-determiner "THE" :expresses mv17767 :raw-text "genes")
   (:var mv17767 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv17757 mv17758))
   (:var mv17757 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv17758 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv17776 :isa regulate :agent mv17780 :object mv17779 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17780 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv17779 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv17771 mv17772))
   (:var mv17771 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv17772 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv17792 :isa factor :plural t :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv17805 :isa relation :plural t :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv17809 :isa be :subject mv17808 :predicate mv17807 :present "PRESENT")
   (:var mv17808 :isa what)
   (:var mv17807 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv17814 :isa polar-question :statement mv17811)
   (:var mv17811 :isa be :subject mv17810 :predicate mv17813)
   (:var mv17810 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv17813 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv17818 :isa transcribe :object mv17816 :agent mv17815 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv17816 :isa what)
   (:var mv17815 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv17829 :isa polar-question :statement mv17826)
   (:var mv17826 :isa there-exists :value mv17828 :predicate mv17821)
   (:var mv17828 :isa drug :plural t :target mv17819 :raw-text "drugs")
   (:var mv17819 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv17821 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv17839 :isa relation :plural t :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv17852 :isa relation :plural t :has-determiner "WHAT"))))
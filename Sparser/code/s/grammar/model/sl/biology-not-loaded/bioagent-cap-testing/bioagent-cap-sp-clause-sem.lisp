(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv7591 :isa regulate :object mv7588 :agent mv7592 :present "PRESENT" :raw-text "regulate")
   (:var mv7588 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7592 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv7597 :isa regulate :object mv7593 :agent mv7594 :present "PRESENT" :raw-text "regulate")
   (:var mv7593 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7594 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv7599 :isa tell :theme mv7603 :theme mv7600 :present "PRESENT")
   (:var mv7603 :isa involve :theme mv7605 :participant mv7602)
   (:var mv7605 :isa apoptosis :raw-text "apoptosis")
   (:var mv7602 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7600 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv7610 :isa be :subject mv7609 :predicate mv7612 :present "PRESENT")
   (:var mv7609 :isa what)
   (:var mv7612 :isa gene :predication mv7614 :has-determiner "THE" :raw-text "genes")
   (:var mv7614 :isa have :possessor mv7612 :that-rel t :thing-possessed mv7616 :present "PRESENT")
   (:var mv7616 :isa evidence :fact mv7619 :predication mv7615)
   (:var mv7619 :isa regulate :agent mv7608 :progressive mv7618 :raw-text "regulated")
   (:var mv7608 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv7618 :isa be) (:var mv7615 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv7625 :isa be :subject mv7624 :predicate mv7627 :present "PRESENT")
   (:var mv7624 :isa what) (:var mv7627 :isa involve :theme mv7629 :participant mv7626)
   (:var mv7629 :isa apoptosis :raw-text "apoptosis")
   (:var mv7626 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv7633 :isa be :subject mv7632 :predicate mv7635 :present "PRESENT")
   (:var mv7632 :isa what) (:var mv7635 :isa role :process mv7637 :participant mv7634)
   (:var mv7637 :isa apoptosis :raw-text "apoptosis")
   (:var mv7634 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv7641 :isa be :subject mv7640 :predicate mv7643 :present "PRESENT")
   (:var mv7640 :isa what) (:var mv7643 :isa role :process mv7647 :participant mv7642)
   (:var mv7647 :isa regulate :cellular-process mv7645 :raw-text "regulation")
   (:var mv7645 :isa apoptosis :raw-text "apoptotic")
   (:var mv7642 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv7652 :isa be :subject mv7651 :predicate mv7658 :present "PRESENT")
   (:var mv7651 :isa what) (:var mv7658 :isa evidence :statement mv7657 :has-determiner "THE")
   (:var mv7657 :isa target :agent mv7649 :object mv7650 :present "PRESENT" :raw-text "targets")
   (:var mv7649 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv7650 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv7663 :isa regulate :object mv7659 :agent mv7660 :present "PRESENT" :raw-text "regulate")
   (:var mv7659 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7660 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv7668 :isa regulate :object mv7664 :agent mv7665 :present "PRESENT" :raw-text "regulate")
   (:var mv7664 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv7665 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv7672 :isa be :subject mv7671 :predicate mv7675 :present "PRESENT")
   (:var mv7671 :isa what)
   (:var mv7675 :isa significance :agent mv7669 :has-determiner "THE" :modifier mv7674)
   (:var mv7669 :isa protein :context mv7670 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv7670 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv7674 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv7683 :isa be :subject mv7682 :predicate mv7686 :present "PRESENT")
   (:var mv7682 :isa what)
   (:var mv7686 :isa significance :result mv7681 :agent mv7680 :has-determiner "THE" :modifier
    mv7685)
   (:var mv7681 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv7680 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv7685 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv7692 :isa be :subject mv7691 :predicate mv7693 :present "PRESENT")
   (:var mv7691 :isa what) (:var mv7693 :isa has-synonym :item mv7695)
   (:var mv7695 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv7699 :isa be :subject mv7698 :predicate mv7701 :present "PRESENT")
   (:var mv7698 :isa what)
   (:var mv7701 :isa gene :predication mv7706 :quantifier mv7700 :raw-text "genes")
   (:var mv7706 :isa mutation :object mv7701 :that-rel t :context mv7697 :present "PRESENT"
    :raw-text "mutated")
   (:var mv7697 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv7700 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv7714 :isa mutation :object mv7710 :context mv7708 :present "PRESENT" :raw-text
    "mutated")
   (:var mv7710 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7708 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv7728 :isa polar-question :statement mv7726)
   (:var mv7726 :isa bio-activate :agent mv7718 :object mv7716 :raw-text "activate")
   (:var mv7718 :isa phosphorylate :site mv7725 :raw-text "phosphorylation")
   (:var mv7725 :isa residue-on-protein :raw-text "S221" :position mv7723 :amino-acid mv7721)
   (:var mv7723 :isa number :value 221) (:var mv7721 :isa amino-acid :name "serine" :letter "S")
   (:var mv7716 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv7741 :isa polar-question :statement mv7739)
   (:var mv7739 :isa bio-activate :agent mv7731 :object mv7729 :raw-text "activate")
   (:var mv7731 :isa phosphorylate :site mv7738 :raw-text "phosphorylation")
   (:var mv7738 :isa residue-on-protein :raw-text "S222" :position mv7736 :amino-acid mv7734)
   (:var mv7736 :isa number :value 222) (:var mv7734 :isa amino-acid :name "serine" :letter "S")
   (:var mv7729 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv7744 :isa simulate :object mv7748 :present "PRESENT" :raw-text "Simulate")
   (:var mv7748 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv7743
    :component mv7742)
   (:var mv7743 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv7742 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv7750 :isa be :subject mv7749 :predicate mv7752 :present "PRESENT")
   (:var mv7749 :isa what) (:var mv7752 :isa member :set mv7754 :has-determiner "THE")
   (:var mv7754 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv7757 :isa be :subject mv7756 :predicate mv7759 :present "PRESENT")
   (:var mv7756 :isa what) (:var mv7759 :isa member :set mv7761 :has-determiner "THE")
   (:var mv7761 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv7764 :isa be :subject mv7763 :predicate mv7766 :present "PRESENT")
   (:var mv7763 :isa what) (:var mv7766 :isa member :set mv7768 :has-determiner "THE")
   (:var mv7768 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv7771 :isa be :subject mv7770 :predicate mv7773 :present "PRESENT")
   (:var mv7770 :isa what) (:var mv7773 :isa member :set mv7779 :has-determiner "THE")
   (:var mv7779 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv7783 :isa be :subject mv7782 :predicate mv7785 :present "PRESENT")
   (:var mv7782 :isa what) (:var mv7785 :isa member :set mv7781 :has-determiner "THE")
   (:var mv7781 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras" :count
    3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv7790 :isa be :subject mv7789 :predicate mv7793 :present "PRESENT")
   (:var mv7789 :isa what) (:var mv7793 :isa has-name :item mv7796 :quantifier mv7791)
   (:var mv7796 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7791 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv7800 :isa be :subject mv7799 :predicate mv7803 :present "PRESENT")
   (:var mv7799 :isa what) (:var mv7803 :isa has-name :item mv7798 :quantifier mv7801)
   (:var mv7798 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv7801 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv7811 :isa affect :manner mv7809 :agent mv7807 :object mv7808 :present "PRESENT"
    :raw-text "affect")
   (:var mv7809 :isa how)
   (:var mv7807 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7808 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv7813 :isa list :theme mv7815 :present "PRESENT")
   (:var mv7815 :isa gene :predication mv7816 :quantifier mv7814 :raw-text "genes")
   (:var mv7816 :isa regulate :object mv7815 :agent mv7812 :past "PAST" :raw-text "regulated")
   (:var mv7812 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7814 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv7820 :isa list :theme mv7824 :present "PRESENT")
   (:var mv7824 :isa gene :predication mv7825 :quantifier mv7821 :has-determiner "THE" :raw-text
    "genes")
   (:var mv7825 :isa regulate :object mv7824 :agent mv7819 :past "PAST" :raw-text "regulated")
   (:var mv7819 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7821 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv7831 :isa list :theme mv7833 :present "PRESENT")
   (:var mv7833 :isa gene :predication mv7834 :has-determiner "THE" :raw-text "genes")
   (:var mv7834 :isa regulate :object mv7833 :agent mv7830 :past "PAST" :raw-text "regulated")
   (:var mv7830 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv7839 :isa be :subject mv7838 :predicate mv7844 :present "PRESENT")
   (:var mv7838 :isa what)
   (:var mv7844 :isa regulator :theme mv7848 :has-determiner "THE" :predication mv7841 :context
    mv7842 :raw-text "regulators")
   (:var mv7848 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv7837 mv7847))
   (:var mv7837 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv7847 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7841 :isa common) (:var mv7842 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv7851 :isa be :subject mv7850 :predicate mv7854 :present "PRESENT")
   (:var mv7850 :isa what)
   (:var mv7854 :isa upstream-segment :pathwaycomponent mv7859 :has-determiner "THE" :predication
    mv7853 :raw-text "upstreams")
   (:var mv7859 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv7856 mv7858))
   (:var mv7856 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv7858 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7853 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv7863 :isa be :subject mv7862 :predicate mv7866 :present "PRESENT")
   (:var mv7862 :isa what)
   (:var mv7866 :isa upstream-segment :pathwaycomponent mv7870 :has-determiner "THE" :predication
    mv7865 :raw-text "upstreams")
   (:var mv7870 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv7861 mv7869))
   (:var mv7861 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv7869 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv7865 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv7874 :isa be :subject mv7873 :predicate mv7876 :present "PRESENT")
   (:var mv7873 :isa what)
   (:var mv7876 :isa gene :predication mv7878 :has-determiner "THE" :raw-text "genes")
   (:var mv7878 :isa regulate :object mv7876 :that-rel t :agent mv7872 :present "PRESENT" :raw-text
    "regulates")
   (:var mv7872 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv7883 :isa be :subject mv7882 :predicate mv7885 :present "PRESENT")
   (:var mv7882 :isa what)
   (:var mv7885 :isa micro-rna :predication mv7887 :has-determiner "THE" :raw-text "miRNAs")
   (:var mv7887 :isa regulate :agent mv7885 :that-rel t :object mv7891 :present "PRESENT" :raw-text
    "regulate")
   (:var mv7891 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv7888 mv7889 mv7879 mv7880 mv7881))
   (:var mv7888 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv7889 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv7879 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7880 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv7881 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv7894 :isa be :subject mv7893 :predicate mv7896 :present "PRESENT")
   (:var mv7893 :isa what)
   (:var mv7896 :isa micro-rna :predication mv7898 :has-determiner "THE" :raw-text "miRNAs")
   (:var mv7898 :isa regulate :agent mv7896 :that-rel t :object mv7902 :present "PRESENT" :raw-text
    "regulate")
   (:var mv7902 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv7899 mv7900 mv7892))
   (:var mv7899 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv7900 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv7892 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv7904 :isa be :subject mv7903 :predicate mv7906 :present "PRESENT")
   (:var mv7903 :isa what)
   (:var mv7906 :isa regulator :theme mv7908 :has-determiner "THE" :raw-text "regulators")
   (:var mv7908 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv7913 :isa regulate :|affected-process-OR-object| mv7911 :agent mv7910 :organ mv7916
    :present "PRESENT" :raw-text "regulate")
   (:var mv7911 :isa what)
   (:var mv7910 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7916 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv7921 :isa regulate :|affected-process-OR-object| mv7918 :|agent-OR-cause| mv7920 :organ
    mv7924 :present "PRESENT" :raw-text "regulate")
   (:var mv7918 :isa what) (:var mv7920 :isa pronoun/inanimate :word "it")
   (:var mv7924 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv7932 :isa regulate :object mv7928 :agent mv7926 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7928 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7926 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv7942 :isa regulate :object mv7935 :agent mv7941 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7935 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7941 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv7950 :isa regulate :object mv7945 :agent mv7949 :present "PRESENT" :raw-text
    "regulated")
   (:var mv7945 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv7949 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv7959 :isa regulate :|affected-process-OR-object| mv7955 :agent mv7952 :present "PRESENT"
    :raw-text "regulated")
   (:var mv7955 :isa these :quantifier mv7953 :word "these") (:var mv7953 :isa which)
   (:var mv7952 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv7969 :isa regulate :|affected-process-OR-object| mv7965 :agent mv7962 :present "PRESENT"
    :raw-text "regulated")
   (:var mv7965 :isa these :quantifier mv7963 :word "these") (:var mv7963 :isa which)
   (:var mv7962 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv7975 :isa bio-use :agent mv7973 :object mv7976 :present "PRESENT" :raw-text "use")
   (:var mv7973 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv7976 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv7981 :isa regulate :location mv7979 :agent mv7977 :affected-process mv7983 :present
    "PRESENT" :raw-text "regulate")
   (:var mv7979 :isa where)
   (:var mv7977 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv7983 :isa gene-transcript-express :object mv7978 :has-determiner "THE" :raw-text
    "expression")
   (:var mv7978 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv8003 :isa polar-question :statement mv7990)
   (:var mv7990 :isa tell :agent mv7989 :theme mv7986 :beneficiary mv7991 :modal "CAN")
   (:var mv7989 :isa interlocutor :name "hearer")
   (:var mv7986 :isa transcription-factor :predication mv8001 :quantifier mv7992 :has-determiner
    "THE" :raw-text "transcription factors")
   (:var mv8001 :isa share :object mv7986 :that-rel t :participant mv8000 :modal "CAN" :raw-text
    "shared")
   (:var mv8000 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv7987 mv7999))
   (:var mv7987 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv7999 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv7992 :isa all :word "all") (:var mv7991 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv8019 :isa polar-question :statement mv8008)
   (:var mv8008 :isa tell :agent mv8007 :theme mv8017 :theme mv8009 :modal "CAN")
   (:var mv8007 :isa interlocutor :name "hearer")
   (:var mv8017 :isa share :object mv8004 :participant mv8016 :modal "CAN" :raw-text "shared")
   (:var mv8004 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv8016 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv8005 mv8015))
   (:var mv8005 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8015 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv8009 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv8021 :isa be :subject mv8020 :predicate mv8023 :present "PRESENT")
   (:var mv8020 :isa what)
   (:var mv8023 :isa regulator :theme mv8025 :has-determiner "THE" :raw-text "regulators")
   (:var mv8025 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv8030 :isa regulate :|affected-process-OR-object| mv8027 :agent mv8029 :present "PRESENT"
    :raw-text "regulate")
   (:var mv8027 :isa what)
   (:var mv8029 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv8032 :isa be :subject mv8031 :predicate mv8033 :present "PRESENT")
   (:var mv8031 :isa what)
   (:var mv8033 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv8040 :isa polar-question :statement mv8036)
   (:var mv8036 :isa involve :object mv8034 :theme mv8038 :past "PAST")
   (:var mv8034 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8038 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?" (:var mv8049 :isa polar-question :statement mv8043)
   (:var mv8043 :isa involve :object mv8041 :theme mv8047 :past "PAST")
   (:var mv8041 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8047 :isa regulate :cellular-process mv8045 :raw-text "regulation")
   (:var mv8045 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?" (:var mv8057 :isa polar-question :statement mv8052)
   (:var mv8052 :isa involve :object mv8050 :theme mv8054 :past "PAST")
   (:var mv8050 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8054 :isa regulate :affected-process mv8055 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv8055 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv8066 :isa regulate :object mv8062 :agent mv8058 :present "PRESENT" :raw-text
    "regulated")
   (:var mv8062 :isa gene :has-determiner "WHAT" :cellular-process mv8060 :raw-text "genes")
   (:var mv8060 :isa apoptosis :raw-text "apoptotic")
   (:var mv8058 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv8068 :isa list :theme mv8072 :present "PRESENT")
   (:var mv8072 :isa gene :has-determiner "THE" :cellular-process mv8070 :raw-text "genes")
   (:var mv8070 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv8082 :isa involve :object mv8075 :theme mv8081 :present "PRESENT")
   (:var mv8075 :isa gene :predication mv8076 :has-determiner "WHAT" :raw-text "genes")
   (:var mv8076 :isa regulate :object mv8075 :agent mv8073 :past "PAST" :raw-text "regulated")
   (:var mv8073 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8081 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv8086 :isa list :theme mv8087 :present "PRESENT")
   (:var mv8087 :isa gene :predication mv8088 :raw-text "genes")
   (:var mv8088 :isa regulate :object mv8087 :agent mv8085 :past "PAST" :raw-text "regulated")
   (:var mv8085 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv8097 :isa involve :object mv8092 :theme mv8096 :present "PRESENT")
   (:var mv8092 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv8096 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv8108 :isa involve :object mv8101 :theme mv8107 :present "PRESENT")
   (:var mv8101 :isa gene :predication mv8103 :has-determiner "WHAT" :raw-text "genes")
   (:var mv8103 :isa regulate :object mv8101 :that-rel t :agent mv8099 :present "PRESENT" :raw-text
    "regulates")
   (:var mv8099 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8107 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv8111 :isa list :theme mv8113 :present "PRESENT")
   (:var mv8113 :isa gene :predication mv8114 :has-determiner "THE" :raw-text "genes")
   (:var mv8114 :isa regulate :object mv8113 :agent mv8110 :past "PAST" :raw-text "regulated")
   (:var mv8110 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv8118 :isa list :theme mv8121 :present "PRESENT")
   (:var mv8121 :isa gene :has-determiner "THE" :predication mv8120 :raw-text "genes")
   (:var mv8120 :isa regulate :object mv8121 :agent mv8117 :raw-text "regulated")
   (:var mv8117 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv8128 :isa regulate :object mv8124 :agent mv8122 :present "PRESENT" :raw-text
    "regulated")
   (:var mv8124 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv8122 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv8136 :isa involve :object mv8131 :theme mv8135 :present "PRESENT")
   (:var mv8131 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv8135 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv8146 :isa involve :object mv8141 :present "PRESENT")
   (:var mv8141 :isa gene :has-determiner "WHAT" :predication mv8140 :raw-text "genes")
   (:var mv8140 :isa regulate :object mv8141 :agent mv8138 :raw-text "regulated")
   (:var mv8138 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv8149 :isa let :complement mv8166 :present "PRESENT")
   (:var mv8166 :isa know :agent mv8150 :statement mv8165 :present "PRESENT")
   (:var mv8150 :isa interlocutor :name "speaker")
   (:var mv8165 :isa wh-question :statement mv8162 :wh if)
   (:var mv8162 :isa involve :object mv8156 :theme mv8161 :present "PRESENT")
   (:var mv8156 :isa gene :quantifier mv8153 :predication mv8157 :has-determiner "THE" :raw-text
    "genes")
   (:var mv8153 :isa any :word "any")
   (:var mv8157 :isa regulate :object mv8156 :agent mv8148 :present "PRESENT" :raw-text
    "regulates")
   (:var mv8148 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8161 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv8168 :isa let :complement mv8186 :present "PRESENT")
   (:var mv8186 :isa know :agent mv8169 :statement mv8185 :present "PRESENT")
   (:var mv8169 :isa interlocutor :name "speaker")
   (:var mv8185 :isa wh-question :statement mv8182 :wh whether)
   (:var mv8182 :isa involve :object mv8176 :theme mv8181 :present "PRESENT")
   (:var mv8176 :isa gene :quantifier mv8173 :predication mv8177 :has-determiner "THE" :raw-text
    "genes")
   (:var mv8173 :isa any :word "any")
   (:var mv8177 :isa regulate :object mv8176 :agent mv8167 :present "PRESENT" :raw-text
    "regulates")
   (:var mv8167 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8181 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv8203 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv8205 :isa tell :beneficiary mv8206 :present "PRESENT")
   (:var mv8206 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv8216 :isa tell :theme mv8225 :beneficiary mv8217 :present "PRESENT")
   (:var mv8225 :isa wh-question :statement mv8223 :wh if)
   (:var mv8223 :isa involve :object mv8215 :theme mv8222 :present "PRESENT")
   (:var mv8215 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8222 :isa apoptosis :raw-text "apoptosis")
   (:var mv8217 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv8227 :isa tell :theme mv8237 :theme mv8228 :present "PRESENT")
   (:var mv8237 :isa wh-question :statement mv8235 :wh whether)
   (:var mv8235 :isa involve :object mv8226 :theme mv8234 :present "PRESENT")
   (:var mv8226 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8234 :isa apoptosis :raw-text "apoptosis")
   (:var mv8228 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv8240 :isa be :subject mv8239 :predicate mv8242 :present "PRESENT")
   (:var mv8239 :isa what)
   (:var mv8242 :isa gene :predication mv8248 :predication mv8241 :raw-text "genes")
   (:var mv8248 :isa involve :object mv8242 :that-rel t :theme mv8247 :present "PRESENT")
   (:var mv8247 :isa apoptosis :raw-text "apoptosis")
   (:var mv8241 :isa regulate :object mv8242 :agent mv8238 :raw-text "regulated")
   (:var mv8238 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv8252 :isa be :subject mv8251 :predicate mv8254 :present "PRESENT")
   (:var mv8251 :isa what)
   (:var mv8254 :isa gene :predication mv8260 :predication mv8253 :raw-text "genes")
   (:var mv8260 :isa involve :object mv8254 :that-rel t :theme mv8259 :present "PRESENT")
   (:var mv8259 :isa apoptosis :raw-text "apoptosis")
   (:var mv8253 :isa regulate :object mv8254 :agent mv8250 :raw-text "regulated")
   (:var mv8250 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv8265 :isa downstream-segment :pathwaycomponent mv8262 :has-determiner "WHAT" :modifier
    mv8264 :raw-text "downstream")
   (:var mv8262 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8264 :isa gene :raw-text "genes"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv8277 :isa be :subject mv8276 :predicate mv8279 :present "PRESENT")
   (:var mv8276 :isa what)
   (:var mv8279 :isa involve :theme mv8284 :participant mv8275 :has-determiner "THE")
   (:var mv8284 :isa regulate :cellular-process mv8282 :raw-text "regulation")
   (:var mv8282 :isa apoptosis :raw-text "apoptotic")
   (:var mv8275 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv8289 :isa involve :theme mv8288 :object mv8290 :present "PRESENT")
   (:var mv8288 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv8290 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv8294 :isa involve :theme mv8292 :object mv8295 :present "PRESENT")
   (:var mv8292 :isa bio-process :has-determiner "WHAT" :raw-text "processes")
   (:var mv8295 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv8304 :isa involve :object mv8299 :theme mv8303 :present "PRESENT")
   (:var mv8299 :isa gene :has-determiner "WHICH" :predication mv8298 :raw-text "genes")
   (:var mv8298 :isa regulate :object mv8299 :agent mv8296 :raw-text "regulated")
   (:var mv8296 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8303 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv8317 :isa involve :object mv8309 :theme mv8316 :present "PRESENT")
   (:var mv8309 :isa gene :organ mv8312 :has-determiner "WHICH" :predication mv8308 :raw-text
    "genes")
   (:var mv8312 :isa liver :has-determiner "THE")
   (:var mv8308 :isa regulate :object mv8309 :agent mv8306 :raw-text "regulated")
   (:var mv8306 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8316 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv8328 :isa involve :object mv8323 :theme mv8327 :present "PRESENT")
   (:var mv8323 :isa gene :has-determiner "WHICH" :predication mv8322 :raw-text "genes")
   (:var mv8322 :isa regulate :object mv8323 :agent mv8320 :raw-text "regulated")
   (:var mv8320 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv8327 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv8332 :isa bio-activate :agent mv8331 :object mv8330 :present "PRESENT" :raw-text
    "activates")
   (:var mv8331 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv8330 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv8334 :isa bio-activate :agent mv8333 :object mv8335 :present "PRESENT" :raw-text
    "activates")
   (:var mv8333 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv8335 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv8338 :isa phosphorylate :agent mv8336 :substrate mv8337 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv8336 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv8337 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv8341 :isa dephosphorylate :agent mv8339 :substrate mv8340 :present "PRESENT" :raw-text
    "dephosphorylates")
   (:var mv8339 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv8340 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv8343 :isa upregulate :agent mv8342 :object mv8344 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv8342 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8344 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv8348 :isa binding :binder mv8347 :direct-bindee mv8351 :present "PRESENT" :raw-text
    "binds")
   (:var mv8347 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv8351 :isa protein :has-determiner "THE" :modifier mv8346 :modifier mv8350 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv8346 :isa growth-factor :raw-text "growth factor")
   (:var mv8350 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv8352 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv8358 :isa binding :binder mv8365 :direct-bindee mv8366 :present "PRESENT" :raw-text
    "binds")
   (:var mv8365 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv8356
    :component mv8355)
   (:var mv8356 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv8355 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv8366 :isa bio-complex :quantifier mv8359 :raw-text "EGFR-EGF" :component mv8361
    :component mv8360)
   (:var mv8359 :isa another :word "another")
   (:var mv8361 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv8360 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv8372 :isa binding :binder mv8374 :direct-bindee mv8367 :present "PRESENT" :raw-text
    "binds")
   (:var mv8374 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv8369
    :component mv8369)
   (:var mv8369 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv8367 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv8375 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv8381 :isa binding :binder mv8377 :direct-bindee mv8378 :present "PRESENT" :raw-text
    "binds")
   (:var mv8377 :isa protein :predication mv8380 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv8380 :isa binding :direct-bindee mv8377 :binder mv8379 :raw-text "bound")
   (:var mv8379 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv8378 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv8385 :isa binding :binder mv8383 :direct-bindee mv8386 :present "PRESENT" :raw-text
    "binds")
   (:var mv8383 :isa protein :predication mv8384 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv8384 :isa binding :direct-bindee mv8383 :binder mv8382 :raw-text "bound")
   (:var mv8382 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv8386 :isa protein :predication mv8393 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv8393 :isa binding :direct-bindee mv8386 :that-rel t :bindee mv8392 :present "PRESENT"
    :negation mv8389 :raw-text "bound")
   (:var mv8392 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv8389 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv8398 :isa binding :binder mv8397 :direct-bindee mv8399 :present "PRESENT" :raw-text
    "binds")
   (:var mv8397 :isa protein :predication mv8396 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv8396 :isa binding :direct-bindee mv8397 :binder mv8395 :raw-text "bound")
   (:var mv8395 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv8399 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv8409 :isa binding :binder mv8403 :direct-bindee mv8410 :present "PRESENT" :raw-text
    "binds")
   (:var mv8403 :isa protein :predication mv8411 :predication mv8402 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv8411 :isa binding :direct-bindee mv8403 :that-rel t :bindee mv8400 :present "PRESENT"
    :negation mv8406 :raw-text "bound")
   (:var mv8400 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv8406 :isa not :word "not")
   (:var mv8402 :isa binding :direct-bindee mv8403 :binder mv8401 :raw-text "bound")
   (:var mv8401 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv8410 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv8413 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv8418 :isa affect :manner mv8415 :agent mv8417 :object mv8414 :present "PRESENT"
    :raw-text "affect")
   (:var mv8415 :isa how)
   (:var mv8417 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv8414 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv8427 :isa explicit-suggestion :suggestion mv8421 :marker let-as-directive)
   (:var mv8421 :isa highlight :theme mv8423 :present "PRESENT")
   (:var mv8423 :isa downstream-segment :pathwaycomponent mv8420 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv8420 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv8436 :isa explicit-suggestion :suggestion mv8430 :marker let-as-directive)
   (:var mv8430 :isa move-something-somewhere :goal mv8434 :theme mv8429 :present "PRESENT")
   (:var mv8434 :isa bottom :has-determiner "THE")
   (:var mv8429 :isa protein :predication mv8431 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8431 :isa phosphorylate :substrate mv8429 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv8445 :isa explicit-suggestion :suggestion mv8441 :marker let-as-directive)
   (:var mv8441 :isa put-something-somewhere :theme mv8438 :present "PRESENT")
   (:var mv8438 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv8453 :isa explicit-suggestion :suggestion mv8448 :marker let-as-directive)
   (:var mv8448 :isa show :at-relative-location mv8451 :|statement-OR-theme| mv8447 :present
    "PRESENT")
   (:var mv8451 :isa top-qua-location :has-determiner "THE")
   (:var mv8447 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv8464 :isa polar-question :statement mv8462)
   (:var mv8462 :isa decrease :agent mv8454 :object mv8458 :raw-text "decrease")
   (:var mv8454 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8458 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv8479 :isa polar-question :statement mv8476)
   (:var mv8476 :isa decrease :agent mv8465 :|affected-process-OR-object| mv8470 :raw-text
    "decrease")
   (:var mv8465 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8470 :isa bio-amount :measured-item mv8472 :has-determiner "THE" :raw-text "amount")
   (:var mv8472 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv8490 :isa polar-question :statement mv8488)
   (:var mv8488 :isa decrease :agent mv8482 :object mv8480 :raw-text "decrease")
   (:var mv8482 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv8480 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv8513 :isa polar-question :statement mv8512)
   (:var mv8512 :isa event-relation :subordinated-event mv8510 :event mv8507)
   (:var mv8510 :isa wh-question :statement mv8508 :wh if)
   (:var mv8508 :isa increase :|agent-OR-cause| mv8496 :|affected-process-OR-object| mv8500
    :raw-text "increase")
   (:var mv8496 :isa interlocutor :name "person-and-machine")
   (:var mv8500 :isa bio-amount :measured-item mv8491 :has-determiner "THE" :raw-text "amount")
   (:var mv8491 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8507 :isa vanish :agent mv8493 :raw-text "vanish")
   (:var mv8493 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv8538 :isa polar-question :statement mv8537)
   (:var mv8537 :isa event-relation :subordinated-event mv8535 :event mv8531)
   (:var mv8535 :isa wh-question :statement mv8532 :wh if)
   (:var mv8532 :isa increase :|agent-OR-cause| mv8519 :|multiplier-OR-cause| mv8530
    :|affected-process-OR-object| mv8523 :raw-text "increase")
   (:var mv8519 :isa interlocutor :name "person-and-machine")
   (:var mv8530 :isa measurement :number mv8527) (:var mv8527 :isa number :value 10)
   (:var mv8523 :isa bio-amount :measured-item mv8514 :has-determiner "THE" :raw-text "amount")
   (:var mv8514 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8531 :isa vanish :agent mv8516 :raw-text "vanish")
   (:var mv8516 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv8560 :isa polar-question :statement mv8559)
   (:var mv8559 :isa event-relation :subordinated-event mv8557 :event mv8554)
   (:var mv8557 :isa wh-question :statement mv8555 :wh if)
   (:var mv8555 :isa increase :|agent-OR-cause| mv8545 :|multiplier-OR-cause| mv8553 :object mv8540
    :raw-text "increase")
   (:var mv8545 :isa interlocutor :name "person-and-machine")
   (:var mv8553 :isa measurement :number mv8550) (:var mv8550 :isa number :value 10)
   (:var mv8540 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv8554 :isa vanish :agent mv8539 :raw-text "vanish")
   (:var mv8539 :isa protein :predication mv8542 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8542 :isa phosphorylate :substrate mv8539 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv8586 :isa polar-question :statement mv8585)
   (:var mv8585 :isa event-relation :subordinated-event mv8583 :event mv8579)
   (:var mv8583 :isa wh-question :statement mv8580 :wh if)
   (:var mv8580 :isa increase :|agent-OR-cause| mv8567 :|multiplier-OR-cause| mv8578
    :|affected-process-OR-object| mv8571 :raw-text "increase")
   (:var mv8567 :isa interlocutor :name "person-and-machine")
   (:var mv8578 :isa measurement :number mv8575) (:var mv8575 :isa number :value 10)
   (:var mv8571 :isa bio-amount :measured-item mv8562 :has-determiner "THE" :raw-text "amount")
   (:var mv8562 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv8579 :isa vanish :agent mv8561 :raw-text "vanish")
   (:var mv8561 :isa protein :predication mv8564 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8564 :isa phosphorylate :substrate mv8561 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv8598 :isa polar-question :statement mv8596)
   (:var mv8596 :isa increase :cause mv8590 :adverb mv8593 :raw-text "increase")
   (:var mv8590 :isa bio-amount :measured-item mv8587 :has-determiner "THE" :raw-text "amount")
   (:var mv8587 :isa protein :predication mv8592 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8592 :isa phosphorylate :substrate mv8587 :raw-text "phosphorylated")
   (:var mv8593 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?" (:var mv8608 :isa polar-question :statement mv8607)
   (:var mv8607 :isa copular-predication :item mv8599 :value mv8605 :predicate mv8601)
   (:var mv8599 :isa protein :predication mv8602 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv8602 :isa binding :direct-bindee mv8599 :bindee mv8600 :past "PAST" :raw-text "bound")
   (:var mv8600 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv8605 :isa high :adverb mv8604) (:var mv8604 :isa eventually :name "eventually")
   (:var mv8601 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv8617 :isa polar-question :statement mv8616)
   (:var mv8616 :isa copular-predication :item mv8609 :value mv8614 :predicate mv8611)
   (:var mv8609 :isa protein :predication mv8612 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8612 :isa binding :direct-bindee mv8609 :bindee mv8610 :past "PAST" :raw-text "bound")
   (:var mv8610 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv8614 :isa transient) (:var mv8611 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv8624 :isa polar-question :statement mv8623)
   (:var mv8623 :isa sustained :participant mv8619 :past "PAST")
   (:var mv8619 :isa protein :predication mv8621 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv8621 :isa binding :direct-bindee mv8619 :binder mv8618 :raw-text "bound")
   (:var mv8618 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv8631 :isa polar-question :statement mv8630)
   (:var mv8630 :isa copular-predication :item mv8625 :value mv8629 :predicate mv8626)
   (:var mv8625 :isa protein :predication mv8627 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8627 :isa phosphorylate :substrate mv8625 :raw-text "phosphorylated")
   (:var mv8629 :isa high :adverb mv8628) (:var mv8628 :isa always :name "always")
   (:var mv8626 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv8638 :isa polar-question :statement mv8637)
   (:var mv8637 :isa copular-predication :item mv8632 :value mv8636 :predicate mv8633)
   (:var mv8632 :isa protein :predication mv8634 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8634 :isa phosphorylate :substrate mv8632 :raw-text "phosphorylated")
   (:var mv8636 :isa high :adverb mv8635) (:var mv8635 :isa eventually :name "eventually")
   (:var mv8633 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv8645 :isa polar-question :statement mv8644)
   (:var mv8644 :isa copular-predication :item mv8639 :value mv8643 :predicate mv8640)
   (:var mv8639 :isa protein :predication mv8641 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8641 :isa phosphorylate :substrate mv8639 :raw-text "phosphorylated")
   (:var mv8643 :isa high :adverb mv8642) (:var mv8642 :isa ever :name "ever")
   (:var mv8640 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv8655 :isa polar-question :statement mv8654)
   (:var mv8654 :isa copular-predication :item mv8646 :value mv8649 :predicate mv8647)
   (:var mv8646 :isa protein :predication mv8648 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8648 :isa phosphorylate :substrate mv8646 :raw-text "phosphorylated")
   (:var mv8649 :isa high) (:var mv8647 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv8661 :isa polar-question :statement mv8660)
   (:var mv8660 :isa copular-predication :item mv8656 :value mv8659 :predicate mv8657)
   (:var mv8656 :isa protein :predication mv8658 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8658 :isa phosphorylate :substrate mv8656 :raw-text "phosphorylated")
   (:var mv8659 :isa high) (:var mv8657 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv8672 :isa polar-question :statement mv8666)
   (:var mv8666 :isa sustained :theme mv8662 :level mv8670 :past "PAST")
   (:var mv8662 :isa protein :predication mv8664 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8664 :isa phosphorylate :substrate mv8662 :raw-text "phosphorylated")
   (:var mv8670 :isa level :has-determiner "A" :predication mv8669 :raw-text "level")
   (:var mv8669 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv8678 :isa polar-question :statement mv8677)
   (:var mv8677 :isa sustained :participant mv8673 :past "PAST")
   (:var mv8673 :isa protein :predication mv8675 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8675 :isa phosphorylate :substrate mv8673 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv8684 :isa polar-question :statement mv8683)
   (:var mv8683 :isa copular-predication :item mv8679 :value mv8682 :predicate mv8680)
   (:var mv8679 :isa protein :predication mv8681 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8681 :isa phosphorylate :substrate mv8679 :raw-text "phosphorylated")
   (:var mv8682 :isa transient) (:var mv8680 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv8695 :isa polar-question :statement mv8694)
   (:var mv8694 :isa copular-predication :item mv8693 :value mv8691 :predicate mv8687)
   (:var mv8693 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv8686
    :component mv8685)
   (:var mv8686 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv8685 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv8691 :isa high :adverb mv8690) (:var mv8690 :isa ever :name "ever")
   (:var mv8687 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv8704 :isa polar-question :statement mv8701)
   (:var mv8701 :isa bio-form :agent mv8703 :past "PAST" :raw-text "formed")
   (:var mv8703 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv8697
    :component mv8696)
   (:var mv8697 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv8696 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv8727 :isa polar-question :statement mv8726)
   (:var mv8726 :isa event-relation :subordinated-event mv8722 :event mv8724)
   (:var mv8722 :isa wh-question :statement mv8716 :wh if)
   (:var mv8716 :isa increase :|agent-OR-cause| mv8714 :object mv8705 :present "PRESENT" :raw-text
    "increase")
   (:var mv8714 :isa interlocutor :name "person-and-machine")
   (:var mv8705 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8724 :isa copular-predication :item mv8708 :value mv8712 :predicate mv8706)
   (:var mv8708 :isa bio-amount :measured-item mv8710 :has-determiner "THE" :raw-text "amount")
   (:var mv8710 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv8712 :isa low :adverb mv8711) (:var mv8711 :isa always :name "always")
   (:var mv8706 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv8752 :isa polar-question :statement mv8751)
   (:var mv8751 :isa event-relation :subordinated-event mv8747 :event mv8749)
   (:var mv8747 :isa wh-question :statement mv8739 :wh if)
   (:var mv8739 :isa increase :|agent-OR-cause| mv8737 :|multiplier-OR-cause| mv8745 :object mv8728
    :present "PRESENT" :raw-text "increase")
   (:var mv8737 :isa interlocutor :name "person-and-machine")
   (:var mv8745 :isa measurement :number mv8742) (:var mv8742 :isa number :value 100)
   (:var mv8728 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8749 :isa copular-predication :item mv8731 :value mv8735 :predicate mv8729)
   (:var mv8731 :isa bio-amount :measured-item mv8733 :has-determiner "THE" :raw-text "amount")
   (:var mv8733 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv8735 :isa low :adverb mv8734) (:var mv8734 :isa always :name "always")
   (:var mv8729 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv8779 :isa polar-question :statement mv8778)
   (:var mv8778 :isa event-relation :subordinated-event mv8774 :event mv8776)
   (:var mv8774 :isa wh-question :statement mv8764 :wh if)
   (:var mv8764 :isa increase :|agent-OR-cause| mv8762 :|affected-process-OR-object| mv8766
    :present "PRESENT" :raw-text "increase")
   (:var mv8762 :isa interlocutor :name "person-and-machine")
   (:var mv8766 :isa bio-amount :measured-item mv8753 :has-determiner "THE" :raw-text "amount")
   (:var mv8753 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8776 :isa copular-predication :item mv8756 :value mv8760 :predicate mv8754)
   (:var mv8756 :isa bio-amount :measured-item mv8758 :has-determiner "THE" :raw-text "amount")
   (:var mv8758 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv8760 :isa high :adverb mv8759) (:var mv8759 :isa ever :name "ever")
   (:var mv8754 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv8808 :isa polar-question :statement mv8807)
   (:var mv8807 :isa event-relation :subordinated-event mv8803 :event mv8805)
   (:var mv8803 :isa wh-question :statement mv8791 :wh if)
   (:var mv8791 :isa increase :|agent-OR-cause| mv8789 :|multiplier-OR-cause| mv8800
    :|affected-process-OR-object| mv8793 :present "PRESENT" :raw-text "increase")
   (:var mv8789 :isa interlocutor :name "person-and-machine")
   (:var mv8800 :isa measurement :number mv8797) (:var mv8797 :isa number :value 100)
   (:var mv8793 :isa bio-amount :measured-item mv8780 :has-determiner "THE" :raw-text "amount")
   (:var mv8780 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv8805 :isa copular-predication :item mv8783 :value mv8787 :predicate mv8781)
   (:var mv8783 :isa bio-amount :measured-item mv8785 :has-determiner "THE" :raw-text "amount")
   (:var mv8785 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv8787 :isa high :adverb mv8786) (:var mv8786 :isa ever :name "ever")
   (:var mv8781 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv8818 :isa polar-question :statement mv8814)
   (:var mv8814 :isa phosphorylate :cause mv8812 :past "PAST" :raw-text "phosphorylated")
   (:var mv8812 :isa bio-amount :measured-item mv8809 :has-determiner "THE" :raw-text "amount")
   (:var mv8809 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv8829 :isa polar-question :statement mv8828)
   (:var mv8828 :isa copular-predication :item mv8822 :value mv8826 :predicate mv8820)
   (:var mv8822 :isa bio-amount :measured-item mv8819 :has-determiner "THE" :raw-text "amount")
   (:var mv8819 :isa protein :predication mv8824 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8824 :isa phosphorylate :substrate mv8819 :raw-text "phosphorylated")
   (:var mv8826 :isa high :adverb mv8825) (:var mv8825 :isa eventually :name "eventually")
   (:var mv8820 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv8840 :isa polar-question :statement mv8839)
   (:var mv8839 :isa copular-predication :item mv8833 :value mv8837 :predicate mv8831)
   (:var mv8833 :isa bio-amount :measured-item mv8830 :has-determiner "THE" :raw-text "amount")
   (:var mv8830 :isa protein :predication mv8835 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8835 :isa phosphorylate :substrate mv8830 :raw-text "phosphorylated")
   (:var mv8837 :isa high :adverb mv8836) (:var mv8836 :isa ever :name "ever")
   (:var mv8831 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv8851 :isa polar-question :statement mv8849)
   (:var mv8849 :isa increase :cause mv8844 :adverb mv8847 :raw-text "increasing")
   (:var mv8844 :isa bio-amount :measured-item mv8841 :has-determiner "THE" :raw-text "amount")
   (:var mv8841 :isa protein :predication mv8846 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8846 :isa phosphorylate :substrate mv8841 :raw-text "phosphorylated")
   (:var mv8847 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv8861 :isa polar-question :statement mv8860)
   (:var mv8860 :isa copular-predication :item mv8855 :value mv8858 :predicate mv8853)
   (:var mv8855 :isa bio-amount :measured-item mv8852 :has-determiner "THE" :raw-text "amount")
   (:var mv8852 :isa protein :predication mv8857 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8857 :isa phosphorylate :substrate mv8852 :raw-text "phosphorylated")
   (:var mv8858 :isa high) (:var mv8853 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv8872 :isa polar-question :statement mv8871)
   (:var mv8871 :isa copular-predication :item mv8865 :value mv8869 :predicate mv8863)
   (:var mv8865 :isa bio-amount :measured-item mv8862 :has-determiner "THE" :raw-text "amount")
   (:var mv8862 :isa protein :predication mv8867 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8867 :isa phosphorylate :substrate mv8862 :raw-text "phosphorylated")
   (:var mv8869 :isa high :adverb mv8868) (:var mv8868 :isa sometimes) (:var mv8863 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv8887 :isa polar-question :statement mv8880)
   (:var mv8880 :isa sustained :theme mv8876 :level mv8884 :past "PAST")
   (:var mv8876 :isa bio-amount :measured-item mv8873 :has-determiner "THE" :raw-text "amount")
   (:var mv8873 :isa protein :predication mv8878 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8878 :isa phosphorylate :substrate mv8873 :raw-text "phosphorylated")
   (:var mv8884 :isa level :has-determiner "A" :predication mv8883 :raw-text "level")
   (:var mv8883 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv8897 :isa polar-question :statement mv8895)
   (:var mv8895 :isa sustained :participant mv8891 :past "PAST")
   (:var mv8891 :isa bio-amount :measured-item mv8888 :has-determiner "THE" :raw-text "amount")
   (:var mv8888 :isa protein :predication mv8893 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8893 :isa phosphorylate :substrate mv8888 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv8907 :isa polar-question :statement mv8906)
   (:var mv8906 :isa copular-predication :item mv8901 :value mv8904 :predicate mv8899)
   (:var mv8901 :isa bio-amount :measured-item mv8898 :has-determiner "THE" :raw-text "amount")
   (:var mv8898 :isa protein :predication mv8903 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8903 :isa phosphorylate :substrate mv8898 :raw-text "phosphorylated")
   (:var mv8904 :isa transient) (:var mv8899 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv8918 :isa polar-question :statement mv8916)
   (:var mv8916 :isa copular-predication :item mv8911 :value mv8915 :predicate mv8914)
   (:var mv8911 :isa bio-amount :measured-item mv8908 :has-determiner "THE" :raw-text "amount")
   (:var mv8908 :isa protein :predication mv8913 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv8913 :isa phosphorylate :substrate mv8908 :raw-text "phosphorylated")
   (:var mv8915 :isa high) (:var mv8914 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv8941 :isa polar-question :statement mv8940)
   (:var mv8940 :isa event-relation :subordinated-event mv8937 :event mv8938)
   (:var mv8937 :isa wh-question :statement mv8927 :wh if)
   (:var mv8927 :isa increase :|agent-OR-cause| mv8925 :|affected-process-OR-object| mv8929
    :present "PRESENT" :raw-text "increase")
   (:var mv8925 :isa interlocutor :name "person-and-machine")
   (:var mv8929 :isa bio-amount :measured-item mv8920 :has-determiner "THE" :raw-text "amount")
   (:var mv8920 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv8938 :isa copular-predication :item mv8919 :value mv8923 :predicate mv8921)
   (:var mv8919 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv8923 :isa low :adverb mv8922) (:var mv8922 :isa eventually :name "eventually")
   (:var mv8921 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv8968 :isa polar-question :statement mv8967)
   (:var mv8967 :isa event-relation :subordinated-event mv8964 :event mv8965)
   (:var mv8964 :isa wh-question :statement mv8961 :wh if)
   (:var mv8961 :isa increase :|affected-process-OR-object| mv8950 :|multiplier-OR-cause| mv8959
    :raw-text "increased")
   (:var mv8950 :isa bio-amount :measured-item mv8943 :has-determiner "THE" :raw-text "amount")
   (:var mv8943 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv8959 :isa measurement :number mv8956) (:var mv8956 :isa number :value 100)
   (:var mv8965 :isa copular-predication :item mv8942 :value mv8947 :predicate mv8944)
   (:var mv8942 :isa protein :predication mv8945 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv8945 :isa active) (:var mv8947 :isa low :adverb mv8946)
   (:var mv8946 :isa eventually :name "eventually") (:var mv8944 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv8995 :isa polar-question :statement mv8994)
   (:var mv8994 :isa event-relation :subordinated-event mv8990 :event mv8992)
   (:var mv8990 :isa wh-question :statement mv8980 :wh if)
   (:var mv8980 :isa increase :|agent-OR-cause| mv8978 :|affected-process-OR-object| mv8982
    :present "PRESENT" :raw-text "increase")
   (:var mv8978 :isa interlocutor :name "person-and-machine")
   (:var mv8982 :isa bio-amount :measured-item mv8970 :has-determiner "THE" :raw-text "amount")
   (:var mv8970 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv8992 :isa copular-predication :item mv8973 :value mv8976 :predicate mv8971)
   (:var mv8973 :isa bio-amount :measured-item mv8969 :has-determiner "THE" :raw-text "amount")
   (:var mv8969 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv8976 :isa low :adverb mv8975) (:var mv8975 :isa eventually :name "eventually")
   (:var mv8971 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv9023 :isa polar-question :statement mv9022)
   (:var mv9022 :isa event-relation :subordinated-event mv9018 :event mv9020)
   (:var mv9018 :isa wh-question :statement mv9008 :wh if)
   (:var mv9008 :isa increase :|agent-OR-cause| mv9006 :|affected-process-OR-object| mv9010
    :present "PRESENT" :raw-text "increase")
   (:var mv9006 :isa interlocutor :name "person-and-machine")
   (:var mv9010 :isa bio-amount :measured-item mv8997 :has-determiner "THE" :raw-text "amount")
   (:var mv8997 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv9020 :isa copular-predication :item mv9000 :value mv9004 :predicate mv8998)
   (:var mv9000 :isa bio-amount :measured-item mv8996 :has-determiner "THE" :raw-text "amount")
   (:var mv8996 :isa protein :predication mv9002 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv9002 :isa active) (:var mv9004 :isa low :adverb mv9003)
   (:var mv9003 :isa always :name "always") (:var mv8998 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv9033 :isa explicit-suggestion :suggestion mv9027 :marker let-as-directive)
   (:var mv9027 :isa move-something-somewhere :at-relative-location mv9030 :theme mv9031 :present
    "PRESENT")
   (:var mv9030 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv9031 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv9025 mv9026))
   (:var mv9025 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9026 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv9036 :isa phosphorylate :agent mv9034 :substrate mv9035 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv9034 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv9035 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv9037 :isa move-something-somewhere :at-relative-location mv9040 :theme mv9042 :present
    "PRESENT")
   (:var mv9040 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv9042 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv9045 :isa phosphorylate :agent mv9043 :substrate mv9044 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv9043 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9044 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv9055 :isa explicit-suggestion :suggestion mv9048 :marker let-as-directive)
   (:var mv9048 :isa highlight :theme mv9050 :present "PRESENT")
   (:var mv9050 :isa upstream-segment :pathwaycomponent mv9047 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv9047 :isa protein :predication mv9053 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9053 :isa phosphorylate :substrate mv9047 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv9064 :isa explicit-suggestion :suggestion mv9058 :marker let-as-directive)
   (:var mv9058 :isa show :at-relative-location mv9062 :|statement-OR-theme| mv9057 :present
    "PRESENT")
   (:var mv9062 :isa top-qua-location :has-determiner "THE")
   (:var mv9057 :isa protein :predication mv9059 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9059 :isa phosphorylate :substrate mv9057 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv9077 :isa explicit-suggestion :suggestion mv9067 :marker let-as-directive)
   (:var mv9067 :isa show :at-relative-location mv9074 :|statement-OR-theme| mv9069 :present
    "PRESENT")
   (:var mv9074 :isa top-qua-location :has-determiner "THE")
   (:var mv9069 :isa downstream-segment :pathwaycomponent mv9066 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv9066 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv9086 :isa explicit-suggestion :suggestion mv9079 :marker let-as-directive)
   (:var mv9079 :isa move-something-somewhere :goal mv9084 :theme mv9081 :present "PRESENT")
   (:var mv9084 :isa top-qua-location :has-determiner "THE")
   (:var mv9081 :isa element :modifier mv9080)
   (:var mv9080 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv9091 :isa affect :manner mv9088 :agent mv9090 :object mv9087 :present "PRESENT"
    :raw-text "affect")
   (:var mv9088 :isa how)
   (:var mv9090 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9087 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv9095 :isa affect :manner mv9093 :agent mv9092 :object mv9096 :present "PRESENT"
    :raw-text "affect")
   (:var mv9093 :isa how)
   (:var mv9092 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv9096 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv9099 :isa be :subject mv9098 :predicate mv9101 :present "PRESENT")
   (:var mv9098 :isa what) (:var mv9101 :isa path :endpoints mv9105 :has-determiner "THE")
   (:var mv9105 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv9103 mv9097))
   (:var mv9103 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9097 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv9110 :isa affect :manner mv9108 :agent mv9107 :object mv9111 :present "PRESENT"
    :raw-text "affect")
   (:var mv9108 :isa how)
   (:var mv9107 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv9111 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv9116 :isa affect :manner mv9114 :agent mv9112 :object mv9113 :present "PRESENT"
    :raw-text "affect")
   (:var mv9114 :isa how)
   (:var mv9112 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv9113 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv9121 :isa affect :manner mv9118 :agent mv9120 :object mv9117 :present "PRESENT"
    :raw-text "affect")
   (:var mv9118 :isa how)
   (:var mv9120 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv9117 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv9125 :isa affect :manner mv9122 :agent mv9124 :object mv9126 :present "PRESENT"
    :raw-text "affect")
   (:var mv9122 :isa how)
   (:var mv9124 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv9126 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv9129 :isa gene :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv9134 :isa affect :agent mv9133 :object mv9135 :present "PRESENT" :raw-text "affect")
   (:var mv9133 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv9135 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv9138 :isa bio-activate :agent mv9137 :object mv9139 :present "PRESENT" :raw-text
    "activate")
   (:var mv9137 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv9139 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv9148 :isa explicit-suggestion :suggestion mv9143 :marker let-as-directive)
   (:var mv9143 :isa learning :statement mv9141 :present "PRESENT")
   (:var mv9141 :isa protein :context mv9142 :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9142 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is its relationship with BRAF?"
   (:var mv9150 :isa be :subject mv9149 :predicate mv9152 :present "PRESENT")
   (:var mv9149 :isa what) (:var mv9152 :isa relationship :patient mv9154 :modifier mv9151)
   (:var mv9154 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9151 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv9158 :isa be :subject mv9157 :predicate mv9160 :present "PRESENT")
   (:var mv9157 :isa what) (:var mv9160 :isa relationship :patient mv9156 :modifier mv9159)
   (:var mv9156 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv9159 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv9165 :isa phosphorylate :agent mv9163 :substrate mv9164 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv9163 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9164 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv9167 :isa what))
  ("Let's stop learning about AKT1." (:var mv9175 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv9184 :isa be :subject mv9183 :predicate mv9187 :present "PRESENT")
   (:var mv9183 :isa what)
   (:var mv9187 :isa response :beneficiary mv9189 :has-determiner "THE" :modifier mv9186 :raw-text
    "response")
   (:var mv9189 :isa cell-type :mutation mv9191)
   (:var mv9191 :isa alter :|agent-OR-object| mv9182 :raw-text "alterations")
   (:var mv9182 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv9186 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv9196 :isa be :subject mv9195 :predicate mv9199 :present "PRESENT")
   (:var mv9195 :isa what)
   (:var mv9199 :isa response :cell-type mv9201 :has-determiner "THE" :modifier mv9198 :raw-text
    "response")
   (:var mv9201 :isa cell-type :mutation mv9203)
   (:var mv9203 :isa alter :|agent-OR-object| mv9194 :raw-text "alterations")
   (:var mv9194 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv9198 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv9207 :isa be :subject mv9206 :predicate mv9210 :present "PRESENT")
   (:var mv9206 :isa what)
   (:var mv9210 :isa frequency :measured-item mv9212 :has-determiner "THE" :measured-item mv9209
    :raw-text "frequency")
   (:var mv9212 :isa protein :context mv9214 :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv9214 :isa glioblastoma) (:var mv9209 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv9220 :isa be :subject mv9219 :predicate mv9223 :present "PRESENT")
   (:var mv9219 :isa what)
   (:var mv9223 :isa frequency :measured-item mv9217 :has-determiner "THE" :measured-item mv9222
    :raw-text "frequency")
   (:var mv9217 :isa protein :context mv9218 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv9218 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv9222 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv9229 :isa show :|statement-OR-theme| mv9232 :beneficiary mv9230 :present "PRESENT")
   (:var mv9232 :isa mutation :object mv9238 :has-determiner "THE" :raw-text "mutations")
   (:var mv9238 :isa collection :context mv9228 :raw-text "PTEN and BRAF" :type protein :number 2
    :items (mv9234 mv9236))
   (:var mv9228 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv9234 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv9236 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9230 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv9242 :isa show :|statement-OR-theme| mv9245 :beneficiary mv9243 :present "PRESENT")
   (:var mv9245 :isa mutation :object mv9247 :has-determiner "THE" :raw-text "mutations")
   (:var mv9247 :isa protein :context mv9241 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv9241 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv9243 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv9253 :isa be :subject mv9252 :predicate mv9255 :present "PRESENT")
   (:var mv9252 :isa what)
   (:var mv9255 :isa mutation :object mv9257 :has-determiner "THE" :raw-text "mutations")
   (:var mv9257 :isa protein :context mv9251 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv9251 :isa cancer :name "ovarian cancer" :uid "TS-1223"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv9263 :isa be :subject mv9262 :predicate mv9275 :present "PRESENT")
   (:var mv9262 :isa what) (:var mv9275 :isa quality-predicate :item mv9273 :attribute mv9269)
   (:var mv9273 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv9261 mv9272))
   (:var mv9261 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9272 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9269 :isa location-of :has-determiner "THE" :predication mv9267 :modifier mv9268)
   (:var mv9267 :isa likely :comparative mv9265)
   (:var mv9265 :isa superlative-quantifier :name "most")
   (:var mv9268 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv9288 :isa polar-question :statement mv9285)
   (:var mv9285 :isa there-exists :value mv9281 :predicate mv9278)
   (:var mv9281 :isa upstream-segment :pathwaycomponent mv9286 :predication mv9280 :raw-text
    "upstreams")
   (:var mv9286 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv9276 mv9284))
   (:var mv9276 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9284 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9280 :isa common) (:var mv9278 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv9292 :isa be :subject mv9291 :predicate mv9295 :present "PRESENT")
   (:var mv9291 :isa what)
   (:var mv9295 :isa upstream-segment :pathwaycomponent mv9299 :has-determiner "THE" :predication
    mv9294 :raw-text "upstreams")
   (:var mv9299 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv9289 mv9297 mv9290))
   (:var mv9289 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv9297 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9290 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv9294 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv9311 :isa copular-predication :item mv9305 :value mv9301 :predicate mv9306)
   (:var mv9305 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv9301 :isa mutual-exclusivity :disease mv9303 :alternative mv9302)
   (:var mv9303 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv9302 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv9306 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv9316 :isa be :subject mv9315 :predicate mv9323 :present "PRESENT")
   (:var mv9315 :isa what)
   (:var mv9323 :isa gene :disease mv9314 :has-determiner "THE" :predication mv9312 :raw-text
    "genes")
   (:var mv9314 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv9312 :isa mutual-exclusivity :alternative mv9313)
   (:var mv9313 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv9327 :isa be :subject mv9326 :predicate mv9330 :present "PRESENT")
   (:var mv9326 :isa what)
   (:var mv9330 :isa significance :result mv9325 :agent mv9324 :has-determiner "THE" :modifier
    mv9329)
   (:var mv9325 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv9324 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv9329 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv9338 :isa be :subject mv9337 :predicate mv9341 :present "PRESENT")
   (:var mv9337 :isa what)
   (:var mv9341 :isa significance :agent mv9335 :has-determiner "THE" :modifier mv9340)
   (:var mv9335 :isa protein :context mv9336 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv9336 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv9340 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv9347 :isa be :subject mv9346 :predicate mv9350 :present "PRESENT")
   (:var mv9346 :isa what)
   (:var mv9350 :isa significance :agent mv9352 :has-determiner "THE" :modifier mv9349)
   (:var mv9352 :isa protein :context mv9355 :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv9355 :isa cancer :organ mv9354 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv9354 :isa pancreas) (:var mv9349 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv9359 :isa be :subject mv9358 :predicate mv9362 :present "PRESENT")
   (:var mv9358 :isa what)
   (:var mv9362 :isa significance :agent mv9364 :has-determiner "THE" :modifier mv9361)
   (:var mv9364 :isa protein :context mv9367 :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9367 :isa cancer :modifier mv9366 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv9366 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv9361 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv9371 :isa phosphorylate :agent mv9370 :substrate mv9372 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv9370 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv9372 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv9374 :isa binding :binder mv9373 :direct-bindee mv9375 :present "PRESENT" :raw-text
    "binds")
   (:var mv9373 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv9375 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv9381 :isa binding :binder mv9377 :direct-bindee mv9376 :present "PRESENT" :raw-text
    "binds")
   (:var mv9377 :isa protein :predication mv9378 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv9378 :isa binding :direct-bindee mv9377 :bindee mv9380 :past "PAST" :raw-text "bound")
   (:var mv9380 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv9376 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv9387 :isa copular-predication :item mv9384 :value mv9386 :predicate mv9385)
   (:var mv9384 :isa protein-family :predication mv9383 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv9383 :isa phosphorylate :substrate mv9384 :raw-text "Phosphorylated")
   (:var mv9386 :isa active) (:var mv9385 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv9388 :isa protein :predication mv9390 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv9390 :isa phosphorylate :substrate mv9388 :target mv9389 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv9389 :isa protein :site mv9395 :modifier mv9396 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv9395 :isa residue-on-protein :raw-text "S220" :position mv9394 :amino-acid mv9393)
   (:var mv9394 :isa number :value 220) (:var mv9393 :isa amino-acid :name "serine" :letter "S")
   (:var mv9396 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv9401 :isa transcribe :agent mv9398 :object mv9399 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv9398 :isa protein :predication mv9400 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv9400 :isa active)
   (:var mv9399 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv9430 :isa polar-question :statement mv9429)
   (:var mv9429 :isa event-relation :subordinated-event mv9425 :event mv9427)
   (:var mv9425 :isa wh-question :statement mv9413 :wh if)
   (:var mv9413 :isa increase :|agent-OR-cause| mv9411 :|multiplier-OR-cause| mv9422
    :|affected-process-OR-object| mv9415 :present "PRESENT" :raw-text "increase")
   (:var mv9411 :isa interlocutor :name "person-and-machine")
   (:var mv9422 :isa measurement :number mv9419) (:var mv9419 :isa number :value 10)
   (:var mv9415 :isa bio-amount :measured-item mv9402 :has-determiner "THE" :raw-text "amount")
   (:var mv9402 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9427 :isa copular-predication :item mv9405 :value mv9409 :predicate mv9403)
   (:var mv9405 :isa bio-amount :measured-item mv9407 :has-determiner "THE" :raw-text "amount")
   (:var mv9407 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv9409 :isa high :adverb mv9408) (:var mv9408 :isa ever :name "ever")
   (:var mv9403 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv9442 :isa polar-question :statement mv9440)
   (:var mv9440 :isa decrease :agent mv9432 :object mv9436 :raw-text "decrease")
   (:var mv9432 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv9436 :isa protein-family :predication mv9435 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv9435 :isa phosphorylate :substrate mv9436 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv9453 :isa polar-question :statement mv9451)
   (:var mv9451 :isa decrease :agent mv9444 :object mv9447 :raw-text "decrease")
   (:var mv9444 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv9447 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv9458 :isa regulate :manner mv9455 :agent mv9457 :object mv9454 :present "PRESENT"
    :raw-text "regulate")
   (:var mv9455 :isa how)
   (:var mv9457 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv9454 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv9463 :isa bio-activate :manner mv9460 :agent mv9462 :object mv9459 :present "PRESENT"
    :raw-text "activate")
   (:var mv9460 :isa how)
   (:var mv9462 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv9459 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv9469 :isa polar-question :statement mv9468)
   (:var mv9468 :isa inhibit :agent mv9465 :object mv9467 :raw-text "inhibit")
   (:var mv9465 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv9467 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv9480 :isa share :object mv9470 :participant mv9479 :present "PRESENT" :raw-text
    "shared")
   (:var mv9470 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv9479 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv9476 mv9477 mv9471))
   (:var mv9476 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9477 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv9471 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv9483 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv9492 :isa be :subject mv9491 :predicate mv9493 :present "PRESENT")
   (:var mv9491 :isa what)
   (:var mv9493 :isa upstream-segment :pathwaycomponent mv9490 :raw-text "upstream")
   (:var mv9490 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv9501 :isa want :agent mv9498 :theme mv9509 :present "PRESENT")
   (:var mv9498 :isa interlocutor :name "speaker")
   (:var mv9509 :isa bio-find :agent mv9498 :object mv9506 :present "PRESENT" :raw-text "find")
   (:var mv9506 :isa treatment :disease mv9497 :has-determiner "A" :raw-text "treatment")
   (:var mv9497 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv9518 :isa bio-use :object mv9511 :modal mv9512 :agent mv9513 :present "PRESENT"
    :raw-text "use")
   (:var mv9511 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv9512 :isa could)
   (:var mv9513 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv9528 :isa polar-question :statement mv9526)
   (:var mv9526 :isa there-exists :value mv9523 :predicate mv9520)
   (:var mv9523 :isa drug :target mv9525 :quantifier mv9522 :raw-text "drugs")
   (:var mv9525 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9522 :isa any :word "any") (:var mv9520 :isa syntactic-there))
  ("Are they kinases?" (:var mv9532 :isa polar-question :statement mv9529)
   (:var mv9529 :isa be :subject mv9530 :predicate mv9531)
   (:var mv9530 :isa pronoun/plural :word "they") (:var mv9531 :isa kinase :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv9542 :isa polar-question :statement mv9536)
   (:var mv9536 :isa bio-find :agent mv9534 :object mv9538 :modal "CAN" :raw-text "find")
   (:var mv9534 :isa interlocutor :name "hearer")
   (:var mv9538 :isa drug :target mv9540 :has-determiner "A" :raw-text "drug")
   (:var mv9540 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv9560 :isa polar-question :statement mv9547)
   (:var mv9547 :isa tell :agent mv9546 :theme mv9543 :beneficiary mv9548 :modal "CAN")
   (:var mv9546 :isa interlocutor :name "hearer")
   (:var mv9543 :isa transcription-factor :predication mv9558 :quantifier mv9549 :has-determiner
    "THE" :raw-text "transcription factors")
   (:var mv9558 :isa share :object mv9543 :that-rel t :participant mv9557 :modal "CAN" :raw-text
    "shared")
   (:var mv9557 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9544 mv9556))
   (:var mv9544 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9556 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9549 :isa all :word "all") (:var mv9548 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv9576 :isa polar-question :statement mv9565)
   (:var mv9565 :isa tell :agent mv9564 :theme mv9574 :theme mv9566 :modal "CAN")
   (:var mv9564 :isa interlocutor :name "hearer")
   (:var mv9574 :isa share :object mv9561 :participant mv9573 :modal "CAN" :raw-text "shared")
   (:var mv9561 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factors")
   (:var mv9573 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9562 mv9572))
   (:var mv9562 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9572 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9566 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv9587 :isa polar-question :statement mv9586)
   (:var mv9586 :isa know :agent mv9578 :statement mv9581)
   (:var mv9578 :isa interlocutor :name "hearer")
   (:var mv9581 :isa drug :target mv9583 :quantifier mv9580 :raw-text "drugs")
   (:var mv9583 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9580 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv9599 :isa polar-question :statement mv9597)
   (:var mv9597 :isa regulate :agent mv9588 :object mv9593 :raw-text "regulate")
   (:var mv9588 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9593 :isa gene :organ mv9596 :has-determiner "THE" :expresses mv9592 :raw-text "gene")
   (:var mv9596 :isa lung :has-determiner "THE")
   (:var mv9592 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv9610 :isa polar-question :statement mv9608)
   (:var mv9608 :isa regulate :agent mv9600 :object mv9605 :raw-text "regulate")
   (:var mv9600 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9605 :isa gene :organ mv9607 :has-determiner "THE" :expresses mv9601 :raw-text "gene")
   (:var mv9607 :isa liver)
   (:var mv9601 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv9618 :isa polar-question :statement mv9617)
   (:var mv9617 :isa regulate :agent mv9611 :object mv9616 :raw-text "regulate")
   (:var mv9611 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9616 :isa gene :has-determiner "THE" :expresses mv9612 :raw-text "gene")
   (:var mv9612 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv9630 :isa polar-question :statement mv9628)
   (:var mv9628 :isa regulate :agent mv9619 :object mv9624 :raw-text "regulate")
   (:var mv9619 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9624 :isa gene :organ mv9627 :has-determiner "THE" :expresses mv9623 :raw-text "gene")
   (:var mv9627 :isa lung :has-determiner "THE")
   (:var mv9623 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv9637 :isa polar-question :statement mv9636)
   (:var mv9636 :isa target :agent mv9631 :object mv9632 :raw-text "target")
   (:var mv9631 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv9632 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv9644 :isa polar-question :statement mv9643)
   (:var mv9643 :isa target :agent mv9638 :object mv9639 :raw-text "target")
   (:var mv9638 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv9639 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv9651 :isa polar-question :statement mv9650)
   (:var mv9650 :isa target :agent mv9645 :object mv9646 :raw-text "target")
   (:var mv9645 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid "MIMAT0001413")
   (:var mv9646 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv9658 :isa polar-question :statement mv9657)
   (:var mv9657 :isa target :agent mv9652 :object mv9653 :raw-text "target")
   (:var mv9652 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv9653 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv9667 :isa polar-question :statement mv9665)
   (:var mv9665 :isa regulate :agent mv9659 :object mv9664 :raw-text "regulate")
   (:var mv9659 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9664 :isa bio-entity :organ mv9663 :name "cfors") (:var mv9663 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv9676 :isa polar-question :statement mv9674)
   (:var mv9674 :isa regulate :agent mv9668 :object mv9671 :raw-text "regulate")
   (:var mv9668 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9671 :isa protein :organ mv9673 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv9673 :isa liver))
  ("Does it regulate cfos in brain" (:var mv9685 :isa polar-question :statement mv9683)
   (:var mv9683 :isa regulate :|agent-OR-cause| mv9678 :object mv9680 :raw-text "regulate")
   (:var mv9678 :isa pronoun/inanimate :word "it")
   (:var mv9680 :isa protein :organ mv9682 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv9682 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv9691 :isa polar-question :statement mv9690)
   (:var mv9690 :isa regulate :agent mv9686 :object mv9689 :raw-text "regulate")
   (:var mv9686 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9689 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv9703 :isa polar-question :statement mv9701)
   (:var mv9701 :isa regulate :agent mv9692 :object mv9697 :raw-text "regulate")
   (:var mv9692 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9697 :isa gene :cell-type mv9700 :has-determiner "THE" :expresses mv9696 :raw-text
    "gene")
   (:var mv9700 :isa cell-type :non-cellular-location mv9699)
   (:var mv9699 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv9696 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv9711 :isa polar-question :statement mv9710)
   (:var mv9710 :isa utilize :participant mv9708 :object mv9705 :raw-text "utilize")
   (:var mv9708 :isa pathway :has-determiner "THE" :modifier mv9704 :raw-text "pathway")
   (:var mv9704 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv9705 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv9721 :isa polar-question :statement mv9720)
   (:var mv9720 :isa utilize :participant mv9718 :object mv9712 :raw-text "utilize")
   (:var mv9718 :isa pathway :has-determiner "THE" :modifier mv9715 :raw-text "pathway")
   (:var mv9715 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv9712 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv9723 :isa give :theme mv9730 :beneficiary mv9724 :present "PRESENT")
   (:var mv9730 :isa evidence :statement mv9729 :has-determiner "THE")
   (:var mv9729 :isa decrease :agent mv9728 :object mv9722 :present "PRESENT" :raw-text
    "decreases")
   (:var mv9728 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv9722 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv9724 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv9732 :isa give :theme mv9739 :beneficiary mv9733 :present "PRESENT")
   (:var mv9739 :isa evidence :statement mv9738 :has-determiner "THE")
   (:var mv9738 :isa regulate :agent mv9737 :object mv9731 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9737 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv9731 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv9733 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv9744 :isa polar-question :statement mv9740)
   (:var mv9740 :isa be :subject mv9741 :predicate mv9743)
   (:var mv9741 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv9743 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv9751 :isa polar-question :statement mv9747)
   (:var mv9747 :isa inhibit :object mv9745 :agent mv9749 :past "PAST" :raw-text "inhibited")
   (:var mv9745 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv9749 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv9760 :isa polar-question :statement mv9755)
   (:var mv9755 :isa be :subject mv9752 :predicate mv9753)
   (:var mv9752 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9753 :isa transcription-factor :controlled-gene mv9758 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv9758 :isa gene :expresses mv9754 :raw-text "gene")
   (:var mv9754 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv9775 :isa polar-question :statement mv9763)
   (:var mv9763 :isa be :subject mv9761 :predicate mv9769)
   (:var mv9761 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9769 :isa regulator :quantifier mv9766 :theme mv9772 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv9766 :isa number :value 1)
   (:var mv9772 :isa gene :has-determiner "THE" :expresses mv9762 :raw-text "gene")
   (:var mv9762 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv9783 :isa polar-question :statement mv9777)
   (:var mv9777 :isa be :subject mv9778 :predicate mv9780)
   (:var mv9778 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv9780 :isa inhibitor :protein mv9776 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv9776 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv9791 :isa polar-question :statement mv9784)
   (:var mv9784 :isa be :subject mv9785 :predicate mv9787)
   (:var mv9785 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv9787 :isa inhibitor :|target-OR-protein| mv9789 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv9789 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv9796 :isa polar-question :statement mv9792)
   (:var mv9792 :isa be :subject mv9795 :predicate mv9794)
   (:var mv9795 :isa bio-entity :name "fakeprotein")
   (:var mv9794 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv9801 :isa polar-question :statement mv9798)
   (:var mv9798 :isa be :subject mv9797 :predicate mv9800)
   (:var mv9797 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv9800 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv9808 :isa polar-question :statement mv9803)
   (:var mv9803 :isa be :subject mv9802 :predicate mv9807)
   (:var mv9802 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9807 :isa regulator :has-determiner "AN" :cellular-process mv9805 :raw-text "regulator")
   (:var mv9805 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv9818 :isa polar-question :statement mv9811)
   (:var mv9811 :isa involve :object mv9809 :|context-OR-theme| mv9816 :past "PAST")
   (:var mv9809 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9816 :isa pathway :quantifier mv9813 :cellular-process mv9814 :raw-text "pathways")
   (:var mv9813 :isa any :word "any") (:var mv9814 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?" (:var mv9827 :isa polar-question :statement mv9821)
   (:var mv9821 :isa involve :object mv9819 :theme mv9825 :past "PAST")
   (:var mv9819 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9825 :isa regulate :cellular-process mv9823 :raw-text "regulation")
   (:var mv9823 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?" (:var mv9835 :isa polar-question :statement mv9830)
   (:var mv9830 :isa involve :object mv9828 :theme mv9832 :past "PAST")
   (:var mv9828 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9832 :isa regulate :affected-process mv9833 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv9833 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv9840 :isa phosphorylate :substrate mv9837 :agent mv9839 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv9837 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv9839 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv9850 :isa polar-question :statement mv9841)
   (:var mv9841 :isa be :subject mv9849 :predicate mv9848)
   (:var mv9849 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv9846 :word "one")
   (:var mv9846 :isa number :value 1)
   (:var mv9848 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv9861 :isa polar-question :statement mv9860)
   (:var mv9860 :isa there-exists :value mv9855 :predicate mv9852)
   (:var mv9855 :isa drug :predication mv9858 :has-determiner "A" :raw-text "drug")
   (:var mv9858 :isa target :agent mv9855 :that-rel t :object mv9859 :present "PRESENT" :raw-text
    "targets")
   (:var mv9859 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv9852 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv9874 :isa polar-question :statement mv9872)
   (:var mv9872 :isa there-exists :value mv9869 :predicate mv9864)
   (:var mv9869 :isa pathway :predication mv9870 :has-determiner "AN" :cellular-process mv9867
    :raw-text "pathway")
   (:var mv9870 :isa regulate :affected-process mv9869 :agent mv9862 :past "PAST" :raw-text
    "regulated")
   (:var mv9862 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9867 :isa apoptosis :raw-text "apoptotic") (:var mv9864 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv9890 :isa polar-question :statement mv9887)
   (:var mv9887 :isa there-exists :value mv9882 :predicate mv9877)
   (:var mv9882 :isa pathway :predication mv9888 :has-determiner "AN" :cellular-process mv9880
    :raw-text "pathway")
   (:var mv9888 :isa regulate :affected-process mv9882 :that-rel t :agent mv9875 :present "PRESENT"
    :raw-text "regulated")
   (:var mv9875 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9880 :isa apoptosis :raw-text "apoptotic") (:var mv9877 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv9892 :isa let :complement mv9906 :present "PRESENT")
   (:var mv9906 :isa know :agent mv9893 :statement mv9905 :present "PRESENT")
   (:var mv9893 :isa interlocutor :name "speaker")
   (:var mv9905 :isa wh-question :statement mv9904 :wh if)
   (:var mv9904 :isa there-exists :value mv9902 :predicate mv9898)
   (:var mv9902 :isa gene :predication mv9903 :quantifier mv9899 :cellular-process mv9900 :raw-text
    "genes")
   (:var mv9903 :isa regulate :object mv9902 :agent mv9891 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9891 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9899 :isa any :word "any") (:var mv9900 :isa apoptosis :raw-text "apoptotic")
   (:var mv9898 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv9908 :isa let :complement mv9914 :present "PRESENT")
   (:var mv9914 :isa know :agent mv9909 :statement mv9912 :present "PRESENT")
   (:var mv9909 :isa interlocutor :name "speaker")
   (:var mv9912 :isa gene :predication mv9913 :has-determiner "WHICH" :raw-text "genes")
   (:var mv9913 :isa regulate :object mv9912 :agent mv9907 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9907 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv9916 :isa list :theme mv9919 :present "PRESENT")
   (:var mv9919 :isa gene :predication mv9920 :quantifier mv9917 :has-determiner "THE" :raw-text
    "genes")
   (:var mv9920 :isa regulate :object mv9919 :agent mv9924 :past "PAST" :raw-text "regulated")
   (:var mv9924 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9915 mv9923))
   (:var mv9915 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9923 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9917 :isa all :word "all"))
  ("List genes regulated by elk1 and srf" (:var mv9927 :isa list :theme mv9928 :present "PRESENT")
   (:var mv9928 :isa gene :predication mv9929 :raw-text "genes")
   (:var mv9929 :isa regulate :object mv9928 :agent mv9933 :past "PAST" :raw-text "regulated")
   (:var mv9933 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9926 mv9932))
   (:var mv9926 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9932 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv9936 :isa list :theme mv9938 :present "PRESENT")
   (:var mv9938 :isa gene :predication mv9946 :quantifier mv9937 :raw-text "genes")
   (:var mv9946 :isa regulate :object mv9938 :that-rel t :agent mv9945 :present "PRESENT" :raw-text
    "regulated")
   (:var mv9945 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9935 mv9944))
   (:var mv9935 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9944 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv9937 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv9949 :isa list :theme mv9955 :present "PRESENT")
   (:var mv9955 :isa evidence :statement mv9954 :has-determiner "THE")
   (:var mv9954 :isa decrease :agent mv9953 :object mv9948 :present "PRESENT" :raw-text
    "decreases")
   (:var mv9953 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv9948 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv9957 :isa name-something :patient mv9960 :present "PRESENT")
   (:var mv9960 :isa gene :predication mv9961 :raw-text "genes")
   (:var mv9961 :isa regulate :object mv9960 :agent mv9965 :past "PAST" :raw-text "regulated")
   (:var mv9965 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv9956 mv9964))
   (:var mv9956 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv9964 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv9982 :isa copular-predication :item mv9972 :value mv9977 :predicate mv9976)
   (:var mv9972 :isa gene :has-determiner "WHICH" :predication mv9973 :has-determiner "THE"
    :cellular-process mv9970 :raw-text "genes")
   (:var mv9973 :isa regulate :object mv9972 :agent mv9967 :past "PAST" :raw-text "regulated")
   (:var mv9967 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9970 :isa apoptosis :raw-text "apoptotic") (:var mv9977 :isa active :organ mv9980)
   (:var mv9980 :isa liver :has-determiner "THE") (:var mv9976 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv10000 :isa copular-predication :item mv9991 :value mv9995 :predicate mv9994)
   (:var mv9991 :isa gene :has-determiner "WHICH" :predication mv9992 :has-determiner "THE"
    :cellular-process mv9989 :raw-text "genes")
   (:var mv9992 :isa regulate :object mv9991 :agent mv9986 :present "PRESENT" :raw-text
    "regulates")
   (:var mv9986 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv9989 :isa apoptosis :raw-text "apoptotic") (:var mv9995 :isa active :organ mv9998)
   (:var mv9998 :isa liver :has-determiner "THE") (:var mv9994 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv10015 :isa copular-predication :item mv10006 :value mv10013 :predicate mv10012)
   (:var mv10006 :isa gene :has-determiner "WHICH" :predication mv10007 :has-determiner "THE"
    :raw-text "genes")
   (:var mv10007 :isa regulate :object mv10006 :agent mv10003 :organ mv10010 :present "PRESENT"
    :raw-text "regulates")
   (:var mv10003 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10010 :isa liver :has-determiner "THE")
   (:var mv10013 :isa apoptosis :raw-text "apoptotic") (:var mv10012 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv10029 :isa copular-predication :item mv10023 :value mv10027 :predicate mv10026)
   (:var mv10023 :isa gene :has-determiner "WHICH" :predication mv10024 :has-determiner "THE"
    :non-cellular-location mv10022 :raw-text "genes")
   (:var mv10024 :isa regulate :object mv10023 :agent mv10019 :present "PRESENT" :raw-text
    "regulates")
   (:var mv10019 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10022 :isa liver) (:var mv10027 :isa apoptosis :raw-text "apoptotic")
   (:var mv10026 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv10042 :isa copular-predication :item mv10036 :value mv10040 :predicate mv10039)
   (:var mv10036 :isa gene :has-determiner "WHICH" :predication mv10037 :has-determiner "THE"
    :non-cellular-location mv10035 :raw-text "genes")
   (:var mv10037 :isa regulate :object mv10036 :agent mv10032 :present "PRESENT" :raw-text
    "regulates")
   (:var mv10032 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10035 :isa liver) (:var mv10040 :isa apoptosis :raw-text "apoptotic")
   (:var mv10039 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv10047 :isa bio-find :object mv10048 :present "PRESENT" :adverb mv10045 :raw-text "find")
   (:var mv10048 :isa pathway :predication mv10049 :raw-text "pathways")
   (:var mv10049 :isa involve :theme mv10048 :object mv10050 :progressive "PROGRESSIVE")
   (:var mv10050 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10045 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv10052 :isa show :|statement-OR-theme| mv10055 :beneficiary mv10053 :present "PRESENT"
    :adverb mv10051)
   (:var mv10055 :isa pathway :predication mv10056 :modifier mv10054 :raw-text "pathways")
   (:var mv10056 :isa involve :theme mv10055 :object mv10057 :progressive "PROGRESSIVE")
   (:var mv10057 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10054 :isa database :name "KEGG" :uid "KEGG")
   (:var mv10053 :isa interlocutor :name "speaker") (:var mv10051 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv10059 :isa show :|statement-OR-theme| mv10061 :beneficiary mv10060 :present "PRESENT"
    :adverb mv10058)
   (:var mv10061 :isa pathway :predication mv10062 :raw-text "pathways")
   (:var mv10062 :isa involve :theme mv10061 :object mv10063 :progressive "PROGRESSIVE")
   (:var mv10063 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10060 :isa interlocutor :name "speaker") (:var mv10058 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv10065 :isa bio-activate :agent mv10064 :object mv10066 :present "PRESENT" :raw-text
    "activates")
   (:var mv10064 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv10066 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv10067 :isa remove :object mv10074 :present "PRESENT" :raw-text "Remove")
   (:var mv10074 :isa fact :statement mv10072 :has-determiner "THE")
   (:var mv10072 :isa bio-activate :agent mv10071 :object mv10073 :present "PRESENT" :raw-text
    "activates")
   (:var mv10071 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv10073 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv10077 :isa bio-activate :agent mv10076 :object mv10078 :present "PRESENT" :raw-text
    "activates")
   (:var mv10076 :isa protein-family :predication mv10075 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv10075 :isa inactive)
   (:var mv10078 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv10079 :isa remove :object mv10087 :present "PRESENT" :raw-text "Remove")
   (:var mv10087 :isa fact :statement mv10085 :has-determiner "THE")
   (:var mv10085 :isa bio-activate :agent mv10084 :object mv10086 :present "PRESENT" :raw-text
    "activates")
   (:var mv10084 :isa protein-family :predication mv10083 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv10083 :isa inactive)
   (:var mv10086 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv10089 :isa show :|statement-OR-theme| mv10090 :present "PRESENT")
   (:var mv10090 :isa pathway :non-cellular-location mv10088 :raw-text "pathways")
   (:var mv10088 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv10091 :isa show :|statement-OR-theme| mv10093 :beneficiary mv10092 :present "PRESENT")
   (:var mv10093 :isa pathway :predication mv10094 :raw-text "pathways")
   (:var mv10094 :isa involve :theme mv10093 :object mv10095 :progressive "PROGRESSIVE")
   (:var mv10095 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10092 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv10096 :isa show :|statement-OR-theme| mv10098 :beneficiary mv10097 :present "PRESENT")
   (:var mv10098 :isa pathway :pathwaycomponent mv10100 :raw-text "pathways")
   (:var mv10100 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway|
    mv10102 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10102 :isa pronoun/plural :word "them")
   (:var mv10097 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv10105 :isa show :|statement-OR-theme| mv10107 :beneficiary mv10106 :present "PRESENT")
   (:var mv10107 :isa pathway :pathwaycomponent mv10109 :raw-text "pathways")
   (:var mv10109 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10106 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv10112 :isa show :|statement-OR-theme| mv10119 :beneficiary mv10113 :present "PRESENT")
   (:var mv10119 :isa evidence :statement mv10118 :has-determiner "THE")
   (:var mv10118 :isa decrease :agent mv10117 :object mv10111 :present "PRESENT" :raw-text
    "decreases")
   (:var mv10117 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10111 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv10113 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv10121 :isa show :|statement-OR-theme| mv10132 :beneficiary mv10122 :present "PRESENT")
   (:var mv10132 :isa evidence :statement mv10127 :has-determiner "THE")
   (:var mv10127 :isa decrease :agent mv10126 :|affected-process-OR-object| mv10129 :present
    "PRESENT" :raw-text "decreases")
   (:var mv10126 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10129 :isa bio-amount :measured-item mv10120 :has-determiner "THE" :raw-text "amount")
   (:var mv10120 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv10122 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv10134 :isa show :|statement-OR-theme| mv10141 :beneficiary mv10135 :present "PRESENT")
   (:var mv10141 :isa evidence :statement mv10140 :has-determiner "THE")
   (:var mv10140 :isa regulate :agent mv10139 :object mv10133 :present "PRESENT" :raw-text
    "regulates")
   (:var mv10139 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10133 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv10135 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv10144 :isa show :|statement-OR-theme| mv10142 :present "PRESENT")
   (:var mv10142 :isa transcription-factor :predication mv10145 :raw-text "transcription factors")
   (:var mv10145 :isa share :object mv10142 :participant mv10149 :past "PAST" :raw-text "shared")
   (:var mv10149 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv10143 mv10148))
   (:var mv10143 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10148 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv10152 :isa tell :beneficiary mv10153 :present "PRESENT")
   (:var mv10153 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv10159 :isa tell :theme mv10171 :theme mv10160 :present "PRESENT")
   (:var mv10171 :isa regulate :affected-process mv10164 :agent mv10158 :present "PRESENT"
    :raw-text "regulated")
   (:var mv10164 :isa pathway :has-determiner "WHAT" :cellular-process mv10162 :raw-text
    "pathways")
   (:var mv10162 :isa apoptosis :raw-text "apoptotic")
   (:var mv10158 :isa protein :organ mv10170 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv10170 :isa liver :has-determiner "THE")
   (:var mv10160 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv10175 :isa tell :theme mv10178 :beneficiary mv10176 :present "PRESENT")
   (:var mv10178 :isa gene :predication mv10181 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10181 :isa regulate :object mv10178 :agent mv10182 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10182 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv10174 mv10180))
   (:var mv10174 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10180 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10176 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv10184 :isa tell :theme mv10194 :theme mv10185 :present "PRESENT")
   (:var mv10194 :isa regulate :affected-process mv10187 :agent mv10183 :present "PRESENT"
    :raw-text "regulated")
   (:var mv10187 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv10183 :isa protein :organ mv10193 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv10193 :isa liver :has-determiner "THE")
   (:var mv10185 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv10200 :isa involve :theme mv10199 :object mv10202 :present "PRESENT")
   (:var mv10199 :isa pathway :has-determiner "WHAT" :modifier mv10198 :raw-text "pathways")
   (:var mv10198 :isa database :name "KEGG" :uid "KEGG")
   (:var mv10202 :isa signal :modifier mv10201 :raw-text "signaling")
   (:var mv10201 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv10210 :isa regulate :object mv10206 :agent mv10204 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10206 :isa phosphatase :has-determiner "WHAT" :enzyme mv10203 :raw-text "phosphatases")
   (:var mv10203 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv10204 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv10217 :isa be :subject mv10216 :predicate mv10218 :present "PRESENT")
   (:var mv10216 :isa gene :has-determiner "WHAT" :cellular-process mv10214 :raw-text "genes")
   (:var mv10214 :isa apoptosis :raw-text "apoptotic")
   (:var mv10218 :isa downstream-segment :pathwaycomponent mv10212 :raw-text "downstream")
   (:var mv10212 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv10228 :isa regulate :object mv10226 :agent mv10222 :organ mv10231 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10226 :isa gene :has-determiner "WHAT" :cellular-process mv10224 :raw-text "genes")
   (:var mv10224 :isa apoptosis :raw-text "apoptotic")
   (:var mv10222 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10231 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv10239 :isa regulate :object mv10237 :agent mv10233 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10237 :isa gene :has-determiner "WHAT" :cellular-process mv10235 :raw-text "genes")
   (:var mv10235 :isa apoptosis :raw-text "apoptotic")
   (:var mv10233 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv10245 :isa be :subject mv10244 :predicate mv10246 :present "PRESENT")
   (:var mv10244 :isa gene :has-determiner "WHAT" :cellular-process mv10242 :raw-text "genes")
   (:var mv10242 :isa apoptosis :raw-text "apoptotic")
   (:var mv10246 :isa upstream-segment :pathwaycomponent mv10244 :modifier mv10240 :raw-text
    "upstream")
   (:var mv10240 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv10254 :isa involve :theme mv10253 :object mv10249 :present "PRESENT")
   (:var mv10253 :isa pathway :has-determiner "WHAT" :cellular-process mv10251 :raw-text
    "pathways")
   (:var mv10251 :isa apoptosis :raw-text "apoptotic")
   (:var mv10249 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv10256 :isa be :subject mv10255 :predicate mv10259 :present "PRESENT")
   (:var mv10255 :isa what) (:var mv10259 :isa target-protein :agent mv10258 :raw-text "targets")
   (:var mv10258 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv10263 :isa be :subject mv10262 :predicate mv10265 :present "PRESENT")
   (:var mv10262 :isa what)
   (:var mv10265 :isa inhibitor :quantifier mv10264 :protein mv10261 :raw-text "inhibitors")
   (:var mv10264 :isa some :word "some")
   (:var mv10261 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv10267 :isa be :subject mv10266 :predicate mv10269 :present "PRESENT")
   (:var mv10266 :isa what)
   (:var mv10269 :isa drug :predication mv10271 :quantifier mv10268 :raw-text "drugs")
   (:var mv10271 :isa inhibit :agent mv10269 :that-rel t :object mv10272 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv10272 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv10268 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv10275 :isa be :subject mv10274 :predicate mv10277 :present "PRESENT")
   (:var mv10274 :isa what)
   (:var mv10277 :isa gene :context mv10273 :quantifier mv10276 :raw-text "genes")
   (:var mv10273 :isa signaling-pathway :has-determiner "THE" :modifier mv10280 :raw-text
    "signaling pathway")
   (:var mv10280 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv10276 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv10284 :isa be :subject mv10283 :predicate mv10286 :present "PRESENT")
   (:var mv10283 :isa what)
   (:var mv10286 :isa protein :in-pathway mv10282 :quantifier mv10285 :raw-text "proteins")
   (:var mv10282 :isa signaling-pathway :has-determiner "THE" :modifier mv10289 :raw-text
    "signaling pathway")
   (:var mv10289 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv10285 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv10292 :isa be :subject mv10291 :predicate mv10294 :present "PRESENT")
   (:var mv10291 :isa what) (:var mv10294 :isa member :set mv10296 :has-determiner "THE")
   (:var mv10296 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv10302 :isa be :subject mv10301 :predicate mv10304 :present "PRESENT")
   (:var mv10301 :isa what)
   (:var mv10304 :isa micro-rna :predication mv10306 :has-determiner "THE" :raw-text "miRNAS")
   (:var mv10306 :isa regulate :agent mv10304 :that-rel t :object mv10310 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10310 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv10307 mv10308 mv10298 mv10299 mv10300))
   (:var mv10307 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv10308 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10298 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10299 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv10300 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv10312 :isa be :subject mv10311 :predicate mv10314 :present "PRESENT")
   (:var mv10311 :isa what)
   (:var mv10314 :isa regulator :theme mv10320 :has-determiner "THE" :raw-text "regulators")
   (:var mv10320 :isa bio-entity :organ mv10319 :name "MAPPK14")
   (:var mv10319 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv10325 :isa be :subject mv10324 :predicate mv10327 :present "PRESENT")
   (:var mv10324 :isa what)
   (:var mv10327 :isa regulator :theme mv10323 :has-determiner "THE" :raw-text "regulators")
   (:var mv10323 :isa protein :organ mv10330 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv10330 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv10335 :isa be :subject mv10334 :predicate mv10337 :present "PRESENT")
   (:var mv10334 :isa what)
   (:var mv10337 :isa regulator :theme mv10333 :has-determiner "THE" :raw-text "regulators")
   (:var mv10333 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv10342 :isa be :subject mv10341 :predicate mv10344 :present "PRESENT")
   (:var mv10341 :isa what)
   (:var mv10344 :isa regulator :theme mv10340 :has-determiner "THE" :raw-text "regulators")
   (:var mv10340 :isa protein :organ mv10347 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv10347 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv10352 :isa be :subject mv10351 :predicate mv10354 :present "PRESENT")
   (:var mv10351 :isa what)
   (:var mv10354 :isa regulator :theme mv10350 :has-determiner "THE" :raw-text "regulators")
   (:var mv10350 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv10362 :isa be :subject mv10361 :predicate mv10364 :present "PRESENT")
   (:var mv10361 :isa what)
   (:var mv10364 :isa regulator :theme mv10360 :has-determiner "THE" :raw-text "regulators")
   (:var mv10360 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv10381 :isa copular-predication :item mv10370 :value mv10368 :predicate mv10371)
   (:var mv10370 :isa what) (:var mv10368 :isa in-common :theme mv10378)
   (:var mv10378 :isa gene :has-determiner "THE" :expresses mv10379 :raw-text "genes")
   (:var mv10379 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv10375 mv10376 mv10369))
   (:var mv10375 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10376 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv10369 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10371 :isa be :predicate mv10367 :present "PRESENT")
   (:var mv10367 :isa transcription-factor :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv10384 :isa be :subject mv10383 :predicate mv10382 :present "PRESENT")
   (:var mv10383 :isa what)
   (:var mv10382 :isa transcription-factor :predication mv10387 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv10387 :isa regulate :agent mv10382 :that-rel t :object mv10393 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10393 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv10392 mv10391))
   (:var mv10392 :isa bio-entity :name "EELK1")
   (:var mv10391 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv10398 :isa be :subject mv10397 :predicate mv10394 :present "PRESENT")
   (:var mv10397 :isa what)
   (:var mv10394 :isa transcription-factor :predication mv10401 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv10401 :isa regulate :agent mv10394 :that-rel t :object mv10408 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10408 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv10402 mv10403 mv10407 mv10395 mv10396))
   (:var mv10402 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv10403 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10407 :isa bio-entity :name "STAAT3")
   (:var mv10395 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv10396 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv10414 :isa be :subject mv10413 :predicate mv10409 :present "PRESENT")
   (:var mv10413 :isa what)
   (:var mv10409 :isa transcription-factor :predication mv10417 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv10417 :isa regulate :agent mv10409 :that-rel t :object mv10421 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10421 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv10418 mv10419 mv10410 mv10411 mv10412))
   (:var mv10418 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv10419 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10410 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10411 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv10412 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv10426 :isa be :subject mv10425 :predicate mv10430 :present "PRESENT")
   (:var mv10425 :isa what)
   (:var mv10430 :isa regulator :theme mv10434 :has-determiner "THE" :context mv10428 :raw-text
    "regulators")
   (:var mv10434 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv10422 mv10423 mv10432 mv10424))
   (:var mv10422 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv10423 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv10432 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv10424 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv10428 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv10443 :isa regulate :object mv10438 :agent mv10442 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10438 :isa gene :has-determiner "WHAT" :cellular-process mv10436 :raw-text "genes")
   (:var mv10436 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv10442 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv10448 :isa regulate :|affected-process-OR-object| mv10445 :agent mv10447 :present
    "PRESENT" :raw-text "regulate")
   (:var mv10445 :isa what)
   (:var mv10447 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv10452 :isa regulate :|affected-process-OR-object| mv10449 :|agent-OR-cause| mv10451
    :organ mv10454 :present "PRESENT" :raw-text "regulate")
   (:var mv10449 :isa what) (:var mv10451 :isa pronoun/inanimate :word "it")
   (:var mv10454 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv10460 :isa target :|affected-process-OR-object| mv10457 :agent mv10456 :present
    "PRESENT" :raw-text "target")
   (:var mv10457 :isa what)
   (:var mv10456 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv10464 :isa regulate :|affected-process-OR-object| mv10462 :agent mv10461 :present
    "PRESENT" :raw-text "regulate")
   (:var mv10462 :isa what)
   (:var mv10461 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv10468 :isa regulate :|affected-process-OR-object| mv10466 :agent mv10465 :present
    "PRESENT" :raw-text "regulate")
   (:var mv10466 :isa what)
   (:var mv10465 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv10472 :isa regulate :|affected-process-OR-object| mv10470 :agent mv10469 :present
    "PRESENT" :raw-text "regulate")
   (:var mv10470 :isa what)
   (:var mv10469 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv10476 :isa regulate :|affected-process-OR-object| mv10473 :agent mv10475 :present
    "PRESENT" :raw-text "regulate")
   (:var mv10473 :isa what)
   (:var mv10475 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv10479 :isa downregulate :|agent-OR-cause| mv10478 :object mv10477 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv10478 :isa what)
   (:var mv10477 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv10493 :isa bio-use :patient mv10482 :modal mv10483 :agent mv10484 :theme mv10492
    :present "PRESENT" :raw-text "use")
   (:var mv10482 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv10483 :isa could)
   (:var mv10484 :isa interlocutor :name "speaker")
   (:var mv10492 :isa target :object mv10480 :raw-text "target")
   (:var mv10480 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv10505 :isa bio-use :object mv10496 :modal mv10497 :agent mv10498 :disease mv10494
    :present "PRESENT" :raw-text "use")
   (:var mv10496 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv10497 :isa should)
   (:var mv10498 :isa interlocutor :name "speaker")
   (:var mv10494 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv10509 :isa be :subject mv10508 :predicate mv10510 :present "PRESENT")
   (:var mv10508 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv10510 :isa inhibitor :protein mv10506 :raw-text "inhibitors")
   (:var mv10506 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv10516 :isa inhibit :agent mv10515 :object mv10513 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv10515 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv10513 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv10519 :isa regulate :agent mv10518 :object mv10520 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10518 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv10520 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv10524 :isa target :agent mv10522 :object mv10525 :present "PRESENT" :raw-text "target")
   (:var mv10522 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv10525 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv10529 :isa be :subject mv10528 :predicate mv10530 :present "PRESENT")
   (:var mv10528 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10530 :isa downstream-segment :pathwaycomponent mv10526 :raw-text "downstream")
   (:var mv10526 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv10544 :isa copular-predication-of-pp :item mv10536 :value mv10543 :prep "IN" :predicate
    mv10537)
   (:var mv10536 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10543 :isa gene :context mv10534 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10534 :isa signaling-pathway :has-determiner "THE" :modifier mv10540 :raw-text
    "signaling pathway")
   (:var mv10540 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv10537 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv10556 :isa copular-predication-of-pp :item mv10548 :value mv10555 :prep "IN" :predicate
    mv10549)
   (:var mv10548 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10555 :isa gene :context mv10546 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10546 :isa signaling-pathway :has-determiner "THE" :modifier mv10552 :raw-text
    "signaling pathways")
   (:var mv10552 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv10549 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv10568 :isa copular-predication-of-pp :item mv10560 :value mv10567 :prep "IN" :predicate
    mv10561)
   (:var mv10560 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10567 :isa gene :context mv10564 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10564 :isa pathway :has-determiner "THE" :non-cellular-location mv10558 :raw-text
    "pathway")
   (:var mv10558 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv10561 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv10580 :isa copular-predication-of-pp :item mv10572 :value mv10579 :prep "IN" :predicate
    mv10573)
   (:var mv10572 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10579 :isa gene :context mv10570 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10570 :isa signaling-pathway :has-determiner "THE" :modifier mv10576 :raw-text
    "signaling pathway")
   (:var mv10576 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv10573 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv10591 :isa involve :object mv10585 :|context-OR-theme| mv10590 :present "PRESENT")
   (:var mv10585 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10590 :isa pathway :has-determiner "THE" :modifier mv10583 :raw-text "pathway")
   (:var mv10583 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv10601 :isa involve :object mv10594 :|context-OR-theme| mv10600 :present "PRESENT")
   (:var mv10594 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10600 :isa pathway :has-determiner "THE" :modifier mv10599 :raw-text "pathway")
   (:var mv10599 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv10611 :isa involve :object mv10605 :|context-OR-theme| mv10610 :present "PRESENT")
   (:var mv10605 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10610 :isa pathway :has-determiner "THE" :modifier mv10603 :raw-text "pathway")
   (:var mv10603 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv10621 :isa involve :object mv10615 :|context-OR-theme| mv10620 :present "PRESENT")
   (:var mv10615 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10620 :isa pathway :has-determiner "THE" :non-cellular-location mv10613 :raw-text
    "pathway")
   (:var mv10613 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv10635 :isa regulate :object mv10627 :agent mv10634 :present "PRESENT" :superlative
    mv10629 :adverb mv10630 :raw-text "regulated")
   (:var mv10627 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10634 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv10623 mv10624 mv10625))
   (:var mv10623 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv10624 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv10625 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv10629 :isa superlative-quantifier :name "most")
   (:var mv10630 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv10650 :isa regulate :object mv10642 :agent mv10649 :present "PRESENT" :superlative
    mv10644 :adverb mv10645 :raw-text "regulated")
   (:var mv10642 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10649 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv10637 mv10638 mv10639 mv10640))
   (:var mv10637 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv10638 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv10639 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv10640 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv10644 :isa superlative-quantifier :name "most")
   (:var mv10645 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv10665 :isa regulate :object mv10657 :agent mv10664 :present "PRESENT" :superlative
    mv10659 :adverb mv10660 :raw-text "regulated")
   (:var mv10657 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10664 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv10652 mv10653 mv10654 mv10655))
   (:var mv10652 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv10653 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv10654 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv10655 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv10659 :isa superlative-quantifier :name "most")
   (:var mv10660 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv10673 :isa regulate :object mv10668 :agent mv10672 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10668 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10672 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv10684 :isa regulate :object mv10677 :agent mv10683 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10677 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10683 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv10675 mv10682))
   (:var mv10675 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv10682 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv10695 :isa regulate :object mv10689 :agent mv10694 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10689 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10694 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv10686 mv10687))
   (:var mv10686 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv10687 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv10705 :isa regulate :object mv10698 :agent mv10704 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10698 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10704 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv10713 :isa regulate :object mv10708 :agent mv10712 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10708 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10712 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv10724 :isa regulate :object mv10717 :agent mv10723 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10717 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10723 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv10715 mv10722))
   (:var mv10715 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10722 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv10732 :isa target :object mv10728 :cause mv10726 :present "PRESENT" :raw-text
    "targeted")
   (:var mv10728 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10726 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv10746 :isa copular-predication-of-pp :item mv10736 :value mv10745 :prep "IN" :predicate
    mv10737)
   (:var mv10736 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10745 :isa gene :context mv10734 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10734 :isa signaling-pathway :has-determiner "THE" :modifier mv10742 :raw-text
    "signaling pathway")
   (:var mv10742 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv10737 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv10756 :isa bio-use :object mv10750 :context mv10748 :present "PRESENT" :raw-text "used")
   (:var mv10750 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10748 :isa signaling-pathway :has-determiner "THE" :modifier mv10755 :raw-text
    "signaling pathway")
   (:var mv10755 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv10763 :isa target :object mv10760 :cause mv10758 :present "PRESENT" :raw-text "target")
   (:var mv10760 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10758 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv10769 :isa target :object mv10766 :agent mv10764 :present "PRESENT" :raw-text "target")
   (:var mv10766 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10764 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv10775 :isa target :object mv10772 :agent mv10770 :present "PRESENT" :raw-text "target")
   (:var mv10772 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10770 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv10780 :isa upregulate :object mv10778 :agent mv10776 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv10778 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10776 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv10785 :isa regulate :object mv10783 :agent mv10781 :cell-type mv10788 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10783 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10781 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10788 :isa cell-type :non-cellular-location mv10787) (:var mv10787 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv10794 :isa regulate :object mv10792 :agent mv10790 :organ mv10796 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10792 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10790 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10796 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv10802 :isa regulate :object mv10800 :agent mv10798 :organ mv10804 :present "PRESENT"
    :raw-text "regulate")
   (:var mv10800 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10798 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10804 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv10810 :isa regulate :object mv10808 :agent mv10806 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10808 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10806 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv10818 :isa regulate :object mv10813 :agent mv10811 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10813 :isa gene :organ mv10816 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10816 :isa liver :has-determiner "THE")
   (:var mv10811 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv10823 :isa be :subject mv10822 :predicate mv10824 :present "PRESENT")
   (:var mv10822 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10824 :isa upstream-segment :modifier mv10820 :raw-text "upstream")
   (:var mv10820 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv10830 :isa be :subject mv10829 :predicate mv10831 :present "PRESENT")
   (:var mv10829 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv10831 :isa upstream-segment :pathwaycomponent mv10829 :modifier mv10827 :raw-text
    "upstream")
   (:var mv10827 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv10839 :isa be :subject mv10835 :predicate mv10840 :present "PRESENT")
   (:var mv10835 :isa gene :predication mv10836 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10836 :isa regulate :object mv10835 :agent mv10838 :past "PAST" :raw-text "regulated")
   (:var mv10838 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv10840 :isa kinase :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv10847 :isa be :subject mv10844 :predicate mv10848 :present "PRESENT")
   (:var mv10844 :isa gene :predication mv10845 :has-determiner "WHAT" :raw-text "genes")
   (:var mv10845 :isa regulate :object mv10844 :agent mv10842 :past "PAST" :raw-text "regulated")
   (:var mv10842 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10848 :isa kinase :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv10854 :isa involve :theme mv10853 :object mv10857 :present "PRESENT")
   (:var mv10853 :isa pathway :has-determiner "WHAT" :modifier mv10852 :raw-text "pathways")
   (:var mv10852 :isa immune :name "immune")
   (:var mv10857 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv10855 mv10850))
   (:var mv10855 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10850 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv10861 :isa involve :theme mv10860 :object mv10862 :present "PRESENT")
   (:var mv10860 :isa pathway :has-determiner "WHAT" :modifier mv10859 :raw-text "pathways")
   (:var mv10859 :isa immune :name "immune")
   (:var mv10862 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv10867 :isa involve :theme mv10866 :object mv10870 :present "PRESENT")
   (:var mv10866 :isa pathway :has-determiner "WHAT" :modifier mv10865 :raw-text "pathways")
   (:var mv10865 :isa immune :name "immune")
   (:var mv10870 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv10868 mv10863))
   (:var mv10868 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10863 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv10876 :isa involve :theme mv10875 :object mv10878 :present "PRESENT")
   (:var mv10875 :isa pathway :has-determiner "WHAT" :modifier mv10874 :raw-text "pathways")
   (:var mv10874 :isa immune :name "immune")
   (:var mv10878 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv10871 mv10872))
   (:var mv10871 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv10872 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv10880 :isa inhibit :|agent-OR-cause| mv10879 :object mv10881 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv10879 :isa what)
   (:var mv10881 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv10884 :isa be :subject mv10883 :predicate mv10882 :present "PRESENT")
   (:var mv10883 :isa what)
   (:var mv10882 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv10886 :isa be :subject mv10885 :predicate mv10887 :present "PRESENT")
   (:var mv10885 :isa what)
   (:var mv10887 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv10890 :isa be :subject mv10889 :predicate mv10891 :present "PRESENT")
   (:var mv10889 :isa what)
   (:var mv10891 :isa downstream-segment :pathwaycomponent mv10888 :raw-text "downstream")
   (:var mv10888 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv10896 :isa be :subject mv10895 :predicate mv10897 :present "PRESENT")
   (:var mv10895 :isa what)
   (:var mv10897 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv10899 :isa be :subject mv10898 :predicate mv10900 :present "PRESENT")
   (:var mv10898 :isa what) (:var mv10900 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv10906 :isa regulate :|affected-process-OR-object| mv10902 :agent mv10901 :present
    "PRESENT" :raw-text "regulated")
   (:var mv10902 :isa what)
   (:var mv10901 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv10910 :isa be :subject mv10909 :predicate mv10916 :present "PRESENT")
   (:var mv10909 :isa what) (:var mv10916 :isa evidence :statement mv10915 :has-determiner "THE")
   (:var mv10915 :isa decrease :agent mv10914 :object mv10908 :present "PRESENT" :raw-text
    "decreases")
   (:var mv10914 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10908 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv10919 :isa be :subject mv10918 :predicate mv10929 :present "PRESENT")
   (:var mv10918 :isa what) (:var mv10929 :isa evidence :statement mv10924 :has-determiner "THE")
   (:var mv10924 :isa decrease :agent mv10923 :|affected-process-OR-object| mv10926 :present
    "PRESENT" :raw-text "decreases")
   (:var mv10923 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv10926 :isa bio-amount :measured-item mv10917 :has-determiner "THE" :raw-text "amount")
   (:var mv10917 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv10931 :isa be :subject mv10930 :predicate mv10933 :present "PRESENT")
   (:var mv10930 :isa what)
   (:var mv10933 :isa target-protein :agent mv10936 :has-determiner "THE" :raw-text "target")
   (:var mv10936 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv10942 :isa regulate :object mv10940 :agent mv10938 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10940 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv10938 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv10950 :isa regulate :agent mv10947 :object mv10954 :present "PRESENT" :adverb mv10948
    :adverb mv10949 :raw-text "regulate")
   (:var mv10947 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv10954 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv10951 mv10952 mv10943 mv10944 mv10945))
   (:var mv10951 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv10952 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10943 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10944 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv10945 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv10948 :isa superlative-quantifier :name "most")
   (:var mv10949 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv10960 :isa regulate :agent mv10959 :object mv10964 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10959 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv10964 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv10961 mv10962 mv10955 mv10956 mv10957))
   (:var mv10961 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv10962 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10955 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10956 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv10957 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv10971 :isa regulate :object mv10967 :agent mv10965 :present "PRESENT" :raw-text
    "regulated")
   (:var mv10967 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv10965 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv10976 :isa regulate :agent mv10975 :object mv10977 :present "PRESENT" :raw-text
    "regulate")
   (:var mv10975 :isa micro-rna :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv10977 :isa gene :context mv10973 :raw-text "genes")
   (:var mv10973 :isa signaling-pathway :has-determiner "THE" :modifier mv10980 :raw-text
    "signaling pathways")
   (:var mv10980 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv10985 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv10996 :isa copular-predication :item mv10988 :value mv10990 :predicate mv10989)
   (:var mv10988 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv10990 :isa common :theme mv10994)
   (:var mv10994 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv10986 mv10993))
   (:var mv10986 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv10993 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv10989 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv10999 :isa involve :theme mv10998 :object mv11000 :present "PRESENT")
   (:var mv10998 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv11000 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv11004 :isa involve :theme mv11003 :object mv11007 :present "PRESENT")
   (:var mv11003 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv11007 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv11005 mv11001))
   (:var mv11005 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11001 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv11011 :isa involve :theme mv11010 :object mv11008 :present "PRESENT")
   (:var mv11010 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv11008 :isa transcription-factor :has-determiner "THE" :modifier mv11013 :raw-text
    "transcription factor")
   (:var mv11013 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv11023 :isa collection :raw-text "What pathways utilize srf and is srf" :type utilize
    :number 2 :items (mv11016 mv11019))
   (:var mv11016 :isa utilize :participant mv11015 :object mv11017 :present "PRESENT" :raw-text
    "utilize")
   (:var mv11015 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv11017 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11019 :isa be :subject mv11015 :predicate mv11020 :present "PRESENT")
   (:var mv11020 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv11034 :isa copular-predication-of-pp :item mv11025 :value mv11032 :prep mv11027
    :predicate mv11026)
   (:var mv11025 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11032 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv11027 :isa in :word "in") (:var mv11026 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv11041 :isa target :object mv11037 :cause mv11035 :present "PRESENT" :raw-text
    "targeted")
   (:var mv11037 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11035 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv11048 :isa target :object mv11045 :agent mv11043 :present "PRESENT" :raw-text "target")
   (:var mv11045 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11043 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv11054 :isa target :object mv11051 :cause mv11049 :present "PRESENT" :raw-text "target")
   (:var mv11051 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11049 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv11060 :isa target :object mv11056 :agent mv11058 :present "PRESENT" :raw-text "target")
   (:var mv11056 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11058 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv11065 :isa lead :agent mv11063 :theme mv11068 :modal mv11064 :raw-text "lead")
   (:var mv11063 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11068 :isa development :disease mv11061 :has-determiner "THE" :raw-text "development")
   (:var mv11061 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv11064 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv11076 :isa lead :agent mv11074 :theme mv11079 :modal mv11075 :raw-text "lead")
   (:var mv11074 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11079 :isa development :disease mv11072 :has-determiner "THE" :raw-text "development")
   (:var mv11072 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv11075 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv11086 :isa involve :theme mv11085 :object mv11088 :present "PRESENT")
   (:var mv11085 :isa pathway :has-determiner "WHAT" :modifier mv11084 :raw-text "pathways")
   (:var mv11084 :isa database :name "Reactome" :uid "Reactome")
   (:var mv11088 :isa signal :modifier mv11087 :raw-text "signaling")
   (:var mv11087 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv11090 :isa regulate :|agent-OR-cause| mv11089 :object mv11091 :present "PRESENT"
    :raw-text "regulates")
   (:var mv11089 :isa what)
   (:var mv11091 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv11094 :isa regulate :|agent-OR-cause| mv11093 :object mv11092 :present "PRESENT"
    :raw-text "regulates")
   (:var mv11093 :isa what)
   (:var mv11092 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv11097 :isa regulate :|agent-OR-cause| mv11096 :object mv11095 :present "PRESENT"
    :raw-text "regulates")
   (:var mv11096 :isa what)
   (:var mv11095 :isa protein :organ mv11099 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv11099 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv11110 :isa share :object mv11101 :participant mv11109 :present "PRESENT" :raw-text
    "shared")
   (:var mv11101 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv11109 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv11107 mv11102))
   (:var mv11107 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv11102 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv11121 :isa share :object mv11112 :participant mv11120 :present "PRESENT" :raw-text
    "shared")
   (:var mv11112 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv11120 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv11113 mv11119))
   (:var mv11113 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11119 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv11133 :isa share :object mv11123 :participant mv11132 :present "PRESENT" :raw-text
    "shared")
   (:var mv11123 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv11132 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv11124 mv11125 mv11131))
   (:var mv11124 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11125 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11131 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?" (:var mv11137 :isa tissue :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv11144 :isa bio-produce :agent mv11141 :object mv11142 :present "PRESENT" :raw-text
    "produces")
   (:var mv11141 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv11142 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv11148 :isa transcribe :agent mv11145 :object mv11146 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv11145 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv11146 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv11164 :isa copular-predication :item mv11149 :value mv11156 :predicate mv11155)
   (:var mv11149 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11156 :isa common :theme mv11161)
   (:var mv11161 :isa gene :has-determiner "THE" :expresses mv11162 :raw-text "genes")
   (:var mv11162 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv11150 mv11151 mv11159 mv11152 mv11153))
   (:var mv11150 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11151 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11159 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv11152 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv11153 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv11155 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv11178 :isa copular-predication :item mv11165 :value mv11171 :predicate mv11170)
   (:var mv11165 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11171 :isa common :theme mv11175)
   (:var mv11175 :isa gene :has-determiner "THE" :expresses mv11176 :raw-text "genes")
   (:var mv11176 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv11166 mv11167 mv11168))
   (:var mv11166 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11167 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11168 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv11170 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv11183 :isa regulate :object mv11181 :agent mv11179 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11181 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv11179 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv11192 :isa copular-predication :item mv11184 :value mv11187 :predicate mv11186)
   (:var mv11184 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11187 :isa common :theme mv11190)
   (:var mv11190 :isa gene :has-determiner "THESE" :raw-text "genes")
   (:var mv11186 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv11208 :isa copular-predication :item mv11193 :value mv11194 :predicate mv11200)
   (:var mv11193 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11194 :isa in-common :theme mv11205)
   (:var mv11205 :isa gene :has-determiner "THE" :expresses mv11206 :raw-text "genes")
   (:var mv11206 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv11195 mv11196 mv11203 mv11197 mv11198))
   (:var mv11195 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11196 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11203 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv11197 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv11198 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv11200 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv11222 :isa copular-predication :item mv11209 :value mv11210 :predicate mv11215)
   (:var mv11209 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11210 :isa in-common :theme mv11219)
   (:var mv11219 :isa gene :has-determiner "THE" :expresses mv11220 :raw-text "genes")
   (:var mv11220 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv11211 mv11212 mv11213))
   (:var mv11211 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11212 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11213 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv11215 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv11226 :isa be :subject mv11223 :predicate mv11227 :present "PRESENT")
   (:var mv11223 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11227 :isa regulator :theme mv11224 :raw-text "regulators")
   (:var mv11224 :isa protein :organ mv11230 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv11230 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv11236 :isa be :subject mv11233 :predicate mv11237 :present "PRESENT")
   (:var mv11233 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11237 :isa regulator :theme mv11234 :raw-text "regulators")
   (:var mv11234 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv11252 :isa share :object mv11240 :participant mv11250 :present "PRESENT" :raw-text
    "shared")
   (:var mv11240 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11250 :isa gene :has-determiner "THE" :expresses mv11251 :raw-text "genes")
   (:var mv11251 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv11247 mv11248 mv11241))
   (:var mv11247 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11248 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv11241 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv11257 :isa regulate :agent mv11254 :object mv11255 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11254 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11255 :isa protein :organ mv11259 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv11259 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv11264 :isa regulate :agent mv11261 :object mv11262 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11261 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11262 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv11267 :isa regulate :agent mv11265 :object mv11268 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11265 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11268 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv11271 :isa regulate :agent mv11269 :theme mv11277 :object mv11272 :present "PRESENT"
    :raw-text "regulate")
   (:var mv11269 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11277 :isa bio-entity :has-determiner "THE" :modifier mv11275 :cellular-process mv11276
    :name "pathwya")
   (:var mv11275 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv11276 :isa signal :raw-text "signaling") (:var mv11272 :isa gene :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv11282 :isa regulate :agent mv11279 :object mv11280 :past "PAST" :raw-text "regulated")
   (:var mv11279 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11280 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv11286 :isa transcribe :agent mv11283 :object mv11284 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv11283 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11284 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv11289 :isa upregulate :|agent-OR-cause| mv11288 :object mv11287 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv11288 :isa what)
   (:var mv11287 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv11295 :isa gene-transcript-express :location mv11291 :object mv11290 :past "PAST"
    :raw-text "expressed")
   (:var mv11291 :isa where)
   (:var mv11290 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv11299 :isa involve :theme mv11298 :object mv11300 :present "PRESENT")
   (:var mv11298 :isa pathway :has-determiner "WHICH" :modifier mv11297 :raw-text "pathways")
   (:var mv11297 :isa database :name "KEGG" :uid "KEGG")
   (:var mv11300 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv11305 :isa bio-use :agent mv11303 :object mv11306 :present "PRESENT" :raw-text "use")
   (:var mv11303 :isa pathway :has-determiner "WHICH" :modifier mv11302 :raw-text "pathways")
   (:var mv11302 :isa database :name "KEGG" :uid "KEGG")
   (:var mv11306 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv11310 :isa regulate :agent mv11307 :object mv11308 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11307 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11308 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv11314 :isa regulate :|agent-OR-cause| mv11311 :object mv11315 :present "PRESENT" :adverb
    mv11312 :raw-text "regulate")
   (:var mv11311 :isa which)
   (:var mv11315 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11312 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv11324 :isa regulate :object mv11320 :agent mv11316 :present "PRESENT" :raw-text
    "regulated")
   (:var mv11320 :isa gene :has-determiner "WHICH" :cellular-process mv11318 :raw-text "genes")
   (:var mv11318 :isa apoptosis :raw-text "apoptotic")
   (:var mv11316 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv11331 :isa be :subject mv11330 :predicate mv11332 :present "PRESENT")
   (:var mv11330 :isa gene :has-determiner "WHICH" :cellular-process mv11328 :raw-text "genes")
   (:var mv11328 :isa apoptosis :raw-text "apoptotic")
   (:var mv11332 :isa upstream-segment :pathwaycomponent mv11330 :modifier mv11326 :raw-text
    "upstream")
   (:var mv11326 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv11341 :isa target :object mv11337 :agent mv11335 :present "PRESENT" :raw-text
    "targeted")
   (:var mv11337 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv11335 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv11348 :isa be :subject mv11345 :predicate mv11349 :present "PRESENT")
   (:var mv11345 :isa gene :predication mv11346 :has-determiner "WHICH" :raw-text "genes")
   (:var mv11346 :isa regulate :object mv11345 :agent mv11343 :past "PAST" :raw-text "regulated")
   (:var mv11343 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11349 :isa kinase :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv11365 :isa share :object mv11357 :participant mv11363 :present "PRESENT" :raw-text
    "shared")
   (:var mv11357 :isa pathway :has-determiner "WHICH" :modifier mv11356 :raw-text "pathways")
   (:var mv11356 :isa immune :name "immune")
   (:var mv11363 :isa gene :expresses mv11364 :raw-text "genes")
   (:var mv11364 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv11351 mv11352 mv11361 mv11353 mv11354))
   (:var mv11351 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11352 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11361 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv11353 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv11354 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv11380 :isa share :object mv11372 :participant mv11378 :present "PRESENT" :raw-text
    "shared")
   (:var mv11372 :isa pathway :has-determiner "WHICH" :modifier mv11371 :raw-text "pathways")
   (:var mv11371 :isa immune :name "immune")
   (:var mv11378 :isa gene :has-determiner "THE" :expresses mv11379 :raw-text "genes")
   (:var mv11379 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv11367 mv11368 mv11369))
   (:var mv11367 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11368 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11369 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv11386 :isa utilize :participant mv11385 :object mv11387 :present "PRESENT" :raw-text
    "utilize")
   (:var mv11385 :isa pathway :has-determiner "WHICH" :modifier mv11384 :raw-text "pathways")
   (:var mv11384 :isa database :name "KEGG" :uid "KEGG")
   (:var mv11387 :isa gene :predication mv11388 :raw-text "genes")
   (:var mv11388 :isa regulate :object mv11387 :agent mv11382 :past "PAST" :raw-text "regulated")
   (:var mv11382 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv11394 :isa utilize :participant mv11393 :object mv11395 :present "PRESENT" :raw-text
    "utilize")
   (:var mv11393 :isa pathway :has-determiner "WHICH" :modifier mv11392 :raw-text "pathways")
   (:var mv11392 :isa database :name "Reactome" :uid "Reactome")
   (:var mv11395 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv11399 :isa utilize :participant mv11398 :object mv11400 :present "PRESENT" :raw-text
    "utilize")
   (:var mv11398 :isa pathway :has-determiner "WHICH" :modifier mv11397 :raw-text "pathways")
   (:var mv11397 :isa database :name "KEGG" :uid "KEGG")
   (:var mv11400 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv11408 :isa regulate :|affected-process-OR-object| mv11404 :agent mv11401 :present
    "PRESENT" :raw-text "regulated")
   (:var mv11404 :isa pronoun/plural :quantifier mv11402 :word "them") (:var mv11402 :isa which)
   (:var mv11401 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv11418 :isa gene-transcript-express :object mv11413 :organ mv11417 :present "PRESENT"
    :raw-text "expressed")
   (:var mv11413 :isa these :quantifier mv11411 :word "these") (:var mv11411 :isa which)
   (:var mv11417 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv11429 :isa copular-predication-of-pp :item mv11423 :value mv11427 :prep mv11425
    :predicate mv11424)
   (:var mv11423 :isa these :quantifier mv11421 :word "these") (:var mv11421 :isa which)
   (:var mv11427 :isa pathway :modifier mv11426 :raw-text "pathways")
   (:var mv11426 :isa immune :name "immune") (:var mv11425 :isa in :word "in")
   (:var mv11424 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv11435 :isa phosphorylate :substrate mv11432 :agent mv11434 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv11432 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv11434 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv11439 :isa be :subject mv11438 :predicate mv11440 :present "PRESENT")
   (:var mv11438 :isa these :quantifier mv11436 :word "these") (:var mv11436 :isa which)
   (:var mv11440 :isa kinase :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv11449 :isa regulate :|affected-process-OR-object| mv11445 :agent mv11442 :present
    "PRESENT" :raw-text "regulated")
   (:var mv11445 :isa those :quantifier mv11443 :word "those") (:var mv11443 :isa which)
   (:var mv11442 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv11459 :isa regulate :|affected-process-OR-object| mv11455 :agent mv11452 :present
    "PRESENT" :raw-text "regulated")
   (:var mv11455 :isa these :quantifier mv11453 :word "these") (:var mv11453 :isa which)
   (:var mv11452 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv11469 :isa regulate :|affected-process-OR-object| mv11464 :agent mv11468 :present
    "PRESENT" :raw-text "regulated")
   (:var mv11464 :isa these :quantifier mv11462 :word "these") (:var mv11462 :isa which)
   (:var mv11468 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv11485 :isa share :object mv11477 :participant mv11483 :present "PRESENT" :raw-text
    "shared")
   (:var mv11477 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11483 :isa gene :expresses mv11484 :raw-text "genes")
   (:var mv11484 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv11472 mv11473 mv11481 mv11474 mv11475))
   (:var mv11472 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11473 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11481 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv11474 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv11475 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv11497 :isa share :object mv11491 :participant mv11496 :present "PRESENT" :raw-text
    "shared")
   (:var mv11491 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11496 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv11487 mv11488 mv11489))
   (:var mv11487 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11488 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11489 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv11513 :isa share :object mv11504 :participant mv11511 :present "PRESENT" :raw-text
    "shared")
   (:var mv11504 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11511 :isa gene :has-determiner "THE" :expresses mv11512 :raw-text "genes")
   (:var mv11512 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv11499 mv11500 mv11509 mv11501 mv11502))
   (:var mv11499 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11500 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv11509 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv11501 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv11502 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv11519 :isa involve :theme mv11518 :object mv11521 :present "PRESENT")
   (:var mv11518 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11521 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv11515 mv11516))
   (:var mv11515 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv11516 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv11524 :isa involve :theme mv11523 :object mv11525 :present "PRESENT")
   (:var mv11523 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11525 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv11529 :isa bio-use :agent mv11527 :object mv11530 :present "PRESENT" :raw-text "use")
   (:var mv11527 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11530 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv11534 :isa bio-use :agent mv11532 :object mv11535 :present "PRESENT" :raw-text "use")
   (:var mv11532 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11535 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv11538 :isa utilize :participant mv11537 :object mv11539 :present "PRESENT" :raw-text
    "utilize")
   (:var mv11537 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11539 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv11542 :isa utilize :participant mv11541 :object mv11544 :present "PRESENT" :raw-text
    "utilize")
   (:var mv11541 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv11544 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv11551 :isa target :object mv11547 :agent mv11545 :present "PRESENT" :raw-text
    "targeted")
   (:var mv11547 :isa protein :has-determiner "WHICH" :raw-text "proteins")
   (:var mv11545 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv11556 :isa utilize :participant mv11555 :object mv11557 :present "PRESENT" :raw-text
    "utilize")
   (:var mv11555 :isa pathway :has-determiner "WHICH" :modifier mv11554 :raw-text "pathways")
   (:var mv11554 :isa database :name "Reactome" :uid "Reactome")
   (:var mv11557 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv11568 :isa copular-predication-of-pp :item mv11558 :value mv11567 :prep "IN" :predicate
    mv11561)
   (:var mv11558 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv11567 :isa transcription-factor :in-pathway mv11559 :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv11559 :isa signaling-pathway :has-determiner "THE" :modifier mv11564 :raw-text
    "signaling pathway")
   (:var mv11564 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv11561 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv11573 :isa regulate :agent mv11570 :object mv11571 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11570 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv11571 :isa protein :organ mv11576 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv11576 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv11581 :isa regulate :agent mv11578 :object mv11579 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11578 :isa transcription-factor :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv11579 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv11588 :isa explicit-suggestion :suggestion mv11584 :marker let-as-directive)
   (:var mv11584 :isa move-something-somewhere :at-relative-location mv11586 :theme mv11583
    :present "PRESENT")
   (:var mv11586 :isa top-qua-location)
   (:var mv11583 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv11597 :isa explicit-suggestion :suggestion mv11591 :marker let-as-directive)
   (:var mv11591 :isa show :at-relative-location mv11595 :|statement-OR-theme| mv11590 :present
    "PRESENT")
   (:var mv11595 :isa top-qua-location)
   (:var mv11590 :isa protein :has-determiner "THE" :predication mv11593 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv11593 :isa phosphorylate :substrate mv11590 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv11600 :isa be :subject mv11599 :predicate mv11603 :present "PRESENT")
   (:var mv11599 :isa what)
   (:var mv11603 :isa upstream-segment :pathwaycomponent mv11607 :has-determiner "THE" :predication
    mv11602 :raw-text "upstreams")
   (:var mv11607 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv11598 mv11606))
   (:var mv11598 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv11606 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv11602 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv11616 :isa polar-question :statement mv11611)
   (:var mv11611 :isa gene-transcript-express :object mv11609 :organ mv11614 :past "PAST" :raw-text
    "expressed")
   (:var mv11609 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11614 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv11623 :isa polar-question :statement mv11619)
   (:var mv11619 :isa gene-transcript-express :object mv11617 :organ mv11621 :past "PAST" :raw-text
    "expressed")
   (:var mv11617 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11621 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv11625 :isa show :at-relative-location mv11628 :|statement-OR-theme| mv11624 :present
    "PRESENT")
   (:var mv11628 :isa top-qua-location)
   (:var mv11624 :isa protein :predication mv11626 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv11626 :isa phosphorylate :substrate mv11624 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv11632 :isa be :subject mv11631 :predicate mv11635 :present "PRESENT")
   (:var mv11631 :isa what)
   (:var mv11635 :isa upstream-segment :pathwaycomponent mv11639 :has-determiner "THE" :predication
    mv11634 :raw-text "upstreams")
   (:var mv11639 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv11630 mv11638))
   (:var mv11630 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv11638 :isa bio-entity :name "BRA") (:var mv11634 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv11648 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv11642 mv11646))
   (:var mv11642 :isa bio-activate :agent mv11641 :object mv11643 :present "PRESENT" :raw-text
    "activates")
   (:var mv11641 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv11643 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11646 :isa bio-activate :agent mv11645 :object mv11647 :present "PRESENT" :raw-text
    "activates")
   (:var mv11645 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11647 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv11650 :isa be :subject mv11649 :predicate mv11652 :present "PRESENT")
   (:var mv11649 :isa what)
   (:var mv11652 :isa path :end mv11656 :start mv11654 :has-determiner "THE")
   (:var mv11656 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11654 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv11659 :isa remove :object mv11666 :present "PRESENT" :raw-text "remove")
   (:var mv11666 :isa fact :statement mv11664 :has-determiner "THE")
   (:var mv11664 :isa bio-activate :agent mv11663 :object mv11665 :present "PRESENT" :raw-text
    "activates")
   (:var mv11663 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11665 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv11674 :isa explicit-suggestion :suggestion mv11669 :marker let-as-directive)
   (:var mv11669 :isa show :at-relative-location mv11672 :|statement-OR-theme| mv11668 :present
    "PRESENT")
   (:var mv11672 :isa top-qua-location)
   (:var mv11668 :isa protein :predication mv11670 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv11670 :isa phosphorylate :substrate mv11668 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv11677 :isa be :subject mv11676 :predicate mv11675 :present "PRESENT")
   (:var mv11676 :isa what)
   (:var mv11675 :isa positive-regulator :theme mv11681 :raw-text "positive regulators")
   (:var mv11681 :isa gene :has-determiner "THE" :expresses mv11680 :raw-text "gene")
   (:var mv11680 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv11686 :isa regulate :agent mv11683 :object mv11687 :present "PRESENT" :raw-text
    "regulate")
   (:var mv11683 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11687 :isa protein :organ mv11684 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv11684 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv11698 :isa polar-question :statement mv11697)
   (:var mv11697 :isa there-exists :value mv11694 :predicate mv11691)
   (:var mv11694 :isa drug :predication mv11695 :quantifier mv11693 :raw-text "drugs")
   (:var mv11695 :isa inhibit :agent mv11694 :object mv11696 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv11696 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv11693 :isa any :word "any") (:var mv11691 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv11707 :isa polar-question :statement mv11706)
   (:var mv11706 :isa there-exists :value mv11703 :predicate mv11700)
   (:var mv11703 :isa drug :predication mv11704 :quantifier mv11702 :raw-text "drugs")
   (:var mv11704 :isa target :agent mv11703 :object mv11705 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv11705 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv11702 :isa any :word "any") (:var mv11700 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv11725 :isa polar-question :statement mv11721)
   (:var mv11721 :isa there-exists :value mv11713 :predicate mv11710)
   (:var mv11713 :isa gene :predication mv11722 :organ mv11716 :quantifier mv11712 :raw-text
    "genes")
   (:var mv11722 :isa regulate :object mv11713 :that-rel t :agent mv11708 :present "PRESENT"
    :raw-text "regulated")
   (:var mv11708 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11716 :isa liver :has-determiner "THE") (:var mv11712 :isa any :word "any")
   (:var mv11710 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv11743 :isa polar-question :statement mv11739)
   (:var mv11739 :isa there-exists :value mv11731 :predicate mv11728)
   (:var mv11731 :isa gene :predication mv11732 :quantifier mv11730 :raw-text "genes")
   (:var mv11732 :isa involve :object mv11731 :theme mv11734 :past "PAST")
   (:var mv11734 :isa apoptosis :predication mv11740 :raw-text "apoptosis")
   (:var mv11740 :isa regulate :affected-process mv11734 :that-rel t :agent mv11726 :present
    "PRESENT" :raw-text "regulated")
   (:var mv11726 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11730 :isa any :word "any") (:var mv11728 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv11754 :isa there-exists :predicate mv11746)
   (:var mv11746 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv11764 :isa polar-question :statement mv11762)
   (:var mv11762 :isa there-exists :value mv11760 :predicate mv11757)
   (:var mv11760 :isa inhibitor :|target-OR-protein| mv11755 :quantifier mv11759 :raw-text
    "inhibitors")
   (:var mv11755 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv11759 :isa any :word "any") (:var mv11757 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv11777 :isa polar-question :statement mv11774)
   (:var mv11774 :isa there-exists :value mv11769 :predicate mv11767)
   (:var mv11769 :isa gene :predication mv11770 :raw-text "genes")
   (:var mv11770 :isa regulate :object mv11769 :agent mv11775 :past "PAST" :raw-text "regulated")
   (:var mv11775 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11765 mv11773))
   (:var mv11765 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11773 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11767 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv11791 :isa polar-question :statement mv11782)
   (:var mv11782 :isa bio-find :agent mv11780 :object mv11778 :modal "CAN" :raw-text "find")
   (:var mv11780 :isa interlocutor :name "hearer")
   (:var mv11778 :isa protein :quantifier mv11783 :cellular-process mv11784 :context mv11786
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11783 :isa any :word "any") (:var mv11784 :isa apoptosis :raw-text "apoptotic")
   (:var mv11786 :isa pathway :raw-text "pathways"))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv11826 :isa polar-question :statement mv11825) (:var mv11825 :isa look-up :actor mv11809)
   (:var mv11809 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv11836 :isa polar-question :statement mv11830)
   (:var mv11830 :isa show :agent mv11829 :|statement-OR-theme| mv11832 :beneficiary mv11831 :modal
    "CAN")
   (:var mv11829 :isa interlocutor :name "hearer")
   (:var mv11832 :isa gene :predication mv11833 :raw-text "genes")
   (:var mv11833 :isa regulate :object mv11832 :agent mv11827 :past "PAST" :raw-text "regulated")
   (:var mv11827 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11831 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv11849 :isa polar-question :statement mv11840)
   (:var mv11840 :isa show :agent mv11839 :|statement-OR-theme| mv11842 :beneficiary mv11841 :modal
    "CAN")
   (:var mv11839 :isa interlocutor :name "hearer")
   (:var mv11842 :isa gene :predication mv11847 :raw-text "genes")
   (:var mv11847 :isa regulate :object mv11842 :that-rel t :agent mv11837 :modal "CAN" :raw-text
    "regulated")
   (:var mv11837 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11841 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv11859 :isa polar-question :statement mv11852)
   (:var mv11852 :isa show :agent mv11851 :|statement-OR-theme| mv11855 :beneficiary mv11853 :modal
    "CAN")
   (:var mv11851 :isa interlocutor :name "hearer")
   (:var mv11855 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv11853 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv11870 :isa polar-question :statement mv11863)
   (:var mv11863 :isa tell :agent mv11862 :theme mv11866 :beneficiary mv11864 :modal "CAN")
   (:var mv11862 :isa interlocutor :name "hearer")
   (:var mv11866 :isa gene :predication mv11867 :has-determiner "THE" :raw-text "genes")
   (:var mv11867 :isa regulate :object mv11866 :agent mv11860 :past "PAST" :raw-text "regulated")
   (:var mv11860 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11864 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv11880 :isa polar-question :statement mv11874)
   (:var mv11874 :isa tell :agent mv11873 :theme mv11877 :beneficiary mv11875 :modal "CAN")
   (:var mv11873 :isa interlocutor :name "hearer")
   (:var mv11877 :isa gene :predication mv11879 :has-determiner "THE" :raw-text "genes")
   (:var mv11879 :isa regulate :object mv11877 :that-rel t :agent mv11871 :present "PRESENT"
    :raw-text "regulates")
   (:var mv11871 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11875 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv11894 :isa polar-question :statement mv11884)
   (:var mv11884 :isa tell :agent mv11883 :theme mv11887 :beneficiary mv11885 :modal "CAN")
   (:var mv11883 :isa interlocutor :name "hearer")
   (:var mv11887 :isa gene :predication mv11892 :has-determiner "THE" :raw-text "genes")
   (:var mv11892 :isa regulate :object mv11887 :that-rel t :agent mv11881 :modal "CAN" :raw-text
    "regulated")
   (:var mv11881 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11885 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv11909 :isa polar-question :statement mv11898)
   (:var mv11898 :isa tell :agent mv11897 :theme mv11901 :beneficiary mv11899 :modal "CAN")
   (:var mv11897 :isa interlocutor :name "hearer")
   (:var mv11901 :isa gene :predication mv11908 :has-determiner "THE" :raw-text "genes")
   (:var mv11908 :isa regulate :object mv11901 :agent mv11895 :modal mv11896 :raw-text "regulated")
   (:var mv11895 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11896 :isa can) (:var mv11899 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv11925 :isa polar-question :statement mv11914)
   (:var mv11914 :isa tell :agent mv11913 :theme mv11923 :theme mv11915 :modal "CAN")
   (:var mv11913 :isa interlocutor :name "hearer")
   (:var mv11923 :isa share :object mv11910 :participant mv11922 :modal "CAN" :raw-text "shared")
   (:var mv11910 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv11922 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv11911 mv11921))
   (:var mv11911 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv11921 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv11915 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv11938 :isa polar-question :statement mv11929)
   (:var mv11929 :isa tell :agent mv11928 :theme mv11936 :theme mv11930 :modal "CAN")
   (:var mv11928 :isa interlocutor :name "hearer")
   (:var mv11936 :isa regulate :object mv11932 :agent mv11926 :modal "CAN" :raw-text "regulated")
   (:var mv11932 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv11926 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11930 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv11955 :isa polar-question :statement mv11942)
   (:var mv11942 :isa tell :agent mv11941 :theme mv11952 :theme mv11943 :modal "CAN")
   (:var mv11941 :isa interlocutor :name "hearer")
   (:var mv11952 :isa regulate :object mv11945 :agent mv11939 :modal "CAN" :raw-text "regulated")
   (:var mv11945 :isa gene :organ mv11948 :has-determiner "WHICH" :raw-text "genes")
   (:var mv11948 :isa liver :has-determiner "THE")
   (:var mv11939 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11943 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv11964 :isa polar-question :statement mv11959)
   (:var mv11959 :isa tell :agent mv11958 :theme mv11962 :beneficiary mv11960 :modal "CAN")
   (:var mv11958 :isa interlocutor :name "hearer")
   (:var mv11962 :isa gene :predication mv11963 :has-determiner "WHICH" :raw-text "genes")
   (:var mv11963 :isa regulate :object mv11962 :agent mv11956 :present "PRESENT" :raw-text
    "regulates")
   (:var mv11956 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11960 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv11974 :isa polar-question :statement mv11972)
   (:var mv11972 :isa affect :agent mv11965 :affected-process mv11970 :raw-text "affect")
   (:var mv11965 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11970 :isa gene-transcript-express :object mv11966 :has-determiner "THE" :raw-text
    "expression")
   (:var mv11966 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv11986 :isa polar-question :statement mv11984)
   (:var mv11984 :isa affect :agent mv11975 :affected-process mv11980 :raw-text "affect")
   (:var mv11975 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11980 :isa gene-transcript-express :object mv11983 :has-determiner "THE" :raw-text
    "expression")
   (:var mv11983 :isa gene :has-determiner "THE" :expresses mv11976 :raw-text "gene")
   (:var mv11976 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv11999 :isa polar-question :statement mv11997)
   (:var mv11997 :isa increase :agent mv11987 :affected-process mv11993 :raw-text "increase")
   (:var mv11987 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv11993 :isa gene-transcript-express :object mv11996 :has-determiner "THE" :raw-text
    "expression")
   (:var mv11996 :isa gene :has-determiner "THE" :expresses mv11988 :raw-text "gene")
   (:var mv11988 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv12011 :isa polar-question :statement mv12009)
   (:var mv12009 :isa increase :agent mv12000 :affected-process mv12005 :raw-text "increase")
   (:var mv12000 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12005 :isa transcribe :object mv12008 :raw-text "transcription")
   (:var mv12008 :isa gene :has-determiner "THE" :expresses mv12001 :raw-text "gene")
   (:var mv12001 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv12021 :isa polar-question :statement mv12019)
   (:var mv12019 :isa affect :agent mv12012 :affected-process mv12016 :raw-text "affect")
   (:var mv12012 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12016 :isa gene-transcript-express :object mv12018 :has-determiner "THE" :raw-text
    "expression")
   (:var mv12018 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv12031 :isa polar-question :statement mv12030)
   (:var mv12030 :isa contain :theme mv12028 :patient mv12022)
   (:var mv12028 :isa pathway :has-determiner "THE" :modifier mv12025 :raw-text "pathway")
   (:var mv12025 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv12022 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv12034 :isa bio-find :object mv12036 :present "PRESENT" :raw-text "Find")
   (:var mv12036 :isa treatment :disease mv12032 :has-determiner "A" :raw-text "treatment")
   (:var mv12032 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv12041 :isa bio-find :object mv12042 :present "PRESENT" :raw-text "Find")
   (:var mv12042 :isa gene :predication mv12046 :organ mv12045 :raw-text "genes")
   (:var mv12046 :isa regulate :object mv12042 :agent mv12039 :past "PAST" :raw-text "regulated")
   (:var mv12039 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12045 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv12052 :isa bio-find :object mv12053 :present "PRESENT" :raw-text "Find")
   (:var mv12053 :isa gene :predication mv12055 :raw-text "genes")
   (:var mv12055 :isa regulate :object mv12053 :that-rel t :agent mv12050 :present "PRESENT"
    :raw-text "regulates")
   (:var mv12050 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv12059 :isa bio-find :object mv12056 :present "PRESENT" :raw-text "Find")
   (:var mv12056 :isa transcription-factor :predication mv12060 :raw-text "transcription factors")
   (:var mv12060 :isa share :object mv12056 :participant mv12064 :past "PAST" :raw-text "shared")
   (:var mv12064 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv12057 mv12063))
   (:var mv12057 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12063 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv12070 :isa bio-activate :manner mv12067 :agent mv12069 :object mv12066 :present
    "PRESENT" :raw-text "activate")
   (:var mv12067 :isa how)
   (:var mv12069 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12066 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv12075 :isa regulate :manner mv12073 :agent mv12071 :object mv12077 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12073 :isa how)
   (:var mv12071 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12077 :isa gene :has-determiner "THE" :expresses mv12072 :raw-text "gene")
   (:var mv12072 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv12092 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv12079 :object mv12096)
   (:var mv12079 :isa how) (:var mv12096 :isa cancer :modifier mv12083 :modifier mv12083)
   (:var mv12083 :isa cause :by-means-of mv12094 :raw-text "cause")
   (:var mv12094 :isa effect :object mv12091 :participant mv12087 :raw-text "effect")
   (:var mv12091 :isa micro-rna :raw-text "miRNAs")
   (:var mv12087 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv12100 :isa regulate :manner mv12098 :agent mv12097 :affected-process mv12101 :present
    "PRESENT" :raw-text "regulate")
   (:var mv12098 :isa how)
   (:var mv12097 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12101 :isa apoptosis :organ mv12104 :raw-text "apoptosis")
   (:var mv12104 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv12109 :isa regulate :manner mv12107 :agent mv12106 :affected-process mv12110 :present
    "PRESENT" :raw-text "regulate")
   (:var mv12107 :isa how)
   (:var mv12106 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12110 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv12114 :isa regulate :manner mv12112 :agent mv12111 :object mv12117 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12112 :isa how)
   (:var mv12111 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12117 :isa gene :cellular-process mv12115 :raw-text "genes")
   (:var mv12115 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv12127 :isa wh-question :statement mv12120 :wh how)
   (:var mv12120 :isa be :predicate mv12118 :present "PRESENT")
   (:var mv12118 :isa protein :predication mv12121 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv12121 :isa involve :object mv12118 :theme mv12125 :past "PAST")
   (:var mv12125 :isa regulate :cellular-process mv12123 :raw-text "regulation")
   (:var mv12123 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv12140 :isa wh-question :statement mv12130 :wh how)
   (:var mv12130 :isa be :predicate mv12128 :present "PRESENT")
   (:var mv12128 :isa protein :predication mv12131 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv12131 :isa involve :object mv12128 :theme mv12133 :past "PAST")
   (:var mv12133 :isa regulate :organ mv12136 :|agent-OR-object| mv12137 :raw-text "regulation")
   (:var mv12136 :isa liver :has-determiner "THE")
   (:var mv12137 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv12149 :isa wh-question :statement mv12143 :wh how)
   (:var mv12143 :isa be :predicate mv12141 :present "PRESENT")
   (:var mv12141 :isa protein :predication mv12144 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv12144 :isa involve :object mv12141 :theme mv12146 :past "PAST")
   (:var mv12146 :isa regulate :affected-process mv12147 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv12147 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv12158 :isa wh-question :statement mv12152 :wh how)
   (:var mv12152 :isa be :predicate mv12150 :present "PRESENT")
   (:var mv12150 :isa protein :predication mv12153 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv12153 :isa bio-use :object mv12150 :theme mv12157 :past "PAST" :raw-text "used")
   (:var mv12157 :isa regulate :affected-process mv12156 :raw-text "regulate")
   (:var mv12156 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv12169 :isa copular-predication-of-pp :item mv12161 :value mv12168 :prep "IN" :predicate
    mv12162)
   (:var mv12161 :isa gene :quantifier how-many :raw-text "genes")
   (:var mv12168 :isa gene :context mv12160 :quantifier how-many :raw-text "genes")
   (:var mv12160 :isa signaling-pathway :has-determiner "THE" :modifier mv12165 :raw-text
    "signaling pathway")
   (:var mv12165 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv12162 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv12178 :isa affect :manner mv12173 :modal mv12174 :agent mv12176 :object mv12172 :present
    "PRESENT" :raw-text "affect")
   (:var mv12173 :isa how) (:var mv12174 :isa might)
   (:var mv12176 :isa mutation :has-determiner "A" :|agent-OR-object| mv12171 :raw-text "mutation")
   (:var mv12171 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12172 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv12186 :isa polar-question :statement mv12181)
   (:var mv12181 :isa be :subject mv12179 :predicate mv12183)
   (:var mv12179 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12183 :isa regulator :theme mv12180 :has-determiner "A" :raw-text "regulator")
   (:var mv12180 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv12194 :isa polar-question :statement mv12189)
   (:var mv12189 :isa be :subject mv12187 :predicate mv12191)
   (:var mv12187 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12191 :isa regulator :theme mv12188 :has-determiner "A" :raw-text "regulator")
   (:var mv12188 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv12204 :isa polar-question :statement mv12197)
   (:var mv12197 :isa be :subject mv12195 :predicate mv12199)
   (:var mv12195 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12199 :isa regulator :theme mv12202 :has-determiner "A" :raw-text "regulator")
   (:var mv12202 :isa gene :has-determiner "THE" :expresses mv12196 :raw-text "gene")
   (:var mv12196 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv12214 :isa polar-question :statement mv12207)
   (:var mv12207 :isa be :subject mv12205 :predicate mv12209)
   (:var mv12205 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12209 :isa regulator :theme mv12212 :has-determiner "A" :raw-text "regulator")
   (:var mv12212 :isa gene :has-determiner "THE" :expresses mv12206 :raw-text "gene")
   (:var mv12206 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv12223 :isa polar-question :statement mv12218)
   (:var mv12218 :isa be :subject mv12215 :predicate mv12216)
   (:var mv12215 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12216 :isa transcription-factor :controlled-gene mv12221 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv12221 :isa gene :expresses mv12217 :raw-text "gene")
   (:var mv12217 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv12231 :isa polar-question :statement mv12227)
   (:var mv12227 :isa be :subject mv12224 :predicate mv12225)
   (:var mv12224 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12225 :isa transcription-factor :controlled-gene mv12226 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv12226 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv12239 :isa polar-question :statement mv12235)
   (:var mv12235 :isa be :subject mv12232 :predicate mv12233)
   (:var mv12232 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12233 :isa transcription-factor :controlled-gene mv12234 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv12234 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv12249 :isa polar-question :statement mv12243)
   (:var mv12243 :isa be :subject mv12240 :predicate mv12241)
   (:var mv12240 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12241 :isa transcription-factor :controlled-gene mv12247 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv12247 :isa gene :has-determiner "THE" :expresses mv12242 :raw-text "gene")
   (:var mv12242 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv12256 :isa polar-question :statement mv12253)
   (:var mv12253 :isa regulate :object mv12250 :agent mv12251 :past "PAST" :raw-text "regulated")
   (:var mv12250 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12251 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv12266 :isa polar-question :statement mv12260)
   (:var mv12260 :isa be :subject mv12257 :predicate mv12258)
   (:var mv12257 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12258 :isa transcription-factor :controlled-gene mv12264 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv12264 :isa gene :has-determiner "THE" :expresses mv12259 :raw-text "gene")
   (:var mv12259 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv12268 :isa list :theme mv12269 :present "PRESENT")
   (:var mv12269 :isa gene :predication mv12270 :raw-text "genes")
   (:var mv12270 :isa regulate :object mv12269 :agent mv12267 :past "PAST" :raw-text "regulated")
   (:var mv12267 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv12274 :isa list :theme mv12275 :present "PRESENT")
   (:var mv12275 :isa gene :predication mv12280 :raw-text "genes")
   (:var mv12280 :isa regulate :object mv12275 :that-rel t :agent mv12273 :present "PRESENT"
    :raw-text "regulated")
   (:var mv12273 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv12283 :isa list :theme mv12285 :present "PRESENT")
   (:var mv12285 :isa gene :predication mv12287 :quantifier mv12284 :raw-text "genes")
   (:var mv12287 :isa regulate :object mv12285 :that-rel t :agent mv12282 :present "PRESENT"
    :raw-text "regulates")
   (:var mv12282 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12284 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv12289 :isa list :theme mv12291 :present "PRESENT")
   (:var mv12291 :isa gene :predication mv12292 :has-determiner "THE" :raw-text "genes")
   (:var mv12292 :isa regulate :object mv12291 :agent mv12288 :present "PRESENT" :raw-text
    "regulates")
   (:var mv12288 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv12294 :isa list :theme mv12296 :present "PRESENT")
   (:var mv12296 :isa gene :predication mv12301 :has-determiner "THE" :raw-text "genes")
   (:var mv12301 :isa regulate :object mv12296 :that-rel t :agent mv12293 :present "PRESENT"
    :raw-text "regulated")
   (:var mv12293 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv12304 :isa list :theme mv12306 :present "PRESENT")
   (:var mv12306 :isa gene :predication mv12308 :has-determiner "THE" :raw-text "genes")
   (:var mv12308 :isa regulate :object mv12306 :agent mv12303 :present "PRESENT" :raw-text
    "regulates")
   (:var mv12303 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv12309 :isa list :theme mv12311 :present "PRESENT")
   (:var mv12311 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv12316 :isa show :|statement-OR-theme| mv12318 :beneficiary mv12317 :present "PRESENT")
   (:var mv12318 :isa gene :predication mv12319 :raw-text "genes")
   (:var mv12319 :isa regulate :object mv12318 :agent mv12315 :past "PAST" :raw-text "regulated")
   (:var mv12315 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12317 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv12323 :isa show :|statement-OR-theme| mv12325 :beneficiary mv12324 :present "PRESENT")
   (:var mv12325 :isa gene :predication mv12330 :raw-text "genes")
   (:var mv12330 :isa regulate :object mv12325 :that-rel t :agent mv12322 :present "PRESENT"
    :raw-text "regulated")
   (:var mv12322 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12324 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv12333 :isa show :|statement-OR-theme| mv12335 :beneficiary mv12334 :present "PRESENT")
   (:var mv12335 :isa gene :predication mv12337 :raw-text "genes")
   (:var mv12337 :isa regulate :object mv12335 :that-rel t :agent mv12332 :present "PRESENT"
    :raw-text "regulates")
   (:var mv12332 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12334 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv12338 :isa show :|statement-OR-theme| mv12341 :beneficiary mv12339 :present "PRESENT")
   (:var mv12341 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv12339 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv12358 :isa show :statement mv12356 :theme mv12348 :present "PRESENT")
   (:var mv12356 :isa share :object mv12345 :participant mv12355 :present "PRESENT" :raw-text
    "shared")
   (:var mv12345 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12355 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv12346 mv12354))
   (:var mv12346 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12354 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12348 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv12369 :isa show :statement mv12367 :theme mv12361 :present "PRESENT")
   (:var mv12367 :isa regulate :object mv12363 :agent mv12359 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12363 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv12359 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12361 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv12371 :isa show :|statement-OR-theme| mv12373 :present "PRESENT")
   (:var mv12373 :isa gene :predication mv12375 :has-determiner "THE" :raw-text "genes")
   (:var mv12375 :isa regulate :object mv12373 :agent mv12370 :present "PRESENT" :raw-text
    "regulates")
   (:var mv12370 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv12376 :isa show :|statement-OR-theme| mv12378 :present "PRESENT")
   (:var mv12378 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv12384 :isa show :|statement-OR-theme| mv12382 :present "PRESENT")
   (:var mv12382 :isa transcription-factor :predication mv12392 :raw-text "transcription factors")
   (:var mv12392 :isa share :object mv12382 :that-rel t :participant mv12391 :present "PRESENT"
    :raw-text "shared")
   (:var mv12391 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv12383 mv12390))
   (:var mv12383 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12390 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv12395 :isa tell :theme mv12398 :beneficiary mv12396 :present "PRESENT")
   (:var mv12398 :isa gene :predication mv12405 :has-determiner "THE" :raw-text "genes")
   (:var mv12405 :isa regulate :object mv12398 :agent mv12394 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12394 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12396 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv12407 :isa tell :theme mv12417 :theme mv12408 :present "PRESENT")
   (:var mv12417 :isa regulate :object mv12410 :agent mv12416 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12410 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv12416 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv12406 mv12415))
   (:var mv12406 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12415 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12408 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv12420 :isa tell :theme mv12427 :theme mv12421 :present "PRESENT")
   (:var mv12427 :isa regulate :object mv12423 :agent mv12419 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12423 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv12419 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12421 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv12431 :isa be :subject mv12430 :predicate mv12429 :present "PRESENT")
   (:var mv12430 :isa what)
   (:var mv12429 :isa positive-regulator :theme mv12433 :raw-text "positive regulators")
   (:var mv12433 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv12437 :isa be :subject mv12436 :predicate mv12439 :present "PRESENT")
   (:var mv12436 :isa what)
   (:var mv12439 :isa regulator :theme mv12435 :quantifier mv12438 :raw-text "regulators")
   (:var mv12435 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv12438 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv12448 :isa be :subject mv12447 :predicate mv12451 :present "PRESENT")
   (:var mv12447 :isa what)
   (:var mv12451 :isa regulator :theme mv12455 :has-determiner "THE" :predication mv12450 :raw-text
    "regulators")
   (:var mv12455 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv12442 mv12443 mv12453 mv12444 mv12445 mv12446))
   (:var mv12442 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv12443 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv12453 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv12444 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv12445 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv12446 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv12450 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv12459 :isa be :subject mv12458 :predicate mv12462 :present "PRESENT")
   (:var mv12458 :isa what)
   (:var mv12462 :isa regulator :theme mv12466 :has-determiner "THE" :predication mv12461 :raw-text
    "regulators")
   (:var mv12466 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv12457 mv12465))
   (:var mv12457 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12465 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12461 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv12470 :isa be :subject mv12469 :predicate mv12473 :present "PRESENT")
   (:var mv12469 :isa what)
   (:var mv12473 :isa regulator :theme mv12477 :has-determiner "THE" :predication mv12472 :raw-text
    "regulators")
   (:var mv12477 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv12468 mv12476))
   (:var mv12468 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv12476 :isa bio-entity :name "srg") (:var mv12472 :isa common))
  ("What are the common regulators of those genes"
   (:var mv12480 :isa be :subject mv12479 :predicate mv12483 :present "PRESENT")
   (:var mv12479 :isa what)
   (:var mv12483 :isa regulator :theme mv12486 :has-determiner "THE" :predication mv12482 :raw-text
    "regulators")
   (:var mv12486 :isa gene :has-determiner "THOSE" :raw-text "genes") (:var mv12482 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv12490 :isa be :subject mv12489 :predicate mv12492 :present "PRESENT")
   (:var mv12489 :isa what)
   (:var mv12492 :isa gene :predication mv12493 :has-determiner "THE" :raw-text "genes")
   (:var mv12493 :isa regulate :object mv12492 :agent mv12488 :past "PAST" :raw-text "regulated")
   (:var mv12488 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv12498 :isa be :subject mv12497 :predicate mv12500 :present "PRESENT")
   (:var mv12497 :isa what)
   (:var mv12500 :isa gene :predication mv12502 :has-determiner "THE" :raw-text "genes")
   (:var mv12502 :isa regulate :object mv12500 :agent mv12496 :present "PRESENT" :raw-text
    "regulates")
   (:var mv12496 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv12507 :isa be :subject mv12506 :predicate mv12511 :present "PRESENT")
   (:var mv12506 :isa what)
   (:var mv12511 :isa regulator :theme mv12516 :has-determiner "THE" :modifier mv12510 :raw-text
    "regulators")
   (:var mv12516 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv12513 mv12514 mv12503 mv12504 mv12505))
   (:var mv12513 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv12514 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12503 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12504 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv12505 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv12510 :isa frequent :comparative mv12509 :name "frequent")
   (:var mv12509 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv12523 :isa be :subject mv12522 :predicate mv12518 :present "PRESENT")
   (:var mv12522 :isa what)
   (:var mv12518 :isa transcription-factor :predication mv12526 :has-determiner "THE" :raw-text
    "transcription factors")
   (:var mv12526 :isa regulate :agent mv12518 :that-rel t :object mv12530 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12530 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv12527 mv12528 mv12519 mv12520 mv12521))
   (:var mv12527 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv12528 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv12519 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12520 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv12521 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv12542 :isa copular-predication-of-pp :item mv12533 :value mv12541 :prep "IN" :predicate
    mv12534)
   (:var mv12533 :isa gene :has-determiner "WHAT" :modifier mv12532 :raw-text "genes")
   (:var mv12532 :isa other :name "other")
   (:var mv12541 :isa gene :context mv12538 :has-determiner "WHAT" :modifier mv12532 :raw-text
    "genes")
   (:var mv12538 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv12534 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv12555 :isa copular-predication-of-pp :item mv12546 :value mv12554 :prep "IN" :predicate
    mv12547)
   (:var mv12546 :isa protein :has-determiner "WHAT" :modifier mv12545 :raw-text "proteins")
   (:var mv12545 :isa other :name "other")
   (:var mv12554 :isa protein :in-pathway mv12551 :has-determiner "WHAT" :modifier mv12545
    :raw-text "proteins")
   (:var mv12551 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv12547 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv12559 :isa be :subject mv12558 :predicate mv12560 :present "PRESENT")
   (:var mv12558 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12560 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv12564 :isa involve :theme mv12563 :object mv12565 :present "PRESENT")
   (:var mv12563 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12565 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv12576 :isa copular-predication-of-pp :item mv12567 :value mv12575 :prep "IN" :predicate
    mv12568)
   (:var mv12567 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12575 :isa protein :in-pathway mv12572 :has-determiner "WHAT" :raw-text "proteins")
   (:var mv12572 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv12568 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv12581 :isa involve :theme mv12580 :object mv12578 :present "PRESENT")
   (:var mv12580 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12578 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv12592 :isa copular-predication-of-pp :item mv12583 :value mv12591 :prep "IN" :predicate
    mv12584)
   (:var mv12583 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv12591 :isa gene :context mv12588 :has-determiner "WHAT" :raw-text "genes")
   (:var mv12588 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv12584 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv12604 :isa answer :patient mv12595 :modal mv12597 :agent mv12598 :theme mv12602 :present
    "PRESENT")
   (:var mv12595 :isa bio-question :has-determiner "WHAT") (:var mv12597 :isa can)
   (:var mv12598 :isa interlocutor :name "hearer")
   (:var mv12602 :isa micro-rna :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv12608 :isa regulate :agent mv12605 :object mv12606 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12605 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12606 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
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
   (:var mv12612 :isa regulate :location mv12610 :agent mv12609 :object mv12613 :present "PRESENT"
    :raw-text "regulate")
   (:var mv12610 :isa where)
   (:var mv12609 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12613 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv12617 :isa involve :theme mv12616 :object mv12618 :present "PRESENT")
   (:var mv12616 :isa pathway :has-determiner "WHICH" :modifier mv12615 :raw-text "pathways")
   (:var mv12615 :isa database :name "KEGG" :uid "KEGG")
   (:var mv12618 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv12629 :isa copular-predication-of-pp :item mv12621 :value mv12628 :prep "IN" :predicate
    mv12622)
   (:var mv12621 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv12628 :isa gene :context mv12619 :has-determiner "WHICH" :raw-text "genes")
   (:var mv12619 :isa signaling-pathway :has-determiner "THE" :modifier mv12625 :raw-text
    "signaling pathway")
   (:var mv12625 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv12622 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv12640 :isa involve :object mv12633 :|context-OR-theme| mv12631 :present "PRESENT")
   (:var mv12633 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv12631 :isa signaling-pathway :has-determiner "THE" :predication mv12638 :modifier
    mv12639 :raw-text "signaling pathway")
   (:var mv12638 :isa oncogenic)
   (:var mv12639 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv12644 :isa regulate :agent mv12643 :object mv12645 :present "PRESENT" :raw-text
    "regulate")
   (:var mv12643 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv12645 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv12646 :isa downregulate :agent mv12648 :object mv12649 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv12648 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv12649 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv12650 :isa upregulate :agent mv12652 :object mv12653 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv12652 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv12653 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv12662 :isa copular-predication-of-pp :item mv12656 :value mv12660 :prep mv12658
    :predicate mv12657)
   (:var mv12656 :isa these :quantifier mv12654 :word "these") (:var mv12654 :isa which)
   (:var mv12660 :isa pathway :modifier mv12659 :raw-text "pathways")
   (:var mv12659 :isa immune :name "immune") (:var mv12658 :isa in :word "in")
   (:var mv12657 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv12672 :isa copular-predication-of-pp :item mv12667 :value mv12670 :prep mv12669
    :predicate mv12668)
   (:var mv12667 :isa these :quantifier mv12665 :word "these") (:var mv12665 :isa which)
   (:var mv12670 :isa pathway :non-cellular-location mv12664 :raw-text "pathways")
   (:var mv12664 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv12669 :isa in :word "in") (:var mv12668 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv12676 :isa be :subject mv12675 :predicate mv12678 :present "PRESENT")
   (:var mv12675 :isa what)
   (:var mv12678 :isa gene :predication mv12679 :has-determiner "THE" :raw-text "genes")
   (:var mv12679 :isa regulate :object mv12678 :agent mv12674 :present "PRESENT" :raw-text
    "regulates")
   (:var mv12674 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv12689 :isa copular-predication-of-pp :item mv12682 :value mv12687 :prep mv12684
    :predicate mv12683)
   (:var mv12682 :isa those :quantifier mv12680 :word "those") (:var mv12680 :isa which)
   (:var mv12687 :isa pathway :has-determiner "THE" :modifier mv12686 :raw-text "pathway")
   (:var mv12686 :isa immune :name "immune") (:var mv12684 :isa in :word "in")
   (:var mv12683 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv12694 :isa involve :theme mv12693 :object mv12691 :present "PRESENT")
   (:var mv12693 :isa pathway :has-determiner "WHICH" :raw-text "pathways")
   (:var mv12691 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv12704 :isa polar-question :statement mv12697)
   (:var mv12697 :isa show :agent mv12696 :|statement-OR-theme| mv12700 :beneficiary mv12698 :modal
    "CAN")
   (:var mv12696 :isa interlocutor :name "hearer")
   (:var mv12700 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv12698 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv12710 :isa polar-question :statement mv12709)
   (:var mv12709 :isa inhibit :agent mv12707 :object mv12705 :raw-text "inhibit")
   (:var mv12707 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv12705 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv12720 :isa explicit-suggestion :suggestion mv12712 :marker let-as-directive)
   (:var mv12712 :isa build :artifact mv12714 :present "PRESENT")
   (:var mv12714 :isa model :object mv12718 :has-determiner "A")
   (:var mv12718 :isa neighborhood :has-determiner "THE" :modifier mv12717)
   (:var mv12717 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv12738 :isa collection :type know :number 2 :items (mv12736 mv12737))
   (:var mv12736 :isa know :agent mv12721 :statement mv12727 :present "PRESENT")
   (:var mv12721 :isa interlocutor :name "speaker")
   (:var mv12727 :isa bio-activate :agent mv12726 :object mv12728 :present "PRESENT" :raw-text
    "activates")
   (:var mv12726 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12728 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv12737 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv12730 mv12734))
   (:var mv12730 :isa bio-activate :agent mv12729 :object mv12731 :present "PRESENT" :raw-text
    "activates")
   (:var mv12729 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv12731 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv12734 :isa bio-activate :agent mv12733 :object mv12735 :present "PRESENT" :raw-text
    "activates")
   (:var mv12733 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv12735 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv12741 :isa phosphorylate :agent mv12739 :substrate mv12740 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv12739 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv12740 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv12744 :isa dephosphorylate :agent mv12742 :substrate mv12743 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv12742 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv12743 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv12755 :isa polar-question :statement mv12754)
   (:var mv12754 :isa copular-predication :item mv12748 :value mv12752 :predicate mv12746)
   (:var mv12748 :isa bio-amount :measured-item mv12745 :has-determiner "THE" :raw-text "amount")
   (:var mv12745 :isa protein :predication mv12750 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv12750 :isa phosphorylate :substrate mv12745 :raw-text "phosphorylated")
   (:var mv12752 :isa high :adverb mv12751) (:var mv12751 :isa always :name "always")
   (:var mv12746 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv12766 :isa polar-question :statement mv12765)
   (:var mv12765 :isa copular-predication :item mv12759 :value mv12763 :predicate mv12757)
   (:var mv12759 :isa bio-amount :measured-item mv12756 :has-determiner "THE" :raw-text "amount")
   (:var mv12756 :isa protein :predication mv12761 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv12761 :isa phosphorylate :substrate mv12756 :raw-text "phosphorylated")
   (:var mv12763 :isa low :adverb mv12762) (:var mv12762 :isa always :name "always")
   (:var mv12757 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv12776 :isa polar-question :statement mv12775)
   (:var mv12775 :isa vanish :agent mv12774 :raw-text "vanish")
   (:var mv12774 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv12768
    :component mv12767)
   (:var mv12768 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv12767 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv12786 :isa polar-question :statement mv12785)
   (:var mv12785 :isa vanish :agent mv12784 :raw-text "vanish")
   (:var mv12784 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv12778
    :component mv12777)
   (:var mv12778 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv12777 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv12816 :isa polar-question :statement mv12815)
   (:var mv12815 :isa event-relation :subordinated-event mv12812 :event mv12808)
   (:var mv12812 :isa wh-question :statement mv12809 :wh if)
   (:var mv12809 :isa increase :|agent-OR-cause| mv12796 :|multiplier-OR-cause| mv12807
    :|affected-process-OR-object| mv12800 :raw-text "increase")
   (:var mv12796 :isa interlocutor :name "person-and-machine")
   (:var mv12807 :isa measurement :number mv12804) (:var mv12804 :isa number :value 10)
   (:var mv12800 :isa bio-amount :measured-item mv12788 :has-determiner "THE" :raw-text "amount")
   (:var mv12788 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv12808 :isa vanish :cause mv12791 :raw-text "vanish")
   (:var mv12791 :isa bio-amount :measured-item mv12787 :has-determiner "THE" :raw-text "amount")
   (:var mv12787 :isa protein :predication mv12793 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv12793 :isa phosphorylate :substrate mv12787 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv12818 :isa show :|statement-OR-theme| mv12825 :beneficiary mv12819 :present "PRESENT")
   (:var mv12825 :isa evidence :statement mv12824 :has-determiner "THE")
   (:var mv12824 :isa regulate :agent mv12823 :object mv12817 :present "PRESENT" :raw-text
    "regulates")
   (:var mv12823 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv12817 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv12819 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv12829 :isa increase :|agent-OR-cause| mv12827 :|affected-process-OR-object| mv12831
    :present "PRESENT" :raw-text "increases")
   (:var mv12827 :isa what)
   (:var mv12831 :isa bio-amount :measured-item mv12826 :has-determiner "THE" :raw-text "amount")
   (:var mv12826 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv12844 :isa copular-predication-of-pp :item mv12836 :value mv12843 :prep "IN" :predicate
    mv12837)
   (:var mv12836 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv12843 :isa kinase :in-pathway mv12834 :has-determiner "WHICH" :raw-text "kinases")
   (:var mv12834 :isa signaling-pathway :has-determiner "THE" :modifier mv12840 :raw-text
    "signaling pathway")
   (:var mv12840 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv12837 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv12857 :isa polar-question :statement mv12855)
   (:var mv12855 :isa regulate :agent mv12846 :object mv12851 :raw-text "regulate")
   (:var mv12846 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12851 :isa gene :organ mv12854 :has-determiner "THE" :expresses mv12847 :raw-text
    "gene")
   (:var mv12854 :isa liver :has-determiner "THE")
   (:var mv12847 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv12864 :isa regulate :object mv12860 :agent mv12858 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12860 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv12858 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv12873 :isa regulate :|affected-process-OR-object| mv12869 :agent mv12866 :present
    "PRESENT" :raw-text "regulated")
   (:var mv12869 :isa these :quantifier mv12867 :word "these") (:var mv12867 :isa which)
   (:var mv12866 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv12881 :isa regulate :|agent-OR-cause| mv12878 :object mv12882 :present "PRESENT" :adverb
    mv12879 :raw-text "regulate")
   (:var mv12878 :isa these :quantifier mv12876 :word "these") (:var mv12876 :isa which)
   (:var mv12882 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv12879 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv12887 :isa transcribe :agent mv12884 :object mv12885 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv12884 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12885 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv12891 :isa transcribe :agent mv12888 :object mv12889 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv12888 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv12889 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv12895 :isa utilize :participant mv12894 :object mv12896 :present "PRESENT" :raw-text
    "utilize")
   (:var mv12894 :isa pathway :has-determiner "WHICH" :modifier mv12893 :raw-text "pathways")
   (:var mv12893 :isa database :name "KEGG" :uid "KEGG")
   (:var mv12896 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv12908 :isa copular-predication-of-pp :item mv12897 :value mv12907 :prep "IN" :predicate
    mv12899)
   (:var mv12897 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12907 :isa transcription-factor :in-pathway mv12904 :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv12904 :isa pathway :has-determiner "THE" :predication mv12903 :raw-text "pathways")
   (:var mv12903 :isa regulate :affected-process mv12904 :agent mv12902 :raw-text "regulated")
   (:var mv12902 :isa calcium :raw-text "calcium") (:var mv12899 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv12913 :isa involve :theme mv12912 :object mv12910 :present "PRESENT")
   (:var mv12912 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12910 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv12920 :isa involve :theme mv12919 :object mv12923 :present "PRESENT")
   (:var mv12919 :isa pathway :has-determiner "WHAT" :modifier mv12918 :raw-text "pathways")
   (:var mv12918 :isa database :name "KEGG" :uid "KEGG")
   (:var mv12923 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv12915 mv12921 mv12916))
   (:var mv12915 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv12921 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv12916 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv12931 :isa share :object mv12925 :participant mv12930 :present "PRESENT" :raw-text
    "shared")
   (:var mv12925 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv12930 :isa gene :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv12939 :isa regulate :object mv12934 :agent mv12938 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12934 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv12938 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv12942 :isa be :subject mv12941 :predicate mv12944 :present "PRESENT")
   (:var mv12941 :isa what)
   (:var mv12944 :isa pathway :pathwaycomponent mv12947 :predication mv12943 :raw-text "pathways")
   (:var mv12947 :isa gene :has-determiner "THESE" :raw-text "genes") (:var mv12943 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv12961 :isa share :object mv12954 :participant mv12959 :present "PRESENT" :raw-text
    "shared")
   (:var mv12954 :isa pathway :has-determiner "WHICH" :modifier mv12953 :raw-text "pathways")
   (:var mv12953 :isa immune :name "immune")
   (:var mv12959 :isa gene :expresses mv12960 :raw-text "genes")
   (:var mv12960 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv12949 mv12950 mv12951))
   (:var mv12949 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12950 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv12951 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv12970 :isa regulate :object mv12966 :agent mv12964 :present "PRESENT" :raw-text
    "regulated")
   (:var mv12966 :isa phosphatase :has-determiner "WHAT" :enzyme mv12963 :raw-text "phosphatase")
   (:var mv12963 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv12964 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv12976 :isa involve :theme mv12975 :object mv12972 :present "PRESENT")
   (:var mv12975 :isa pathway :has-determiner "WHAT" :modifier mv12974 :raw-text "pathways")
   (:var mv12974 :isa database :name "Reactome" :uid "Reactome")
   (:var mv12972 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv12981 :isa polar-question :statement mv12978)
   (:var mv12978 :isa be :subject mv12977 :predicate mv12980)
   (:var mv12977 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12980 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv12986 :isa polar-question :statement mv12984)
   (:var mv12984 :isa be :subject mv12982 :predicate mv12983)
   (:var mv12982 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv12983 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv12990 :isa be :subject mv12989 :predicate mv12992 :present "PRESENT")
   (:var mv12989 :isa these :quantifier mv12987 :word "these") (:var mv12987 :isa which)
   (:var mv12992 :isa kinase :enzyme mv12991 :raw-text "kinases")
   (:var mv12991 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv12998 :isa be :subject mv12997 :predicate mv12994 :present "PRESENT")
   (:var mv12997 :isa these :quantifier mv12995 :word "these") (:var mv12995 :isa which)
   (:var mv12994 :isa protein-family :raw-text "tyrosine kinases" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are serine/threonine kinases?"
   (:var mv13003 :isa be :subject mv13002 :predicate mv13006 :present "PRESENT")
   (:var mv13002 :isa these :quantifier mv13000 :word "these") (:var mv13000 :isa which)
   (:var mv13006 :isa kinase :amino-acid mv13007 :raw-text "kinases")
   (:var mv13007 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv13004 mv13005))
   (:var mv13004 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv13005 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv13012 :isa be :subject mv13011 :predicate mv13013 :present "PRESENT")
   (:var mv13011 :isa these :quantifier mv13009 :word "these") (:var mv13009 :isa which)
   (:var mv13013 :isa phosphatase :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv13018 :isa be :subject mv13017 :predicate mv13019 :present "PRESENT")
   (:var mv13017 :isa these :quantifier mv13015 :word "these") (:var mv13015 :isa which)
   (:var mv13019 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv13024 :isa be :subject mv13023 :predicate mv13025 :present "PRESENT")
   (:var mv13023 :isa these :quantifier mv13021 :word "these") (:var mv13021 :isa which)
   (:var mv13025 :isa receptor :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv13031 :isa be :subject mv13030 :predicate mv13032 :present "PRESENT")
   (:var mv13030 :isa these :quantifier mv13028 :word "these") (:var mv13028 :isa which)
   (:var mv13032 :isa receptor :modifier mv13027 :raw-text "receptors")
   (:var mv13027 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv13038 :isa be :subject mv13037 :predicate mv13034 :present "PRESENT")
   (:var mv13037 :isa these :quantifier mv13035 :word "these") (:var mv13035 :isa which)
   (:var mv13034 :isa protein-family :raw-text "histone demethylases" :name "histone demethylase"
    :uid "GO:0032452"))
  ("Which of these are histone methylases?"
   (:var mv13044 :isa be :subject mv13043 :predicate mv13040 :present "PRESENT")
   (:var mv13043 :isa these :quantifier mv13041 :word "these") (:var mv13041 :isa which)
   (:var mv13040 :isa protein-family :raw-text "histone methylases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are histone methyltransferases?"
   (:var mv13050 :isa be :subject mv13049 :predicate mv13046 :present "PRESENT")
   (:var mv13049 :isa these :quantifier mv13047 :word "these") (:var mv13047 :isa which)
   (:var mv13046 :isa protein-family :raw-text "histone methyltransferases" :name
    "histone methyltransferase" :uid "GO:0042054"))
  ("Which of these are demethylases?"
   (:var mv13055 :isa be :subject mv13054 :predicate mv13056 :present "PRESENT")
   (:var mv13054 :isa these :quantifier mv13052 :word "these") (:var mv13052 :isa which)
   (:var mv13056 :isa protein-family :raw-text "demethylases" :name "demethylase" :uid
    "GO:0032451"))
  ("Which of these are methylases?"
   (:var mv13061 :isa be :subject mv13060 :predicate mv13062 :present "PRESENT")
   (:var mv13060 :isa these :quantifier mv13058 :word "these") (:var mv13058 :isa which)
   (:var mv13062 :isa protein-family :raw-text "methylases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are methyltransferases?"
   (:var mv13067 :isa be :subject mv13066 :predicate mv13068 :present "PRESENT")
   (:var mv13066 :isa these :quantifier mv13064 :word "these") (:var mv13064 :isa which)
   (:var mv13068 :isa protein-family :raw-text "methyltransferases" :name "methyltransferase" :uid
    "GO:0008168"))
  ("Which of these are steroid receptors?"
   (:var mv13073 :isa be :subject mv13072 :predicate mv13075 :present "PRESENT")
   (:var mv13072 :isa these :quantifier mv13070 :word "these") (:var mv13070 :isa which)
   (:var mv13075 :isa receptor :modifier mv13074 :raw-text "receptors")
   (:var mv13074 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv13081 :isa be :subject mv13080 :predicate mv13077 :present "PRESENT")
   (:var mv13080 :isa these :quantifier mv13078 :word "these") (:var mv13078 :isa which)
   (:var mv13077 :isa protein-family :raw-text "receptor tyrosine kinases" :name
    "receptor tyrosine kinase" :count 2 :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :uid "NCIT:C17660"))
  ("Which of these are transcription factors?"
   (:var mv13087 :isa be :subject mv13086 :predicate mv13083 :present "PRESENT")
   (:var mv13086 :isa these :quantifier mv13084 :word "these") (:var mv13084 :isa which)
   (:var mv13083 :isa transcription-factor :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv13093 :isa be :subject mv13092 :predicate mv13094 :present "PRESENT")
   (:var mv13092 :isa these :quantifier mv13090 :word "these") (:var mv13090 :isa which)
   (:var mv13094 :isa protein :modifier mv13089 :raw-text "proteins")
   (:var mv13089 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv13099 :isa be :subject mv13098 :predicate mv13102 :present "PRESENT")
   (:var mv13098 :isa these :quantifier mv13096 :word "these") (:var mv13096 :isa which)
   (:var mv13102 :isa phosphatase :modifier mv13103 :raw-text "phosphatases")
   (:var mv13103 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv13100 mv13101))
   (:var mv13100 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv13101 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv13108 :isa be :subject mv13107 :predicate mv13110 :present "PRESENT")
   (:var mv13107 :isa these :quantifier mv13105 :word "these") (:var mv13105 :isa which)
   (:var mv13110 :isa phosphatase :modifier mv13109 :raw-text "phosphatases")
   (:var mv13109 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv13115 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv13112 :agent mv13114
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv13112 :isa what)
   (:var mv13114 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv13124 :isa gene-transcript-express :object mv13118 :organ mv13123 :present "PRESENT"
    :adverb mv13120 :raw-text "expressed")
   (:var mv13118 :isa these :quantifier mv13116 :word "these") (:var mv13116 :isa which)
   (:var mv13123 :isa liver) (:var mv13120 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv13129 :isa regulate :|agent-OR-cause| mv13128 :object mv13127 :present "PRESENT"
    :raw-text "regulates")
   (:var mv13128 :isa what)
   (:var mv13127 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv13132 :isa increase :|agent-OR-cause| mv13130 :|affected-process-OR-object| mv13134
    :present "PRESENT" :raw-text "increases")
   (:var mv13130 :isa what)
   (:var mv13134 :isa bio-amount :measured-item mv13136 :has-determiner "THE" :raw-text "amount")
   (:var mv13136 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv13139 :isa upregulate :|agent-OR-cause| mv13138 :object mv13140 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv13138 :isa what)
   (:var mv13140 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv13142 :isa downregulate :|agent-OR-cause| mv13141 :object mv13143 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv13141 :isa what)
   (:var mv13143 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv13145 :isa decrease :|agent-OR-cause| mv13144 :|affected-process-OR-object| mv13147
    :present "PRESENT" :raw-text "decreases")
   (:var mv13144 :isa what)
   (:var mv13147 :isa bio-amount :measured-item mv13149 :has-determiner "THE" :raw-text "amount")
   (:var mv13149 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv13152 :isa regulate :|agent-OR-cause| mv13151 :object mv13153 :present "PRESENT"
    :raw-text "regulates")
   (:var mv13151 :isa what)
   (:var mv13153 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv13155 :isa regulate :|agent-OR-cause| mv13154 :object mv13156 :present "PRESENT"
    :raw-text "regulates")
   (:var mv13154 :isa what)
   (:var mv13156 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv13163 :isa regulate :|agent-OR-cause| mv13162 :object mv13164 :present "PRESENT"
    :raw-text "regulates")
   (:var mv13162 :isa what)
   (:var mv13164 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv13170 :isa regulate :agent mv13169 :object mv13173 :present "PRESENT" :raw-text
    "regulate")
   (:var mv13169 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv13173 :isa gene :has-determiner "THE" :expresses mv13172 :raw-text "gene")
   (:var mv13172 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv13174 :isa downregulate :agent mv13176 :object mv13179 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv13176 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv13179 :isa gene :has-determiner "THE" :expresses mv13178 :raw-text "gene")
   (:var mv13178 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv13182 :isa be :subject mv13181 :predicate mv13180 :present "PRESENT")
   (:var mv13181 :isa what)
   (:var mv13180 :isa positive-regulator :theme mv13186 :raw-text "positive regulators")
   (:var mv13186 :isa gene :has-determiner "THE" :expresses mv13185 :raw-text "gene")
   (:var mv13185 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv13190 :isa transcribe :|agent-OR-cause| mv13189 :object mv13188 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv13189 :isa what)
   (:var mv13188 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv13193 :isa show :|statement-OR-theme| mv13204 :beneficiary mv13194 :present "PRESENT")
   (:var mv13204 :isa evidence :statement mv13199 :has-determiner "THE")
   (:var mv13199 :isa increase :agent mv13191 :|affected-process-OR-object| mv13201 :present
    "PRESENT" :raw-text "increases")
   (:var mv13191 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv13201 :isa bio-amount :measured-item mv13192 :has-determiner "THE" :raw-text "amount")
   (:var mv13192 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv13194 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv13206 :isa show :|statement-OR-theme| mv13209 :beneficiary mv13207 :present "PRESENT")
   (:var mv13209 :isa evidence :has-determiner "THE")
   (:var mv13207 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv13219 :isa be :subject mv13218 :predicate mv13225 :present "PRESENT")
   (:var mv13218 :isa what) (:var mv13225 :isa evidence :statement mv13224 :has-determiner "THE")
   (:var mv13224 :isa regulate :agent mv13223 :object mv13217 :present "PRESENT" :raw-text
    "regulates")
   (:var mv13223 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv13217 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv13227 :isa be :subject mv13226 :predicate mv13236 :present "PRESENT")
   (:var mv13226 :isa what) (:var mv13236 :isa evidence :statement mv13232 :has-determiner "THE")
   (:var mv13232 :isa binding :binder mv13231 :direct-bindee mv13235 :present "PRESENT" :raw-text
    "binds")
   (:var mv13231 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv13235 :isa gene :has-determiner "THE" :expresses mv13234 :raw-text "gene")
   (:var mv13234 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv13244 :isa gene-transcript-express :object mv13238 :organ mv13243 :present "PRESENT"
    :adverb mv13240 :raw-text "expressed")
   (:var mv13238 :isa gene :has-determiner "WHAT" :raw-text "genes") (:var mv13243 :isa liver)
   (:var mv13240 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv13252 :isa polar-question :statement mv13248)
   (:var mv13248 :isa gene-transcript-express :object mv13246 :organ mv13250 :past "PAST" :raw-text
    "expressed")
   (:var mv13246 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13250 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv13261 :isa polar-question :statement mv13259)
   (:var mv13259 :isa gene-transcript-express :object mv13253 :organ mv13258 :adverb mv13255
    :raw-text "expressed")
   (:var mv13253 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13258 :isa liver) (:var mv13255 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv13266 :isa affect :manner mv13264 :agent mv13262 :object mv13263 :present "PRESENT"
    :raw-text "affect")
   (:var mv13264 :isa how)
   (:var mv13262 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv13263 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv13271 :isa affect :manner mv13268 :agent mv13270 :object mv13267 :present "PRESENT"
    :raw-text "affect")
   (:var mv13268 :isa how)
   (:var mv13270 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13267 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv13275 :isa be :subject mv13274 :predicate mv13280 :present "PRESENT")
   (:var mv13274 :isa what)
   (:var mv13280 :isa regulator :theme mv13283 :has-determiner "THE" :predication mv13277 :context
    mv13278 :raw-text "regulators")
   (:var mv13283 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv13272 mv13273))
   (:var mv13272 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv13273 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv13277 :isa common) (:var mv13278 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv13288 :isa be :subject mv13287 :predicate mv13290 :present "PRESENT")
   (:var mv13287 :isa what) (:var mv13290 :isa path :endpoints mv13293 :has-determiner "THE")
   (:var mv13293 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv13285 mv13286))
   (:var mv13285 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv13286 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv13300 :isa polar-question :statement mv13299)
   (:var mv13299 :isa affect :agent mv13295 :object mv13298 :raw-text "affect")
   (:var mv13295 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv13298 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv13302 :isa regulate :agent mv13301 :object mv13303 :present "PRESENT" :raw-text
    "regulates")
   (:var mv13301 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv13303 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv13305 :isa upregulate :agent mv13304 :object mv13306 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv13304 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv13306 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv13307 :isa upregulate :agent mv13309 :object mv13308 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv13309 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv13308 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv13319 :isa polar-question :statement mv13318)
   (:var mv13318 :isa regulate :agent mv13313 :object mv13317 :raw-text "regulate")
   (:var mv13313 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv13317 :isa gene :has-determiner "THE" :expresses mv13311 :raw-text "gene")
   (:var mv13311 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv13321 :isa show :|statement-OR-theme| mv13329 :beneficiary mv13322 :present "PRESENT")
   (:var mv13329 :isa evidence :statement mv13328 :has-determiner "THE")
   (:var mv13328 :isa regulate :agent mv13326 :object mv13320 :present "PRESENT" :raw-text
    "regulates")
   (:var mv13326 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv13320 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv13322 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv13337 :isa polar-question :statement mv13336)
   (:var mv13336 :isa regulate :agent mv13332 :object mv13335 :raw-text "regulate")
   (:var mv13332 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13335 :isa gene :has-determiner "THE" :expresses mv13330 :raw-text "gene")
   (:var mv13330 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv13340 :isa decrease :agent mv13339 :|affected-process-OR-object| mv13342 :present
    "PRESENT" :raw-text "decreases")
   (:var mv13339 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13342 :isa bio-amount :measured-item mv13338 :has-determiner "THE" :raw-text "amount")
   (:var mv13338 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv13350 :isa polar-question :statement mv13349)
   (:var mv13349 :isa regulate :agent mv13348 :object mv13347 :raw-text "regulate")
   (:var mv13348 :isa bio-entity :name "TNG")
   (:var mv13347 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv13358 :isa polar-question :statement mv13357)
   (:var mv13357 :isa regulate :agent mv13352 :object mv13356 :raw-text "regulate")
   (:var mv13352 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv13356 :isa gene :has-determiner "THE" :expresses mv13355 :raw-text "gene")
   (:var mv13355 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv13360 :isa be :subject mv13359 :predicate mv13362 :present "PRESENT")
   (:var mv13359 :isa what)
   (:var mv13362 :isa pathway :pathwaycomponent mv13367 :has-determiner "THE" :raw-text "pathways")
   (:var mv13367 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv13364 mv13366))
   (:var mv13364 :isa bio-entity :name "TNG")
   (:var mv13366 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv13370 :isa be :subject mv13369 :predicate mv13372 :present "PRESENT")
   (:var mv13369 :isa what)
   (:var mv13372 :isa pathway :pathwaycomponent mv13377 :has-determiner "THE" :raw-text "pathways")
   (:var mv13377 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv13374 mv13376))
   (:var mv13374 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv13376 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv13385 :isa polar-question :statement mv13384)
   (:var mv13384 :isa regulate :agent mv13380 :object mv13383 :raw-text "regulate")
   (:var mv13380 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv13383 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv13394 :isa polar-question :statement mv13393)
   (:var mv13393 :isa regulate :agent mv13387 :object mv13392 :raw-text "regulate")
   (:var mv13387 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv13392 :isa gene :has-determiner "THE" :expresses mv13391 :raw-text "gene")
   (:var mv13391 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv13407 :isa copular-predication-of-pp :item mv13396 :value mv13406 :prep "BETWEEN"
    :predicate mv13397)
   (:var mv13396 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv13406 :isa pathway :pathwaycomponent mv13403 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv13403 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv13400 mv13402))
   (:var mv13400 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv13402 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13397 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv13413 :isa affect :manner mv13409 :agent mv13411 :object mv13414 :present "PRESENT"
    :raw-text "affect")
   (:var mv13409 :isa how)
   (:var mv13411 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv13414 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv13416 :isa bio-activate :agent mv13415 :object mv13417 :present "PRESENT" :raw-text
    "activates")
   (:var mv13415 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv13417 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv13419 :isa bio-activate :agent mv13418 :object mv13420 :present "PRESENT" :raw-text
    "activates")
   (:var mv13418 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv13420 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv13422 :isa be :subject mv13421 :predicate mv13424 :present "PRESENT")
   (:var mv13421 :isa what) (:var mv13424 :isa path :endpoints mv13429 :has-determiner "THE")
   (:var mv13429 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv13426 mv13428))
   (:var mv13426 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv13428 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv13436 :isa polar-question :statement mv13435)
   (:var mv13435 :isa regulate :agent mv13432 :object mv13434 :raw-text "regulate")
   (:var mv13432 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv13434 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv13441 :isa affect :manner mv13439 :agent mv13437 :object mv13438 :present "PRESENT"
    :raw-text "affect")
   (:var mv13439 :isa how)
   (:var mv13437 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv13438 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv13443 :isa bio-activate :agent mv13442 :object mv13444 :present "PRESENT" :raw-text
    "activates")
   (:var mv13442 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv13444 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv13448 :isa decrease :agent mv13447 :|affected-process-OR-object| mv13450 :present
    "PRESENT" :raw-text "decreases")
   (:var mv13447 :isa protein-family :predication mv13446 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13446 :isa active)
   (:var mv13450 :isa bio-amount :measured-item mv13445 :has-determiner "THE" :raw-text "amount")
   (:var mv13445 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv13456 :isa be :subject mv13455 :predicate mv13459 :present "PRESENT")
   (:var mv13455 :isa what)
   (:var mv13459 :isa upstream-segment :pathwaycomponent mv13462 :has-determiner "THE" :predication
    mv13458 :raw-text "upstreams")
   (:var mv13462 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv13453 mv13454))
   (:var mv13453 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv13454 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv13458 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv13468 :isa affect :manner mv13466 :agent mv13464 :object mv13465 :present "PRESENT"
    :raw-text "affect")
   (:var mv13466 :isa how)
   (:var mv13464 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv13465 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv13474 :isa polar-question :statement mv13473)
   (:var mv13473 :isa regulate :agent mv13469 :object mv13470 :raw-text "regulate")
   (:var mv13469 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv13470 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv13482 :isa polar-question :statement mv13481)
   (:var mv13481 :isa regulate :agent mv13475 :object mv13480 :raw-text "regulate")
   (:var mv13475 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv13480 :isa gene :has-determiner "THE" :expresses mv13476 :raw-text "gene")
   (:var mv13476 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv13487 :isa affect :manner mv13485 :agent mv13483 :object mv13484 :present "PRESENT"
    :raw-text "affect")
   (:var mv13485 :isa how)
   (:var mv13483 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv13484 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv13490 :isa be :subject mv13489 :predicate mv13492 :present "PRESENT")
   (:var mv13489 :isa what) (:var mv13492 :isa path :endpoints mv13496 :has-determiner "THE")
   (:var mv13496 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv13494 mv13488))
   (:var mv13494 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv13488 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv13507 :isa polar-question :statement mv13505)
   (:var mv13505 :isa regulate :agent mv13500 :affected-process mv13503 :raw-text "regulate")
   (:var mv13500 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13503 :isa gene-transcript-express :object mv13498 :has-determiner "THE" :raw-text
    "expression")
   (:var mv13498 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv13511 :isa decrease :agent mv13510 :affected-process mv13513 :present "PRESENT"
    :raw-text "decreases")
   (:var mv13510 :isa protein-family :predication mv13509 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13509 :isa active)
   (:var mv13513 :isa gene-transcript-express :object mv13508 :has-determiner "THE" :raw-text
    "expression")
   (:var mv13508 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv13519 :isa decrease :agent mv13518 :|affected-process-OR-object| mv13521 :present
    "PRESENT" :raw-text "decreases")
   (:var mv13518 :isa protein-family :predication mv13517 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13517 :isa active)
   (:var mv13521 :isa bio-amount :measured-item mv13516 :has-determiner "THE" :raw-text "amount")
   (:var mv13516 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv13527 :isa decrease :agent mv13526 :|affected-process-OR-object| mv13529 :present
    "PRESENT" :raw-text "decreases")
   (:var mv13526 :isa protein-family :predication mv13525 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13525 :isa active)
   (:var mv13529 :isa bio-amount :measured-item mv13524 :has-determiner "THE" :raw-text "amount")
   (:var mv13524 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv13534 :isa inhibit :agent mv13532 :affected-process mv13536 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv13532 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv13536 :isa bio-activity :participant mv13533 :has-determiner "THE" :raw-text "activity")
   (:var mv13533 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv13550 :isa polar-question :statement mv13548)
   (:var mv13548 :isa decrease :agent mv13539 :object mv13540 :raw-text "decrease")
   (:var mv13539 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv13540 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv13561 :isa polar-question :statement mv13559)
   (:var mv13559 :isa decrease :agent mv13551 :object mv13552 :raw-text "decrease")
   (:var mv13551 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv13552 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv13563 :isa bio-activate :agent mv13562 :object mv13564 :present "PRESENT" :raw-text
    "activates")
   (:var mv13562 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv13564 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv13570 :isa want :agent mv13567 :theme mv13581 :present "PRESENT")
   (:var mv13567 :isa interlocutor :name "speaker")
   (:var mv13581 :isa find-out :agent mv13567 :statement mv13578)
   (:var mv13578 :isa wh-question :statement mv13577 :var nil :wh how)
   (:var mv13577 :isa decrease :agent mv13576 :object mv13566 :present "PRESENT" :raw-text
    "decreases")
   (:var mv13576 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv13566 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv13586 :isa want :agent mv13583 :theme mv13601 :present "PRESENT")
   (:var mv13583 :isa interlocutor :name "speaker")
   (:var mv13601 :isa find-out :agent mv13583 :statement mv13598)
   (:var mv13598 :isa wh-question :statement mv13593 :var nil :wh how)
   (:var mv13593 :isa decrease :agent mv13592 :object mv13594 :present "PRESENT" :raw-text
    "decreases")
   (:var mv13592 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv13594 :isa protein :cell-type mv13596 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv13596 :isa cell-type :cell-line mv13582)
   (:var mv13582 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv13607 :isa want :agent mv13604 :theme mv13621 :present "PRESENT")
   (:var mv13604 :isa interlocutor :name "speaker")
   (:var mv13621 :isa find-out :agent mv13604 :statement mv13618)
   (:var mv13618 :isa wh-question :statement mv13613 :var nil :wh how)
   (:var mv13613 :isa bio-activate :agent mv13602 :object mv13614 :present "PRESENT" :raw-text
    "activates")
   (:var mv13602 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv13614 :isa protein :cell-type mv13616 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv13616 :isa cell-type :cell-line mv13603)
   (:var mv13603 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv13627 :isa polar-question :statement mv13626)
   (:var mv13626 :isa phosphorylate :agent mv13623 :substrate mv13625 :raw-text "phosphorylate")
   (:var mv13623 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv13625 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv13635 :isa polar-question :statement mv13634)
   (:var mv13634 :isa inhibit :agent mv13628 :object mv13633 :raw-text "inhibit")
   (:var mv13628 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13633 :isa gene :has-determiner "THE" :expresses mv13629 :raw-text "gene")
   (:var mv13629 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv13643 :isa polar-question :statement mv13642)
   (:var mv13642 :isa stimulate :agent mv13636 :object mv13641 :raw-text "stimulate")
   (:var mv13636 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv13641 :isa gene :has-determiner "THE" :expresses mv13637 :raw-text "gene")
   (:var mv13637 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv13648 :isa want :agent mv13645 :theme mv13664 :present "PRESENT")
   (:var mv13645 :isa interlocutor :name "speaker")
   (:var mv13664 :isa find-out :agent mv13645 :statement mv13661)
   (:var mv13661 :isa wh-question :statement mv13655 :var nil :wh how)
   (:var mv13655 :isa decrease :agent mv13654 :object mv13656 :present "PRESENT" :raw-text
    "decreases")
   (:var mv13654 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv13656 :isa protein :cell-type mv13659 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv13659 :isa cell-type :cell-line mv13644 :associated-disease mv13658)
   (:var mv13644 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv13658 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv13669 :isa polar-question :statement mv13666)
   (:var mv13666 :isa be :subject mv13667 :predicate mv13665)
   (:var mv13667 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv13665 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv13671 :isa list :theme mv13674 :present "PRESENT")
   (:var mv13674 :isa gene :predication mv13675 :quantifier mv13672 :has-determiner "THE" :raw-text
    "genes")
   (:var mv13675 :isa regulate :object mv13674 :agent mv13679 :past "PAST" :raw-text "regulated")
   (:var mv13679 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv13670 mv13678))
   (:var mv13670 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv13678 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv13672 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv13682 :isa list :theme mv13686 :present "PRESENT")
   (:var mv13686 :isa gene :predication mv13687 :quantifier mv13683 :has-determiner "THE" :raw-text
    "genes")
   (:var mv13687 :isa regulate :object mv13686 :agent mv13691 :past "PAST" :raw-text "regulated")
   (:var mv13691 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv13681 mv13690))
   (:var mv13681 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv13690 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv13683 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv13697 :isa show :|statement-OR-theme| mv13700 :beneficiary mv13698 :present "PRESENT")
   (:var mv13700 :isa mutation :object mv13705 :has-determiner "THE" :raw-text "mutations")
   (:var mv13705 :isa collection :context mv13696 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv13695 mv13703))
   (:var mv13696 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv13695 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv13703 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv13698 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv13711 :isa be :subject mv13710 :predicate mv13713 :present "PRESENT")
   (:var mv13710 :isa what)
   (:var mv13713 :isa mutation :object mv13718 :has-determiner "THE" :raw-text "mutations")
   (:var mv13718 :isa collection :context mv13709 :raw-text "TP53 and BRAF" :type protein :number 2
    :items (mv13708 mv13716))
   (:var mv13709 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv13708 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv13716 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv13725 :isa be :subject mv13724 :predicate mv13732 :present "PRESENT")
   (:var mv13724 :isa what)
   (:var mv13732 :isa gene :disease mv13723 :has-determiner "THE" :predication mv13721 :raw-text
    "genes")
   (:var mv13723 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv13721 :isa mutual-exclusivity :alternative mv13722)
   (:var mv13722 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv13737 :isa be :subject mv13736 :predicate mv13744 :present "PRESENT")
   (:var mv13736 :isa what)
   (:var mv13744 :isa gene :has-determiner "THE" :predication mv13733 :raw-text "genes")
   (:var mv13733 :isa mutual-exclusivity :alternative mv13734)
   (:var mv13734 :isa protein :context mv13735 :raw-text "CDH1" :uid "UP:P12830" :name
    "CADH1_HUMAN")
   (:var mv13735 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("What downregulates it?"
   (:var mv13746 :isa downregulate :|agent-OR-cause| mv13745 :|affected-process-OR-object| mv13747
    :present "PRESENT" :raw-text "downregulates")
   (:var mv13745 :isa what) (:var mv13747 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv13751 :isa have :possessor mv13750 :thing-possessed mv13753 :present "PRESENT")
   (:var mv13750 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv13753 :isa evidence :fact mv13756 :predication mv13752)
   (:var mv13756 :isa regulate :agent mv13748 :progressive mv13755 :raw-text "regulated")
   (:var mv13748 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv13755 :isa be) (:var mv13752 :isa strong))
  ("What increases the amount of myc"
   (:var mv13762 :isa increase :|agent-OR-cause| mv13760 :|affected-process-OR-object| mv13764
    :present "PRESENT" :raw-text "increases")
   (:var mv13760 :isa what)
   (:var mv13764 :isa bio-amount :measured-item mv13766 :has-determiner "THE" :raw-text "amount")
   (:var mv13766 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv13770 :isa inhibit :|agent-OR-cause| mv13769 :object mv13768 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv13769 :isa what)
   (:var mv13768 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv13774 :isa be :subject mv13773 :predicate mv13786 :present "PRESENT")
   (:var mv13773 :isa what) (:var mv13786 :isa quality-predicate :item mv13784 :attribute mv13780)
   (:var mv13784 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv13771 mv13782 mv13772))
   (:var mv13771 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv13782 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv13772 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv13780 :isa location-of :has-determiner "THE" :predication mv13778 :modifier mv13779)
   (:var mv13778 :isa likely :comparative mv13776)
   (:var mv13776 :isa superlative-quantifier :name "most")
   (:var mv13779 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv13789 :isa be :subject mv13788 :predicate mv13798 :present "PRESENT")
   (:var mv13788 :isa what) (:var mv13798 :isa quality-predicate :item mv13787 :attribute mv13795)
   (:var mv13787 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv13795 :isa location-of :has-determiner "THE" :predication mv13793 :modifier mv13794)
   (:var mv13793 :isa likely :comparative mv13791)
   (:var mv13791 :isa superlative-quantifier :name "most")
   (:var mv13794 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv13802 :isa be :subject mv13801 :predicate mv13805 :present "PRESENT")
   (:var mv13801 :isa what)
   (:var mv13805 :isa significance :agent mv13799 :has-determiner "THE" :modifier mv13804)
   (:var mv13799 :isa protein :context mv13800 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv13800 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv13804 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv13817 :isa regulate :|affected-process-OR-object| mv13813 :agent mv13810 :present
    "PRESENT" :raw-text "regulated")
   (:var mv13813 :isa those :quantifier mv13811 :word "those") (:var mv13811 :isa which)
   (:var mv13810 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv13833 :isa copular-predication-of-pp :item mv13824 :value mv13832 :prep "IN" :predicate
    mv13825)
   (:var mv13824 :isa gene :quantifier mv13821 :has-determiner "THOSE" :raw-text "genes")
   (:var mv13821 :isa which)
   (:var mv13832 :isa gene :context mv13820 :quantifier mv13821 :has-determiner "THOSE" :raw-text
    "genes")
   (:var mv13820 :isa signaling-pathway :has-determiner "THE" :modifier mv13828 :raw-text
    "signaling pathway")
   (:var mv13828 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv13825 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv13844 :isa copular-predication-of-pp :item mv13838 :value mv13842 :prep mv13840
    :predicate mv13839)
   (:var mv13838 :isa these :quantifier mv13836 :word "these") (:var mv13836 :isa which)
   (:var mv13842 :isa pathway :has-determiner "THE" :modifier mv13835 :raw-text "pathway")
   (:var mv13835 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv13840 :isa in :word "in") (:var mv13839 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv13853 :isa gene-transcript-express :object mv13848 :organ mv13852 :present "PRESENT"
    :raw-text "expressed")
   (:var mv13848 :isa pronoun/plural :quantifier mv13846 :word "them") (:var mv13846 :isa which)
   (:var mv13852 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv13868 :isa regulate :|affected-process-OR-object| mv13860 :agent mv13867 :present
    "PRESENT" :superlative mv13862 :adverb mv13863 :raw-text "regulated")
   (:var mv13860 :isa pronoun/plural :quantifier mv13858 :word "them") (:var mv13858 :isa which)
   (:var mv13867 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv13856 mv13857))
   (:var mv13856 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv13857 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv13862 :isa superlative-quantifier :name "most")
   (:var mv13863 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv13875 :isa target :agent mv13871 :object mv13872 :present "PRESENT" :raw-text "target")
   (:var mv13871 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv13872 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv13881 :isa target :|agent-OR-cause| mv13879 :object mv13876 :present "PRESENT" :raw-text
    "target")
   (:var mv13879 :isa those :quantifier mv13877 :word "those") (:var mv13877 :isa which)
   (:var mv13876 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv13884 :isa be :subject mv13883 :predicate mv13885 :present "PRESENT")
   (:var mv13883 :isa what)
   (:var mv13885 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv13888 :isa be :subject mv13887 :predicate mv13886 :present "PRESENT")
   (:var mv13887 :isa what)
   (:var mv13886 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv13894 :isa do :patient mv13889 :present "PRESENT")
   (:var mv13889 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv13904 :isa polar-question :statement mv13902)
   (:var mv13902 :isa there-exists :value mv13900 :predicate mv13897)
   (:var mv13900 :isa inhibitor :protein mv13895 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv13895 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv13897 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv13906 :isa name-something :patient mv13910 :present "PRESENT")
   (:var mv13910 :isa drug :predication mv13912 :quantifier mv13909 :raw-text "drugs")
   (:var mv13912 :isa inhibit :agent mv13910 :that-rel t :object mv13905 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv13905 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv13909 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv13920 :isa polar-question :statement mv13919)
   (:var mv13919 :isa there-exists :value mv13918 :predicate mv13915)
   (:var mv13918 :isa inhibitor :quantifier mv13917 :protein mv13913 :raw-text "inhibitors")
   (:var mv13917 :isa any :word "any")
   (:var mv13913 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv13915 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv13930 :isa polar-question :statement mv13928)
   (:var mv13928 :isa there-exists :value mv13924 :predicate mv13922)
   (:var mv13924 :isa target-protein :agent mv13927 :raw-text "targets")
   (:var mv13927 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv13922 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv13934 :isa inhibit :|affected-process-OR-object| mv13931 :agent mv13933 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv13931 :isa what)
   (:var mv13933 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv13939 :isa target :|affected-process-OR-object| mv13935 :agent mv13937 :present
    "PRESENT" :raw-text "target")
   (:var mv13935 :isa what)
   (:var mv13937 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv13946 :isa polar-question :statement mv13945)
   (:var mv13945 :isa target :agent mv13941 :object mv13944 :raw-text "target")
   (:var mv13941 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv13944 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv13949 :isa be :subject mv13948 :predicate mv13951 :present "PRESENT")
   (:var mv13948 :isa what)
   (:var mv13951 :isa target-protein :quantifier mv13950 :treatment mv13954 :raw-text "targets")
   (:var mv13950 :isa some :word "some")
   (:var mv13954 :isa treatment :disease mv13947 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv13947 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv13958 :isa be :subject mv13957 :predicate mv13960 :present "PRESENT")
   (:var mv13957 :isa what)
   (:var mv13960 :isa target-protein :quantifier mv13959 :disease mv13956 :raw-text "targets")
   (:var mv13959 :isa some :word "some")
   (:var mv13956 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv13969 :isa lead :agent mv13966 :theme mv13972 :modal mv13968 :raw-text "lead")
   (:var mv13966 :isa target-protein :has-determiner "WHAT" :raw-text "targets")
   (:var mv13972 :isa development :disease mv13964 :has-determiner "THE" :raw-text "development")
   (:var mv13964 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv13968 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv13980 :isa lead :agent mv13978 :theme mv13983 :modal mv13979 :raw-text "lead")
   (:var mv13978 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv13983 :isa development :disease mv13976 :has-determiner "THE" :raw-text "development")
   (:var mv13976 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv13979 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv13992 :isa lead :agent mv13990 :theme mv13987 :modal mv13991 :raw-text "lead")
   (:var mv13990 :isa gene :has-determiner "WHAT" :predication mv13989 :raw-text "genes")
   (:var mv13989 :isa mutation :object mv13990 :raw-text "mutated")
   (:var mv13987 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv13991 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv13997 :isa be :subject mv13996 :predicate mv14001 :present "PRESENT")
   (:var mv13996 :isa what)
   (:var mv14001 :isa mutation :predication mv14003 :has-determiner "THE" :modifier mv13999
    :|agent-OR-object| mv14000 :raw-text "mutation")
   (:var mv14003 :isa lead :agent mv14001 :that-rel t :theme mv13995 :present "PRESENT" :raw-text
    "leads")
   (:var mv13995 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv13999 :isa top-qua-location) (:var mv14000 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv14012 :isa like :agent mv14007 :modal mv14010)
   (:var mv14007 :isa interlocutor :name "speaker") (:var mv14010 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv14033 :isa bio-use :patient mv14023 :modal mv14024 :agent mv14025 :theme mv14032
    :present "PRESENT" :raw-text "use")
   (:var mv14023 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv14024 :isa could)
   (:var mv14025 :isa interlocutor :name "speaker")
   (:var mv14032 :isa treatment :disease mv14021 :raw-text "treat")
   (:var mv14021 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv14036 :isa be :subject mv14035 :predicate mv14038 :present "PRESENT")
   (:var mv14035 :isa what)
   (:var mv14038 :isa drug :treatment mv14040 :quantifier mv14037 :raw-text "drugs")
   (:var mv14040 :isa treatment :disease mv14034 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv14034 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv14037 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv14048 :isa like :agent mv14044 :modal mv14055)
   (:var mv14044 :isa interlocutor :name "speaker") (:var mv14055 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv14059 :isa how))
  ("Does MEK act on ERK?" (:var mv14069 :isa polar-question :statement mv14067)
   (:var mv14067 :isa bio-act :agent mv14063 :acted-on mv14066 :raw-text "act")
   (:var mv14063 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14066 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv14074 :isa explicit-suggestion :suggestion mv14071 :marker let-as-directive)
   (:var mv14071 :isa build :artifact mv14073 :present "PRESENT")
   (:var mv14073 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv14077 :isa bio-activate :agent mv14076 :object mv14075 :present "PRESENT" :raw-text
    "activates")
   (:var mv14076 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14075 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv14079 :isa bio-activate :agent mv14078 :object mv14080 :present "PRESENT" :raw-text
    "activates")
   (:var mv14078 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv14080 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv14081 :isa remove :object mv14088 :present "PRESENT" :raw-text "Remove")
   (:var mv14088 :isa fact :statement mv14086 :has-determiner "THE")
   (:var mv14086 :isa bio-activate :agent mv14085 :object mv14087 :present "PRESENT" :raw-text
    "activates")
   (:var mv14085 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv14087 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv14100 :isa polar-question :statement mv14091)
   (:var mv14091 :isa tell :agent mv14090 :theme mv14099 :theme mv14092 :modal "CAN")
   (:var mv14090 :isa interlocutor :name "hearer")
   (:var mv14099 :isa copular-predication-of-pp :item mv14093 :value mv14097 :prep mv14095
    :predicate mv14094)
   (:var mv14093 :isa what) (:var mv14097 :isa model :has-determiner "THE")
   (:var mv14095 :isa in :word "in") (:var mv14094 :isa be :modal "CAN")
   (:var mv14092 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv14104 :isa summarize :statement mv14103 :present "PRESENT")
   (:var mv14103 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv14109 :isa summarize :statement mv14108 :present "PRESENT")
   (:var mv14108 :isa model :has-determiner "THE" :predication mv14107)
   (:var mv14107 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv14111 :isa phosphorylate :|agent-OR-cause| mv14110 :substrate mv14112 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv14110 :isa what)
   (:var mv14112 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv14114 :isa binding :binder mv14113 :direct-bindee mv14115 :present "PRESENT" :raw-text
    "binds")
   (:var mv14113 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv14115 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv14120 :isa bio-activate :object mv14116 :present "PRESENT" :raw-text "activated")
   (:var mv14116 :isa protein :predication mv14117 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv14117 :isa phosphorylate :substrate mv14116 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv14124 :isa dephosphorylate :agent mv14121 :substrate mv14122 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv14121 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv14122 :isa protein :predication mv14130 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv14130 :isa binding :direct-bindee mv14122 :that-rel t :bindee mv14123 :present "PRESENT"
    :negation mv14127 :raw-text "bound")
   (:var mv14123 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv14127 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv14141 :isa phosphorylate :agent mv14132 :substrate mv14134 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv14132 :isa protein :predication mv14142 :predication mv14135 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv14142 :isa binding :direct-bindee mv14132 :that-rel t :bindee mv14133 :present "PRESENT"
    :negation mv14138 :raw-text "bound")
   (:var mv14133 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv14138 :isa not :word "not") (:var mv14135 :isa active)
   (:var mv14134 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv14148 :isa bio-activate :object mv14144 :present "PRESENT" :raw-text "activated")
   (:var mv14144 :isa protein :predication mv14145 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv14145 :isa phosphorylate :substrate mv14144 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv14152 :isa dephosphorylate :agent mv14149 :substrate mv14150 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv14149 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv14150 :isa protein :predication mv14158 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv14158 :isa binding :direct-bindee mv14150 :that-rel t :bindee mv14151 :present "PRESENT"
    :negation mv14155 :raw-text "bound")
   (:var mv14151 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv14155 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv14173 :isa phosphorylate :agent mv14161 :substrate mv14160 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv14161 :isa protein :predication mv14176 :mutation mv14175 :raw-text "BRAF" :uid
    "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14176 :isa binding :direct-bindee mv14161 :that-rel t :bindee mv14172 :present "PRESENT"
    :negation mv14169 :raw-text "bound")
   (:var mv14172 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv14169 :isa not :word "not")
   (:var mv14175 :isa point-mutated-protein :position mv14164 :new-amino-acid mv14166
    :original-amino-acid mv14162)
   (:var mv14164 :isa number :value 600)
   (:var mv14166 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv14162 :isa amino-acid :name "valine" :letter "V")
   (:var mv14160 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv14182 :isa copular-predication :item mv14178 :value mv14181 :predicate mv14180)
   (:var mv14178 :isa protein :predication mv14179 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv14179 :isa phosphorylate :substrate mv14178 :raw-text "Phosphorylated")
   (:var mv14181 :isa active) (:var mv14180 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv14185 :isa phosphorylate :agent mv14183 :substrate mv14184 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv14183 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv14184 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv14194 :isa explicit-suggestion :suggestion mv14188 :marker let-as-directive)
   (:var mv14188 :isa move-something-somewhere :goal mv14192 :theme mv14187 :present "PRESENT")
   (:var mv14192 :isa top-qua-location :has-determiner "THE")
   (:var mv14187 :isa protein :predication mv14189 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv14189 :isa phosphorylate :substrate mv14187 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv14202 :isa explicit-suggestion :suggestion mv14197 :marker let-as-directive)
   (:var mv14197 :isa move-something-somewhere :at-relative-location mv14200 :theme mv14196
    :present "PRESENT")
   (:var mv14200 :isa top-qua-location)
   (:var mv14196 :isa protein :predication mv14198 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv14198 :isa phosphorylate :substrate mv14196 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv14204 :isa show :at-relative-location mv14206 :|statement-OR-theme| mv14203 :present
    "PRESENT")
   (:var mv14206 :isa top-qua-location)
   (:var mv14203 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv14215 :isa explicit-suggestion :suggestion mv14210 :marker let-as-directive)
   (:var mv14210 :isa highlight :theme mv14211 :present "PRESENT")
   (:var mv14211 :isa upstream-segment :pathwaycomponent mv14209 :raw-text "upstream")
   (:var mv14209 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv14224 :isa explicit-suggestion :suggestion mv14217 :marker let-as-directive)
   (:var mv14217 :isa move-something-somewhere :goal mv14222 :theme mv14219 :present "PRESENT")
   (:var mv14222 :isa top-qua-location :has-determiner "THE")
   (:var mv14219 :isa element :modifier mv14218) (:var mv14218 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv14227 :isa be :subject mv14226 :predicate mv14230 :present "PRESENT")
   (:var mv14226 :isa what)
   (:var mv14230 :isa downstream-segment :pathwaycomponent mv14234 :has-determiner "THE"
    :predication mv14229 :raw-text "downstreams")
   (:var mv14234 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv14225 mv14233))
   (:var mv14225 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv14233 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14229 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv14249 :isa polar-question :statement mv14246)
   (:var mv14246 :isa there-exists :value mv14242 :predicate mv14239)
   (:var mv14242 :isa upstream-segment :pathwaycomponent mv14247 :predication mv14241 :raw-text
    "upstreams")
   (:var mv14247 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv14236 mv14244 mv14237))
   (:var mv14236 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv14244 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14237 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv14241 :isa common) (:var mv14239 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv14254 :isa be :subject mv14253 :predicate mv14259 :present "PRESENT")
   (:var mv14253 :isa what)
   (:var mv14259 :isa regulator :theme mv14262 :has-determiner "THE" :predication mv14256 :context
    mv14257 :raw-text "regulators")
   (:var mv14262 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv14250 mv14251 mv14252))
   (:var mv14250 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv14251 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv14252 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv14256 :isa common) (:var mv14257 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv14267 :isa be :subject mv14266 :predicate mv14271 :present "PRESENT")
   (:var mv14266 :isa what)
   (:var mv14271 :isa regulator :theme mv14274 :predication mv14268 :context mv14269 :raw-text
    "regulators")
   (:var mv14274 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv14264 mv14265))
   (:var mv14264 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv14265 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv14268 :isa common) (:var mv14269 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv14281 :isa be :subject mv14280 :predicate mv14276 :present "PRESENT")
   (:var mv14280 :isa what)
   (:var mv14276 :isa protein-family :molecule-type mv14287 :predication mv14282 :context mv14283
    :raw-text "transcriptional regulators" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv14287 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv14277 mv14278 mv14279))
   (:var mv14277 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv14278 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv14279 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv14282 :isa common) (:var mv14283 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv14292 :isa be :subject mv14291 :predicate mv14294 :present "PRESENT")
   (:var mv14291 :isa what)
   (:var mv14294 :isa mutation :object mv14300 :has-determiner "THE" :raw-text "mutations")
   (:var mv14300 :isa collection :context mv14290 :raw-text "PTEN, TP53 and BRAF" :type protein
    :number 3 :items (mv14296 mv14289 mv14298))
   (:var mv14290 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv14296 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv14289 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv14298 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv14306 :isa be :subject mv14305 :predicate mv14309 :present "PRESENT")
   (:var mv14305 :isa what)
   (:var mv14309 :isa frequency :measured-item mv14303 :has-determiner "THE" :measured-item mv14308
    :raw-text "frequency")
   (:var mv14303 :isa protein :context mv14304 :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv14304 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv14308 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv14324 :isa copular-predication :item mv14318 :value mv14314 :predicate mv14319)
   (:var mv14318 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv14314 :isa mutual-exclusivity :disease mv14316 :alternative mv14315)
   (:var mv14316 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv14315 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv14319 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv14335 :isa copular-predication :item mv14329 :value mv14325 :predicate mv14330)
   (:var mv14329 :isa gene :has-determiner "WHICH" :raw-text "genes")
   (:var mv14325 :isa mutual-exclusivity :alternative mv14326)
   (:var mv14326 :isa protein :context mv14327 :raw-text "CDH1" :uid "UP:P12830" :name
    "CADH1_HUMAN")
   (:var mv14327 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv14330 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv14338 :isa be :subject mv14337 :predicate mv14344 :present "PRESENT")
   (:var mv14337 :isa what) (:var mv14344 :isa quality-predicate :item mv14336 :attribute mv14341)
   (:var mv14336 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv14341 :isa location-of :has-determiner "THE" :modifier mv14340)
   (:var mv14340 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv14348 :isa regulate :manner mv14345 :agent mv14347 :object mv14349 :present "PRESENT"
    :raw-text "regulate")
   (:var mv14345 :isa how)
   (:var mv14347 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv14349 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv14351 :isa be :subject mv14350 :predicate mv14352 :present "PRESENT")
   (:var mv14350 :isa what)
   (:var mv14352 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv14364 :isa polar-question :statement mv14353)
   (:var mv14353 :isa be :subject mv14354 :predicate mv14356)
   (:var mv14354 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14356 :isa member :set mv14362 :has-determiner "A")
   (:var mv14362 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv14371 :isa copular-predication-of-pp :item mv14366 :value mv14369 :prep mv14368
    :predicate mv14367)
   (:var mv14366 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv14369 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv14368 :isa in :word "in") (:var mv14367 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv14382 :isa copular-predication-of-pp :item mv14373 :value mv14380 :prep mv14375
    :predicate mv14374)
   (:var mv14373 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv14380 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv14375 :isa in :word "in") (:var mv14374 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv14384 :isa be :subject mv14383 :predicate mv14388 :present "PRESENT")
   (:var mv14383 :isa what)
   (:var mv14388 :isa has-name :item mv14391 :quantifier mv14385 :modifier mv14386)
   (:var mv14391 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14385 :isa some :word "some") (:var mv14386 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv14394 :isa be :subject mv14393 :predicate mv14395 :present "PRESENT")
   (:var mv14393 :isa what) (:var mv14395 :isa has-synonym :item mv14397)
   (:var mv14397 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv14409 :isa share :object mv14399 :participant mv14408 :present "PRESENT" :raw-text
    "shared")
   (:var mv14399 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv14408 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv14400 mv14401 mv14402))
   (:var mv14400 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv14401 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv14402 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv14413 :isa be :subject mv14412 :predicate mv14415 :present "PRESENT")
   (:var mv14412 :isa what) (:var mv14415 :isa path :endpoints mv14419 :has-determiner "THE")
   (:var mv14419 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv14417 mv14411))
   (:var mv14417 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14411 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv14425 :isa polar-question :statement mv14423)
   (:var mv14423 :isa be :subject mv14421 :predicate mv14422)
   (:var mv14421 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv14422 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv14426 :isa remove :object mv14438 :present "PRESENT" :raw-text "Remove")
   (:var mv14438 :isa fact :statement mv14432 :has-determiner "THE")
   (:var mv14432 :isa bio-activate :agent mv14431 :object mv14433 :present "PRESENT" :raw-text
    "activates")
   (:var mv14431 :isa protein-family :predication mv14430 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14430 :isa active)
   (:var mv14433 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv14441 :isa bio-activate :agent mv14440 :object mv14442 :present "PRESENT" :raw-text
    "activates")
   (:var mv14440 :isa protein-family :predication mv14439 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14439 :isa active)
   (:var mv14442 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv14449 :isa copular-predication-of-pp :item mv14443 :value mv14447 :prep mv14445
    :predicate mv14444)
   (:var mv14443 :isa what) (:var mv14447 :isa model :has-determiner "THE")
   (:var mv14445 :isa in :word "in") (:var mv14444 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv14460 :isa polar-question :statement mv14459)
   (:var mv14459 :isa copular-predication :item mv14452 :value mv14457 :predicate mv14450)
   (:var mv14452 :isa bio-amount :measured-item mv14455 :has-determiner "THE" :raw-text "amount")
   (:var mv14455 :isa protein-family :predication mv14454 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv14454 :isa phosphorylate :substrate mv14455 :raw-text "phosphorylated")
   (:var mv14457 :isa high :adverb mv14456) (:var mv14456 :isa ever :name "ever")
   (:var mv14450 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv14471 :isa copular-predication :item mv14464 :value mv14461 :predicate mv14465)
   (:var mv14464 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv14461 :isa mutual-exclusivity :disease mv14462 :alternative mv14467)
   (:var mv14462 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv14467 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv14465 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv14481 :isa share :object mv14472 :participant mv14480 :present "PRESENT" :raw-text
    "shared")
   (:var mv14472 :isa signaling-pathway :has-determiner "WHAT" :raw-text "signaling pathways")
   (:var mv14480 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv14473 mv14474))
   (:var mv14473 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv14474 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv14490 :isa regulate :agent mv14487 :object mv14492 :present "PRESENT" :adverb mv14488
    :adverb mv14489 :raw-text "regulate")
   (:var mv14487 :isa micro-rna :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv14492 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv14483 mv14484 mv14485))
   (:var mv14483 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv14484 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv14485 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv14488 :isa superlative-quantifier :name "most")
   (:var mv14489 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv14494 :isa be :subject mv14493 :predicate mv14504 :present "PRESENT")
   (:var mv14493 :isa what) (:var mv14504 :isa quality-predicate :item mv14502 :attribute mv14500)
   (:var mv14502 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv14500 :isa location-of :has-determiner "THE" :predication mv14498 :modifier mv14499)
   (:var mv14498 :isa likely :comparative mv14496)
   (:var mv14496 :isa superlative-quantifier :name "most")
   (:var mv14499 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv14509 :isa polar-question :statement mv14505)
   (:var mv14505 :isa be :subject mv14506 :predicate mv14508)
   (:var mv14506 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14508 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv14521 :isa polar-question :statement mv14512)
   (:var mv14512 :isa tell :agent mv14511 :theme mv14520 :theme mv14513 :modal "CAN")
   (:var mv14511 :isa interlocutor :name "hearer")
   (:var mv14520 :isa wh-question :statement mv14517 :wh whether)
   (:var mv14517 :isa be :subject mv14516 :predicate mv14519 :modal "CAN")
   (:var mv14516 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14519 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv14513 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv14525 :isa want :agent mv14522 :theme mv14535 :present "PRESENT")
   (:var mv14522 :isa interlocutor :name "speaker")
   (:var mv14535 :isa know :agent mv14522 :statement mv14534)
   (:var mv14534 :isa wh-question :statement mv14530 :wh if)
   (:var mv14530 :isa be :subject mv14529 :predicate mv14532 :present "PRESENT")
   (:var mv14529 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14532 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv14536 :isa what))
  ("What type of protein is BRAF?"
   (:var mv14544 :isa be :subject mv14541 :predicate mv14545 :present "PRESENT")
   (:var mv14541 :isa type :molecule-type mv14543 :has-determiner "WHAT" :raw-text "type")
   (:var mv14543 :isa protein :raw-text "protein")
   (:var mv14545 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv14548 :isa be :subject mv14547 :predicate mv14550 :present "PRESENT")
   (:var mv14547 :isa what)
   (:var mv14550 :isa bio-activity :participant mv14555 :has-determiner "THE" :raw-text "activity")
   (:var mv14555 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv14565 :isa polar-question :statement mv14558)
   (:var mv14558 :isa be :subject mv14559 :predicate mv14564)
   (:var mv14559 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14564 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv14561 mv14557))
   (:var mv14561 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv14557 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv14572 :isa target :object mv14568 :agent mv14566 :present "PRESENT" :raw-text
    "targeted")
   (:var mv14568 :isa protein :has-determiner "WHAT" :raw-text "proteins")
   (:var mv14566 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv14578 :isa name-something :patient mv14574 :present "PRESENT")
   (:var mv14574 :isa transcription-factor :predication mv14581 :raw-text "transcription factors")
   (:var mv14581 :isa share :object mv14574 :participant mv14584 :past "PAST" :raw-text "shared")
   (:var mv14584 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv14575 mv14576 mv14577))
   (:var mv14575 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv14576 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv14577 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv14588 :isa tell :theme mv14593 :beneficiary mv14589 :present "PRESENT")
   (:var mv14593 :isa wh-question :statement mv14591 :wh if)
   (:var mv14591 :isa be :subject mv14586 :predicate mv14587 :present "PRESENT")
   (:var mv14586 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14587 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv14589 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv14597 :isa show :|statement-OR-theme| mv14594 :beneficiary mv14598 :present "PRESENT")
   (:var mv14594 :isa signaling-pathway :predication mv14599 :raw-text "signaling pathways")
   (:var mv14599 :isa share :object mv14594 :participant mv14602 :past "PAST" :raw-text "shared")
   (:var mv14602 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv14595 mv14596))
   (:var mv14595 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv14596 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv14598 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv14607 :isa give :theme mv14604 :beneficiary mv14608 :present "PRESENT")
   (:var mv14604 :isa signaling-pathway :predication mv14609 :raw-text "signaling pathways")
   (:var mv14609 :isa share :object mv14604 :participant mv14612 :past "PAST" :raw-text "shared")
   (:var mv14612 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv14605 mv14606))
   (:var mv14605 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv14606 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv14608 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv14643 :isa polar-question :statement mv14642)
   (:var mv14642 :isa event-relation :subordinated-event mv14638 :event mv14640)
   (:var mv14638 :isa wh-question :statement mv14625 :wh if)
   (:var mv14625 :isa increase :|agent-OR-cause| mv14623 :|multiplier-OR-cause| mv14635
    :|affected-process-OR-object| mv14627 :present "PRESENT" :raw-text "increase")
   (:var mv14623 :isa interlocutor :name "person-and-machine")
   (:var mv14635 :isa measurement :number mv14632) (:var mv14632 :isa number :value 10)
   (:var mv14627 :isa bio-amount :measured-item mv14629 :has-determiner "THE" :raw-text "amount")
   (:var mv14629 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14640 :isa copular-predication :item mv14616 :value mv14621 :predicate mv14614)
   (:var mv14616 :isa bio-amount :measured-item mv14619 :has-determiner "THE" :raw-text "amount")
   (:var mv14619 :isa protein-family :predication mv14618 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv14618 :isa phosphorylate :substrate mv14619 :raw-text "phosphorylated")
   (:var mv14621 :isa high :adverb mv14620) (:var mv14620 :isa ever :name "ever")
   (:var mv14614 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv14646 :isa phosphorylate :agent mv14645 :substrate mv14647 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv14645 :isa protein-family :predication mv14644 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14644 :isa active)
   (:var mv14647 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv14675 :isa polar-question :statement mv14674)
   (:var mv14674 :isa event-relation :subordinated-event mv14670 :event mv14672)
   (:var mv14670 :isa wh-question :statement mv14659 :wh if)
   (:var mv14659 :isa increase :|agent-OR-cause| mv14657 :|affected-process-OR-object| mv14661
    :present "PRESENT" :raw-text "increase")
   (:var mv14657 :isa interlocutor :name "person-and-machine")
   (:var mv14661 :isa bio-amount :measured-item mv14663 :has-determiner "THE" :raw-text "amount")
   (:var mv14663 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv14672 :isa copular-predication :item mv14650 :value mv14655 :predicate mv14648)
   (:var mv14650 :isa bio-amount :measured-item mv14653 :has-determiner "THE" :raw-text "amount")
   (:var mv14653 :isa protein-family :predication mv14652 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv14652 :isa phosphorylate :substrate mv14653 :raw-text "phosphorylated")
   (:var mv14655 :isa high :adverb mv14654) (:var mv14654 :isa ever :name "ever")
   (:var mv14648 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv14677 :isa be :subject mv14676 :predicate mv14679 :present "PRESENT")
   (:var mv14676 :isa what)
   (:var mv14679 :isa pathway :predication mv14681 :quantifier mv14678 :raw-text "pathways")
   (:var mv14681 :isa affect :agent mv14679 :that-rel t :object mv14682 :present "PRESENT"
    :raw-text "affect")
   (:var mv14682 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14678 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv14684 :isa be :subject mv14683 :predicate mv14686 :present "PRESENT")
   (:var mv14683 :isa what)
   (:var mv14686 :isa pathway :predication mv14688 :has-determiner "THE" :raw-text "pathways")
   (:var mv14688 :isa affect :agent mv14686 :that-rel t :object mv14689 :present "PRESENT"
    :raw-text "affect")
   (:var mv14689 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv14699 :isa regulate :object mv14693 :agent mv14698 :present "PRESENT" :raw-text
    "regulated")
   (:var mv14693 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv14698 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv14690 mv14691))
   (:var mv14690 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv14691 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv14703 :isa be :subject mv14702 :predicate mv14705 :present "PRESENT")
   (:var mv14702 :isa what)
   (:var mv14705 :isa gene :predication mv14710 :quantifier mv14704 :raw-text "genes")
   (:var mv14710 :isa regulate :object mv14705 :that-rel t :agent mv14701 :present "PRESENT"
    :raw-text "regulated")
   (:var mv14701 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv14704 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv14716 :isa contain :theme mv14715 :patient mv14718 :present "PRESENT")
   (:var mv14715 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14718 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv14712 mv14713))
   (:var mv14712 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv14713 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv14721 :isa remove :object mv14730 :present "PRESENT" :raw-text "Remove")
   (:var mv14730 :isa fact :statement mv14725 :has-determiner "THE")
   (:var mv14725 :isa bio-activate :agent mv14719 :object mv14720 :present "PRESENT" :raw-text
    "activates")
   (:var mv14719 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv14720 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv14733 :isa remove :object mv14731 :present "PRESENT" :raw-text "Remove")
   (:var mv14731 :isa protein :predication mv14734 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv14734 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv14742 :isa be :subject mv14741 :predicate mv14744 :present "PRESENT")
   (:var mv14741 :isa what) (:var mv14744 :isa path :endpoints mv14748 :quantifier mv14743)
   (:var mv14748 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv14746 mv14740))
   (:var mv14746 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14740 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv14743 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv14755 :isa polar-question :statement mv14754)
   (:var mv14754 :isa bio-activate :agent mv14750 :object mv14751 :raw-text "activate")
   (:var mv14750 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv14751 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv14758 :isa protein :has-determiner "WHAT" :modifier mv14757 :modifier mv14759 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv14757 :isa drug :raw-text "drugs") (:var mv14759 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv14770 :isa copular-predication-of-pp :item mv14762 :value mv14769 :prep "IN" :predicate
    mv14763)
   (:var mv14762 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv14769 :isa kinase :in-pathway mv14760 :has-determiner "WHICH" :raw-text "kinases")
   (:var mv14760 :isa signaling-pathway :has-determiner "THE" :modifier mv14766 :raw-text
    "signalling pathway")
   (:var mv14766 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv14763 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv14776 :isa target :agent mv14778 :object mv14777 :present "PRESENT" :raw-text "target")
   (:var mv14778 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv14777 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv14782 :isa bio-entity :has-determiner "WHAT" :modifier mv14783 :name "ELLK1")
   (:var mv14783 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv14796 :isa polar-question :statement mv14793)
   (:var mv14793 :isa increase :agent mv14784 :affected-process mv14789 :raw-text "increase")
   (:var mv14784 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14789 :isa gene-transcript-express :object mv14785 :raw-text "expression")
   (:var mv14785 :isa protein :organ mv14792 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv14792 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv14806 :isa polar-question :statement mv14804)
   (:var mv14804 :isa affect :agent mv14797 :affected-process mv14801 :raw-text "affect")
   (:var mv14797 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14801 :isa gene-transcript-express :organ mv14803 :object mv14798 :raw-text
    "expression")
   (:var mv14803 :isa liver)
   (:var mv14798 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv14813 :isa polar-question :statement mv14812)
   (:var mv14812 :isa alter :agent mv14807 :affected-process mv14811 :raw-text "alter")
   (:var mv14807 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14811 :isa gene-transcript-express :object mv14808 :raw-text "expression")
   (:var mv14808 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv14821 :isa polar-question :statement mv14817)
   (:var mv14817 :isa be :subject mv14814 :predicate mv14815)
   (:var mv14814 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14815 :isa protein-family :molecule-type mv14816 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv14816 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv14824 :isa inhibit :agent mv14823 :object mv14825 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv14823 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv14825 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv14828 :isa upregulate :agent mv14826 :object mv14827 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv14826 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv14827 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv14832 :isa transcribe :object mv14830 :agent mv14829 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv14830 :isa what)
   (:var mv14829 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv14835 :isa be :subject mv14834 :predicate mv14833 :present "PRESENT")
   (:var mv14834 :isa what)
   (:var mv14833 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv14837 :isa be :subject mv14836 :predicate mv14838 :present "PRESENT")
   (:var mv14836 :isa what)
   (:var mv14838 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv14840 :isa phosphorylate :|agent-OR-cause| mv14839 :substrate mv14841 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv14839 :isa what)
   (:var mv14841 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv14845 :isa target :agent mv14843 :object mv14846 :present "PRESENT" :raw-text "target")
   (:var mv14843 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv14846 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv14849 :isa regulate :|agent-OR-cause| mv14848 :object mv14847 :present "PRESENT"
    :raw-text "regulates")
   (:var mv14848 :isa what) (:var mv14847 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv14852 :isa regulate :|agent-OR-cause| mv14851 :object mv14850 :present "PRESENT"
    :raw-text "regulates")
   (:var mv14851 :isa what)
   (:var mv14850 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv14863 :isa polar-question :statement mv14862)
   (:var mv14862 :isa target :agent mv14861 :object mv14854 :raw-text "target")
   (:var mv14861 :isa bio-entity :name "miR-20b-5pp")
   (:var mv14854 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv14866 :isa be :subject mv14865 :predicate mv14868 :present "PRESENT")
   (:var mv14865 :isa what)
   (:var mv14868 :isa mutation :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv14877 :isa target :|affected-process-OR-object| mv14874 :agent mv14878 :present
    "PRESENT" :raw-text "target")
   (:var mv14874 :isa what) (:var mv14878 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv14883 :isa polar-question :statement mv14880)
   (:var mv14880 :isa be :subject mv14879 :predicate mv14882)
   (:var mv14879 :isa bio-entity :name "ELLK1")
   (:var mv14882 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv14885 :isa regulate :|agent-OR-cause| mv14884 :object mv14886 :present "PRESENT"
    :raw-text "regulates")
   (:var mv14884 :isa what)
   (:var mv14886 :isa protein :variant-number mv14888 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv14888 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv14892 :isa target :|affected-process-OR-object| mv14889 :agent mv14893 :present
    "PRESENT" :raw-text "target")
   (:var mv14889 :isa what) (:var mv14893 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv14897 :isa be :subject mv14896 :predicate mv14902 :present "PRESENT")
   (:var mv14896 :isa what) (:var mv14902 :isa evidence :statement mv14901 :has-determiner "THE")
   (:var mv14901 :isa phosphorylate :agent mv14894 :substrate mv14895 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv14894 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv14895 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv14904 :isa remove :object mv14903 :present "PRESENT" :raw-text "Remove")
   (:var mv14903 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv14909 :isa remove :object mv14912 :present "PRESENT" :raw-text "Remove")
   (:var mv14912 :isa interact :has-determiner "THE" :predication mv14911 :raw-text "interaction")
   (:var mv14911 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv14919 :isa bio-activate :agent mv14917 :object mv14918 :present "PRESENT" :raw-text
    "activates")
   (:var mv14917 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv14918 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv14927 :isa copular-predication-of-pp :item mv14921 :value mv14925 :prep mv14923
    :predicate mv14922)
   (:var mv14921 :isa interact :quantifier how-many :raw-text "interactions")
   (:var mv14925 :isa model :has-determiner "THE") (:var mv14923 :isa in :word "in")
   (:var mv14922 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv14939 :isa polar-question :statement mv14937)
   (:var mv14937 :isa decrease :agent mv14930 :|affected-process-OR-object| mv14934 :raw-text
    "decrease")
   (:var mv14930 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv14934 :isa bio-amount :measured-item mv14928 :has-determiner "THE" :raw-text "amount")
   (:var mv14928 :isa protein :predication mv14936 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv14936 :isa phosphorylate :substrate mv14928 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv14944 :isa bio-activate :object mv14942 :agent mv14940 :present "PRESENT" :raw-text
    "activate")
   (:var mv14942 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv14940 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv14949 :isa bio-activate :object mv14947 :agent mv14945 :present "PRESENT" :raw-text
    "activate")
   (:var mv14947 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv14945 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv14953 :isa bio-activate :|affected-process-OR-object| mv14951 :agent mv14950 :present
    "PRESENT" :raw-text "activate")
   (:var mv14951 :isa what)
   (:var mv14950 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv14957 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv14955 :agent mv14954
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv14955 :isa what)
   (:var mv14954 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv14962 :isa regulate :object mv14960 :agent mv14958 :present "PRESENT" :raw-text
    "regulate")
   (:var mv14960 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv14958 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv14972 :isa collection :type involve :number 2 :items (mv14965 mv14971))
   (:var mv14965 :isa involve :theme mv14964 :object mv14966 :present "PRESENT")
   (:var mv14964 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14966 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv14971 :isa binding :direct-bindee mv14968 :binder mv14970 :present "PRESENT" :raw-text
    "bind")
   (:var mv14968 :isa what)
   (:var mv14970 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv14975 :isa involve :theme mv14974 :object mv14976 :present "PRESENT")
   (:var mv14974 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14976 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv14980 :isa binding :direct-bindee mv14977 :binder mv14979 :present "PRESENT" :raw-text
    "bind")
   (:var mv14977 :isa what)
   (:var mv14979 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv14990 :isa collection :type involve :number 2 :items (mv14983 mv14986))
   (:var mv14983 :isa involve :theme mv14982 :object mv14984 :present "PRESENT")
   (:var mv14982 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv14984 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv14986 :isa be :subject mv14982 :predicate mv14987 :present "PRESENT")
   (:var mv14987 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv15001 :isa polar-question :statement mv15000)
   (:var mv15000 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv15007 :isa polar-question :statement mv15006)
   (:var mv15006 :isa phosphorylate :agent mv15002 :substrate mv15003 :raw-text "phosphorylate")
   (:var mv15002 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv15003 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv15011 :isa bio-activate :agent mv15010 :object mv15008 :present "PRESENT" :raw-text
    "activate")
   (:var mv15010 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv15008 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv15017 :isa target :agent mv15015 :affected-process mv15018 :present "PRESENT" :raw-text
    "target")
   (:var mv15015 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv15018 :isa upstream-segment :pathwaycomponent mv15021 :raw-text "upstreams")
   (:var mv15021 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv15012 mv15013))
   (:var mv15012 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15013 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv15027 :isa target :agent mv15025 :object mv15023 :present "PRESENT" :raw-text "target")
   (:var mv15025 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv15023 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv15032 :isa target :agent mv15030 :object mv15028 :present "PRESENT" :raw-text "target")
   (:var mv15030 :isa drug :has-determiner "WHICH" :raw-text "drugs")
   (:var mv15028 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv15039 :isa target :agent mv15037 :object mv15033 :present "PRESENT" :raw-text "target")
   (:var mv15037 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv15033 :isa transcription-factor :predication mv15040 :raw-text "transcription factors")
   (:var mv15040 :isa share :object mv15033 :participant mv15043 :past "PAST" :raw-text "shared")
   (:var mv15043 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv15034 mv15035))
   (:var mv15034 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15035 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv15050 :isa target :object mv15047 :agent mv15045 :present "PRESENT" :raw-text "target")
   (:var mv15047 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv15045 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv15056 :isa target :object mv15051 :agent mv15052 :present "PRESENT" :raw-text "target")
   (:var mv15051 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv15052 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv15067 :isa copular-predication :item mv15061 :value mv15057 :predicate mv15062)
   (:var mv15061 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv15057 :isa mutual-exclusivity :disease mv15059 :alternative mv15058)
   (:var mv15059 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv15058 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv15062 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv15071 :isa target :agent mv15069 :object mv15072 :present "PRESENT" :raw-text "target")
   (:var mv15069 :isa drug :has-determiner "WHAT" :raw-text "drugs")
   (:var mv15072 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv15083 :isa copular-predication-of-pp :item mv15075 :value mv15082 :prep "IN" :predicate
    mv15076)
   (:var mv15075 :isa kinase :has-determiner "WHICH" :raw-text "kinases")
   (:var mv15082 :isa kinase :in-pathway mv15073 :has-determiner "WHICH" :raw-text "kinases")
   (:var mv15073 :isa signaling-pathway :has-determiner "THE" :modifier mv15079 :raw-text
    "signaling pathway")
   (:var mv15079 :isa bio-entity :name "FAKE") (:var mv15076 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv15086 :isa be :subject mv15085 :predicate mv15088 :present "PRESENT")
   (:var mv15085 :isa what)
   (:var mv15088 :isa mutation :object mv15090 :has-determiner "THE" :raw-text "mutations")
   (:var mv15090 :isa protein :context mv15093 :raw-text "PTEN" :uid "UP:P60484" :name
    "PTEN_HUMAN")
   (:var mv15093 :isa cancer :predication mv15092) (:var mv15092 :isa fictional))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv15097 :isa be :subject mv15096 :predicate mv15099 :present "PRESENT")
   (:var mv15096 :isa what)
   (:var mv15099 :isa mutation :object mv15101 :has-determiner "THE" :raw-text "mutations")
   (:var mv15101 :isa protein :context mv15104 :raw-text "PTEN" :uid "UP:P60484" :name
    "PTEN_HUMAN")
   (:var mv15104 :isa cancer :organ mv15103) (:var mv15103 :isa liver))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv15108 :isa remove :object mv15118 :present "PRESENT" :raw-text "Remove")
   (:var mv15118 :isa fact :statement mv15112 :has-determiner "THE")
   (:var mv15112 :isa transcribe :agent mv15107 :object mv15113 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv15107 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv15113 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv15120 :isa transcribe :agent mv15119 :object mv15121 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv15119 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv15121 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv15123 :isa remove :object mv15133 :present "PRESENT" :raw-text "Remove")
   (:var mv15133 :isa fact :statement mv15127 :has-determiner "THE")
   (:var mv15127 :isa transcribe :agent mv15122 :object mv15128 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv15122 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv15128 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv15146 :isa share :object mv15134 :participant mv15145 :present "PRESENT" :raw-text
    "shared")
   (:var mv15134 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv15145 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv15135 mv15144))
   (:var mv15135 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15144 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv15157 :isa share :object mv15148 :participant mv15156 :present "PRESENT" :raw-text
    "shared")
   (:var mv15148 :isa transcription-factor :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv15156 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv15149 mv15150))
   (:var mv15149 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv15150 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv15160 :isa database :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv15166 :isa be :subject mv15165 :predicate mv15168 :present "PRESENT")
   (:var mv15165 :isa what)
   (:var mv15168 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv15177 :isa ask :patient mv15170 :modal mv15171 :agent mv15172 :present "PRESENT")
   (:var mv15170 :isa tissue :has-determiner "WHAT") (:var mv15171 :isa can)
   (:var mv15172 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv15186 :isa ask :patient mv15179 :modal mv15180 :agent mv15181 :present "PRESENT")
   (:var mv15179 :isa cancer :has-determiner "WHAT") (:var mv15180 :isa can)
   (:var mv15181 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv15195 :isa ask :patient mv15188 :modal mv15189 :agent mv15190 :present "PRESENT")
   (:var mv15188 :isa bio-mechanism :has-determiner "WHAT") (:var mv15189 :isa can)
   (:var mv15190 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv15199 :isa regulate :|affected-process-OR-object| mv15197 :agent mv15196 :present
    "PRESENT" :raw-text "regulate")
   (:var mv15197 :isa what)
   (:var mv15196 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv15203 :isa be :subject mv15202 :predicate mv15204 :present "PRESENT")
   (:var mv15202 :isa these :quantifier mv15200 :word "these") (:var mv15200 :isa which)
   (:var mv15204 :isa kinase :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv15209 :isa be :subject mv15208 :predicate mv15206 :present "PRESENT")
   (:var mv15208 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv15206 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv15215 :isa be :subject mv15214 :predicate mv15211 :present "PRESENT")
   (:var mv15214 :isa these :quantifier mv15212 :word "these") (:var mv15212 :isa which)
   (:var mv15211 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv15222 :isa be :subject mv15221 :predicate mv15225 :present "PRESENT")
   (:var mv15221 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv15225 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv15218 mv15219))
   (:var mv15218 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv15219 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv15230 :isa target :agent mv15228 :object mv15226 :present "PRESENT" :raw-text "target")
   (:var mv15228 :isa micro-rna :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv15226 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv15236 :isa target :|agent-OR-cause| mv15234 :object mv15231 :present "PRESENT" :raw-text
    "target")
   (:var mv15234 :isa these :quantifier mv15232 :word "these") (:var mv15232 :isa which)
   (:var mv15231 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv15246 :isa polar-question :statement mv15244)
   (:var mv15244 :isa regulate :|agent-OR-cause| mv15242 :object mv15238 :raw-text "regulate")
   (:var mv15242 :isa these :quantifier mv15240 :word "these") (:var mv15240 :isa any :word "any")
   (:var mv15238 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv15249 :isa regulate :|agent-OR-cause| mv15248 :object mv15247 :present "PRESENT"
    :raw-text "regulates")
   (:var mv15248 :isa what)
   (:var mv15247 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv15252 :isa involve :theme mv15251 :object mv15253 :present "PRESENT")
   (:var mv15251 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv15253 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv15256 :isa be :subject mv15255 :predicate mv15258 :present "PRESENT")
   (:var mv15255 :isa what)
   (:var mv15258 :isa target-protein :agent mv15254 :has-determiner "THE" :raw-text "targets")
   (:var mv15254 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv15263 :isa be :subject mv15262 :predicate mv15269 :present "PRESENT")
   (:var mv15262 :isa what)
   (:var mv15269 :isa location-of :theme mv15264 :predication mv15267 :modifier mv15268)
   (:var mv15264 :isa pronoun/plural :word "their") (:var mv15267 :isa likely :comparative mv15265)
   (:var mv15265 :isa superlative-quantifier :name "most")
   (:var mv15268 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv15274 :isa polar-question :statement mv15272)
   (:var mv15272 :isa be :subject mv15270 :predicate mv15271)
   (:var mv15270 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv15271 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv15279 :isa polar-question :statement mv15275)
   (:var mv15275 :isa be :subject mv15276 :predicate mv15278)
   (:var mv15276 :isa pronoun/inanimate :word "it")
   (:var mv15278 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv15282 :isa be :subject mv15281 :predicate mv15280 :present "PRESENT")
   (:var mv15281 :isa what)
   (:var mv15280 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv15287 :isa target :|affected-process-OR-object| mv15283 :|agent-OR-cause| mv15285
    :present "PRESENT" :raw-text "target")
   (:var mv15283 :isa what) (:var mv15285 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv15292 :isa regulate :object mv15290 :agent mv15288 :present "PRESENT" :raw-text
    "regulate")
   (:var mv15290 :isa gene :has-determiner "WHAT" :raw-text "genes")
   (:var mv15288 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv15295 :isa be :subject mv15294 :predicate mv15296 :present "PRESENT")
   (:var mv15294 :isa pathway :has-determiner "WHAT" :raw-text "pathways")
   (:var mv15296 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv15300 :isa be :subject mv15299 :predicate mv15302 :present "PRESENT")
   (:var mv15299 :isa what)
   (:var mv15302 :isa target-protein :agent mv15298 :has-determiner "THE" :raw-text "targets")
   (:var mv15298 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv15312 :isa polar-question :statement mv15311)
   (:var mv15311 :isa target :|agent-OR-cause| mv15307 :object mv15310 :raw-text "target")
   (:var mv15307 :isa pronoun/inanimate :word "it")
   (:var mv15310 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv15317 :isa inhibit :agent mv15316 :object mv15321 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv15316 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv15321 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv15313 mv15314))
   (:var mv15313 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv15314 :isa protein :predication mv15319 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv15319 :isa active))
  ("JAK1 activates STAT3"
   (:var mv15324 :isa bio-activate :agent mv15322 :object mv15323 :present "PRESENT" :raw-text
    "activates")
   (:var mv15322 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv15323 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv15330 :isa want :agent mv15327 :theme mv15340 :present "PRESENT")
   (:var mv15327 :isa interlocutor :name "speaker")
   (:var mv15340 :isa find-out :agent mv15327 :statement mv15337)
   (:var mv15337 :isa wh-question :statement mv15336 :var nil :wh how)
   (:var mv15336 :isa bio-activate :agent mv15325 :object mv15326 :present "PRESENT" :raw-text
    "activates")
   (:var mv15325 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv15326 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv15346 :isa want :agent mv15343 :theme mv15360 :present "PRESENT")
   (:var mv15343 :isa interlocutor :name "speaker")
   (:var mv15360 :isa find-out :agent mv15343 :statement mv15357)
   (:var mv15357 :isa wh-question :statement mv15352 :var nil :wh how)
   (:var mv15352 :isa bio-activate :agent mv15341 :object mv15353 :present "PRESENT" :raw-text
    "activates")
   (:var mv15341 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv15353 :isa protein :cell-type mv15355 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv15355 :isa cell-type :cell-line mv15342)
   (:var mv15342 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv15365 :isa explicit-suggestion :suggestion mv15362 :marker let-as-directive)
   (:var mv15362 :isa build :artifact mv15364 :present "PRESENT")
   (:var mv15364 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv15367 :isa phosphorylate :agent mv15366 :substrate mv15368 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv15366 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv15368 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv15375 :isa regulate :agent mv15374 :object mv15372 :present "PRESENT" :raw-text
    "regulate")
   (:var mv15374 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv15372 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv15376 :isa upregulate :|agent-OR-cause| mv15378 :object mv15377 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv15378 :isa what)
   (:var mv15377 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv15382 :isa have :possessor mv15380 :thing-possessed mv15384 :modal mv15381)
   (:var mv15380 :isa what)
   (:var mv15384 :isa effect :object mv15379 :affected-process mv15387 :has-determiner "THE"
    :raw-text "effect")
   (:var mv15379 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv15387 :isa bio-activate :raw-text "activation") (:var mv15381 :isa can))
  ("Are there any drugs for IL10?" (:var mv15400 :isa polar-question :statement mv15398)
   (:var mv15398 :isa there-exists :value mv15396 :predicate mv15393)
   (:var mv15396 :isa drug :target mv15391 :quantifier mv15395 :raw-text "drugs")
   (:var mv15391 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv15395 :isa any :word "any") (:var mv15393 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv15404 :isa gene-transcript-express :agent mv15403 :object mv15401 :present "PRESENT"
    :raw-text "express")
   (:var mv15403 :isa tissue :has-determiner "WHICH")
   (:var mv15401 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv15409 :isa regulate :manner mv15407 :agent mv15405 :object mv15406 :present "PRESENT"
    :raw-text "regulate")
   (:var mv15407 :isa how)
   (:var mv15405 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv15406 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv15414 :isa be :subject mv15413 :predicate mv15410 :present "PRESENT")
   (:var mv15413 :isa what)
   (:var mv15410 :isa transcription-factor :predication mv15416 :raw-text "transcription factors")
   (:var mv15416 :isa binding :binder mv15410 :that-rel t :direct-bindee mv15419 :present "PRESENT"
    :raw-text "bind")
   (:var mv15419 :isa gene :has-determiner "THE" :expresses mv15420 :raw-text "genes")
   (:var mv15420 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv15411 mv15412))
   (:var mv15411 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv15412 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv15425 :isa regulate :agent mv15424 :object mv15428 :present "PRESENT" :raw-text
    "regulate")
   (:var mv15424 :isa kinase :has-determiner "WHAT" :raw-text "kinases")
   (:var mv15428 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv15421 mv15422))
   (:var mv15421 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv15422 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv15432 :isa factor :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv15442 :isa relation :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv15453 :isa be :subject mv15452 :predicate mv15451 :present "PRESENT")
   (:var mv15452 :isa what)
   (:var mv15451 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv15458 :isa polar-question :statement mv15455)
   (:var mv15455 :isa be :subject mv15454 :predicate mv15457)
   (:var mv15454 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv15457 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv15462 :isa transcribe :object mv15460 :agent mv15459 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv15460 :isa what)
   (:var mv15459 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv15471 :isa polar-question :statement mv15469)
   (:var mv15469 :isa there-exists :value mv15467 :predicate mv15465)
   (:var mv15467 :isa drug :target mv15463 :raw-text "drugs")
   (:var mv15463 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv15465 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv15473 :isa relation :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv15484 :isa relation :has-determiner "WHAT"))))
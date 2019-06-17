(in-package :cl-user)
(defparameter *clause-semantics-list*
'(("What genes does mir-128 regulate?"
   (:var mv17553 :isa regulate :object mv17555 :agent mv17554 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17555 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17554 :isa bio-entity :name "mir-128"))
  ("what transcription factors does miR-200c regulate?"
   (:var mv17561 :isa regulate :object mv17562 :agent mv17558 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17562 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17558 :isa micro-rna :raw-text "miR-200c" :name "MIR200C" :uid "NCIT:C82157"))
  ("Tell me about stat3's involvement in apoptosis"
   (:var mv17564 :isa tell :theme mv17568 :theme mv17565 :present "PRESENT")
   (:var mv17568 :isa involve :theme mv17570 :participant mv17567)
   (:var mv17570 :isa apoptosis :raw-text "apoptosis")
   (:var mv17567 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17565 :isa interlocutor :name "speaker"))
  ("What are the genes that have strong evidence of being regulated by mir-122-5p?"
   (:var mv17575 :isa be :subject mv17574 :predicate mv17590 :present "PRESENT")
   (:var mv17574 :isa what)
   (:var mv17590 :isa gene :plural t :predication mv17580 :has-determiner "THE" :raw-text "genes")
   (:var mv17580 :isa have :possessor mv17590 :that-rel t :thing-possessed mv17582 :present
    "PRESENT")
   (:var mv17582 :isa evidence :fact mv17585 :predication mv17581)
   (:var mv17585 :isa regulate :agent mv17573 :progressive mv17584 :raw-text "regulated")
   (:var mv17573 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv17584 :isa be) (:var mv17581 :isa strong))
  ("What is stat3's involvement in apoptosis?"
   (:var mv17593 :isa be :subject mv17592 :predicate mv17595 :present "PRESENT")
   (:var mv17592 :isa what) (:var mv17595 :isa involve :theme mv17597 :participant mv17594)
   (:var mv17597 :isa apoptosis :raw-text "apoptosis")
   (:var mv17594 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptosis?"
   (:var mv17601 :isa be :subject mv17600 :predicate mv17603 :present "PRESENT")
   (:var mv17600 :isa what) (:var mv17603 :isa role :process mv17605 :participant mv17602)
   (:var mv17605 :isa apoptosis :raw-text "apoptosis")
   (:var mv17602 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is stat3's role in apoptotic regulation?"
   (:var mv17609 :isa be :subject mv17608 :predicate mv17611 :present "PRESENT")
   (:var mv17608 :isa what) (:var mv17611 :isa role :process mv17615 :participant mv17610)
   (:var mv17615 :isa regulate :cellular-process mv17613 :raw-text "regulation")
   (:var mv17613 :isa apoptosis :raw-text "apoptotic")
   (:var mv17610 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is the evidence that miR-148a-3p targets DNMT1?"
   (:var mv17620 :isa be :subject mv17619 :predicate mv17627 :present "PRESENT")
   (:var mv17619 :isa what) (:var mv17627 :isa evidence :statement mv17626 :has-determiner "THE")
   (:var mv17626 :isa target :agent mv17617 :object mv17618 :present "PRESENT" :raw-text "targets")
   (:var mv17617 :isa micro-rna :raw-text "miR-148a-3p" :name "microRNA 148a-3p" :uid
    "MIMAT0000243")
   (:var mv17618 :isa protein :raw-text "DNMT1" :uid "UP:P26358" :name "DNMT1_HUMAN"))
  ("what transcription factors does miR-124-3p regulate?"
   (:var mv17633 :isa regulate :object mv17634 :agent mv17630 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17634 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17630 :isa micro-rna :raw-text "miR-124-3p" :name "microRNA 124-3p" :uid
    "MIMAT0000422"))
  ("what transcription factors does miR-200c-3p regulate?"
   (:var mv17640 :isa regulate :object mv17641 :agent mv17637 :present "PRESENT" :raw-text
    "regulate")
   (:var mv17641 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv17637 :isa micro-rna :raw-text "miR-200c-3p" :name "microRNA 200c-3p" :uid
    "MIMAT0000617"))
  ("What is the mutation significance of TP53 in ovarian cancer?"
   (:var mv17645 :isa be :subject mv17644 :predicate mv17648 :present "PRESENT")
   (:var mv17644 :isa what)
   (:var mv17648 :isa significance :context mv17643 :agent mv17642 :has-determiner "THE" :modifier
    mv17647)
   (:var mv17643 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17642 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17647 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 for ovarian cancer?"
   (:var mv17656 :isa be :subject mv17655 :predicate mv17659 :present "PRESENT")
   (:var mv17655 :isa what)
   (:var mv17659 :isa significance :context mv17654 :agent mv17653 :has-determiner "THE" :modifier
    mv17658)
   (:var mv17654 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv17653 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv17658 :isa mutation :raw-text "mutation"))
  ("What are synonyms for BRAF?"
   (:var mv17665 :isa be :subject mv17664 :predicate mv17671 :present "PRESENT")
   (:var mv17664 :isa what) (:var mv17671 :isa has-synonym :plural t :item mv17669)
   (:var mv17669 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some genes that are mutated in breast cancer?"
   (:var mv17674 :isa be :subject mv17673 :predicate mv17685 :present "PRESENT")
   (:var mv17673 :isa what)
   (:var mv17685 :isa gene :plural t :predication mv17683 :quantifier mv17675 :raw-text "genes")
   (:var mv17683 :isa mutation :object mv17685 :that-rel t :context mv17672 :present "PRESENT"
    :raw-text "mutated")
   (:var mv17672 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv17675 :isa some :word "some"))
  ("what genes are mutated in breast cancer?"
   (:var mv17694 :isa mutation :object mv17693 :context mv17686 :present "PRESENT" :raw-text
    "mutated")
   (:var mv17693 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17686 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Does phosphorylation at S221 activate MAP2K2?"
   (:var mv17708 :isa polar-question :statement mv17706)
   (:var mv17706 :isa bio-activate :agent mv17698 :object mv17696 :raw-text "activate")
   (:var mv17698 :isa phosphorylate :site mv17705 :raw-text "phosphorylation")
   (:var mv17705 :isa residue-on-protein :raw-text "S221" :position mv17703 :amino-acid mv17701)
   (:var mv17703 :isa number :value 221) (:var mv17701 :isa amino-acid :name "serine" :letter "S")
   (:var mv17696 :isa protein :raw-text "MAP2K2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Does phosphorylation at S222 activate MAP2K1?"
   (:var mv17721 :isa polar-question :statement mv17719)
   (:var mv17719 :isa bio-activate :agent mv17711 :object mv17709 :raw-text "activate")
   (:var mv17711 :isa phosphorylate :site mv17718 :raw-text "phosphorylation")
   (:var mv17718 :isa residue-on-protein :raw-text "S222" :position mv17716 :amino-acid mv17714)
   (:var mv17716 :isa number :value 222) (:var mv17714 :isa amino-acid :name "serine" :letter "S")
   (:var mv17709 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Simulate the MAP2K1-MAPK1 complex"
   (:var mv17724 :isa simulate :object mv17728 :present "PRESENT" :raw-text "Simulate")
   (:var mv17728 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv17723
    :component mv17722)
   (:var mv17723 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv17722 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What are the members of ERK?"
   (:var mv17730 :isa be :subject mv17729 :predicate mv17738 :present "PRESENT")
   (:var mv17729 :isa what) (:var mv17738 :isa member :plural t :set mv17735 :has-determiner "THE")
   (:var mv17735 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the members of MEK?"
   (:var mv17740 :isa be :subject mv17739 :predicate mv17748 :present "PRESENT")
   (:var mv17739 :isa what) (:var mv17748 :isa member :plural t :set mv17745 :has-determiner "THE")
   (:var mv17745 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What are the members of RAF?"
   (:var mv17750 :isa be :subject mv17749 :predicate mv17758 :present "PRESENT")
   (:var mv17749 :isa what) (:var mv17758 :isa member :plural t :set mv17755 :has-determiner "THE")
   (:var mv17755 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAF family?"
   (:var mv17760 :isa be :subject mv17759 :predicate mv17772 :present "PRESENT")
   (:var mv17759 :isa what) (:var mv17772 :isa member :plural t :set mv17770 :has-determiner "THE")
   (:var mv17770 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What are the members of the RAS family?"
   (:var mv17775 :isa be :subject mv17774 :predicate mv17783 :present "PRESENT")
   (:var mv17774 :isa what) (:var mv17783 :isa member :plural t :set mv17773 :has-determiner "THE")
   (:var mv17773 :isa protein-family :has-determiner "THE" :raw-text "RAS family" :name "Ras"
    :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What is another name for BRAF?"
   (:var mv17785 :isa be :subject mv17784 :predicate mv17788 :present "PRESENT")
   (:var mv17784 :isa what) (:var mv17788 :isa has-name :item mv17791 :quantifier mv17786)
   (:var mv17791 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17786 :isa another :word "another"))
  ("What is another name for MAP2K1?"
   (:var mv17795 :isa be :subject mv17794 :predicate mv17798 :present "PRESENT")
   (:var mv17794 :isa what) (:var mv17798 :isa has-name :item mv17793 :quantifier mv17796)
   (:var mv17793 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv17796 :isa another :word "another"))
  ("How does STAT3 affect c-fos"
   (:var mv17806 :isa affect :manner mv17804 :agent mv17802 :object mv17803 :present "PRESENT"
    :raw-text "affect")
   (:var mv17804 :isa how)
   (:var mv17802 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17803 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List some genes regulated by elk1" (:var mv17808 :isa list :theme mv17814 :present "PRESENT")
   (:var mv17814 :isa gene :plural t :predication mv17812 :quantifier mv17809 :raw-text "genes")
   (:var mv17812 :isa regulate :object mv17814 :agent mv17807 :past "PAST" :raw-text "regulated")
   (:var mv17807 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17809 :isa some :word "some"))
  ("List some of the genes regulated by elk1"
   (:var mv17818 :isa list :theme mv17829 :present "PRESENT")
   (:var mv17829 :isa gene :plural t :predication mv17824 :quantifier mv17819 :has-determiner "THE"
    :raw-text "genes")
   (:var mv17824 :isa regulate :object mv17829 :agent mv17817 :past "PAST" :raw-text "regulated")
   (:var mv17817 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv17819 :isa some :word "some"))
  ("List the genes regulated by elk1" (:var mv17833 :isa list :theme mv17839 :present "PRESENT")
   (:var mv17839 :isa gene :plural t :predication mv17837 :has-determiner "THE" :raw-text "genes")
   (:var mv17837 :isa regulate :object mv17839 :agent mv17832 :past "PAST" :raw-text "regulated")
   (:var mv17832 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What are the common upstream regulators of AKT1 and BRAF?"
   (:var mv17844 :isa be :subject mv17843 :predicate mv17859 :present "PRESENT")
   (:var mv17843 :isa what)
   (:var mv17859 :isa regulator :plural t :theme mv17854 :has-determiner "THE" :predication mv17846
    :context mv17847 :raw-text "regulators")
   (:var mv17854 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17842 mv17853))
   (:var mv17842 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17853 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17846 :isa common) (:var mv17847 :isa upstream-segment :raw-text "upstream"))
  ("What are the common upstreams of AKT and BRAF?"
   (:var mv17861 :isa be :subject mv17860 :predicate mv17874 :present "PRESENT")
   (:var mv17860 :isa what)
   (:var mv17874 :isa upstream-segment :plural t :pathwaycomponent mv17870 :has-determiner "THE"
    :predication mv17863 :raw-text "upstreams")
   (:var mv17870 :isa collection :raw-text "AKT and BRAF" :type protein-family :number 2 :items
    (mv17867 mv17869))
   (:var mv17867 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066")
   (:var mv17869 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17863 :isa common))
  ("What are the common upstreams of AKT1 and BRAF?"
   (:var mv17877 :isa be :subject mv17876 :predicate mv17889 :present "PRESENT")
   (:var mv17876 :isa what)
   (:var mv17889 :isa upstream-segment :plural t :pathwaycomponent mv17885 :has-determiner "THE"
    :predication mv17879 :raw-text "upstreams")
   (:var mv17885 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv17875 mv17884))
   (:var mv17875 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv17884 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv17879 :isa common))
  ("What are the genes that smad2 regulates?"
   (:var mv17892 :isa be :subject mv17891 :predicate mv17899 :present "PRESENT")
   (:var mv17891 :isa what)
   (:var mv17899 :isa gene :plural t :predication mv17897 :has-determiner "THE" :raw-text "genes")
   (:var mv17897 :isa regulate :object mv17899 :that-rel t :agent mv17890 :present "PRESENT"
    :raw-text "regulates")
   (:var mv17890 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv17904 :isa be :subject mv17903 :predicate mv17915 :present "PRESENT")
   (:var mv17903 :isa what)
   (:var mv17915 :isa micro-rna :plural t :predication mv17909 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv17909 :isa regulate :agent mv17915 :that-rel t :object mv17913 :present "PRESENT"
    :raw-text "regulate")
   (:var mv17913 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv17910 mv17911 mv17900 mv17901 mv17902))
   (:var mv17910 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17911 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17900 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17901 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv17902 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the miRNAs that regulate EGFR, SRF, and STAT3"
   (:var mv17918 :isa be :subject mv17917 :predicate mv17929 :present "PRESENT")
   (:var mv17917 :isa what)
   (:var mv17929 :isa micro-rna :plural t :predication mv17923 :has-determiner "THE" :raw-text
    "miRNAs")
   (:var mv17923 :isa regulate :agent mv17929 :that-rel t :object mv17927 :present "PRESENT"
    :raw-text "regulate")
   (:var mv17927 :isa collection :raw-text "EGFR, SRF, and STAT3" :type protein :number 3 :items
    (mv17924 mv17925 mv17916))
   (:var mv17924 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv17925 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv17916 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the regulators of SRF?"
   (:var mv17931 :isa be :subject mv17930 :predicate mv17939 :present "PRESENT")
   (:var mv17930 :isa what)
   (:var mv17939 :isa regulator :plural t :theme mv17936 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv17936 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does STAT3 regulate in the liver?"
   (:var mv17943 :isa regulate :|affected-process-OR-object| mv17941 :agent mv17940 :organ mv17946
    :present "PRESENT" :raw-text "regulate")
   (:var mv17941 :isa what)
   (:var mv17940 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv17946 :isa liver :has-determiner "THE"))
  ("What does it regulate in the liver?"
   (:var mv17951 :isa regulate :|affected-process-OR-object| mv17948 :|agent-OR-cause| mv17950
    :organ mv17954 :present "PRESENT" :raw-text "regulate")
   (:var mv17948 :isa what) (:var mv17950 :isa pronoun/inanimate :word "it")
   (:var mv17954 :isa liver :has-determiner "THE"))
  ("What genes are regulated by SMAD2?"
   (:var mv17964 :isa regulate :object mv17963 :agent mv17956 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17963 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17956 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes are regulated by SMDA2?"
   (:var mv17976 :isa regulate :object mv17975 :agent mv17974 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17975 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17974 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by SRF?"
   (:var mv17986 :isa regulate :object mv17985 :agent mv17984 :present "PRESENT" :raw-text
    "regulated")
   (:var mv17985 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv17984 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which of these are regulated by SMAD2?"
   (:var mv17995 :isa regulate :|affected-process-OR-object| mv17991 :agent mv17988 :present
    "PRESENT" :raw-text "regulated")
   (:var mv17991 :isa these :quantifier mv17989 :word "these") (:var mv17989 :isa which)
   (:var mv17988 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by SMDA2?"
   (:var mv18005 :isa regulate :|affected-process-OR-object| mv18001 :agent mv17998 :present
    "PRESENT" :raw-text "regulated")
   (:var mv18001 :isa these :quantifier mv17999 :word "these") (:var mv17999 :isa which)
   (:var mv17998 :isa bio-entity :name "SMDA2"))
  ("Which pathways use these?"
   (:var mv18012 :isa bio-use :agent mv18014 :object mv18013 :present "PRESENT" :raw-text "use")
   (:var mv18014 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv18013 :isa these :word "these"))
  ("Where does STAT3 regulate the expression of c-fos?"
   (:var mv18019 :isa regulate :location mv18017 :agent mv18015 :affected-process mv18021 :present
    "PRESENT" :raw-text "regulate")
   (:var mv18017 :isa where)
   (:var mv18015 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18021 :isa gene-transcript-express :object mv18016 :has-determiner "THE" :raw-text
    "expression")
   (:var mv18016 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("can you tell me all the transcription factors that are shared by elk1 and srf"
   (:var mv18045 :isa polar-question :statement mv18029)
   (:var mv18029 :isa tell :agent mv18028 :theme mv18044 :beneficiary mv18030 :modal "CAN")
   (:var mv18028 :isa interlocutor :name "hearer")
   (:var mv18044 :isa transcription-factor :plural t :predication mv18042 :quantifier mv18031
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv18042 :isa share :object mv18044 :that-rel t :participant mv18039 :modal "CAN" :raw-text
    "shared")
   (:var mv18039 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18026 mv18038))
   (:var mv18026 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18038 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18031 :isa all :word "all") (:var mv18030 :isa interlocutor :name "speaker"))
  ("can you tell me which transcription factors are shared by elk1 and srf"
   (:var mv18063 :isa polar-question :statement mv18051)
   (:var mv18051 :isa tell :agent mv18050 :theme mv18061 :beneficiary mv18052 :modal "CAN")
   (:var mv18050 :isa interlocutor :name "hearer")
   (:var mv18061 :isa share :object mv18060 :participant mv18059 :modal "CAN" :raw-text "shared")
   (:var mv18060 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv18059 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv18048 mv18058))
   (:var mv18048 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18058 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv18052 :isa interlocutor :name "speaker"))
  ("what are the regulators of SRF?"
   (:var mv18065 :isa be :subject mv18064 :predicate mv18073 :present "PRESENT")
   (:var mv18064 :isa what)
   (:var mv18073 :isa regulator :plural t :theme mv18070 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv18070 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("what does stat regulate"
   (:var mv18077 :isa regulate :|affected-process-OR-object| mv18074 :agent mv18076 :present
    "PRESENT" :raw-text "regulate")
   (:var mv18074 :isa what)
   (:var mv18076 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("what is erbb?" (:var mv18079 :isa be :subject mv18078 :predicate mv18080 :present "PRESENT")
   (:var mv18078 :isa what)
   (:var mv18080 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("Is STAT3 involved in apoptosis?" (:var mv18087 :isa polar-question :statement mv18083)
   (:var mv18083 :isa involve :object mv18081 :theme mv18085 :past "PAST")
   (:var mv18081 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18085 :isa apoptosis :raw-text "apoptosis"))
  ("Is STAT3 involved in apoptotic regulation?"
   (:var mv18096 :isa polar-question :statement mv18090)
   (:var mv18090 :isa involve :object mv18088 :theme mv18094 :past "PAST")
   (:var mv18088 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18094 :isa regulate :cellular-process mv18092 :raw-text "regulation")
   (:var mv18092 :isa apoptosis :raw-text "apoptotic"))
  ("Is STAT3 involved in regulating apoptosis?"
   (:var mv18104 :isa polar-question :statement mv18099)
   (:var mv18099 :isa involve :object mv18097 :theme mv18101 :past "PAST")
   (:var mv18097 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18101 :isa regulate :affected-process mv18102 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv18102 :isa apoptosis :raw-text "apoptosis"))
  ("What apoptotic genes are regulated by STAT3"
   (:var mv18116 :isa regulate :object mv18115 :agent mv18105 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18115 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv18107 :raw-text
    "genes")
   (:var mv18107 :isa apoptosis :raw-text "apoptotic")
   (:var mv18105 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the apoptotic genes" (:var mv18118 :isa list :theme mv18125 :present "PRESENT")
   (:var mv18125 :isa gene :plural t :has-determiner "THE" :cellular-process mv18120 :raw-text
    "genes")
   (:var mv18120 :isa apoptosis :raw-text "apoptotic"))
  ("What genes regulated by STAT3 are involved in apoptosis?"
   (:var mv18137 :isa involve :object mv18140 :theme mv18135 :present "PRESENT")
   (:var mv18140 :isa gene :plural t :predication mv18130 :has-determiner "WHAT" :raw-text "genes")
   (:var mv18130 :isa regulate :object mv18140 :agent mv18126 :past "PAST" :raw-text "regulated")
   (:var mv18126 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18135 :isa apoptosis :raw-text "apoptosis"))
  ("List genes regulated by STAT3" (:var mv18142 :isa list :theme mv18144 :present "PRESENT")
   (:var mv18144 :isa gene :plural t :predication mv18145 :raw-text "genes")
   (:var mv18145 :isa regulate :object mv18144 :agent mv18141 :past "PAST" :raw-text "regulated")
   (:var mv18141 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are involved in apoptosis?"
   (:var mv18157 :isa involve :object mv18156 :theme mv18155 :present "PRESENT")
   (:var mv18156 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv18155 :isa apoptosis :raw-text "apoptosis"))
  ("What genes that STAT3 regulates are involved in apoptosis?"
   (:var mv18170 :isa involve :object mv18172 :theme mv18168 :present "PRESENT")
   (:var mv18172 :isa gene :plural t :predication mv18164 :has-determiner "WHAT" :raw-text "genes")
   (:var mv18164 :isa regulate :object mv18172 :that-rel t :agent mv18159 :present "PRESENT"
    :raw-text "regulates")
   (:var mv18159 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18168 :isa apoptosis :raw-text "apoptosis"))
  ("List the genes regulated by STAT3" (:var mv18174 :isa list :theme mv18180 :present "PRESENT")
   (:var mv18180 :isa gene :plural t :predication mv18178 :has-determiner "THE" :raw-text "genes")
   (:var mv18178 :isa regulate :object mv18180 :agent mv18173 :past "PAST" :raw-text "regulated")
   (:var mv18173 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the STAT3 regulated genes" (:var mv18184 :isa list :theme mv18190 :present "PRESENT")
   (:var mv18190 :isa gene :plural t :has-determiner "THE" :predication mv18186 :raw-text "genes")
   (:var mv18186 :isa regulate :object mv18190 :agent mv18183 :raw-text "regulated")
   (:var mv18183 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are regulated by STAT3?"
   (:var mv18199 :isa regulate :object mv18198 :agent mv18191 :present "PRESENT" :raw-text
    "regulated")
   (:var mv18198 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv18191 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What kinases are involved in apoptosis?"
   (:var mv18209 :isa involve :object mv18208 :theme mv18207 :present "PRESENT")
   (:var mv18208 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv18207 :isa apoptosis :raw-text "apoptosis"))
  ("What STAT3 regulated genes are involved in aptosis"
   (:var mv18222 :isa involve :object mv18221 :present "PRESENT")
   (:var mv18221 :isa gene :plural t :has-determiner "WHAT" :predication mv18213 :raw-text "genes")
   (:var mv18213 :isa regulate :object mv18221 :agent mv18211 :raw-text "regulated")
   (:var mv18211 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Let me know if any of the genes stat3 regulates are involved in apoptosis"
   (:var mv18225 :isa let :complement mv18246 :present "PRESENT")
   (:var mv18246 :isa know :agent mv18226 :statement mv18245 :present "PRESENT")
   (:var mv18226 :isa interlocutor :name "speaker")
   (:var mv18245 :isa wh-question :statement mv18240 :wh if)
   (:var mv18240 :isa involve :object mv18244 :theme mv18238 :present "PRESENT")
   (:var mv18244 :isa gene :plural t :quantifier mv18229 :predication mv18234 :has-determiner "THE"
    :raw-text "genes")
   (:var mv18229 :isa any :word "any")
   (:var mv18234 :isa regulate :object mv18244 :agent mv18224 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18224 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18238 :isa apoptosis :raw-text "apoptosis"))
  ("Let me know whether any of the genes stat3 regulates are involved in apoptosis"
   (:var mv18248 :isa let :complement mv18270 :present "PRESENT")
   (:var mv18270 :isa know :agent mv18249 :statement mv18269 :present "PRESENT")
   (:var mv18249 :isa interlocutor :name "speaker")
   (:var mv18269 :isa wh-question :statement mv18264 :wh whether)
   (:var mv18264 :isa involve :object mv18268 :theme mv18262 :present "PRESENT")
   (:var mv18268 :isa gene :plural t :quantifier mv18253 :predication mv18258 :has-determiner "THE"
    :raw-text "genes")
   (:var mv18253 :isa any :word "any")
   (:var mv18258 :isa regulate :object mv18268 :agent mv18247 :present "PRESENT" :raw-text
    "regulates")
   (:var mv18247 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18262 :isa apoptosis :raw-text "apoptosis"))
  ("Look up which genes targeted by stat3 are involved in apoptosis" (:var mv18289 :isa look-up))
  ("Tell me how stat3 is involved in apoptosis"
   (:var mv18291 :isa tell :beneficiary mv18292 :present "PRESENT")
   (:var mv18292 :isa interlocutor :name "speaker"))
  ("Tell me if stat3 is involved in apoptosis"
   (:var mv18302 :isa tell :theme mv18311 :beneficiary mv18303 :present "PRESENT")
   (:var mv18311 :isa wh-question :statement mv18309 :wh if)
   (:var mv18309 :isa involve :object mv18301 :theme mv18308 :present "PRESENT")
   (:var mv18301 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18308 :isa apoptosis :raw-text "apoptosis")
   (:var mv18303 :isa interlocutor :name "speaker"))
  ("Tell me whether stat3 is involved in apoptosis"
   (:var mv18313 :isa tell :theme mv18323 :theme mv18314 :present "PRESENT")
   (:var mv18323 :isa wh-question :statement mv18321 :wh whether)
   (:var mv18321 :isa involve :object mv18312 :theme mv18320 :present "PRESENT")
   (:var mv18312 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18320 :isa apoptosis :raw-text "apoptosis")
   (:var mv18314 :isa interlocutor :name "speaker"))
  ("What are STAT3 regulated genes that are involved in apoptosis."
   (:var mv18326 :isa be :subject mv18325 :predicate mv18338 :present "PRESENT")
   (:var mv18325 :isa what)
   (:var mv18338 :isa gene :plural t :predication mv18336 :predication mv18327 :raw-text "genes")
   (:var mv18336 :isa involve :object mv18338 :that-rel t :theme mv18334 :present "PRESENT")
   (:var mv18334 :isa apoptosis :raw-text "apoptosis")
   (:var mv18327 :isa regulate :object mv18338 :agent mv18324 :raw-text "regulated")
   (:var mv18324 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are STAT3 regulated genes that are involved in apoptosis?"
   (:var mv18341 :isa be :subject mv18340 :predicate mv18353 :present "PRESENT")
   (:var mv18340 :isa what)
   (:var mv18353 :isa gene :plural t :predication mv18351 :predication mv18342 :raw-text "genes")
   (:var mv18351 :isa involve :object mv18353 :that-rel t :theme mv18349 :present "PRESENT")
   (:var mv18349 :isa apoptosis :raw-text "apoptosis")
   (:var mv18342 :isa regulate :object mv18353 :agent mv18339 :raw-text "regulated")
   (:var mv18339 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes downstream of stat3 are involved in apoptosis?"
   (:var mv18365 :isa involve :object mv18358 :theme mv18364 :present "PRESENT")
   (:var mv18358 :isa downstream-segment :pathwaycomponent mv18354 :has-determiner "WHAT" :modifier
    mv18357 :raw-text "downstream")
   (:var mv18354 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18357 :isa gene :plural t :raw-text "genes")
   (:var mv18364 :isa apoptosis :raw-text "apoptosis"))
  ("What is the involvement of stat3 in apoptotic regulation?"
   (:var mv18370 :isa be :subject mv18369 :predicate mv18372 :present "PRESENT")
   (:var mv18369 :isa what)
   (:var mv18372 :isa involve :theme mv18377 :participant mv18368 :has-determiner "THE")
   (:var mv18377 :isa regulate :cellular-process mv18375 :raw-text "regulation")
   (:var mv18375 :isa apoptosis :raw-text "apoptotic")
   (:var mv18368 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve calcium?"
   (:var mv18383 :isa involve :theme mv18385 :object mv18384 :present "PRESENT")
   (:var mv18385 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv18384 :isa calcium :raw-text "calcium"))
  ("What processes involve srf"
   (:var mv18391 :isa involve :theme mv18393 :object mv18392 :present "PRESENT")
   (:var mv18393 :isa bio-process :plural t :has-determiner "WHAT" :raw-text "processes")
   (:var mv18392 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which stat3 regulated genes are involved in apoptosis?"
   (:var mv18405 :isa involve :object mv18404 :theme mv18402 :present "PRESENT")
   (:var mv18404 :isa gene :plural t :has-determiner "WHICH" :predication mv18396 :raw-text
    "genes")
   (:var mv18396 :isa regulate :object mv18404 :agent mv18394 :raw-text "regulated")
   (:var mv18394 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18402 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3 regulated genes in the liver are involved in apoptosis?"
   (:var mv18421 :isa involve :object mv18424 :theme mv18418 :present "PRESENT")
   (:var mv18424 :isa gene :plural t :organ mv18414 :has-determiner "WHICH" :predication mv18409
    :raw-text "genes")
   (:var mv18414 :isa liver :has-determiner "THE")
   (:var mv18409 :isa regulate :object mv18424 :agent mv18407 :raw-text "regulated")
   (:var mv18407 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18418 :isa apoptosis :raw-text "apoptosis"))
  ("Which stat3-regulated genes are involved in apoptosis?"
   (:var mv18436 :isa involve :object mv18435 :theme mv18433 :present "PRESENT")
   (:var mv18435 :isa gene :plural t :has-determiner "WHICH" :predication mv18427 :raw-text
    "genes")
   (:var mv18427 :isa regulate :object mv18435 :agent mv18425 :raw-text "regulated")
   (:var mv18425 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv18433 :isa apoptosis :raw-text "apoptosis"))
  ("Mek activates MAPK1."
   (:var mv18440 :isa bio-activate :agent mv18439 :object mv18438 :present "PRESENT" :raw-text
    "activates")
   (:var mv18439 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv18438 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("NRAS activates RAF."
   (:var mv18442 :isa bio-activate :agent mv18441 :object mv18443 :present "PRESENT" :raw-text
    "activates")
   (:var mv18441 :isa protein :raw-text "NRAS" :uid "UP:P01111" :name "RASN_HUMAN")
   (:var mv18443 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("MAPK1 phosphorylates ELK1"
   (:var mv18446 :isa phosphorylate :agent mv18444 :substrate mv18445 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv18444 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18445 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1"
   (:var mv18449 :isa dephosphorylate :agent mv18447 :substrate mv18448 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv18447 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18448 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("ELK1 positively regulates FOS."
   (:var mv18451 :isa upregulate :agent mv18450 :object mv18452 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv18450 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18452 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("EGFR binds the growth factor ligand EGF."
   (:var mv18456 :isa binding :binder mv18455 :direct-bindee mv18459 :present "PRESENT" :raw-text
    "binds")
   (:var mv18455 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18459 :isa protein :has-determiner "THE" :modifier mv18454 :modifier mv18458 :raw-text
    "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18454 :isa growth-factor :raw-text "growth factor")
   (:var mv18458 :isa ligand :raw-text "ligand"))
  ("revert that" (:var mv18460 :isa revert :present "PRESENT" :raw-text "revert"))
  ("The EGFR-EGF complex binds another EGFR-EGF complex."
   (:var mv18466 :isa binding :binder mv18473 :direct-bindee mv18474 :present "PRESENT" :raw-text
    "binds")
   (:var mv18473 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGF" :component mv18464
    :component mv18463)
   (:var mv18464 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18463 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18474 :isa bio-complex :quantifier mv18467 :raw-text "EGFR-EGF" :component mv18469
    :component mv18468)
   (:var mv18467 :isa another :word "another")
   (:var mv18469 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv18468 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("The EGFR-EGFR complex binds GRB2."
   (:var mv18480 :isa binding :binder mv18482 :direct-bindee mv18475 :present "PRESENT" :raw-text
    "binds")
   (:var mv18482 :isa bio-complex :has-determiner "THE" :raw-text "EGFR-EGFR" :component mv18477
    :component mv18477)
   (:var mv18477 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18475 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("undo that" (:var mv18483 :isa undo :present "PRESENT" :raw-text "undo"))
  ("EGFR-bound GRB2 binds SOS1."
   (:var mv18489 :isa binding :binder mv18485 :direct-bindee mv18486 :present "PRESENT" :raw-text
    "binds")
   (:var mv18485 :isa protein :predication mv18488 :raw-text "GRB2" :uid "UP:P62993" :name
    "GRB2_HUMAN")
   (:var mv18488 :isa binding :direct-bindee mv18485 :binder mv18487 :raw-text "bound")
   (:var mv18487 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv18486 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN"))
  ("GRB2-bound SOS1 binds NRAS that is not bound to BRAF."
   (:var mv18493 :isa binding :binder mv18491 :direct-bindee mv18494 :present "PRESENT" :raw-text
    "binds")
   (:var mv18491 :isa protein :predication mv18492 :raw-text "SOS1" :uid "UP:Q07889" :name
    "SOS1_HUMAN")
   (:var mv18492 :isa binding :direct-bindee mv18491 :binder mv18490 :raw-text "bound")
   (:var mv18490 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN")
   (:var mv18494 :isa protein :predication mv18501 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18501 :isa binding :direct-bindee mv18494 :that-rel t :bindee mv18500 :present "PRESENT"
    :negation mv18497 :raw-text "bound")
   (:var mv18500 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18497 :isa not :word "not"))
  ("SOS1-bound NRAS binds GTP."
   (:var mv18506 :isa binding :binder mv18505 :direct-bindee mv18507 :present "PRESENT" :raw-text
    "binds")
   (:var mv18505 :isa protein :predication mv18504 :raw-text "NRAS" :uid "UP:P01111" :name
    "RASN_HUMAN")
   (:var mv18504 :isa binding :direct-bindee mv18505 :binder mv18503 :raw-text "bound")
   (:var mv18503 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18507 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP"))
  ("GTP-bound NRAS that is not bound to SOS1 binds BRAF."
   (:var mv18517 :isa binding :binder mv18511 :direct-bindee mv18518 :present "PRESENT" :raw-text
    "binds")
   (:var mv18511 :isa protein :predication mv18519 :predication mv18510 :raw-text "NRAS" :uid
    "UP:P01111" :name "RASN_HUMAN")
   (:var mv18519 :isa binding :direct-bindee mv18511 :that-rel t :bindee mv18508 :present "PRESENT"
    :negation mv18514 :raw-text "bound")
   (:var mv18508 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv18514 :isa not :word "not")
   (:var mv18510 :isa binding :direct-bindee mv18511 :binder mv18509 :raw-text "bound")
   (:var mv18509 :isa nucleotide :raw-text "GTP" :uid "CHEBI:15996" :name "GTP")
   (:var mv18518 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Undo" (:var mv18521 :isa undo :present "PRESENT" :raw-text "Undo"))
  ("How does BRAF affect MAP2K1?"
   (:var mv18526 :isa affect :manner mv18523 :agent mv18525 :object mv18522 :present "PRESENT"
    :raw-text "affect")
   (:var mv18523 :isa how)
   (:var mv18525 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv18522 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's highlight the downstream of AKT1."
   (:var mv18535 :isa explicit-suggestion :suggestion mv18529 :marker let-as-directive)
   (:var mv18529 :isa highlight :theme mv18531 :present "PRESENT")
   (:var mv18531 :isa downstream-segment :pathwaycomponent mv18528 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv18528 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated MAPK1 to the bottom."
   (:var mv18545 :isa explicit-suggestion :suggestion mv18539 :marker let-as-directive)
   (:var mv18539 :isa move-to :goal mv18543 :theme mv18537 :present "PRESENT")
   (:var mv18543 :isa bottom :has-determiner "THE")
   (:var mv18537 :isa protein :predication mv18540 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18540 :isa phosphorylate :substrate mv18537 :raw-text "phosphorylated"))
  ("Let's put AKT1, MAPK1 into mitochondrion."
   (:var mv18554 :isa explicit-suggestion :suggestion mv18550 :marker let-as-directive)
   (:var mv18550 :isa put-something-somewhere :theme mv18547 :present "PRESENT")
   (:var mv18547 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show AKT1 on the top."
   (:var mv18562 :isa explicit-suggestion :suggestion mv18557 :marker let-as-directive)
   (:var mv18557 :isa show :at-relative-location mv18560 :|statement-OR-theme| mv18556 :present
    "PRESENT")
   (:var mv18560 :isa top-qua-location :has-determiner "THE")
   (:var mv18556 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Does ELK1 decrease FOS in the model?" (:var mv18573 :isa polar-question :statement mv18571)
   (:var mv18571 :isa decrease :agent mv18563 :object mv18567 :raw-text "decrease")
   (:var mv18563 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18567 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does ELK1 decrease the amount of FOS in the model?"
   (:var mv18588 :isa polar-question :statement mv18585)
   (:var mv18585 :isa decrease :agent mv18574 :|affected-process-OR-object| mv18579 :raw-text
    "decrease")
   (:var mv18574 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18579 :isa bio-amount :measured-item mv18581 :has-determiner "THE" :raw-text "amount")
   (:var mv18581 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS decrease ELK1 in the model?" (:var mv18599 :isa polar-question :statement mv18597)
   (:var mv18597 :isa decrease :agent mv18591 :object mv18589 :raw-text "decrease")
   (:var mv18591 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18589 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 10 fold?"
   (:var mv18622 :isa polar-question :statement mv18621)
   (:var mv18621 :isa event-relation :subordinated-event mv18619 :event mv18616)
   (:var mv18619 :isa wh-question :statement mv18617 :wh if)
   (:var mv18617 :isa increase :|agent-OR-cause| mv18605 :level mv18615
    :|affected-process-OR-object| mv18609 :raw-text "increase")
   (:var mv18605 :isa interlocutor :name "person-and-machine")
   (:var mv18615 :isa measurement :number mv18612) (:var mv18612 :isa number :value 10)
   (:var mv18609 :isa bio-amount :measured-item mv18600 :has-determiner "THE" :raw-text "amount")
   (:var mv18600 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18616 :isa vanish :agent mv18602 :raw-text "vanish")
   (:var mv18602 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does FOS vanish if we increase the amount of ELK1 by 10 fold?"
   (:var mv18647 :isa polar-question :statement mv18646)
   (:var mv18646 :isa event-relation :subordinated-event mv18644 :event mv18640)
   (:var mv18644 :isa wh-question :statement mv18641 :wh if)
   (:var mv18641 :isa increase :|agent-OR-cause| mv18628 :|multiplier-OR-cause| mv18639
    :|affected-process-OR-object| mv18632 :raw-text "increase")
   (:var mv18628 :isa interlocutor :name "person-and-machine")
   (:var mv18639 :isa measurement :number mv18636) (:var mv18636 :isa number :value 10)
   (:var mv18632 :isa bio-amount :measured-item mv18623 :has-determiner "THE" :raw-text "amount")
   (:var mv18623 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18640 :isa vanish :agent mv18625 :raw-text "vanish")
   (:var mv18625 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does phosphorylated MAPK1 vanish if we increase DUSP6 by 10 fold?"
   (:var mv18669 :isa polar-question :statement mv18668)
   (:var mv18668 :isa event-relation :subordinated-event mv18666 :event mv18663)
   (:var mv18666 :isa wh-question :statement mv18664 :wh if)
   (:var mv18664 :isa increase :|agent-OR-cause| mv18654 :|multiplier-OR-cause| mv18662 :object
    mv18649 :raw-text "increase")
   (:var mv18654 :isa interlocutor :name "person-and-machine")
   (:var mv18662 :isa measurement :number mv18659) (:var mv18659 :isa number :value 10)
   (:var mv18649 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18663 :isa vanish :agent mv18648 :raw-text "vanish")
   (:var mv18648 :isa protein :predication mv18651 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18651 :isa phosphorylate :substrate mv18648 :raw-text "phosphorylated"))
  ("Does phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv18695 :isa polar-question :statement mv18694)
   (:var mv18694 :isa event-relation :subordinated-event mv18692 :event mv18688)
   (:var mv18692 :isa wh-question :statement mv18689 :wh if)
   (:var mv18689 :isa increase :|agent-OR-cause| mv18676 :|multiplier-OR-cause| mv18687
    :|affected-process-OR-object| mv18680 :raw-text "increase")
   (:var mv18676 :isa interlocutor :name "person-and-machine")
   (:var mv18687 :isa measurement :number mv18684) (:var mv18684 :isa number :value 10)
   (:var mv18680 :isa bio-amount :measured-item mv18671 :has-determiner "THE" :raw-text "amount")
   (:var mv18671 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv18688 :isa vanish :agent mv18670 :raw-text "vanish")
   (:var mv18670 :isa protein :predication mv18673 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18673 :isa phosphorylate :substrate mv18670 :raw-text "phosphorylated"))
  ("Does the amount of phosphorylated MAPK1 ever increase?"
   (:var mv18707 :isa polar-question :statement mv18705)
   (:var mv18705 :isa increase :cause mv18699 :adverb mv18702 :raw-text "increase")
   (:var mv18699 :isa bio-amount :measured-item mv18696 :has-determiner "THE" :raw-text "amount")
   (:var mv18696 :isa protein :predication mv18701 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18701 :isa phosphorylate :substrate mv18696 :raw-text "phosphorylated")
   (:var mv18702 :isa ever :name "ever"))
  ("Is MAP2K1 bound to MAPK1 eventually high?"
   (:var mv18717 :isa polar-question :statement mv18716)
   (:var mv18716 :isa copular-predication :item mv18708 :value mv18714 :predicate mv18710)
   (:var mv18708 :isa protein :predication mv18711 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18711 :isa binding :direct-bindee mv18708 :bindee mv18709 :past "PAST" :raw-text
    "bound")
   (:var mv18709 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18714 :isa high :adverb mv18713) (:var mv18713 :isa eventually :name "eventually")
   (:var mv18710 :isa be))
  ("Is MAPK1 bound to MAP2K1 transient?" (:var mv18726 :isa polar-question :statement mv18725)
   (:var mv18725 :isa copular-predication :item mv18718 :value mv18723 :predicate mv18720)
   (:var mv18718 :isa protein :predication mv18721 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18721 :isa binding :direct-bindee mv18718 :bindee mv18719 :past "PAST" :raw-text
    "bound")
   (:var mv18719 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18723 :isa transient) (:var mv18720 :isa be))
  ("Is MAPK1-bound MAP2K1 sustained?" (:var mv18733 :isa polar-question :statement mv18732)
   (:var mv18732 :isa sustained :participant mv18728 :past "PAST")
   (:var mv18728 :isa protein :predication mv18730 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv18730 :isa binding :direct-bindee mv18728 :binder mv18727 :raw-text "bound")
   (:var mv18727 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is phosphorylated MAPK1 always high?" (:var mv18740 :isa polar-question :statement mv18739)
   (:var mv18739 :isa copular-predication :item mv18734 :value mv18738 :predicate mv18735)
   (:var mv18734 :isa protein :predication mv18736 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18736 :isa phosphorylate :substrate mv18734 :raw-text "phosphorylated")
   (:var mv18738 :isa high :adverb mv18737) (:var mv18737 :isa always :name "always")
   (:var mv18735 :isa be))
  ("Is phosphorylated MAPK1 eventually high?" (:var mv18747 :isa polar-question :statement mv18746)
   (:var mv18746 :isa copular-predication :item mv18741 :value mv18745 :predicate mv18742)
   (:var mv18741 :isa protein :predication mv18743 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18743 :isa phosphorylate :substrate mv18741 :raw-text "phosphorylated")
   (:var mv18745 :isa high :adverb mv18744) (:var mv18744 :isa eventually :name "eventually")
   (:var mv18742 :isa be))
  ("Is phosphorylated MAPK1 ever high?" (:var mv18754 :isa polar-question :statement mv18753)
   (:var mv18753 :isa copular-predication :item mv18748 :value mv18752 :predicate mv18749)
   (:var mv18748 :isa protein :predication mv18750 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18750 :isa phosphorylate :substrate mv18748 :raw-text "phosphorylated")
   (:var mv18752 :isa high :adverb mv18751) (:var mv18751 :isa ever :name "ever")
   (:var mv18749 :isa be))
  ("Is phosphorylated MAPK1 high at the end?" (:var mv18764 :isa polar-question :statement mv18763)
   (:var mv18763 :isa copular-predication :item mv18755 :value mv18758 :predicate mv18756)
   (:var mv18755 :isa protein :predication mv18757 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18757 :isa phosphorylate :substrate mv18755 :raw-text "phosphorylated")
   (:var mv18758 :isa high) (:var mv18756 :isa be))
  ("Is phosphorylated MAPK1 high?" (:var mv18770 :isa polar-question :statement mv18769)
   (:var mv18769 :isa copular-predication :item mv18765 :value mv18768 :predicate mv18766)
   (:var mv18765 :isa protein :predication mv18767 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18767 :isa phosphorylate :substrate mv18765 :raw-text "phosphorylated")
   (:var mv18768 :isa high) (:var mv18766 :isa be))
  ("Is phosphorylated MAPK1 sustained at a high level?"
   (:var mv18781 :isa polar-question :statement mv18775)
   (:var mv18775 :isa sustained :theme mv18771 :level mv18779 :past "PAST")
   (:var mv18771 :isa protein :predication mv18773 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18773 :isa phosphorylate :substrate mv18771 :raw-text "phosphorylated")
   (:var mv18779 :isa level :has-determiner "A" :predication mv18778 :raw-text "level")
   (:var mv18778 :isa high))
  ("Is phosphorylated MAPK1 sustained?" (:var mv18787 :isa polar-question :statement mv18786)
   (:var mv18786 :isa sustained :participant mv18782 :past "PAST")
   (:var mv18782 :isa protein :predication mv18784 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18784 :isa phosphorylate :substrate mv18782 :raw-text "phosphorylated"))
  ("Is phosphorylated MAPK1 transient?" (:var mv18793 :isa polar-question :statement mv18792)
   (:var mv18792 :isa copular-predication :item mv18788 :value mv18791 :predicate mv18789)
   (:var mv18788 :isa protein :predication mv18790 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18790 :isa phosphorylate :substrate mv18788 :raw-text "phosphorylated")
   (:var mv18791 :isa transient) (:var mv18789 :isa be))
  ("Is the MAP2K1-MAPK1 complex ever high?" (:var mv18804 :isa polar-question :statement mv18803)
   (:var mv18803 :isa copular-predication :item mv18802 :value mv18800 :predicate mv18796)
   (:var mv18802 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18795
    :component mv18794)
   (:var mv18795 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18794 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv18800 :isa high :adverb mv18799) (:var mv18799 :isa ever :name "ever")
   (:var mv18796 :isa be))
  ("Is the MAP2K1-MAPK1 complex formed?" (:var mv18813 :isa polar-question :statement mv18810)
   (:var mv18810 :isa bio-form :agent mv18812 :past "PAST" :raw-text "formed")
   (:var mv18812 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv18806
    :component mv18805)
   (:var mv18806 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv18805 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is the amount of FOS always low if we increase ELK1 10 fold?"
   (:var mv18836 :isa polar-question :statement mv18835)
   (:var mv18835 :isa event-relation :subordinated-event mv18831 :event mv18833)
   (:var mv18831 :isa wh-question :statement mv18825 :wh if)
   (:var mv18825 :isa increase :|agent-OR-cause| mv18823 :level mv18830 :object mv18814 :present
    "PRESENT" :raw-text "increase")
   (:var mv18823 :isa interlocutor :name "person-and-machine")
   (:var mv18830 :isa measurement :number mv18827) (:var mv18827 :isa number :value 10)
   (:var mv18814 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18833 :isa copular-predication :item mv18817 :value mv18821 :predicate mv18815)
   (:var mv18817 :isa bio-amount :measured-item mv18819 :has-determiner "THE" :raw-text "amount")
   (:var mv18819 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18821 :isa low :adverb mv18820) (:var mv18820 :isa always :name "always")
   (:var mv18815 :isa be))
  ("Is the amount of FOS always low if we increase ELK1 by 100 fold?"
   (:var mv18861 :isa polar-question :statement mv18860)
   (:var mv18860 :isa event-relation :subordinated-event mv18856 :event mv18858)
   (:var mv18856 :isa wh-question :statement mv18848 :wh if)
   (:var mv18848 :isa increase :|agent-OR-cause| mv18846 :|multiplier-OR-cause| mv18854 :object
    mv18837 :present "PRESENT" :raw-text "increase")
   (:var mv18846 :isa interlocutor :name "person-and-machine")
   (:var mv18854 :isa measurement :number mv18851) (:var mv18851 :isa number :value 100)
   (:var mv18837 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18858 :isa copular-predication :item mv18840 :value mv18844 :predicate mv18838)
   (:var mv18840 :isa bio-amount :measured-item mv18842 :has-determiner "THE" :raw-text "amount")
   (:var mv18842 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18844 :isa low :adverb mv18843) (:var mv18843 :isa always :name "always")
   (:var mv18838 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 100 fold?"
   (:var mv18888 :isa polar-question :statement mv18887)
   (:var mv18887 :isa event-relation :subordinated-event mv18883 :event mv18885)
   (:var mv18883 :isa wh-question :statement mv18873 :wh if)
   (:var mv18873 :isa increase :|agent-OR-cause| mv18871 :level mv18881
    :|affected-process-OR-object| mv18875 :present "PRESENT" :raw-text "increase")
   (:var mv18871 :isa interlocutor :name "person-and-machine")
   (:var mv18881 :isa measurement :number mv18878) (:var mv18878 :isa number :value 100)
   (:var mv18875 :isa bio-amount :measured-item mv18862 :has-determiner "THE" :raw-text "amount")
   (:var mv18862 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18885 :isa copular-predication :item mv18865 :value mv18869 :predicate mv18863)
   (:var mv18865 :isa bio-amount :measured-item mv18867 :has-determiner "THE" :raw-text "amount")
   (:var mv18867 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18869 :isa high :adverb mv18868) (:var mv18868 :isa ever :name "ever")
   (:var mv18863 :isa be))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 100 fold?"
   (:var mv18917 :isa polar-question :statement mv18916)
   (:var mv18916 :isa event-relation :subordinated-event mv18912 :event mv18914)
   (:var mv18912 :isa wh-question :statement mv18900 :wh if)
   (:var mv18900 :isa increase :|agent-OR-cause| mv18898 :|multiplier-OR-cause| mv18909
    :|affected-process-OR-object| mv18902 :present "PRESENT" :raw-text "increase")
   (:var mv18898 :isa interlocutor :name "person-and-machine")
   (:var mv18909 :isa measurement :number mv18906) (:var mv18906 :isa number :value 100)
   (:var mv18902 :isa bio-amount :measured-item mv18889 :has-determiner "THE" :raw-text "amount")
   (:var mv18889 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv18914 :isa copular-predication :item mv18892 :value mv18896 :predicate mv18890)
   (:var mv18892 :isa bio-amount :measured-item mv18894 :has-determiner "THE" :raw-text "amount")
   (:var mv18894 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv18896 :isa high :adverb mv18895) (:var mv18895 :isa ever :name "ever")
   (:var mv18890 :isa be))
  ("Is the amount of MAPK1 phosphorylated eventually high?"
   (:var mv18927 :isa polar-question :statement mv18923)
   (:var mv18923 :isa phosphorylate :cause mv18921 :past "PAST" :raw-text "phosphorylated")
   (:var mv18921 :isa bio-amount :measured-item mv18918 :has-determiner "THE" :raw-text "amount")
   (:var mv18918 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 eventually high?"
   (:var mv18938 :isa polar-question :statement mv18937)
   (:var mv18937 :isa copular-predication :item mv18931 :value mv18935 :predicate mv18929)
   (:var mv18931 :isa bio-amount :measured-item mv18928 :has-determiner "THE" :raw-text "amount")
   (:var mv18928 :isa protein :predication mv18933 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18933 :isa phosphorylate :substrate mv18928 :raw-text "phosphorylated")
   (:var mv18935 :isa high :adverb mv18934) (:var mv18934 :isa eventually :name "eventually")
   (:var mv18929 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever high?"
   (:var mv18949 :isa polar-question :statement mv18948)
   (:var mv18948 :isa copular-predication :item mv18942 :value mv18946 :predicate mv18940)
   (:var mv18942 :isa bio-amount :measured-item mv18939 :has-determiner "THE" :raw-text "amount")
   (:var mv18939 :isa protein :predication mv18944 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18944 :isa phosphorylate :substrate mv18939 :raw-text "phosphorylated")
   (:var mv18946 :isa high :adverb mv18945) (:var mv18945 :isa ever :name "ever")
   (:var mv18940 :isa be))
  ("Is the amount of phosphorylated MAPK1 ever increasing?"
   (:var mv18960 :isa polar-question :statement mv18958)
   (:var mv18958 :isa increase :cause mv18953 :adverb mv18956 :raw-text "increasing")
   (:var mv18953 :isa bio-amount :measured-item mv18950 :has-determiner "THE" :raw-text "amount")
   (:var mv18950 :isa protein :predication mv18955 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18955 :isa phosphorylate :substrate mv18950 :raw-text "phosphorylated")
   (:var mv18956 :isa ever :name "ever"))
  ("Is the amount of phosphorylated MAPK1 high?"
   (:var mv18970 :isa polar-question :statement mv18969)
   (:var mv18969 :isa copular-predication :item mv18964 :value mv18967 :predicate mv18962)
   (:var mv18964 :isa bio-amount :measured-item mv18961 :has-determiner "THE" :raw-text "amount")
   (:var mv18961 :isa protein :predication mv18966 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18966 :isa phosphorylate :substrate mv18961 :raw-text "phosphorylated")
   (:var mv18967 :isa high) (:var mv18962 :isa be))
  ("Is the amount of phosphorylated MAPK1 sometimes high?"
   (:var mv18981 :isa polar-question :statement mv18980)
   (:var mv18980 :isa copular-predication :item mv18974 :value mv18978 :predicate mv18972)
   (:var mv18974 :isa bio-amount :measured-item mv18971 :has-determiner "THE" :raw-text "amount")
   (:var mv18971 :isa protein :predication mv18976 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18976 :isa phosphorylate :substrate mv18971 :raw-text "phosphorylated")
   (:var mv18978 :isa high :adverb mv18977) (:var mv18977 :isa sometimes) (:var mv18972 :isa be))
  ("Is the amount of phosphorylated MAPK1 sustained at a high level?"
   (:var mv18996 :isa polar-question :statement mv18989)
   (:var mv18989 :isa sustained :theme mv18985 :level mv18993 :past "PAST")
   (:var mv18985 :isa bio-amount :measured-item mv18982 :has-determiner "THE" :raw-text "amount")
   (:var mv18982 :isa protein :predication mv18987 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv18987 :isa phosphorylate :substrate mv18982 :raw-text "phosphorylated")
   (:var mv18993 :isa level :has-determiner "A" :predication mv18992 :raw-text "level")
   (:var mv18992 :isa high))
  ("Is the amount of phosphorylated MAPK1 sustained?"
   (:var mv19006 :isa polar-question :statement mv19004)
   (:var mv19004 :isa sustained :participant mv19000 :past "PAST")
   (:var mv19000 :isa bio-amount :measured-item mv18997 :has-determiner "THE" :raw-text "amount")
   (:var mv18997 :isa protein :predication mv19002 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19002 :isa phosphorylate :substrate mv18997 :raw-text "phosphorylated"))
  ("Is the amount of phosphorylated MAPK1 transient?"
   (:var mv19016 :isa polar-question :statement mv19015)
   (:var mv19015 :isa copular-predication :item mv19010 :value mv19013 :predicate mv19008)
   (:var mv19010 :isa bio-amount :measured-item mv19007 :has-determiner "THE" :raw-text "amount")
   (:var mv19007 :isa protein :predication mv19012 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19012 :isa phosphorylate :substrate mv19007 :raw-text "phosphorylated")
   (:var mv19013 :isa transient) (:var mv19008 :isa be))
  ("Will the amount of phosphorylated MAPK1 be high?"
   (:var mv19027 :isa polar-question :statement mv19025)
   (:var mv19025 :isa copular-predication :item mv19020 :value mv19024 :predicate mv19023)
   (:var mv19020 :isa bio-amount :measured-item mv19017 :has-determiner "THE" :raw-text "amount")
   (:var mv19017 :isa protein :predication mv19022 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19022 :isa phosphorylate :substrate mv19017 :raw-text "phosphorylated")
   (:var mv19024 :isa high) (:var mv19023 :isa be :modal "WILL"))
  ("is TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv19050 :isa polar-question :statement mv19049)
   (:var mv19049 :isa event-relation :subordinated-event mv19046 :event mv19047)
   (:var mv19046 :isa wh-question :statement mv19036 :wh if)
   (:var mv19036 :isa increase :|agent-OR-cause| mv19034 :level mv19044
    :|affected-process-OR-object| mv19038 :present "PRESENT" :raw-text "increase")
   (:var mv19034 :isa interlocutor :name "person-and-machine")
   (:var mv19044 :isa measurement :number mv19041) (:var mv19041 :isa number :value 100)
   (:var mv19038 :isa bio-amount :measured-item mv19029 :has-determiner "THE" :raw-text "amount")
   (:var mv19029 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19047 :isa copular-predication :item mv19028 :value mv19032 :predicate mv19030)
   (:var mv19028 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv19032 :isa low :adverb mv19031) (:var mv19031 :isa eventually :name "eventually")
   (:var mv19030 :isa be))
  ("is active TGFBR1 eventually low if the amount of SB525334 is increased by 100 fold?"
   (:var mv19077 :isa polar-question :statement mv19076)
   (:var mv19076 :isa event-relation :subordinated-event mv19073 :event mv19074)
   (:var mv19073 :isa wh-question :statement mv19070 :wh if)
   (:var mv19070 :isa increase :|affected-process-OR-object| mv19059 :|multiplier-OR-cause| mv19068
    :raw-text "increased")
   (:var mv19059 :isa bio-amount :measured-item mv19052 :has-determiner "THE" :raw-text "amount")
   (:var mv19052 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19068 :isa measurement :number mv19065) (:var mv19065 :isa number :value 100)
   (:var mv19074 :isa copular-predication :item mv19051 :value mv19056 :predicate mv19053)
   (:var mv19051 :isa protein :predication mv19054 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv19054 :isa active) (:var mv19056 :isa low :adverb mv19055)
   (:var mv19055 :isa eventually :name "eventually") (:var mv19053 :isa be))
  ("is the amount of TGFBR1 eventually low if we increase the amount of SB525334 100 fold?"
   (:var mv19104 :isa polar-question :statement mv19103)
   (:var mv19103 :isa event-relation :subordinated-event mv19099 :event mv19101)
   (:var mv19099 :isa wh-question :statement mv19089 :wh if)
   (:var mv19089 :isa increase :|agent-OR-cause| mv19087 :level mv19097
    :|affected-process-OR-object| mv19091 :present "PRESENT" :raw-text "increase")
   (:var mv19087 :isa interlocutor :name "person-and-machine")
   (:var mv19097 :isa measurement :number mv19094) (:var mv19094 :isa number :value 100)
   (:var mv19091 :isa bio-amount :measured-item mv19079 :has-determiner "THE" :raw-text "amount")
   (:var mv19079 :isa molecule :raw-text "SB525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19101 :isa copular-predication :item mv19082 :value mv19085 :predicate mv19080)
   (:var mv19082 :isa bio-amount :measured-item mv19078 :has-determiner "THE" :raw-text "amount")
   (:var mv19078 :isa protein :raw-text "TGFBR1" :uid "UP:P36897" :name "TGFR1_HUMAN")
   (:var mv19085 :isa low :adverb mv19084) (:var mv19084 :isa eventually :name "eventually")
   (:var mv19080 :isa be))
  ("is the amount of active TGFBR1 always low if we increase the amount of SB-525334 100 fold"
   (:var mv19132 :isa polar-question :statement mv19131)
   (:var mv19131 :isa event-relation :subordinated-event mv19127 :event mv19129)
   (:var mv19127 :isa wh-question :statement mv19117 :wh if)
   (:var mv19117 :isa increase :|agent-OR-cause| mv19115 :level mv19125
    :|affected-process-OR-object| mv19119 :present "PRESENT" :raw-text "increase")
   (:var mv19115 :isa interlocutor :name "person-and-machine")
   (:var mv19125 :isa measurement :number mv19122) (:var mv19122 :isa number :value 100)
   (:var mv19119 :isa bio-amount :measured-item mv19106 :has-determiner "THE" :raw-text "amount")
   (:var mv19106 :isa molecule :raw-text "SB-525334" :name "sb525334" :uid "PCID:9967941")
   (:var mv19129 :isa copular-predication :item mv19109 :value mv19113 :predicate mv19107)
   (:var mv19109 :isa bio-amount :measured-item mv19105 :has-determiner "THE" :raw-text "amount")
   (:var mv19105 :isa protein :predication mv19111 :raw-text "TGFBR1" :uid "UP:P36897" :name
    "TGFR1_HUMAN")
   (:var mv19111 :isa active) (:var mv19113 :isa low :adverb mv19112)
   (:var mv19112 :isa always :name "always") (:var mv19107 :isa be))
  ("Let's move AKT1 and MAPK1 into mitochondrion."
   (:var mv19143 :isa explicit-suggestion :suggestion mv19137 :marker let-as-directive)
   (:var mv19137 :isa move-to :|at-relative-location-OR-goal| mv19140 :theme mv19141 :present
    "PRESENT")
   (:var mv19140 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv19141 :isa collection :raw-text "AKT1 and MAPK1" :type protein :number 2 :items
    (mv19134 mv19135))
   (:var mv19134 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19135 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("FEN1 phosphorylates AKT1."
   (:var mv19146 :isa phosphorylate :agent mv19144 :substrate mv19145 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19144 :isa protein :raw-text "FEN1" :uid "UP:P39748" :name "FEN1_HUMAN")
   (:var mv19145 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Move all into mitochondrion."
   (:var mv19148 :isa move-to :|at-relative-location-OR-goal| mv19151 :theme mv19153 :present
    "PRESENT")
   (:var mv19151 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173")
   (:var mv19153 :isa all :word "all"))
  ("AKT1 phosphorylates MAPK1."
   (:var mv19156 :isa phosphorylate :agent mv19154 :substrate mv19155 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19154 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19155 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Let's highlight the upstream of phosphorylated MAPK1."
   (:var mv19166 :isa explicit-suggestion :suggestion mv19159 :marker let-as-directive)
   (:var mv19159 :isa highlight :theme mv19161 :present "PRESENT")
   (:var mv19161 :isa upstream-segment :pathwaycomponent mv19158 :has-determiner "THE" :raw-text
    "upstream")
   (:var mv19158 :isa protein :predication mv19164 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19164 :isa phosphorylate :substrate mv19158 :raw-text "phosphorylated"))
  ("Let's show phosphorylated MAPK1 on the top."
   (:var mv19175 :isa explicit-suggestion :suggestion mv19169 :marker let-as-directive)
   (:var mv19169 :isa show :at-relative-location mv19173 :|statement-OR-theme| mv19168 :present
    "PRESENT")
   (:var mv19173 :isa top-qua-location :has-determiner "THE")
   (:var mv19168 :isa protein :predication mv19170 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv19170 :isa phosphorylate :substrate mv19168 :raw-text "phosphorylated"))
  ("Let's show the downstream of AKT1 on the top."
   (:var mv19188 :isa explicit-suggestion :suggestion mv19178 :marker let-as-directive)
   (:var mv19178 :isa show :at-relative-location mv19185 :|statement-OR-theme| mv19180 :present
    "PRESENT")
   (:var mv19185 :isa top-qua-location :has-determiner "THE")
   (:var mv19180 :isa downstream-segment :pathwaycomponent mv19177 :has-determiner "THE" :raw-text
    "downstream")
   (:var mv19177 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move mitochondrion elements to the top."
   (:var mv19200 :isa explicit-suggestion :suggestion mv19191 :marker let-as-directive)
   (:var mv19191 :isa move-to :goal mv19197 :theme mv19198 :present "PRESENT")
   (:var mv19197 :isa top-qua-location :has-determiner "THE")
   (:var mv19198 :isa element :plural t :modifier mv19192)
   (:var mv19192 :isa cellular-location :raw-text "mitochondrion" :name "Mitochondrion" :uid
    "UP:SL-0173"))
  ("How does BRAF affect MAPK1?"
   (:var mv19205 :isa affect :manner mv19202 :agent mv19204 :object mv19201 :present "PRESENT"
    :raw-text "affect")
   (:var mv19202 :isa how)
   (:var mv19204 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19201 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect BRAF?"
   (:var mv19209 :isa affect :manner mv19207 :agent mv19206 :object mv19210 :present "PRESENT"
    :raw-text "affect")
   (:var mv19207 :isa how)
   (:var mv19206 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19210 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the path between BRAF and MAPK1?"
   (:var mv19213 :isa be :subject mv19212 :predicate mv19215 :present "PRESENT")
   (:var mv19212 :isa what) (:var mv19215 :isa path :endpoints mv19219 :has-determiner "THE")
   (:var mv19219 :isa collection :raw-text "BRAF and MAPK1" :type protein :number 2 :items
    (mv19217 mv19211))
   (:var mv19217 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19211 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("How does MAPK1 affect JUND?"
   (:var mv19224 :isa affect :manner mv19222 :agent mv19221 :object mv19225 :present "PRESENT"
    :raw-text "affect")
   (:var mv19222 :isa how)
   (:var mv19221 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19225 :isa protein :raw-text "JUND" :uid "UP:P17535" :name "JUND_HUMAN"))
  ("How does SETDB1 affect ADAM17?"
   (:var mv19230 :isa affect :manner mv19228 :agent mv19226 :object mv19227 :present "PRESENT"
    :raw-text "affect")
   (:var mv19228 :isa how)
   (:var mv19226 :isa protein :raw-text "SETDB1" :uid "UP:Q15047" :name "SETB1_HUMAN")
   (:var mv19227 :isa protein :raw-text "ADAM17" :uid "UP:P78536" :name "ADA17_HUMAN"))
  ("How does KRAS affect MAPK3?"
   (:var mv19235 :isa affect :manner mv19232 :agent mv19234 :object mv19231 :present "PRESENT"
    :raw-text "affect")
   (:var mv19232 :isa how)
   (:var mv19234 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19231 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does  ITGAV affect ILK?"
   (:var mv19239 :isa affect :manner mv19236 :agent mv19238 :object mv19240 :present "PRESENT"
    :raw-text "affect")
   (:var mv19236 :isa how)
   (:var mv19238 :isa protein :raw-text "ITGAV" :uid "UP:P06756" :name "ITAV_HUMAN")
   (:var mv19240 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("What genes does MAPK1 phosphorylate?"
   (:var mv19247 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes"))
  ("What pathways affect BRAF?"
   (:var mv19251 :isa affect :agent mv19253 :object mv19252 :present "PRESENT" :raw-text "affect")
   (:var mv19253 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv19252 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes activate ILK?"
   (:var mv19257 :isa bio-activate :agent mv19259 :object mv19258 :present "PRESENT" :raw-text
    "activate")
   (:var mv19259 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19258 :isa protein :raw-text "ILK" :uid "UP:Q13418" :name "ILK_HUMAN"))
  ("Let's learn about AKT1 in ovarian cancer."
   (:var mv19268 :isa explicit-suggestion :suggestion mv19263 :marker let-as-directive)
   (:var mv19263 :isa learning :context mv19262 :statement mv19261 :present "PRESENT")
   (:var mv19262 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19261 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What is its relationship with BRAF?"
   (:var mv19270 :isa be :subject mv19269 :predicate mv19272 :present "PRESENT")
   (:var mv19269 :isa what) (:var mv19272 :isa relationship :patient mv19274 :modifier mv19271)
   (:var mv19274 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19271 :isa pronoun/inanimate :word "its"))
  ("What is its relationship with PTPN1?"
   (:var mv19278 :isa be :subject mv19277 :predicate mv19280 :present "PRESENT")
   (:var mv19277 :isa what) (:var mv19280 :isa relationship :patient mv19276 :modifier mv19279)
   (:var mv19276 :isa protein :raw-text "PTPN1" :uid "UP:P18031" :name "PTN1_HUMAN")
   (:var mv19279 :isa pronoun/inanimate :word "its"))
  ("AKT1 phosphorylates IFT140."
   (:var mv19285 :isa phosphorylate :agent mv19283 :substrate mv19284 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19283 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19284 :isa protein :raw-text "IFT140" :uid "UP:Q96RY7" :name "IF140_HUMAN"))
  ("What is the next correlation of AKT1?" (:var mv19287 :isa what))
  ("Let's stop learning about AKT1." (:var mv19295 :isa let-as-directive))
  ("What is the drug response on cells with TP53 alterations?"
   (:var mv19304 :isa be :subject mv19303 :predicate mv19307 :present "PRESENT")
   (:var mv19303 :isa what)
   (:var mv19307 :isa response :beneficiary mv19316 :has-determiner "THE" :modifier mv19306
    :raw-text "response")
   (:var mv19316 :isa cell-type :plural t :mutation mv19314)
   (:var mv19314 :isa alter :plural t :|agent-OR-object| mv19302 :raw-text "alterations")
   (:var mv19302 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19306 :isa drug :raw-text "drug"))
  ("What is the drug response for cells with TP53 alterations?"
   (:var mv19320 :isa be :subject mv19319 :predicate mv19323 :present "PRESENT")
   (:var mv19319 :isa what)
   (:var mv19323 :isa response :cell-type mv19332 :has-determiner "THE" :modifier mv19322 :raw-text
    "response")
   (:var mv19332 :isa cell-type :plural t :mutation mv19330)
   (:var mv19330 :isa alter :plural t :|agent-OR-object| mv19318 :raw-text "alterations")
   (:var mv19318 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19322 :isa drug :raw-text "drug"))
  ("What is the mutation frequency of EGFR in glioblastoma?"
   (:var mv19335 :isa be :subject mv19334 :predicate mv19338 :present "PRESENT")
   (:var mv19334 :isa what)
   (:var mv19338 :isa frequency :context mv19342 :measured-item mv19340 :has-determiner "THE"
    :measured-item mv19337 :raw-text "frequency")
   (:var mv19342 :isa glioblastoma)
   (:var mv19340 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv19337 :isa mutation :raw-text "mutation"))
  ("What is the mutation frequency of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19348 :isa be :subject mv19347 :predicate mv19351 :present "PRESENT")
   (:var mv19347 :isa what)
   (:var mv19351 :isa frequency :context mv19346 :measured-item mv19345 :has-determiner "THE"
    :measured-item mv19350 :raw-text "frequency")
   (:var mv19346 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19345 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19350 :isa mutation :raw-text "mutation"))
  ("Show me the mutations of PTEN and BRAF in ovarian cancer."
   (:var mv19357 :isa show :|statement-OR-theme| mv19372 :beneficiary mv19358 :present "PRESENT")
   (:var mv19372 :isa mutation :plural t :context mv19356 :object mv19367 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19356 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19367 :isa collection :raw-text "PTEN and BRAF" :type protein :number 2 :items
    (mv19363 mv19365))
   (:var mv19363 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19365 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19358 :isa interlocutor :name "speaker"))
  ("Show me the mutations of PTEN in ovarian cancer."
   (:var mv19374 :isa show :|statement-OR-theme| mv19386 :beneficiary mv19375 :present "PRESENT")
   (:var mv19386 :isa mutation :plural t :context mv19373 :object mv19380 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19373 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19380 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19375 :isa interlocutor :name "speaker"))
  ("What are the mutations of PTEN in ovarian cancer?"
   (:var mv19389 :isa be :subject mv19388 :predicate mv19400 :present "PRESENT")
   (:var mv19388 :isa what)
   (:var mv19400 :isa mutation :plural t :context mv19387 :object mv19394 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv19387 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv19394 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What is the most likely cellular location of AKT1 and BRAF?"
   (:var mv19403 :isa be :subject mv19402 :predicate mv19415 :present "PRESENT")
   (:var mv19402 :isa what) (:var mv19415 :isa quality-predicate :item mv19413 :attribute mv19409)
   (:var mv19413 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19401 mv19412))
   (:var mv19401 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19412 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19409 :isa location-of :has-determiner "THE" :predication mv19407 :modifier mv19408)
   (:var mv19407 :isa likely :comparative mv19405)
   (:var mv19405 :isa superlative-quantifier :name "most")
   (:var mv19408 :isa cellular :name "cellular"))
  ("Are there common upstreams of AKT1 and BRAF?"
   (:var mv19431 :isa polar-question :statement mv19426)
   (:var mv19426 :isa there-exists :value mv19430 :predicate mv19418)
   (:var mv19430 :isa upstream-segment :plural t :pathwaycomponent mv19427 :predication mv19420
    :raw-text "upstreams")
   (:var mv19427 :isa collection :raw-text "AKT1 and BRAF" :type protein :number 2 :items
    (mv19416 mv19425))
   (:var mv19416 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19425 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19420 :isa common) (:var mv19418 :isa syntactic-there))
  ("What are the common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv19435 :isa be :subject mv19434 :predicate mv19447 :present "PRESENT")
   (:var mv19434 :isa what)
   (:var mv19447 :isa upstream-segment :plural t :pathwaycomponent mv19443 :has-determiner "THE"
    :predication mv19437 :raw-text "upstreams")
   (:var mv19443 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv19432 mv19441 mv19433))
   (:var mv19432 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv19441 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19433 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv19437 :isa common))
  ("What genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv19460 :isa copular-predication :item mv19457 :value mv19448 :predicate mv19454)
   (:var mv19457 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv19448 :isa mutual-exclusivity :disease mv19450 :alternative mv19449)
   (:var mv19450 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19449 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv19454 :isa be :present "PRESENT"))
  ("What are the mutually exclusive genes with TP53 for breast cancer?"
   (:var mv19465 :isa be :subject mv19464 :predicate mv19475 :present "PRESENT")
   (:var mv19464 :isa what)
   (:var mv19475 :isa gene :disease mv19463 :has-determiner "THE" :predication mv19461 :raw-text
    "genes")
   (:var mv19463 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv19461 :isa mutual-exclusivity :alternative mv19462)
   (:var mv19462 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What is the mutation significance of TP53 for lung cancer?"
   (:var mv19479 :isa be :subject mv19478 :predicate mv19482 :present "PRESENT")
   (:var mv19478 :isa what)
   (:var mv19482 :isa significance :context mv19477 :agent mv19476 :has-determiner "THE" :modifier
    mv19481)
   (:var mv19477 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv19476 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19481 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of TP53 in ovarian serous cystadenocarcinoma?"
   (:var mv19490 :isa be :subject mv19489 :predicate mv19493 :present "PRESENT")
   (:var mv19489 :isa what)
   (:var mv19493 :isa significance :context mv19488 :agent mv19487 :has-determiner "THE" :modifier
    mv19492)
   (:var mv19488 :isa cancer :name "ovarian serous cystadenocarcinoma" :uid "NCIT:C7978")
   (:var mv19487 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19492 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of PTEN in pancreatic adenocarcinoma?"
   (:var mv19499 :isa be :subject mv19498 :predicate mv19502 :present "PRESENT")
   (:var mv19498 :isa what)
   (:var mv19502 :isa significance :context mv19507 :agent mv19504 :has-determiner "THE" :modifier
    mv19501)
   (:var mv19507 :isa cancer :organ mv19506 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19506 :isa pancreas)
   (:var mv19504 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv19501 :isa mutation :raw-text "mutation"))
  ("What is the mutation significance of BRAF in prostatic adenocarcinoma?"
   (:var mv19511 :isa be :subject mv19510 :predicate mv19514 :present "PRESENT")
   (:var mv19510 :isa what)
   (:var mv19514 :isa significance :context mv19519 :agent mv19516 :has-determiner "THE" :modifier
    mv19513)
   (:var mv19519 :isa cancer :modifier mv19518 :name "adenocarcinoma" :uid "EFO:0000228")
   (:var mv19518 :isa protein :raw-text "prostatic" :uid "UP:P20151" :name "KLK2_HUMAN")
   (:var mv19516 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19513 :isa mutation :raw-text "mutation"))
  ("MEK phosphorylates ERK."
   (:var mv19523 :isa phosphorylate :agent mv19522 :substrate mv19524 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv19522 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19524 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("EGF binds EGFR."
   (:var mv19526 :isa binding :binder mv19525 :direct-bindee mv19527 :present "PRESENT" :raw-text
    "binds")
   (:var mv19525 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19527 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("EGFR bound to EGF binds GRB2."
   (:var mv19533 :isa binding :binder mv19529 :direct-bindee mv19528 :present "PRESENT" :raw-text
    "binds")
   (:var mv19529 :isa protein :predication mv19530 :raw-text "EGFR" :uid "UP:P00533" :name
    "EGFR_HUMAN")
   (:var mv19530 :isa binding :direct-bindee mv19529 :bindee mv19532 :past "PAST" :raw-text
    "bound")
   (:var mv19532 :isa protein :raw-text "EGF" :uid "UP:P01133" :name "EGF_HUMAN")
   (:var mv19528 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("Phosphorylated ERK is active."
   (:var mv19539 :isa copular-predication :item mv19536 :value mv19538 :predicate mv19537)
   (:var mv19536 :isa protein-family :predication mv19535 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19535 :isa phosphorylate :substrate mv19536 :raw-text "Phosphorylated")
   (:var mv19538 :isa active) (:var mv19537 :isa be :present "PRESENT"))
  ("MAP2K1 phosphorylated at S220 phosphoryates MAPK1."
   (:var mv19540 :isa protein :predication mv19542 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv19542 :isa phosphorylate :substrate mv19540 :target mv19541 :past "PAST" :raw-text
    "phosphorylated")
   (:var mv19541 :isa protein :site mv19547 :modifier mv19548 :raw-text "MAPK1" :uid "UP:P28482"
    :name "MK01_HUMAN")
   (:var mv19547 :isa residue-on-protein :raw-text "S220" :position mv19546 :amino-acid mv19545)
   (:var mv19546 :isa number :value 220) (:var mv19545 :isa amino-acid :name "serine" :letter "S")
   (:var mv19548 :isa bio-entity :name "phosphoryates"))
  ("Active TP53 transcribes MDM2."
   (:var mv19553 :isa transcribe :agent mv19550 :object mv19551 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv19550 :isa protein :predication mv19552 :raw-text "TP53" :uid "UP:P04637" :name
    "P53_HUMAN")
   (:var mv19552 :isa active)
   (:var mv19551 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Is the amount of FOS ever high if we increase the amount of ELK1 by 10 fold?"
   (:var mv19582 :isa polar-question :statement mv19581)
   (:var mv19581 :isa event-relation :subordinated-event mv19577 :event mv19579)
   (:var mv19577 :isa wh-question :statement mv19565 :wh if)
   (:var mv19565 :isa increase :|agent-OR-cause| mv19563 :|multiplier-OR-cause| mv19574
    :|affected-process-OR-object| mv19567 :present "PRESENT" :raw-text "increase")
   (:var mv19563 :isa interlocutor :name "person-and-machine")
   (:var mv19574 :isa measurement :number mv19571) (:var mv19571 :isa number :value 10)
   (:var mv19567 :isa bio-amount :measured-item mv19554 :has-determiner "THE" :raw-text "amount")
   (:var mv19554 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19579 :isa copular-predication :item mv19557 :value mv19561 :predicate mv19555)
   (:var mv19557 :isa bio-amount :measured-item mv19559 :has-determiner "THE" :raw-text "amount")
   (:var mv19559 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19561 :isa high :adverb mv19560) (:var mv19560 :isa ever :name "ever")
   (:var mv19555 :isa be))
  ("Does Vemurafenib decrease phosphorylated ERK in the model?"
   (:var mv19594 :isa polar-question :statement mv19592)
   (:var mv19592 :isa decrease :agent mv19584 :object mv19588 :raw-text "decrease")
   (:var mv19584 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19588 :isa protein-family :predication mv19587 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv19587 :isa phosphorylate :substrate mv19588 :raw-text "phosphorylated"))
  ("Does Selumetinib decrease JUN in the model?"
   (:var mv19605 :isa polar-question :statement mv19603)
   (:var mv19603 :isa decrease :agent mv19596 :object mv19599 :raw-text "decrease")
   (:var mv19596 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv19599 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("How does KRAS regulate MAP2K1?"
   (:var mv19610 :isa regulate :manner mv19607 :agent mv19609 :object mv19606 :present "PRESENT"
    :raw-text "regulate")
   (:var mv19607 :isa how)
   (:var mv19609 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19606 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("How does HRAS activate MAPK3?"
   (:var mv19615 :isa bio-activate :manner mv19612 :agent mv19614 :object mv19611 :present
    "PRESENT" :raw-text "activate")
   (:var mv19612 :isa how)
   (:var mv19614 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19611 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Does Vemurafenib inhibit BRAF?" (:var mv19621 :isa polar-question :statement mv19620)
   (:var mv19620 :isa inhibit :agent mv19617 :object mv19619 :raw-text "inhibit")
   (:var mv19617 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19619 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What transcription factors are shared by SRF, HRAS, and ELK1?"
   (:var mv19634 :isa share :object mv19633 :participant mv19632 :present "PRESENT" :raw-text
    "shared")
   (:var mv19633 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19632 :isa collection :raw-text "SRF, HRAS, and ELK1" :type protein :number 3 :items
    (mv19629 mv19630 mv19624))
   (:var mv19629 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19630 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv19624 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Create a model where LCK phosphorylates CD3E"
   (:var mv19637 :isa create :present "PRESENT" :raw-text "Create"))
  ("What is upstream of CD3E?"
   (:var mv19646 :isa be :subject mv19645 :predicate mv19647 :present "PRESENT")
   (:var mv19645 :isa what)
   (:var mv19647 :isa upstream-segment :pathwaycomponent mv19644 :raw-text "upstream")
   (:var mv19644 :isa protein :raw-text "CD3E" :uid "UP:P07766" :name "CD3E_HUMAN"))
  ("I want to find a treatment for pancreatic cancer."
   (:var mv19655 :isa want :agent mv19652 :theme mv19663 :present "PRESENT")
   (:var mv19652 :isa interlocutor :name "speaker")
   (:var mv19663 :isa bio-find :agent mv19652 :object mv19660 :present "PRESENT" :raw-text "find")
   (:var mv19660 :isa treatment :disease mv19651 :has-determiner "A" :raw-text "treatment")
   (:var mv19651 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug could I use?"
   (:var mv19672 :isa bio-use :object mv19665 :modal mv19666 :agent mv19667 :present "PRESENT"
    :raw-text "use")
   (:var mv19665 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv19666 :isa could)
   (:var mv19667 :isa interlocutor :name "speaker"))
  ("Are there any drugs for BRAF?" (:var mv19685 :isa polar-question :statement mv19681)
   (:var mv19681 :isa there-exists :value mv19684 :predicate mv19674)
   (:var mv19684 :isa drug :plural t :target mv19680 :quantifier mv19676 :raw-text "drugs")
   (:var mv19680 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19676 :isa any :word "any") (:var mv19674 :isa syntactic-there))
  ("Are they kinases?" (:var mv19690 :isa polar-question :statement mv19686)
   (:var mv19686 :isa be :subject mv19687 :predicate mv19689)
   (:var mv19687 :isa pronoun/plural :word "they")
   (:var mv19689 :isa kinase :plural t :raw-text "kinases"))
  ("Can you find a drug for BRAF?" (:var mv19700 :isa polar-question :statement mv19694)
   (:var mv19694 :isa bio-find :agent mv19692 :object mv19696 :modal "CAN" :raw-text "find")
   (:var mv19692 :isa interlocutor :name "hearer")
   (:var mv19696 :isa drug :target mv19698 :has-determiner "A" :raw-text "drug")
   (:var mv19698 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Can you tell me all the transcription factors that are shared by elk1 and srf?"
   (:var mv19722 :isa polar-question :statement mv19706)
   (:var mv19706 :isa tell :agent mv19705 :theme mv19721 :beneficiary mv19707 :modal "CAN")
   (:var mv19705 :isa interlocutor :name "hearer")
   (:var mv19721 :isa transcription-factor :plural t :predication mv19719 :quantifier mv19708
    :has-determiner "THE" :raw-text "transcription factors")
   (:var mv19719 :isa share :object mv19721 :that-rel t :participant mv19716 :modal "CAN" :raw-text
    "shared")
   (:var mv19716 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19703 mv19715))
   (:var mv19703 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19715 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19708 :isa all :word "all") (:var mv19707 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf?"
   (:var mv19740 :isa polar-question :statement mv19728)
   (:var mv19728 :isa tell :agent mv19727 :theme mv19738 :beneficiary mv19729 :modal "CAN")
   (:var mv19727 :isa interlocutor :name "hearer")
   (:var mv19738 :isa share :object mv19737 :participant mv19736 :modal "CAN" :raw-text "shared")
   (:var mv19737 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv19736 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv19725 mv19735))
   (:var mv19725 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv19735 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv19729 :isa interlocutor :name "speaker"))
  ("Do you know any drugs for BRAF?" (:var mv19754 :isa polar-question :statement mv19753)
   (:var mv19753 :isa know :agent mv19742 :statement mv19752)
   (:var mv19742 :isa interlocutor :name "hearer")
   (:var mv19752 :isa drug :plural t :target mv19748 :quantifier mv19744 :raw-text "drugs")
   (:var mv19748 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv19744 :isa any :word "any"))
  ("Does STAT3 regulate the JUN gene in the lung?"
   (:var mv19766 :isa polar-question :statement mv19764)
   (:var mv19764 :isa regulate :agent mv19755 :object mv19760 :raw-text "regulate")
   (:var mv19755 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19760 :isa gene :organ mv19763 :has-determiner "THE" :expresses mv19759 :raw-text
    "gene")
   (:var mv19763 :isa lung :has-determiner "THE")
   (:var mv19759 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN"))
  ("Does STAT3 regulate the c-fos gene in liver?"
   (:var mv19777 :isa polar-question :statement mv19775)
   (:var mv19775 :isa regulate :agent mv19767 :object mv19772 :raw-text "regulate")
   (:var mv19767 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19772 :isa gene :organ mv19774 :has-determiner "THE" :expresses mv19768 :raw-text
    "gene")
   (:var mv19774 :isa liver)
   (:var mv19768 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the c-fos gene?" (:var mv19785 :isa polar-question :statement mv19784)
   (:var mv19784 :isa regulate :agent mv19778 :object mv19783 :raw-text "regulate")
   (:var mv19778 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19783 :isa gene :has-determiner "THE" :expresses mv19779 :raw-text "gene")
   (:var mv19779 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 regulate the cfos gene in the lung?"
   (:var mv19797 :isa polar-question :statement mv19795)
   (:var mv19795 :isa regulate :agent mv19786 :object mv19791 :raw-text "regulate")
   (:var mv19786 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19791 :isa gene :organ mv19794 :has-determiner "THE" :expresses mv19790 :raw-text
    "gene")
   (:var mv19794 :isa lung :has-determiner "THE")
   (:var mv19790 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does TP53 target MDM2?" (:var mv19804 :isa polar-question :statement mv19803)
   (:var mv19803 :isa target :agent mv19798 :object mv19799 :raw-text "target")
   (:var mv19798 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv19799 :isa protein :raw-text "MDM2" :uid "UP:Q00987" :name "MDM2_HUMAN"))
  ("Does miR-2000-5p target stat3" (:var mv19811 :isa polar-question :statement mv19810)
   (:var mv19810 :isa target :agent mv19805 :object mv19806 :raw-text "target")
   (:var mv19805 :isa micro-rna :raw-text "miR-2000-5p" :name "microRNA 2000-5p" :uid
    "MIMAmiR-2000-5p")
   (:var mv19806 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-20b-5p target STAT3?" (:var mv19818 :isa polar-question :statement mv19817)
   (:var mv19817 :isa target :agent mv19812 :object mv19813 :raw-text "target")
   (:var mv19812 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv19813 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does miR-222-3p target STAT3?" (:var mv19825 :isa polar-question :statement mv19824)
   (:var mv19824 :isa target :agent mv19819 :object mv19820 :raw-text "target")
   (:var mv19819 :isa micro-rna :raw-text "miR-222-3p" :name "microRNA 222-3p" :uid "MIMAT0000279")
   (:var mv19820 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Does stat3 regulate cfors in liver" (:var mv19834 :isa polar-question :statement mv19832)
   (:var mv19832 :isa regulate :agent mv19826 :object mv19831 :raw-text "regulate")
   (:var mv19826 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19831 :isa bio-entity :organ mv19830 :name "cfors") (:var mv19830 :isa liver))
  ("Does stat3 regulate cfos in liver" (:var mv19843 :isa polar-question :statement mv19841)
   (:var mv19841 :isa regulate :agent mv19835 :object mv19838 :raw-text "regulate")
   (:var mv19835 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19838 :isa protein :organ mv19840 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19840 :isa liver))
  ("Does it regulate cfos in brain" (:var mv19852 :isa polar-question :statement mv19850)
   (:var mv19850 :isa regulate :|agent-OR-cause| mv19845 :object mv19847 :raw-text "regulate")
   (:var mv19845 :isa pronoun/inanimate :word "it")
   (:var mv19847 :isa protein :organ mv19849 :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv19849 :isa brain))
  ("Does stat3 regulate cfos?" (:var mv19858 :isa polar-question :statement mv19857)
   (:var mv19857 :isa regulate :agent mv19853 :object mv19856 :raw-text "regulate")
   (:var mv19853 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19856 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 regulate the cfos gene in blood cells"
   (:var mv19872 :isa polar-question :statement mv19869)
   (:var mv19869 :isa regulate :agent mv19859 :object mv19864 :raw-text "regulate")
   (:var mv19859 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19864 :isa gene :cell-type mv19870 :has-determiner "THE" :expresses mv19863 :raw-text
    "gene")
   (:var mv19870 :isa cell-type :plural t :non-cellular-location mv19866)
   (:var mv19866 :isa bio-organ :name "blood" :uid "BTO:0000089")
   (:var mv19863 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the il-12 pathway utilize SGK1?" (:var mv19880 :isa polar-question :statement mv19879)
   (:var mv19879 :isa utilize :participant mv19877 :object mv19874 :raw-text "utilize")
   (:var mv19877 :isa pathway :has-determiner "THE" :modifier mv19873 :raw-text "pathway")
   (:var mv19873 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv19874 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Does the mTor pathway utilize SGK1?" (:var mv19890 :isa polar-question :statement mv19889)
   (:var mv19889 :isa utilize :participant mv19887 :object mv19881 :raw-text "utilize")
   (:var mv19887 :isa pathway :has-determiner "THE" :modifier mv19884 :raw-text "pathway")
   (:var mv19884 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv19881 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Give me the evidence that kras decreases frizzled8."
   (:var mv19892 :isa give :theme mv19899 :beneficiary mv19893 :present "PRESENT")
   (:var mv19899 :isa evidence :statement mv19898 :has-determiner "THE")
   (:var mv19898 :isa decrease :agent mv19897 :object mv19891 :present "PRESENT" :raw-text
    "decreases")
   (:var mv19897 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19891 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv19893 :isa interlocutor :name "speaker"))
  ("Give me the evidence that kras regulates frizzled8."
   (:var mv19901 :isa give :theme mv19908 :beneficiary mv19902 :present "PRESENT")
   (:var mv19908 :isa evidence :statement mv19907 :has-determiner "THE")
   (:var mv19907 :isa regulate :agent mv19906 :object mv19900 :present "PRESENT" :raw-text
    "regulates")
   (:var mv19906 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv19900 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv19902 :isa interlocutor :name "speaker"))
  ("Is MEK a kinase?" (:var mv19913 :isa polar-question :statement mv19909)
   (:var mv19909 :isa be :subject mv19910 :predicate mv19912)
   (:var mv19910 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv19912 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is MEK2 inhibited by Selumetinib?" (:var mv19920 :isa polar-question :statement mv19916)
   (:var mv19916 :isa inhibit :object mv19914 :agent mv19918 :past "PAST" :raw-text "inhibited")
   (:var mv19914 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN")
   (:var mv19918 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Is STAT3 a transcription factor for c-fos gene?"
   (:var mv19929 :isa polar-question :statement mv19924)
   (:var mv19924 :isa be :subject mv19921 :predicate mv19922)
   (:var mv19921 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19922 :isa transcription-factor :controlled-gene mv19927 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv19927 :isa gene :expresses mv19923 :raw-text "gene")
   (:var mv19923 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 one of the regulators of the c-fos gene?"
   (:var mv19948 :isa polar-question :statement mv19932)
   (:var mv19932 :isa be :subject mv19930 :predicate mv19947)
   (:var mv19930 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19947 :isa regulator :plural t :quantifier mv19935 :theme mv19942 :has-determiner "THE"
    :raw-text "regulators")
   (:var mv19935 :isa number :value 1)
   (:var mv19942 :isa gene :has-determiner "THE" :expresses mv19931 :raw-text "gene")
   (:var mv19931 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Selumetinib an inhibitor of MEK1?" (:var mv19956 :isa polar-question :statement mv19950)
   (:var mv19950 :isa be :subject mv19951 :predicate mv19953)
   (:var mv19951 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv19953 :isa inhibitor :protein mv19949 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv19949 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Is Vemurafenib an inhibitor for BRAF?" (:var mv19964 :isa polar-question :statement mv19957)
   (:var mv19957 :isa be :subject mv19958 :predicate mv19960)
   (:var mv19958 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv19960 :isa inhibitor :|target-OR-protein| mv19962 :has-determiner "AN" :raw-text
    "inhibitor")
   (:var mv19962 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is fakeprotein a kinase" (:var mv19969 :isa polar-question :statement mv19965)
   (:var mv19965 :isa be :subject mv19968 :predicate mv19967)
   (:var mv19968 :isa bio-entity :name "fakeprotein")
   (:var mv19967 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is hmga2 a kinase" (:var mv19974 :isa polar-question :statement mv19971)
   (:var mv19971 :isa be :subject mv19970 :predicate mv19973)
   (:var mv19970 :isa protein :raw-text "hmga2" :uid "UP:P52926" :name "HMGA2_HUMAN")
   (:var mv19973 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is stat3 an apoptotic regulator?" (:var mv19981 :isa polar-question :statement mv19976)
   (:var mv19976 :isa be :subject mv19975 :predicate mv19980)
   (:var mv19975 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19980 :isa regulator :has-determiner "AN" :cellular-process mv19978 :raw-text
    "regulator")
   (:var mv19978 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in any apoptotic pathways?"
   (:var mv19994 :isa polar-question :statement mv19984)
   (:var mv19984 :isa involve :object mv19982 :|context-OR-theme| mv19992 :past "PAST")
   (:var mv19982 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv19992 :isa pathway :plural t :quantifier mv19986 :cellular-process mv19987 :raw-text
    "pathways")
   (:var mv19986 :isa any :word "any") (:var mv19987 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in apoptotic regulation?"
   (:var mv20003 :isa polar-question :statement mv19997)
   (:var mv19997 :isa involve :object mv19995 :theme mv20001 :past "PAST")
   (:var mv19995 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20001 :isa regulate :cellular-process mv19999 :raw-text "regulation")
   (:var mv19999 :isa apoptosis :raw-text "apoptotic"))
  ("Is stat3 involved in regulating apoptosis?"
   (:var mv20011 :isa polar-question :statement mv20006)
   (:var mv20006 :isa involve :object mv20004 :theme mv20008 :past "PAST")
   (:var mv20004 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20008 :isa regulate :affected-process mv20009 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv20009 :isa apoptosis :raw-text "apoptosis"))
  ("What proteins does MEK phosphorylate?"
   (:var mv20017 :isa phosphorylate :substrate mv20018 :agent mv20016 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv20018 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv20016 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Is the first one a kinase" (:var mv20028 :isa polar-question :statement mv20019)
   (:var mv20019 :isa be :subject mv20027 :predicate mv20026)
   (:var mv20027 :isa indefinite-pronoun :has-determiner "THE" :ordinal mv20024 :word "one")
   (:var mv20024 :isa number :value 1)
   (:var mv20026 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is there a drug that targets BRAF?" (:var mv20040 :isa polar-question :statement mv20039)
   (:var mv20039 :isa there-exists :value mv20033 :predicate mv20030)
   (:var mv20033 :isa drug :predication mv20037 :has-determiner "A" :raw-text "drug")
   (:var mv20037 :isa target :agent mv20033 :that-rel t :object mv20038 :present "PRESENT"
    :raw-text "targets")
   (:var mv20038 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20030 :isa syntactic-there))
  ("Is there an apoptotic pathway regulated by stat3?"
   (:var mv20053 :isa polar-question :statement mv20051)
   (:var mv20051 :isa there-exists :value mv20048 :predicate mv20043)
   (:var mv20048 :isa pathway :predication mv20049 :has-determiner "AN" :cellular-process mv20046
    :raw-text "pathway")
   (:var mv20049 :isa regulate :affected-process mv20048 :agent mv20041 :past "PAST" :raw-text
    "regulated")
   (:var mv20041 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20046 :isa apoptosis :raw-text "apoptotic") (:var mv20043 :isa syntactic-there))
  ("Is there an apoptotic pathway that is regulated by stat3?"
   (:var mv20069 :isa polar-question :statement mv20066)
   (:var mv20066 :isa there-exists :value mv20061 :predicate mv20056)
   (:var mv20061 :isa pathway :predication mv20067 :has-determiner "AN" :cellular-process mv20059
    :raw-text "pathway")
   (:var mv20067 :isa regulate :affected-process mv20061 :that-rel t :agent mv20054 :present
    "PRESENT" :raw-text "regulated")
   (:var mv20054 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20059 :isa apoptosis :raw-text "apoptotic") (:var mv20056 :isa syntactic-there))
  ("Let me know if there are any apoptotic genes stat3 regulates"
   (:var mv20071 :isa let :complement mv20089 :present "PRESENT")
   (:var mv20089 :isa know :agent mv20072 :statement mv20088 :present "PRESENT")
   (:var mv20072 :isa interlocutor :name "speaker")
   (:var mv20088 :isa wh-question :statement mv20084 :wh if)
   (:var mv20084 :isa there-exists :value mv20087 :predicate mv20077)
   (:var mv20087 :isa gene :plural t :predication mv20083 :quantifier mv20078 :cellular-process
    mv20079 :raw-text "genes")
   (:var mv20083 :isa regulate :object mv20087 :agent mv20070 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20070 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20078 :isa any :word "any") (:var mv20079 :isa apoptosis :raw-text "apoptotic")
   (:var mv20077 :isa be))
  ("Let me know which genes stat3 regulates"
   (:var mv20091 :isa let :complement mv20100 :present "PRESENT")
   (:var mv20100 :isa know :agent mv20092 :statement mv20099 :present "PRESENT")
   (:var mv20092 :isa interlocutor :name "speaker")
   (:var mv20099 :isa gene :plural t :predication mv20097 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv20097 :isa regulate :object mv20099 :agent mv20090 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20090 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List all the genes regulated by elk1 and srf?"
   (:var mv20102 :isa list :theme mv20113 :present "PRESENT")
   (:var mv20113 :isa gene :plural t :predication mv20107 :quantifier mv20103 :has-determiner "THE"
    :raw-text "genes")
   (:var mv20107 :isa regulate :object mv20113 :agent mv20111 :past "PAST" :raw-text "regulated")
   (:var mv20111 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20101 mv20110))
   (:var mv20101 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20110 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20103 :isa all :word "all"))
  ("List genes regulated by elk1 and srf"
   (:var mv20117 :isa list :theme mv20119 :present "PRESENT")
   (:var mv20119 :isa gene :plural t :predication mv20120 :raw-text "genes")
   (:var mv20120 :isa regulate :object mv20119 :agent mv20124 :past "PAST" :raw-text "regulated")
   (:var mv20124 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20116 mv20123))
   (:var mv20116 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20123 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("List some genes that are regulated by elk1 and srf"
   (:var mv20128 :isa list :theme mv20142 :present "PRESENT")
   (:var mv20142 :isa gene :plural t :predication mv20140 :quantifier mv20129 :raw-text "genes")
   (:var mv20140 :isa regulate :object mv20142 :that-rel t :agent mv20138 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20138 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20127 mv20137))
   (:var mv20127 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20137 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20129 :isa some :word "some"))
  ("List the evidence that kras decreases frizzled8."
   (:var mv20144 :isa list :theme mv20150 :present "PRESENT")
   (:var mv20150 :isa evidence :statement mv20149 :has-determiner "THE")
   (:var mv20149 :isa decrease :agent mv20148 :object mv20143 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20148 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20143 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Name genes regulated by elk1 and srf"
   (:var mv20152 :isa name-something :patient mv20156 :present "PRESENT")
   (:var mv20156 :isa gene :plural t :predication mv20157 :raw-text "genes")
   (:var mv20157 :isa regulate :object mv20156 :agent mv20161 :past "PAST" :raw-text "regulated")
   (:var mv20161 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20151 mv20160))
   (:var mv20151 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20160 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Of the apoptotic genes regulated by stat3, which are active in the liver?"
   (:var mv20182 :isa copular-predication :item mv20185 :value mv20175 :predicate mv20174)
   (:var mv20185 :isa gene :plural t :has-determiner "WHICH" :predication mv20171 :has-determiner
    "THE" :cellular-process mv20167 :raw-text "genes")
   (:var mv20171 :isa regulate :object mv20185 :agent mv20164 :past "PAST" :raw-text "regulated")
   (:var mv20164 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20167 :isa apoptosis :raw-text "apoptotic") (:var mv20175 :isa active :organ mv20178)
   (:var mv20178 :isa liver :has-determiner "THE") (:var mv20174 :isa be :present "PRESENT"))
  ("Of the apoptotic genes stat3 regulates, which are active in the liver?"
   (:var mv20204 :isa copular-predication :item mv20206 :value mv20197 :predicate mv20196)
   (:var mv20206 :isa gene :plural t :has-determiner "WHICH" :predication mv20194 :has-determiner
    "THE" :cellular-process mv20190 :raw-text "genes")
   (:var mv20194 :isa regulate :object mv20206 :agent mv20187 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20187 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20190 :isa apoptosis :raw-text "apoptotic") (:var mv20197 :isa active :organ mv20200)
   (:var mv20200 :isa liver :has-determiner "THE") (:var mv20196 :isa be :present "PRESENT"))
  ("Of the genes stat3 regulates in the liver, which are apoptotic?"
   (:var mv20222 :isa copular-predication :item mv20225 :value mv20219 :predicate mv20218)
   (:var mv20225 :isa gene :plural t :has-determiner "WHICH" :predication mv20213 :has-determiner
    "THE" :raw-text "genes")
   (:var mv20213 :isa regulate :object mv20225 :agent mv20208 :organ mv20216 :present "PRESENT"
    :raw-text "regulates")
   (:var mv20208 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20216 :isa liver :has-determiner "THE")
   (:var mv20219 :isa apoptosis :raw-text "apoptotic") (:var mv20218 :isa be :present "PRESENT"))
  ("Of the hepatic genes stat3 regulates, which are apoptotic?"
   (:var mv20240 :isa copular-predication :item mv20242 :value mv20236 :predicate mv20235)
   (:var mv20242 :isa gene :plural t :has-determiner "WHICH" :predication mv20233 :has-determiner
    "THE" :non-cellular-location mv20230 :raw-text "genes")
   (:var mv20233 :isa regulate :object mv20242 :agent mv20227 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20227 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20230 :isa liver) (:var mv20236 :isa apoptosis :raw-text "apoptotic")
   (:var mv20235 :isa be :present "PRESENT"))
  ("Of the liver genes stat3 regulates, which are apoptotic?"
   (:var mv20257 :isa copular-predication :item mv20259 :value mv20253 :predicate mv20252)
   (:var mv20259 :isa gene :plural t :has-determiner "WHICH" :predication mv20250 :has-determiner
    "THE" :non-cellular-location mv20247 :raw-text "genes")
   (:var mv20250 :isa regulate :object mv20259 :agent mv20244 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20244 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20247 :isa liver) (:var mv20253 :isa apoptosis :raw-text "apoptotic")
   (:var mv20252 :isa be :present "PRESENT"))
  ("Please find pathways involving SRF"
   (:var mv20263 :isa bio-find :object mv20265 :present "PRESENT" :adverb mv20261 :raw-text "find")
   (:var mv20265 :isa pathway :plural t :predication mv20266 :raw-text "pathways")
   (:var mv20266 :isa involve :theme mv20265 :object mv20267 :progressive "PROGRESSIVE")
   (:var mv20267 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20261 :isa please :name "please"))
  ("Please show me KEGG pathways involving SRF"
   (:var mv20270 :isa show :|statement-OR-theme| mv20278 :beneficiary mv20271 :present "PRESENT"
    :adverb mv20269)
   (:var mv20278 :isa pathway :plural t :predication mv20275 :modifier mv20272 :raw-text
    "pathways")
   (:var mv20275 :isa involve :theme mv20278 :object mv20276 :progressive "PROGRESSIVE")
   (:var mv20276 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20272 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20271 :isa interlocutor :name "speaker") (:var mv20269 :isa please :name "please"))
  ("Please show me pathways involving SRF"
   (:var mv20280 :isa show :|statement-OR-theme| mv20286 :beneficiary mv20281 :present "PRESENT"
    :adverb mv20279)
   (:var mv20286 :isa pathway :plural t :predication mv20284 :raw-text "pathways")
   (:var mv20284 :isa involve :theme mv20286 :object mv20285 :progressive "PROGRESSIVE")
   (:var mv20285 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20281 :isa interlocutor :name "speaker") (:var mv20279 :isa please :name "please"))
  ("MEK activates ERK"
   (:var mv20288 :isa bio-activate :agent mv20287 :object mv20289 :present "PRESENT" :raw-text
    "activates")
   (:var mv20287 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20289 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that MEK activates ERK"
   (:var mv20290 :isa remove :object mv20297 :present "PRESENT" :raw-text "Remove")
   (:var mv20297 :isa fact :statement mv20295 :has-determiner "THE")
   (:var mv20295 :isa bio-activate :agent mv20294 :object mv20296 :present "PRESENT" :raw-text
    "activates")
   (:var mv20294 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20296 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Inactive MEK activates ERK"
   (:var mv20300 :isa bio-activate :agent mv20299 :object mv20301 :present "PRESENT" :raw-text
    "activates")
   (:var mv20299 :isa protein-family :predication mv20298 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20298 :isa inactive)
   (:var mv20301 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Remove the fact that inactive MEK activates ERK"
   (:var mv20302 :isa remove :object mv20310 :present "PRESENT" :raw-text "Remove")
   (:var mv20310 :isa fact :statement mv20308 :has-determiner "THE")
   (:var mv20308 :isa bio-activate :agent mv20307 :object mv20309 :present "PRESENT" :raw-text
    "activates")
   (:var mv20307 :isa protein-family :predication mv20306 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv20306 :isa inactive)
   (:var mv20309 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Show immune system pathways"
   (:var mv20312 :isa show :|statement-OR-theme| mv20315 :present "PRESENT")
   (:var mv20315 :isa pathway :plural t :non-cellular-location mv20311 :raw-text "pathways")
   (:var mv20311 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Show me pathways involving SRF"
   (:var mv20316 :isa show :|statement-OR-theme| mv20322 :beneficiary mv20317 :present "PRESENT")
   (:var mv20322 :isa pathway :plural t :predication mv20320 :raw-text "pathways")
   (:var mv20320 :isa involve :theme mv20322 :object mv20321 :progressive "PROGRESSIVE")
   (:var mv20321 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20317 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF in them"
   (:var mv20323 :isa show :|statement-OR-theme| mv20333 :beneficiary mv20324 :present "PRESENT")
   (:var mv20333 :isa pathway :plural t :pathwaycomponent mv20328 :raw-text "pathways")
   (:var mv20328 :isa protein
    :|cell-line-OR-cell-type-OR-cellular-location-OR-context-OR-organ-OR-preparation-OR-organism-OR-in-equilibrium-with-OR-complex-OR-equilibrium-state-OR-state-OR-in-pathway-OR-in-family|
    mv20330 :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20330 :isa pronoun/plural :word "them")
   (:var mv20324 :isa interlocutor :name "speaker"))
  ("Show me pathways with SRF"
   (:var mv20334 :isa show :|statement-OR-theme| mv20341 :beneficiary mv20335 :present "PRESENT")
   (:var mv20341 :isa pathway :plural t :pathwaycomponent mv20339 :raw-text "pathways")
   (:var mv20339 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20335 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases frizzled8."
   (:var mv20343 :isa show :|statement-OR-theme| mv20350 :beneficiary mv20344 :present "PRESENT")
   (:var mv20350 :isa evidence :statement mv20349 :has-determiner "THE")
   (:var mv20349 :isa decrease :agent mv20348 :object mv20342 :present "PRESENT" :raw-text
    "decreases")
   (:var mv20348 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20342 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20344 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras decreases the amount of frizzled8?"
   (:var mv20352 :isa show :|statement-OR-theme| mv20363 :beneficiary mv20353 :present "PRESENT")
   (:var mv20363 :isa evidence :statement mv20358 :has-determiner "THE")
   (:var mv20358 :isa decrease :agent mv20357 :|affected-process-OR-object| mv20360 :present
    "PRESENT" :raw-text "decreases")
   (:var mv20357 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20360 :isa bio-amount :measured-item mv20351 :has-determiner "THE" :raw-text "amount")
   (:var mv20351 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20353 :isa interlocutor :name "speaker"))
  ("Show me the evidence that kras regulates frizzled8?"
   (:var mv20365 :isa show :|statement-OR-theme| mv20372 :beneficiary mv20366 :present "PRESENT")
   (:var mv20372 :isa evidence :statement mv20371 :has-determiner "THE")
   (:var mv20371 :isa regulate :agent mv20370 :object mv20364 :present "PRESENT" :raw-text
    "regulates")
   (:var mv20370 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv20364 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv20366 :isa interlocutor :name "speaker"))
  ("Show transcription factors shared by elk1 and srf"
   (:var mv20376 :isa show :|statement-OR-theme| mv20374 :present "PRESENT")
   (:var mv20374 :isa transcription-factor :plural t :predication mv20377 :raw-text
    "transcription factors")
   (:var mv20377 :isa share :object mv20374 :participant mv20381 :past "PAST" :raw-text "shared")
   (:var mv20381 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20375 mv20380))
   (:var mv20375 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20380 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me how stat3 regulates apoptosis"
   (:var mv20385 :isa tell :beneficiary mv20386 :present "PRESENT")
   (:var mv20386 :isa interlocutor :name "speaker"))
  ("Tell me what apoptotic pathways are regulated by stat3 in the liver"
   (:var mv20392 :isa tell :theme mv20407 :beneficiary mv20393 :present "PRESENT")
   (:var mv20407 :isa regulate :affected-process mv20406 :agent mv20391 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20406 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20395 :raw-text
    "pathways")
   (:var mv20395 :isa apoptosis :raw-text "apoptotic")
   (:var mv20391 :isa protein :organ mv20404 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20404 :isa liver :has-determiner "THE")
   (:var mv20393 :isa interlocutor :name "speaker"))
  ("Tell me what genes elk1 and srf regulate"
   (:var mv20411 :isa tell :theme mv20421 :beneficiary mv20412 :present "PRESENT")
   (:var mv20421 :isa gene :plural t :predication mv20418 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20418 :isa regulate :object mv20421 :agent mv20419 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20419 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv20410 mv20417))
   (:var mv20410 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20417 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20412 :isa interlocutor :name "speaker"))
  ("Tell me what pathways are regulated by stat3 in the liver"
   (:var mv20423 :isa tell :theme mv20435 :beneficiary mv20424 :present "PRESENT")
   (:var mv20435 :isa regulate :affected-process mv20434 :agent mv20422 :present "PRESENT"
    :raw-text "regulated")
   (:var mv20434 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv20422 :isa protein :organ mv20433 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv20433 :isa liver :has-determiner "THE")
   (:var mv20424 :isa interlocutor :name "speaker"))
  ("What KEGG pathways involve immune signaling?"
   (:var mv20442 :isa involve :theme mv20446 :object mv20444 :present "PRESENT")
   (:var mv20446 :isa pathway :plural t :has-determiner "WHAT" :modifier mv20439 :raw-text
    "pathways")
   (:var mv20439 :isa database :name "KEGG" :uid "KEGG")
   (:var mv20444 :isa signal :modifier mv20443 :raw-text "signaling")
   (:var mv20443 :isa immune :name "immune"))
  ("What MAP kinase phosphatases are regulated by ELK1?"
   (:var mv20457 :isa regulate :object mv20456 :agent mv20448 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20456 :isa phosphatase :plural t :has-determiner "WHAT" :enzyme mv20447 :raw-text
    "phosphatases")
   (:var mv20447 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv20448 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What apoptotic genes are downstream of stat3?"
   (:var mv20465 :isa be :subject mv20470 :predicate mv20466 :present "PRESENT")
   (:var mv20470 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20461 :raw-text
    "genes")
   (:var mv20461 :isa apoptosis :raw-text "apoptotic")
   (:var mv20466 :isa downstream-segment :pathwaycomponent mv20459 :raw-text "downstream")
   (:var mv20459 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes does stat3 regulate in the liver?"
   (:var mv20479 :isa regulate :object mv20484 :agent mv20472 :organ mv20482 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20484 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20474 :raw-text
    "genes")
   (:var mv20474 :isa apoptosis :raw-text "apoptotic")
   (:var mv20472 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20482 :isa liver :has-determiner "THE"))
  ("What apoptotic genes does stat3 regulate?"
   (:var mv20493 :isa regulate :object mv20495 :agent mv20486 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20495 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20488 :raw-text
    "genes")
   (:var mv20488 :isa apoptosis :raw-text "apoptotic")
   (:var mv20486 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic genes is stat3 upstream of?"
   (:var mv20502 :isa be :subject mv20507 :predicate mv20503 :present "PRESENT")
   (:var mv20507 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20498 :raw-text
    "genes")
   (:var mv20498 :isa apoptosis :raw-text "apoptotic")
   (:var mv20503 :isa upstream-segment :pathwaycomponent mv20507 :modifier mv20496 :raw-text
    "upstream")
   (:var mv20496 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What apoptotic pathways involve stat3?"
   (:var mv20514 :isa involve :theme mv20516 :object mv20508 :present "PRESENT")
   (:var mv20516 :isa pathway :plural t :has-determiner "WHAT" :cellular-process mv20510 :raw-text
    "pathways")
   (:var mv20510 :isa apoptosis :raw-text "apoptotic")
   (:var mv20508 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are Selumetinib's targets?"
   (:var mv20518 :isa be :subject mv20517 :predicate mv20524 :present "PRESENT")
   (:var mv20517 :isa what)
   (:var mv20524 :isa target-protein :plural t :treatment mv20520 :raw-text "targets")
   (:var mv20520 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What are some JAK1 inhibitors?"
   (:var mv20527 :isa be :subject mv20526 :predicate mv20532 :present "PRESENT")
   (:var mv20526 :isa what)
   (:var mv20532 :isa inhibitor :plural t :quantifier mv20528 :protein mv20525 :raw-text
    "inhibitors")
   (:var mv20528 :isa some :word "some")
   (:var mv20525 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What are some drugs that inhibit BRAF?"
   (:var mv20534 :isa be :subject mv20533 :predicate mv20542 :present "PRESENT")
   (:var mv20533 :isa what)
   (:var mv20542 :isa drug :plural t :predication mv20539 :quantifier mv20535 :raw-text "drugs")
   (:var mv20539 :isa inhibit :agent mv20542 :that-rel t :object mv20540 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv20540 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv20535 :isa some :word "some"))
  ("What are some genes in the MAPK signaling pathway?"
   (:var mv20545 :isa be :subject mv20544 :predicate mv20554 :present "PRESENT")
   (:var mv20544 :isa what)
   (:var mv20554 :isa gene :plural t :context mv20543 :quantifier mv20546 :raw-text "genes")
   (:var mv20543 :isa signaling-pathway :has-determiner "THE" :modifier mv20551 :raw-text
    "signaling pathway")
   (:var mv20551 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20546 :isa some :word "some"))
  ("What are some proteins in the MAPK signaling pathway?"
   (:var mv20557 :isa be :subject mv20556 :predicate mv20566 :present "PRESENT")
   (:var mv20556 :isa what)
   (:var mv20566 :isa protein :plural t :in-pathway mv20555 :quantifier mv20558 :raw-text
    "proteins")
   (:var mv20555 :isa signaling-pathway :has-determiner "THE" :modifier mv20563 :raw-text
    "signaling pathway")
   (:var mv20563 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20558 :isa some :word "some"))
  ("What are the members of RAS?"
   (:var mv20568 :isa be :subject mv20567 :predicate mv20576 :present "PRESENT")
   (:var mv20567 :isa what) (:var mv20576 :isa member :plural t :set mv20573 :has-determiner "THE")
   (:var mv20573 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("What are the miRNAS that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20581 :isa be :subject mv20580 :predicate mv20592 :present "PRESENT")
   (:var mv20580 :isa what)
   (:var mv20592 :isa micro-rna :plural t :predication mv20586 :has-determiner "THE" :raw-text
    "miRNAS")
   (:var mv20586 :isa regulate :agent mv20592 :that-rel t :object mv20590 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20590 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20587 mv20588 mv20577 mv20578 mv20579))
   (:var mv20587 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20588 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20577 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20578 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20579 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the regulators of MAPPK14 in bladder"
   (:var mv20594 :isa be :subject mv20593 :predicate mv20607 :present "PRESENT")
   (:var mv20593 :isa what)
   (:var mv20607 :isa regulator :plural t :theme mv20603 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20603 :isa bio-entity :organ mv20602 :name "MAPPK14")
   (:var mv20602 :isa bio-organ :name "bladder" :uid "BTO:0001418"))
  ("What are the regulators of SMURF2 in liver?"
   (:var mv20610 :isa be :subject mv20609 :predicate mv20620 :present "PRESENT")
   (:var mv20609 :isa what)
   (:var mv20620 :isa regulator :plural t :theme mv20608 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20608 :isa protein :organ mv20616 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv20616 :isa liver))
  ("What are the regulators of SMURF2?"
   (:var mv20623 :isa be :subject mv20622 :predicate mv20630 :present "PRESENT")
   (:var mv20622 :isa what)
   (:var mv20630 :isa regulator :plural t :theme mv20621 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20621 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What are the regulators of c-fos in lung?"
   (:var mv20633 :isa be :subject mv20632 :predicate mv20643 :present "PRESENT")
   (:var mv20632 :isa what)
   (:var mv20643 :isa regulator :plural t :theme mv20631 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20631 :isa protein :organ mv20639 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv20639 :isa lung))
  ("What are the regulators of mapk14 in bladeeer"
   (:var mv20646 :isa be :subject mv20645 :predicate mv20656 :present "PRESENT")
   (:var mv20645 :isa what)
   (:var mv20656 :isa regulator :plural t :theme mv20644 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20644 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the regulators of mapk14"
   (:var mv20659 :isa be :subject mv20658 :predicate mv20666 :present "PRESENT")
   (:var mv20658 :isa what)
   (:var mv20666 :isa regulator :plural t :theme mv20657 :has-determiner "THE" :raw-text
    "regulators")
   (:var mv20657 :isa protein :raw-text "mapk14" :uid "UP:Q16539" :name "MK14_HUMAN"))
  ("What are the transcription factors in common to the SRF, HRAS, and elk1 genes?"
   (:var mv20686 :isa copular-predication :item mv20671 :value mv20669 :predicate mv20672)
   (:var mv20671 :isa what) (:var mv20669 :isa in-common :theme mv20684)
   (:var mv20684 :isa gene :plural t :has-determiner "THE" :expresses mv20681 :raw-text "genes")
   (:var mv20681 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv20676 mv20677 mv20670))
   (:var mv20676 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20677 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv20670 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv20672 :isa be :predicate mv20682 :present "PRESENT")
   (:var mv20682 :isa transcription-factor :plural t :has-determiner "THE" :raw-text
    "transcription factors"))
  ("What are the transcription factors that regulate EELK1 and SRF?"
   (:var mv20690 :isa be :subject mv20689 :predicate mv20701 :present "PRESENT")
   (:var mv20689 :isa what)
   (:var mv20701 :isa transcription-factor :plural t :predication mv20693 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20693 :isa regulate :agent mv20701 :that-rel t :object mv20699 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20699 :isa collection :raw-text "EELK1 and SRF" :type protein :number 2 :items
    (mv20698 mv20697))
   (:var mv20698 :isa bio-entity :name "EELK1")
   (:var mv20697 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAAT3, JAK2, and SMAD3?"
   (:var mv20707 :isa be :subject mv20706 :predicate mv20719 :present "PRESENT")
   (:var mv20706 :isa what)
   (:var mv20719 :isa transcription-factor :plural t :predication mv20710 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20710 :isa regulate :agent mv20719 :that-rel t :object mv20717 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20717 :isa collection :raw-text "EGFR, SRF, STAAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20711 mv20712 mv20716 mv20704 mv20705))
   (:var mv20711 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20712 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20716 :isa bio-entity :name "STAAT3")
   (:var mv20704 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20705 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv20726 :isa be :subject mv20725 :predicate mv20735 :present "PRESENT")
   (:var mv20725 :isa what)
   (:var mv20735 :isa transcription-factor :plural t :predication mv20729 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv20729 :isa regulate :agent mv20735 :that-rel t :object mv20733 :present "PRESENT"
    :raw-text "regulate")
   (:var mv20733 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv20730 mv20731 mv20722 mv20723 mv20724))
   (:var mv20730 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv20731 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv20722 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv20723 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv20724 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What are the upstream regulators of CCND1, FOXM1, DHFR, and KLF4?"
   (:var mv20740 :isa be :subject mv20739 :predicate mv20753 :present "PRESENT")
   (:var mv20739 :isa what)
   (:var mv20753 :isa regulator :plural t :theme mv20749 :has-determiner "THE" :context mv20742
    :raw-text "regulators")
   (:var mv20749 :isa collection :raw-text "CCND1, FOXM1, DHFR, and KLF4" :type protein :number 4
    :items (mv20736 mv20737 mv20747 mv20738))
   (:var mv20736 :isa protein :raw-text "CCND1" :uid "UP:P24385" :name "CCND1_HUMAN")
   (:var mv20737 :isa protein :raw-text "FOXM1" :uid "UP:Q08050" :name "FOXM1_HUMAN")
   (:var mv20747 :isa protein :raw-text "DHFR" :uid "UP:P00374" :name "DYR_HUMAN")
   (:var mv20738 :isa protein :raw-text "KLF4" :uid "UP:O43474" :name "KLF4_HUMAN")
   (:var mv20742 :isa upstream-segment :raw-text "upstream"))
  ("What cell cycle genes are regulated by FOS?"
   (:var mv20764 :isa regulate :object mv20763 :agent mv20761 :present "PRESENT" :raw-text
    "regulated")
   (:var mv20763 :isa gene :plural t :has-determiner "WHAT" :cellular-process mv20754 :raw-text
    "genes")
   (:var mv20754 :isa cellular-process :raw-text "cell cycle" :name "cell cycle" :uid "GO:0007049")
   (:var mv20761 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What does ERBB regulate?"
   (:var mv20769 :isa regulate :|affected-process-OR-object| mv20766 :agent mv20768 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20766 :isa what)
   (:var mv20768 :isa protein :raw-text "ERBB" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What does it regulate in liver"
   (:var mv20773 :isa regulate :|affected-process-OR-object| mv20770 :|agent-OR-cause| mv20772
    :organ mv20775 :present "PRESENT" :raw-text "regulate")
   (:var mv20770 :isa what) (:var mv20772 :isa pronoun/inanimate :word "it")
   (:var mv20775 :isa liver))
  ("What does miR-20b-5p target"
   (:var mv20781 :isa target :|affected-process-OR-object| mv20778 :agent mv20777 :present
    "PRESENT" :raw-text "target")
   (:var mv20778 :isa what)
   (:var mv20777 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What does p53 regulate?"
   (:var mv20785 :isa regulate :|affected-process-OR-object| mv20783 :agent mv20782 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20783 :isa what)
   (:var mv20782 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What does rb1 regulate"
   (:var mv20789 :isa regulate :|affected-process-OR-object| mv20787 :agent mv20786 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20787 :isa what)
   (:var mv20786 :isa protein :raw-text "rb1" :uid "UP:P06400" :name "RB_HUMAN"))
  ("What does smad2 regulate"
   (:var mv20793 :isa regulate :|affected-process-OR-object| mv20791 :agent mv20790 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20791 :isa what)
   (:var mv20790 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What does stat regulate"
   (:var mv20797 :isa regulate :|affected-process-OR-object| mv20794 :agent mv20796 :present
    "PRESENT" :raw-text "regulate")
   (:var mv20794 :isa what)
   (:var mv20796 :isa protein :raw-text "stat" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What downregulates fzd8?"
   (:var mv20800 :isa downregulate :|agent-OR-cause| mv20799 :object mv20798 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv20799 :isa what)
   (:var mv20798 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What drug could I use to target pancreatic cancer?"
   (:var mv20814 :isa bio-use :patient mv20803 :modal mv20804 :agent mv20805 :theme mv20813
    :present "PRESENT" :raw-text "use")
   (:var mv20803 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20804 :isa could)
   (:var mv20805 :isa interlocutor :name "speaker")
   (:var mv20813 :isa target :object mv20801 :raw-text "target")
   (:var mv20801 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drug should I use for pancreatic cancer?"
   (:var mv20826 :isa bio-use :object mv20817 :modal mv20818 :agent mv20819 :disease mv20815
    :present "PRESENT" :raw-text "use")
   (:var mv20817 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv20818 :isa should)
   (:var mv20819 :isa interlocutor :name "speaker")
   (:var mv20815 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What drugs are inhibitors of GRB2?"
   (:var mv20831 :isa be :subject mv20835 :predicate mv20837 :present "PRESENT")
   (:var mv20835 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20837 :isa inhibitor :plural t :protein mv20827 :raw-text "inhibitors")
   (:var mv20827 :isa protein :raw-text "GRB2" :uid "UP:P62993" :name "GRB2_HUMAN"))
  ("What drugs inhibit MAP2K1?"
   (:var mv20842 :isa inhibit :agent mv20843 :object mv20838 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv20843 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20838 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What drugs regulate BRAF?"
   (:var mv20847 :isa regulate :agent mv20849 :object mv20848 :present "PRESENT" :raw-text
    "regulate")
   (:var mv20849 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20848 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What drugs target BRAF?"
   (:var mv20854 :isa target :agent mv20856 :object mv20855 :present "PRESENT" :raw-text "target")
   (:var mv20856 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv20855 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are downstream of stat3?"
   (:var mv20861 :isa be :subject mv20865 :predicate mv20862 :present "PRESENT")
   (:var mv20865 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20862 :isa downstream-segment :pathwaycomponent mv20857 :raw-text "downstream")
   (:var mv20857 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes are in the MAPK signaling pathway?"
   (:var mv20880 :isa copular-predication-of-pp :item mv20875 :value mv20879 :prep "IN" :predicate
    mv20871)
   (:var mv20875 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20879 :isa gene :plural t :context mv20867 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20867 :isa signaling-pathway :has-determiner "THE" :modifier mv20874 :raw-text
    "signaling pathway")
   (:var mv20874 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20871 :isa be :present "PRESENT"))
  ("What genes are in the MAPK signaling pathways?"
   (:var mv20898 :isa copular-predication-of-pp :item mv20891 :value mv20897 :prep "IN" :predicate
    mv20887)
   (:var mv20891 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20897 :isa gene :plural t :context mv20893 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20893 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv20890 :raw-text
    "signaling pathways")
   (:var mv20890 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv20887 :isa be :present "PRESENT"))
  ("What genes are in the immune system pathway?"
   (:var mv20913 :isa copular-predication-of-pp :item mv20908 :value mv20912 :prep "IN" :predicate
    mv20904)
   (:var mv20908 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20912 :isa gene :plural t :context mv20907 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20907 :isa pathway :has-determiner "THE" :non-cellular-location mv20900 :raw-text
    "pathway")
   (:var mv20900 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv20904 :isa be :present "PRESENT"))
  ("What genes are in the prolactin signaling pathway?"
   (:var mv20928 :isa copular-predication-of-pp :item mv20923 :value mv20927 :prep "IN" :predicate
    mv20919)
   (:var mv20923 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20927 :isa gene :plural t :context mv20915 :has-determiner "WHAT" :raw-text "genes")
   (:var mv20915 :isa signaling-pathway :has-determiner "THE" :modifier mv20922 :raw-text
    "signaling pathway")
   (:var mv20922 :isa protein :raw-text "prolactin" :uid "UP:P01236" :name "PRL_HUMAN")
   (:var mv20919 :isa be :present "PRESENT"))
  ("What genes are involved in the IL-12 pathway?"
   (:var mv20941 :isa involve :object mv20940 :|context-OR-theme| mv20939 :present "PRESENT")
   (:var mv20940 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20939 :isa pathway :has-determiner "THE" :modifier mv20931 :raw-text "pathway")
   (:var mv20931 :isa protein :raw-text "IL-12" :uid "NCIT:C20514" :name "NCIT:C20514"))
  ("What genes are involved in the Prolactin pathway?"
   (:var mv20953 :isa involve :object mv20952 :|context-OR-theme| mv20951 :present "PRESENT")
   (:var mv20952 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20951 :isa pathway :has-determiner "THE" :modifier mv20950 :raw-text "pathway")
   (:var mv20950 :isa protein :raw-text "Prolactin" :uid "UP:P01236" :name "PRL_HUMAN"))
  ("What genes are involved in the il-12 pathway?"
   (:var mv20965 :isa involve :object mv20964 :|context-OR-theme| mv20963 :present "PRESENT")
   (:var mv20964 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20963 :isa pathway :has-determiner "THE" :modifier mv20955 :raw-text "pathway")
   (:var mv20955 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12"))
  ("What genes are involved in the immune system pathway?"
   (:var mv20977 :isa involve :object mv20976 :|context-OR-theme| mv20975 :present "PRESENT")
   (:var mv20976 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20975 :isa pathway :has-determiner "THE" :non-cellular-location mv20967 :raw-text
    "pathway")
   (:var mv20967 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p and miR-145-5p?"
   (:var mv20993 :isa regulate :object mv20992 :agent mv20991 :present "PRESENT" :superlative
    mv20986 :adverb mv20987 :raw-text "regulated")
   (:var mv20992 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv20991 :isa collection :raw-text "miR-335-5p, miR-155-5p and miR-145-5p" :type micro-rna
    :number 3 :items (mv20979 mv20980 mv20981))
   (:var mv20979 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20980 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20981 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20986 :isa superlative-quantifier :name "most")
   (:var mv20987 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p?"
   (:var mv21010 :isa regulate :object mv21009 :agent mv21008 :present "PRESENT" :superlative
    mv21003 :adverb mv21004 :raw-text "regulated")
   (:var mv21009 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21008 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p and miR-20a-5p"
    :type micro-rna :number 4 :items (mv20995 mv20996 mv20997 mv20998))
   (:var mv20995 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv20996 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv20997 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv20998 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv21003 :isa superlative-quantifier :name "most")
   (:var mv21004 :isa frequently :name "frequently"))
  ("What genes are most frequently regulated by miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p?"
   (:var mv21027 :isa regulate :object mv21026 :agent mv21025 :present "PRESENT" :superlative
    mv21020 :adverb mv21021 :raw-text "regulated")
   (:var mv21026 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21025 :isa collection :raw-text "miR-335-5p, miR-155-5p, miR-145-5p, and miR-20a-5p"
    :type micro-rna :number 4 :items (mv21012 mv21013 mv21014 mv21015))
   (:var mv21012 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv21013 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv21014 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid "MIMAT0000437")
   (:var mv21015 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075")
   (:var mv21020 :isa superlative-quantifier :name "most")
   (:var mv21021 :isa frequently :name "frequently"))
  ("What genes are regulated by FAKEPRTN"
   (:var mv21037 :isa regulate :object mv21036 :agent mv21035 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21036 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21035 :isa bio-entity :name "FAKEPRTN"))
  ("What genes are regulated by elk1 and srf?"
   (:var mv21050 :isa regulate :object mv21049 :agent mv21048 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21049 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21048 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv21039 mv21047))
   (:var mv21039 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv21047 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by miR-20b-5p and MIR-29B-1-5P?"
   (:var mv21063 :isa regulate :object mv21062 :agent mv21061 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21062 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21061 :isa collection :raw-text "miR-20b-5p and MIR-29B-1-5P" :type micro-rna :number 2
    :items (mv21052 mv21053))
   (:var mv21052 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv21053 :isa micro-rna :raw-text "MIR-29B-1-5P" :name "microRNA 29b-1-5pm" :uid
    "MIMAT0004514"))
  ("What genes are regulated by smda2"
   (:var mv21075 :isa regulate :object mv21074 :agent mv21073 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21074 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21073 :isa bio-entity :name "SMDA2"))
  ("What genes are regulated by srf"
   (:var mv21085 :isa regulate :object mv21084 :agent mv21083 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21084 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21083 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are regulated by stat3 and srf"
   (:var mv21098 :isa regulate :object mv21097 :agent mv21096 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21097 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21096 :isa collection :raw-text "stat3 and srf" :type protein :number 2 :items
    (mv21087 mv21095))
   (:var mv21087 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21095 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What genes are targeted by lung cancer?"
   (:var mv21108 :isa target :object mv21107 :cause mv21100 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21107 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21100 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes are there in the MAPK signaling pathway?"
   (:var mv21125 :isa copular-predication-of-pp :item mv21120 :value mv21124 :prep "IN" :predicate
    mv21114)
   (:var mv21120 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21124 :isa gene :plural t :context mv21110 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21110 :isa signaling-pathway :has-determiner "THE" :modifier mv21119 :raw-text
    "signaling pathway")
   (:var mv21119 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv21114 :isa be :present "PRESENT"))
  ("What genes are used in the MAPK signaling pathway?"
   (:var mv21137 :isa bio-use :object mv21136 :context mv21127 :present "PRESENT" :raw-text "used")
   (:var mv21136 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21127 :isa signaling-pathway :has-determiner "THE" :modifier mv21135 :raw-text
    "signaling pathway")
   (:var mv21135 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv21145 :isa target :object mv21146 :cause mv21139 :present "PRESENT" :raw-text "target")
   (:var mv21146 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21139 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What genes does miR-20b-5p target?"
   (:var mv21153 :isa target :object mv21154 :agent mv21147 :present "PRESENT" :raw-text "target")
   (:var mv21154 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21147 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413"))
  ("What genes does miR-562 target?"
   (:var mv21161 :isa target :object mv21162 :agent mv21155 :present "PRESENT" :raw-text "target")
   (:var mv21162 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21155 :isa micro-rna :raw-text "miR-562" :name "microRNA 562" :uid "MI0003569"))
  ("What genes does smad2 upregulate?"
   (:var mv21168 :isa upregulate :object mv21169 :agent mv21163 :present "PRESENT" :raw-text
    "upregulate")
   (:var mv21169 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21163 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What genes does stat3 regulate in liver cells?"
   (:var mv21175 :isa regulate :object mv21180 :agent mv21170 :cell-type mv21181 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21180 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21170 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21181 :isa cell-type :plural t :non-cellular-location mv21177)
   (:var mv21177 :isa liver))
  ("What genes does stat3 regulate in liver?"
   (:var mv21188 :isa regulate :object mv21191 :agent mv21183 :organ mv21190 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21191 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21183 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21190 :isa liver))
  ("What genes does stat3 regulate in lung?"
   (:var mv21198 :isa regulate :object mv21201 :agent mv21193 :organ mv21200 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21201 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21193 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21200 :isa lung))
  ("What genes does stat3 regulate"
   (:var mv21208 :isa regulate :object mv21209 :agent mv21203 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21209 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21203 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes in the liver does stat3 regulate?"
   (:var mv21218 :isa regulate :object mv21221 :agent mv21210 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21221 :isa gene :plural t :organ mv21216 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21216 :isa liver :has-determiner "THE")
   (:var mv21210 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream from?"
   (:var mv21226 :isa be :subject mv21230 :predicate mv21227 :present "PRESENT")
   (:var mv21230 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21227 :isa upstream-segment :modifier mv21222 :raw-text "upstream")
   (:var mv21222 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes is stat3 upstream of?"
   (:var mv21235 :isa be :subject mv21239 :predicate mv21236 :present "PRESENT")
   (:var mv21239 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21236 :isa upstream-segment :pathwaycomponent mv21239 :modifier mv21231 :raw-text
    "upstream")
   (:var mv21231 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What genes regulated by FOS are kinases?"
   (:var mv21246 :isa be :subject mv21251 :predicate mv21248 :present "PRESENT")
   (:var mv21251 :isa gene :plural t :predication mv21243 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21243 :isa regulate :object mv21251 :agent mv21245 :past "PAST" :raw-text "regulated")
   (:var mv21245 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv21248 :isa kinase :plural t :raw-text "kinases"))
  ("What genes regulated by stat3 are kinases?"
   (:var mv21258 :isa be :subject mv21263 :predicate mv21260 :present "PRESENT")
   (:var mv21263 :isa gene :plural t :predication mv21256 :has-determiner "WHAT" :raw-text "genes")
   (:var mv21256 :isa regulate :object mv21263 :agent mv21252 :past "PAST" :raw-text "regulated")
   (:var mv21252 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21260 :isa kinase :plural t :raw-text "kinases"))
  ("What immune pathways involve KRAS and ELK1?"
   (:var mv21269 :isa involve :theme mv21274 :object mv21272 :present "PRESENT")
   (:var mv21274 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21266 :raw-text
    "pathways")
   (:var mv21266 :isa immune :name "immune")
   (:var mv21272 :isa collection :raw-text "KRAS and ELK1" :type protein :number 2 :items
    (mv21270 mv21264))
   (:var mv21270 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21264 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve SRF?"
   (:var mv21279 :isa involve :theme mv21282 :object mv21280 :present "PRESENT")
   (:var mv21282 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21276 :raw-text
    "pathways")
   (:var mv21276 :isa immune :name "immune")
   (:var mv21280 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What immune pathways involve kras and elk1?"
   (:var mv21288 :isa involve :theme mv21293 :object mv21291 :present "PRESENT")
   (:var mv21293 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21285 :raw-text
    "pathways")
   (:var mv21285 :isa immune :name "immune")
   (:var mv21291 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv21289 mv21283))
   (:var mv21289 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21283 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What immune pathways involve tap1 and jak1?"
   (:var mv21300 :isa involve :theme mv21304 :object mv21302 :present "PRESENT")
   (:var mv21304 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21297 :raw-text
    "pathways")
   (:var mv21297 :isa immune :name "immune")
   (:var mv21302 :isa collection :raw-text "tap1 and jak1" :type protein :number 2 :items
    (mv21294 mv21295))
   (:var mv21294 :isa protein :raw-text "tap1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv21295 :isa protein :raw-text "jak1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What inhibits BRAF?"
   (:var mv21306 :isa inhibit :|agent-OR-cause| mv21305 :object mv21307 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv21305 :isa what)
   (:var mv21307 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is STAT3?" (:var mv21310 :isa be :subject mv21309 :predicate mv21308 :present "PRESENT")
   (:var mv21309 :isa what)
   (:var mv21308 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is STAT?" (:var mv21312 :isa be :subject mv21311 :predicate mv21313 :present "PRESENT")
   (:var mv21311 :isa what)
   (:var mv21313 :isa protein :raw-text "STAT" :uid "UP:P35610" :name "SOAT1_HUMAN"))
  ("What is downstream of stat3?"
   (:var mv21316 :isa be :subject mv21315 :predicate mv21317 :present "PRESENT")
   (:var mv21315 :isa what)
   (:var mv21317 :isa downstream-segment :pathwaycomponent mv21314 :raw-text "downstream")
   (:var mv21314 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is erbb?" (:var mv21322 :isa be :subject mv21321 :predicate mv21323 :present "PRESENT")
   (:var mv21321 :isa what)
   (:var mv21323 :isa protein :raw-text "erbb" :uid "UP:P00533" :name "EGFR_HUMAN"))
  ("What is errb?" (:var mv21325 :isa be :subject mv21324 :predicate mv21326 :present "PRESENT")
   (:var mv21324 :isa what) (:var mv21326 :isa bio-entity :name "errb"))
  ("What is regulated by elk1"
   (:var mv21332 :isa regulate :|affected-process-OR-object| mv21328 :agent mv21327 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21328 :isa what)
   (:var mv21327 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What is the evidence that kras decreases frizzled8?"
   (:var mv21336 :isa be :subject mv21335 :predicate mv21342 :present "PRESENT")
   (:var mv21335 :isa what) (:var mv21342 :isa evidence :statement mv21341 :has-determiner "THE")
   (:var mv21341 :isa decrease :agent mv21340 :object mv21334 :present "PRESENT" :raw-text
    "decreases")
   (:var mv21340 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21334 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that kras decreases the amount of frizzled8?"
   (:var mv21345 :isa be :subject mv21344 :predicate mv21355 :present "PRESENT")
   (:var mv21344 :isa what) (:var mv21355 :isa evidence :statement mv21350 :has-determiner "THE")
   (:var mv21350 :isa decrease :agent mv21349 :|affected-process-OR-object| mv21352 :present
    "PRESENT" :raw-text "decreases")
   (:var mv21349 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21352 :isa bio-amount :measured-item mv21343 :has-determiner "THE" :raw-text "amount")
   (:var mv21343 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the target of Selumetinib?"
   (:var mv21357 :isa be :subject mv21356 :predicate mv21359 :present "PRESENT")
   (:var mv21356 :isa what)
   (:var mv21359 :isa target-protein :treatment mv21362 :has-determiner "THE" :raw-text "target")
   (:var mv21362 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What kinases does smad2 regulate"
   (:var mv21369 :isa regulate :object mv21370 :agent mv21364 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21370 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv21364 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("What miRNAs most frequently regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21379 :isa regulate :agent mv21384 :object mv21383 :present "PRESENT" :adverb mv21377
    :adverb mv21378 :raw-text "regulate")
   (:var mv21384 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21383 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21380 mv21381 mv21371 mv21372 mv21373))
   (:var mv21380 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21381 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21371 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21372 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21373 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv21377 :isa superlative-quantifier :name "most")
   (:var mv21378 :isa frequently :name "frequently"))
  ("What miRNAs regulate EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv21391 :isa regulate :agent mv21396 :object mv21395 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21396 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv21395 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv21392 mv21393 mv21385 mv21386 mv21387))
   (:var mv21392 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv21393 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21385 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21386 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv21387 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What micrornas are regulated by p53?"
   (:var mv21405 :isa regulate :object mv21404 :agent mv21397 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21404 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21397 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("What micrornas regulate genes in the mapk signaling pathways"
   (:var mv21412 :isa regulate :agent mv21418 :object mv21422 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21418 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "micrornas")
   (:var mv21422 :isa gene :plural t :context mv21420 :raw-text "genes")
   (:var mv21420 :isa signaling-pathway :plural t :has-determiner "THE" :modifier mv21417 :raw-text
    "signaling pathways")
   (:var mv21417 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21426 :isa bio-entity :has-determiner "WHAT" :name "pahtways"))
  ("What pathways are common to STAT3 and SRF?"
   (:var mv21439 :isa copular-predication :item mv21437 :value mv21432 :predicate mv21431)
   (:var mv21437 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21432 :isa common :theme mv21436)
   (:var mv21436 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21427 mv21435))
   (:var mv21427 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21435 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21431 :isa be :present "PRESENT"))
  ("What pathways involve cfos?"
   (:var mv21443 :isa involve :theme mv21445 :object mv21444 :present "PRESENT")
   (:var mv21445 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21444 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What pathways involve kras and elk1?"
   (:var mv21450 :isa involve :theme mv21454 :object mv21453 :present "PRESENT")
   (:var mv21454 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21453 :isa collection :raw-text "kras and elk1" :type protein :number 2 :items
    (mv21451 mv21446))
   (:var mv21451 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv21446 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What pathways involve the SRF transcription factor?"
   (:var mv21459 :isa involve :theme mv21462 :object mv21455 :present "PRESENT")
   (:var mv21462 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21455 :isa transcription-factor :has-determiner "THE" :modifier mv21461 :raw-text
    "transcription factor")
   (:var mv21461 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways utilize srf and is srf a kinase"
   (:var mv21474 :isa collection :raw-text "What pathways utilize srf and is srf" :type utilize
    :number 2 :items (mv21466 mv21469))
   (:var mv21466 :isa utilize :participant mv21473 :object mv21467 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21473 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv21467 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21469 :isa be :subject mv21473 :predicate mv21470 :present "PRESENT")
   (:var mv21470 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What proteins are in the MAPK family?"
   (:var mv21490 :isa copular-predication-of-pp :item mv21484 :value mv21489 :prep "IN" :predicate
    mv21478)
   (:var mv21484 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21489 :isa protein :plural t :in-family mv21485 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv21485 :isa protein-family :has-determiner "THE" :raw-text "MAPK" :name
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
   (:var mv21478 :isa be :present "PRESENT"))
  ("What proteins are targeted by lung cancer?"
   (:var mv21500 :isa target :object mv21499 :cause mv21492 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21499 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21492 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does PLX-4720 target?"
   (:var mv21508 :isa target :object mv21509 :agent mv21502 :present "PRESENT" :raw-text "target")
   (:var mv21509 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21502 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What proteins does lung cancer target?"
   (:var mv21516 :isa target :object mv21517 :cause mv21510 :present "PRESENT" :raw-text "target")
   (:var mv21517 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21510 :isa cancer :name "lung cancer" :uid "TS-0571"))
  ("What proteins does vemurafenib target?"
   (:var mv21524 :isa target :object mv21525 :agent mv21522 :present "PRESENT" :raw-text "target")
   (:var mv21525 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21522 :isa drug :raw-text "vemurafenib" :name "vemurafenib" :uid "PCID:42611257"))
  ("What proteins might lead to the development of lung cancer?"
   (:var mv21531 :isa lead :agent mv21536 :theme mv21534 :modal mv21530 :raw-text "lead")
   (:var mv21536 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21534 :isa development :disease mv21526 :has-determiner "THE" :raw-text "development")
   (:var mv21526 :isa cancer :name "lung cancer" :uid "TS-0571") (:var mv21530 :isa might))
  ("What proteins might lead to the development of pancreatic cancer."
   (:var mv21544 :isa lead :agent mv21549 :theme mv21547 :modal mv21543 :raw-text "lead")
   (:var mv21549 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv21547 :isa development :disease mv21539 :has-determiner "THE" :raw-text "development")
   (:var mv21539 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv21543 :isa might))
  ("What reactome pathways involve immune signaling?"
   (:var mv21556 :isa involve :theme mv21560 :object mv21558 :present "PRESENT")
   (:var mv21560 :isa pathway :plural t :has-determiner "WHAT" :modifier mv21553 :raw-text
    "pathways")
   (:var mv21553 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21558 :isa signal :modifier mv21557 :raw-text "signaling")
   (:var mv21557 :isa immune :name "immune"))
  ("What regulates HGF?"
   (:var mv21562 :isa regulate :|agent-OR-cause| mv21561 :object mv21563 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21561 :isa what)
   (:var mv21563 :isa protein :raw-text "HGF" :uid "UP:P14210" :name "HGF_HUMAN"))
  ("What regulates SMURF2?"
   (:var mv21566 :isa regulate :|agent-OR-cause| mv21565 :object mv21564 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21565 :isa what)
   (:var mv21564 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What regulates smurf2 in liver"
   (:var mv21569 :isa regulate :|agent-OR-cause| mv21568 :object mv21567 :present "PRESENT"
    :raw-text "regulates")
   (:var mv21568 :isa what)
   (:var mv21567 :isa protein :organ mv21571 :raw-text "smurf2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21571 :isa liver))
  ("What signaling pathways are shared by RELA and ELK1?"
   (:var mv21584 :isa share :object mv21583 :participant mv21582 :present "PRESENT" :raw-text
    "shared")
   (:var mv21583 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21582 :isa collection :raw-text "RELA and ELK1" :type protein :number 2 :items
    (mv21580 mv21575))
   (:var mv21580 :isa protein :raw-text "RELA" :uid "UP:Q04206" :name "TF65_HUMAN")
   (:var mv21575 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What signaling pathways are shared by STAT3 and SRF?"
   (:var mv21597 :isa share :object mv21596 :participant mv21595 :present "PRESENT" :raw-text
    "shared")
   (:var mv21596 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21595 :isa collection :raw-text "STAT3 and SRF" :type protein :number 2 :items
    (mv21588 mv21594))
   (:var mv21588 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21594 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What signaling pathways are shared by STAT3, SOCS3 and SRF?"
   (:var mv21611 :isa share :object mv21610 :participant mv21609 :present "PRESENT" :raw-text
    "shared")
   (:var mv21610 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv21609 :isa collection :raw-text "STAT3, SOCS3 and SRF" :type protein :number 3 :items
    (mv21601 mv21602 mv21608))
   (:var mv21601 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21602 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21608 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What tissues is STAT3 expressed in?"
   (:var mv21620 :isa tissue :plural t :has-determiner "WHAT"))
  ("What transcription factor produces SMURF2?"
   (:var mv21624 :isa bio-produce :agent mv21621 :object mv21622 :present "PRESENT" :raw-text
    "produces")
   (:var mv21621 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21622 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factor transcribes SMURF2?"
   (:var mv21628 :isa transcribe :agent mv21625 :object mv21626 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv21625 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv21626 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21649 :isa copular-predication :item mv21645 :value mv21637 :predicate mv21636)
   (:var mv21645 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21637 :isa common :theme mv21647)
   (:var mv21647 :isa gene :plural t :has-determiner "THE" :expresses mv21644 :raw-text "genes")
   (:var mv21644 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21631 mv21632 mv21640 mv21633 mv21634))
   (:var mv21631 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21632 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21640 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21633 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21634 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21636 :isa be :present "PRESENT"))
  ("What transcription factors are common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21668 :isa copular-predication :item mv21664 :value mv21657 :predicate mv21656)
   (:var mv21664 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21657 :isa common :theme mv21666)
   (:var mv21666 :isa gene :plural t :has-determiner "THE" :expresses mv21663 :raw-text "genes")
   (:var mv21663 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21652 mv21653 mv21654))
   (:var mv21652 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21653 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21654 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21656 :isa be :present "PRESENT"))
  ("What genes does stat3 regulate?"
   (:var mv21674 :isa regulate :object mv21675 :agent mv21669 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21675 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv21669 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What transcription factors are common to these genes?"
   (:var mv21688 :isa copular-predication :item mv21685 :value mv21680 :predicate mv21679)
   (:var mv21685 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21680 :isa common :theme mv21686)
   (:var mv21686 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv21679 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21709 :isa copular-predication :item mv21705 :value mv21691 :predicate mv21697)
   (:var mv21705 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21691 :isa in-common :theme mv21707)
   (:var mv21707 :isa gene :plural t :has-determiner "THE" :expresses mv21704 :raw-text "genes")
   (:var mv21704 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21692 mv21693 mv21700 mv21694 mv21695))
   (:var mv21692 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21693 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21700 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21694 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21695 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21697 :isa be :present "PRESENT"))
  ("What transcription factors are in common to the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21728 :isa copular-predication :item mv21724 :value mv21712 :predicate mv21717)
   (:var mv21724 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21712 :isa in-common :theme mv21726)
   (:var mv21726 :isa gene :plural t :has-determiner "THE" :expresses mv21723 :raw-text "genes")
   (:var mv21723 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21713 mv21714 mv21715))
   (:var mv21713 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21714 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21715 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN")
   (:var mv21717 :isa be :present "PRESENT"))
  ("What transcription factors are regulators of SMURF2 in liver?"
   (:var mv21733 :isa be :subject mv21739 :predicate mv21742 :present "PRESENT")
   (:var mv21739 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21742 :isa regulator :plural t :theme mv21731 :raw-text "regulators")
   (:var mv21731 :isa protein :organ mv21738 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21738 :isa liver))
  ("What transcription factors are regulators of SMURF2?"
   (:var mv21747 :isa be :subject mv21751 :predicate mv21753 :present "PRESENT")
   (:var mv21751 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21753 :isa regulator :plural t :theme mv21745 :raw-text "regulators")
   (:var mv21745 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What transcription factors are shared by the SRF, HRAS, and elk1 genes?"
   (:var mv21769 :isa share :object mv21768 :participant mv21771 :present "PRESENT" :raw-text
    "shared")
   (:var mv21768 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21771 :isa gene :plural t :has-determiner "THE" :expresses mv21767 :raw-text "genes")
   (:var mv21767 :isa collection :raw-text "SRF, HRAS, and elk1" :type protein :number 3 :items
    (mv21762 mv21763 mv21756))
   (:var mv21762 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21763 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv21756 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What transcription factors regulate SMURF2 in liver?"
   (:var mv21777 :isa regulate :agent mv21780 :object mv21775 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21780 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21775 :isa protein :organ mv21779 :raw-text "SMURF2" :uid "UP:Q9HAU4" :name
    "SMUF2_HUMAN")
   (:var mv21779 :isa liver))
  ("What transcription factors regulate ZEB1?"
   (:var mv21786 :isa regulate :agent mv21787 :object mv21784 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21787 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21784 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("What transcription factors regulate erk"
   (:var mv21791 :isa regulate :agent mv21793 :object mv21792 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21793 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21792 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors regulate genes in the mapk signaling pathwya"
   (:var mv21797 :isa regulate :agent mv21805 :theme mv21804 :object mv21799 :present "PRESENT"
    :raw-text "regulate")
   (:var mv21805 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21804 :isa bio-entity :has-determiner "THE" :modifier mv21802 :cellular-process mv21803
    :name "pathwya")
   (:var mv21802 :isa protein-family :raw-text "mapk" :name "mitogen activated protein kinase"
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
   (:var mv21803 :isa signal :raw-text "signaling")
   (:var mv21799 :isa gene :plural t :raw-text "genes"))
  ("What transcription factors regulated frizzled8?"
   (:var mv21811 :isa regulate :agent mv21812 :object mv21809 :past "PAST" :raw-text "regulated")
   (:var mv21812 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21809 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What transcription factors transcribe SMURF2?"
   (:var mv21817 :isa transcribe :agent mv21818 :object mv21815 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv21818 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21815 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("What upregulates fzd8?"
   (:var mv21821 :isa upregulate :|agent-OR-cause| mv21820 :object mv21819 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv21820 :isa what)
   (:var mv21819 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Where is STAT3 expressed?"
   (:var mv21827 :isa gene-transcript-express :location mv21823 :object mv21822 :past "PAST"
    :raw-text "expressed")
   (:var mv21823 :isa where)
   (:var mv21822 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which KEGG pathways involve SRF?"
   (:var mv21832 :isa involve :theme mv21835 :object mv21833 :present "PRESENT")
   (:var mv21835 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21829 :raw-text
    "pathways")
   (:var mv21829 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21833 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which KEGG pathways use SRF?"
   (:var mv21841 :isa bio-use :agent mv21844 :object mv21842 :present "PRESENT" :raw-text "use")
   (:var mv21844 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21837 :raw-text
    "pathways")
   (:var mv21837 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21842 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors regulate frizzled8?"
   (:var mv21849 :isa regulate :agent mv21850 :object mv21847 :present "PRESENT" :raw-text
    "regulate")
   (:var mv21850 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv21847 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which also regulate srf"
   (:var mv21854 :isa regulate :|agent-OR-cause| mv21851 :object mv21855 :present "PRESENT" :adverb
    mv21852 :raw-text "regulate")
   (:var mv21851 :isa which)
   (:var mv21855 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv21852 :isa also :name "also"))
  ("Which apoptotic genes are regulated by stat3?"
   (:var mv21867 :isa regulate :object mv21866 :agent mv21856 :present "PRESENT" :raw-text
    "regulated")
   (:var mv21866 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21858 :raw-text
    "genes")
   (:var mv21858 :isa apoptosis :raw-text "apoptotic")
   (:var mv21856 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which apoptotic genes is stat3 upstream of?"
   (:var mv21875 :isa be :subject mv21880 :predicate mv21876 :present "PRESENT")
   (:var mv21880 :isa gene :plural t :has-determiner "WHICH" :cellular-process mv21871 :raw-text
    "genes")
   (:var mv21871 :isa apoptosis :raw-text "apoptotic")
   (:var mv21876 :isa upstream-segment :pathwaycomponent mv21880 :modifier mv21869 :raw-text
    "upstream")
   (:var mv21869 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes are targeted by STAT3?"
   (:var mv21889 :isa target :object mv21888 :agent mv21881 :present "PRESENT" :raw-text
    "targeted")
   (:var mv21888 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv21881 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which genes regulated by stat3 are kinases?"
   (:var mv21897 :isa be :subject mv21902 :predicate mv21899 :present "PRESENT")
   (:var mv21902 :isa gene :plural t :predication mv21895 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv21895 :isa regulate :object mv21902 :agent mv21891 :past "PAST" :raw-text "regulated")
   (:var mv21891 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21899 :isa kinase :plural t :raw-text "kinases"))
  ("Which immune pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv21921 :isa share :object mv21920 :participant mv21922 :present "PRESENT" :raw-text
    "shared")
   (:var mv21920 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21908 :raw-text
    "pathways")
   (:var mv21908 :isa immune :name "immune")
   (:var mv21922 :isa gene :plural t :expresses mv21918 :raw-text "genes")
   (:var mv21918 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv21903 mv21904 mv21914 mv21905 mv21906))
   (:var mv21903 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21904 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21914 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv21905 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv21906 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which immune pathways are shared by the STAT3, SOCS3, and CREB5 genes?"
   (:var mv21941 :isa share :object mv21940 :participant mv21943 :present "PRESENT" :raw-text
    "shared")
   (:var mv21940 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21928 :raw-text
    "pathways")
   (:var mv21928 :isa immune :name "immune")
   (:var mv21943 :isa gene :plural t :has-determiner "THE" :expresses mv21938 :raw-text "genes")
   (:var mv21938 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv21924 mv21925 mv21926))
   (:var mv21924 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv21925 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv21926 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which kegg pathways utilize genes regulated by smad2"
   (:var mv21950 :isa utilize :participant mv21956 :object mv21952 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21956 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21947 :raw-text
    "pathways")
   (:var mv21947 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21952 :isa gene :plural t :predication mv21953 :raw-text "genes")
   (:var mv21953 :isa regulate :object mv21952 :agent mv21945 :past "PAST" :raw-text "regulated")
   (:var mv21945 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which Reactome pathways utilize SRF?"
   (:var mv21963 :isa utilize :participant mv21966 :object mv21964 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21966 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21960 :raw-text
    "pathways")
   (:var mv21960 :isa database :name "Reactome" :uid "Reactome")
   (:var mv21964 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which kegg pathways utilize it"
   (:var mv21971 :isa utilize :participant mv21974 :object mv21972 :present "PRESENT" :raw-text
    "utilize")
   (:var mv21974 :isa pathway :plural t :has-determiner "WHICH" :modifier mv21968 :raw-text
    "pathways")
   (:var mv21968 :isa database :name "KEGG" :uid "KEGG")
   (:var mv21972 :isa pronoun/inanimate :word "it"))
  ("Which of them are regulated by elk1"
   (:var mv21982 :isa regulate :|affected-process-OR-object| mv21978 :agent mv21975 :present
    "PRESENT" :raw-text "regulated")
   (:var mv21978 :isa pronoun/plural :quantifier mv21976 :word "them") (:var mv21976 :isa which)
   (:var mv21975 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are expressed in liver"
   (:var mv21992 :isa gene-transcript-express :object mv21987 :organ mv21991 :present "PRESENT"
    :raw-text "expressed")
   (:var mv21987 :isa these :quantifier mv21985 :word "these") (:var mv21985 :isa which)
   (:var mv21991 :isa liver))
  ("Which of these are in immune pathways"
   (:var mv22005 :isa copular-predication-of-pp :item mv21997 :value mv22003 :prep mv21999
    :predicate mv21998)
   (:var mv21997 :isa these :quantifier mv21995 :word "these") (:var mv21995 :isa which)
   (:var mv22003 :isa pathway :plural t :modifier mv22000 :raw-text "pathways")
   (:var mv22000 :isa immune :name "immune") (:var mv21999 :isa in :word "in")
   (:var mv21998 :isa be :present "PRESENT"))
  ("what proteins does MEK phosphorylate?"
   (:var mv22012 :isa phosphorylate :substrate mv22013 :agent mv22011 :present "PRESENT" :raw-text
    "phosphorylate")
   (:var mv22013 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv22011 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("Which of these are kinases"
   (:var mv22017 :isa be :subject mv22016 :predicate mv22019 :present "PRESENT")
   (:var mv22016 :isa these :quantifier mv22014 :word "these") (:var mv22014 :isa which)
   (:var mv22019 :isa kinase :plural t :raw-text "kinases"))
  ("Which of those are regulated by elk1"
   (:var mv22028 :isa regulate :|affected-process-OR-object| mv22024 :agent mv22021 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22024 :isa those :quantifier mv22022 :word "those") (:var mv22022 :isa which)
   (:var mv22021 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by elk1"
   (:var mv22038 :isa regulate :|affected-process-OR-object| mv22034 :agent mv22031 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22034 :isa these :quantifier mv22032 :word "these") (:var mv22032 :isa which)
   (:var mv22031 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Which of these are regulated by fakeprotein"
   (:var mv22048 :isa regulate :|affected-process-OR-object| mv22043 :agent mv22047 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22043 :isa these :quantifier mv22041 :word "these") (:var mv22041 :isa which)
   (:var mv22047 :isa bio-entity :name "fakeprotein"))
  ("Which pathways are shared by STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv22067 :isa share :object mv22066 :participant mv22068 :present "PRESENT" :raw-text
    "shared")
   (:var mv22066 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22068 :isa gene :plural t :expresses mv22065 :raw-text "genes")
   (:var mv22065 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv22051 mv22052 mv22061 mv22053 mv22054))
   (:var mv22051 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22052 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22061 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv22053 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv22054 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by stat3, socs3, and creb5"
   (:var mv22082 :isa share :object mv22081 :participant mv22080 :present "PRESENT" :raw-text
    "shared")
   (:var mv22081 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22080 :isa collection :raw-text "stat3, socs3, and creb5" :type protein :number 3 :items
    (mv22070 mv22071 mv22072))
   (:var mv22070 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22071 :isa protein :raw-text "socs3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22072 :isa protein :raw-text "creb5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways are shared by the STAT3, SOCS3, IFNG, FOXO3, and CREB5 genes?"
   (:var mv22101 :isa share :object mv22100 :participant mv22103 :present "PRESENT" :raw-text
    "shared")
   (:var mv22100 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22103 :isa gene :plural t :has-determiner "THE" :expresses mv22099 :raw-text "genes")
   (:var mv22099 :isa collection :raw-text "STAT3, SOCS3, IFNG, FOXO3, and CREB5" :type protein
    :number 5 :items (mv22084 mv22085 mv22095 mv22086 mv22087))
   (:var mv22084 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22085 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv22095 :isa protein :raw-text "IFNG" :uid "UP:P01579" :name "IFNG_HUMAN")
   (:var mv22086 :isa protein :raw-text "FOXO3" :uid "UP:O43524" :name "FOXO3_HUMAN")
   (:var mv22087 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("Which pathways involve TAP1 and JAK1?"
   (:var mv22110 :isa involve :theme mv22113 :object mv22112 :present "PRESENT")
   (:var mv22113 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22112 :isa collection :raw-text "TAP1 and JAK1" :type protein :number 2 :items
    (mv22105 mv22106))
   (:var mv22105 :isa protein :raw-text "TAP1" :uid "UP:Q03518" :name "TAP1_HUMAN")
   (:var mv22106 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("Which pathways involve calcium?"
   (:var mv22117 :isa involve :theme mv22119 :object mv22118 :present "PRESENT")
   (:var mv22119 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22118 :isa calcium :raw-text "calcium"))
  ("Which pathways use SRF?"
   (:var mv22124 :isa bio-use :agent mv22126 :object mv22125 :present "PRESENT" :raw-text "use")
   (:var mv22126 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22125 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways use these"
   (:var mv22131 :isa bio-use :agent mv22133 :object mv22132 :present "PRESENT" :raw-text "use")
   (:var mv22133 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22132 :isa these :word "these"))
  ("Which pathways utilize SRF?"
   (:var mv22137 :isa utilize :participant mv22139 :object mv22138 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22139 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22138 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which pathways utilize these genes"
   (:var mv22143 :isa utilize :participant mv22147 :object mv22148 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22147 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv22148 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("Which proteins are targeted by STAT3?"
   (:var mv22157 :isa target :object mv22156 :agent mv22149 :present "PRESENT" :raw-text
    "targeted")
   (:var mv22156 :isa protein :plural t :has-determiner "WHICH" :raw-text "proteins")
   (:var mv22149 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which reactome pathways utilize srf"
   (:var mv22163 :isa utilize :participant mv22166 :object mv22164 :present "PRESENT" :raw-text
    "utilize")
   (:var mv22166 :isa pathway :plural t :has-determiner "WHICH" :modifier mv22160 :raw-text
    "pathways")
   (:var mv22160 :isa database :name "Reactome" :uid "Reactome")
   (:var mv22164 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Which transcription factors are in the MAPK signaling pathway?"
   (:var mv22180 :isa copular-predication-of-pp :item mv22175 :value mv22179 :prep "IN" :predicate
    mv22171)
   (:var mv22175 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22179 :isa transcription-factor :plural t :in-pathway mv22169 :has-determiner "WHICH"
    :raw-text "transcription factors")
   (:var mv22169 :isa signaling-pathway :has-determiner "THE" :modifier mv22174 :raw-text
    "signaling pathway")
   (:var mv22174 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv22171 :isa be :present "PRESENT"))
  ("Which transcription factors regulate frizzled8 in the liver?"
   (:var mv22186 :isa regulate :agent mv22190 :object mv22184 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22190 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22184 :isa protein :organ mv22189 :raw-text "frizzled8" :uid "UP:Q9H461" :name
    "FZD8_HUMAN")
   (:var mv22189 :isa liver :has-determiner "THE"))
  ("Which transcription factors regulate frizzled8?"
   (:var mv22196 :isa regulate :agent mv22197 :object mv22194 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22197 :isa transcription-factor :plural t :has-determiner "WHICH" :raw-text
    "transcription factors")
   (:var mv22194 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Let's move AKT1 on top."
   (:var mv22205 :isa explicit-suggestion :suggestion mv22201 :marker let-as-directive)
   (:var mv22201 :isa move-to :|at-relative-location-OR-goal| mv22203 :theme mv22199 :present
    "PRESENT")
   (:var mv22203 :isa top-qua-location)
   (:var mv22199 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's show the phosphorylated AKT1 on top."
   (:var mv22214 :isa explicit-suggestion :suggestion mv22208 :marker let-as-directive)
   (:var mv22208 :isa show :at-relative-location mv22212 :|statement-OR-theme| mv22207 :present
    "PRESENT")
   (:var mv22212 :isa top-qua-location)
   (:var mv22207 :isa protein :has-determiner "THE" :predication mv22210 :raw-text "AKT1" :uid
    "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22210 :isa phosphorylate :substrate mv22207 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRAF?"
   (:var mv22217 :isa be :subject mv22216 :predicate mv22229 :present "PRESENT")
   (:var mv22216 :isa what)
   (:var mv22229 :isa upstream-segment :plural t :pathwaycomponent mv22225 :has-determiner "THE"
    :predication mv22219 :raw-text "upstreams")
   (:var mv22225 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv22215 mv22224))
   (:var mv22215 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22224 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv22219 :isa common))
  ("Is stat3 expressed exclusively in liver?" (:var mv22237 :isa polar-question :statement mv22232)
   (:var mv22232 :isa gene-transcript-express :object mv22230 :organ mv22235 :past "PAST" :raw-text
    "expressed")
   (:var mv22230 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22235 :isa liver))
  ("Is stat3 expressed in spleen?" (:var mv22244 :isa polar-question :statement mv22240)
   (:var mv22240 :isa gene-transcript-express :object mv22238 :organ mv22242 :past "PAST" :raw-text
    "expressed")
   (:var mv22238 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22242 :isa spleen))
  ("Show phosphorylated akt1 on top."
   (:var mv22246 :isa show :at-relative-location mv22249 :|statement-OR-theme| mv22245 :present
    "PRESENT")
   (:var mv22249 :isa top-qua-location)
   (:var mv22245 :isa protein :predication mv22247 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv22247 :isa phosphorylate :substrate mv22245 :raw-text "phosphorylated"))
  ("What are the common upstreams of AKT1 and  BRA?"
   (:var mv22253 :isa be :subject mv22252 :predicate mv22265 :present "PRESENT")
   (:var mv22252 :isa what)
   (:var mv22265 :isa upstream-segment :plural t :pathwaycomponent mv22261 :has-determiner "THE"
    :predication mv22255 :raw-text "upstreams")
   (:var mv22261 :isa collection :raw-text "AKT1 and  BRA" :type protein :number 2 :items
    (mv22251 mv22260))
   (:var mv22251 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv22260 :isa bio-entity :name "BRA") (:var mv22255 :isa common))
  ("RAF activates MEK and MEK activates ERK."
   (:var mv22273 :isa collection :raw-text "RAF activates MEK and MEK activates ERK" :type
    bio-activate :number 2 :items (mv22267 mv22271))
   (:var mv22267 :isa bio-activate :agent mv22266 :object mv22268 :present "PRESENT" :raw-text
    "activates")
   (:var mv22266 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv22268 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22271 :isa bio-activate :agent mv22270 :object mv22272 :present "PRESENT" :raw-text
    "activates")
   (:var mv22270 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22272 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is the path from RAF to MEK?"
   (:var mv22275 :isa be :subject mv22274 :predicate mv22277 :present "PRESENT")
   (:var mv22274 :isa what)
   (:var mv22277 :isa path :end mv22281 :start mv22279 :has-determiner "THE")
   (:var mv22281 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22279 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("remove the fact that mek activates erk"
   (:var mv22284 :isa remove :object mv22291 :present "PRESENT" :raw-text "remove")
   (:var mv22291 :isa fact :statement mv22289 :has-determiner "THE")
   (:var mv22289 :isa bio-activate :agent mv22288 :object mv22290 :present "PRESENT" :raw-text
    "activates")
   (:var mv22288 :isa protein-family :raw-text "mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22290 :isa protein-family :raw-text "erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("let's show phosphorylated akt1 on top."
   (:var mv22299 :isa explicit-suggestion :suggestion mv22294 :marker let-as-directive)
   (:var mv22294 :isa show :at-relative-location mv22297 :|statement-OR-theme| mv22293 :present
    "PRESENT")
   (:var mv22297 :isa top-qua-location)
   (:var mv22293 :isa protein :predication mv22295 :raw-text "akt1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv22295 :isa phosphorylate :substrate mv22293 :raw-text "phosphorylated"))
  ("what are positive regulators of the cfos gene?"
   (:var mv22303 :isa be :subject mv22302 :predicate mv22309 :present "PRESENT")
   (:var mv22302 :isa what)
   (:var mv22309 :isa positive-regulator :plural t :theme mv22307 :raw-text "positive regulators")
   (:var mv22307 :isa gene :has-determiner "THE" :expresses mv22306 :raw-text "gene")
   (:var mv22306 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what transcription factors regulate FOS in soft tissue?"
   (:var mv22314 :isa regulate :agent mv22317 :object mv22315 :present "PRESENT" :raw-text
    "regulate")
   (:var mv22317 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22315 :isa protein :organ mv22312 :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv22312 :isa bio-organ :name "soft tissue" :uid "NCIT:C12471"))
  ("Are there any drugs inhibiting MEK?" (:var mv22330 :isa polar-question :statement mv22327)
   (:var mv22327 :isa there-exists :value mv22329 :predicate mv22320)
   (:var mv22329 :isa drug :plural t :predication mv22325 :quantifier mv22322 :raw-text "drugs")
   (:var mv22325 :isa inhibit :agent mv22329 :object mv22326 :progressive "PROGRESSIVE" :raw-text
    "inhibiting")
   (:var mv22326 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv22322 :isa any :word "any") (:var mv22320 :isa syntactic-there))
  ("Are there any drugs targeting KRAS?" (:var mv22342 :isa polar-question :statement mv22339)
   (:var mv22339 :isa there-exists :value mv22341 :predicate mv22332)
   (:var mv22341 :isa drug :plural t :predication mv22337 :quantifier mv22334 :raw-text "drugs")
   (:var mv22337 :isa target :agent mv22341 :object mv22338 :progressive "PROGRESSIVE" :raw-text
    "targeting")
   (:var mv22338 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22334 :isa any :word "any") (:var mv22332 :isa syntactic-there))
  ("Are there any genes in the liver that are regulated by stat3?"
   (:var mv22364 :isa polar-question :statement mv22357)
   (:var mv22357 :isa there-exists :value mv22363 :predicate mv22345)
   (:var mv22363 :isa gene :plural t :predication mv22359 :organ mv22352 :quantifier mv22347
    :raw-text "genes")
   (:var mv22359 :isa regulate :object mv22363 :that-rel t :agent mv22343 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22343 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22352 :isa liver :has-determiner "THE") (:var mv22347 :isa any :word "any")
   (:var mv22345 :isa syntactic-there))
  ("Are there any genes involved in apoptosis that are regulated by stat3?"
   (:var mv22385 :isa polar-question :statement mv22379)
   (:var mv22379 :isa there-exists :value mv22384 :predicate mv22367)
   (:var mv22384 :isa gene :plural t :predication mv22372 :quantifier mv22369 :raw-text "genes")
   (:var mv22372 :isa involve :object mv22384 :theme mv22374 :past "PAST")
   (:var mv22374 :isa apoptosis :predication mv22381 :raw-text "apoptosis")
   (:var mv22381 :isa regulate :affected-process mv22374 :that-rel t :agent mv22365 :present
    "PRESENT" :raw-text "regulated")
   (:var mv22365 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22369 :isa any :word "any") (:var mv22367 :isa syntactic-there))
  ("Are there any genes stat3 is upstream of?" (:var mv22397 :isa there-exists :predicate mv22388)
   (:var mv22388 :isa syntactic-there))
  ("Are there any inhibitors for JAK1?" (:var mv22410 :isa polar-question :statement mv22406)
   (:var mv22406 :isa there-exists :value mv22409 :predicate mv22400)
   (:var mv22409 :isa inhibitor :plural t :|target-OR-protein| mv22398 :quantifier mv22402
    :raw-text "inhibitors")
   (:var mv22398 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv22402 :isa any :word "any") (:var mv22400 :isa syntactic-there))
  ("Are there genes regulated by elk1 and srf"
   (:var mv22425 :isa polar-question :statement mv22421)
   (:var mv22421 :isa there-exists :value mv22424 :predicate mv22413)
   (:var mv22424 :isa gene :plural t :predication mv22417 :raw-text "genes")
   (:var mv22417 :isa regulate :object mv22424 :agent mv22422 :past "PAST" :raw-text "regulated")
   (:var mv22422 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22411 mv22420))
   (:var mv22411 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22420 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22413 :isa syntactic-there))
  ("Can you find any apoptotic pathways stat3 is involved in?"
   (:var mv22440 :isa polar-question :statement mv22430)
   (:var mv22430 :isa bio-find :agent mv22428 :object mv22426 :modal "CAN" :raw-text "find")
   (:var mv22428 :isa interlocutor :name "hearer")
   (:var mv22426 :isa protein :quantifier mv22431 :cellular-process mv22432 :context mv22435
    :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22431 :isa any :word "any") (:var mv22432 :isa apoptosis :raw-text "apoptotic")
   (:var mv22435 :isa pathway :plural t :raw-text "pathways"))
  ("Can you find any apoptotic pathways that stat3 is involved in?" (:var mv22442 :isa can))
  ("Can you look up which genes targeted by stat3 are involved in apoptosis?"
   (:var mv22480 :isa polar-question :statement mv22479) (:var mv22479 :isa look-up :actor mv22461)
   (:var mv22461 :isa interlocutor :name "hearer"))
  ("Can you show me genes regulated by ELK1" (:var mv22492 :isa polar-question :statement mv22484)
   (:var mv22484 :isa show :agent mv22483 :|statement-OR-theme| mv22491 :beneficiary mv22485 :modal
    "CAN")
   (:var mv22483 :isa interlocutor :name "hearer")
   (:var mv22491 :isa gene :plural t :predication mv22488 :raw-text "genes")
   (:var mv22488 :isa regulate :object mv22491 :agent mv22481 :past "PAST" :raw-text "regulated")
   (:var mv22481 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22485 :isa interlocutor :name "speaker"))
  ("Can you show me genes that are regulated by ELK1"
   (:var mv22507 :isa polar-question :statement mv22496)
   (:var mv22496 :isa show :agent mv22495 :|statement-OR-theme| mv22506 :beneficiary mv22497 :modal
    "CAN")
   (:var mv22495 :isa interlocutor :name "hearer")
   (:var mv22506 :isa gene :plural t :predication mv22504 :raw-text "genes")
   (:var mv22504 :isa regulate :object mv22506 :that-rel t :agent mv22493 :modal "CAN" :raw-text
    "regulated")
   (:var mv22493 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22497 :isa interlocutor :name "speaker"))
  ("Can you show me the pahtways that involve SRF"
   (:var mv22517 :isa polar-question :statement mv22510)
   (:var mv22510 :isa show :agent mv22509 :|statement-OR-theme| mv22513 :beneficiary mv22511 :modal
    "CAN")
   (:var mv22509 :isa interlocutor :name "hearer")
   (:var mv22513 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv22511 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes regulated by STAT3"
   (:var mv22531 :isa polar-question :statement mv22521)
   (:var mv22521 :isa tell :agent mv22520 :theme mv22530 :beneficiary mv22522 :modal "CAN")
   (:var mv22520 :isa interlocutor :name "hearer")
   (:var mv22530 :isa gene :plural t :predication mv22526 :has-determiner "THE" :raw-text "genes")
   (:var mv22526 :isa regulate :object mv22530 :agent mv22518 :past "PAST" :raw-text "regulated")
   (:var mv22518 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22522 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that STAT3 regulates"
   (:var mv22544 :isa polar-question :statement mv22535)
   (:var mv22535 :isa tell :agent mv22534 :theme mv22543 :beneficiary mv22536 :modal "CAN")
   (:var mv22534 :isa interlocutor :name "hearer")
   (:var mv22543 :isa gene :plural t :predication mv22541 :has-determiner "THE" :raw-text "genes")
   (:var mv22541 :isa regulate :object mv22543 :that-rel t :agent mv22532 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22532 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22536 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes that are regulated by STAT3"
   (:var mv22561 :isa polar-question :statement mv22548)
   (:var mv22548 :isa tell :agent mv22547 :theme mv22560 :beneficiary mv22549 :modal "CAN")
   (:var mv22547 :isa interlocutor :name "hearer")
   (:var mv22560 :isa gene :plural t :predication mv22558 :has-determiner "THE" :raw-text "genes")
   (:var mv22558 :isa regulate :object mv22560 :that-rel t :agent mv22545 :modal "CAN" :raw-text
    "regulated")
   (:var mv22545 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22549 :isa interlocutor :name "speaker"))
  ("Can you tell me the genes which are regulated by STAT3"
   (:var mv22579 :isa polar-question :statement mv22565)
   (:var mv22565 :isa tell :agent mv22564 :theme mv22578 :beneficiary mv22566 :modal "CAN")
   (:var mv22564 :isa interlocutor :name "hearer")
   (:var mv22578 :isa gene :plural t :predication mv22577 :has-determiner "THE" :raw-text "genes")
   (:var mv22577 :isa regulate :object mv22578 :agent mv22562 :modal mv22563 :raw-text "regulated")
   (:var mv22562 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22563 :isa can) (:var mv22566 :isa interlocutor :name "speaker"))
  ("Can you tell me what transcription factors are shared by elk1 and srf"
   (:var mv22597 :isa polar-question :statement mv22585)
   (:var mv22585 :isa tell :agent mv22584 :theme mv22595 :beneficiary mv22586 :modal "CAN")
   (:var mv22584 :isa interlocutor :name "hearer")
   (:var mv22595 :isa share :object mv22594 :participant mv22593 :modal "CAN" :raw-text "shared")
   (:var mv22594 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv22593 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22582 mv22592))
   (:var mv22582 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22592 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv22586 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes are regulated by STAT3"
   (:var mv22612 :isa polar-question :statement mv22601)
   (:var mv22601 :isa tell :agent mv22600 :theme mv22610 :beneficiary mv22602 :modal "CAN")
   (:var mv22600 :isa interlocutor :name "hearer")
   (:var mv22610 :isa regulate :object mv22609 :agent mv22598 :modal "CAN" :raw-text "regulated")
   (:var mv22609 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv22598 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22602 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes in the liver are regulated by stat3?"
   (:var mv22632 :isa polar-question :statement mv22616)
   (:var mv22616 :isa tell :agent mv22615 :theme mv22628 :beneficiary mv22617 :modal "CAN")
   (:var mv22615 :isa interlocutor :name "hearer")
   (:var mv22628 :isa regulate :object mv22631 :agent mv22613 :modal "CAN" :raw-text "regulated")
   (:var mv22631 :isa gene :plural t :organ mv22623 :has-determiner "WHICH" :raw-text "genes")
   (:var mv22623 :isa liver :has-determiner "THE")
   (:var mv22613 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22617 :isa interlocutor :name "speaker"))
  ("Can you tell me which genes stat3 regulates?"
   (:var mv22644 :isa polar-question :statement mv22636)
   (:var mv22636 :isa tell :agent mv22635 :theme mv22643 :beneficiary mv22637 :modal "CAN")
   (:var mv22635 :isa interlocutor :name "hearer")
   (:var mv22643 :isa gene :plural t :predication mv22641 :has-determiner "WHICH" :raw-text
    "genes")
   (:var mv22641 :isa regulate :object mv22643 :agent mv22633 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22633 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22637 :isa interlocutor :name "speaker"))
  ("Does STAT3 affect the expression of c-fos?"
   (:var mv22654 :isa polar-question :statement mv22652)
   (:var mv22652 :isa affect :agent mv22645 :affected-process mv22650 :raw-text "affect")
   (:var mv22645 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22650 :isa gene-transcript-express :object mv22646 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22646 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 affect the expression of the c-fos gene?"
   (:var mv22666 :isa polar-question :statement mv22664)
   (:var mv22664 :isa affect :agent mv22655 :affected-process mv22660 :raw-text "affect")
   (:var mv22655 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22660 :isa gene-transcript-express :object mv22663 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22663 :isa gene :has-determiner "THE" :expresses mv22656 :raw-text "gene")
   (:var mv22656 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase the expression of the c-fos gene?"
   (:var mv22679 :isa polar-question :statement mv22677)
   (:var mv22677 :isa increase :agent mv22667 :affected-process mv22673 :raw-text "increase")
   (:var mv22667 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22673 :isa gene-transcript-express :object mv22676 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22676 :isa gene :has-determiner "THE" :expresses mv22668 :raw-text "gene")
   (:var mv22668 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 increase transcription of the c-fos gene?"
   (:var mv22691 :isa polar-question :statement mv22689)
   (:var mv22689 :isa increase :agent mv22680 :affected-process mv22685 :raw-text "increase")
   (:var mv22680 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22685 :isa transcribe :object mv22688 :raw-text "transcription")
   (:var mv22688 :isa gene :has-determiner "THE" :expresses mv22681 :raw-text "gene")
   (:var mv22681 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does stat3 affect the expression of cfos?"
   (:var mv22701 :isa polar-question :statement mv22699)
   (:var mv22699 :isa affect :agent mv22692 :affected-process mv22696 :raw-text "affect")
   (:var mv22692 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22696 :isa gene-transcript-express :object mv22698 :has-determiner "THE" :raw-text
    "expression")
   (:var mv22698 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does the mTor pathway contain SGK1?" (:var mv22711 :isa polar-question :statement mv22710)
   (:var mv22710 :isa contain :theme mv22708 :patient mv22702)
   (:var mv22708 :isa pathway :has-determiner "THE" :modifier mv22705 :raw-text "pathway")
   (:var mv22705 :isa protein :raw-text "mTor" :uid "UP:P42345" :name "MTOR_HUMAN")
   (:var mv22702 :isa protein :raw-text "SGK1" :uid "UP:O00141" :name "SGK1_HUMAN"))
  ("Find a treatment for pancreatic cancer."
   (:var mv22714 :isa bio-find :object mv22716 :present "PRESENT" :raw-text "Find")
   (:var mv22716 :isa treatment :disease mv22712 :has-determiner "A" :raw-text "treatment")
   (:var mv22712 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("Find genes in the liver regulated by stat3"
   (:var mv22721 :isa bio-find :object mv22731 :present "PRESENT" :raw-text "Find")
   (:var mv22731 :isa gene :plural t :predication mv22727 :organ mv22726 :raw-text "genes")
   (:var mv22727 :isa regulate :object mv22731 :agent mv22719 :past "PAST" :raw-text "regulated")
   (:var mv22719 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22726 :isa liver :has-determiner "THE"))
  ("Find genes that stat3 regulates"
   (:var mv22735 :isa bio-find :object mv22740 :present "PRESENT" :raw-text "Find")
   (:var mv22740 :isa gene :plural t :predication mv22739 :raw-text "genes")
   (:var mv22739 :isa regulate :object mv22740 :that-rel t :agent mv22733 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22733 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Find transcription factors shared by elk1 and srf"
   (:var mv22745 :isa bio-find :object mv22742 :present "PRESENT" :raw-text "Find")
   (:var mv22742 :isa transcription-factor :plural t :predication mv22746 :raw-text
    "transcription factors")
   (:var mv22746 :isa share :object mv22742 :participant mv22750 :past "PAST" :raw-text "shared")
   (:var mv22750 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv22743 mv22749))
   (:var mv22743 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv22749 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("How does KRAS activate MAPK3?"
   (:var mv22757 :isa bio-activate :manner mv22754 :agent mv22756 :object mv22753 :present
    "PRESENT" :raw-text "activate")
   (:var mv22754 :isa how)
   (:var mv22756 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv22753 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("How does STAT3 regulate the c-fos gene?"
   (:var mv22762 :isa regulate :manner mv22760 :agent mv22758 :object mv22764 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22760 :isa how)
   (:var mv22758 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22764 :isa gene :has-determiner "THE" :expresses mv22759 :raw-text "gene")
   (:var mv22759 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("How does knocking out p53 cause cancer via its effect on miRNAs?"
   (:var mv22780 :isa knock-out :raw-text "knocking out" :|agent-OR-cause| mv22766 :object mv22784)
   (:var mv22766 :isa how) (:var mv22784 :isa cancer :modifier mv22770 :modifier mv22770)
   (:var mv22770 :isa cause :by-means-of mv22782 :raw-text "cause")
   (:var mv22782 :isa effect :object mv22779 :participant mv22774 :raw-text "effect")
   (:var mv22779 :isa micro-rna :plural t :raw-text "miRNAs")
   (:var mv22774 :isa pronoun/inanimate :word "its"))
  ("How does stat3 regulate apoptosis in the liver?"
   (:var mv22788 :isa regulate :manner mv22786 :agent mv22785 :affected-process mv22789 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22786 :isa how)
   (:var mv22785 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22789 :isa apoptosis :organ mv22792 :raw-text "apoptosis")
   (:var mv22792 :isa liver :has-determiner "THE"))
  ("How does stat3 regulate apoptosis?"
   (:var mv22797 :isa regulate :manner mv22795 :agent mv22794 :affected-process mv22798 :present
    "PRESENT" :raw-text "regulate")
   (:var mv22795 :isa how)
   (:var mv22794 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22798 :isa apoptosis :raw-text "apoptosis"))
  ("How does stat3 regulate apoptotic genes?"
   (:var mv22802 :isa regulate :manner mv22800 :agent mv22799 :object mv22807 :present "PRESENT"
    :raw-text "regulate")
   (:var mv22800 :isa how)
   (:var mv22799 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22807 :isa gene :plural t :cellular-process mv22803 :raw-text "genes")
   (:var mv22803 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotic regulation?"
   (:var mv22817 :isa wh-question :statement mv22810 :wh how)
   (:var mv22810 :isa be :predicate mv22808 :present "PRESENT")
   (:var mv22808 :isa protein :predication mv22811 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22811 :isa involve :object mv22808 :theme mv22815 :past "PAST")
   (:var mv22815 :isa regulate :cellular-process mv22813 :raw-text "regulation")
   (:var mv22813 :isa apoptosis :raw-text "apoptotic"))
  ("How is stat3 involved in apoptotis regulation in the liver?"
   (:var mv22830 :isa wh-question :statement mv22820 :wh how)
   (:var mv22820 :isa be :predicate mv22818 :present "PRESENT")
   (:var mv22818 :isa protein :predication mv22821 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22821 :isa involve :object mv22818 :theme mv22823 :past "PAST")
   (:var mv22823 :isa regulate :organ mv22826 :|agent-OR-object| mv22827 :raw-text "regulation")
   (:var mv22826 :isa liver :has-determiner "THE")
   (:var mv22827 :isa bio-entity :name "apoptotis"))
  ("How is stat3 involved in regulating apoptosis?"
   (:var mv22839 :isa wh-question :statement mv22833 :wh how)
   (:var mv22833 :isa be :predicate mv22831 :present "PRESENT")
   (:var mv22831 :isa protein :predication mv22834 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22834 :isa involve :object mv22831 :theme mv22836 :past "PAST")
   (:var mv22836 :isa regulate :affected-process mv22837 :progressive "PROGRESSIVE" :raw-text
    "regulating")
   (:var mv22837 :isa apoptosis :raw-text "apoptosis"))
  ("How is stat3 used to regulate apoptosis?"
   (:var mv22848 :isa wh-question :statement mv22842 :wh how)
   (:var mv22842 :isa be :predicate mv22840 :present "PRESENT")
   (:var mv22840 :isa protein :predication mv22843 :raw-text "stat3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv22843 :isa bio-use :object mv22840 :theme mv22847 :past "PAST" :raw-text "used")
   (:var mv22847 :isa regulate :affected-process mv22846 :raw-text "regulate")
   (:var mv22846 :isa apoptosis :raw-text "apoptosis"))
  ("How many genes are in the MAPK signaling pathway?"
   (:var mv22862 :isa copular-predication-of-pp :item mv22857 :value mv22861 :prep "IN" :predicate
    mv22853)
   (:var mv22857 :isa gene :plural t :quantifier how-many :raw-text "genes")
   (:var mv22861 :isa gene :plural t :context mv22850 :quantifier how-many :raw-text "genes")
   (:var mv22850 :isa signaling-pathway :has-determiner "THE" :modifier mv22856 :raw-text
    "signaling pathway")
   (:var mv22856 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv22853 :isa be :present "PRESENT"))
  ("How might a STAT3 mutation affect breast cancer?"
   (:var mv22871 :isa affect :manner mv22866 :modal mv22867 :agent mv22869 :object mv22865 :present
    "PRESENT" :raw-text "affect")
   (:var mv22866 :isa how) (:var mv22867 :isa might)
   (:var mv22869 :isa mutation :has-determiner "A" :object mv22864 :raw-text "mutation")
   (:var mv22864 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22865 :isa cancer :name "breast cancer" :uid "TS-0591"))
  ("Is STAT3 a regulator for c-fos?" (:var mv22879 :isa polar-question :statement mv22874)
   (:var mv22874 :isa be :subject mv22872 :predicate mv22876)
   (:var mv22872 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22876 :isa regulator :theme mv22873 :has-determiner "A" :raw-text "regulator")
   (:var mv22873 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of c-fos" (:var mv22887 :isa polar-question :statement mv22882)
   (:var mv22882 :isa be :subject mv22880 :predicate mv22884)
   (:var mv22880 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22884 :isa regulator :theme mv22881 :has-determiner "A" :raw-text "regulator")
   (:var mv22881 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene" (:var mv22897 :isa polar-question :statement mv22890)
   (:var mv22890 :isa be :subject mv22888 :predicate mv22892)
   (:var mv22888 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22892 :isa regulator :theme mv22895 :has-determiner "A" :raw-text "regulator")
   (:var mv22895 :isa gene :has-determiner "THE" :expresses mv22889 :raw-text "gene")
   (:var mv22889 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a regulator of the c-fos gene?" (:var mv22907 :isa polar-question :statement mv22900)
   (:var mv22900 :isa be :subject mv22898 :predicate mv22902)
   (:var mv22898 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22902 :isa regulator :theme mv22905 :has-determiner "A" :raw-text "regulator")
   (:var mv22905 :isa gene :has-determiner "THE" :expresses mv22899 :raw-text "gene")
   (:var mv22899 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos gene"
   (:var mv22916 :isa polar-question :statement mv22911)
   (:var mv22911 :isa be :subject mv22908 :predicate mv22909)
   (:var mv22908 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22909 :isa transcription-factor :controlled-gene mv22914 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22914 :isa gene :expresses mv22910 :raw-text "gene")
   (:var mv22910 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos"
   (:var mv22924 :isa polar-question :statement mv22920)
   (:var mv22920 :isa be :subject mv22917 :predicate mv22918)
   (:var mv22917 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22918 :isa transcription-factor :controlled-gene mv22919 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22919 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for c-fos?"
   (:var mv22932 :isa polar-question :statement mv22928)
   (:var mv22928 :isa be :subject mv22925 :predicate mv22926)
   (:var mv22925 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22926 :isa transcription-factor :controlled-gene mv22927 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22927 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcription factor for the c-fos gene?"
   (:var mv22942 :isa polar-question :statement mv22936)
   (:var mv22936 :isa be :subject mv22933 :predicate mv22934)
   (:var mv22933 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22934 :isa transcription-factor :controlled-gene mv22940 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22940 :isa gene :has-determiner "THE" :expresses mv22935 :raw-text "gene")
   (:var mv22935 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 regulated by c-fos?" (:var mv22949 :isa polar-question :statement mv22946)
   (:var mv22946 :isa regulate :object mv22943 :agent mv22944 :past "PAST" :raw-text "regulated")
   (:var mv22943 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22944 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is Stat3 a transcription factor for the c-fos gene"
   (:var mv22959 :isa polar-question :statement mv22953)
   (:var mv22953 :isa be :subject mv22950 :predicate mv22951)
   (:var mv22950 :isa protein :raw-text "Stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22951 :isa transcription-factor :controlled-gene mv22957 :has-determiner "A" :raw-text
    "transcription factor")
   (:var mv22957 :isa gene :has-determiner "THE" :expresses mv22952 :raw-text "gene")
   (:var mv22952 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("List genes regulated by ELK1" (:var mv22961 :isa list :theme mv22963 :present "PRESENT")
   (:var mv22963 :isa gene :plural t :predication mv22964 :raw-text "genes")
   (:var mv22964 :isa regulate :object mv22963 :agent mv22960 :past "PAST" :raw-text "regulated")
   (:var mv22960 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List genes that are regulated by ELK1"
   (:var mv22969 :isa list :theme mv22978 :present "PRESENT")
   (:var mv22978 :isa gene :plural t :predication mv22976 :raw-text "genes")
   (:var mv22976 :isa regulate :object mv22978 :that-rel t :agent mv22968 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22968 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("List some genes that stat3 regulates"
   (:var mv22980 :isa list :theme mv22987 :present "PRESENT")
   (:var mv22987 :isa gene :plural t :predication mv22985 :quantifier mv22981 :raw-text "genes")
   (:var mv22985 :isa regulate :object mv22987 :that-rel t :agent mv22979 :present "PRESENT"
    :raw-text "regulates")
   (:var mv22979 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv22981 :isa some :word "some"))
  ("List the genes STAT3 regulates" (:var mv22989 :isa list :theme mv22995 :present "PRESENT")
   (:var mv22995 :isa gene :plural t :predication mv22993 :has-determiner "THE" :raw-text "genes")
   (:var mv22993 :isa regulate :object mv22995 :agent mv22988 :present "PRESENT" :raw-text
    "regulates")
   (:var mv22988 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes that are regulated by STAT3"
   (:var mv22997 :isa list :theme mv23008 :present "PRESENT")
   (:var mv23008 :isa gene :plural t :predication mv23006 :has-determiner "THE" :raw-text "genes")
   (:var mv23006 :isa regulate :object mv23008 :that-rel t :agent mv22996 :present "PRESENT"
    :raw-text "regulated")
   (:var mv22996 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("List the genes which STAT3 regulates"
   (:var mv23010 :isa list :theme mv23017 :present "PRESENT")
   (:var mv23017 :isa gene :plural t :predication mv23015 :has-determiner "THE" :raw-text "genes")
   (:var mv23015 :isa regulate :object mv23017 :agent mv23009 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23009 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("List the pahtways that involve SRF" (:var mv23018 :isa list :theme mv23020 :present "PRESENT")
   (:var mv23020 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show me genes regulated by ELK1"
   (:var mv23025 :isa show :|statement-OR-theme| mv23032 :beneficiary mv23026 :present "PRESENT")
   (:var mv23032 :isa gene :plural t :predication mv23029 :raw-text "genes")
   (:var mv23029 :isa regulate :object mv23032 :agent mv23024 :past "PAST" :raw-text "regulated")
   (:var mv23024 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23026 :isa interlocutor :name "speaker"))
  ("Show me genes that are regulated by ELK1"
   (:var mv23034 :isa show :|statement-OR-theme| mv23044 :beneficiary mv23035 :present "PRESENT")
   (:var mv23044 :isa gene :plural t :predication mv23042 :raw-text "genes")
   (:var mv23042 :isa regulate :object mv23044 :that-rel t :agent mv23033 :present "PRESENT"
    :raw-text "regulated")
   (:var mv23033 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23035 :isa interlocutor :name "speaker"))
  ("Show me genes that stat3 regulates"
   (:var mv23046 :isa show :|statement-OR-theme| mv23052 :beneficiary mv23047 :present "PRESENT")
   (:var mv23052 :isa gene :plural t :predication mv23051 :raw-text "genes")
   (:var mv23051 :isa regulate :object mv23052 :that-rel t :agent mv23045 :present "PRESENT"
    :raw-text "regulates")
   (:var mv23045 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23047 :isa interlocutor :name "speaker"))
  ("Show me the pahtways that involve SRF"
   (:var mv23053 :isa show :|statement-OR-theme| mv23056 :beneficiary mv23054 :present "PRESENT")
   (:var mv23056 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv23054 :isa interlocutor :name "speaker"))
  ("Show me what transcription factors are shared by elk1 and srf"
   (:var mv23075 :isa show :statement mv23073 :beneficiary mv23064 :present "PRESENT")
   (:var mv23073 :isa share :object mv23072 :participant mv23071 :present "PRESENT" :raw-text
    "shared")
   (:var mv23072 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23071 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23062 mv23070))
   (:var mv23062 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23070 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23064 :isa interlocutor :name "speaker"))
  ("Show me which genes are regulated by STAT3"
   (:var mv23088 :isa show :statement mv23086 :beneficiary mv23078 :present "PRESENT")
   (:var mv23086 :isa regulate :object mv23085 :agent mv23076 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23085 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23076 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23078 :isa interlocutor :name "speaker"))
  ("Show the genes which STAT3 regulates"
   (:var mv23090 :isa show :|statement-OR-theme| mv23097 :present "PRESENT")
   (:var mv23097 :isa gene :plural t :predication mv23095 :has-determiner "THE" :raw-text "genes")
   (:var mv23095 :isa regulate :object mv23097 :agent mv23089 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23089 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("Show the pahtways that involve SRF"
   (:var mv23098 :isa show :|statement-OR-theme| mv23100 :present "PRESENT")
   (:var mv23100 :isa bio-entity :has-determiner "THE" :name "pahtways"))
  ("Show transcription factors that are shared by elk1 and srf"
   (:var mv23107 :isa show :|statement-OR-theme| mv23117 :present "PRESENT")
   (:var mv23117 :isa transcription-factor :plural t :predication mv23115 :raw-text
    "transcription factors")
   (:var mv23115 :isa share :object mv23117 :that-rel t :participant mv23114 :present "PRESENT"
    :raw-text "shared")
   (:var mv23114 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23106 mv23113))
   (:var mv23106 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23113 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Tell me the genes which are regulated by STAT3"
   (:var mv23119 :isa tell :theme mv23132 :beneficiary mv23120 :present "PRESENT")
   (:var mv23132 :isa gene :plural t :predication mv23131 :has-determiner "THE" :raw-text "genes")
   (:var mv23131 :isa regulate :object mv23132 :agent mv23118 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23118 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23120 :isa interlocutor :name "speaker"))
  ("Tell me what genes are regulated by elk1 and srf"
   (:var mv23134 :isa tell :theme mv23146 :beneficiary mv23135 :present "PRESENT")
   (:var mv23146 :isa regulate :object mv23145 :agent mv23144 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23145 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23144 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23133 mv23143))
   (:var mv23133 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23143 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23135 :isa interlocutor :name "speaker"))
  ("Tell me which genes are regulated by STAT3"
   (:var mv23149 :isa tell :theme mv23158 :beneficiary mv23150 :present "PRESENT")
   (:var mv23158 :isa regulate :object mv23157 :agent mv23148 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23157 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23148 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23150 :isa interlocutor :name "speaker"))
  ("What are positive regulators of cfos?"
   (:var mv23163 :isa be :subject mv23162 :predicate mv23167 :present "PRESENT")
   (:var mv23162 :isa what)
   (:var mv23167 :isa positive-regulator :plural t :theme mv23165 :raw-text "positive regulators")
   (:var mv23165 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are some regulators of SMURF2?"
   (:var mv23170 :isa be :subject mv23169 :predicate mv23177 :present "PRESENT")
   (:var mv23169 :isa what)
   (:var mv23177 :isa regulator :plural t :theme mv23168 :quantifier mv23171 :raw-text
    "regulators")
   (:var mv23168 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN")
   (:var mv23171 :isa some :word "some"))
  ("What are the common regulators of ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1?"
   (:var mv23184 :isa be :subject mv23183 :predicate mv23196 :present "PRESENT")
   (:var mv23183 :isa what)
   (:var mv23196 :isa regulator :plural t :theme mv23192 :has-determiner "THE" :predication mv23186
    :raw-text "regulators")
   (:var mv23192 :isa collection :raw-text "ABI2, ABL1, ACADSB, ADGRL1, ADRM1, and AGAP1" :type
    protein :number 6 :items (mv23178 mv23179 mv23190 mv23180 mv23181 mv23182))
   (:var mv23178 :isa protein :raw-text "ABI2" :uid "UP:Q9NYB9" :name "ABI2_HUMAN")
   (:var mv23179 :isa protein :raw-text "ABL1" :uid "UP:P00519" :name "ABL1_HUMAN")
   (:var mv23190 :isa protein :raw-text "ACADSB" :uid "UP:P45954" :name "ACDSB_HUMAN")
   (:var mv23180 :isa protein :raw-text "ADGRL1" :uid "UP:O94910" :name "AGRL1_HUMAN")
   (:var mv23181 :isa protein :raw-text "ADRM1" :uid "UP:Q16186" :name "ADRM1_HUMAN")
   (:var mv23182 :isa protein :raw-text "AGAP1" :uid "UP:Q9UPQ3" :name "AGAP1_HUMAN")
   (:var mv23186 :isa common))
  ("What are the common regulators of elk1 and srf"
   (:var mv23199 :isa be :subject mv23198 :predicate mv23211 :present "PRESENT")
   (:var mv23198 :isa what)
   (:var mv23211 :isa regulator :plural t :theme mv23207 :has-determiner "THE" :predication mv23201
    :raw-text "regulators")
   (:var mv23207 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv23197 mv23206))
   (:var mv23197 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23206 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23201 :isa common))
  ("What are the common regulators of elk1 and srg"
   (:var mv23214 :isa be :subject mv23213 :predicate mv23226 :present "PRESENT")
   (:var mv23213 :isa what)
   (:var mv23226 :isa regulator :plural t :theme mv23222 :has-determiner "THE" :predication mv23216
    :raw-text "regulators")
   (:var mv23222 :isa collection :raw-text "elk1 and srg" :type protein :number 2 :items
    (mv23212 mv23221))
   (:var mv23212 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv23221 :isa bio-entity :name "srg") (:var mv23216 :isa common))
  ("What are the common regulators of those genes"
   (:var mv23228 :isa be :subject mv23227 :predicate mv23241 :present "PRESENT")
   (:var mv23227 :isa what)
   (:var mv23241 :isa regulator :plural t :theme mv23239 :has-determiner "THE" :predication mv23230
    :raw-text "regulators")
   (:var mv23239 :isa gene :plural t :has-determiner "THOSE" :raw-text "genes")
   (:var mv23230 :isa common))
  ("What are the genes regulated by STAT3?"
   (:var mv23244 :isa be :subject mv23243 :predicate mv23252 :present "PRESENT")
   (:var mv23243 :isa what)
   (:var mv23252 :isa gene :plural t :predication mv23248 :has-determiner "THE" :raw-text "genes")
   (:var mv23248 :isa regulate :object mv23252 :agent mv23242 :past "PAST" :raw-text "regulated")
   (:var mv23242 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the genes which STAT3 regulates?"
   (:var mv23255 :isa be :subject mv23254 :predicate mv23262 :present "PRESENT")
   (:var mv23254 :isa what)
   (:var mv23262 :isa gene :plural t :predication mv23260 :has-determiner "THE" :raw-text "genes")
   (:var mv23260 :isa regulate :object mv23262 :agent mv23253 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23253 :isa protein :has-determiner "WHICH" :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN"))
  ("What are the most frequent regulators of EGFR, SRF, STAT3, JAK2, and SMAD3?"
   (:var mv23267 :isa be :subject mv23266 :predicate mv23281 :present "PRESENT")
   (:var mv23266 :isa what)
   (:var mv23281 :isa regulator :plural t :theme mv23277 :has-determiner "THE" :modifier mv23270
    :raw-text "regulators")
   (:var mv23277 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2, and SMAD3" :type protein
    :number 5 :items (mv23274 mv23275 mv23263 mv23264 mv23265))
   (:var mv23274 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23275 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23263 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23264 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv23265 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN")
   (:var mv23270 :isa frequent :comparative mv23269 :name "frequent")
   (:var mv23269 :isa superlative-quantifier :name "most"))
  ("What are the transcription factors that regulate EGFR, SRF, STAT3, JAK2 and SMAD3?"
   (:var mv23288 :isa be :subject mv23287 :predicate mv23297 :present "PRESENT")
   (:var mv23287 :isa what)
   (:var mv23297 :isa transcription-factor :plural t :predication mv23291 :has-determiner "THE"
    :raw-text "transcription factors")
   (:var mv23291 :isa regulate :agent mv23297 :that-rel t :object mv23295 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23295 :isa collection :raw-text "EGFR, SRF, STAT3, JAK2 and SMAD3" :type protein :number
    5 :items (mv23292 mv23293 mv23284 mv23285 mv23286))
   (:var mv23292 :isa protein :raw-text "EGFR" :uid "UP:P00533" :name "EGFR_HUMAN")
   (:var mv23293 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv23284 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23285 :isa protein :raw-text "JAK2" :uid "UP:O60674" :name "JAK2_HUMAN")
   (:var mv23286 :isa protein :raw-text "SMAD3" :uid "UP:P84022" :name "SMAD3_HUMAN"))
  ("What other genes are in the first pathway?"
   (:var mv23313 :isa copular-predication-of-pp :item mv23308 :value mv23312 :prep "IN" :predicate
    mv23302)
   (:var mv23308 :isa gene :plural t :has-determiner "WHAT" :modifier mv23299 :raw-text "genes")
   (:var mv23299 :isa other :name "other")
   (:var mv23312 :isa gene :plural t :context mv23306 :has-determiner "WHAT" :modifier mv23299
    :raw-text "genes")
   (:var mv23306 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23302 :isa be :present "PRESENT"))
  ("What other proteins are in the first pathway?"
   (:var mv23330 :isa copular-predication-of-pp :item mv23325 :value mv23329 :prep "IN" :predicate
    mv23319)
   (:var mv23325 :isa protein :plural t :has-determiner "WHAT" :modifier mv23316 :raw-text
    "proteins")
   (:var mv23316 :isa other :name "other")
   (:var mv23329 :isa protein :plural t :in-pathway mv23323 :has-determiner "WHAT" :modifier
    mv23316 :raw-text "proteins")
   (:var mv23323 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23319 :isa be :present "PRESENT"))
  ("What pathways are they in?"
   (:var mv23335 :isa be :subject mv23338 :predicate mv23336 :present "PRESENT")
   (:var mv23338 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23336 :isa pronoun/plural :word "they"))
  ("What pathways involve SOARING?"
   (:var mv23342 :isa involve :theme mv23344 :object mv23343 :present "PRESENT")
   (:var mv23344 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23343 :isa soar :progressive "PROGRESSIVE" :raw-text "SOARING"))
  ("What proteins are in the first pathway"
   (:var mv23358 :isa copular-predication-of-pp :item mv23353 :value mv23357 :prep "IN" :predicate
    mv23348)
   (:var mv23353 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv23357 :isa protein :plural t :in-pathway mv23352 :has-determiner "WHAT" :raw-text
    "proteins")
   (:var mv23352 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23348 :isa be :present "PRESENT"))
  ("What pathways involve frizzled8?"
   (:var mv23364 :isa involve :theme mv23365 :object mv23360 :present "PRESENT")
   (:var mv23365 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23360 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What genes are in the first pathway"
   (:var mv23379 :isa copular-predication-of-pp :item mv23374 :value mv23378 :prep "IN" :predicate
    mv23369)
   (:var mv23374 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23378 :isa gene :plural t :context mv23373 :has-determiner "WHAT" :raw-text "genes")
   (:var mv23373 :isa pathway :has-determiner "THE" :ordinal 1 :raw-text "pathway")
   (:var mv23369 :isa be :present "PRESENT"))
  ("What questions can you answer about microRNAs?"
   (:var mv23394 :isa answer :patient mv23392 :modal mv23385 :agent mv23386 :theme mv23391 :present
    "PRESENT")
   (:var mv23392 :isa bio-question :plural t :has-determiner "WHAT") (:var mv23385 :isa can)
   (:var mv23386 :isa interlocutor :name "hearer")
   (:var mv23391 :isa micro-rna :plural t :raw-text "microRNAs"))
  ("What transcription factors regulate mothers against decapentaplegic?"
   (:var mv23399 :isa regulate :agent mv23400 :object mv23397 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23400 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23397 :isa protein-family :raw-text "mothers against decapentaplegic" :name "SMAD"
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
   (:var mv23404 :isa regulate :location mv23402 :agent mv23401 :object mv23405 :present "PRESENT"
    :raw-text "regulate")
   (:var mv23402 :isa where)
   (:var mv23401 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23405 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which KEGG pathways involve ATP?"
   (:var mv23410 :isa involve :theme mv23413 :object mv23411 :present "PRESENT")
   (:var mv23413 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23407 :raw-text
    "pathways")
   (:var mv23407 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23411 :isa nucleotide :raw-text "ATP" :name "adenosine 5'-triphosphate" :uid
    "PCID:5957"))
  ("Which genes are in the MAPK signaling pathway?"
   (:var mv23427 :isa copular-predication-of-pp :item mv23422 :value mv23426 :prep "IN" :predicate
    mv23418)
   (:var mv23422 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23426 :isa gene :plural t :context mv23414 :has-determiner "WHICH" :raw-text "genes")
   (:var mv23414 :isa signaling-pathway :has-determiner "THE" :modifier mv23421 :raw-text
    "signaling pathway")
   (:var mv23421 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23418 :isa be :present "PRESENT"))
  ("Which genes are involved in the oncogenic MAPK signaling pathway?"
   (:var mv23440 :isa involve :object mv23439 :|context-OR-theme| mv23429 :present "PRESENT")
   (:var mv23439 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv23429 :isa signaling-pathway :has-determiner "THE" :predication mv23437 :modifier
    mv23438 :raw-text "signaling pathway")
   (:var mv23437 :isa oncogenic)
   (:var mv23438 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23445 :isa regulate :agent mv23447 :object mv23446 :present "PRESENT" :raw-text
    "regulate")
   (:var mv23447 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23446 :isa bio-entity :name "x"))
  ("Which kinases negatively regulate x?"
   (:var mv23448 :isa downregulate :agent mv23453 :object mv23452 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv23453 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23452 :isa bio-entity :name "x"))
  ("Which kinases positively regulate x?"
   (:var mv23454 :isa upregulate :agent mv23459 :object mv23458 :present "PRESENT" :raw-text
    "positively regulate")
   (:var mv23459 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23458 :isa bio-entity :name "x"))
  ("Which of these are in immune pathways?"
   (:var mv23470 :isa copular-predication-of-pp :item mv23462 :value mv23468 :prep mv23464
    :predicate mv23463)
   (:var mv23462 :isa these :quantifier mv23460 :word "these") (:var mv23460 :isa which)
   (:var mv23468 :isa pathway :plural t :modifier mv23465 :raw-text "pathways")
   (:var mv23465 :isa immune :name "immune") (:var mv23464 :isa in :word "in")
   (:var mv23463 :isa be :present "PRESENT"))
  ("Which of these are in immune system pathways?"
   (:var mv23482 :isa copular-predication-of-pp :item mv23475 :value mv23480 :prep mv23477
    :predicate mv23476)
   (:var mv23475 :isa these :quantifier mv23473 :word "these") (:var mv23473 :isa which)
   (:var mv23480 :isa pathway :plural t :non-cellular-location mv23472 :raw-text "pathways")
   (:var mv23472 :isa bio-organ :name "immune system" :uid "UBERON:0002405")
   (:var mv23477 :isa in :word "in") (:var mv23476 :isa be :present "PRESENT"))
  ("What are the genes STAT3 regulates?"
   (:var mv23486 :isa be :subject mv23485 :predicate mv23492 :present "PRESENT")
   (:var mv23485 :isa what)
   (:var mv23492 :isa gene :plural t :predication mv23490 :has-determiner "THE" :raw-text "genes")
   (:var mv23490 :isa regulate :object mv23492 :agent mv23484 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23484 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of those are in the immune pathway?"
   (:var mv23502 :isa copular-predication-of-pp :item mv23495 :value mv23500 :prep mv23497
    :predicate mv23496)
   (:var mv23495 :isa those :quantifier mv23493 :word "those") (:var mv23493 :isa which)
   (:var mv23500 :isa pathway :has-determiner "THE" :modifier mv23499 :raw-text "pathway")
   (:var mv23499 :isa immune :name "immune") (:var mv23497 :isa in :word "in")
   (:var mv23496 :isa be :present "PRESENT"))
  ("Which pathways involve p53?"
   (:var mv23508 :isa involve :theme mv23509 :object mv23504 :present "PRESENT")
   (:var mv23509 :isa pathway :plural t :has-determiner "WHICH" :raw-text "pathways")
   (:var mv23504 :isa protein :raw-text "p53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("can you show me the pahtways that involve SRF"
   (:var mv23519 :isa polar-question :statement mv23512)
   (:var mv23512 :isa show :agent mv23511 :|statement-OR-theme| mv23515 :beneficiary mv23513 :modal
    "CAN")
   (:var mv23511 :isa interlocutor :name "hearer")
   (:var mv23515 :isa bio-entity :has-determiner "THE" :name "pahtways")
   (:var mv23513 :isa interlocutor :name "speaker"))
  ("Does Selumetinib inhibit MAP2K1?" (:var mv23525 :isa polar-question :statement mv23524)
   (:var mv23524 :isa inhibit :agent mv23522 :object mv23520 :raw-text "inhibit")
   (:var mv23522 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv23520 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Let's build a model of the KRAS neighborhood."
   (:var mv23535 :isa explicit-suggestion :suggestion mv23527 :marker let-as-directive)
   (:var mv23527 :isa build :artifact mv23529 :present "PRESENT")
   (:var mv23529 :isa model :object mv23533 :has-determiner "A")
   (:var mv23533 :isa neighborhood :has-determiner "THE" :modifier mv23532)
   (:var mv23532 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN"))
  ("I know that KRAS activates Raf, Raf activates Mek and Mek activates Erk."
   (:var mv23553 :isa collection :type know :number 2 :items (mv23551 mv23552))
   (:var mv23551 :isa know :agent mv23536 :statement mv23542 :present "PRESENT")
   (:var mv23536 :isa interlocutor :name "speaker")
   (:var mv23542 :isa bio-activate :agent mv23541 :object mv23543 :present "PRESENT" :raw-text
    "activates")
   (:var mv23541 :isa protein :raw-text "KRAS" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23543 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23552 :isa collection :raw-text "Raf activates Mek and Mek activates Erk" :type
    bio-activate :number 2 :items (mv23545 mv23549))
   (:var mv23545 :isa bio-activate :agent mv23544 :object mv23546 :present "PRESENT" :raw-text
    "activates")
   (:var mv23544 :isa protein-family :raw-text "Raf" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv23546 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23549 :isa bio-activate :agent mv23548 :object mv23550 :present "PRESENT" :raw-text
    "activates")
   (:var mv23548 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv23550 :isa protein-family :raw-text "Erk" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP2K1 phosphorylates MAPK1."
   (:var mv23556 :isa phosphorylate :agent mv23554 :substrate mv23555 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv23554 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv23555 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("DUSP6 dephosphorylates MAPK1."
   (:var mv23559 :isa dephosphorylate :agent mv23557 :substrate mv23558 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv23557 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23558 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Is the amount of phosphorylated MAPK1 always high?"
   (:var mv23570 :isa polar-question :statement mv23569)
   (:var mv23569 :isa copular-predication :item mv23563 :value mv23567 :predicate mv23561)
   (:var mv23563 :isa bio-amount :measured-item mv23560 :has-determiner "THE" :raw-text "amount")
   (:var mv23560 :isa protein :predication mv23565 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23565 :isa phosphorylate :substrate mv23560 :raw-text "phosphorylated")
   (:var mv23567 :isa high :adverb mv23566) (:var mv23566 :isa always :name "always")
   (:var mv23561 :isa be))
  ("Is the amount of phosphorylated MAPK1 always low?"
   (:var mv23581 :isa polar-question :statement mv23580)
   (:var mv23580 :isa copular-predication :item mv23574 :value mv23578 :predicate mv23572)
   (:var mv23574 :isa bio-amount :measured-item mv23571 :has-determiner "THE" :raw-text "amount")
   (:var mv23571 :isa protein :predication mv23576 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23576 :isa phosphorylate :substrate mv23571 :raw-text "phosphorylated")
   (:var mv23578 :isa low :adverb mv23577) (:var mv23577 :isa always :name "always")
   (:var mv23572 :isa be))
  ("Does the MAP2K1-MAPK1 complex vanish?" (:var mv23591 :isa polar-question :statement mv23590)
   (:var mv23590 :isa vanish :agent mv23589 :raw-text "vanish")
   (:var mv23589 :isa bio-complex :has-determiner "THE" :raw-text "MAP2K1-MAPK1" :component mv23583
    :component mv23582)
   (:var mv23583 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23582 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Does the DUSP6-MAPK1 complex vanish?" (:var mv23601 :isa polar-question :statement mv23600)
   (:var mv23600 :isa vanish :agent mv23599 :raw-text "vanish")
   (:var mv23599 :isa bio-complex :has-determiner "THE" :raw-text "DUSP6-MAPK1" :component mv23593
    :component mv23592)
   (:var mv23593 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv23592 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN"))
  ("Does the amount of phosphorylated MAPK1 vanish if we increase the amount of DUSP6 by 10 fold?"
   (:var mv23631 :isa polar-question :statement mv23630)
   (:var mv23630 :isa event-relation :subordinated-event mv23627 :event mv23623)
   (:var mv23627 :isa wh-question :statement mv23624 :wh if)
   (:var mv23624 :isa increase :|agent-OR-cause| mv23611 :|multiplier-OR-cause| mv23622
    :|affected-process-OR-object| mv23615 :raw-text "increase")
   (:var mv23611 :isa interlocutor :name "person-and-machine")
   (:var mv23622 :isa measurement :number mv23619) (:var mv23619 :isa number :value 10)
   (:var mv23615 :isa bio-amount :measured-item mv23603 :has-determiner "THE" :raw-text "amount")
   (:var mv23603 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv23623 :isa vanish :cause mv23606 :raw-text "vanish")
   (:var mv23606 :isa bio-amount :measured-item mv23602 :has-determiner "THE" :raw-text "amount")
   (:var mv23602 :isa protein :predication mv23608 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv23608 :isa phosphorylate :substrate mv23602 :raw-text "phosphorylated"))
  ("Show me the evidence that kras regulates fzd8."
   (:var mv23633 :isa show :|statement-OR-theme| mv23640 :beneficiary mv23634 :present "PRESENT")
   (:var mv23640 :isa evidence :statement mv23639 :has-determiner "THE")
   (:var mv23639 :isa regulate :agent mv23638 :object mv23632 :present "PRESENT" :raw-text
    "regulates")
   (:var mv23638 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv23632 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN")
   (:var mv23634 :isa interlocutor :name "speaker"))
  ("What increases the amount of fzd8?"
   (:var mv23645 :isa increase :|agent-OR-cause| mv23642 :|affected-process-OR-object| mv23647
    :present "PRESENT" :raw-text "increases")
   (:var mv23642 :isa what)
   (:var mv23647 :isa bio-amount :measured-item mv23641 :has-determiner "THE" :raw-text "amount")
   (:var mv23641 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("Which kinases are in the MAPK signaling pathway?"
   (:var mv23663 :isa copular-predication-of-pp :item mv23658 :value mv23662 :prep "IN" :predicate
    mv23654)
   (:var mv23658 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv23662 :isa kinase :plural t :in-pathway mv23650 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv23650 :isa signaling-pathway :has-determiner "THE" :modifier mv23657 :raw-text
    "signaling pathway")
   (:var mv23657 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv23654 :isa be :present "PRESENT"))
  ("Does STAT3 regulate the c-fos gene in the liver?"
   (:var mv23676 :isa polar-question :statement mv23674)
   (:var mv23674 :isa regulate :agent mv23665 :object mv23670 :raw-text "regulate")
   (:var mv23665 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23670 :isa gene :organ mv23673 :has-determiner "THE" :expresses mv23666 :raw-text
    "gene")
   (:var mv23673 :isa liver :has-determiner "THE")
   (:var mv23666 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are regulated by smad2?"
   (:var mv23685 :isa regulate :object mv23684 :agent mv23677 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23684 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23677 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these are regulated by smad2?"
   (:var mv23694 :isa regulate :|affected-process-OR-object| mv23690 :agent mv23687 :present
    "PRESENT" :raw-text "regulated")
   (:var mv23690 :isa these :quantifier mv23688 :word "these") (:var mv23688 :isa which)
   (:var mv23687 :isa protein :raw-text "smad2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Which of these also regulate cfos?"
   (:var mv23702 :isa regulate :|agent-OR-cause| mv23699 :object mv23703 :present "PRESENT" :adverb
    mv23700 :raw-text "regulate")
   (:var mv23699 :isa these :quantifier mv23697 :word "these") (:var mv23697 :isa which)
   (:var mv23703 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv23700 :isa also :name "also"))
  ("what transcription factors transcribe SMURF2?"
   (:var mv23709 :isa transcribe :agent mv23710 :object mv23707 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv23710 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23707 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("what transcription factor transcribes SMURF2?"
   (:var mv23714 :isa transcribe :agent mv23711 :object mv23712 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv23711 :isa transcription-factor :has-determiner "WHAT" :raw-text "transcription factor")
   (:var mv23712 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which KEGG pathways utilize SRF?"
   (:var mv23719 :isa utilize :participant mv23722 :object mv23720 :present "PRESENT" :raw-text
    "utilize")
   (:var mv23722 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23716 :raw-text
    "pathways")
   (:var mv23716 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23720 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What transcription factors are in the calcium regulated pathways?"
   (:var mv23740 :isa copular-predication-of-pp :item mv23733 :value mv23739 :prep "IN" :predicate
    mv23726)
   (:var mv23733 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv23739 :isa transcription-factor :plural t :in-pathway mv23735 :has-determiner "WHAT"
    :raw-text "transcription factors")
   (:var mv23735 :isa pathway :plural t :has-determiner "THE" :predication mv23730 :raw-text
    "pathways")
   (:var mv23730 :isa regulate :affected-process mv23735 :agent mv23729 :raw-text "regulated")
   (:var mv23729 :isa calcium :raw-text "calcium") (:var mv23726 :isa be :present "PRESENT"))
  ("What pathways involve the immune system?"
   (:var mv23746 :isa involve :theme mv23748 :object mv23742 :present "PRESENT")
   (:var mv23748 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23742 :isa bio-organ :has-determiner "THE" :name "immune system" :uid "UBERON:0002405"))
  ("What KEGG pathways involve ERBB2, JUN, and MAPK8?"
   (:var mv23755 :isa involve :theme mv23760 :object mv23758 :present "PRESENT")
   (:var mv23760 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23752 :raw-text
    "pathways")
   (:var mv23752 :isa database :name "KEGG" :uid "KEGG")
   (:var mv23758 :isa collection :raw-text "ERBB2, JUN, and MAPK8" :type protein :number 3 :items
    (mv23749 mv23756 mv23750))
   (:var mv23749 :isa protein :raw-text "ERBB2" :uid "UP:P04626" :name "ERBB2_HUMAN")
   (:var mv23756 :isa protein :raw-text "JUN" :uid "UP:P05412" :name "JUN_HUMAN")
   (:var mv23750 :isa protein :raw-text "MAPK8" :uid "UP:P45983" :name "MK08_HUMAN"))
  ("What pathways are shared by these genes?"
   (:var mv23771 :isa share :object mv23770 :participant mv23772 :present "PRESENT" :raw-text
    "shared")
   (:var mv23770 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv23772 :isa gene :plural t :has-determiner "THESE" :raw-text "genes"))
  ("what genes are regulated by srf?"
   (:var mv23782 :isa regulate :object mv23781 :agent mv23780 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23781 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv23780 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What are common pathways for these genes?"
   (:var mv23785 :isa be :subject mv23784 :predicate mv23796 :present "PRESENT")
   (:var mv23784 :isa what)
   (:var mv23796 :isa pathway :plural t :pathwaycomponent mv23794 :predication mv23786 :raw-text
    "pathways")
   (:var mv23794 :isa gene :plural t :has-determiner "THESE" :raw-text "genes")
   (:var mv23786 :isa common))
  ("Which immune pathways are shared by STAT3, SOCS3, and CREB5 genes?"
   (:var mv23813 :isa share :object mv23812 :participant mv23814 :present "PRESENT" :raw-text
    "shared")
   (:var mv23812 :isa pathway :plural t :has-determiner "WHICH" :modifier mv23801 :raw-text
    "pathways")
   (:var mv23801 :isa immune :name "immune")
   (:var mv23814 :isa gene :plural t :expresses mv23810 :raw-text "genes")
   (:var mv23810 :isa collection :raw-text "STAT3, SOCS3, and CREB5" :type protein :number 3 :items
    (mv23797 mv23798 mv23799))
   (:var mv23797 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23798 :isa protein :raw-text "SOCS3" :uid "UP:O14543" :name "SOCS3_HUMAN")
   (:var mv23799 :isa protein :raw-text "CREB5" :uid "UP:Q02930" :name "CREB5_HUMAN"))
  ("What MAP kinase phosphatase are regulated by ELK1?"
   (:var mv23823 :isa regulate :object mv23819 :agent mv23817 :present "PRESENT" :raw-text
    "regulated")
   (:var mv23819 :isa phosphatase :has-determiner "WHAT" :enzyme mv23816 :raw-text "phosphatase")
   (:var mv23816 :isa protein-family :raw-text "MAP kinase" :name
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
   (:var mv23817 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What reactome pathways involve immune system?"
   (:var mv23830 :isa involve :theme mv23832 :object mv23825 :present "PRESENT")
   (:var mv23832 :isa pathway :plural t :has-determiner "WHAT" :modifier mv23827 :raw-text
    "pathways")
   (:var mv23827 :isa database :name "Reactome" :uid "Reactome")
   (:var mv23825 :isa bio-organ :name "immune system" :uid "UBERON:0002405"))
  ("Is stat3 a kinase?" (:var mv23837 :isa polar-question :statement mv23834)
   (:var mv23834 :isa be :subject mv23833 :predicate mv23836)
   (:var mv23833 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23836 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Is STAT3 a transcription factor?" (:var mv23842 :isa polar-question :statement mv23840)
   (:var mv23840 :isa be :subject mv23838 :predicate mv23839)
   (:var mv23838 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv23839 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Which of these are protein kinases?"
   (:var mv23846 :isa be :subject mv23845 :predicate mv23850 :present "PRESENT")
   (:var mv23845 :isa these :quantifier mv23843 :word "these") (:var mv23843 :isa which)
   (:var mv23850 :isa kinase :plural t :enzyme mv23847 :raw-text "kinases")
   (:var mv23847 :isa protein :raw-text "protein"))
  ("Which of these are tyrosine kinases?"
   (:var mv23857 :isa be :subject mv23856 :predicate mv23853 :present "PRESENT")
   (:var mv23856 :isa these :quantifier mv23854 :word "these") (:var mv23854 :isa which)
   (:var mv23853 :isa protein-family :plural t :raw-text "tyrosine kinases" :uid "NCIT:C17020"
    :name "protein tyrosine kinase"))
  ("Which of these are serine/threonine kinases?"
   (:var mv23862 :isa be :subject mv23861 :predicate mv23868 :present "PRESENT")
   (:var mv23861 :isa these :quantifier mv23859 :word "these") (:var mv23859 :isa which)
   (:var mv23868 :isa kinase :plural t :amino-acid mv23867 :raw-text "kinases")
   (:var mv23867 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv23863 mv23864))
   (:var mv23863 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv23864 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are phosphatases?"
   (:var mv23873 :isa be :subject mv23872 :predicate mv23875 :present "PRESENT")
   (:var mv23872 :isa these :quantifier mv23870 :word "these") (:var mv23870 :isa which)
   (:var mv23875 :isa phosphatase :plural t :raw-text "phosphatases"))
  ("Which of these are proteases?"
   (:var mv23880 :isa be :subject mv23879 :predicate mv23881 :present "PRESENT")
   (:var mv23879 :isa these :quantifier mv23877 :word "these") (:var mv23877 :isa which)
   (:var mv23881 :isa protein :raw-text "proteases" :uid "UP:P63127" :name "VPK9_HUMAN"))
  ("Which of these are receptors?"
   (:var mv23886 :isa be :subject mv23885 :predicate mv23888 :present "PRESENT")
   (:var mv23885 :isa these :quantifier mv23883 :word "these") (:var mv23883 :isa which)
   (:var mv23888 :isa receptor :plural t :raw-text "receptors"))
  ("Which of these are tyrosine kinase receptors?"
   (:var mv23894 :isa be :subject mv23893 :predicate mv23897 :present "PRESENT")
   (:var mv23893 :isa these :quantifier mv23891 :word "these") (:var mv23891 :isa which)
   (:var mv23897 :isa receptor :plural t :modifier mv23890 :raw-text "receptors")
   (:var mv23890 :isa protein-family :raw-text "tyrosine kinase" :name "protein tyrosine kinase"
    :uid "NCIT:C17020"))
  ("Which of these are histone demethylases?"
   (:var mv23904 :isa be :subject mv23903 :predicate mv23900 :present "PRESENT")
   (:var mv23903 :isa these :quantifier mv23901 :word "these") (:var mv23901 :isa which)
   (:var mv23900 :isa protein-family :plural t :raw-text "histone demethylases" :uid "GO:0032452"
    :name "histone demethylase"))
  ("Which of these are histone methylases?"
   (:var mv23911 :isa be :subject mv23910 :predicate mv23907 :present "PRESENT")
   (:var mv23910 :isa these :quantifier mv23908 :word "these") (:var mv23908 :isa which)
   (:var mv23907 :isa protein-family :plural t :raw-text "histone methylases" :uid "GO:0042054"
    :name "histone methyltransferase"))
  ("Which of these are histone methyltransferases?"
   (:var mv23918 :isa be :subject mv23917 :predicate mv23914 :present "PRESENT")
   (:var mv23917 :isa these :quantifier mv23915 :word "these") (:var mv23915 :isa which)
   (:var mv23914 :isa protein-family :plural t :raw-text "histone methyltransferases" :uid
    "GO:0042054" :name "histone methyltransferase"))
  ("Which of these are demethylases?"
   (:var mv23923 :isa be :subject mv23922 :predicate mv23925 :present "PRESENT")
   (:var mv23922 :isa these :quantifier mv23920 :word "these") (:var mv23920 :isa which)
   (:var mv23925 :isa protein-family :plural t :raw-text "demethylases" :uid "GO:0032451" :name
    "demethylase"))
  ("Which of these are methylases?"
   (:var mv23930 :isa be :subject mv23929 :predicate mv23932 :present "PRESENT")
   (:var mv23929 :isa these :quantifier mv23927 :word "these") (:var mv23927 :isa which)
   (:var mv23932 :isa protein-family :plural t :raw-text "methylases" :uid "GO:0008168" :name
    "methyltransferase"))
  ("Which of these are methyltransferases?"
   (:var mv23937 :isa be :subject mv23936 :predicate mv23939 :present "PRESENT")
   (:var mv23936 :isa these :quantifier mv23934 :word "these") (:var mv23934 :isa which)
   (:var mv23939 :isa protein-family :plural t :raw-text "methyltransferases" :uid "GO:0008168"
    :name "methyltransferase"))
  ("Which of these are steroid receptors?"
   (:var mv23944 :isa be :subject mv23943 :predicate mv23948 :present "PRESENT")
   (:var mv23943 :isa these :quantifier mv23941 :word "these") (:var mv23941 :isa which)
   (:var mv23948 :isa receptor :plural t :modifier mv23945 :raw-text "receptors")
   (:var mv23945 :isa molecule :raw-text "steroid" :name "steroid" :uid "CHEBI:35341"))
  ("Which of these are receptor tyrosine kinases?"
   (:var mv23955 :isa be :subject mv23954 :predicate mv23951 :present "PRESENT")
   (:var mv23954 :isa these :quantifier mv23952 :word "these") (:var mv23952 :isa which)
   (:var mv23951 :isa protein-family :plural t :raw-text "receptor tyrosine kinases" :uid
    "NCIT:C17660" :family-members
    ((protein (:name "TKTL1_HUMAN") (:uid "UP:P51854"))
     (protein (:name "NTRK1_HUMAN") (:uid "UP:P04629")))
    :count 2 :name "receptor tyrosine kinase"))
  ("Which of these are transcription factors?"
   (:var mv23962 :isa be :subject mv23961 :predicate mv23958 :present "PRESENT")
   (:var mv23961 :isa these :quantifier mv23959 :word "these") (:var mv23959 :isa which)
   (:var mv23958 :isa transcription-factor :plural t :raw-text "transcription factors"))
  ("Which of these are DNA binding proteins?"
   (:var mv23968 :isa be :subject mv23967 :predicate mv23971 :present "PRESENT")
   (:var mv23967 :isa these :quantifier mv23965 :word "these") (:var mv23965 :isa which)
   (:var mv23971 :isa protein :plural t :modifier mv23964 :raw-text "proteins")
   (:var mv23964 :isa dna-binding :raw-text "DNA binding"))
  ("Which of these are serine/threonine phosphatases?"
   (:var mv23976 :isa be :subject mv23975 :predicate mv23982 :present "PRESENT")
   (:var mv23975 :isa these :quantifier mv23973 :word "these") (:var mv23973 :isa which)
   (:var mv23982 :isa phosphatase :plural t :modifier mv23981 :raw-text "phosphatases")
   (:var mv23981 :isa collection :raw-text "serine/threonine" :type amino-acid :items
    (mv23977 mv23978))
   (:var mv23977 :isa amino-acid :raw-text "serine" :name "serine")
   (:var mv23978 :isa amino-acid :raw-text "threonine" :name "threonine"))
  ("Which of these are tyrosine phosphatases?"
   (:var mv23987 :isa be :subject mv23986 :predicate mv23991 :present "PRESENT")
   (:var mv23986 :isa these :quantifier mv23984 :word "these") (:var mv23984 :isa which)
   (:var mv23991 :isa phosphatase :plural t :modifier mv23988 :raw-text "phosphatases")
   (:var mv23988 :isa amino-acid :raw-text "tyrosine" :name "tyrosine"))
  ("What does MEK phosphorylate?"
   (:var mv23996 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv23993 :agent mv23995
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv23993 :isa what)
   (:var mv23995 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("which of these are exclusively expressed in liver?"
   (:var mv24005 :isa gene-transcript-express :object mv23999 :organ mv24004 :present "PRESENT"
    :adverb mv24001 :raw-text "expressed")
   (:var mv23999 :isa these :quantifier mv23997 :word "these") (:var mv23997 :isa which)
   (:var mv24004 :isa liver) (:var mv24001 :isa exclusively :name "exclusively"))
  ("What regulates frizzled8?"
   (:var mv24010 :isa regulate :|agent-OR-cause| mv24009 :object mv24008 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24009 :isa what)
   (:var mv24008 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What increases the amount of myc?"
   (:var mv24014 :isa increase :|agent-OR-cause| mv24011 :|affected-process-OR-object| mv24016
    :present "PRESENT" :raw-text "increases")
   (:var mv24011 :isa what)
   (:var mv24016 :isa bio-amount :measured-item mv24018 :has-determiner "THE" :raw-text "amount")
   (:var mv24018 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What upregulates myc?"
   (:var mv24021 :isa upregulate :|agent-OR-cause| mv24020 :object mv24022 :present "PRESENT"
    :raw-text "upregulates")
   (:var mv24020 :isa what)
   (:var mv24022 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What downregulates myc?"
   (:var mv24024 :isa downregulate :|agent-OR-cause| mv24023 :object mv24025 :present "PRESENT"
    :raw-text "downregulates")
   (:var mv24023 :isa what)
   (:var mv24025 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What decreases the amount of GFAP?"
   (:var mv24027 :isa decrease :|agent-OR-cause| mv24026 :|affected-process-OR-object| mv24029
    :present "PRESENT" :raw-text "decreases")
   (:var mv24026 :isa what)
   (:var mv24029 :isa bio-amount :measured-item mv24031 :has-determiner "THE" :raw-text "amount")
   (:var mv24031 :isa protein :raw-text "GFAP" :uid "UP:P14136" :name "GFAP_HUMAN"))
  ("What regulates GLUL?"
   (:var mv24034 :isa regulate :|agent-OR-cause| mv24033 :object mv24035 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24033 :isa what)
   (:var mv24035 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the literature?"
   (:var mv24037 :isa regulate :|agent-OR-cause| mv24036 :object mv24038 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24036 :isa what)
   (:var mv24038 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("What regulates GLUL from the GEO RNAi database?"
   (:var mv24045 :isa regulate :|agent-OR-cause| mv24044 :object mv24046 :present "PRESENT"
    :raw-text "regulates")
   (:var mv24044 :isa what)
   (:var mv24046 :isa protein :raw-text "GLUL" :uid "UP:P15104" :name "GLNA_HUMAN"))
  ("Which kinases regulate the cfos gene?"
   (:var mv24053 :isa regulate :agent mv24057 :object mv24056 :present "PRESENT" :raw-text
    "regulate")
   (:var mv24057 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24056 :isa gene :has-determiner "THE" :expresses mv24055 :raw-text "gene")
   (:var mv24055 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which kinases negatively regulate the cfos gene?"
   (:var mv24058 :isa downregulate :agent mv24065 :object mv24064 :present "PRESENT" :raw-text
    "negatively regulate")
   (:var mv24065 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv24064 :isa gene :has-determiner "THE" :expresses mv24063 :raw-text "gene")
   (:var mv24063 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What are positive regulators of the cfos gene?"
   (:var mv24069 :isa be :subject mv24068 :predicate mv24075 :present "PRESENT")
   (:var mv24068 :isa what)
   (:var mv24075 :isa positive-regulator :plural t :theme mv24073 :raw-text "positive regulators")
   (:var mv24073 :isa gene :has-determiner "THE" :expresses mv24072 :raw-text "gene")
   (:var mv24072 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcribes ZEB1?"
   (:var mv24078 :isa transcribe :|agent-OR-cause| mv24077 :object mv24076 :present "PRESENT"
    :raw-text "transcribes")
   (:var mv24077 :isa what)
   (:var mv24076 :isa protein :raw-text "ZEB1" :uid "UP:P37275" :name "ZEB1_HUMAN"))
  ("Show me the evidence that IL6 increases the amount of SOCS1."
   (:var mv24081 :isa show :|statement-OR-theme| mv24093 :beneficiary mv24082 :present "PRESENT")
   (:var mv24093 :isa evidence :statement mv24088 :has-determiner "THE")
   (:var mv24088 :isa increase :agent mv24079 :|affected-process-OR-object| mv24090 :present
    "PRESENT" :raw-text "increases")
   (:var mv24079 :isa protein :raw-text "IL6" :uid "UP:P05231" :name "IL6_HUMAN")
   (:var mv24090 :isa bio-amount :measured-item mv24080 :has-determiner "THE" :raw-text "amount")
   (:var mv24080 :isa protein :raw-text "SOCS1" :uid "UP:O15524" :name "SOCS1_HUMAN")
   (:var mv24082 :isa interlocutor :name "speaker"))
  ("Show me the evidence that KRAS decreasse the amount of FZD8."
   (:var mv24095 :isa show :|statement-OR-theme| mv24098 :beneficiary mv24096 :present "PRESENT")
   (:var mv24098 :isa evidence :has-determiner "THE")
   (:var mv24096 :isa interlocutor :name "speaker"))
  ("What is the evidence that kras regulates frizzled8?"
   (:var mv24108 :isa be :subject mv24107 :predicate mv24114 :present "PRESENT")
   (:var mv24107 :isa what) (:var mv24114 :isa evidence :statement mv24113 :has-determiner "THE")
   (:var mv24113 :isa regulate :agent mv24112 :object mv24106 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24112 :isa protein :raw-text "kras" :uid "UP:P01116" :name "RASK_HUMAN")
   (:var mv24106 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the evidence that SRF binds the cfos gene?"
   (:var mv24116 :isa be :subject mv24115 :predicate mv24125 :present "PRESENT")
   (:var mv24115 :isa what) (:var mv24125 :isa evidence :statement mv24121 :has-determiner "THE")
   (:var mv24121 :isa binding :binder mv24120 :direct-bindee mv24124 :present "PRESENT" :raw-text
    "binds")
   (:var mv24120 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24124 :isa gene :has-determiner "THE" :expresses mv24123 :raw-text "gene")
   (:var mv24123 :isa protein :raw-text "cfos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("what genes are exclusively expressed in liver?"
   (:var mv24135 :isa gene-transcript-express :object mv24134 :organ mv24133 :present "PRESENT"
    :adverb mv24130 :raw-text "expressed")
   (:var mv24134 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24133 :isa liver) (:var mv24130 :isa exclusively :name "exclusively"))
  ("Is stat3 expressed in liver?" (:var mv24143 :isa polar-question :statement mv24139)
   (:var mv24139 :isa gene-transcript-express :object mv24137 :organ mv24141 :past "PAST" :raw-text
    "expressed")
   (:var mv24137 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24141 :isa liver))
  ("Is stat3 exclusively expressed in liver?" (:var mv24152 :isa polar-question :statement mv24150)
   (:var mv24150 :isa gene-transcript-express :object mv24144 :organ mv24149 :adverb mv24146
    :raw-text "expressed")
   (:var mv24144 :isa protein :raw-text "stat3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24149 :isa liver) (:var mv24146 :isa exclusively :name "exclusively"))
  ("How does MAP4K2 affect CXCL8?"
   (:var mv24157 :isa affect :manner mv24155 :agent mv24153 :object mv24154 :present "PRESENT"
    :raw-text "affect")
   (:var mv24155 :isa how)
   (:var mv24153 :isa protein :raw-text "MAP4K2" :uid "UP:Q12851" :name "M4K2_HUMAN")
   (:var mv24154 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("How does ERK affect CXCL8?"
   (:var mv24162 :isa affect :manner mv24159 :agent mv24161 :object mv24158 :present "PRESENT"
    :raw-text "affect")
   (:var mv24159 :isa how)
   (:var mv24161 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24158 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstream regulators of CXCL8 and CXCL10?"
   (:var mv24166 :isa be :subject mv24165 :predicate mv24180 :present "PRESENT")
   (:var mv24165 :isa what)
   (:var mv24180 :isa regulator :plural t :theme mv24175 :has-determiner "THE" :predication mv24168
    :context mv24169 :raw-text "regulators")
   (:var mv24175 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24163 mv24164))
   (:var mv24163 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24164 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv24168 :isa common) (:var mv24169 :isa upstream-segment :raw-text "upstream"))
  ("What are the paths between MAP3K7 and CXCL8?"
   (:var mv24184 :isa be :subject mv24183 :predicate mv24193 :present "PRESENT")
   (:var mv24183 :isa what)
   (:var mv24193 :isa path :plural t :endpoints mv24190 :has-determiner "THE")
   (:var mv24190 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv24181 mv24182))
   (:var mv24181 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24182 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does MAP3K7 affect IKK?" (:var mv24199 :isa polar-question :statement mv24198)
   (:var mv24198 :isa affect :agent mv24194 :object mv24197 :raw-text "affect")
   (:var mv24194 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24197 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 regulates IKK"
   (:var mv24201 :isa regulate :agent mv24200 :object mv24202 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24200 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24202 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("MAP3K7 positively regulates IKK"
   (:var mv24204 :isa upregulate :agent mv24203 :object mv24205 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv24203 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24205 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("NFkappaB positively regulates CXCL8."
   (:var mv24206 :isa upregulate :agent mv24208 :object mv24207 :present "PRESENT" :raw-text
    "positively regulates")
   (:var mv24208 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24207 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does NFkappaB regulate the CXCL8 gene?" (:var mv24218 :isa polar-question :statement mv24217)
   (:var mv24217 :isa regulate :agent mv24212 :object mv24216 :raw-text "regulate")
   (:var mv24212 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24216 :isa gene :has-determiner "THE" :expresses mv24210 :raw-text "gene")
   (:var mv24210 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Show me the evidence that NFkappaB regulates CXCL8"
   (:var mv24220 :isa show :|statement-OR-theme| mv24228 :beneficiary mv24221 :present "PRESENT")
   (:var mv24228 :isa evidence :statement mv24227 :has-determiner "THE")
   (:var mv24227 :isa regulate :agent mv24225 :object mv24219 :present "PRESENT" :raw-text
    "regulates")
   (:var mv24225 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24219 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24221 :isa interlocutor :name "speaker"))
  ("Does ERK regulate the CXCL8 gene?" (:var mv24236 :isa polar-question :statement mv24235)
   (:var mv24235 :isa regulate :agent mv24231 :object mv24234 :raw-text "regulate")
   (:var mv24231 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24234 :isa gene :has-determiner "THE" :expresses mv24229 :raw-text "gene")
   (:var mv24229 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("ERK decreases the amount of CXCL8"
   (:var mv24239 :isa decrease :agent mv24238 :|affected-process-OR-object| mv24241 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24238 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24241 :isa bio-amount :measured-item mv24237 :has-determiner "THE" :raw-text "amount")
   (:var mv24237 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does TNG regulate ERK?" (:var mv24249 :isa polar-question :statement mv24248)
   (:var mv24248 :isa regulate :agent mv24247 :object mv24246 :raw-text "regulate")
   (:var mv24247 :isa bio-entity :name "TNG")
   (:var mv24246 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate the ERK gene?" (:var mv24257 :isa polar-question :statement mv24256)
   (:var mv24256 :isa regulate :agent mv24251 :object mv24255 :raw-text "regulate")
   (:var mv24251 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24255 :isa gene :has-determiner "THE" :expresses mv24254 :raw-text "gene")
   (:var mv24254 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNG and ERK?"
   (:var mv24259 :isa be :subject mv24258 :predicate mv24270 :present "PRESENT")
   (:var mv24258 :isa what)
   (:var mv24270 :isa pathway :plural t :pathwaycomponent mv24267 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24267 :isa collection :raw-text "TNG and ERK" :type protein-family :number 2 :items
    (mv24264 mv24266))
   (:var mv24264 :isa bio-entity :name "TNG")
   (:var mv24266 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What are the pathways between TNF and ERK?"
   (:var mv24272 :isa be :subject mv24271 :predicate mv24283 :present "PRESENT")
   (:var mv24271 :isa what)
   (:var mv24283 :isa pathway :plural t :pathwaycomponent mv24280 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv24280 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24277 mv24279))
   (:var mv24277 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24279 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate ERK?" (:var mv24290 :isa polar-question :statement mv24289)
   (:var mv24289 :isa regulate :agent mv24285 :object mv24288 :raw-text "regulate")
   (:var mv24285 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24288 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does NFkappaB regulate the ERK gene?" (:var mv24299 :isa polar-question :statement mv24298)
   (:var mv24298 :isa regulate :agent mv24292 :object mv24297 :raw-text "regulate")
   (:var mv24292 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24297 :isa gene :has-determiner "THE" :expresses mv24296 :raw-text "gene")
   (:var mv24296 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What pathways exist between NFkappaB and ERK?"
   (:var mv24315 :isa copular-predication-of-pp :item mv24310 :value mv24314 :prep "BETWEEN"
    :predicate mv24303)
   (:var mv24310 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv24314 :isa pathway :plural t :pathwaycomponent mv24309 :has-determiner "WHAT" :raw-text
    "pathways")
   (:var mv24309 :isa collection :raw-text "NFkappaB and ERK" :type protein-family :number 2 :items
    (mv24306 mv24308))
   (:var mv24306 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24308 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24303 :isa exist :present "PRESENT"))
  ("How does NFkappaB affect ERK?"
   (:var mv24321 :isa affect :manner mv24317 :agent mv24319 :object mv24322 :present "PRESENT"
    :raw-text "affect")
   (:var mv24317 :isa how)
   (:var mv24319 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB")
   (:var mv24322 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("MAP3K7 activates IKK"
   (:var mv24324 :isa bio-activate :agent mv24323 :object mv24325 :present "PRESENT" :raw-text
    "activates")
   (:var mv24323 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24325 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199"))
  ("IKK activates TNF"
   (:var mv24327 :isa bio-activate :agent mv24326 :object mv24328 :present "PRESENT" :raw-text
    "activates")
   (:var mv24326 :isa protein-family :raw-text "IKK" :name "IKK" :count 3 :family-members
    ((protein (:name "IKKE_HUMAN") (:uid "UP:Q14164"))
     (protein (:name "IKKB_HUMAN") (:uid "UP:O14920"))
     (protein (:name "IKKA_HUMAN") (:uid "UP:O15111")))
    :uid "NCIT:C104199")
   (:var mv24328 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN"))
  ("What are the paths between TNF and ERK?"
   (:var mv24330 :isa be :subject mv24329 :predicate mv24341 :present "PRESENT")
   (:var mv24329 :isa what)
   (:var mv24341 :isa path :plural t :endpoints mv24338 :has-determiner "THE")
   (:var mv24338 :isa collection :raw-text "TNF and ERK" :type protein :number 2 :items
    (mv24335 mv24337))
   (:var mv24335 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24337 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does TNF regulate ERK?" (:var mv24347 :isa polar-question :statement mv24346)
   (:var mv24346 :isa regulate :agent mv24343 :object mv24345 :raw-text "regulate")
   (:var mv24343 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24345 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("How does MAP3K7 affect CXCL8?"
   (:var mv24352 :isa affect :manner mv24350 :agent mv24348 :object mv24349 :present "PRESENT"
    :raw-text "affect")
   (:var mv24350 :isa how)
   (:var mv24348 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24349 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("TNF activates ERK"
   (:var mv24354 :isa bio-activate :agent mv24353 :object mv24355 :present "PRESENT" :raw-text
    "activates")
   (:var mv24353 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24355 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active ERK decreases the amount of CXCL8"
   (:var mv24359 :isa decrease :agent mv24358 :|affected-process-OR-object| mv24361 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24358 :isa protein-family :predication mv24357 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24357 :isa active)
   (:var mv24361 :isa bio-amount :measured-item mv24356 :has-determiner "THE" :raw-text "amount")
   (:var mv24356 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What are the common upstreams of CXCL8 and CXCL10?"
   (:var mv24367 :isa be :subject mv24366 :predicate mv24378 :present "PRESENT")
   (:var mv24366 :isa what)
   (:var mv24378 :isa upstream-segment :plural t :pathwaycomponent mv24374 :has-determiner "THE"
    :predication mv24369 :raw-text "upstreams")
   (:var mv24374 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv24364 mv24365))
   (:var mv24364 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24365 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv24369 :isa common))
  ("How does CXCL8 affect CXCL8?"
   (:var mv24383 :isa affect :manner mv24381 :agent mv24379 :object mv24380 :present "PRESENT"
    :raw-text "affect")
   (:var mv24381 :isa how)
   (:var mv24379 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24380 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Does CXCL8 regulate CXCL10?" (:var mv24389 :isa polar-question :statement mv24388)
   (:var mv24388 :isa regulate :agent mv24384 :object mv24385 :raw-text "regulate")
   (:var mv24384 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24385 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does CXCL8 regulate the CXCL10 gene?" (:var mv24397 :isa polar-question :statement mv24396)
   (:var mv24396 :isa regulate :agent mv24390 :object mv24395 :raw-text "regulate")
   (:var mv24390 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv24395 :isa gene :has-determiner "THE" :expresses mv24391 :raw-text "gene")
   (:var mv24391 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("How does MAP3k7 affect CXCL10?"
   (:var mv24402 :isa affect :manner mv24400 :agent mv24398 :object mv24399 :present "PRESENT"
    :raw-text "affect")
   (:var mv24400 :isa how)
   (:var mv24398 :isa protein :raw-text "MAP3k7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv24399 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What are the paths between TNF and CXCL10?"
   (:var mv24405 :isa be :subject mv24404 :predicate mv24415 :present "PRESENT")
   (:var mv24404 :isa what)
   (:var mv24415 :isa path :plural t :endpoints mv24412 :has-determiner "THE")
   (:var mv24412 :isa collection :raw-text "TNF and CXCL10" :type protein :number 2 :items
    (mv24410 mv24403))
   (:var mv24410 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24403 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Does ERK regulate the expression of CXCL10?"
   (:var mv24425 :isa polar-question :statement mv24423)
   (:var mv24423 :isa regulate :agent mv24418 :affected-process mv24421 :raw-text "regulate")
   (:var mv24418 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24421 :isa gene-transcript-express :object mv24416 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24416 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the expression of CXCL10"
   (:var mv24429 :isa decrease :agent mv24428 :affected-process mv24431 :present "PRESENT"
    :raw-text "decreases")
   (:var mv24428 :isa protein-family :predication mv24427 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24427 :isa active)
   (:var mv24431 :isa gene-transcript-express :object mv24426 :has-determiner "THE" :raw-text
    "expression")
   (:var mv24426 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("active ERK decreases the amount of CXCL8"
   (:var mv24437 :isa decrease :agent mv24436 :|affected-process-OR-object| mv24439 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24436 :isa protein-family :predication mv24435 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24435 :isa active)
   (:var mv24439 :isa bio-amount :measured-item mv24434 :has-determiner "THE" :raw-text "amount")
   (:var mv24434 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Active ERK decreases the amount of CXCL10"
   (:var mv24445 :isa decrease :agent mv24444 :|affected-process-OR-object| mv24447 :present
    "PRESENT" :raw-text "decreases")
   (:var mv24444 :isa protein-family :predication mv24443 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24443 :isa active)
   (:var mv24447 :isa bio-amount :measured-item mv24442 :has-determiner "THE" :raw-text "amount")
   (:var mv24442 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("NG25 inhibits the activity of MAP3K7"
   (:var mv24452 :isa inhibit :agent mv24450 :affected-process mv24454 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv24450 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24454 :isa bio-activity :participant mv24451 :has-determiner "THE" :raw-text "activity")
   (:var mv24451 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Does NG25 decrease the CXCL8 in the model?"
   (:var mv24468 :isa polar-question :statement mv24466)
   (:var mv24466 :isa decrease :agent mv24457 :object mv24458 :raw-text "decrease")
   (:var mv24457 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24458 :isa protein :has-determiner "THE" :raw-text "CXCL8" :uid "UP:P10145" :name
    "IL8_HUMAN"))
  ("Does NG25 decrease CXCL10 in the model?" (:var mv24479 :isa polar-question :statement mv24477)
   (:var mv24477 :isa decrease :agent mv24469 :object mv24470 :raw-text "decrease")
   (:var mv24469 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664")
   (:var mv24470 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("TNF activates NFkappaB"
   (:var mv24481 :isa bio-activate :agent mv24480 :object mv24482 :present "PRESENT" :raw-text
    "activates")
   (:var mv24480 :isa protein :raw-text "TNF" :uid "UP:P01375" :name "TNFA_HUMAN")
   (:var mv24482 :isa protein-family :raw-text "NFkappaB" :name "NF-kappaB" :count 2
    :family-members
    ((protein (:name "TF65_HUMAN") (:uid "UP:Q04206"))
     (protein (:name "NFKB1_HUMAN") (:uid "UP:P19838")))
    :uid "FPLX:NFkappaB"))
  ("I want to find out how tofacitinib decreases IL2"
   (:var mv24488 :isa want :agent mv24485 :theme mv24499 :present "PRESENT")
   (:var mv24485 :isa interlocutor :name "speaker")
   (:var mv24499 :isa find-out :agent mv24485 :statement mv24496)
   (:var mv24496 :isa wh-question :statement mv24495 :var nil :wh how)
   (:var mv24495 :isa decrease :agent mv24494 :object mv24484 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24494 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv24484 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in BT20 cells"
   (:var mv24504 :isa want :agent mv24501 :theme mv24521 :present "PRESENT")
   (:var mv24501 :isa interlocutor :name "speaker")
   (:var mv24521 :isa find-out :agent mv24501 :statement mv24518)
   (:var mv24518 :isa wh-question :statement mv24511 :var nil :wh how)
   (:var mv24511 :isa decrease :agent mv24510 :object mv24512 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24510 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24512 :isa protein :cell-type mv24516 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24516 :isa cell-type :plural t :cell-line mv24500)
   (:var mv24500 :isa cell-line :name "BT-20" :uid "CVCL:0178"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells"
   (:var mv24527 :isa want :agent mv24524 :theme mv24543 :present "PRESENT")
   (:var mv24524 :isa interlocutor :name "speaker")
   (:var mv24543 :isa find-out :agent mv24524 :statement mv24540)
   (:var mv24540 :isa wh-question :statement mv24533 :var nil :wh how)
   (:var mv24533 :isa bio-activate :agent mv24522 :object mv24534 :present "PRESENT" :raw-text
    "activates")
   (:var mv24522 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv24534 :isa protein :cell-type mv24538 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv24538 :isa cell-type :plural t :cell-line mv24523)
   (:var mv24523 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Does MEK phosphorylate ERK?" (:var mv24549 :isa polar-question :statement mv24548)
   (:var mv24548 :isa phosphorylate :agent mv24545 :substrate mv24547 :raw-text "phosphorylate")
   (:var mv24545 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv24547 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Does STAT3 inhibit the c-fos gene?" (:var mv24557 :isa polar-question :statement mv24556)
   (:var mv24556 :isa inhibit :agent mv24550 :object mv24555 :raw-text "inhibit")
   (:var mv24550 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24555 :isa gene :has-determiner "THE" :expresses mv24551 :raw-text "gene")
   (:var mv24551 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 stimulate the c-fos gene?" (:var mv24565 :isa polar-question :statement mv24564)
   (:var mv24564 :isa stimulate :agent mv24558 :object mv24563 :raw-text "stimulate")
   (:var mv24558 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv24563 :isa gene :has-determiner "THE" :expresses mv24559 :raw-text "gene")
   (:var mv24559 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("I want to find out how Selumetinib decreases FOS in SKMEL-133 melanoma cells."
   (:var mv24570 :isa want :agent mv24567 :theme mv24589 :present "PRESENT")
   (:var mv24567 :isa interlocutor :name "speaker")
   (:var mv24589 :isa find-out :agent mv24567 :statement mv24586)
   (:var mv24586 :isa wh-question :statement mv24577 :var nil :wh how)
   (:var mv24577 :isa decrease :agent mv24576 :object mv24578 :present "PRESENT" :raw-text
    "decreases")
   (:var mv24576 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24578 :isa protein :cell-type mv24584 :raw-text "FOS" :uid "UP:P01100" :name
    "FOS_HUMAN")
   (:var mv24584 :isa cell-type :plural t :cell-line mv24566 :associated-disease mv24580)
   (:var mv24566 :isa cell-line :name "SK-MEL-133" :uid "CVCL:6082") (:var mv24580 :isa melanoma))
  ("Is ERK a transcription factor?" (:var mv24594 :isa polar-question :statement mv24591)
   (:var mv24591 :isa be :subject mv24592 :predicate mv24590)
   (:var mv24592 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv24590 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("List all the genes regulated by elk1 and srf."
   (:var mv24596 :isa list :theme mv24607 :present "PRESENT")
   (:var mv24607 :isa gene :plural t :predication mv24601 :quantifier mv24597 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24601 :isa regulate :object mv24607 :agent mv24605 :past "PAST" :raw-text "regulated")
   (:var mv24605 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24595 mv24604))
   (:var mv24595 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24604 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24597 :isa all :word "all"))
  ("List some of the genes regulated by elk1 and srf."
   (:var mv24611 :isa list :theme mv24625 :present "PRESENT")
   (:var mv24625 :isa gene :plural t :predication mv24617 :quantifier mv24612 :has-determiner "THE"
    :raw-text "genes")
   (:var mv24617 :isa regulate :object mv24625 :agent mv24621 :past "PAST" :raw-text "regulated")
   (:var mv24621 :isa collection :raw-text "elk1 and srf" :type protein :number 2 :items
    (mv24610 mv24620))
   (:var mv24610 :isa protein :raw-text "elk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv24620 :isa protein :raw-text "srf" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv24612 :isa some :word "some"))
  ("Show me the  mutations of TP53 and BRAF in ovarian cancer."
   (:var mv24630 :isa show :|statement-OR-theme| mv24644 :beneficiary mv24631 :present "PRESENT")
   (:var mv24644 :isa mutation :plural t :context mv24629 :object mv24639 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24629 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24639 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24628 mv24637))
   (:var mv24628 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24637 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24631 :isa interlocutor :name "speaker"))
  ("What are the mutations of TP53 and BRAF in ovarian cancer?"
   (:var mv24648 :isa be :subject mv24647 :predicate mv24661 :present "PRESENT")
   (:var mv24647 :isa what)
   (:var mv24661 :isa mutation :plural t :context mv24646 :object mv24656 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv24646 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv24656 :isa collection :raw-text "TP53 and BRAF" :type protein :number 2 :items
    (mv24645 mv24654))
   (:var mv24645 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24654 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 for breast cancer?"
   (:var mv24666 :isa be :subject mv24665 :predicate mv24676 :present "PRESENT")
   (:var mv24665 :isa what)
   (:var mv24676 :isa gene :disease mv24664 :has-determiner "THE" :predication mv24662 :raw-text
    "genes")
   (:var mv24664 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24662 :isa mutual-exclusivity :alternative mv24663)
   (:var mv24663 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What are the mutually exclusive genes with CDH1 in breast cancer?"
   (:var mv24681 :isa be :subject mv24680 :predicate mv24691 :present "PRESENT")
   (:var mv24680 :isa what)
   (:var mv24691 :isa gene :disease mv24679 :has-determiner "THE" :predication mv24677 :raw-text
    "genes")
   (:var mv24679 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv24677 :isa mutual-exclusivity :alternative mv24678)
   (:var mv24678 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN"))
  ("What downregulates it?"
   (:var mv24693 :isa downregulate :|agent-OR-cause| mv24692 :|affected-process-OR-object| mv24694
    :present "PRESENT" :raw-text "downregulates")
   (:var mv24692 :isa what) (:var mv24694 :isa pronoun/inanimate :word "it"))
  ("What genes have strong evidence of being regulated by mir-122-5p?"
   (:var mv24699 :isa have :possessor mv24706 :thing-possessed mv24701 :present "PRESENT")
   (:var mv24706 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv24701 :isa evidence :fact mv24704 :predication mv24700)
   (:var mv24704 :isa regulate :agent mv24695 :progressive mv24703 :raw-text "regulated")
   (:var mv24695 :isa micro-rna :raw-text "mir-122-5p" :name "microRNA 122-5p" :uid "MIMAT0000421")
   (:var mv24703 :isa be) (:var mv24700 :isa strong))
  ("What increases the amount of myc"
   (:var mv24712 :isa increase :|agent-OR-cause| mv24709 :|affected-process-OR-object| mv24714
    :present "PRESENT" :raw-text "increases")
   (:var mv24709 :isa what)
   (:var mv24714 :isa bio-amount :measured-item mv24716 :has-determiner "THE" :raw-text "amount")
   (:var mv24716 :isa protein :raw-text "myc" :uid "UP:P01106" :name "MYC_HUMAN"))
  ("What inhibits fzd8?"
   (:var mv24720 :isa inhibit :|agent-OR-cause| mv24719 :object mv24718 :present "PRESENT"
    :raw-text "inhibits")
   (:var mv24719 :isa what)
   (:var mv24718 :isa protein :raw-text "fzd8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is the most likely cellular location of AKT1, BRAF and MAPK1?"
   (:var mv24724 :isa be :subject mv24723 :predicate mv24736 :present "PRESENT")
   (:var mv24723 :isa what) (:var mv24736 :isa quality-predicate :item mv24734 :attribute mv24730)
   (:var mv24734 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv24721 mv24732 mv24722))
   (:var mv24721 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24732 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv24722 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv24730 :isa location-of :has-determiner "THE" :predication mv24728 :modifier mv24729)
   (:var mv24728 :isa likely :comparative mv24726)
   (:var mv24726 :isa superlative-quantifier :name "most")
   (:var mv24729 :isa cellular :name "cellular"))
  ("What is the most likely cellular location of AKT1?"
   (:var mv24739 :isa be :subject mv24738 :predicate mv24748 :present "PRESENT")
   (:var mv24738 :isa what) (:var mv24748 :isa quality-predicate :item mv24737 :attribute mv24745)
   (:var mv24737 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24745 :isa location-of :has-determiner "THE" :predication mv24743 :modifier mv24744)
   (:var mv24743 :isa likely :comparative mv24741)
   (:var mv24741 :isa superlative-quantifier :name "most")
   (:var mv24744 :isa cellular :name "cellular"))
  ("What is the mutation significance of TP53 in lung cancer?"
   (:var mv24752 :isa be :subject mv24751 :predicate mv24755 :present "PRESENT")
   (:var mv24751 :isa what)
   (:var mv24755 :isa significance :context mv24750 :agent mv24749 :has-determiner "THE" :modifier
    mv24754)
   (:var mv24750 :isa cancer :name "lung cancer" :uid "TS-0571")
   (:var mv24749 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv24754 :isa mutation :raw-text "mutation"))
  ("Which of those are regulated by tp53?"
   (:var mv24767 :isa regulate :|affected-process-OR-object| mv24763 :agent mv24760 :present
    "PRESENT" :raw-text "regulated")
   (:var mv24763 :isa those :quantifier mv24761 :word "those") (:var mv24761 :isa which)
   (:var mv24760 :isa protein :raw-text "tp53" :uid "UP:P04637" :name "P53_HUMAN"))
  ("Which of those genes are in the MAPK signaling pathway?"
   (:var mv24787 :isa copular-predication-of-pp :item mv24784 :value mv24786 :prep "IN" :predicate
    mv24776)
   (:var mv24784 :isa gene :plural t :quantifier mv24771 :has-determiner "THOSE" :raw-text "genes")
   (:var mv24771 :isa which)
   (:var mv24786 :isa gene :plural t :context mv24770 :quantifier mv24771 :has-determiner "THOSE"
    :raw-text "genes")
   (:var mv24770 :isa signaling-pathway :has-determiner "THE" :modifier mv24779 :raw-text
    "signaling pathway")
   (:var mv24779 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv24776 :isa be :present "PRESENT"))
  ("Which of these are in the il-12 pathway?"
   (:var mv24798 :isa copular-predication-of-pp :item mv24792 :value mv24796 :prep mv24794
    :predicate mv24793)
   (:var mv24792 :isa these :quantifier mv24790 :word "these") (:var mv24790 :isa which)
   (:var mv24796 :isa pathway :has-determiner "THE" :modifier mv24789 :raw-text "pathway")
   (:var mv24789 :isa protein-family :raw-text "il-12" :name "IL-12" :count 2 :family-members
    ((protein (:name "IL12B_HUMAN") (:uid "UP:P29460"))
     (protein (:name "IL12A_HUMAN") (:uid "UP:P29459")))
    :uid "FPLX:IL12")
   (:var mv24794 :isa in :word "in") (:var mv24793 :isa be :present "PRESENT"))
  ("Which of them are expressed in liver?"
   (:var mv24807 :isa gene-transcript-express :object mv24802 :organ mv24806 :present "PRESENT"
    :raw-text "expressed")
   (:var mv24802 :isa pronoun/plural :quantifier mv24800 :word "them") (:var mv24800 :isa which)
   (:var mv24806 :isa liver))
  ("Which of them are most frequently regulated by miR-335-5p and miR-155-5p?"
   (:var mv24822 :isa regulate :|affected-process-OR-object| mv24814 :agent mv24821 :present
    "PRESENT" :superlative mv24816 :adverb mv24817 :raw-text "regulated")
   (:var mv24814 :isa pronoun/plural :quantifier mv24812 :word "them") (:var mv24812 :isa which)
   (:var mv24821 :isa collection :raw-text "miR-335-5p and miR-155-5p" :type micro-rna :number 2
    :items (mv24810 mv24811))
   (:var mv24810 :isa micro-rna :raw-text "miR-335-5p" :name "microRNA 335-5p" :uid "MIMAT0000765")
   (:var mv24811 :isa micro-rna :raw-text "miR-155-5p" :name "microRNA 155-5p" :uid "MIMAT0000646")
   (:var mv24816 :isa superlative-quantifier :name "most")
   (:var mv24817 :isa frequently :name "frequently"))
  ("What transcription factors target SMURF2?"
   (:var mv24830 :isa target :agent mv24831 :object mv24827 :present "PRESENT" :raw-text "target")
   (:var mv24831 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv24827 :isa protein :raw-text "SMURF2" :uid "UP:Q9HAU4" :name "SMUF2_HUMAN"))
  ("Which of those target frizzled8?"
   (:var mv24837 :isa target :|agent-OR-cause| mv24835 :object mv24832 :present "PRESENT" :raw-text
    "target")
   (:var mv24835 :isa those :quantifier mv24833 :word "those") (:var mv24833 :isa which)
   (:var mv24832 :isa protein :raw-text "frizzled8" :uid "UP:Q9H461" :name "FZD8_HUMAN"))
  ("What is Selumetinib?"
   (:var mv24840 :isa be :subject mv24839 :predicate mv24841 :present "PRESENT")
   (:var mv24839 :isa what)
   (:var mv24841 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What is MAPK3?" (:var mv24844 :isa be :subject mv24843 :predicate mv24842 :present "PRESENT")
   (:var mv24843 :isa what)
   (:var mv24842 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does it do?" (:var mv24850 :isa do :patient mv24845 :present "PRESENT")
   (:var mv24845 :isa what))
  ("Is there an inhibitor of ERK1?" (:var mv24860 :isa polar-question :statement mv24858)
   (:var mv24858 :isa there-exists :value mv24856 :predicate mv24853)
   (:var mv24856 :isa inhibitor :protein mv24851 :has-determiner "AN" :raw-text "inhibitor")
   (:var mv24851 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv24853 :isa syntactic-there))
  ("Name some drugs that inhibit AKT1."
   (:var mv24862 :isa name-something :patient mv24871 :present "PRESENT")
   (:var mv24871 :isa drug :plural t :predication mv24869 :quantifier mv24865 :raw-text "drugs")
   (:var mv24869 :isa inhibit :agent mv24871 :that-rel t :object mv24861 :present "PRESENT"
    :raw-text "inhibit")
   (:var mv24861 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv24865 :isa some :word "some"))
  ("Are there any Map2K1 inhibitors?" (:var mv24882 :isa polar-question :statement mv24879)
   (:var mv24879 :isa there-exists :value mv24881 :predicate mv24874)
   (:var mv24881 :isa inhibitor :plural t :quantifier mv24876 :protein mv24872 :raw-text
    "inhibitors")
   (:var mv24876 :isa any :word "any")
   (:var mv24872 :isa protein :raw-text "Map2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv24874 :isa syntactic-there))
  ("Are there targets of Selumetinib?" (:var mv24894 :isa polar-question :statement mv24891)
   (:var mv24891 :isa there-exists :value mv24893 :predicate mv24884)
   (:var mv24893 :isa target-protein :plural t :treatment mv24890 :raw-text "targets")
   (:var mv24890 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622")
   (:var mv24884 :isa syntactic-there))
  ("What does Selumetinib inhibit?"
   (:var mv24898 :isa inhibit :|affected-process-OR-object| mv24895 :agent mv24897 :present
    "PRESENT" :raw-text "inhibit")
   (:var mv24895 :isa what)
   (:var mv24897 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("What does Selumetinib target?"
   (:var mv24903 :isa target :|affected-process-OR-object| mv24899 :agent mv24901 :present
    "PRESENT" :raw-text "target")
   (:var mv24899 :isa what)
   (:var mv24901 :isa drug :raw-text "Selumetinib" :name "selumetinib" :uid "PCID:10127622"))
  ("Does Vemurafenib target BRAF?" (:var mv24910 :isa polar-question :statement mv24909)
   (:var mv24909 :isa target :agent mv24905 :object mv24908 :raw-text "target")
   (:var mv24905 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv24908 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What are some targets for treating pancreatic cancer?"
   (:var mv24913 :isa be :subject mv24912 :predicate mv24922 :present "PRESENT")
   (:var mv24912 :isa what)
   (:var mv24922 :isa target-protein :plural t :quantifier mv24914 :treatment mv24919 :raw-text
    "targets")
   (:var mv24914 :isa some :word "some")
   (:var mv24919 :isa treatment :disease mv24911 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv24911 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some targets for pancreatic cancer?"
   (:var mv24925 :isa be :subject mv24924 :predicate mv24933 :present "PRESENT")
   (:var mv24924 :isa what)
   (:var mv24933 :isa target-protein :plural t :quantifier mv24926 :disease mv24923 :raw-text
    "targets")
   (:var mv24926 :isa some :word "some")
   (:var mv24923 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What targets could lead to the development of pancreatic cancer?"
   (:var mv24940 :isa lead :agent mv24945 :theme mv24943 :modal mv24939 :raw-text "lead")
   (:var mv24945 :isa target-protein :plural t :has-determiner "WHAT" :raw-text "targets")
   (:var mv24943 :isa development :disease mv24934 :has-determiner "THE" :raw-text "development")
   (:var mv24934 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24939 :isa could))
  ("What proteins could lead to the development of pancreatic cancer?"
   (:var mv24953 :isa lead :agent mv24958 :theme mv24956 :modal mv24952 :raw-text "lead")
   (:var mv24958 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv24956 :isa development :disease mv24948 :has-determiner "THE" :raw-text "development")
   (:var mv24948 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24952 :isa could))
  ("What mutated genes could lead to pancreatic cancer?"
   (:var mv24967 :isa lead :agent mv24970 :theme mv24961 :modal mv24966 :raw-text "lead")
   (:var mv24970 :isa gene :plural t :has-determiner "WHAT" :predication mv24963 :raw-text "genes")
   (:var mv24963 :isa mutation :object mv24970 :raw-text "mutated")
   (:var mv24961 :isa cancer :name "pancreatic cancer" :uid "TS-0739") (:var mv24966 :isa could))
  ("What is the top gene mutation that leads to pancreatic cancer?"
   (:var mv24974 :isa be :subject mv24973 :predicate mv24978 :present "PRESENT")
   (:var mv24973 :isa what)
   (:var mv24978 :isa mutation :predication mv24980 :has-determiner "THE" :modifier mv24976 :object
    mv24977 :raw-text "mutation")
   (:var mv24980 :isa lead :agent mv24978 :that-rel t :theme mv24972 :present "PRESENT" :raw-text
    "leads")
   (:var mv24972 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv24976 :isa top-qua-location) (:var mv24977 :isa gene :raw-text "gene"))
  ("I would like to find a treatement for pancreatic cancer."
   (:var mv24989 :isa like :agent mv24984 :modal mv24987)
   (:var mv24984 :isa interlocutor :name "speaker") (:var mv24987 :isa would))
  ("What drug could I use to treat pancreatic cancer?"
   (:var mv25010 :isa bio-use :patient mv25000 :modal mv25001 :agent mv25002 :theme mv25009
    :present "PRESENT" :raw-text "use")
   (:var mv25000 :isa drug :has-determiner "WHAT" :raw-text "drug") (:var mv25001 :isa could)
   (:var mv25002 :isa interlocutor :name "speaker")
   (:var mv25009 :isa treatment :disease mv24998 :raw-text "treat")
   (:var mv24998 :isa cancer :name "pancreatic cancer" :uid "TS-0739"))
  ("What are some drugs for treating pancreatic cancer?"
   (:var mv25013 :isa be :subject mv25012 :predicate mv25021 :present "PRESENT")
   (:var mv25012 :isa what)
   (:var mv25021 :isa drug :plural t :treatment mv25018 :quantifier mv25014 :raw-text "drugs")
   (:var mv25018 :isa treatment :disease mv25011 :progressive "PROGRESSIVE" :raw-text "treating")
   (:var mv25011 :isa cancer :name "pancreatic cancer" :uid "TS-0739")
   (:var mv25014 :isa some :word "some"))
  ("I'd like to find a treatement for pancreatic cancer."
   (:var mv25028 :isa like :agent mv25024 :modal mv25035)
   (:var mv25024 :isa interlocutor :name "speaker") (:var mv25035 :isa would))
  ("How can i treat pancreatic cancer?" (:var mv25039 :isa how))
  ("Does MEK act on ERK?" (:var mv25049 :isa polar-question :statement mv25047)
   (:var mv25047 :isa bio-act :agent mv25043 :acted-on mv25046 :raw-text "act")
   (:var mv25043 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25046 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Let's build a model"
   (:var mv25054 :isa explicit-suggestion :suggestion mv25051 :marker let-as-directive)
   (:var mv25051 :isa build :artifact mv25053 :present "PRESENT")
   (:var mv25053 :isa model :has-determiner "A"))
  ("Mek activates MAPK3"
   (:var mv25057 :isa bio-activate :agent mv25056 :object mv25055 :present "PRESENT" :raw-text
    "activates")
   (:var mv25056 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25055 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("HRAS activates RAF."
   (:var mv25059 :isa bio-activate :agent mv25058 :object mv25060 :present "PRESENT" :raw-text
    "activates")
   (:var mv25058 :isa protein :raw-text "HRAS" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv25060 :isa protein-family :raw-text "RAF" :name "Raf" :count 3 :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("Remove the fact that hras activates ras"
   (:var mv25061 :isa remove :object mv25068 :present "PRESENT" :raw-text "Remove")
   (:var mv25068 :isa fact :statement mv25066 :has-determiner "THE")
   (:var mv25066 :isa bio-activate :agent mv25065 :object mv25067 :present "PRESENT" :raw-text
    "activates")
   (:var mv25065 :isa protein :raw-text "hras" :uid "UP:P01112" :name "RASH_HUMAN")
   (:var mv25067 :isa protein-family :raw-text "ras" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663"))
  ("Can you tell me what is in the model?" (:var mv25080 :isa polar-question :statement mv25071)
   (:var mv25071 :isa tell :agent mv25070 :theme mv25079 :theme mv25072 :modal "CAN")
   (:var mv25070 :isa interlocutor :name "hearer")
   (:var mv25079 :isa copular-predication-of-pp :item mv25073 :value mv25077 :prep mv25075
    :predicate mv25074)
   (:var mv25073 :isa what) (:var mv25077 :isa model :has-determiner "THE")
   (:var mv25075 :isa in :word "in") (:var mv25074 :isa be :modal "CAN")
   (:var mv25072 :isa interlocutor :name "speaker"))
  ("Summarize the model." (:var mv25084 :isa summarize :statement mv25083 :present "PRESENT")
   (:var mv25083 :isa model :has-determiner "THE"))
  ("Summarize the current model."
   (:var mv25089 :isa summarize :statement mv25088 :present "PRESENT")
   (:var mv25088 :isa model :has-determiner "THE" :predication mv25087)
   (:var mv25087 :isa current))
  ("What phosphorylates BRAF?"
   (:var mv25091 :isa phosphorylate :|agent-OR-cause| mv25090 :substrate mv25092 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv25090 :isa what)
   (:var mv25092 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Vemurafenib binds BRAF."
   (:var mv25094 :isa binding :binder mv25093 :direct-bindee mv25095 :present "PRESENT" :raw-text
    "binds")
   (:var mv25093 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv25095 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Phosphorylated MAP2K1 is activated."
   (:var mv25100 :isa bio-activate :object mv25096 :present "PRESENT" :raw-text "activated")
   (:var mv25096 :isa protein :predication mv25097 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv25097 :isa phosphorylate :substrate mv25096 :raw-text "Phosphorylated"))
  ("PP2A-alpha dephosphorylates MAP2K1 that is not bound to ERK2."
   (:var mv25104 :isa dephosphorylate :agent mv25101 :substrate mv25102 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv25101 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv25102 :isa protein :predication mv25110 :raw-text "MAP2K1" :uid "UP:Q02750" :name
    "MP2K1_HUMAN")
   (:var mv25110 :isa binding :direct-bindee mv25102 :that-rel t :bindee mv25103 :present "PRESENT"
    :negation mv25107 :raw-text "bound")
   (:var mv25103 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv25107 :isa not :word "not"))
  ("Active MAP2K1 that is not bound to PP2A-alpha phosphorylates ERK2."
   (:var mv25121 :isa phosphorylate :agent mv25112 :substrate mv25114 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25112 :isa protein :predication mv25122 :predication mv25115 :raw-text "MAP2K1" :uid
    "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25122 :isa binding :direct-bindee mv25112 :that-rel t :bindee mv25113 :present "PRESENT"
    :negation mv25118 :raw-text "bound")
   (:var mv25113 :isa protein :raw-text "PP2A-alpha" :uid "UP:P67775" :name "PP2AA_HUMAN")
   (:var mv25118 :isa not :word "not") (:var mv25115 :isa active)
   (:var mv25114 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("Phosphorylated ERK2 is activated."
   (:var mv25128 :isa bio-activate :object mv25124 :present "PRESENT" :raw-text "activated")
   (:var mv25124 :isa protein :predication mv25125 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25125 :isa phosphorylate :substrate mv25124 :raw-text "Phosphorylated"))
  ("DUSP6 dephosphorylates ERK2 that is not bound to SOS1."
   (:var mv25132 :isa dephosphorylate :agent mv25129 :substrate mv25130 :present "PRESENT"
    :raw-text "dephosphorylates")
   (:var mv25129 :isa protein :raw-text "DUSP6" :uid "UP:Q16828" :name "DUS6_HUMAN")
   (:var mv25130 :isa protein :predication mv25138 :raw-text "ERK2" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25138 :isa binding :direct-bindee mv25130 :that-rel t :bindee mv25131 :present "PRESENT"
    :negation mv25135 :raw-text "bound")
   (:var mv25131 :isa protein :raw-text "SOS1" :uid "UP:Q07889" :name "SOS1_HUMAN")
   (:var mv25135 :isa not :word "not"))
  ("BRAF V600E that is not bound to Vemurafenib phosphorylates MAP2K1."
   (:var mv25153 :isa phosphorylate :agent mv25141 :substrate mv25140 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25141 :isa protein :predication mv25156 :mutation mv25155 :raw-text "BRAF" :uid
    "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25156 :isa binding :direct-bindee mv25141 :that-rel t :bindee mv25152 :present "PRESENT"
    :negation mv25149 :raw-text "bound")
   (:var mv25152 :isa drug :raw-text "Vemurafenib" :name "vemurafenib" :uid "PCID:42611257")
   (:var mv25149 :isa not :word "not")
   (:var mv25155 :isa point-mutated-protein :position mv25144 :new-amino-acid mv25146
    :original-amino-acid mv25142)
   (:var mv25144 :isa number :value 600)
   (:var mv25146 :isa amino-acid :name "glutamic acid" :letter "E")
   (:var mv25142 :isa amino-acid :name "valine" :letter "V")
   (:var mv25140 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("Phosphorylated MAPK1 is active."
   (:var mv25162 :isa copular-predication :item mv25158 :value mv25161 :predicate mv25160)
   (:var mv25158 :isa protein :predication mv25159 :raw-text "MAPK1" :uid "UP:P28482" :name
    "MK01_HUMAN")
   (:var mv25159 :isa phosphorylate :substrate mv25158 :raw-text "Phosphorylated")
   (:var mv25161 :isa active) (:var mv25160 :isa be :present "PRESENT"))
  ("PDK1 phosphorylates AKT1."
   (:var mv25165 :isa phosphorylate :agent mv25163 :substrate mv25164 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25163 :isa protein :raw-text "PDK1" :uid "UP:O15530" :name "PDPK1_HUMAN")
   (:var mv25164 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move phosphorylated AKT1 to the top"
   (:var mv25175 :isa explicit-suggestion :suggestion mv25169 :marker let-as-directive)
   (:var mv25169 :isa move-to :goal mv25173 :theme mv25167 :present "PRESENT")
   (:var mv25173 :isa top-qua-location :has-determiner "THE")
   (:var mv25167 :isa protein :predication mv25170 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv25170 :isa phosphorylate :substrate mv25167 :raw-text "phosphorylated"))
  ("Let's move phosphorylated AKT1 on top"
   (:var mv25184 :isa explicit-suggestion :suggestion mv25179 :marker let-as-directive)
   (:var mv25179 :isa move-to :|at-relative-location-OR-goal| mv25182 :theme mv25177 :present
    "PRESENT")
   (:var mv25182 :isa top-qua-location)
   (:var mv25177 :isa protein :predication mv25180 :raw-text "AKT1" :uid "UP:P31749" :name
    "AKT1_HUMAN")
   (:var mv25180 :isa phosphorylate :substrate mv25177 :raw-text "phosphorylated"))
  ("show AKT1 on top"
   (:var mv25186 :isa show :at-relative-location mv25188 :|statement-OR-theme| mv25185 :present
    "PRESENT")
   (:var mv25188 :isa top-qua-location)
   (:var mv25185 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's highlight upstream of AKT1"
   (:var mv25197 :isa explicit-suggestion :suggestion mv25192 :marker let-as-directive)
   (:var mv25192 :isa highlight :theme mv25193 :present "PRESENT")
   (:var mv25193 :isa upstream-segment :pathwaycomponent mv25191 :raw-text "upstream")
   (:var mv25191 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Let's move nucleus elements to the top"
   (:var mv25209 :isa explicit-suggestion :suggestion mv25200 :marker let-as-directive)
   (:var mv25200 :isa move-to :goal mv25206 :theme mv25207 :present "PRESENT")
   (:var mv25206 :isa top-qua-location :has-determiner "THE")
   (:var mv25207 :isa element :plural t :modifier mv25201)
   (:var mv25201 :isa nucleus :raw-text "nucleus"))
  ("What are the common downstreams of AKT1 and  BRAF?"
   (:var mv25212 :isa be :subject mv25211 :predicate mv25224 :present "PRESENT")
   (:var mv25211 :isa what)
   (:var mv25224 :isa downstream-segment :plural t :pathwaycomponent mv25220 :has-determiner "THE"
    :predication mv25214 :raw-text "downstreams")
   (:var mv25220 :isa collection :raw-text "AKT1 and  BRAF" :type protein :number 2 :items
    (mv25210 mv25219))
   (:var mv25210 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25219 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25214 :isa common))
  ("Are there common upstreams of AKT1, BRAF and MAPK1?"
   (:var mv25241 :isa polar-question :statement mv25236)
   (:var mv25236 :isa there-exists :value mv25240 :predicate mv25228)
   (:var mv25240 :isa upstream-segment :plural t :pathwaycomponent mv25237 :predication mv25230
    :raw-text "upstreams")
   (:var mv25237 :isa collection :raw-text "AKT1, BRAF and MAPK1" :type protein :number 3 :items
    (mv25225 mv25234 mv25226))
   (:var mv25225 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25234 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25226 :isa protein :raw-text "MAPK1" :uid "UP:P28482" :name "MK01_HUMAN")
   (:var mv25230 :isa common) (:var mv25228 :isa syntactic-there))
  ("What are the common upstream regulators of FN1, MMP3, and SERPINE1?"
   (:var mv25246 :isa be :subject mv25245 :predicate mv25260 :present "PRESENT")
   (:var mv25245 :isa what)
   (:var mv25260 :isa regulator :plural t :theme mv25255 :has-determiner "THE" :predication mv25248
    :context mv25249 :raw-text "regulators")
   (:var mv25255 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25242 mv25243 mv25244))
   (:var mv25242 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25243 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25244 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25248 :isa common) (:var mv25249 :isa upstream-segment :raw-text "upstream"))
  ("What are common downstream regulators of MMP3 and SERPINE1?"
   (:var mv25264 :isa be :subject mv25263 :predicate mv25276 :present "PRESENT")
   (:var mv25263 :isa what)
   (:var mv25276 :isa regulator :plural t :theme mv25272 :predication mv25265 :context mv25266
    :raw-text "regulators")
   (:var mv25272 :isa collection :raw-text "MMP3 and SERPINE1" :type protein :number 2 :items
    (mv25261 mv25262))
   (:var mv25261 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25262 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25265 :isa common) (:var mv25266 :isa downstream-segment :raw-text "downstream"))
  ("What are common upstream transcriptional regulators of FN1, MMP3, and SERPINE1?"
   (:var mv25283 :isa be :subject mv25282 :predicate mv25293 :present "PRESENT")
   (:var mv25282 :isa what)
   (:var mv25293 :isa protein-family :plural t :molecule-type mv25289 :predication mv25284 :context
    mv25285 :raw-text "transcriptional regulators" :uid "XFAM:PF02082" :name
    "transcriptional regulator")
   (:var mv25289 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25279 mv25280 mv25281))
   (:var mv25279 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25280 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25281 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25284 :isa common) (:var mv25285 :isa upstream-segment :raw-text "upstream"))
  ("What are the mutations of PTEN, TP53 and BRAF in ovarian cancer?"
   (:var mv25297 :isa be :subject mv25296 :predicate mv25311 :present "PRESENT")
   (:var mv25296 :isa what)
   (:var mv25311 :isa mutation :plural t :context mv25295 :object mv25306 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv25295 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25306 :isa collection :raw-text "PTEN, TP53 and BRAF" :type protein :number 3 :items
    (mv25302 mv25294 mv25304))
   (:var mv25302 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25294 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25304 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the mutation frequency of TP53 in ovarian cancer?"
   (:var mv25315 :isa be :subject mv25314 :predicate mv25318 :present "PRESENT")
   (:var mv25314 :isa what)
   (:var mv25318 :isa frequency :context mv25313 :measured-item mv25312 :has-determiner "THE"
    :measured-item mv25317 :raw-text "frequency")
   (:var mv25313 :isa cancer :name "ovarian cancer" :uid "TS-1223")
   (:var mv25312 :isa protein :raw-text "TP53" :uid "UP:P04637" :name "P53_HUMAN")
   (:var mv25317 :isa mutation :raw-text "mutation"))
  ("Which genes are mutually exclusive with CDH1 for breast cancer?"
   (:var mv25335 :isa copular-predication :item mv25332 :value mv25323 :predicate mv25329)
   (:var mv25332 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25323 :isa mutual-exclusivity :disease mv25325 :alternative mv25324)
   (:var mv25325 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25324 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25329 :isa be :present "PRESENT"))
  ("Which genes are mutually exclusive with CDH1 in breast cancer?"
   (:var mv25348 :isa copular-predication :item mv25345 :value mv25336 :predicate mv25342)
   (:var mv25345 :isa gene :plural t :has-determiner "WHICH" :raw-text "genes")
   (:var mv25336 :isa mutual-exclusivity :disease mv25338 :alternative mv25337)
   (:var mv25338 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv25337 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv25342 :isa be :present "PRESENT"))
  ("What is the cellular location of akt1?"
   (:var mv25351 :isa be :subject mv25350 :predicate mv25357 :present "PRESENT")
   (:var mv25350 :isa what) (:var mv25357 :isa quality-predicate :item mv25349 :attribute mv25354)
   (:var mv25349 :isa protein :raw-text "akt1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25354 :isa location-of :has-determiner "THE" :modifier mv25353)
   (:var mv25353 :isa cellular :name "cellular"))
  ("How does MAPK regulate BRAF?"
   (:var mv25361 :isa regulate :manner mv25358 :agent mv25360 :object mv25362 :present "PRESENT"
    :raw-text "regulate")
   (:var mv25358 :isa how)
   (:var mv25360 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25362 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is BRAF?" (:var mv25364 :isa be :subject mv25363 :predicate mv25365 :present "PRESENT")
   (:var mv25363 :isa what)
   (:var mv25365 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Is BRAF a member of the RAF family?" (:var mv25377 :isa polar-question :statement mv25366)
   (:var mv25366 :isa be :subject mv25367 :predicate mv25369)
   (:var mv25367 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25369 :isa member :set mv25375 :has-determiner "A")
   (:var mv25375 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114"))
  ("What genes are in RAS?"
   (:var mv25389 :isa copular-predication-of-pp :item mv25384 :value mv25388 :prep "IN" :predicate
    mv25381)
   (:var mv25384 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25388 :isa gene :plural t :in-family mv25383 :has-determiner "WHAT" :raw-text "genes")
   (:var mv25383 :isa protein-family :raw-text "RAS" :name "Ras" :count 3 :family-members
    ((protein (:name "RASN_HUMAN") (:uid "UP:P01111"))
     (protein (:name "RASK_HUMAN") (:uid "UP:P01116"))
     (protein (:name "RASH_HUMAN") (:uid "UP:P01112")))
    :uid "FA:03663")
   (:var mv25381 :isa be :present "PRESENT"))
  ("What genes are in the RAF family?"
   (:var mv25406 :isa copular-predication-of-pp :item mv25400 :value mv25405 :prep "IN" :predicate
    mv25394)
   (:var mv25400 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25405 :isa gene :plural t :in-family mv25401 :has-determiner "WHAT" :raw-text "genes")
   (:var mv25401 :isa protein-family :has-determiner "THE" :raw-text "RAF" :name "Raf" :count 3
    :family-members
    ((protein (:name "RAF1_HUMAN") (:uid "UP:P04049"))
     (protein (:name "BRAF_HUMAN") (:uid "UP:P15056"))
     (protein (:name "ARAF_HUMAN") (:uid "UP:P10398")))
    :uid "FA:03114")
   (:var mv25394 :isa be :present "PRESENT"))
  ("What are some other names for BRAF?"
   (:var mv25409 :isa be :subject mv25408 :predicate mv25422 :present "PRESENT")
   (:var mv25408 :isa what)
   (:var mv25422 :isa has-name :plural t :item mv25418 :quantifier mv25410 :modifier mv25411)
   (:var mv25418 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25410 :isa some :word "some") (:var mv25411 :isa other :name "other"))
  ("What are synonyms for ERK?"
   (:var mv25424 :isa be :subject mv25423 :predicate mv25430 :present "PRESENT")
   (:var mv25423 :isa what) (:var mv25430 :isa has-synonym :plural t :item mv25428)
   (:var mv25428 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What transcription factors are shared by CXCL8, CXCL10, and IL2?"
   (:var mv25443 :isa share :object mv25442 :participant mv25441 :present "PRESENT" :raw-text
    "shared")
   (:var mv25442 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv25441 :isa collection :raw-text "CXCL8, CXCL10, and IL2" :type protein :number 3 :items
    (mv25433 mv25434 mv25435))
   (:var mv25433 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25434 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN")
   (:var mv25435 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What are the paths between BRAF and AKT1?"
   (:var mv25447 :isa be :subject mv25446 :predicate mv25457 :present "PRESENT")
   (:var mv25446 :isa what)
   (:var mv25457 :isa path :plural t :endpoints mv25454 :has-determiner "THE")
   (:var mv25454 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25452 mv25445))
   (:var mv25452 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25445 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("Is SMAD2 a transcription factor?" (:var mv25462 :isa polar-question :statement mv25460)
   (:var mv25460 :isa be :subject mv25458 :predicate mv25459)
   (:var mv25458 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25459 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Remove the fact that active MEK activates ERK from the model."
   (:var mv25463 :isa remove :object mv25475 :present "PRESENT" :raw-text "Remove")
   (:var mv25475 :isa fact :statement mv25469 :has-determiner "THE")
   (:var mv25469 :isa bio-activate :agent mv25468 :object mv25470 :present "PRESENT" :raw-text
    "activates")
   (:var mv25468 :isa protein-family :predication mv25467 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25467 :isa active)
   (:var mv25470 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Active MEK activates ERK"
   (:var mv25478 :isa bio-activate :agent mv25477 :object mv25479 :present "PRESENT" :raw-text
    "activates")
   (:var mv25477 :isa protein-family :predication mv25476 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25476 :isa active)
   (:var mv25479 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What is in the model?"
   (:var mv25486 :isa copular-predication-of-pp :item mv25480 :value mv25484 :prep mv25482
    :predicate mv25481)
   (:var mv25480 :isa what) (:var mv25484 :isa model :has-determiner "THE")
   (:var mv25482 :isa in :word "in") (:var mv25481 :isa be :present "PRESENT"))
  ("Is the amount of phosphorylated ERK ever high?"
   (:var mv25497 :isa polar-question :statement mv25496)
   (:var mv25496 :isa copular-predication :item mv25489 :value mv25494 :predicate mv25487)
   (:var mv25489 :isa bio-amount :measured-item mv25492 :has-determiner "THE" :raw-text "amount")
   (:var mv25492 :isa protein-family :predication mv25491 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25491 :isa phosphorylate :substrate mv25492 :raw-text "phosphorylated")
   (:var mv25494 :isa high :adverb mv25493) (:var mv25493 :isa ever :name "ever")
   (:var mv25487 :isa be))
  ("What genes are mutually exclusive with PTEN for prostate cancer?"
   (:var mv25510 :isa copular-predication :item mv25507 :value mv25498 :predicate mv25503)
   (:var mv25507 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25498 :isa mutual-exclusivity :disease mv25499 :alternative mv25505)
   (:var mv25499 :isa cancer :name "prostate cancer" :uid "TS-1224")
   (:var mv25505 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25503 :isa be :present "PRESENT"))
  ("What signaling pathways are shared by SMAD2 and CXCL8?"
   (:var mv25522 :isa share :object mv25521 :participant mv25520 :present "PRESENT" :raw-text
    "shared")
   (:var mv25521 :isa signaling-pathway :plural t :has-determiner "WHAT" :raw-text
    "signaling pathways")
   (:var mv25520 :isa collection :raw-text "SMAD2 and CXCL8" :type protein :number 2 :items
    (mv25513 mv25514))
   (:var mv25513 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN")
   (:var mv25514 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("What miRNAs most frequently regulate FN1, MMP3, and SERPINE1?"
   (:var mv25532 :isa regulate :agent mv25535 :object mv25534 :present "PRESENT" :adverb mv25530
    :adverb mv25531 :raw-text "regulate")
   (:var mv25535 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "miRNAs")
   (:var mv25534 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25524 mv25525 mv25526))
   (:var mv25524 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25525 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25526 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN")
   (:var mv25530 :isa superlative-quantifier :name "most")
   (:var mv25531 :isa frequently :name "frequently"))
  ("What is the most likely cellular location of PTEN?"
   (:var mv25537 :isa be :subject mv25536 :predicate mv25547 :present "PRESENT")
   (:var mv25536 :isa what) (:var mv25547 :isa quality-predicate :item mv25545 :attribute mv25543)
   (:var mv25545 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN")
   (:var mv25543 :isa location-of :has-determiner "THE" :predication mv25541 :modifier mv25542)
   (:var mv25541 :isa likely :comparative mv25539)
   (:var mv25539 :isa superlative-quantifier :name "most")
   (:var mv25542 :isa cellular :name "cellular"))
  ("Is BRAF a kinase?" (:var mv25552 :isa polar-question :statement mv25548)
   (:var mv25548 :isa be :subject mv25549 :predicate mv25551)
   (:var mv25549 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25551 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("Can you tell me whether BRAF is a kinase?"
   (:var mv25564 :isa polar-question :statement mv25555)
   (:var mv25555 :isa tell :agent mv25554 :theme mv25563 :theme mv25556 :modal "CAN")
   (:var mv25554 :isa interlocutor :name "hearer")
   (:var mv25563 :isa wh-question :statement mv25560 :wh whether)
   (:var mv25560 :isa be :subject mv25559 :predicate mv25562 :modal "CAN")
   (:var mv25559 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25562 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25556 :isa interlocutor :name "speaker"))
  ("I want to know if BRAF is a kinase."
   (:var mv25568 :isa want :agent mv25565 :theme mv25578 :present "PRESENT")
   (:var mv25565 :isa interlocutor :name "speaker")
   (:var mv25578 :isa know :agent mv25565 :statement mv25577)
   (:var mv25577 :isa wh-question :statement mv25573 :wh if)
   (:var mv25573 :isa be :subject mv25572 :predicate mv25575 :present "PRESENT")
   (:var mv25572 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25575 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What does BRAF do?" (:var mv25579 :isa what))
  ("What type of protein is BRAF?"
   (:var mv25587 :isa be :subject mv25584 :predicate mv25588 :present "PRESENT")
   (:var mv25584 :isa type :molecule-type mv25586 :has-determiner "WHAT" :raw-text "type")
   (:var mv25586 :isa protein :raw-text "protein")
   (:var mv25588 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What is the activity of the BRAF protein?"
   (:var mv25591 :isa be :subject mv25590 :predicate mv25593 :present "PRESENT")
   (:var mv25590 :isa what)
   (:var mv25593 :isa bio-activity :participant mv25598 :has-determiner "THE" :raw-text "activity")
   (:var mv25598 :isa protein :has-determiner "THE" :raw-text "BRAF" :uid "UP:P15056" :name
    "BRAF_HUMAN"))
  ("Is BRAF a kinase or a transcription factor?"
   (:var mv25608 :isa polar-question :statement mv25601)
   (:var mv25601 :isa be :subject mv25602 :predicate mv25607)
   (:var mv25602 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25607 :isa collection :raw-text "a kinase or a transcription factor" :type kinase
    :number 2 :items (mv25604 mv25600))
   (:var mv25604 :isa kinase :has-determiner "A" :raw-text "kinase")
   (:var mv25600 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("What proteins are targeted by NG25?"
   (:var mv25617 :isa target :object mv25616 :agent mv25609 :present "PRESENT" :raw-text
    "targeted")
   (:var mv25616 :isa protein :plural t :has-determiner "WHAT" :raw-text "proteins")
   (:var mv25609 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("Name transcription factors shared by FN1, MMP3, and SERPINE1."
   (:var mv25624 :isa name-something :patient mv25620 :present "PRESENT")
   (:var mv25620 :isa transcription-factor :plural t :predication mv25627 :raw-text
    "transcription factors")
   (:var mv25627 :isa share :object mv25620 :participant mv25630 :past "PAST" :raw-text "shared")
   (:var mv25630 :isa collection :raw-text "FN1, MMP3, and SERPINE1" :type protein :number 3 :items
    (mv25621 mv25622 mv25623))
   (:var mv25621 :isa protein :raw-text "FN1" :uid "UP:P02751" :name "FINC_HUMAN")
   (:var mv25622 :isa protein :raw-text "MMP3" :uid "UP:P08254" :name "MMP3_HUMAN")
   (:var mv25623 :isa protein :raw-text "SERPINE1" :uid "UP:P05121" :name "PAI1_HUMAN"))
  ("Tell me if STAT3 is a transcription factor"
   (:var mv25635 :isa tell :theme mv25640 :beneficiary mv25636 :present "PRESENT")
   (:var mv25640 :isa wh-question :statement mv25638 :wh if)
   (:var mv25638 :isa be :subject mv25633 :predicate mv25634 :present "PRESENT")
   (:var mv25633 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25634 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor")
   (:var mv25636 :isa interlocutor :name "speaker"))
  ("Show me signaling pathways shared by MAP3K7 and CXCL8."
   (:var mv25645 :isa show :|statement-OR-theme| mv25652 :beneficiary mv25646 :present "PRESENT")
   (:var mv25652 :isa signaling-pathway :plural t :predication mv25647 :raw-text
    "signaling pathways")
   (:var mv25647 :isa share :object mv25652 :participant mv25650 :past "PAST" :raw-text "shared")
   (:var mv25650 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25643 mv25644))
   (:var mv25643 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25644 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25646 :isa interlocutor :name "speaker"))
  ("Give me signaling pathways shared by MAP3K7 and CXCL8"
   (:var mv25657 :isa give :theme mv25664 :beneficiary mv25658 :present "PRESENT")
   (:var mv25664 :isa signaling-pathway :plural t :predication mv25659 :raw-text
    "signaling pathways")
   (:var mv25659 :isa share :object mv25664 :participant mv25662 :past "PAST" :raw-text "shared")
   (:var mv25662 :isa collection :raw-text "MAP3K7 and CXCL8" :type protein :number 2 :items
    (mv25655 mv25656))
   (:var mv25655 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv25656 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25658 :isa interlocutor :name "speaker"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK by ten fold?"
   (:var mv25694 :isa polar-question :statement mv25693)
   (:var mv25693 :isa event-relation :subordinated-event mv25689 :event mv25691)
   (:var mv25689 :isa wh-question :statement mv25676 :wh if)
   (:var mv25676 :isa increase :|agent-OR-cause| mv25674 :|multiplier-OR-cause| mv25686
    :|affected-process-OR-object| mv25678 :present "PRESENT" :raw-text "increase")
   (:var mv25674 :isa interlocutor :name "person-and-machine")
   (:var mv25686 :isa measurement :number mv25683) (:var mv25683 :isa number :value 10)
   (:var mv25678 :isa bio-amount :measured-item mv25680 :has-determiner "THE" :raw-text "amount")
   (:var mv25680 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25691 :isa copular-predication :item mv25667 :value mv25672 :predicate mv25665)
   (:var mv25667 :isa bio-amount :measured-item mv25670 :has-determiner "THE" :raw-text "amount")
   (:var mv25670 :isa protein-family :predication mv25669 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25669 :isa phosphorylate :substrate mv25670 :raw-text "phosphorylated")
   (:var mv25672 :isa high :adverb mv25671) (:var mv25671 :isa ever :name "ever")
   (:var mv25665 :isa be))
  ("Active MEK phosphorylates ERK"
   (:var mv25697 :isa phosphorylate :agent mv25696 :substrate mv25698 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25696 :isa protein-family :predication mv25695 :raw-text "MEK" :name "MEK" :count 2
    :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25695 :isa active)
   (:var mv25698 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("Is the amount of phosphorylated ERK ever high if we increase the amount of MEK ten fold?"
   (:var mv25726 :isa polar-question :statement mv25725)
   (:var mv25725 :isa event-relation :subordinated-event mv25721 :event mv25723)
   (:var mv25721 :isa wh-question :statement mv25710 :wh if)
   (:var mv25710 :isa increase :|agent-OR-cause| mv25708 :level mv25719
    :|affected-process-OR-object| mv25712 :present "PRESENT" :raw-text "increase")
   (:var mv25708 :isa interlocutor :name "person-and-machine")
   (:var mv25719 :isa measurement :number mv25716) (:var mv25716 :isa number :value 10)
   (:var mv25712 :isa bio-amount :measured-item mv25714 :has-determiner "THE" :raw-text "amount")
   (:var mv25714 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv25723 :isa copular-predication :item mv25701 :value mv25706 :predicate mv25699)
   (:var mv25701 :isa bio-amount :measured-item mv25704 :has-determiner "THE" :raw-text "amount")
   (:var mv25704 :isa protein-family :predication mv25703 :raw-text "ERK" :name "ERK" :count 7
    :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360")
   (:var mv25703 :isa phosphorylate :substrate mv25704 :raw-text "phosphorylated")
   (:var mv25706 :isa high :adverb mv25705) (:var mv25705 :isa ever :name "ever")
   (:var mv25699 :isa be))
  ("What are some pathways that affect BRAF?"
   (:var mv25728 :isa be :subject mv25727 :predicate mv25736 :present "PRESENT")
   (:var mv25727 :isa what)
   (:var mv25736 :isa pathway :plural t :predication mv25733 :quantifier mv25729 :raw-text
    "pathways")
   (:var mv25733 :isa affect :agent mv25736 :that-rel t :object mv25734 :present "PRESENT"
    :raw-text "affect")
   (:var mv25734 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25729 :isa some :word "some"))
  ("What are the pathways that affect BRAF"
   (:var mv25738 :isa be :subject mv25737 :predicate mv25746 :present "PRESENT")
   (:var mv25737 :isa what)
   (:var mv25746 :isa pathway :plural t :predication mv25743 :has-determiner "THE" :raw-text
    "pathways")
   (:var mv25743 :isa affect :agent mv25746 :that-rel t :object mv25744 :present "PRESENT"
    :raw-text "affect")
   (:var mv25744 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What genes are regulated by miR-20b-5p, and miR-145-5p?"
   (:var mv25758 :isa regulate :object mv25757 :agent mv25756 :present "PRESENT" :raw-text
    "regulated")
   (:var mv25757 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv25756 :isa collection :raw-text "miR-20b-5p, and miR-145-5p" :type micro-rna :number 2
    :items (mv25747 mv25748))
   (:var mv25747 :isa micro-rna :raw-text "miR-20b-5p" :name "microRNA 20b-5pm" :uid
    "MIMAT0001413")
   (:var mv25748 :isa micro-rna :raw-text "miR-145-5p" :name "microRNA 145-5p" :uid
    "MIMAT0000437"))
  ("What are some genes that are regulated by ELK1?"
   (:var mv25762 :isa be :subject mv25761 :predicate mv25773 :present "PRESENT")
   (:var mv25761 :isa what)
   (:var mv25773 :isa gene :plural t :predication mv25771 :quantifier mv25763 :raw-text "genes")
   (:var mv25771 :isa regulate :object mv25773 :that-rel t :agent mv25760 :present "PRESENT"
    :raw-text "regulated")
   (:var mv25760 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv25763 :isa some :word "some"))
  ("What pathways contain CXCL8 and CXCL10?"
   (:var mv25779 :isa contain :theme mv25782 :patient mv25781 :present "PRESENT")
   (:var mv25782 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv25781 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv25774 mv25775))
   (:var mv25774 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv25775 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Remove the fact that IL10 activates STAT3 in the model"
   (:var mv25785 :isa remove :object mv25794 :present "PRESENT" :raw-text "Remove")
   (:var mv25794 :isa fact :statement mv25789 :has-determiner "THE")
   (:var mv25789 :isa bio-activate :agent mv25783 :object mv25784 :present "PRESENT" :raw-text
    "activates")
   (:var mv25783 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25784 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove active IL10 activates STAT3 from the model"
   (:var mv25797 :isa remove :object mv25795 :present "PRESENT" :raw-text "Remove")
   (:var mv25795 :isa protein :predication mv25798 :raw-text "IL10" :uid "UP:P22301" :name
    "IL10_HUMAN")
   (:var mv25798 :isa active))
  ("What are some paths between BRAF and AKT1?"
   (:var mv25806 :isa be :subject mv25805 :predicate mv25816 :present "PRESENT")
   (:var mv25805 :isa what)
   (:var mv25816 :isa path :plural t :endpoints mv25813 :quantifier mv25807)
   (:var mv25813 :isa collection :raw-text "BRAF and AKT1" :type protein :number 2 :items
    (mv25811 mv25804))
   (:var mv25811 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25804 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN")
   (:var mv25807 :isa some :word "some"))
  ("Does MEK1 activate ERK2" (:var mv25822 :isa polar-question :statement mv25821)
   (:var mv25821 :isa bio-activate :agent mv25817 :object mv25818 :raw-text "activate")
   (:var mv25817 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25818 :isa protein :raw-text "ERK2" :uid "UP:P28482" :name "MK01_HUMAN"))
  ("What drugs tagret BRAF?"
   (:var mv25826 :isa protein :has-determiner "WHAT" :modifier mv25825 :modifier mv25827 :raw-text
    "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN")
   (:var mv25825 :isa drug :plural t :raw-text "drugs")
   (:var mv25827 :isa bio-entity :name "tagret"))
  ("Which kinases are in the MAPK signalling pathway?"
   (:var mv25841 :isa copular-predication-of-pp :item mv25836 :value mv25840 :prep "IN" :predicate
    mv25832)
   (:var mv25836 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv25840 :isa kinase :plural t :in-pathway mv25828 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv25828 :isa signaling-pathway :has-determiner "THE" :modifier mv25835 :raw-text
    "signalling pathway")
   (:var mv25835 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv25832 :isa be :present "PRESENT"))
  ("What drugs drugs target BRAF?"
   (:var mv25849 :isa target :agent mv25853 :object mv25850 :present "PRESENT" :raw-text "target")
   (:var mv25853 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25850 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("What rgulates ELLK1?"
   (:var mv25857 :isa bio-entity :has-determiner "WHAT" :modifier mv25858 :name "ELLK1")
   (:var mv25858 :isa bio-entity :name "rgulates"))
  ("Does STAT3 increase expression of c-fos in liver?"
   (:var mv25871 :isa polar-question :statement mv25868)
   (:var mv25868 :isa increase :agent mv25859 :affected-process mv25864 :raw-text "increase")
   (:var mv25859 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25864 :isa gene-transcript-express :object mv25860 :raw-text "expression")
   (:var mv25860 :isa protein :organ mv25867 :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN")
   (:var mv25867 :isa liver))
  ("Does STAT3 affect c-fos expression in liver?"
   (:var mv25881 :isa polar-question :statement mv25879)
   (:var mv25879 :isa affect :agent mv25872 :affected-process mv25876 :raw-text "affect")
   (:var mv25872 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25876 :isa gene-transcript-express :organ mv25878 :object mv25873 :raw-text
    "expression")
   (:var mv25878 :isa liver)
   (:var mv25873 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Does STAT3 alter c-fos expression?" (:var mv25888 :isa polar-question :statement mv25887)
   (:var mv25887 :isa alter :agent mv25882 :affected-process mv25886 :raw-text "alter")
   (:var mv25882 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25886 :isa gene-transcript-express :object mv25883 :raw-text "expression")
   (:var mv25883 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Is STAT3 a transcriptional regulator of c-fos?"
   (:var mv25896 :isa polar-question :statement mv25892)
   (:var mv25892 :isa be :subject mv25889 :predicate mv25890)
   (:var mv25889 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25890 :isa protein-family :molecule-type mv25891 :has-determiner "A" :raw-text
    "transcriptional regulator" :name "transcriptional regulator" :uid "XFAM:PF02082")
   (:var mv25891 :isa protein :raw-text "c-fos" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Which drugs inhibit BRAF?"
   (:var mv25900 :isa inhibit :agent mv25902 :object mv25901 :present "PRESENT" :raw-text
    "inhibit")
   (:var mv25902 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv25901 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("STAT3 upregulates ELK1."
   (:var mv25905 :isa upregulate :agent mv25903 :object mv25904 :present "PRESENT" :raw-text
    "upregulates")
   (:var mv25903 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv25904 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("What does STAT3 transcribe?"
   (:var mv25909 :isa transcribe :object mv25907 :agent mv25906 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv25907 :isa what)
   (:var mv25906 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What is PI3K?" (:var mv25912 :isa be :subject mv25911 :predicate mv25910 :present "PRESENT")
   (:var mv25911 :isa what)
   (:var mv25910 :isa protein-family :raw-text "PI3K" :name "PI3-kinase" :count 4 :family-members
    ((protein (:name "PI3R5_HUMAN") (:uid "UP:Q8WYR1"))
     (protein (:name "PK3C3_HUMAN") (:uid "UP:Q8NEB9"))
     (protein (:name "PK3CA_HUMAN") (:uid "UP:P42336"))
     (protein (:name "P3C2G_HUMAN") (:uid "UP:O75747")))
    :uid "XFAM:PF00454"))
  ("What is MEK?" (:var mv25914 :isa be :subject mv25913 :predicate mv25915 :present "PRESENT")
   (:var mv25913 :isa what)
   (:var mv25915 :isa protein-family :raw-text "MEK" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK"))
  ("What phosphorylates ERK?"
   (:var mv25917 :isa phosphorylate :|agent-OR-cause| mv25916 :substrate mv25918 :present "PRESENT"
    :raw-text "phosphorylates")
   (:var mv25916 :isa what)
   (:var mv25918 :isa protein-family :raw-text "ERK" :name "ERK" :count 7 :family-members
    ((protein (:name "MK15_HUMAN") (:uid "UP:Q8TD08"))
     (protein (:name "MK06_HUMAN") (:uid "UP:Q16659"))
     (protein (:name "MK07_HUMAN") (:uid "UP:Q13164"))
     (protein (:name "MK12_HUMAN") (:uid "UP:P53778"))
     (protein (:name "MK04_HUMAN") (:uid "UP:P31152"))
     (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))
     (protein (:name "MK03_HUMAN") (:uid "UP:P27361")))
    :uid "NCIT:C26360"))
  ("What drugs target AKT?"
   (:var mv25923 :isa target :agent mv25925 :object mv25924 :present "PRESENT" :raw-text "target")
   (:var mv25925 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv25924 :isa protein-family :raw-text "AKT" :name "Rac" :count 3 :family-members
    ((protein (:name "AKT3_HUMAN") (:uid "UP:Q9Y243"))
     (protein (:name "AKT2_HUMAN") (:uid "UP:P31751"))
     (protein (:name "AKT1_HUMAN") (:uid "UP:P31749")))
    :uid "FA:03066"))
  ("What regulates ELLK1?"
   (:var mv25928 :isa regulate :|agent-OR-cause| mv25927 :object mv25926 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25927 :isa what) (:var mv25926 :isa bio-entity :name "ELLK1"))
  ("What regulates ELK1?"
   (:var mv25931 :isa regulate :|agent-OR-cause| mv25930 :object mv25929 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25930 :isa what)
   (:var mv25929 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN"))
  ("Does miR-20b-5pp target STAT3?" (:var mv25942 :isa polar-question :statement mv25941)
   (:var mv25941 :isa target :agent mv25940 :object mv25933 :raw-text "target")
   (:var mv25940 :isa bio-entity :name "miR-20b-5pp")
   (:var mv25933 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What are the mutations of PTEEN in prostate cancer?"
   (:var mv25945 :isa be :subject mv25944 :predicate mv25952 :present "PRESENT")
   (:var mv25944 :isa what)
   (:var mv25952 :isa mutation :plural t :has-determiner "THE" :raw-text "mutations"))
  ("What does selumitinibib target?"
   (:var mv25958 :isa target :|affected-process-OR-object| mv25955 :agent mv25959 :present
    "PRESENT" :raw-text "target")
   (:var mv25955 :isa what) (:var mv25959 :isa bio-entity :name "selumitinibib"))
  ("Is ELLK1 a kinase?" (:var mv25964 :isa polar-question :statement mv25961)
   (:var mv25961 :isa be :subject mv25960 :predicate mv25963)
   (:var mv25960 :isa bio-entity :name "ELLK1")
   (:var mv25963 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What regulates ELK12?"
   (:var mv25966 :isa regulate :|agent-OR-cause| mv25965 :object mv25967 :present "PRESENT"
    :raw-text "regulates")
   (:var mv25965 :isa what)
   (:var mv25967 :isa protein :variant-number mv25969 :raw-text "ELK" :uid "UP:P54762" :name
    "EPHB1_HUMAN")
   (:var mv25969 :isa number :value 12))
  ("What does sleumiitibbb target?"
   (:var mv25973 :isa target :|affected-process-OR-object| mv25970 :agent mv25974 :present
    "PRESENT" :raw-text "target")
   (:var mv25970 :isa what) (:var mv25974 :isa bio-entity :name "sleumiitibbb"))
  ("What is the evidence that MEK1 phosphorylates ERK1?"
   (:var mv25978 :isa be :subject mv25977 :predicate mv25983 :present "PRESENT")
   (:var mv25977 :isa what) (:var mv25983 :isa evidence :statement mv25982 :has-determiner "THE")
   (:var mv25982 :isa phosphorylate :agent mv25975 :substrate mv25976 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv25975 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv25976 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Remove STAT3 from the model."
   (:var mv25985 :isa remove :object mv25984 :present "PRESENT" :raw-text "Remove")
   (:var mv25984 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Remove the last interaction from the model."
   (:var mv25990 :isa remove :object mv25993 :present "PRESENT" :raw-text "Remove")
   (:var mv25993 :isa interact :has-determiner "THE" :predication mv25992 :raw-text "interaction")
   (:var mv25992 :isa last-sequence :name "last"))
  ("IL10 activates STAT3"
   (:var mv26000 :isa bio-activate :agent mv25998 :object mv25999 :present "PRESENT" :raw-text
    "activates")
   (:var mv25998 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv25999 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How many interactions are in the model?"
   (:var mv26010 :isa copular-predication-of-pp :item mv26008 :value mv26007 :prep mv26005
    :predicate mv26004)
   (:var mv26008 :isa interact :plural t :quantifier how-many :raw-text "interactions")
   (:var mv26007 :isa model :has-determiner "THE") (:var mv26005 :isa in :word "in")
   (:var mv26004 :isa be :present "PRESENT"))
  ("Does tofacitinib decrease the amount of phosphorylated MAP2K2?"
   (:var mv26022 :isa polar-question :statement mv26020)
   (:var mv26020 :isa decrease :agent mv26013 :|affected-process-OR-object| mv26017 :raw-text
    "decrease")
   (:var mv26013 :isa drug :raw-text "tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv26017 :isa bio-amount :measured-item mv26011 :has-determiner "THE" :raw-text "amount")
   (:var mv26011 :isa protein :predication mv26019 :raw-text "MAP2K2" :uid "UP:P36507" :name
    "MP2K2_HUMAN")
   (:var mv26019 :isa phosphorylate :substrate mv26011 :raw-text "phosphorylated"))
  ("What kinases does ERK1 activate?"
   (:var mv26028 :isa bio-activate :object mv26029 :agent mv26023 :present "PRESENT" :raw-text
    "activate")
   (:var mv26029 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26023 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What kinases does MEK1 activate?"
   (:var mv26035 :isa bio-activate :object mv26036 :agent mv26030 :present "PRESENT" :raw-text
    "activate")
   (:var mv26036 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26030 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN"))
  ("What does ERK1 activate?"
   (:var mv26040 :isa bio-activate :|affected-process-OR-object| mv26038 :agent mv26037 :present
    "PRESENT" :raw-text "activate")
   (:var mv26038 :isa what)
   (:var mv26037 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What does JAK1 phosphorylate?"
   (:var mv26044 :isa phosphorylate :|substrate-OR-site-OR-amino-acid| mv26042 :agent mv26041
    :present "PRESENT" :raw-text "phosphorylate")
   (:var mv26042 :isa what)
   (:var mv26041 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN"))
  ("What kinases does STAT3 regulate?"
   (:var mv26050 :isa regulate :object mv26051 :agent mv26045 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26051 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26045 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve SRF and what does SRF bind?"
   (:var mv26063 :isa collection :type involve :number 2 :items (mv26055 mv26061))
   (:var mv26055 :isa involve :theme mv26062 :object mv26056 :present "PRESENT")
   (:var mv26062 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26056 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26061 :isa binding :direct-bindee mv26058 :binder mv26060 :present "PRESENT" :raw-text
    "bind")
   (:var mv26058 :isa what)
   (:var mv26060 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF?"
   (:var mv26067 :isa involve :theme mv26069 :object mv26068 :present "PRESENT")
   (:var mv26069 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26068 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What does SRF bind?"
   (:var mv26073 :isa binding :direct-bindee mv26070 :binder mv26072 :present "PRESENT" :raw-text
    "bind")
   (:var mv26070 :isa what)
   (:var mv26072 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("What pathways involve SRF and is SRF a kinase?"
   (:var mv26085 :isa collection :type involve :number 2 :items (mv26077 mv26080))
   (:var mv26077 :isa involve :theme mv26084 :object mv26078 :present "PRESENT")
   (:var mv26084 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26078 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN")
   (:var mv26080 :isa be :subject mv26084 :predicate mv26081 :present "PRESENT")
   (:var mv26081 :isa protein :raw-text "SRF" :uid "UP:P11831" :name "SRF_HUMAN"))
  ("Does MAP2K1 phosphorylate and activate MAPK1?"
   (:var mv26096 :isa polar-question :statement mv26095)
   (:var mv26095 :isa collection :type phosphorylate :items
    (((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:substrate (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "phosphorylate"))
     ((:agent (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
      (:object (protein (:name "MK01_HUMAN") (:uid "UP:P28482"))) (:raw-text "activate")))
    :number 2))
  ("Does MAP2K1 phosphorylate MAPK3?" (:var mv26102 :isa polar-question :statement mv26101)
   (:var mv26101 :isa phosphorylate :agent mv26097 :substrate mv26098 :raw-text "phosphorylate")
   (:var mv26097 :isa protein :raw-text "MAP2K1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26098 :isa protein :raw-text "MAPK3" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which kinases activate MEK2?"
   (:var mv26107 :isa bio-activate :agent mv26108 :object mv26103 :present "PRESENT" :raw-text
    "activate")
   (:var mv26108 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv26103 :isa protein :raw-text "MEK2" :uid "UP:P36507" :name "MP2K2_HUMAN"))
  ("Which drugs target upstreams of CXCL8 and CXCL10?"
   (:var mv26115 :isa target :agent mv26121 :affected-process mv26123 :present "PRESENT" :raw-text
    "target")
   (:var mv26121 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26123 :isa upstream-segment :plural t :pathwaycomponent mv26120 :raw-text "upstreams")
   (:var mv26120 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26109 mv26110))
   (:var mv26109 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26110 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("Which drugs target CXCL8?"
   (:var mv26129 :isa target :agent mv26130 :object mv26124 :present "PRESENT" :raw-text "target")
   (:var mv26130 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26124 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN"))
  ("Which drugs target Jak3?"
   (:var mv26136 :isa target :agent mv26137 :object mv26131 :present "PRESENT" :raw-text "target")
   (:var mv26137 :isa drug :plural t :has-determiner "WHICH" :raw-text "drugs")
   (:var mv26131 :isa protein :raw-text "Jak3" :uid "UP:P52333" :name "JAK3_HUMAN"))
  ("What drugs target transcription factors shared by CXCL8 and CXCL10?"
   (:var mv26146 :isa target :agent mv26151 :object mv26139 :present "PRESENT" :raw-text "target")
   (:var mv26151 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv26139 :isa transcription-factor :plural t :predication mv26147 :raw-text
    "transcription factors")
   (:var mv26147 :isa share :object mv26139 :participant mv26150 :past "PAST" :raw-text "shared")
   (:var mv26150 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26140 mv26141))
   (:var mv26140 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26141 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What kinases does miR-20a-5p target?"
   (:var mv26160 :isa target :object mv26161 :agent mv26154 :present "PRESENT" :raw-text "target")
   (:var mv26161 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26154 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What transcription factors does miR-20a-5p target?"
   (:var mv26168 :isa target :object mv26169 :agent mv26164 :present "PRESENT" :raw-text "target")
   (:var mv26169 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26164 :isa micro-rna :raw-text "miR-20a-5p" :name "microRNA 20a-5pm" :uid
    "MIMAT0000075"))
  ("What kinases are mutually exclusive with CDH1 for breast cancer?"
   (:var mv26182 :isa copular-predication :item mv26179 :value mv26170 :predicate mv26176)
   (:var mv26179 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26170 :isa mutual-exclusivity :disease mv26172 :alternative mv26171)
   (:var mv26172 :isa cancer :name "breast cancer" :uid "TS-0591")
   (:var mv26171 :isa protein :raw-text "CDH1" :uid "UP:P12830" :name "CADH1_HUMAN")
   (:var mv26176 :isa be :present "PRESENT"))
  ("What drugs target fakeprotein?"
   (:var mv26187 :isa target :agent mv26189 :object mv26188 :present "PRESENT" :raw-text "target")
   (:var mv26189 :isa drug :plural t :has-determiner "WHAT" :raw-text "drugs")
   (:var mv26188 :isa bio-entity :name "fakeprotein"))
  ("Which kinases are in the FAKE signaling pathway?"
   (:var mv26203 :isa copular-predication-of-pp :item mv26198 :value mv26202 :prep "IN" :predicate
    mv26194)
   (:var mv26198 :isa kinase :plural t :has-determiner "WHICH" :raw-text "kinases")
   (:var mv26202 :isa kinase :plural t :in-pathway mv26190 :has-determiner "WHICH" :raw-text
    "kinases")
   (:var mv26190 :isa signaling-pathway :has-determiner "THE" :modifier mv26197 :raw-text
    "signaling pathway")
   (:var mv26197 :isa bio-entity :name "FAKE") (:var mv26194 :isa be :present "PRESENT"))
  ("What are the mutations of PTEN in fictional cancer?"
   (:var mv26206 :isa be :subject mv26205 :predicate mv26219 :present "PRESENT")
   (:var mv26205 :isa what)
   (:var mv26219 :isa mutation :plural t :context mv26214 :object mv26211 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv26214 :isa cancer :predication mv26213) (:var mv26213 :isa fictional)
   (:var mv26211 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("What are the mutations of PTEN in liver cancer?"
   (:var mv26221 :isa be :subject mv26220 :predicate mv26234 :present "PRESENT")
   (:var mv26220 :isa what)
   (:var mv26234 :isa mutation :plural t :context mv26229 :object mv26226 :has-determiner "THE"
    :raw-text "mutations")
   (:var mv26229 :isa cancer :organ mv26228) (:var mv26228 :isa liver)
   (:var mv26226 :isa protein :raw-text "PTEN" :uid "UP:P60484" :name "PTEN_HUMAN"))
  ("Remove the fact that ELk1 transcribes FAKE in the model."
   (:var mv26236 :isa remove :object mv26246 :present "PRESENT" :raw-text "Remove")
   (:var mv26246 :isa fact :statement mv26240 :has-determiner "THE")
   (:var mv26240 :isa transcribe :agent mv26235 :object mv26241 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26235 :isa protein :raw-text "ELk1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26241 :isa bio-entity :name "FAKE"))
  ("ELK1 transcribes FOS"
   (:var mv26248 :isa transcribe :agent mv26247 :object mv26249 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26247 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26249 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("Remove the fact that ELK1 transcribes FOS in the model."
   (:var mv26251 :isa remove :object mv26261 :present "PRESENT" :raw-text "Remove")
   (:var mv26261 :isa fact :statement mv26255 :has-determiner "THE")
   (:var mv26255 :isa transcribe :agent mv26250 :object mv26256 :present "PRESENT" :raw-text
    "transcribes")
   (:var mv26250 :isa protein :raw-text "ELK1" :uid "UP:P19419" :name "ELK1_HUMAN")
   (:var mv26256 :isa protein :raw-text "FOS" :uid "UP:P01100" :name "FOS_HUMAN"))
  ("What transcription factors are shared by CXCL8 and FAKE10?"
   (:var mv26276 :isa share :object mv26275 :participant mv26274 :present "PRESENT" :raw-text
    "shared")
   (:var mv26275 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26274 :isa collection :raw-text "CXCL8 and FAKE10" :type protein :number 2 :items
    (mv26264 mv26273))
   (:var mv26264 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26273 :isa bio-entity :name "FAKE10"))
  ("What transcription factors are shared by CXCL8 and CXCL10?"
   (:var mv26289 :isa share :object mv26288 :participant mv26287 :present "PRESENT" :raw-text
    "shared")
   (:var mv26288 :isa transcription-factor :plural t :has-determiner "WHAT" :raw-text
    "transcription factors")
   (:var mv26287 :isa collection :raw-text "CXCL8 and CXCL10" :type protein :number 2 :items
    (mv26280 mv26281))
   (:var mv26280 :isa protein :raw-text "CXCL8" :uid "UP:P10145" :name "IL8_HUMAN")
   (:var mv26281 :isa protein :raw-text "CXCL10" :uid "UP:P02778" :name "CXL10_HUMAN"))
  ("What databases do you use?" (:var mv26298 :isa database :plural t :has-determiner "WHAT"))
  ("What is the MSA?" (:var mv26300 :isa be :subject mv26299 :predicate mv26302 :present "PRESENT")
   (:var mv26299 :isa what)
   (:var mv26302 :isa protein :has-determiner "THE" :raw-text "MSA" :uid "UP:Q9FIB6" :name
    "PS12A_ARATH"))
  ("What tissues can I ask about?"
   (:var mv26313 :isa ask :patient mv26312 :modal mv26306 :agent mv26307 :present "PRESENT")
   (:var mv26312 :isa tissue :plural t :has-determiner "WHAT") (:var mv26306 :isa can)
   (:var mv26307 :isa interlocutor :name "speaker"))
  ("What cancers can I ask about?"
   (:var mv26324 :isa ask :patient mv26323 :modal mv26317 :agent mv26318 :present "PRESENT")
   (:var mv26323 :isa cancer :plural t :has-determiner "WHAT") (:var mv26317 :isa can)
   (:var mv26318 :isa interlocutor :name "speaker"))
  ("What mechanisms can I ask about?"
   (:var mv26335 :isa ask :patient mv26334 :modal mv26328 :agent mv26329 :present "PRESENT")
   (:var mv26334 :isa bio-mechanism :plural t :has-determiner "WHAT") (:var mv26328 :isa can)
   (:var mv26329 :isa interlocutor :name "speaker"))
  ("What does STAT3 regulate?"
   (:var mv26339 :isa regulate :|affected-process-OR-object| mv26337 :agent mv26336 :present
    "PRESENT" :raw-text "regulate")
   (:var mv26337 :isa what)
   (:var mv26336 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these are kinases?"
   (:var mv26343 :isa be :subject mv26342 :predicate mv26345 :present "PRESENT")
   (:var mv26342 :isa these :quantifier mv26340 :word "these") (:var mv26340 :isa which)
   (:var mv26345 :isa kinase :plural t :raw-text "kinases"))
  ("What pathways is ERK1 in?"
   (:var mv26351 :isa be :subject mv26353 :predicate mv26347 :present "PRESENT")
   (:var mv26353 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26347 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("Which of these is AKT1 in?"
   (:var mv26358 :isa be :subject mv26357 :predicate mv26354 :present "PRESENT")
   (:var mv26357 :isa these :quantifier mv26355 :word "these") (:var mv26355 :isa which)
   (:var mv26354 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What pathways are ERK1 and AKT1 in?"
   (:var mv26366 :isa be :subject mv26370 :predicate mv26369 :present "PRESENT")
   (:var mv26370 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26369 :isa collection :raw-text "ERK1 and AKT1" :type protein :number 2 :items
    (mv26361 mv26362))
   (:var mv26361 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26362 :isa protein :raw-text "AKT1" :uid "UP:P31749" :name "AKT1_HUMAN"))
  ("What microRNAs target STAT3?"
   (:var mv26376 :isa target :agent mv26377 :object mv26371 :present "PRESENT" :raw-text "target")
   (:var mv26377 :isa micro-rna :plural t :has-determiner "WHAT" :raw-text "microRNAs")
   (:var mv26371 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("Which of these target SMAD2?"
   (:var mv26383 :isa target :|agent-OR-cause| mv26381 :object mv26378 :present "PRESENT" :raw-text
    "target")
   (:var mv26381 :isa these :quantifier mv26379 :word "these") (:var mv26379 :isa which)
   (:var mv26378 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Do any of these regulate IL2?" (:var mv26393 :isa polar-question :statement mv26391)
   (:var mv26391 :isa regulate :|agent-OR-cause| mv26389 :object mv26385 :raw-text "regulate")
   (:var mv26389 :isa these :quantifier mv26387 :word "these") (:var mv26387 :isa any :word "any")
   (:var mv26385 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What regulates STAT3?"
   (:var mv26396 :isa regulate :|agent-OR-cause| mv26395 :object mv26394 :present "PRESENT"
    :raw-text "regulates")
   (:var mv26395 :isa what)
   (:var mv26394 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways involve these?"
   (:var mv26400 :isa involve :theme mv26402 :object mv26401 :present "PRESENT")
   (:var mv26402 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26401 :isa these :word "these"))
  ("What are the targets of NG25?"
   (:var mv26405 :isa be :subject mv26404 :predicate mv26413 :present "PRESENT")
   (:var mv26404 :isa what)
   (:var mv26413 :isa target-protein :plural t :treatment mv26403 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26403 :isa drug :raw-text "NG25" :name "NG-25" :uid "PCID:53340664"))
  ("What is their most likely cellular location?"
   (:var mv26415 :isa be :subject mv26414 :predicate mv26421 :present "PRESENT")
   (:var mv26414 :isa what)
   (:var mv26421 :isa location-of :theme mv26416 :predication mv26419 :modifier mv26420)
   (:var mv26416 :isa pronoun/plural :word "their") (:var mv26419 :isa likely :comparative mv26417)
   (:var mv26417 :isa superlative-quantifier :name "most")
   (:var mv26420 :isa cellular :name "cellular"))
  ("Is ERK1 a transcription factor?" (:var mv26426 :isa polar-question :statement mv26424)
   (:var mv26424 :isa be :subject mv26422 :predicate mv26423)
   (:var mv26422 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN")
   (:var mv26423 :isa transcription-factor :has-determiner "A" :raw-text "transcription factor"))
  ("Is it a kinase?" (:var mv26431 :isa polar-question :statement mv26427)
   (:var mv26427 :isa be :subject mv26428 :predicate mv26430)
   (:var mv26428 :isa pronoun/inanimate :word "it")
   (:var mv26430 :isa kinase :has-determiner "A" :raw-text "kinase"))
  ("What is PLX-4720?"
   (:var mv26434 :isa be :subject mv26433 :predicate mv26432 :present "PRESENT")
   (:var mv26433 :isa what)
   (:var mv26432 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("What does it target?"
   (:var mv26439 :isa target :|affected-process-OR-object| mv26435 :|agent-OR-cause| mv26437
    :present "PRESENT" :raw-text "target")
   (:var mv26435 :isa what) (:var mv26437 :isa pronoun/inanimate :word "it"))
  ("What genes does STAT3 regulate?"
   (:var mv26445 :isa regulate :object mv26446 :agent mv26440 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26446 :isa gene :plural t :has-determiner "WHAT" :raw-text "genes")
   (:var mv26440 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("What pathways is it in?"
   (:var mv26450 :isa be :subject mv26453 :predicate mv26451 :present "PRESENT")
   (:var mv26453 :isa pathway :plural t :has-determiner "WHAT" :raw-text "pathways")
   (:var mv26451 :isa pronoun/inanimate :word "it"))
  ("What are the targets of PLX-4720?"
   (:var mv26456 :isa be :subject mv26455 :predicate mv26464 :present "PRESENT")
   (:var mv26455 :isa what)
   (:var mv26464 :isa target-protein :plural t :treatment mv26454 :has-determiner "THE" :raw-text
    "targets")
   (:var mv26454 :isa drug :raw-text "PLX-4720" :name "PLX 4720" :uid "PCID:24180719"))
  ("Does it target BRAF?" (:var mv26471 :isa polar-question :statement mv26470)
   (:var mv26470 :isa target :|agent-OR-cause| mv26466 :object mv26469 :raw-text "target")
   (:var mv26466 :isa pronoun/inanimate :word "it")
   (:var mv26469 :isa protein :raw-text "BRAF" :uid "UP:P15056" :name "BRAF_HUMAN"))
  ("Tofacitinib inhibits JAK1 and active STAT3 transcribes IL2."
   (:var mv26476 :isa inhibit :agent mv26475 :object mv26480 :present "PRESENT" :raw-text
    "inhibits")
   (:var mv26475 :isa drug :raw-text "Tofacitinib" :name "tasocitinib" :uid "NCIT:C95800")
   (:var mv26480 :isa collection :raw-text "JAK1 and active STAT3" :type protein :number 2 :items
    (mv26472 mv26473))
   (:var mv26472 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26473 :isa protein :predication mv26478 :raw-text "STAT3" :uid "UP:P40763" :name
    "STAT3_HUMAN")
   (:var mv26478 :isa active))
  ("JAK1 activates STAT3"
   (:var mv26483 :isa bio-activate :agent mv26481 :object mv26482 :present "PRESENT" :raw-text
    "activates")
   (:var mv26481 :isa protein :raw-text "JAK1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26482 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("I want to find out how Jak1 activates IL2"
   (:var mv26489 :isa want :agent mv26486 :theme mv26499 :present "PRESENT")
   (:var mv26486 :isa interlocutor :name "speaker")
   (:var mv26499 :isa find-out :agent mv26486 :statement mv26496)
   (:var mv26496 :isa wh-question :statement mv26495 :var nil :wh how)
   (:var mv26495 :isa bio-activate :agent mv26484 :object mv26485 :present "PRESENT" :raw-text
    "activates")
   (:var mv26484 :isa protein :raw-text "Jak1" :uid "UP:P23458" :name "JAK1_HUMAN")
   (:var mv26485 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("I want to find out how ERBB3 activates JUN in SKBR3 cells."
   (:var mv26505 :isa want :agent mv26502 :theme mv26521 :present "PRESENT")
   (:var mv26502 :isa interlocutor :name "speaker")
   (:var mv26521 :isa find-out :agent mv26502 :statement mv26518)
   (:var mv26518 :isa wh-question :statement mv26511 :var nil :wh how)
   (:var mv26511 :isa bio-activate :agent mv26500 :object mv26512 :present "PRESENT" :raw-text
    "activates")
   (:var mv26500 :isa protein :raw-text "ERBB3" :uid "UP:P21860" :name "ERBB3_HUMAN")
   (:var mv26512 :isa protein :cell-type mv26516 :raw-text "JUN" :uid "UP:P05412" :name
    "JUN_HUMAN")
   (:var mv26516 :isa cell-type :plural t :cell-line mv26501)
   (:var mv26501 :isa cell-line :name "SKBR3" :uid "EFO:0001236"))
  ("Let's build a model."
   (:var mv26526 :isa explicit-suggestion :suggestion mv26523 :marker let-as-directive)
   (:var mv26523 :isa build :artifact mv26525 :present "PRESENT")
   (:var mv26525 :isa model :has-determiner "A"))
  ("Mek phosphorylates MAPK; MapK phosphorylates RSK"
   (:var mv26528 :isa phosphorylate :agent mv26527 :substrate mv26529 :present "PRESENT" :raw-text
    "phosphorylates")
   (:var mv26527 :isa protein-family :raw-text "Mek" :name "MEK" :count 2 :family-members
    ((protein (:name "MP2K2_HUMAN") (:uid "UP:P36507"))
     (protein (:name "MP2K1_HUMAN") (:uid "UP:Q02750")))
    :uid "FPLX:MEK")
   (:var mv26529 :isa protein-family :raw-text "MAPK" :name "mitogen activated protein kinase"
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
   (:var mv26537 :isa regulate :agent mv26538 :object mv26533 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26538 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26533 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What positively regulates IL2?"
   (:var mv26539 :isa upregulate :|agent-OR-cause| mv26541 :object mv26540 :present "PRESENT"
    :raw-text "positively regulates")
   (:var mv26541 :isa what)
   (:var mv26540 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What can have the effect of activation on STAT3?"
   (:var mv26545 :isa have :possessor mv26543 :thing-possessed mv26547 :modal mv26544)
   (:var mv26543 :isa what)
   (:var mv26547 :isa effect :object mv26542 :affected-process mv26550 :has-determiner "THE"
    :raw-text "effect")
   (:var mv26542 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN")
   (:var mv26550 :isa bio-activate :raw-text "activation") (:var mv26544 :isa can))
  ("Are there any drugs for IL10?" (:var mv26566 :isa polar-question :statement mv26562)
   (:var mv26562 :isa there-exists :value mv26565 :predicate mv26556)
   (:var mv26565 :isa drug :plural t :target mv26554 :quantifier mv26558 :raw-text "drugs")
   (:var mv26554 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26558 :isa any :word "any") (:var mv26556 :isa syntactic-there))
  ("Which tissues express STAT3?"
   (:var mv26571 :isa gene-transcript-express :agent mv26572 :object mv26567 :present "PRESENT"
    :raw-text "express")
   (:var mv26572 :isa tissue :plural t :has-determiner "WHICH")
   (:var mv26567 :isa protein :raw-text "STAT3" :uid "UP:P40763" :name "STAT3_HUMAN"))
  ("How does MEK1 regulate ERK1?"
   (:var mv26577 :isa regulate :manner mv26575 :agent mv26573 :object mv26574 :present "PRESENT"
    :raw-text "regulate")
   (:var mv26575 :isa how)
   (:var mv26573 :isa protein :raw-text "MEK1" :uid "UP:Q02750" :name "MP2K1_HUMAN")
   (:var mv26574 :isa protein :raw-text "ERK1" :uid "UP:P27361" :name "MK03_HUMAN"))
  ("What are transcription factors that bind the IL15 and IL2 genes?"
   (:var mv26583 :isa be :subject mv26582 :predicate mv26593 :present "PRESENT")
   (:var mv26582 :isa what)
   (:var mv26593 :isa transcription-factor :plural t :predication mv26585 :raw-text
    "transcription factors")
   (:var mv26585 :isa binding :binder mv26593 :that-rel t :direct-bindee mv26592 :present "PRESENT"
    :raw-text "bind")
   (:var mv26592 :isa gene :plural t :has-determiner "THE" :expresses mv26590 :raw-text "genes")
   (:var mv26590 :isa collection :raw-text "IL15 and IL2" :type protein :number 2 :items
    (mv26580 mv26581))
   (:var mv26580 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26581 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What kinases regulate the IL15 and IL2?"
   (:var mv26599 :isa regulate :agent mv26603 :object mv26602 :present "PRESENT" :raw-text
    "regulate")
   (:var mv26603 :isa kinase :plural t :has-determiner "WHAT" :raw-text "kinases")
   (:var mv26602 :isa collection :has-determiner "THE" :raw-text "IL15 and IL2" :type protein
    :number 2 :items (mv26594 mv26595))
   (:var mv26594 :isa protein :raw-text "IL15" :uid "UP:P40933" :name "IL15_HUMAN")
   (:var mv26595 :isa protein :raw-text "IL2" :uid "UP:P60568" :name "IL2_HUMAN"))
  ("What factors from the literature regulate IL15 and IL2?"
   (:var mv26615 :isa factor :plural t :has-determiner "WHAT"))
  ("What relations in the literature match tofacitinib inhibits IL15?"
   (:var mv26628 :isa relation :plural t :has-determiner "WHAT"))
  ("What is MAP3K7?" (:var mv26632 :isa be :subject mv26631 :predicate mv26630 :present "PRESENT")
   (:var mv26631 :isa what)
   (:var mv26630 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN"))
  ("Is MAP3K7 a protein?" (:var mv26637 :isa polar-question :statement mv26634)
   (:var mv26634 :isa be :subject mv26633 :predicate mv26636)
   (:var mv26633 :isa protein :raw-text "MAP3K7" :uid "UP:O43318" :name "M3K7_HUMAN")
   (:var mv26636 :isa protein :has-determiner "A" :raw-text "protein"))
  ("What does SMAD2 transcribe?"
   (:var mv26641 :isa transcribe :object mv26639 :agent mv26638 :present "PRESENT" :raw-text
    "transcribe")
   (:var mv26639 :isa what)
   (:var mv26638 :isa protein :raw-text "SMAD2" :uid "UP:Q15796" :name "SMAD2_HUMAN"))
  ("Are there drugs for IL10?" (:var mv26652 :isa polar-question :statement mv26649)
   (:var mv26649 :isa there-exists :value mv26651 :predicate mv26644)
   (:var mv26651 :isa drug :plural t :target mv26642 :raw-text "drugs")
   (:var mv26642 :isa protein :raw-text "IL10" :uid "UP:P22301" :name "IL10_HUMAN")
   (:var mv26644 :isa syntactic-there))
  ("What relations in the literature match tofacitinib?"
   (:var mv26662 :isa relation :plural t :has-determiner "WHAT"))
  ("What relations in the literature match STAT3 regulates IL15 ?"
   (:var mv26675 :isa relation :plural t :has-determiner "WHAT"))))